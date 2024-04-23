
 Working directory              : /wrk/irikura/molpro.J2gRPiVpCA/
 Global scratch directory       : /wrk/irikura/molpro.J2gRPiVpCA/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.J2gRPiVpCA/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Tl SO-CI
 memory,2000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Tl};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=80,sym=1,spin=0}
 
 {multi
     occ,22,25
     closed,20,19
     wf,nelec=81,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,14,16
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Tl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 19-Mar-24          TIME: 12:40:50  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry TL     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry TL     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry TL     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry TL     F aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry TL     G aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  TL     81.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   81
 NUMBER OF PRIMITIVE AOS:         398
 NUMBER OF SYMMETRY AOS:          330
 NUMBER OF CONTRACTIONS:          125   (   60Ag  +   65Au  )
 NUMBER OF INNER CORE ORBITALS:    30   (   14Ag  +   16Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     35.127 MB (compressed) written to integral file ( 13.6%)

     Node minimum: 3.408 MB, node maximum: 7.078 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2623338.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2623338      RECORD LENGTH: 524288

 Memory used in sort:       3.18 MW

 SORT1 READ    32049457. AND WROTE      512975. INTEGRALS IN      2 RECORDS. CPU TIME:     0.14 SEC, REAL TIME:     0.15 SEC
 SORT2 READ     3149735. AND WROTE    15753000. INTEGRALS IN    150 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.09 SEC

 Node minimum:     2622014.  Node maximum:     2628987. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910

 Eigenvalues of metric

         1 0.442E-04 0.159E-02 0.231E-02 0.231E-02 0.231E-02 0.231E-02 0.231E-02 0.163E-01
         2 0.298E-03 0.298E-03 0.298E-03 0.127E-01 0.127E-01 0.127E-01 0.497E-01 0.497E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.92       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.00      7.82
 REAL TIME  *         9.34 SEC
 DISK USED  *        30.31 MB (local),      246.03 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   21  22

 Initial occupancy:  21  19

 NELEC=   80   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -20247.51870259  -20247.51870259     0.00D+00     0.20D+00     0     0       0.02      0.03    start
   2   -20247.52345646      -0.00475387     0.12D-02     0.77D-02     1     0       0.01      0.04    diag
   3   -20247.52396582      -0.00050936     0.92D-03     0.23D-02     2     0       0.01      0.05    diag
   4   -20247.52404238      -0.00007656     0.21D-03     0.16D-02     3     0       0.01      0.06    diag
   5   -20247.52405096      -0.00000858     0.48D-04     0.50D-03     4     0       0.02      0.08    diag
   6   -20247.52405124      -0.00000028     0.88D-05     0.70D-04     5     0       0.01      0.09    diag
   7   -20247.52405124      -0.00000000     0.79D-06     0.50D-05     6     0       0.02      0.11    diag
   8   -20247.52405124       0.00000000     0.32D-07     0.64D-06     7     0       0.01      0.12    fixocc
   9   -20247.52405124       0.00000000     0.29D-08     0.51D-07     0     0       0.01      0.13    diag

 Final occupancy:  21  19

 !RHF STATE 1.1 Energy               -20247.5240512401    
  RHF One-electron energy            -27707.4588530883    
  RHF Two-electron energy            7459.934801848169
  RHF Kinetic energy                  31217.0053948866    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.648605585165

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3162.27038     1  1  s    0.99877
    2.1     2.00000  -568.91399     1  2  s    1.01269
    3.1     2.00000  -138.61501     1  3  s    0.93827
    4.1     2.00000   -91.16864     1  1  d0   1.00000
    5.1     2.00000   -91.16864     1  1  d2-  0.89449    1  1  d2+ -0.44118
    6.1     2.00000   -91.16864     1  1  d2-  0.44412    1  1  d2+  0.89228
    7.1     2.00000   -91.16864     1  1  d1+ -0.28273    1  1  d1-  0.95561
    8.1     2.00000   -91.16864     1  1  d1+  0.95753    1  1  d1-  0.27958
    9.1     2.00000   -32.56173     1  4  s    1.15533
   10.1     2.00000   -15.63278     1  2  d0   0.99992
   11.1     2.00000   -15.63278     1  2  d2+  0.99755
   12.1     2.00000   -15.63278     1  2  d2-  0.69494    1  2  d1+  0.67455
   13.1     2.00000   -15.63278     1  2  d2- -0.62624    1  2  d1+  0.73722
   14.1     2.00000   -15.63278     1  2  d2- -0.35221    1  2  d1-  0.93473
   15.1     2.00000    -5.88552     1  5  s    0.89571
   16.1     2.00000    -1.10774     1  3  d0   0.99877
   17.1     2.00000    -1.10774     1  3  d1-  0.98246
   18.1     2.00000    -1.10774     1  3  d1+  0.98234
   19.1     2.00000    -1.10774     1  3  d2-  0.97883
   20.1     2.00000    -1.10774     1  3  d2+  0.97895
   21.1     2.00000    -0.68806     1  6  s    1.15353
    1.2     2.00000  -491.40288     1  1  px   0.98869
    2.2     2.00000  -491.40288     1  1  py   0.98791
    3.2     2.00000  -491.40288     1  1  pz   0.99921
    4.2     2.00000  -115.86308     1  2  px   1.00007
    5.2     2.00000  -115.86308     1  2  py   1.00007
    6.2     2.00000  -115.86308     1  2  pz   1.00011
    7.2     2.00000   -24.94616     1  3  py   0.99894
    8.2     2.00000   -24.94616     1  3  px   0.99894
    9.2     2.00000   -24.94616     1  3  pz   0.99894
   10.2     2.00000    -5.36423     1  1  f2-  0.99285
   11.2     2.00000    -5.36423     1  1  f2+  0.99285
   12.2     2.00000    -5.36423     1  1  f0   0.99969
   13.2     2.00000    -5.36423     1  1  f3-  0.95254
   14.2     2.00000    -5.36423     1  1  f3+  0.95259
   15.2     2.00000    -5.36423     1  1  f1+  0.27881    1  1  f1-  0.94321
   16.2     2.00000    -5.36423     1  1  f1+  0.94302    1  1  f1- -0.27765
   17.2     2.00000    -3.70938     1  4  pz   1.00778
   18.2     2.00000    -3.70938     1  4  px   1.00778
   19.2     2.00000    -3.70938     1  4  py   1.00778


 HOMO     21.1    -0.688056 =     -18.7230eV
 LUMO     20.2    -0.175761 =      -4.7827eV
 LUMO-HOMO         0.512295 =      13.9403eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.92       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.53       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         8.13      0.13      7.82
 REAL TIME  *         9.51 SEC
 DISK USED  *        31.05 MB (local),      250.46 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  39 (   20   19)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      78 (   38   40)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.135D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.378D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.371D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.282D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.284D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.388D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.102D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.573D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.557D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.306D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.648D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.156D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.168D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.181D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.169D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 5 6 4 1 2   5 3 4 6 1 2 6 4 3 5   1 1 6 4 3 5 2 1 4 6   2 5 3 1 4 6 2 5 3 2
                                        5 3 4 61514 7 81210  1311 9 1 2 5 3 4 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.132D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.161D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.430D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.940D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.898D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.108D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.929D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.929D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.302D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.336D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.333D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.349D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.352D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.637D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.699D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.663D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.666D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.666D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.156D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.156D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 2 1 3 8  10 6 9 7 5 4 3 1 2 2   1 3 3 2 1 1 2 3 9 7  10 8 6 5 4 1 2 3 5 4
                                        6 810 7 9 7 9 6 810   5 4 1 2 3 610 8 9 7   4 5 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  1990  ( 154 closed/active, 1520 closed/virtual, 0 active/active, 316 active/virtual )
 Total number of variables:    2710
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0 -20247.65460875  -20247.65938619   -0.00477744    0.04765040 0.00014193 0.00000000  0.82E+00      2.23
   2    8    7    0 -20247.65933615  -20247.65933860   -0.00000245    0.00156558 0.00000119 0.00000000  0.24E-01      5.10
   3    6    5    0 -20247.65933860  -20247.65933860   -0.00000000    0.00000027 0.00000000 0.00000000  0.83E-05      7.18

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.22E-09)
                       Final energy: -20247.65933860
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -20247.7166562313    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31217.20543575
 One electron energy                        -27729.90043573
 Two electron energy                          7482.18377950
 Virial ratio                                    1.64860760
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -20247.7166562312    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31217.20543576
 One electron energy                        -27729.90043575
 Two electron energy                          7482.18377952
 Virial ratio                                    1.64860760
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -20247.7166562311    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31217.20543576
 One electron energy                        -27729.90043576
 Two electron energy                          7482.18377953
 Virial ratio                                    1.64860760
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -20247.6020209703    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31216.88307418
 One electron energy                        -27715.95053633
 Two electron energy                          7468.34851536
 Virial ratio                                    1.64861062
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -20247.6020209702    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31216.88307418
 One electron energy                        -27715.95053633
 Two electron energy                          7468.34851536
 Virial ratio                                    1.64861062
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -20247.6020209702    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31216.88307418
 One electron energy                        -27715.95053634
 Two electron energy                          7468.34851537
 Virial ratio                                    1.64861062
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999986951
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000016509
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999998167
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999999849
 !MCSCF expec                      <5.2|LXLX|5.2>     0.000000000719
 !MCSCF expec                      <6.2|LXLX|6.2>     0.999999994680
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999986939
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999997626
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000014845
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999978226
 !MCSCF expec                      <5.2|LYLY|5.2>     0.999999999291
 !MCSCF expec                      <6.2|LYLY|6.2>     0.000000025807
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000026111
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999985865
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999986988
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.000000021925
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999999999989
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999979513
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 2   4 6 5 3 1 2 4 6 3 5   1 1 6 4 3 5 2 1 6 4   5 3 2 1 4 6 5 3 2 2
                                        5 3 4 61514 7 81210  13 911 1 2 5 3 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 2 1 3 8  10 6 9 7 4 5 3 1 2 2   3 1 1 3 2 2 1 3 9 7   610 8 5 4 2 1 3 4 5
                                        6 810 7 9 7 9 6 810   4 5 1 2 3 610 8 9 7   4 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3162.07702     1  1  s    0.99877
    2.1     2.00000  -568.72112     1  2  s    1.01269
    3.1     2.00000  -138.42239     1  3  s    0.93830
    4.1     2.00000   -90.97616     1  1  d0   1.00000
    5.1     2.00000   -90.97616     1  1  d1-  1.00000
    6.1     2.00000   -90.97616     1  1  d1+  1.00000
    7.1     2.00000   -90.97616     1  1  d2-  1.00000
    8.1     2.00000   -90.97616     1  1  d2+  1.00000
    9.1     2.00000   -32.36917     1  4  s    1.15510
   10.1     2.00000   -15.44042     1  2  d0   0.99991
   11.1     2.00000   -15.44042     1  2  d1+  0.99991
   12.1     2.00000   -15.44042     1  2  d1-  0.99991
   13.1     2.00000   -15.44042     1  2  d2+  0.99991
   14.1     2.00000   -15.44042     1  2  d2-  0.99991
   15.1     2.00000    -5.69301     1  5  s    0.89729
   16.1     2.00000    -0.91544     1  3  d0   0.99940
   17.1     2.00000    -0.91544     1  3  d1+  0.99940
   18.1     2.00000    -0.91544     1  3  d1-  0.99940
   19.1     2.00000    -0.91544     1  3  d2-  0.99940
   20.1     2.00000    -0.91544     1  3  d2+  0.99940
   21.1     1.95189    -0.50341     1  6  s    1.07574
   22.1     0.00373     0.30432     1  5  s    0.42917    1  8  s    0.43125    1  9  s   -1.84395    1 10  s    1.30498
    1.2     2.00000  -491.21013     1  1  px   1.00000
    2.2     2.00000  -491.21013     1  1  py   1.00000
    3.2     2.00000  -491.21013     1  1  pz   1.00000
    4.2     2.00000  -115.67070     1  2  px   1.00011
    5.2     2.00000  -115.67070     1  2  py   1.00011
    6.2     2.00000  -115.67070     1  2  pz   1.00011
    7.2     2.00000   -24.75399     1  3  py   0.99890
    8.2     2.00000   -24.75399     1  3  px   0.99890
    9.2     2.00000   -24.75399     1  3  pz   0.99890
   10.2     2.00000    -5.17192     1  1  f2-  0.99992
   11.2     2.00000    -5.17192     1  1  f2+  0.99992
   12.2     2.00000    -5.17192     1  1  f0   0.99992
   13.2     2.00000    -5.17192     1  1  f3-  0.99992
   14.2     2.00000    -5.17192     1  1  f3+  0.99992
   15.2     2.00000    -5.17192     1  1  f1+  0.99992
   16.2     2.00000    -5.17192     1  1  f1-  0.99992
   17.2     2.00000    -3.51735     1  4  pz   1.00316
   18.2     2.00000    -3.51735     1  4  px   1.00316
   19.2     2.00000    -3.51735     1  4  py   1.00316
   20.2     0.18150    -0.01597     1  5  py   1.23701
   21.2     0.18150    -0.01597     1  5  pz   1.23701
   22.2     0.18150    -0.01597     1  5  px   1.23701
   23.2     0.16663     0.01518     1  5  px  -0.31692    1 10  px   1.07347
   24.2     0.16663     0.01518     1  5  pz  -0.31692    1 10  pz   1.07347
   25.2     0.16663     0.01518     1  5  py  -0.31692    1 10  py   1.07347
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 a00000      0.00010858      0.00004629      0.95009031     -0.00004000      0.00000722     -0.27107380
 20 0a0000      0.95009030     -0.00010854     -0.00010858     -0.27107380      0.00000333      0.00004000
 20 00a000      0.00010853      0.95009030     -0.00004631     -0.00000333     -0.27107383     -0.00000722
 20 000a00      0.00003094      0.27086942     -0.00001320      0.00001164      0.94869182      0.00002525
 20 00000a      0.00003096      0.00001320      0.27086939      0.00013999     -0.00002525      0.94869181
 20 0000a0      0.27086940     -0.00003094     -0.00003096      0.94869181     -0.00001164     -0.00013999
 00 a02000     -0.00001110     -0.00000473     -0.09713457      0.00000431     -0.00000078      0.02917807
 00 a20000     -0.00001110     -0.00000473     -0.09713457      0.00000431     -0.00000078      0.02917807
 00 2a0000     -0.09713457      0.00001110      0.00001110      0.02917807     -0.00000036     -0.00000431
 00 20a000     -0.00001110     -0.09713457      0.00000473      0.00000036      0.02917807      0.00000078
 00 0a2000     -0.09713457      0.00001110      0.00001110      0.02917807     -0.00000036     -0.00000431
 00 02a000     -0.00001110     -0.09713457      0.00000473      0.00000036      0.02917807      0.00000078
 00 200a00     -0.00000282     -0.02464708      0.00000120     -0.00000106     -0.08596555     -0.00000229
 00 00200a     -0.00000282     -0.00000120     -0.02464708     -0.00001269      0.00000229     -0.08596555
 00 2000a0     -0.02464708      0.00000282      0.00000282     -0.08596555      0.00000105      0.00001269
 00 0020a0     -0.02464708      0.00000282      0.00000282     -0.08596555      0.00000105      0.00001269
 00 020a00     -0.00000282     -0.02464708      0.00000120     -0.00000106     -0.08596555     -0.00000229
 00 02000a     -0.00000282     -0.00000120     -0.02464708     -0.00001269      0.00000229     -0.08596555
 00 002a00     -0.00000273     -0.02392494      0.00000117     -0.00000104     -0.08503295     -0.00000226
 00 20000a     -0.00000273     -0.00000117     -0.02392494     -0.00001255      0.00000226     -0.08503295
 00 0200a0     -0.02392494      0.00000273      0.00000273     -0.08503295      0.00000104      0.00001255
 
 Energy:   -20247.71665623 -20247.71665623 -20247.71665623 -20247.60202097 -20247.60202097 -20247.60202097
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      131.37       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.93       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        14.56      6.43      0.13      7.82
 REAL TIME  *        18.20 SEC
 DISK USED  *       132.41 MB (local),      858.66 MB (total)
 SF USED    *       241.84 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20247.71666   2.0
    -20247.71666   2.0
    -20247.71666   2.0
    -20247.60202   2.0
    -20247.60202   2.0
    -20247.60202   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 81
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of core orbitals:          30 (  14  16 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      78 (  38  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.16 sec, npass=  1  Memory used:   1.50 MW


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20247.71665623
     2    -20247.71665623
     3    -20247.71665623
     4    -20247.60202097
     5    -20247.60202097
     6    -20247.60202097

 Number of blocks in overlap matrix:   562   Smallest eigenvalue:  0.95D-06
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       3021580
 Number of doubly external configurations:       2024966
 Total number of contracted configurations:      5099818
 Total number of uncontracted configurations:   39479590

 Diagonal Coupling coefficients finished.               Storage:  22137780 words, CPU-Time:     50.92 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1105157 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20247.71665623     0.00000000    -0.68688478  0.53D-01  0.96D-01    71.35
    1     2     2     1.00000000     0.00000000-20247.71665623     0.00000000    -0.68688632  0.53D-01  0.96D-01    71.35
    1     3     3     1.00000000     0.00000000-20247.71665623    -0.00000000    -0.68690994  0.53D-01  0.96D-01    71.35
    1     4     4     1.00000000     0.00000000-20247.60202097     0.00000000    -0.66635124  0.42D-01  0.91D-01    71.35
    1     5     5     1.00000000     0.00000000-20247.60202097    -0.00000000    -0.66635383  0.42D-01  0.91D-01    71.35
    1     6     6     1.00000000     0.00000000-20247.60202097    -0.00000000    -0.66635593  0.42D-01  0.91D-01    71.35
    2     1     1     1.09000202    -0.53991612-20248.25657235    -0.53991612    -0.01485865  0.26D-02  0.12D-02   643.10
    2     2     2     1.09002347    -0.53990985-20248.25656608    -0.53990985    -0.01486333  0.26D-02  0.12D-02   643.10
    2     3     3     1.09003013    -0.53989836-20248.25655459    -0.53989836    -0.01487763  0.26D-02  0.12D-02   643.10
    2     4     4     1.08119648    -0.52998010-20248.13200107    -0.52998010    -0.01385411  0.22D-02  0.98D-03   643.10
    2     5     5     1.08120094    -0.52997817-20248.13199914    -0.52997817    -0.01385617  0.22D-02  0.98D-03   643.10
    2     6     6     1.08120145    -0.52997700-20248.13199797    -0.52997700    -0.01385772  0.22D-02  0.98D-03   643.10
    3     1     1     1.08330390    -0.55371424-20248.27037047    -0.01379812    -0.00029009  0.37D-04  0.34D-04  1210.76
    3     2     2     1.08330336    -0.55371420-20248.27037043    -0.01380435    -0.00029002  0.36D-04  0.34D-04  1210.76
    3     3     3     1.08330298    -0.55371387-20248.27037010    -0.01381551    -0.00029034  0.37D-04  0.34D-04  1210.76
    3     4     4     1.07652422    -0.54278473-20248.14480570    -0.01280463    -0.00025896  0.27D-04  0.26D-04  1210.76
    3     5     5     1.07652417    -0.54278467-20248.14480564    -0.01280650    -0.00025902  0.27D-04  0.26D-04  1210.76
    3     6     6     1.07652410    -0.54278463-20248.14480560    -0.01280763    -0.00025906  0.27D-04  0.26D-04  1210.76
    4     1     1     1.08363429    -0.55400780-20248.27066404    -0.00029357    -0.00001229  0.32D-05  0.12D-05  1775.83
    4     2     2     1.08363424    -0.55400780-20248.27066403    -0.00029360    -0.00001230  0.32D-05  0.12D-05  1775.83
    4     3     3     1.08363385    -0.55400778-20248.27066401    -0.00029391    -0.00001231  0.32D-05  0.12D-05  1775.83
    4     4     4     1.07710014    -0.54303893-20248.14505990    -0.00025419    -0.00000944  0.26D-05  0.73D-06  1775.83
    4     5     5     1.07710014    -0.54303893-20248.14505990    -0.00025425    -0.00000944  0.26D-05  0.73D-06  1775.83
    4     6     6     1.07710008    -0.54303892-20248.14505989    -0.00025429    -0.00000944  0.26D-05  0.73D-06  1775.83
    5     1     1     1.08369974    -0.55402175-20248.27067798    -0.00001395    -0.00000055  0.11D-06  0.58D-07  2336.85
    5     2     2     1.08369974    -0.55402175-20248.27067798    -0.00001396    -0.00000055  0.11D-06  0.58D-07  2336.85
    5     3     3     1.08369994    -0.55402175-20248.27067798    -0.00001397    -0.00000056  0.11D-06  0.59D-07  2336.85
    5     4     4     1.07724392    -0.54304930-20248.14507027    -0.00001038    -0.00000040  0.90D-07  0.36D-07  2336.85
    5     5     5     1.07724392    -0.54304930-20248.14507027    -0.00001038    -0.00000040  0.90D-07  0.36D-07  2336.85
    5     6     6     1.07724395    -0.54304930-20248.14507027    -0.00001038    -0.00000040  0.90D-07  0.36D-07  2336.85
    6     1     1     1.08367316    -0.55402235-20248.27067858    -0.00000060    -0.00000003  0.43D-08  0.39D-08  2899.54
    6     2     2     1.08367318    -0.55402235-20248.27067858    -0.00000060    -0.00000003  0.43D-08  0.39D-08  2899.54
    6     3     3     1.08367316    -0.55402235-20248.27067858    -0.00000060    -0.00000003  0.43D-08  0.39D-08  2899.54
    6     4     4     1.07723831    -0.54304973-20248.14507070    -0.00000043    -0.00000002  0.41D-08  0.24D-08  2899.54
    6     5     5     1.07723831    -0.54304973-20248.14507070    -0.00000043    -0.00000002  0.41D-08  0.24D-08  2899.54
    6     6     6     1.07723831    -0.54304973-20248.14507070    -0.00000043    -0.00000002  0.41D-08  0.24D-08  2899.54


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.3%
 S   0.6%  61.4%
 P   0.4%  23.0%   7.9%

 Initialization:   1.8%
 Other:            2.7%

 Total CPU:     2899.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/00000          -0.0062745   0.0039099   0.9236665  -0.2272961   0.0029078  -0.0000009
 222222202220000/0          -0.0109100   0.2270535  -0.0010352  -0.0000038  -0.0000031   0.9229183
 2222222022200000/          -0.0015441   0.0009622   0.2273105   0.9228428  -0.0118058   0.0000038
 22222220222000/00           0.2270506   0.0109167   0.0014961   0.0118058   0.9228428   0.0000031
 222222202220/0000          -0.0443325   0.9226220  -0.0042066   0.0000009   0.0000008  -0.2273147
 2222222022200/000           0.9226103   0.0443597   0.0060795  -0.0029078  -0.2272961  -0.0000008
 22222200222/20000           0.0005449  -0.0003396  -0.0802220   0.0210440  -0.0002692   0.0000001
 22222200222/02000           0.0005449  -0.0003396  -0.0802220   0.0210439  -0.0002692   0.0000001
 222222002220/2000           0.0038504  -0.0801313   0.0003654  -0.0000001  -0.0000001   0.0210457
 222222002222/0000           0.0038504  -0.0801313   0.0003654  -0.0000001  -0.0000001   0.0210457
 2222220022202/000          -0.0801302  -0.0038527  -0.0005280   0.0002692   0.0210439   0.0000001
 2222220022220/000          -0.0801302  -0.0038527  -0.0005280   0.0002692   0.0210439   0.0000001
 222222002220020/0           0.0008462  -0.0176113   0.0000803   0.0000003   0.0000002  -0.0713841
 222222002222000/0           0.0008462  -0.0176113   0.0000803   0.0000003   0.0000002  -0.0713841
 2222220022200200/           0.0001198  -0.0000746  -0.0176312  -0.0713783   0.0009131  -0.0000003
 22222200222200/00          -0.0176111  -0.0008468  -0.0001160  -0.0009131  -0.0713783  -0.0000002
 2222220022202000/           0.0001198  -0.0000746  -0.0176312  -0.0713783   0.0009131  -0.0000003
 22222200222020/00          -0.0176110  -0.0008468  -0.0001160  -0.0009131  -0.0713782  -0.0000002
 222222/\2220000/0           0.0008649  -0.0179994   0.0000821   0.0000003   0.0000002  -0.0708524
 222222/\222000/00          -0.0179991  -0.0008654  -0.0001186  -0.0009063  -0.0708467  -0.0000002
 222222/\22200000/           0.0001224  -0.0000763  -0.0180197  -0.0708466   0.0009063  -0.0000003
 222222002220200/0           0.0008114  -0.0168854   0.0000770   0.0000003   0.0000002  -0.0704384
 22222200222002/00          -0.0168852  -0.0008119  -0.0001113  -0.0009010  -0.0704326  -0.0000002
 2222220022220000/           0.0001148  -0.0000716  -0.0169045  -0.0704326   0.0009010  -0.0000003

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.045977    0.956824   -0.006507    0.001646   -0.034245    0.000233
 2           0.956836    0.046005    0.004055   -0.034246   -0.001647   -0.000145
 3          -0.004363    0.006305    0.957919    0.000156   -0.000226   -0.034285
 4          -0.000000    0.000460    0.035944   -0.000004    0.012284    0.960257
 5          -0.000000    0.035944   -0.000460   -0.000003    0.960257   -0.012284
 6           0.035947    0.000000    0.000000    0.960336    0.000003    0.000004

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958563    0.000000   -0.000000    0.000005    0.000786   -0.000038
 2           0.000000    0.958563    0.000000    0.000004    0.000038    0.000786
 3          -0.000000    0.000000    0.958563    0.000786   -0.000005   -0.000004
 4           0.000005    0.000004    0.000786    0.961008    0.000000   -0.000000
 5           0.000786    0.000038   -0.000005    0.000000    0.961008    0.000000
 6          -0.000038    0.000786   -0.000004   -0.000000    0.000000    0.961008


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95682353 (fixed)   0.95924438 (relaxed)   0.95856264 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00429358   -0.00540674   -0.44244141
 Singles      0.02309358   -0.07473678   -0.08043513
 Pairs        0.06093884   -0.00014382   -0.03114581
 Total        1.08832600   -0.08028734   -0.55402235
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20247.71650277
 Nuclear energy                         0.00000000
 Kinetic energy                     31217.29238062
 One electron energy               -27727.82343754
 Two electron energy                 7479.55275896
 Virial quotient                       -0.64862354
 Correlation energy                    -0.55417581
 !MRCI STATE 1.2 Energy              -20248.2706785802    

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20248.31962671 (Davidson, fixed reference)
 Cluster corrected energies        -20248.31876973 (Davidson, relaxed reference)
 Cluster corrected energies        -20248.31962671 (Davidson, rotated reference)

 Cluster corrected energies        -20248.31804295 (Pople, fixed reference)
 Cluster corrected energies        -20248.31715323 (Pople, relaxed reference)
 Cluster corrected energies        -20248.31804295 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95683571 (fixed)   0.95924437 (relaxed)   0.95856263 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00429358   -0.00540675   -0.44265591
 Singles      0.02309359   -0.07473676   -0.08043513
 Pairs        0.06093884    0.00008962   -0.03093130
 Total        1.08832601   -0.08005389   -0.55402235
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20247.71650277
 Nuclear energy                         0.00000000
 Kinetic energy                     31217.29236884
 One electron energy               -27727.82341149
 Two electron energy                 7479.55273291
 Virial quotient                       -0.64862354
 Correlation energy                    -0.55417581
 !MRCI STATE 2.2 Energy              -20248.2706785802    

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20248.31962672 (Davidson, fixed reference)
 Cluster corrected energies        -20248.31876974 (Davidson, relaxed reference)
 Cluster corrected energies        -20248.31962672 (Davidson, rotated reference)

 Cluster corrected energies        -20248.31804295 (Pople, fixed reference)
 Cluster corrected energies        -20248.31715325 (Pople, relaxed reference)
 Cluster corrected energies        -20248.31804295 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95791893 (fixed)   0.95924438 (relaxed)   0.95856264 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00429357   -0.00540674   -0.46202715
 Singles      0.02309357   -0.07473676   -0.08043512
 Pairs        0.06093885    0.02117183   -0.01156008
 Total        1.08832599   -0.05897167   -0.55402235
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20247.71650277
 Nuclear energy                         0.00000000
 Kinetic energy                     31217.29238366
 One electron energy               -27727.82344196
 Two electron energy                 7479.55276338
 Virial quotient                       -0.64862354
 Correlation energy                    -0.55417581
 !MRCI STATE 3.2 Energy              -20248.2706785791    

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20248.31962671 (Davidson, fixed reference)
 Cluster corrected energies        -20248.31876973 (Davidson, relaxed reference)
 Cluster corrected energies        -20248.31962671 (Davidson, rotated reference)

 Cluster corrected energies        -20248.31804294 (Pople, fixed reference)
 Cluster corrected energies        -20248.31715323 (Pople, relaxed reference)
 Cluster corrected energies        -20248.31804294 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96025727 (fixed)   0.96175249 (relaxed)   0.96100806 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00515757   -0.00674151   -0.00914027
 Singles      0.01969092   -0.07250372   -0.07684191
 Pairs        0.05794575   -0.46344980   -0.45706755
 Total        1.08279424   -0.54269503   -0.54304973
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20247.60217443
 Nuclear energy                         0.00000000
 Kinetic energy                     31217.12455538
 One electron energy               -27714.37514961
 Two electron energy                 7466.23007890
 Virial quotient                       -0.64862300
 Correlation energy                    -0.54289628
 !MRCI STATE 4.2 Energy              -20248.1450707045    

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20248.19001939 (Davidson, fixed reference)
 Cluster corrected energies        -20248.18910972 (Davidson, relaxed reference)
 Cluster corrected energies        -20248.19001939 (Davidson, rotated reference)

 Cluster corrected energies        -20248.18836345 (Pople, fixed reference)
 Cluster corrected energies        -20248.18742777 (Pople, relaxed reference)
 Cluster corrected energies        -20248.18836345 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.96025727 (fixed)   0.96175249 (relaxed)   0.96100806 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00515757   -0.00674151   -0.44262857
 Singles      0.01969092   -0.07250372   -0.07684191
 Pairs        0.05794575    0.00592884   -0.02357925
 Total        1.08279424   -0.07331639   -0.54304973
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20247.60217443
 Nuclear energy                         0.00000000
 Kinetic energy                     31217.12455508
 One electron energy               -27714.37514965
 Two electron energy                 7466.23007895
 Virial quotient                       -0.64862300
 Correlation energy                    -0.54289628
 !MRCI STATE 5.2 Energy              -20248.1450707042    

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20248.19001939 (Davidson, fixed reference)
 Cluster corrected energies        -20248.18910972 (Davidson, relaxed reference)
 Cluster corrected energies        -20248.19001939 (Davidson, rotated reference)

 Cluster corrected energies        -20248.18836345 (Pople, fixed reference)
 Cluster corrected energies        -20248.18742777 (Pople, relaxed reference)
 Cluster corrected energies        -20248.18836345 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96033584 (fixed)   0.96175249 (relaxed)   0.96100806 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00515757   -0.00674151   -0.43715130
 Singles      0.01969092   -0.07250372   -0.07684192
 Pairs        0.05794575   -0.00000191   -0.02905652
 Total        1.08279424   -0.07924715   -0.54304973
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -20247.60217443
 Nuclear energy                         0.00000000
 Kinetic energy                     31217.12455240
 One electron energy               -27714.37514465
 Two electron energy                 7466.23007394
 Virial quotient                       -0.64862300
 Correlation energy                    -0.54289628
 !MRCI STATE 6.2 Energy              -20248.1450707039    

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -20248.19001939 (Davidson, fixed reference)
 Cluster corrected energies        -20248.18910972 (Davidson, relaxed reference)
 Cluster corrected energies        -20248.19001939 (Davidson, rotated reference)

 Cluster corrected energies        -20248.18836345 (Pople, fixed reference)
 Cluster corrected energies        -20248.18742777 (Pople, relaxed reference)
 Cluster corrected energies        -20248.18836345 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      131.37       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      242.15       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3165.94   3151.36      6.43      0.13      7.82
 REAL TIME  *      3201.32 SEC
 DISK USED  *       373.63 MB (local),        2.25 GB (total)
 SF USED    *         2.57 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -20248.31962671  AU                              
 SETTING HLSDIAG(2)     =    -20248.31962672  AU                              
 SETTING HLSDIAG(3)     =    -20248.31962671  AU                              
 SETTING HLSDIAG(4)     =    -20248.19001939  AU                              
 SETTING HLSDIAG(5)     =    -20248.19001939  AU                              
 SETTING HLSDIAG(6)     =    -20248.19001939  AU                              


         HLSDIAG
    -20248.31963
    -20248.31963
    -20248.31963
    -20248.19002
    -20248.19002
    -20248.19002
                                                  


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

 Time for Seward_LS:      90.06 sec

       17881645. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     4683 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     90.06 sec, REAL time:     90.95 sec


 SORTLS1 read    19141877. and wrote    19141877. SO integrals in    84 records. CPU time:      0.19 sec, REAL time:      0.31 sec
 SORTLS2 read    19141877. and wrote    93027900. SO integrals in    18 records. CPU time:      0.23 sec, REAL time:      0.33 sec

 FILE SIZES: FILE 1:   444.8 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   444.8 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies: -20248.270679 -20248.270679 -20248.270679 -20248.145071 -20248.145071 -20248.145071
 Replaced energies: -20248.319627 -20248.319627 -20248.319627 -20248.190019 -20248.190019 -20248.190019



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-20248.31962672

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    4228.00     -17.90      -0.99
                            0.00     -19.26   -4223.22    1620.98      -9.71       0.01      -0.00      27.83    -203.05      77.88

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   -4228.00      -0.00     -28.72      20.74
                           19.26      -0.00    -202.93      77.84      -7.87       0.00     -27.83      -0.00    4223.16   -1620.86

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      17.90      28.72       0.00      -0.09
                         4223.22     202.93       0.00     -10.08   -1622.83      -0.01     203.05   -4223.16       0.00       7.38

    4   4.2  0.5  0.5       0.00       0.00       0.00   28445.52       0.00       0.00       0.99     -20.74       0.09       0.00
                        -1620.98     -77.84      10.08       0.00     621.95       0.00     -77.88    1620.86      -7.38       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   28445.52       0.00      77.88   -1620.86       7.39      -0.00
                            9.71       7.87    1622.83    -621.95       0.00      -0.00       1.00     -20.74       0.10      -0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   28445.52    1620.97      77.93      10.68      -7.96
                           -0.01      -0.00       0.01      -0.00       0.00       0.00      11.02      -6.86   -1622.83     621.90

    7   1.2  0.5 -0.5      -0.00   -4228.00      17.90       0.99      77.88    1620.97       0.00       0.00       0.00       0.00
                            0.00      27.83    -203.05      77.88      -1.00     -11.02      -0.00      19.26    4223.22   -1620.98

    8   2.2  0.5 -0.5    4228.00      -0.00      28.72     -20.74   -1620.86      77.93       0.00       0.00       0.00       0.00
                          -27.83       0.00    4223.16   -1620.86      20.74       6.86     -19.26       0.00     202.93     -77.84

    9   3.2  0.5 -0.5     -17.90     -28.72       0.00       0.09       7.39      10.68       0.00       0.00       0.00       0.00
                          203.05   -4223.16      -0.00       7.38      -0.10    1622.83   -4223.22    -202.93      -0.00      10.08

   10   4.2  0.5 -0.5      -0.99      20.74      -0.09       0.00      -0.00      -7.96       0.00       0.00       0.00   28445.52
                          -77.88    1620.86      -7.38      -0.00       0.00    -621.90    1620.98      77.84     -10.08      -0.00

   11   5.2  0.5 -0.5     -77.88    1620.86      -7.39       0.00      -0.00    -621.90       0.00       0.00       0.00       0.00
                            1.00     -20.74       0.10      -0.00      -0.00       7.96      -9.71      -7.87   -1622.83     621.95

   12   6.2  0.5 -0.5   -1620.97     -77.93     -10.68       7.96     621.90       0.00       0.00       0.00       0.00       0.00
                           11.02      -6.86   -1622.83     621.90      -7.96      -0.00       0.01       0.00      -0.01       0.00


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5     -77.88   -1620.97
                           -1.00     -11.02

    2   2.2  0.5  0.5    1620.86     -77.93
                           20.74       6.86

    3   3.2  0.5  0.5      -7.39     -10.68
                           -0.10    1622.83

    4   4.2  0.5  0.5       0.00       7.96
                            0.00    -621.90

    5   5.2  0.5  0.5      -0.00     621.90
                            0.00       7.96

    6   6.2  0.5  0.5    -621.90       0.00
                           -7.96       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            9.71      -0.01

    8   2.2  0.5 -0.5       0.00       0.00
                            7.87      -0.00

    9   3.2  0.5 -0.5       0.00       0.00
                         1622.83       0.01

   10   4.2  0.5 -0.5       0.00       0.00
                         -621.95      -0.00

   11   5.2  0.5 -0.5   28445.52       0.00
                           -0.00       0.00

   12   6.2  0.5 -0.5       0.00   28445.52
                           -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1-20248.35949149    -0.03986477    -8749.31      0.00000000        0.00      0.0000
     2-20248.35949149    -0.03986477    -8749.31      0.00000000        0.00      0.0000
     3-20248.30084299     0.01878373     4122.55      0.05864850    12871.86      1.5959
     4-20248.30084299     0.01878373     4122.55      0.05864850    12871.86      1.5959
     5-20248.30084297     0.01878375     4122.56      0.05864852    12871.86      1.5959
     6-20248.30084297     0.01878375     4122.56      0.05864852    12871.86      1.5959
     7-20248.19435186     0.12527486    27494.65      0.16513962    36243.96      4.4937
     8-20248.19435186     0.12527486    27494.65      0.16513962    36243.96      4.4937
     9-20248.18670450     0.13292222    29173.05      0.17278698    37922.36      4.7018
    10-20248.18670450     0.13292222    29173.05      0.17278698    37922.36      4.7018
    11-20248.18670450     0.13292222    29173.05      0.17278699    37922.36      4.7018
    12-20248.18670450     0.13292222    29173.05      0.17278699    37922.36      4.7018


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.574803755   0.015458550   0.060496045   0.402671443   0.034364861   0.704891333  -0.001363019  -0.051895851
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.015100051   0.561473835   0.501698725  -0.118037388   0.000064196   0.024368699   0.050029918  -0.001314015
                        -0.005926793   0.122972732   0.623721482  -0.092722321   0.000451940   0.001560603  -0.013782439   0.000598491

    3    3.2  0.5  0.5  -0.000090132   0.003351449   0.016665081  -0.003275409   0.000398008   0.000421433  -0.000889377   0.000023359
                        -0.573395543  -0.042948611  -0.075435358  -0.400926279   0.043952157   0.703707252  -0.000977063   0.051896908

    4    4.2  0.5  0.5  -0.000295839  -0.000556405   0.001265789  -0.000093492   0.000039293   0.000309550  -0.007257512  -0.003251869
                         0.051768895   0.003823647  -0.004711049  -0.026112055   0.002859517   0.045781242  -0.011561192   0.574840362

    5    5.2  0.5  0.5  -0.051768898  -0.003823432   0.005489925   0.025799498   0.002233148   0.045881344   0.011559980  -0.574840306
                        -0.000295824  -0.000556578   0.001976724  -0.000127344  -0.000016348  -0.000279446  -0.007254694  -0.003251827

    6    6.2  0.5  0.5   0.003852165  -0.050564211   0.032407966  -0.008926666  -0.000103243  -0.000617420   0.554271270   0.013047420
                         0.000298924  -0.011107073   0.040553492  -0.005906676   0.000016358  -0.000106894  -0.152431644   0.004005925

    7    1.2  0.5 -0.5  -0.015121671   0.562277369  -0.256707644   0.038566919   0.699628027  -0.034108264   0.049938636  -0.001311614
                        -0.003209651   0.119346207  -0.310234552   0.046608628   0.085979157  -0.004191656  -0.014117791   0.000370797

    8    2.2  0.5 -0.5  -0.574770706  -0.016001560   0.146687252   0.800379210   0.024377096  -0.000118841   0.001427272   0.051892461
                         0.003714331   0.002662418   0.031829294  -0.011100346   0.001423423   0.000440735   0.000218454  -0.000347537

    9    3.2  0.5 -0.5   0.005638986  -0.119141989   0.310978117  -0.047494306   0.086253015  -0.005756103   0.014095600  -0.000590034
                        -0.042708515   0.560881131  -0.253071571   0.060930362  -0.698401383   0.043575427   0.049946008   0.001182161

   10    4.2  0.5 -0.5  -0.000249623   0.010459357   0.020177398  -0.002822630   0.005891408  -0.000387790   0.159509280  -0.003838683
                         0.003855847  -0.050702149  -0.016574703   0.003978564  -0.045401644   0.002833373   0.552276024   0.013099510

   11    5.2  0.5 -0.5   0.003855672  -0.050702148  -0.016349363   0.005022839   0.045504670  -0.002214479   0.552275981   0.013097576
                         0.000249408  -0.010459372  -0.019958172   0.002969479   0.005873739  -0.000288614  -0.159509224   0.003836302

   12    6.2  0.5 -0.5   0.051768449   0.003830283   0.010241596   0.051904518  -0.000625848   0.000100477  -0.011465571   0.574834953
                        -0.000366402   0.000507413   0.003111896  -0.000884891   0.000030787   0.000028829   0.007404275  -0.004101627


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.022121450  -0.005206412   0.000448142  -0.047887104
                         0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.016691270  -0.050061225   0.004381855  -0.002226740
                        -0.000051325   0.000768033  -0.000568202  -0.000198720

    3    3.2  0.5  0.5  -0.000397460   0.000152074  -0.000004543   0.000167030
                         0.028463693   0.010129765   0.000588093  -0.043548734

    4    4.2  0.5  0.5   0.006901622   0.001867863  -0.000297568   0.002003586
                        -0.437493030  -0.155755179  -0.008996894   0.669373422

    5    5.2  0.5  0.5   0.327283477   0.116854031  -0.010111089   0.736859062
                         0.002754861   0.000400730   0.000475029  -0.004010469

    6    6.2  0.5  0.5  -0.272605953   0.764756591  -0.066944022  -0.001125994
                         0.002778640  -0.011083117   0.008764685   0.000005282

    7    1.2  0.5 -0.5  -0.005205852   0.022119074  -0.047174693  -0.000441475
                         0.000076314  -0.000324249   0.008229396   0.000077013

    8    2.2  0.5 -0.5  -0.050067105  -0.016690229  -0.002159464  -0.004414313
                        -0.000034168   0.000193336   0.000578429   0.000193273

    9    3.2  0.5 -0.5   0.000003578   0.000814630   0.007648393   0.000105539
                        -0.010130906   0.028454809   0.042872162   0.000578563

   10    4.2  0.5 -0.5   0.004150677  -0.013313530  -0.113058019  -0.001252975
                         0.155711069  -0.437344862  -0.659759564  -0.008914183

   11    5.2  0.5 -0.5   0.116835602  -0.327207944   0.726586107   0.010042303
                        -0.002113497   0.007551781  -0.122678386  -0.001269627

   12    6.2  0.5 -0.5   0.764836886   0.272617396  -0.001110146   0.067454322
                        -0.000127648  -0.001217436   0.000188296  -0.002870025


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  33.040%   0.024%   0.366%  16.214%   0.118%  49.687%   0.000%   0.269%   0.049%   0.003%
    2    2.2  0.5  0.5   0.026%  33.038%  64.073%   2.253%   0.000%   0.060%   0.269%   0.000%   0.028%   0.251%
    3    3.2  0.5  0.5  32.878%   0.186%   0.597%  16.075%   0.193%  49.520%   0.000%   0.269%   0.081%   0.010%
    4    4.2  0.5  0.5   0.268%   0.001%   0.002%   0.068%   0.001%   0.210%   0.019%  33.045%  19.145%   2.426%
    5    5.2  0.5  0.5   0.268%   0.001%   0.003%   0.067%   0.000%   0.211%   0.019%  33.045%  10.712%   1.366%
    6    6.2  0.5  0.5   0.001%   0.268%   0.269%   0.011%   0.000%   0.000%  33.045%   0.019%   7.432%  58.498%
    7    1.2  0.5 -0.5   0.024%  33.040%  16.214%   0.366%  49.687%   0.118%   0.269%   0.000%   0.003%   0.049%
    8    2.2  0.5 -0.5  33.038%   0.026%   2.253%  64.073%   0.060%   0.000%   0.000%   0.269%   0.251%   0.028%
    9    3.2  0.5 -0.5   0.186%  32.878%  16.075%   0.597%  49.520%   0.193%   0.269%   0.000%   0.010%   0.081%
   10    4.2  0.5 -0.5   0.001%   0.268%   0.068%   0.002%   0.210%   0.001%  33.045%   0.019%   2.426%  19.145%
   11    5.2  0.5 -0.5   0.001%   0.268%   0.067%   0.003%   0.211%   0.000%  33.045%   0.019%   1.366%  10.712%
   12    6.2  0.5 -0.5   0.268%   0.001%   0.011%   0.269%   0.000%   0.000%   0.019%  33.045%  58.498%   7.432%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.229%
    2    2.2  0.5  0.5   0.002%   0.000%
    3    3.2  0.5  0.5   0.000%   0.190%
    4    4.2  0.5  0.5   0.008%  44.806%
    5    5.2  0.5  0.5   0.010%  54.298%
    6    6.2  0.5  0.5   0.456%   0.000%
    7    1.2  0.5 -0.5   0.229%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.002%
    9    3.2  0.5 -0.5   0.190%   0.000%
   10    4.2  0.5 -0.5  44.806%   0.008%
   11    5.2  0.5 -0.5  54.298%   0.010%
   12    6.2  0.5 -0.5   0.000%   0.456%


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
              1      24      424.15       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      242.15       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      7623.34   4457.39   3151.36      6.43      0.13      7.82
 REAL TIME  *      7701.98 SEC
 DISK USED  *       373.72 MB (local),        3.23 GB (total)
 SF USED    *         2.57 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy= -20248.186704499956

              CI           MULTI         RHF-SCF
 -20248.14507070 -20247.60202097 -20247.52405124
 **********************************************************************************************************************************
 Molpro calculation terminated
