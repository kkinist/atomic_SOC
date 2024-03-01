
 Working directory              : /wrk/irikura/molpro.iq999OIsfR/
 Global scratch directory       : /wrk/irikura/molpro.iq999OIsfR/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.iq999OIsfR/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space, MRCI
                                                                                 ! a 2P term alone
 memory,1500,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {rhf;wf,nelec=17,sym=1,spin=3}
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=1; state,15;
 weight,12[0],3[1]
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=1;state,3,13,14,15;save,5101.2}
 hlsdiag = energd4
 
 table, hlsdiag
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rh atom, (17/10) active space, MRCI                                                                                                                           
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Feb-24          TIME: 11:25:55  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Rh   ECP ECP28MDF                 selected for group  1
 Library entry RH     S cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     P cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     D cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     F cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     G cc-pwCVTZ-PP         selected for orbital group  1


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

   1  RH     17.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   17
 NUMBER OF PRIMITIVE AOS:         165
 NUMBER OF SYMMETRY AOS:          134
 NUMBER OF CONTRACTIONS:           97   (   55Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        6   (    6Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9
                                       101112131415 7 8 910  1112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910


 Eigenvalues of metric

         1 0.743E-03 0.223E-02 0.223E-02 0.223E-02 0.223E-02 0.223E-02 0.534E-02 0.439E-01
         2 0.905E-03 0.905E-03 0.905E-03 0.520E-02 0.520E-02 0.520E-02 0.207E+00 0.207E+00


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     13.631 MB (compressed) written to integral file ( 16.4%)

     Node minimum: 0.786 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     479772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     479772      RECORD LENGTH: 524288

 Memory used in sort:       1.04 MW

 SORT1 READ    10862098. AND WROTE       89681. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     36 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      478351.  Node maximum:      485007. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.86       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.82      0.57
 REAL TIME  *         1.60 SEC
 DISK USED  *        29.20 MB (local),      405.52 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3

 Initial alpha occupancy:   7   3
 Initial beta  occupancy:   4   3

 NELEC=   17   SYM=1   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -109.32204755    -109.32204755     0.00D+00     0.11D+00     0     0       0.00      0.00    start
   2     -109.33772437      -0.01567682     0.71D-02     0.75D-02     1     0       0.01      0.01    diag2
   3     -109.34156804      -0.00384366     0.40D-02     0.21D-02     2     0       0.00      0.01    diag2
   4     -109.34175780      -0.00018977     0.45D-03     0.17D-02     3     0       0.01      0.02    diag2
   5     -109.34180461      -0.00004681     0.15D-03     0.12D-02     4     0       0.00      0.02    diag2
   6     -109.34181371      -0.00000910     0.38D-04     0.31D-03     5     0       0.00      0.02    diag2
   7     -109.34181890      -0.00000519     0.25D-04     0.75D-04     6     0       0.01      0.03    diag2
   8     -109.34181409       0.00000481     0.25D-04     0.50D-04     7     0       0.00      0.03    fixocc
   9     -109.34180579       0.00000830     0.24D-04     0.16D-03     8     0       0.00      0.03    diag2
  10     -109.34180701      -0.00000122     0.15D-04     0.15D-03     9     0       0.01      0.04    diag2/orth
  11     -109.34180715      -0.00000014     0.37D-05     0.44D-04     9     0       0.00      0.04    diag2
  12     -109.34180715      -0.00000000     0.61D-06     0.55D-05     9     0       0.01      0.05    diag2
  13     -109.34180715      -0.00000000     0.81D-07     0.14D-05     9     0       0.00      0.05    diag2
  14     -109.34180715      -0.00000000     0.46D-07     0.14D-06     0     0       0.00      0.05    diag

 Final alpha occupancy:   7   3
 Final beta  occupancy:   4   3

 !RHF STATE 1.1 Energy               -109.341807147640
  RHF One-electron energy            -193.489627294744
  RHF Two-electron energy              84.147820147105
  RHF Kinetic energy                   40.948106106279
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.670253097026

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.72545     1  1  s    1.00177
    2.1     2.00000    -0.39955     1  1  d1+ -0.59403    1  1  d1-  0.80765
    3.1     2.00000    -0.39955     1  1  d1+  0.80765    1  1  d1-  0.59406
    4.1     2.00000    -0.37984     1  1  d0   1.00115
    5.1     1.00000    -0.50822     1  1  d2-  0.97353
    6.1     1.00000    -0.50822     1  1  d2+  0.97353
    7.1     1.00000    -0.24019     1  2  s    0.95554
    1.2     2.00000    -2.35863     1  1  px  -0.59181    1  1  py   0.80462
    2.2     2.00000    -2.35863     1  1  px   0.80462    1  1  py   0.59182
    3.2     2.00000    -2.34703     1  1  pz   1.00259


 HOMO      7.1    -0.240186 =      -6.5358eV
 LUMO      4.2     0.031523 =       0.8578eV
 LUMO-HOMO         0.271709 =       7.3936eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.86       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.54       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.89      0.06      0.57
 REAL TIME  *         2.85 SEC
 DISK USED  *        30.15 MB (local),      416.98 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      87 (   48   39)

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Doublet   Space symmetry=1
 Number of states:            15
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.218D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.432D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.432D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.552D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.211D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.211D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.505D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 4 2 3 5 1 1 3 5   6 4 2 1 3 5 6 4 2 3   5 6 4 2 110131514 8  1211 9 7 3 5 6 4 2 1
                                       13101415 81211 9 7 3   5 6 4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.428D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.428D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.178D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 3 9 7 810 5 4 6 2   1 3 7 9 810 5 4 6 2   1 3 7 9 810 5 4 6 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.00000   0.00000   0.00000   0.00000   0.00000   0.00000   0.00000   0.00000
                                          0.00000   0.00000   0.00000   0.00000   0.33333   0.33333   0.33333
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    3918
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    4    0   -109.30389313    -109.30645747   -0.00256434    0.06795920 0.00039881 0.00000000  0.59E-01      0.29
   2    4    4    0   -109.30646721    -109.30646750   -0.00000029    0.00058934 0.00000114 0.00000000  0.99E-03      0.55
   3   12   12    0   -109.30646750    -109.30646750   -0.00000000    0.00000020 0.00000001 0.00000000  0.23E-06      1.17

 CONVERGENCE REACHED!  Final gradient:    0.00000005 ( 0.51E-07)
                       Final energy:   -109.30646750
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -109.352837230257
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07518251
 One electron energy                          -193.59355387
 Two electron energy                            84.24071664
 Virial ratio                                    3.66226053
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -109.352837230213
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07518251
 One electron energy                          -193.59355388
 Two electron energy                            84.24071665
 Virial ratio                                    3.66226053
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -109.352837230157
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07518251
 One electron energy                          -193.59355388
 Two electron energy                            84.24071665
 Virial ratio                                    3.66226053
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                      -109.352837230081
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07518251
 One electron energy                          -193.59355388
 Two electron energy                            84.24071665
 Virial ratio                                    3.66226053
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                      -109.352837230055
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07518251
 One electron energy                          -193.59355388
 Two electron energy                            84.24071665
 Virial ratio                                    3.66226053
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                      -109.352837229897
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07518252
 One electron energy                          -193.59355389
 Two electron energy                            84.24071666
 Virial ratio                                    3.66226053
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                      -109.352837229855
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07518252
 One electron energy                          -193.59355389
 Two electron energy                            84.24071666
 Virial ratio                                    3.66226053
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy                      -109.332816068780
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.14202749
 One electron energy                          -193.69907599
 Two electron energy                            84.36625993
 Virial ratio                                    3.65744842
 
 !MCSCF STATE 8.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy                      -109.332816068730
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.14202750
 One electron energy                          -193.69907600
 Two electron energy                            84.36625993
 Virial ratio                                    3.65744842
 
 !MCSCF STATE 9.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1
 ======================
 !MCSCF STATE 10.1 Energy                     -109.332816068712
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.14202750
 One electron energy                          -193.69907600
 Two electron energy                            84.36625993
 Virial ratio                                    3.65744842
 
 !MCSCF STATE 10.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1
 ======================
 !MCSCF STATE 11.1 Energy                     -109.332816068681
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.14202750
 One electron energy                          -193.69907600
 Two electron energy                            84.36625993
 Virial ratio                                    3.65744842
 
 !MCSCF STATE 11.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1
 ======================
 !MCSCF STATE 12.1 Energy                     -109.332816068637
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.14202750
 One electron energy                          -193.69907601
 Two electron energy                            84.36625994
 Virial ratio                                    3.65744842
 
 !MCSCF STATE 12.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1
 ======================
 !MCSCF STATE 13.1 Energy                     -109.306467499357
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.89044130
 One electron energy                          -193.22287688
 Two electron energy                            83.91640938
 Virial ratio                                    3.67315451
 
 !MCSCF STATE 13.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1
 ======================
 !MCSCF STATE 14.1 Energy                     -109.306467498983
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.89044131
 One electron energy                          -193.22287689
 Two electron energy                            83.91640939
 Virial ratio                                    3.67315451
 
 !MCSCF STATE 14.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1
 ======================
 !MCSCF STATE 15.1 Energy                     -109.306467498923
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.89044131
 One electron energy                          -193.22287689
 Two electron energy                            83.91640939
 Virial ratio                                    3.67315451
 
 !MCSCF STATE 15.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     3.992502509503
 !MCSCF expec                      <2.1|LXLX|2.1>     7.248695180073
 !MCSCF expec                      <3.1|LXLX|3.1>     8.877592683219
 !MCSCF expec                      <4.1|LXLX|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LXLX|5.1>     1.121995918691
 !MCSCF expec                      <6.1|LXLX|6.1>     0.007580537327
 !MCSCF expec                      <7.1|LXLX|7.1>     2.750486426684
 !MCSCF expec                      <8.1|LXLX|8.1>     0.053659587602
 !MCSCF expec                      <9.1|LXLX|9.1>     1.000007314248
 !MCSCF expec                    <10.1|LXLX|10.1>     1.000262248737
 !MCSCF expec                    <11.1|LXLX|11.1>     3.999727859148
 !MCSCF expec                    <12.1|LXLX|12.1>     3.946501992478
 !MCSCF expec                    <13.1|LXLX|13.1>     0.000000062173
 !MCSCF expec                    <14.1|LXLX|14.1>     0.999999988447
 !MCSCF expec                    <15.1|LXLX|15.1>     0.999999997901
 
 !MCSCF expec                      <1.1|LYLY|1.1>     4.339766747024
 !MCSCF expec                      <2.1|LYLY|2.1>     0.117430957397
 !MCSCF expec                      <3.1|LYLY|3.1>     2.082263763753
 !MCSCF expec                      <4.1|LYLY|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LYLY|5.1>     7.918652736813
 !MCSCF expec                      <6.1|LYLY|6.1>     5.659724774217
 !MCSCF expec                      <7.1|LYLY|7.1>     3.882459422723
 !MCSCF expec                      <8.1|LYLY|8.1>     3.371691530324
 !MCSCF expec                      <9.1|LYLY|9.1>     1.000077255024
 !MCSCF expec                    <10.1|LYLY|10.1>     3.999650587357
 !MCSCF expec                    <11.1|LYLY|11.1>     1.000266748359
 !MCSCF expec                    <12.1|LYLY|12.1>     0.628820006653
 !MCSCF expec                    <13.1|LYLY|13.1>     0.999999996647
 !MCSCF expec                    <14.1|LYLY|14.1>     0.000005536971
 !MCSCF expec                    <15.1|LYLY|15.1>     0.999992482020
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     3.667730743474
 !MCSCF expec                      <2.1|LZLZ|2.1>     4.633873862529
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.040143553028
 !MCSCF expec                      <4.1|LZLZ|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LZLZ|5.1>     2.959351344496
 !MCSCF expec                      <6.1|LZLZ|6.1>     6.332694688457
 !MCSCF expec                      <7.1|LZLZ|7.1>     5.367054150592
 !MCSCF expec                      <8.1|LZLZ|8.1>     2.574648882074
 !MCSCF expec                      <9.1|LZLZ|9.1>     3.999915430728
 !MCSCF expec                    <10.1|LZLZ|10.1>     1.000087163906
 !MCSCF expec                    <11.1|LZLZ|11.1>     1.000005392493
 !MCSCF expec                    <12.1|LZLZ|12.1>     1.424678000869
 !MCSCF expec                    <13.1|LZLZ|13.1>     0.999999941179
 !MCSCF expec                    <14.1|LZLZ|14.1>     0.999994474582
 !MCSCF expec                    <15.1|LZLZ|15.1>     0.000007520079
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000000
 !MCSCF expec                      <8.1|L**2|8.1>     6.000000000000
 !MCSCF expec                      <9.1|L**2|9.1>     6.000000000000
 !MCSCF expec                    <10.1|L**2|10.1>     6.000000000000
 !MCSCF expec                    <11.1|L**2|11.1>     6.000000000000
 !MCSCF expec                    <12.1|L**2|12.1>     6.000000000000
 !MCSCF expec                    <13.1|L**2|13.1>     2.000000000000
 !MCSCF expec                    <14.1|L**2|14.1>     2.000000000000
 !MCSCF expec                    <15.1|L**2|15.1>     2.000000000000
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 3 6 2 4 1 1 2 4   6 5 3 1 2 4 6 5 3 4   2 6 5 3 1 9 7 81211  14151310 4 2 6 3 5 1
                                        9 7 8121114151310 4   2 6 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 3   1 2 4 6 510 8 9 7 3   1 2 4 6 510 8 7 9 3   1 2 4 6 5 810 9 7 3
                                        1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.74297     1  1  s    1.00183
    2.1     1.58358    -0.31808     1  1  d2+  1.00416
    3.1     1.58358    -0.31808     1  1  d2-  1.00416
    4.1     1.58358    -0.31808     1  1  d1-  1.00416
    5.1     1.58358    -0.31808     1  1  d0   1.00416
    6.1     1.58358    -0.31808     1  1  d1+  1.00416
    7.1     1.08527    -0.11654     1  2  s    0.90029
    1.2     1.99894    -2.37139     1  1  py   1.00001
    2.2     1.99894    -2.37139     1  1  px   1.00001
    3.2     1.99894    -2.37139     1  1  pz   1.00001
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================

 State:                1               2               3               4               5               6               7
 2a22a2b 222     -0.00002038     -0.00000424     -0.00000969      0.81427782     -0.00000000      0.00000000     -0.00000000
 22a22ab 222     -0.03162229      0.00017822      0.00099755     -0.00000078      0.00129111      0.72762258     -0.00119188
 2a222ab 222     -0.00030264     -0.05857602     -0.00037054     -0.00000032     -0.00075634      0.00119219      0.72595132
 22aa22b 222      0.00078993      0.71754218      0.00183426      0.00000378      0.00038297     -0.00034899     -0.12477046
 22a2a2b 222     -0.00064696      0.00078919     -0.41521160     -0.00000495      0.70046115     -0.00070103      0.00058241
 2aa222b 222      0.00120200     -0.00085176      0.31325245      0.00000375      0.18568744     -0.00070604      0.00028628
 2a2a22b 222      0.69661021     -0.00067817     -0.00200071      0.00001741     -0.00032899      0.21252844     -0.00011470
 222a2ab 222      0.00240400     -0.00170352      0.62650490      0.00000750      0.37137489     -0.00141207      0.00057256
 222aa2b 222      0.42044523     -0.00049444     -0.00173105      0.00001050     -0.00093537     -0.29738975      0.00062191
 2222aab 222      0.00028134      0.38045428      0.00084508      0.00000200     -0.00021556      0.00048682      0.34709194
 22b2a2a 222      0.00032348     -0.00039460      0.20760580      0.00000248     -0.35023058      0.00035051     -0.00029120
 22a2b2a 222      0.00032348     -0.00039460      0.20760580      0.00000248     -0.35023058      0.00035051     -0.00029120
 222022a 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 222220a 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 222a2ba 222     -0.00120200      0.00085176     -0.31325245     -0.00000375     -0.18568744      0.00070604     -0.00028628
 222b2aa 222     -0.00120200      0.00085176     -0.31325245     -0.00000375     -0.18568744      0.00070604     -0.00028628
 2b2a22a 222     -0.34830510      0.00033909      0.00100035     -0.00000870      0.00016450     -0.10626422      0.00005735
 2a2b22a 222     -0.34830510      0.00033909      0.00100035     -0.00000870      0.00016450     -0.10626422      0.00005735
 22a22ba 222      0.01581114     -0.00008911     -0.00049878      0.00000039     -0.00064556     -0.36381129      0.00059594
 22b22aa 222      0.01581114     -0.00008911     -0.00049878      0.00000039     -0.00064556     -0.36381129      0.00059594
 22ba22a 222     -0.00039496     -0.35877109     -0.00091713     -0.00000189     -0.00019149      0.00017450      0.06238523
 22ab22a 222     -0.00039496     -0.35877109     -0.00091713     -0.00000189     -0.00019149      0.00017450      0.06238523
 2a222ba 222      0.00015132      0.02928801      0.00018527      0.00000016      0.00037817     -0.00059609     -0.36297566
 2b222aa 222      0.00015132      0.02928801      0.00018527      0.00000016      0.00037817     -0.00059609     -0.36297566
 222202a 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 202222a 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2b22a2a 222      0.00001019      0.00000212      0.00000484     -0.40713891      0.00000000     -0.00000000      0.00000000
 2a22b2a 222      0.00001019      0.00000212      0.00000484     -0.40713891      0.00000000     -0.00000000      0.00000000
 220222a 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2ab222a 222     -0.00060100      0.00042588     -0.15662622     -0.00000188     -0.09284372      0.00035302     -0.00014314
 2ba222a 222     -0.00060100      0.00042588     -0.15662622     -0.00000188     -0.09284372      0.00035302     -0.00014314
 222ba2a 222     -0.21022261      0.00024722      0.00086552     -0.00000525      0.00046768      0.14869487     -0.00031096
 222ab2a 222     -0.21022261      0.00024722      0.00086552     -0.00000525      0.00046768      0.14869487     -0.00031096
 2222baa 222     -0.00014067     -0.19022714     -0.00042254     -0.00000100      0.00010778     -0.00024341     -0.17354597
 2222aba 222     -0.00014067     -0.19022714     -0.00042254     -0.00000100      0.00010778     -0.00024341     -0.17354597
 22a2220 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 222a220 222     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 22222a0 222     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2aa2b22 222      0.00012415     -0.00008798      0.03235509      0.00000039      0.01917921     -0.00007292      0.00002957
 2222a20 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 2a22220 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 222a202 222     -0.02171338      0.00002553      0.00008940     -0.00000054      0.00004831      0.01535833     -0.00003212
 220a222 222     -0.02029908      0.00001756      0.00004478     -0.00000051     -0.00000944     -0.01718446      0.00002119
 202a222 222      0.00944239     -0.00000480     -0.00000008      0.00000024      0.00003359      0.02486363     -0.00003725
 222a022 222      0.03257008     -0.00003830     -0.00013410      0.00000081     -0.00007246     -0.02303750      0.00004818
 20222a2 222      0.00002806      0.02226790      0.00006022      0.00000012      0.00002269     -0.00002818     -0.01454291
 22022a2 222     -0.00002080     -0.01244385     -0.00003839     -0.00000007     -0.00002826      0.00004075      0.02350548
 22220a2 222     -0.00002179     -0.02947215     -0.00006546     -0.00000015      0.00001670     -0.00003771     -0.02688771
 22202a2 222      0.00001453      0.01964810      0.00004364      0.00000010     -0.00001113      0.00002514      0.01792514
 22a2202 222      0.00003705     -0.00001772      0.00328861      0.00000004      0.02639207     -0.00004968      0.00002784
 2a2a2b2 222      0.00005376     -0.00003809      0.01401016      0.00000017      0.00830484     -0.00003158      0.00001280
 2a2b2a2 222     -0.00005376      0.00003809     -0.01401016     -0.00000017     -0.00830484      0.00003158     -0.00001280
 22a0222 222     -0.00007046      0.00005847     -0.02473171     -0.00000030      0.00978239      0.00001348      0.00000223
 22b2aa2 222      0.01717125     -0.00001291     -0.00002590      0.00000043      0.00002484      0.02427648     -0.00003374
 2b2aa22 222     -0.01717125      0.00001291      0.00002590     -0.00000043     -0.00002484     -0.02427648      0.00003374
 2b22aa2 222     -0.00002821     -0.02004084     -0.00005693     -0.00000011     -0.00002942      0.00003980      0.02196725
 22baa22 222     -0.00002821     -0.02004084     -0.00005693     -0.00000011     -0.00002942      0.00003980      0.02196725
 22a2ab2 222     -0.01798780      0.00001751      0.00005166     -0.00000045      0.00000850     -0.00548789      0.00000296
 2a2ba22 222     -0.00081655      0.00000460      0.00002576     -0.00000002      0.00003334      0.01878859     -0.00003078
 2a22ab2 222      0.00002040      0.01852830      0.00004736      0.00000010      0.00000989     -0.00000901     -0.00322181
 22aba22 222      0.00000781      0.00151254      0.00000957      0.00000001      0.00001953     -0.00003078     -0.01874544
 2ab2a22 222     -0.00006208      0.00004399     -0.01617754     -0.00000019     -0.00958960      0.00003646     -0.00001478
 2ba2a22 222     -0.00006208      0.00004399     -0.01617754     -0.00000019     -0.00958960      0.00003646     -0.00001478
 2aa22b2 222     -0.03257008      0.00003830      0.00013410     -0.00000081      0.00007246      0.02303750     -0.00004818
 2aab222 222     -0.00002179     -0.02947215     -0.00006546     -0.00000015      0.00001670     -0.00003771     -0.02688771
 22a2022 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a20222 222     -0.00000053     -0.00000011     -0.00000025      0.02102620     -0.00000000      0.00000000     -0.00000000
 2a22202 222     -0.00000053     -0.00000011     -0.00000025      0.02102620     -0.00000000      0.00000000     -0.00000000
 2022a22 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2202a22 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 2a22022 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 
 Energy:       -109.35283723   -109.35283723   -109.35283723   -109.35283723   -109.35283723   -109.35283723   -109.35283723

 State:                8               9              10              11              12              13              14
 2a22a2b 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 22a22ab 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.34897523      0.00002040
 2a222ab 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00002021     -0.34897428
 22aa22b 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00002021     -0.34897427
 22a2a2b 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2aa222b 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00016927      0.00164063
 2a2a22b 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.34897523     -0.00002040
 222a2ab 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00008464     -0.00082031
 222aa2b 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.60444283      0.00003534
 2222aab 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00003500      0.60444117
 22b2a2a 222     -0.00000796     -0.52041156      0.00264840     -0.00078787     -0.00000034      0.00000000      0.00000000
 22a2b2a 222      0.00000796      0.52041156     -0.00264840      0.00078787      0.00000034      0.00000000     -0.00000000
 222022a 222      0.51691643     -0.00000791     -0.00000901      0.00000294     -0.06027632      0.00000000     -0.00000000
 222220a 222     -0.20625739      0.00000284      0.00000746      0.00002676      0.47780091      0.00000000     -0.00000000
 222a2ba 222     -0.00000689     -0.45068963      0.00229358     -0.00068232     -0.00000030     -0.00004232      0.00041016
 222b2aa 222      0.00000689      0.45068963     -0.00229358      0.00068232      0.00000030     -0.00004232      0.00041016
 2b2a22a 222     -0.00000588     -0.00070374     -0.00421407      0.45067573     -0.00002771      0.17448761      0.00001020
 2a2b22a 222      0.00000588      0.00070374      0.00421407     -0.45067573      0.00002771      0.17448762      0.00001020
 22a22ba 222     -0.00000588     -0.00070374     -0.00421407      0.45067573     -0.00002771     -0.17448762     -0.00001020
 22b22aa 222      0.00000588      0.00070374      0.00421407     -0.45067573      0.00002771     -0.17448762     -0.00001020
 22ba22a 222     -0.00000739     -0.00228710     -0.45067045     -0.00421759      0.00000410     -0.00001010      0.17448714
 22ab22a 222      0.00000739      0.00228710      0.45067045      0.00421759     -0.00000410     -0.00001010      0.17448714
 2a222ba 222      0.00000739      0.00228710      0.45067045      0.00421759     -0.00000410     -0.00001010      0.17448714
 2b222aa 222     -0.00000739     -0.00228710     -0.45067044     -0.00421759      0.00000410     -0.00001010      0.17448714
 222202a 222      0.31065904     -0.00000508     -0.00000154      0.00002970      0.41752460     -0.00000000      0.00000000
 202222a 222     -0.31065903      0.00000508      0.00000154     -0.00002970     -0.41752460     -0.00000000      0.00000000
 2b22a2a 222      0.41752460     -0.00000621     -0.00000951     -0.00001376     -0.31065904     -0.00000000      0.00000000
 2a22b2a 222     -0.41752460      0.00000621      0.00000951      0.00001376      0.31065904      0.00000000     -0.00000000
 220222a 222     -0.31065904      0.00000508      0.00000154     -0.00002970     -0.41752459      0.00000000     -0.00000000
 2ab222a 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00008464     -0.00082031
 2ba222a 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00008464     -0.00082031
 222ba2a 222      0.00000339      0.00040631      0.00243299     -0.26019776      0.00001600     -0.30222141     -0.00001767
 222ab2a 222     -0.00000339     -0.00040631     -0.00243299      0.26019776     -0.00001600     -0.30222141     -0.00001767
 2222baa 222     -0.00000426     -0.00132046     -0.26019470     -0.00243503      0.00000237      0.00001750     -0.30222059
 2222aba 222      0.00000426      0.00132046      0.26019470      0.00243503     -0.00000237      0.00001750     -0.30222059
 22a2220 222      0.00000283      0.18503372     -0.00094165      0.00028013      0.00000012     -0.00000000     -0.00000000
 222a220 222      0.00000241      0.00028893      0.00173011     -0.18502802      0.00001138      0.00000000      0.00000000
 22222a0 222     -0.00000303     -0.00093898     -0.18502584     -0.00173156      0.00000168      0.00000000      0.00000000
 2aa2b22 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00003904      0.00037840
 2222a20 222      0.11045565     -0.00000181     -0.00000055      0.00001056      0.14845199      0.00000000      0.00000000
 2a22220 222     -0.14845198      0.00000221      0.00000338      0.00000489      0.11045565     -0.00000000      0.00000000
 222a202 222     -0.00000061     -0.00007284     -0.00043616      0.04664511     -0.00000287      0.10455790      0.00000611
 220a222 222     -0.00000061     -0.00007284     -0.00043616      0.04664511     -0.00000287     -0.10455790     -0.00000611
 202a222 222     -0.00000061     -0.00007284     -0.00043616      0.04664511     -0.00000287     -0.10455790     -0.00000611
 222a022 222     -0.00000001     -0.00000164     -0.00000983      0.00105078     -0.00000006      0.10455790      0.00000611
 20222a2 222      0.00000076      0.00023672      0.04664457      0.00043652     -0.00000042     -0.00000605      0.10455762
 22022a2 222      0.00000076      0.00023672      0.04664457      0.00043652     -0.00000042     -0.00000605      0.10455762
 22220a2 222      0.00000002      0.00000533      0.00105076      0.00000983     -0.00000001      0.00000605     -0.10455762
 22202a2 222      0.00000076      0.00023672      0.04664457      0.00043652     -0.00000042      0.00000605     -0.10455762
 22a2202 222     -0.00000071     -0.04664655      0.00023739     -0.00007062     -0.00000003      0.00002536     -0.00024578
 2a2a2b2 222      0.00000035      0.02279787     -0.00011602      0.00003451      0.00000002      0.00002536     -0.00024578
 2a2b2a2 222      0.00000035      0.02279787     -0.00011602      0.00003451      0.00000002     -0.00002536      0.00024578
 22a0222 222     -0.00000071     -0.04664655      0.00023739     -0.00007062     -0.00000003     -0.00002536      0.00024578
 22b2aa2 222     -0.00000051     -0.00006166     -0.00036921      0.03948585     -0.00000243      0.10061089      0.00000588
 2b2aa22 222     -0.00000051     -0.00006166     -0.00036921      0.03948585     -0.00000243      0.10061089      0.00000588
 2b22aa2 222      0.00000065      0.00020038      0.03948539      0.00036952     -0.00000036      0.00000583     -0.10061062
 22baa22 222     -0.00000065     -0.00020038     -0.03948539     -0.00036952      0.00000036     -0.00000583      0.10061062
 22a2ab2 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.08048871     -0.00000471
 2a2ba22 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.08048871     -0.00000471
 2a22ab2 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000466      0.08048849
 22aba22 222     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000466     -0.08048849
 2ab2a22 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00001952     -0.00018920
 2ba2a22 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00001952     -0.00018920
 2aa22b2 222      0.00000059      0.00007120      0.00042633     -0.04559434      0.00000280      0.06970527      0.00000408
 2aab222 222      0.00000075      0.00023138      0.04559380      0.00042669     -0.00000041     -0.00000404      0.06970508
 22a2022 222     -0.00000106     -0.06944442      0.00035341     -0.00010514     -0.00000005     -0.00000000      0.00000000
 2a20222 222      0.06099614     -0.00000094     -0.00000097      0.00000102      0.00383476     -0.00000000     -0.00000000
 2a22202 222      0.01385263     -0.00000017     -0.00000074     -0.00000349     -0.05952596      0.00000000      0.00000000
 2022a22 222     -0.04145476      0.00000068      0.00000021     -0.00000396     -0.05571505      0.00000000      0.00000000
 2202a22 222     -0.04145476      0.00000068      0.00000021     -0.00000396     -0.05571505      0.00000000     -0.00000000
 2a22022 222      0.05571505     -0.00000083     -0.00000127     -0.00000184     -0.04145476      0.00000000      0.00000000
 
 Energy:       -109.33281607   -109.33281607   -109.33281607   -109.33281607   -109.33281607   -109.30646750   -109.30646750

 State:               15
 2a22a2b 222     -0.00000000
 22a22ab 222      0.00008459
 2a222ab 222      0.00082032
 22aa22b 222      0.00082032
 22a2a2b 222      0.00000000
 2aa222b 222      0.69794853
 2a2a22b 222     -0.00008459
 222a2ab 222     -0.34897426
 222aa2b 222      0.00014651
 2222aab 222     -0.00142083
 22b2a2a 222      0.00000000
 22a2b2a 222     -0.00000000
 222022a 222     -0.00000000
 222220a 222     -0.00000000
 222a2ba 222      0.17448713
 222b2aa 222      0.17448713
 2b2a22a 222      0.00004229
 2a2b22a 222      0.00004229
 22a22ba 222     -0.00004229
 22b22aa 222     -0.00004229
 22ba22a 222     -0.00041016
 22ab22a 222     -0.00041016
 2a222ba 222     -0.00041016
 2b222aa 222     -0.00041016
 222202a 222      0.00000000
 202222a 222     -0.00000000
 2b22a2a 222      0.00000000
 2a22b2a 222     -0.00000000
 220222a 222      0.00000000
 2ab222a 222     -0.34897427
 2ba222a 222     -0.34897427
 222ba2a 222     -0.00007326
 222ab2a 222     -0.00007326
 2222baa 222      0.00071042
 2222aba 222      0.00071042
 22a2220 222     -0.00000000
 222a220 222      0.00000000
 22222a0 222      0.00000000
 2aa2b22 222      0.16097698
 2222a20 222      0.00000000
 2a22220 222      0.00000000
 222a202 222      0.00002534
 220a222 222     -0.00002534
 202a222 222     -0.00002534
 222a022 222      0.00002534
 20222a2 222     -0.00024578
 22022a2 222     -0.00024578
 22220a2 222      0.00024578
 22202a2 222      0.00024578
 22a2202 222     -0.10455762
 2a2a2b2 222     -0.10455762
 2a2b2a2 222      0.10455762
 22a0222 222      0.10455762
 22b2aa2 222      0.00002439
 2b2aa22 222      0.00002439
 2b22aa2 222      0.00023650
 22baa22 222     -0.00023650
 22a2ab2 222     -0.00001951
 2a2ba22 222     -0.00001951
 2a22ab2 222     -0.00018920
 22aba22 222      0.00018920
 2ab2a22 222     -0.08048849
 2ba2a22 222     -0.08048849
 2aa22b2 222      0.00001690
 2aab222 222     -0.00016385
 22a2022 222      0.00000000
 2a20222 222     -0.00000000
 2a22202 222     -0.00000000
 2022a22 222     -0.00000000
 2202a22 222     -0.00000000
 2a22022 222      0.00000000
 
 Energy:       -109.30646750
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.80       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.15      1.26      0.06      0.57
 REAL TIME  *         4.25 SEC
 DISK USED  *        32.97 MB (local),      450.82 MB (total)
 SF USED    *        12.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3528372   12.0
    -109.3528372   12.0
    -109.3528372   12.0
    -109.3528372   12.0
    -109.3528372   12.0
    -109.3528372   12.0
    -109.3528372   12.0
    -109.3328161    6.0
    -109.3328161    6.0
    -109.3328161    6.0
    -109.3328161    6.0
    -109.3328161    6.0
    -109.3064675    2.0
    -109.3064675    2.0
    -109.3064675    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:   13  14  15
 Number of reference states: 3  Roots:   13  14  15

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 17
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:      119 conf      175 CSFs
 N elec internal:      210 conf      330 CSFs
 N-1 el internal:      615 conf     1815 CSFs
 N-2 el internal:     1449 conf     8442 CSFs

 Number of electrons in valence space:                     17
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      87 (  48  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  70

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
    13      -109.30646750
    14      -109.30646750
    15      -109.30646750
     4      -109.35283723
     5      -109.35283723
     6      -109.35283723
     7      -109.35283723
     8      -109.33281607
     9      -109.33281607
    10      -109.33281607
    11      -109.33281607
    12      -109.33281607
     1      -109.35283723
     2      -109.35283723
     3      -109.35283723

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.78D-02
 Number of N-2 electron functions:     300
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:        569952
 Total number of contracted configurations:       649183
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:    390594 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    366637 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1    13     1.00000000     0.00000000  -109.30646750     0.00000000    -0.72913383  0.39D-01  0.12D+00     0.13
    1     2    14     1.00000000     0.00000000  -109.30646750     0.00000000    -0.72913564  0.39D-01  0.12D+00     0.13
    1     3    15     1.00000000     0.00000000  -109.30646750     0.00000000    -0.72978497  0.39D-01  0.12D+00     0.13
    2     1     1     1.10289277    -0.57844600  -109.88491350    -0.57844600    -0.01681586  0.24D-02  0.21D-02     2.95
    2     2     2     1.10289422    -0.57844553  -109.88491303    -0.57844553    -0.01681638  0.24D-02  0.21D-02     2.95
    2     3     3     1.10294882    -0.57841605  -109.88488355    -0.57841605    -0.01685547  0.23D-02  0.21D-02     2.95
    3     1     1     1.09507953    -0.59448756  -109.90095506    -0.01604155    -0.00024688  0.27D-04  0.40D-04     5.65
    3     2     2     1.09506869    -0.59448626  -109.90095376    -0.01604073    -0.00024868  0.27D-04  0.40D-04     5.65
    3     3     3     1.09506839    -0.59448621  -109.90095371    -0.01607016    -0.00024871  0.27D-04  0.40D-04     5.65
    4     1     1     1.09552543    -0.59474769  -109.90121519    -0.00026013    -0.00001467  0.33D-05  0.32D-05     8.31
    4     2     2     1.09552542    -0.59474769  -109.90121519    -0.00026142    -0.00001468  0.33D-05  0.32D-05     8.31
    4     3     3     1.09552991    -0.59474759  -109.90121509    -0.00026137    -0.00001464  0.33D-05  0.32D-05     8.31
    5     1     1     1.09578486    -0.59476306  -109.90123056    -0.00001537    -0.00000138  0.95D-07  0.49D-06    11.00
    5     2     2     1.09578481    -0.59476306  -109.90123056    -0.00001537    -0.00000138  0.95D-07  0.49D-06    11.00
    5     3     3     1.09578397    -0.59476302  -109.90123052    -0.00001543    -0.00000141  0.91D-07  0.49D-06    11.00
    6     1     1     1.09582975    -0.59476432  -109.90123182    -0.00000126    -0.00000015  0.14D-07  0.51D-07    13.65
    6     2     2     1.09582976    -0.59476432  -109.90123182    -0.00000126    -0.00000015  0.14D-07  0.51D-07    13.65
    6     3     3     1.09582954    -0.59476431  -109.90123181    -0.00000129    -0.00000016  0.14D-07  0.53D-07    13.65
    7     1     1     1.09584377    -0.59476447  -109.90123197    -0.00000015    -0.00000002  0.79D-09  0.53D-08    16.32
    7     2     2     1.09584377    -0.59476447  -109.90123197    -0.00000015    -0.00000002  0.79D-09  0.53D-08    16.32
    7     3     3     1.09584389    -0.59476447  -109.90123197    -0.00000015    -0.00000002  0.74D-09  0.57D-08    16.32


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.3%
 S   0.1%   1.2%
 P   0.6%  13.5%  60.7%

 Initialization:   0.4%
 Other:           22.3%

 Total CPU:       16.3 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222\222           0.0000000  -0.0000000   0.8169563
 222//2\222           0.7075054  -0.0000000  -0.0000000
 2222//\222           0.0000000   0.7075054   0.0000000
 2/222/\222          -0.0000000  -0.4084762  -0.0000000
 2/2/22\222          -0.4084762  -0.0000000   0.0000000
 22//22\222          -0.0000000  -0.4084721  -0.0000000
 22/22/\222           0.4084721   0.0000000   0.0000000
 222/2/\222          -0.0000000   0.0000000  -0.4084716
 2//2\22222          -0.0000000   0.0000000   0.1880820
 2/2\/22222          -0.1221635   0.0000000   0.0000000
 22/\/22222           0.0000000  -0.1221624  -0.0000000
 2/2/2\2222          -0.0000000   0.0000000  -0.1221618
 22220/2222           0.0000000  -0.0997462  -0.0000000
 222/022222           0.0997462  -0.0000000  -0.0000000
 20222/2222           0.0000000   0.0997460  -0.0000000
 202/222222          -0.0997459   0.0000000  -0.0000000
 220/222222          -0.0997452   0.0000000  -0.0000000
 22022/2222           0.0000000   0.0997451   0.0000000
 22/0222222           0.0000000   0.0000000   0.0997446
 22/2202222           0.0000000   0.0000000  -0.0997446
 22202/2222           0.0000000  -0.0997446  -0.0000000
 222/202222           0.0997446  -0.0000000  -0.0000000
 2/22/\2222          -0.0000000   0.0940416  -0.0000000
 22/2/\2222          -0.0940410   0.0000000   0.0000000
 2/22\/2222           0.0000000   0.0814422   0.0000000
 22/2\/2222          -0.0814412   0.0000000   0.0000000
 2//22\2222           0.0814405  -0.0000000   0.0000000
 2//\222222           0.0000000   0.0814405  -0.0000000
 2/2\2/2222          -0.0000000   0.0000000   0.0705302

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955226    0.000000    0.000000
 2          -0.000000    0.955226   -0.000000
 3          -0.000000    0.000000    0.955225

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955226   -0.000000   -0.000000
 2          -0.000000    0.955226   -0.000000
 3          -0.000000   -0.000000    0.955225


 RESULTS FOR STATE 13.1
 =====================

 Coefficient of reference function:   C(0) = 0.95522555 (fixed)   0.95526899 (relaxed)   0.95522555 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009095    0.00000000   -0.46619355
 Singles      0.01980579   -0.08389680   -0.08730017
 Pairs        0.07604670   -0.00000000   -0.04127075
 Total        1.09594343   -0.08389680   -0.59476447
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30646750
 Nuclear energy                         0.00000000
 Kinetic energy                        41.34922945
 One electron energy                 -192.83601031
 Two electron energy                   82.93477834
 Virial quotient                       -2.65787860
 Correlation energy                    -0.59476447
 !MRCI STATE 13.1 Energy             -109.901231967232

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.95829571 (Davidson, fixed reference)
 Cluster corrected energies          -109.95823643 (Davidson, relaxed reference)
 Cluster corrected energies          -109.95829571 (Davidson, rotated reference)

 Cluster corrected energies          -109.95497148 (Pople, fixed reference)
 Cluster corrected energies          -109.95491147 (Pople, relaxed reference)
 Cluster corrected energies          -109.95497148 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 =====================

 Coefficient of reference function:   C(0) = 0.95522555 (fixed)   0.95526899 (relaxed)   0.95522555 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009095    0.00000000   -0.46619355
 Singles      0.01980579   -0.08389681   -0.08730017
 Pairs        0.07604669    0.00000000   -0.04127075
 Total        1.09594343   -0.08389681   -0.59476447
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30646750
 Nuclear energy                         0.00000000
 Kinetic energy                        41.34922897
 One electron energy                 -192.83600974
 Two electron energy                   82.93477778
 Virial quotient                       -2.65787863
 Correlation energy                    -0.59476447
 !MRCI STATE 14.1 Energy             -109.901231967086

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.95829571 (Davidson, fixed reference)
 Cluster corrected energies          -109.95823643 (Davidson, relaxed reference)
 Cluster corrected energies          -109.95829571 (Davidson, rotated reference)

 Cluster corrected energies          -109.95497147 (Pople, fixed reference)
 Cluster corrected energies          -109.95491147 (Pople, relaxed reference)
 Cluster corrected energies          -109.95497147 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 =====================

 Coefficient of reference function:   C(0) = 0.95522550 (fixed)   0.95526893 (relaxed)   0.95522550 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009095    0.00000000   -0.00004936
 Singles      0.01980593   -0.08389685   -0.08730017
 Pairs        0.07604667   -0.51086762   -0.50741494
 Total        1.09594356   -0.59476447   -0.59476447
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30646750
 Nuclear energy                         0.00000000
 Kinetic energy                        41.34924758
 One electron energy                 -192.83603633
 Two electron energy                   82.93480436
 Virial quotient                       -2.65787743
 Correlation energy                    -0.59476447
 !MRCI STATE 15.1 Energy             -109.901231965821

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.95829578 (Davidson, fixed reference)
 Cluster corrected energies          -109.95823651 (Davidson, relaxed reference)
 Cluster corrected energies          -109.95829578 (Davidson, rotated reference)

 Cluster corrected energies          -109.95497155 (Pople, fixed reference)
 Cluster corrected energies          -109.95491154 (Pople, relaxed reference)
 Cluster corrected energies          -109.95497155 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       16.31       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        18.89     16.74      1.26      0.06      0.57
 REAL TIME  *        22.47 SEC
 DISK USED  *        48.48 MB (local),      636.93 MB (total)
 SF USED    *       162.87 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -109.95829571  AU                              
 SETTING HLSDIAG(2)     =      -109.95829571  AU                              
 SETTING HLSDIAG(3)     =      -109.95829578  AU                              


         HLSDIAG
    -109.9582957
    -109.9582957
    -109.9582958
                                                  

 CI/cc-pWCVTZ-PP energy=   -109.901231965821

              CI           MULTI         RHF-SCF
   -109.90123197   -109.33281607   -109.34180715
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
