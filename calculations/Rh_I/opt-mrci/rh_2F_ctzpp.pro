
 Working directory              : /wrk/irikura/molpro.SOlEmxfYUz/
 Global scratch directory       : /wrk/irikura/molpro.SOlEmxfYUz/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.SOlEmxfYUz/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space, MRCI
                                                                                 ! a 2F term alone
 memory,1500,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {rhf;wf,nelec=17,sym=1,spin=3}
 
                                                                                 ! first pass at orbitals
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=1; state,12;
 weight,5[0],7[1]
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Prep and LL values
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=1; state,7;
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=1;state,7;save,5101.2}
 hlsdiag = energd4
 
 table, hlsdiag
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rh atom, (17/10) active space, MRCI                                                                                                                           
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Feb-24          TIME: 11:06:02  
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

     13.894 MB (compressed) written to integral file ( 16.1%)

     Node minimum: 0.786 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     479772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     479772      RECORD LENGTH: 524288

 Memory used in sort:       1.04 MW

 SORT1 READ    10862098. AND WROTE       89681. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     48 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      478351.  Node maximum:      485007. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.86       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.72      0.52
 REAL TIME  *         1.53 SEC
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
   1     -109.32221748    -109.32221748     0.00D+00     0.11D+00     0     0       0.01      0.01    start
   2     -109.33792354      -0.01570606     0.71D-02     0.75D-02     1     0       0.00      0.01    diag2
   3     -109.34180145      -0.00387791     0.40D-02     0.21D-02     2     0       0.00      0.01    diag2
   4     -109.34204285      -0.00024140     0.46D-03     0.17D-02     3     0       0.01      0.02    diag2
   5     -109.34218682      -0.00014397     0.19D-03     0.12D-02     4     0       0.00      0.02    diag2
   6     -109.34225779      -0.00007097     0.12D-03     0.20D-03     5     0       0.01      0.03    diag2
   7     -109.34186316       0.00039463     0.13D-03     0.11D-02     6     0       0.00      0.03    diag2
   8     -109.34179273       0.00007043     0.64D-04     0.67D-03     7     0       0.00      0.03    fixocc
   9     -109.34180257      -0.00000984     0.27D-04     0.21D-03     8     0       0.01      0.04    diag2
  10     -109.34180509      -0.00000251     0.19D-04     0.59D-04     9     0       0.00      0.04    diag2/orth
  11     -109.34180719      -0.00000210     0.10D-04     0.10D-03     9     0       0.01      0.05    diag2
  12     -109.34180725      -0.00000006     0.40D-05     0.27D-04     9     0       0.00      0.05    diag2
  13     -109.34180727      -0.00000002     0.19D-05     0.33D-05     9     0       0.00      0.05    diag2
  14     -109.34180718       0.00000008     0.19D-05     0.15D-04     9     0       0.00      0.05    diag2
  15     -109.34180715       0.00000004     0.13D-05     0.18D-04     9     0       0.01      0.06    diag2
  16     -109.34180715       0.00000000     0.11D-06     0.12D-05     9     0       0.00      0.06    diag2
  17     -109.34180715      -0.00000000     0.29D-07     0.56D-07     0     0       0.01      0.07    diag

 Final alpha occupancy:   7   3
 Final beta  occupancy:   4   3

 !RHF STATE 1.1 Energy               -109.341807147563
  RHF One-electron energy            -193.489626772487
  RHF Two-electron energy              84.147819624924
  RHF Kinetic energy                   40.948106614593
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.670253063877

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.72545     1  1  s    1.00177
    2.1     2.00000    -0.39955     1  1  d1+  0.98095
    3.1     2.00000    -0.39955     1  1  d1-  0.98014
    4.1     2.00000    -0.37984     1  1  d0   0.99928
    5.1     1.00000    -0.50822     1  1  d2- -0.36118    1  1  d2+  0.93591
    6.1     1.00000    -0.50822     1  1  d2-  0.93591    1  1  d2+  0.36118
    7.1     1.00000    -0.24019     1  2  s    0.95554
    1.2     2.00000    -2.35863     1  1  px   0.97822
    2.2     2.00000    -2.35863     1  1  py   0.97795
    3.2     2.00000    -2.34703     1  1  pz   1.00196


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
 CPU TIMES  *         0.79      0.08      0.52
 REAL TIME  *         2.63 SEC
 DISK USED  *        30.15 MB (local),      416.98 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      87 (   48   39)

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Doublet   Space symmetry=1
 Number of states:            12
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.233D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.230D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.237D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.119D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.312D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.312D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.540D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 6 2 5 3 1 1 5 3   4 6 2 1 5 3 4 6 2 5   3 4 6 2 113101514 8  12 911 7 5 3 4 6 2 1
                                       13101514 812 911 7 3   5 4 6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.190D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.195D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.586D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 9 710 8 4 5 6 1   2 3 9 710 8 4 5 6 1   2 3 9 7 810 4 5 6 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.00000   0.00000   0.00000   0.00000   0.00000   0.14286   0.14286   0.14286
                                          0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    3225
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   20   20    0   -109.33614498    -109.33893603   -0.00279105    0.07281576 0.00936850 0.00000000  0.55E-01      1.03
   2    3    3    0   -109.33891900    -109.33889102    0.00002798    0.01012815 0.01161520 0.00000000  0.74E-02      1.22
   3   20   20    0   -109.33890587    -109.33891850   -0.00001263    0.01172604 0.01010860 0.00000000  0.32E-02      2.24
   4   20   20    0   -109.33895562    -109.33891848    0.00003713    0.00923853 0.01010952 0.00000000  0.80E-05      3.25
   5   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923781 0.01010952 0.00000000  0.14E-07      4.24
   6   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.18E-07      5.24
   7   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.84E-08      6.24
   8   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.10E-07      7.23
   9   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.11E-07      8.22
  10   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.64E-06      9.21
  11   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.64E-06     10.20
  12   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.42E-07     11.19
  13   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.41E-07     12.19
  14   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.12E-07     13.18
  15   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.14E-07     14.18
  16   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.13E-07     15.17
  17   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.24E-07     16.16
  18   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.28E-07     17.16
  19   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.11E-07     18.15
  20   20   20    0   -109.33895563    -109.33891848    0.00003714    0.00923780 0.01010952 0.00000000  0.39E-08     19.14

 NO CONVERGENCE! MAXIMAL NUMBER OF ITERATIONS REACHED!
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -109.352531278087
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.91062167
 One electron energy                          -193.39023258
 Two electron energy                            84.03770130
 Virial ratio                                    3.67296186
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -109.352531277901
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.91062166
 One electron energy                          -193.39023256
 Two electron energy                            84.03770128
 Virial ratio                                    3.67296186
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -109.352330351538
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.90889279
 One electron energy                          -193.38799817
 Two electron energy                            84.03566782
 Virial ratio                                    3.67306991
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                      -109.352330351508
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.90889280
 One electron energy                          -193.38799817
 Two electron energy                            84.03566782
 Virial ratio                                    3.67306991
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                      -109.352277433963
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.90813585
 One electron energy                          -193.38698560
 Two electron energy                            84.03470817
 Virial ratio                                    3.67311808
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                      -109.352277433962
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.90813585
 One electron energy                          -193.38698560
 Two electron energy                            84.03470817
 Virial ratio                                    3.67311808
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                      -109.352203299421
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.90777900
 One electron energy                          -193.38655539
 Two electron energy                            84.03435209
 Virial ratio                                    3.67313958
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy                      -109.333611353330
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.01340611
 One electron energy                          -193.56398986
 Two electron energy                            84.23037850
 Virial ratio                                    3.66580179
 
 !MCSCF STATE 8.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy                      -109.333593863254
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.01184668
 One electron energy                          -193.56134310
 Two electron energy                            84.22774923
 Virial ratio                                    3.66590273
 
 !MCSCF STATE 9.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1
 ======================
 !MCSCF STATE 10.1 Energy                     -109.333593863227
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.01184667
 One electron energy                          -193.56134309
 Two electron energy                            84.22774922
 Virial ratio                                    3.66590273
 
 !MCSCF STATE 10.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1
 ======================
 !MCSCF STATE 11.1 Energy                     -109.333574786379
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.00990897
 One electron energy                          -193.55820829
 Two electron energy                            84.22463350
 Virial ratio                                    3.66602822
 
 !MCSCF STATE 11.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1
 ======================
 !MCSCF STATE 12.1 Energy                     -109.333574786349
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.00990897
 One electron energy                          -193.55820829
 Two electron energy                            84.22463350
 Virial ratio                                    3.66602822
 
 !MCSCF STATE 12.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     3.999999571438
 !MCSCF expec                      <2.1|LXLX|2.1>     3.999999749409
 !MCSCF expec                      <3.1|LXLX|3.1>     8.499949119769
 !MCSCF expec                      <4.1|LXLX|4.1>     2.500024126668
 !MCSCF expec                      <5.1|LXLX|5.1>     1.500007392699
 !MCSCF expec                      <6.1|LXLX|6.1>     1.500012549477
 !MCSCF expec                      <7.1|LXLX|7.1>     5.999998528052
 !MCSCF expec                      <8.1|LXLX|8.1>     3.000010110607
 !MCSCF expec                      <9.1|LXLX|9.1>     1.000025829356
 !MCSCF expec                    <10.1|LXLX|10.1>     1.000023070373
 !MCSCF expec                    <11.1|LXLX|11.1>     1.000066027695
 !MCSCF expec                    <12.1|LXLX|12.1>     3.999980910079
 
 !MCSCF expec                      <1.1|LYLY|1.1>     3.999999571457
 !MCSCF expec                      <2.1|LYLY|2.1>     3.999999393456
 !MCSCF expec                      <3.1|LYLY|3.1>     2.500026671935
 !MCSCF expec                      <4.1|LYLY|4.1>     8.499951665051
 !MCSCF expec                      <5.1|LYLY|5.1>     1.500010688818
 !MCSCF expec                      <6.1|LYLY|6.1>     1.500005532046
 !MCSCF expec                      <7.1|LYLY|7.1>     5.999998881410
 !MCSCF expec                      <8.1|LYLY|8.1>     3.000015637959
 !MCSCF expec                      <9.1|LYLY|9.1>     1.000020311405
 !MCSCF expec                    <10.1|LYLY|10.1>     1.000023070407
 !MCSCF expec                    <11.1|LYLY|11.1>     3.999980910119
 !MCSCF expec                    <12.1|LYLY|12.1>     1.000066027716
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     4.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     4.000000000000
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.000000000020
 !MCSCF expec                      <4.1|LZLZ|4.1>     1.000000000008
 !MCSCF expec                      <5.1|LZLZ|5.1>     8.999999999989
 !MCSCF expec                      <6.1|LZLZ|6.1>     8.999999999983
 !MCSCF expec                      <7.1|LZLZ|7.1>    -0.000000000000
 !MCSCF expec                      <8.1|LZLZ|8.1>     0.000000000003
 !MCSCF expec                      <9.1|LZLZ|9.1>     3.999999999997
 !MCSCF expec                    <10.1|LZLZ|10.1>     4.000000000000
 !MCSCF expec                    <11.1|LZLZ|11.1>     1.000000000000
 !MCSCF expec                    <12.1|LZLZ|12.1>     1.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    11.999999142895
 !MCSCF expec                      <2.1|L**2|2.1>    11.999999142866
 !MCSCF expec                      <3.1|L**2|3.1>    11.999975791724
 !MCSCF expec                      <4.1|L**2|4.1>    11.999975791728
 !MCSCF expec                      <5.1|L**2|5.1>    12.000018081506
 !MCSCF expec                      <6.1|L**2|6.1>    12.000018081506
 !MCSCF expec                      <7.1|L**2|7.1>    11.999997409462
 !MCSCF expec                      <8.1|L**2|8.1>     6.000025748569
 !MCSCF expec                      <9.1|L**2|9.1>     6.000046140759
 !MCSCF expec                    <10.1|L**2|10.1>     6.000046140780
 !MCSCF expec                    <11.1|L**2|11.1>     6.000046937813
 !MCSCF expec                    <12.1|L**2|12.1>     6.000046937795
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 5 3 4 6 1 1 2 5   3 4 6 1 2 5 3 4 6 2   5 3 4 6 11415 81213  1011 9 7 6 4 3 5 2 1
                                       1415 812131011 9 7 6   4 3 5 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 3 6 9 7 4 510 8 2   1 3 7 9 6 5 410 8 2   1 3 810 9 7 5 4 6 2
                                        1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99958    -3.72252     1  1  s    1.00211
    2.1     1.71881    -0.33793     1  1  d0   1.00432
    3.1     1.61899    -0.31105     1  1  d2+  1.00389
    4.1     1.61899    -0.31105     1  1  d2-  1.00389
    5.1     1.53380    -0.28718     1  1  d1+  1.00344
    6.1     1.53380    -0.28718     1  1  d1-  1.00344
    7.1     0.97788    -0.09861     1  2  s    0.90938
    1.2     1.99939    -2.35281     1  1  py   1.00016
    2.2     1.99939    -2.35281     1  1  px   1.00016
    3.2     1.99939    -2.35265     1  1  pz   1.00019
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================

 State:                1               2               3               4               5               6               7
 2a2a22b 222      0.00022865      0.81436057      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000002
 2aa222b 222      0.81436057     -0.00022865     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2222aab 222      0.00000000     -0.00000002      0.00000000     -0.00000000     -0.00000000      0.00000000      0.72797791
 2a2b22a 222     -0.00011405     -0.40621778     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000001
 2ab222a 222     -0.40621778      0.00011405      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 222022a 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 220222a 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 202222a 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2ba222a 222     -0.40814280      0.00011459      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2b2a22a 222     -0.00011459     -0.40814280     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000001
 2a22a2b 222      0.00000000     -0.00000000      0.51554576     -0.00040820     -0.00000039      0.00000071     -0.00000000
 2a222ab 222      0.00000000      0.00000000      0.00040820      0.51554576      0.00000047      0.00000026      0.00000000
 222a2ab 222      0.00000000      0.00000000      0.44575752     -0.00035295     -0.27703830      0.50482445     -0.00000000
 222aa2b 222      0.00000000      0.00000000      0.00035295      0.44575783      0.50482424      0.27703819      0.00000000
 22a22ab 222     -0.00000000      0.00000000     -0.00035295     -0.44575902      0.50482343      0.27703775     -0.00000000
 22a2a2b 222     -0.00000000     -0.00000000      0.44575933     -0.00035295      0.27703763     -0.50482322     -0.00000000
 22a22ba 222      0.00000000     -0.00000000      0.00017573      0.22194162     -0.25212799     -0.13836317      0.00000000
 22a2b2a 222      0.00000000      0.00000000     -0.22194178      0.00017573     -0.13836311      0.25212788      0.00000000
 222a2ba 222     -0.00000000     -0.00000000     -0.22194087      0.00017573      0.13836345     -0.25212850      0.00000000
 222ab2a 222     -0.00000000     -0.00000000     -0.00017573     -0.22194103     -0.25212839     -0.13836339     -0.00000000
 222202a 222      0.00043117     -0.00000012      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2222baa 222      0.00000012      0.00043118     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.36398896
 2222aba 222     -0.00000012     -0.00043116     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.36398896
 222220a 222     -0.00043117      0.00000012     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 222b2aa 222     -0.00000000     -0.00000000     -0.22381665      0.00017722      0.13867486     -0.25269596      0.00000000
 222ba2a 222     -0.00000000     -0.00000000     -0.00017722     -0.22381680     -0.25269585     -0.13867480     -0.00000000
 22b22aa 222      0.00000000     -0.00000000      0.00017722      0.22381740     -0.25269545     -0.13867458      0.00000000
 22b2a2a 222      0.00000000      0.00000000     -0.22381755      0.00017722     -0.13867452      0.25269534      0.00000000
 22aa22b 222     -0.00000000      0.00000001     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.36502857
 2a22b2a 222     -0.00000000      0.00000000     -0.25679116      0.00020332      0.00000020     -0.00000036      0.00000000
 2a222ba 222     -0.00000000     -0.00000000     -0.00020332     -0.25679116     -0.00000023     -0.00000013     -0.00000000
 2b222aa 222     -0.00000000     -0.00000000     -0.00020488     -0.25875459     -0.00000023     -0.00000013     -0.00000000
 2b22a2a 222     -0.00000000      0.00000000     -0.25875459      0.00020488      0.00000020     -0.00000036      0.00000000
 2a22220 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 22a2220 222      0.00005197     -0.00000001      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 222a220 222      0.00000001      0.00005197     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2222a20 222      0.00000000      0.00000000     -0.00010496      0.00000008     -0.00000000      0.00000000      0.00000000
 22222a0 222     -0.00000000      0.00000000     -0.00000008     -0.00010495     -0.00000000     -0.00000000     -0.00000000
 22ba22a 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.18251429
 22ab22a 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.18251429
 2a20222 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a02222 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 202a222 222      0.00000001      0.00003815      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 20a2222 222      0.00003815     -0.00000001     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 
 Energy:       -109.35253128   -109.35253128   -109.35233035   -109.35233035   -109.35227743   -109.35227743   -109.35220330

 State:                8               9              10              11              12
 2a2a22b 222      0.00000000      0.00000015     -0.00114300     -0.00000000      0.00000000
 2aa222b 222     -0.00000000     -0.00114300     -0.00000015     -0.00000000      0.00000000
 2222aab 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2a2b22a 222     -0.00000000     -0.00006814      0.51715184      0.00000000     -0.00000000
 2ab222a 222      0.00000041      0.51715183      0.00006814      0.00000000     -0.00000000
 222022a 222      0.51678182     -0.00000041     -0.00000000     -0.00000000     -0.00000000
 220222a 222      0.51678181     -0.00000041     -0.00000000     -0.00000000     -0.00000000
 202222a 222     -0.51643383      0.00000041      0.00000000      0.00000000      0.00000000
 2ba222a 222     -0.00000041     -0.51600884     -0.00006799     -0.00000000      0.00000000
 2b2a22a 222      0.00000000      0.00006799     -0.51600884     -0.00000000      0.00000000
 2a22a2b 222     -0.00000000      0.00000000      0.00000000     -0.00114307     -0.00000288
 2a222ab 222      0.00000000      0.00000000      0.00000000     -0.00000288      0.00114307
 222a2ab 222     -0.00000000      0.00000000      0.00000000     -0.00099650     -0.00000251
 222aa2b 222      0.00000000      0.00000000     -0.00000000     -0.00000251      0.00099650
 22a22ab 222     -0.00000000      0.00000000     -0.00000000      0.00000251     -0.00099650
 22a2a2b 222     -0.00000000      0.00000000      0.00000000     -0.00099650     -0.00000251
 22a22ba 222      0.00000000      0.00000000      0.00000000     -0.00112818      0.44818809
 22a2b2a 222      0.00000000     -0.00000000     -0.00000000      0.44818809      0.00112818
 222a2ba 222      0.00000000     -0.00000000     -0.00000000      0.44818809      0.00112818
 222ab2a 222     -0.00000000     -0.00000000     -0.00000000      0.00112818     -0.44818809
 222202a 222     -0.25858610      0.44789352      0.00005901      0.00000000      0.00000000
 2222baa 222     -0.00000000     -0.00005901      0.44789332      0.00000000     -0.00000000
 2222aba 222      0.00000000      0.00005901     -0.44789332     -0.00000000      0.00000000
 222220a 222     -0.25858682     -0.44789311     -0.00005901     -0.00000000      0.00000000
 222b2aa 222     -0.00000000      0.00000000      0.00000000     -0.44719160     -0.00112567
 222ba2a 222      0.00000000      0.00000000      0.00000000     -0.00112567      0.44719160
 22b22aa 222     -0.00000000     -0.00000000     -0.00000000      0.00112567     -0.44719159
 22b2a2a 222     -0.00000000      0.00000000      0.00000000     -0.44719159     -0.00112567
 22aa22b 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2a22b2a 222      0.00000000     -0.00000000     -0.00000000      0.25897872      0.00065190
 2a222ba 222     -0.00000000     -0.00000000     -0.00000000      0.00065190     -0.25897872
 2b222aa 222      0.00000000      0.00000000      0.00000000     -0.00064902      0.25783565
 2b22a2a 222     -0.00000000      0.00000000      0.00000000     -0.25783565     -0.00064902
 2a22220 222     -0.22046224      0.00000018      0.00000000      0.00000000      0.00000000
 22a2220 222      0.00000018      0.21952765      0.00002892      0.00000000     -0.00000000
 222a220 222     -0.00000000     -0.00002892      0.21952765      0.00000000     -0.00000000
 2222a20 222     -0.00000000      0.00000000      0.00000000     -0.21866181     -0.00055041
 22222a0 222      0.00000000      0.00000000      0.00000000     -0.00055041      0.21866181
 22ba22a 222      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 22ab22a 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 2a20222 222      0.06761871     -0.00000005     -0.00000000     -0.00000000     -0.00000000
 2a02222 222      0.06761871     -0.00000005     -0.00000000     -0.00000000     -0.00000000
 202a222 222      0.00000000      0.00000886     -0.06725337     -0.00000000      0.00000000
 20a2222 222     -0.00000005     -0.06725337     -0.00000886     -0.00000000      0.00000000
 
 Energy:       -109.33361135   -109.33359386   -109.33359386   -109.33357479   -109.33357479
 


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
 CPU TIMES  *        18.99     18.19      0.08      0.52
 REAL TIME  *        21.92 SEC
 DISK USED  *        32.97 MB (local),      450.82 MB (total)
 SF USED    *        12.19 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Prep and LL values

         ENERGY       LL
    -109.3525313   11.99999914
    -109.3525313   11.99999914
    -109.3523304   11.99997579
    -109.3523304   11.99997579
    -109.3522774   12.00001808
    -109.3522774   12.00001808
    -109.3522033   11.99999741
    -109.3336114    6.00002575
    -109.3335939    6.00004614
    -109.3335939    6.00004614
    -109.3335748    6.00004694
    -109.3335748    6.00004694
                                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      87 (   48   39)

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 5 3 4 6 1 1 2 5   3 4 6 1 2 5 3 4 6 2   5 3 4 6 11415 81213  1011 9 7 6 4 3 5 2 1
                                       1415 812131011 9 7 6   4 3 5 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 3 6 9 7 4 510 8 2   1 3 7 9 6 5 410 8 2   1 3 810 9 7 5 4 6 2
                                        1 3

 Wavefunction dump at record             2141.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    2070
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    3    0   -109.35236194    -109.35403032   -0.00166838    0.03814706 0.00001927 0.00000000  0.75E-01      0.23
   2    3    3    0   -109.35401383    -109.35401422   -0.00000039    0.00073951 0.00000033 0.00000000  0.99E-03      0.41

 CONVERGENCE REACHED!  Final gradient:    0.00000033 ( 0.33E-06)
                       Final energy:   -109.35401422
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -109.354014234014
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03485823
 One electron energy                          -193.39435817
 Two electron energy                            84.04034393
 Virial ratio                                    3.66490537
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -109.354014226138
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03485856
 One electron energy                          -193.39435862
 Two electron energy                            84.04034439
 Virial ratio                                    3.66490535
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -109.354014220783
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03485882
 One electron energy                          -193.39435899
 Two electron energy                            84.04034477
 Virial ratio                                    3.66490534
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                      -109.354014218721
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03485890
 One electron energy                          -193.39435909
 Two electron energy                            84.04034487
 Virial ratio                                    3.66490533
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                      -109.354014214491
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03485903
 One electron energy                          -193.39435927
 Two electron energy                            84.04034506
 Virial ratio                                    3.66490532
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                      -109.354014212002
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03485915
 One electron energy                          -193.39435943
 Two electron energy                            84.04034522
 Virial ratio                                    3.66490531
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                      -109.354014206875
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.03485931
 One electron energy                          -193.39435965
 Two electron energy                            84.04034544
 Virial ratio                                    3.66490530
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2141.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     3.891639046623
 !MCSCF expec                      <2.1|LXLX|2.1>     3.999999998608
 !MCSCF expec                      <3.1|LXLX|3.1>     0.000439940544
 !MCSCF expec                      <4.1|LXLX|4.1>     5.108067624050
 !MCSCF expec                      <5.1|LXLX|5.1>     4.891913754872
 !MCSCF expec                      <6.1|LXLX|6.1>     3.999559982837
 !MCSCF expec                      <7.1|LXLX|7.1>     6.108342955377
 
 !MCSCF expec                      <1.1|LYLY|1.1>     4.109149623059
 !MCSCF expec                      <2.1|LYLY|2.1>     4.000000000619
 !MCSCF expec                      <3.1|LYLY|3.1>     5.918549655103
 !MCSCF expec                      <4.1|LYLY|4.1>     0.050706739847
 !MCSCF expec                      <5.1|LYLY|5.1>     3.949295337397
 !MCSCF expec                      <6.1|LYLY|6.1>     4.081457532267
 !MCSCF expec                      <7.1|LYLY|7.1>     5.890868637889
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     3.999211330320
 !MCSCF expec                      <2.1|LZLZ|2.1>     4.000000000775
 !MCSCF expec                      <3.1|LZLZ|3.1>     6.081010404354
 !MCSCF expec                      <4.1|LZLZ|4.1>     6.841225636105
 !MCSCF expec                      <5.1|LZLZ|5.1>     3.158790907733
 !MCSCF expec                      <6.1|LZLZ|6.1>     3.918982484897
 !MCSCF expec                      <7.1|LZLZ|7.1>     0.000788406734
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000001
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000001
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000001
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000001
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000001
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000001
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000001
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 3 4 5 1 1 3 2   5 4 6 1 3 2 5 4 6 3   2 5 4 6 1 913101415  12 8 711 4 5 3 2 6 1
                                        9121514 81310 711 4   5 2 3 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 3 2 1   3 2 4 8 9 7 610 5 1   3 2 4 7 9 6 810 5 1   3 2 410 8 7 9 6 5 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.72830     1  1  s    1.00214
    2.1     1.59923    -0.31362     1  1  d0   1.00474
    3.1     1.59923    -0.31362     1  1  d1-  1.00474
    4.1     1.59923    -0.31362     1  1  d2-  1.00474
    5.1     1.59923    -0.31362     1  1  d1+  1.00474
    6.1     1.59923    -0.31362     1  1  d2+  1.00474
    7.1     1.00387    -0.10601     1  2  s    0.78548
    1.2     1.99999    -2.35972     1  1  pz   1.00008
    2.2     1.99999    -2.35972     1  1  py   1.00008
    3.2     1.99999    -2.35972     1  1  px   1.00008
 
 Natural orbital dump (state averaged) at molpro section 2141.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 2a222ab 222     -0.00000013      0.81491504     -0.00001498      0.00000520     -0.00000139     -0.00000068      0.00000015
 2a2a22b 222      0.81483470      0.00000013     -0.00000039      0.00000001      0.00000007      0.00000000      0.01144274
 222aa2b 222      0.00000034      0.00001340      0.72884212      0.00000885     -0.00001185      0.00764407      0.00000015
 22a2a2b 222     -0.01023469     -0.00000014     -0.00000014      0.00000100      0.00000052     -0.00000031      0.72881023
 22aa22b 222      0.00000000     -0.00000448     -0.00000736      0.72424754      0.08206543     -0.00000926     -0.00000105
 22a22ab 222     -0.00000010     -0.00000289     -0.18961181      0.00000009      0.00006157      0.70378731      0.00000026
 2222aab 222     -0.00000005      0.00000282      0.00001482     -0.26052137      0.68073332     -0.00005553     -0.00000013
 2a22a2b 222      0.00000003      0.00000096     -0.00000430     -0.26773240     -0.44040202      0.00003740      0.00000068
 2aa222b 222      0.00000014      0.00000607      0.31132466      0.00000516      0.00002870      0.41074507      0.00000024
 2b222aa 222      0.00000007     -0.40745754      0.00000749     -0.00000260      0.00000070      0.00000034     -0.00000008
 2a222ba 222      0.00000007     -0.40745750      0.00000749     -0.00000260      0.00000070      0.00000034     -0.00000008
 2a2b22a 222     -0.40741737     -0.00000006      0.00000019     -0.00000000     -0.00000004     -0.00000000     -0.00572136
 2b2a22a 222     -0.40741733     -0.00000006      0.00000019     -0.00000000     -0.00000004     -0.00000000     -0.00572137
 222ba2a 222     -0.00000017     -0.00000670     -0.36442113     -0.00000443      0.00000593     -0.00382206     -0.00000008
 222ab2a 222     -0.00000017     -0.00000670     -0.36442100     -0.00000443      0.00000593     -0.00382201     -0.00000008
 222a2ab 222      0.00511736      0.00000007      0.00000007     -0.00000050     -0.00000026      0.00000016     -0.36440532
 22a2b2a 222      0.00511735      0.00000007      0.00000007     -0.00000050     -0.00000026      0.00000016     -0.36440512
 22b2a2a 222      0.00511734      0.00000007      0.00000007     -0.00000050     -0.00000026      0.00000016     -0.36440510
 22ab22a 222     -0.00000000      0.00000224      0.00000368     -0.36212385     -0.04103274      0.00000463      0.00000052
 22ba22a 222     -0.00000000      0.00000224      0.00000368     -0.36212370     -0.04103269      0.00000463      0.00000052
 22a22ba 222      0.00000005      0.00000145      0.09480589     -0.00000005     -0.00003078     -0.35189370     -0.00000013
 22b22aa 222      0.00000005      0.00000145      0.09480593     -0.00000005     -0.00003078     -0.35189360     -0.00000013
 2222aba 222      0.00000003     -0.00000141     -0.00000741      0.13026066     -0.34036670      0.00002776      0.00000007
 2222baa 222      0.00000003     -0.00000141     -0.00000741      0.13026071     -0.34036662      0.00002776      0.00000007
 2b22a2a 222     -0.00000002     -0.00000048      0.00000215      0.13386623      0.22020104     -0.00001870     -0.00000034
 2a22b2a 222     -0.00000002     -0.00000048      0.00000215      0.13386617      0.22020098     -0.00001870     -0.00000034
 2ba222a 222     -0.00000007     -0.00000303     -0.15566236     -0.00000258     -0.00001435     -0.20537257     -0.00000012
 2ab222a 222     -0.00000007     -0.00000303     -0.15566230     -0.00000258     -0.00001435     -0.20537250     -0.00000012
 222b2aa 222     -0.00255868     -0.00000004     -0.00000004      0.00000025      0.00000013     -0.00000008      0.18220267
 222a2ba 222     -0.00255868     -0.00000004     -0.00000004      0.00000025      0.00000013     -0.00000008      0.18220265
 
 Energy:       -109.35401423   -109.35401423   -109.35401422   -109.35401422   -109.35401421   -109.35401421   -109.35401421
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.12       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       6        1.35       700     1000      520     2100     2140     2141   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF   

 PROGRAMS   *        TOTAL     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *        19.52      0.53     18.19      0.08      0.52
 REAL TIME  *        22.52 SEC
 DISK USED  *        33.55 MB (local),      457.82 MB (total)
 SF USED    *        12.19 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3540142   12.0
    -109.3540142   12.0
    -109.3540142   12.0
    -109.3540142   12.0
    -109.3540142   12.0
    -109.3540142   12.0
    -109.3540142   12.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

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

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  70

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -109.35401423
     2      -109.35401423
     3      -109.35401422
     4      -109.35401422
     5      -109.35401421
     6      -109.35401421
     7      -109.35401421

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.51D-05
 Number of N-2 electron functions:     700
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       1329888
 Total number of contracted configurations:      1409119
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:    570570 words, CPU-Time:      0.11 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    429037 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.35401423     0.00000000    -0.69285032  0.27D-01  0.11D+00     0.32
    1     2     2     1.00000000     0.00000000  -109.35401423     0.00000000    -0.69329274  0.27D-01  0.11D+00     0.32
    1     3     3     1.00000000     0.00000000  -109.35401422     0.00000000    -0.69469245  0.27D-01  0.11D+00     0.32
    1     4     4     1.00000000     0.00000000  -109.35401422     0.00000000    -0.69485971  0.27D-01  0.11D+00     0.32
    1     5     5     1.00000000     0.00000000  -109.35401421     0.00000000    -0.69279566  0.27D-01  0.11D+00     0.32
    1     6     6     1.00000000     0.00000000  -109.35401421     0.00000000    -0.69283022  0.27D-01  0.11D+00     0.32
    1     7     7     1.00000000     0.00000000  -109.35401421     0.00000000    -0.69418467  0.27D-01  0.11D+00     0.32
    2     1     1     1.09196487    -0.56815231  -109.92216654    -0.56815231    -0.01593144  0.14D-02  0.22D-02    22.66
    2     2     2     1.09197052    -0.56814023  -109.92215446    -0.56814023    -0.01594813  0.14D-02  0.22D-02    22.66
    2     3     3     1.09193215    -0.56805982  -109.92207404    -0.56805982    -0.01598100  0.14D-02  0.22D-02    22.66
    2     4     4     1.09174501    -0.56791490  -109.92192912    -0.56791490    -0.01604251  0.14D-02  0.22D-02    22.66
    2     5     5     1.09179373    -0.56788135  -109.92189556    -0.56788135    -0.01606841  0.14D-02  0.22D-02    22.66
    2     6     6     1.09205118    -0.56780045  -109.92181466    -0.56780045    -0.01618279  0.14D-02  0.22D-02    22.66
    2     7     7     1.09202905    -0.56776332  -109.92177752    -0.56776332    -0.01619931  0.15D-02  0.22D-02    22.66
    3     1     1     1.08893962    -0.58375654  -109.93777077    -0.01560423    -0.00047138  0.19D-04  0.95D-04    44.58
    3     2     2     1.08894019    -0.58375241  -109.93776663    -0.01561218    -0.00047663  0.19D-04  0.97D-04    44.58
    3     3     3     1.08891106    -0.58372726  -109.93774148    -0.01566744    -0.00049346  0.19D-04  0.10D-03    44.58
    3     4     4     1.08890274    -0.58371037  -109.93772459    -0.01579546    -0.00049584  0.18D-04  0.98D-04    44.58
    3     5     5     1.08887521    -0.58370480  -109.93771901    -0.01582346    -0.00049742  0.18D-04  0.99D-04    44.58
    3     6     6     1.08882233    -0.58370177  -109.93771598    -0.01590132    -0.00050603  0.19D-04  0.10D-03    44.58
    3     7     7     1.08882701    -0.58369857  -109.93771277    -0.01593525    -0.00050707  0.19D-04  0.10D-03    44.58
    4     1     1     1.09065296    -0.58430715  -109.93832138    -0.00055061    -0.00006431  0.39D-05  0.14D-04    66.50
    4     2     2     1.09067476    -0.58430632  -109.93832054    -0.00055391    -0.00006106  0.44D-05  0.12D-04    66.50
    4     3     3     1.09067065    -0.58430581  -109.93832003    -0.00057856    -0.00006228  0.42D-05  0.13D-04    66.50
    4     4     4     1.09064187    -0.58430458  -109.93831879    -0.00059421    -0.00006699  0.38D-05  0.15D-04    66.50
    4     5     5     1.09062922    -0.58429845  -109.93831267    -0.00059365    -0.00007190  0.38D-05  0.16D-04    66.50
    4     6     6     1.09061725    -0.58429778  -109.93831199    -0.00059601    -0.00007340  0.37D-05  0.16D-04    66.50
    4     7     7     1.09061505    -0.58429719  -109.93831140    -0.00059862    -0.00007494  0.37D-05  0.17D-04    66.50
    5     1     1     1.09127188    -0.58436729  -109.93838152    -0.00006014    -0.00001127  0.38D-06  0.27D-05    88.39
    5     2     2     1.09129620    -0.58436727  -109.93838149    -0.00006095    -0.00001160  0.23D-06  0.28D-05    88.39
    5     3     3     1.09129106    -0.58436709  -109.93838131    -0.00006127    -0.00001168  0.26D-06  0.28D-05    88.39
    5     4     4     1.09126717    -0.58436672  -109.93838094    -0.00006214    -0.00001169  0.42D-06  0.27D-05    88.39
    5     5     5     1.09126283    -0.58436523  -109.93837944    -0.00006677    -0.00001292  0.44D-06  0.30D-05    88.39
    5     6     6     1.09126706    -0.58436521  -109.93837942    -0.00006742    -0.00001302  0.41D-06  0.31D-05    88.39
    5     7     7     1.09125665    -0.58436493  -109.93837914    -0.00006774    -0.00001303  0.51D-06  0.30D-05    88.39
    6     1     1     1.09138085    -0.58437714  -109.93839137    -0.00000985    -0.00000147  0.10D-06  0.34D-06   110.60
    6     2     2     1.09137836    -0.58437704  -109.93839126    -0.00000977    -0.00000157  0.99D-07  0.36D-06   110.60
    6     3     3     1.09138518    -0.58437694  -109.93839116    -0.00000985    -0.00000160  0.13D-06  0.34D-06   110.60
    6     4     4     1.09138591    -0.58437694  -109.93839116    -0.00001022    -0.00000160  0.13D-06  0.34D-06   110.60
    6     5     5     1.09137765    -0.58437670  -109.93839092    -0.00001148    -0.00000181  0.12D-06  0.41D-06   110.60
    6     6     6     1.09137602    -0.58437669  -109.93839090    -0.00001148    -0.00000181  0.11D-06  0.42D-06   110.60
    6     7     7     1.09137763    -0.58437668  -109.93839089    -0.00001175    -0.00000183  0.12D-06  0.41D-06   110.60
    7     1     1     1.09140013    -0.58437858  -109.93839281    -0.00000144    -0.00000033  0.39D-08  0.91D-07   132.87
    7     2     2     1.09139826    -0.58437858  -109.93839280    -0.00000154    -0.00000032  0.47D-08  0.82D-07   132.87
    7     3     3     1.09139838    -0.58437857  -109.93839279    -0.00000162    -0.00000034  0.41D-08  0.89D-07   132.87
    7     4     4     1.09139923    -0.58437855  -109.93839277    -0.00000162    -0.00000036  0.47D-08  0.10D-06   132.87
    7     5     5     1.09139694    -0.58437846  -109.93839267    -0.00000175    -0.00000045  0.49D-08  0.12D-06   132.87
    7     6     6     1.09139667    -0.58437845  -109.93839266    -0.00000176    -0.00000045  0.48D-08  0.13D-06   132.87
    7     7     7     1.09139777    -0.58437845  -109.93839266    -0.00000177    -0.00000045  0.55D-08  0.12D-06   132.87
    8     1     1     1.09141331    -0.58437885  -109.93839309    -0.00000028    -0.00000007  0.22D-08  0.17D-07   155.12
    8     2     2     1.09141222    -0.58437885  -109.93839308    -0.00000028    -0.00000008  0.19D-08  0.20D-07   155.12
    8     3     3     1.09141292    -0.58437886  -109.93839308    -0.00000029    -0.00000008  0.25D-08  0.19D-07   155.12
    8     4     4     1.09141202    -0.58437886  -109.93839308    -0.00000030    -0.00000008  0.22D-08  0.20D-07   155.12
    8     5     5     1.09141150    -0.58437883  -109.93839305    -0.00000038    -0.00000010  0.30D-08  0.24D-07   155.12
    8     6     6     1.09141228    -0.58437883  -109.93839304    -0.00000038    -0.00000010  0.33D-08  0.24D-07   155.12
    8     7     7     1.09141126    -0.58437884  -109.93839304    -0.00000038    -0.00000010  0.31D-08  0.25D-07   155.12
    9     1     1     1.09142232    -0.58437892  -109.93839315    -0.00000007    -0.00000002  0.39D-09  0.45D-08   177.10
    9     2     2     1.09142210    -0.58437892  -109.93839315    -0.00000007    -0.00000002  0.32D-09  0.48D-08   177.10
    9     3     3     1.09142195    -0.58437893  -109.93839315    -0.00000007    -0.00000002  0.16D-09  0.46D-08   177.10
    9     4     4     1.09142161    -0.58437893  -109.93839315    -0.00000007    -0.00000002  0.15D-09  0.52D-08   177.10
    9     5     5     1.09142120    -0.58437892  -109.93839314    -0.00000009    -0.00000003  0.19D-09  0.72D-08   177.10
    9     6     6     1.09142112    -0.58437892  -109.93839314    -0.00000009    -0.00000003  0.20D-09  0.73D-08   177.10
    9     7     7     1.09142132    -0.58437893  -109.93839313    -0.00000009    -0.00000003  0.18D-09  0.72D-08   177.10


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.3%
 P   0.2%   6.2%  76.8%

 Initialization:   0.1%
 Other:           16.1%

 Total CPU:      177.1 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/222/\222           0.0000000   0.9552162  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2/2/22\222           0.9551307  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0127739
 22/2/2\222           0.0114253   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.8542973
 222//2\222           0.0000000  -0.0000000   0.8173941   0.0000000  -0.0000000   0.2486360  -0.0000000
 22//22\222           0.0000000   0.0000000  -0.0000000   0.7914015   0.3219252  -0.0000000   0.0000000
 22/22/\222          -0.0000000   0.0000000  -0.4450878   0.0000000  -0.0000000   0.7292772  -0.0000000
 2222//\222           0.0000000  -0.0000000   0.0000000  -0.5095520   0.6857895   0.0000000   0.0000000
 2/22/2\222           0.0000000   0.0000000  -0.0000000  -0.1627236  -0.5818039  -0.0000000   0.0000000
 2//222\222          -0.0000000   0.0000000   0.2149463  -0.0000000   0.0000000   0.5646006   0.0000000
 222/2/\222          -0.0057130   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.4271436

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956839    0.000000    0.000000    0.000000    0.000000   -0.000000    0.026239
 2          -0.000000    0.957199   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.918640    0.000000    0.000000   -0.268944    0.000000
 4           0.000000    0.000000    0.000000    0.921614   -0.258569    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.258569    0.921614   -0.000000   -0.000000
 6           0.000000   -0.000000    0.268944    0.000000    0.000000    0.918640    0.000000
 7          -0.026239   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.956840

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957199    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.957199   -0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.957199   -0.000000    0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.957199   -0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.957199    0.000000    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.957199   -0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.957199


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95683923 (fixed)   0.95720197 (relaxed)   0.95719893 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000634    0.00000000   -0.45394242
 Singles      0.01568486   -0.07497268   -0.07708924
 Pairs        0.07573804   -0.01396391   -0.05334726
 Total        1.09142925   -0.08893659   -0.58437892
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35401423
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48451610
 One electron energy                 -193.00655290
 Two electron energy                   83.06815974
 Virial quotient                       -2.65010668
 Correlation energy                    -0.58437892
 !MRCI STATE 1.1 Energy              -109.938393154703

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99182248 (Davidson, fixed reference)
 Cluster corrected energies          -109.99181843 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99182248 (Davidson, rotated reference)

 Cluster corrected energies          -109.98853282 (Pople, fixed reference)
 Cluster corrected energies          -109.98852875 (Pople, relaxed reference)
 Cluster corrected energies          -109.98853282 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95719903 (fixed)   0.95720207 (relaxed)   0.95719903 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000635    0.00000000   -0.46673670
 Singles      0.01568473   -0.07497265   -0.07708921
 Pairs        0.07573795   -0.00000000   -0.04055302
 Total        1.09142903   -0.07497265   -0.58437892
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35401423
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48453039
 One electron energy                 -193.00656536
 Two electron energy                   83.06817221
 Virial quotient                       -2.65010577
 Correlation energy                    -0.58437892
 !MRCI STATE 2.1 Energy              -109.938393150648

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99182235 (Davidson, fixed reference)
 Cluster corrected energies          -109.99181830 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99182235 (Davidson, rotated reference)

 Cluster corrected energies          -109.98853269 (Pople, fixed reference)
 Cluster corrected energies          -109.98852862 (Pople, relaxed reference)
 Cluster corrected energies          -109.98853269 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.91863985 (fixed)   0.95720213 (relaxed)   0.95719910 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000634    0.00000000   -0.46673680
 Singles      0.01568451   -0.07497262   -0.07708922
 Pairs        0.07573803    0.00000000   -0.04055291
 Total        1.09142888   -0.07497262   -0.58437893
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35401422
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48455921
 One electron energy                 -193.00658121
 Two electron energy                   83.06818806
 Virial quotient                       -2.65010392
 Correlation energy                    -0.58437893
 !MRCI STATE 3.1 Energy              -109.938393150595

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99182226 (Davidson, fixed reference)
 Cluster corrected energies          -109.99181821 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99182226 (Davidson, rotated reference)

 Cluster corrected energies          -109.98853260 (Pople, fixed reference)
 Cluster corrected energies          -109.98852853 (Pople, relaxed reference)
 Cluster corrected energies          -109.98853260 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.92161413 (fixed)   0.95720228 (relaxed)   0.95719925 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000634    0.00000000   -0.46673683
 Singles      0.01568449   -0.07497274   -0.07708926
 Pairs        0.07573770    0.00000000   -0.04055284
 Total        1.09142853   -0.07497274   -0.58437893
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35401422
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48456760
 One electron energy                 -193.00658709
 Two electron energy                   83.06819395
 Virial quotient                       -2.65010339
 Correlation energy                    -0.58437893
 !MRCI STATE 4.1 Energy              -109.938393147234

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99182205 (Davidson, fixed reference)
 Cluster corrected energies          -109.99181801 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99182205 (Davidson, rotated reference)

 Cluster corrected energies          -109.98853239 (Pople, fixed reference)
 Cluster corrected energies          -109.98852833 (Pople, relaxed reference)
 Cluster corrected energies          -109.98853239 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.92161435 (fixed)   0.95720246 (relaxed)   0.95719943 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000634    0.00000000   -0.46673700
 Singles      0.01568448   -0.07497274   -0.07708924
 Pairs        0.07573731    0.00000000   -0.04055268
 Total        1.09142813   -0.07497274   -0.58437892
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35401421
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48456583
 One electron energy                 -193.00659083
 Two electron energy                   83.06819769
 Virial quotient                       -2.65010350
 Correlation energy                    -0.58437892
 !MRCI STATE 5.1 Energy              -109.938393137077

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99182181 (Davidson, fixed reference)
 Cluster corrected energies          -109.99181776 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99182181 (Davidson, rotated reference)

 Cluster corrected energies          -109.98853215 (Pople, fixed reference)
 Cluster corrected energies          -109.98852808 (Pople, relaxed reference)
 Cluster corrected energies          -109.98853215 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.91864023 (fixed)   0.95720250 (relaxed)   0.95719946 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000634    0.00000000   -0.46673705
 Singles      0.01568448   -0.07497273   -0.07708923
 Pairs        0.07573723    0.00000000   -0.04055264
 Total        1.09142805   -0.07497273   -0.58437892
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35401421
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48456491
 One electron energy                 -193.00659102
 Two electron energy                   83.06819788
 Virial quotient                       -2.65010356
 Correlation energy                    -0.58437892
 !MRCI STATE 6.1 Energy              -109.938393135564

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99182176 (Davidson, fixed reference)
 Cluster corrected energies          -109.99181771 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99182176 (Davidson, rotated reference)

 Cluster corrected energies          -109.98853210 (Pople, fixed reference)
 Cluster corrected energies          -109.98852803 (Pople, relaxed reference)
 Cluster corrected energies          -109.98853210 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95683967 (fixed)   0.95720241 (relaxed)   0.95719937 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000634   -0.00000000   -0.00017879
 Singles      0.01568461   -0.07497287   -0.07708937
 Pairs        0.07573729   -0.50921464   -0.50711077
 Total        1.09142825   -0.58418750   -0.58437893
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35401421
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48456974
 One electron energy                 -193.00658954
 Two electron energy                   83.06819641
 Virial quotient                       -2.65010325
 Correlation energy                    -0.58437893
 !MRCI STATE 7.1 Energy              -109.938393133593

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99182188 (Davidson, fixed reference)
 Cluster corrected energies          -109.99181783 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99182188 (Davidson, rotated reference)

 Cluster corrected energies          -109.98853221 (Pople, fixed reference)
 Cluster corrected energies          -109.98852815 (Pople, relaxed reference)
 Cluster corrected energies          -109.98853221 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.12       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380   
                                         JKOP   

              2       7       77.96       700     1000      520     2100     2140     2141     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *       200.93    181.41      0.53     18.19      0.08      0.52
 REAL TIME  *       215.76 SEC
 DISK USED  *       110.16 MB (local),        1.34 GB (total)
 SF USED    *       770.70 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -109.99182248  AU                              
 SETTING HLSDIAG(2)     =      -109.99182235  AU                              
 SETTING HLSDIAG(3)     =      -109.99182226  AU                              
 SETTING HLSDIAG(4)     =      -109.99182205  AU                              
 SETTING HLSDIAG(5)     =      -109.99182181  AU                              
 SETTING HLSDIAG(6)     =      -109.99182176  AU                              
 SETTING HLSDIAG(7)     =      -109.99182188  AU                              


         HLSDIAG
    -109.9918225
    -109.9918223
    -109.9918223
    -109.9918221
    -109.9918218
    -109.9918218
    -109.9918219
                                                  

 CI/cc-pWCVTZ-PP energy=   -109.938393133593

              CI           MULTI           MULTI         RHF-SCF
   -109.93839313   -109.35401421   -109.33359386   -109.34180715
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
