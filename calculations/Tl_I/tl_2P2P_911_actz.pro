
 Working directory              : /wrk/irikura/molpro.3b2J4mdvpz/
 Global scratch directory       : /wrk/irikura/molpro.3b2J4mdvpz/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.3b2J4mdvpz/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Tl SO-CI
 memory,10,G
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Tl};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=80,sym=1,spin=0}
 
 {multi
     occ,22,25
     closed,20,16
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
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Tl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 25-Mar-24          TIME: 13:15:22  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:     10000 MW
 Total memory per node:  60000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 10000.0 MW


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

     Node minimum: 3.146 MB, node maximum: 8.389 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2623338.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2623338      RECORD LENGTH: 524288

 Memory used in sort:       3.18 MW

 SORT1 READ    32049457. AND WROTE      512975. INTEGRALS IN      2 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.12 SEC
 SORT2 READ     3149735. AND WROTE    15753000. INTEGRALS IN    150 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.08 SEC

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
 CPU TIMES  *         8.01      7.79
 REAL TIME  *        12.69 SEC
 DISK USED  *        30.31 MB (local),      247.22 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   21  22

 Initial occupancy:  21  19

 NELEC=   80   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -20247.51870259  -20247.51870259     0.00D+00     0.20D+00     0     0       0.01      0.03    start
   2   -20247.52345646      -0.00475387     0.12D-02     0.77D-02     1     0       0.01      0.04    diag
   3   -20247.52396582      -0.00050936     0.92D-03     0.23D-02     2     0       0.01      0.05    diag
   4   -20247.52404238      -0.00007656     0.21D-03     0.16D-02     3     0       0.01      0.06    diag
   5   -20247.52405096      -0.00000858     0.48D-04     0.50D-03     4     0       0.01      0.07    diag
   6   -20247.52405124      -0.00000028     0.88D-05     0.70D-04     5     0       0.02      0.09    diag
   7   -20247.52405124      -0.00000000     0.79D-06     0.50D-05     6     0       0.01      0.10    diag
   8   -20247.52405124      -0.00000000     0.32D-07     0.64D-06     7     0       0.01      0.11    fixocc
   9   -20247.52405124       0.00000000     0.29D-08     0.51D-07     0     0       0.01      0.12    diag

 Final occupancy:  21  19

 !RHF STATE 1.1 Energy               -20247.5240512401    
  RHF One-electron energy            -27707.4588530881    
  RHF Two-electron energy            7459.934801848034
  RHF Kinetic energy                  31217.0053948864    
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
    5.1     2.00000   -91.16864     1  1  d2-  0.89625    1  1  d2+ -0.43704
    6.1     2.00000   -91.16864     1  1  d2-  0.44025    1  1  d2+  0.89390
    7.1     2.00000   -91.16864     1  1  d1+ -0.27848    1  1  d1-  0.95653
    8.1     2.00000   -91.16864     1  1  d1+  0.95863    1  1  d1-  0.27510
    9.1     2.00000   -32.56173     1  4  s    1.15533
   10.1     2.00000   -15.63278     1  2  d0   0.99992
   11.1     2.00000   -15.63278     1  2  d2+  0.99753
   12.1     2.00000   -15.63278     1  2  d2- -0.30903    1  2  d1+  0.94142
   13.1     2.00000   -15.63278     1  2  d2-  0.88373    1  2  d1+  0.33500    1  2  d1-  0.32542
   14.1     2.00000   -15.63278     1  2  d2- -0.35044    1  2  d1-  0.93545
   15.1     2.00000    -5.88552     1  5  s    0.89571
   16.1     2.00000    -1.10774     1  3  d0   0.99877
   17.1     2.00000    -1.10774     1  3  d1-  0.98272
   18.1     2.00000    -1.10774     1  3  d1+  0.98265
   19.1     2.00000    -1.10774     1  3  d2-  0.97997
   20.1     2.00000    -1.10774     1  3  d2+  0.98004
   21.1     2.00000    -0.68806     1  6  s    1.15353
    1.2     2.00000  -491.40288     1  1  px   0.98921
    2.2     2.00000  -491.40288     1  1  py   0.98858
    3.2     2.00000  -491.40288     1  1  pz   0.99935
    4.2     2.00000  -115.86308     1  2  px   1.00007
    5.2     2.00000  -115.86308     1  2  py   1.00007
    6.2     2.00000  -115.86308     1  2  pz   1.00011
    7.2     2.00000   -24.94616     1  3  py   0.99894
    8.2     2.00000   -24.94616     1  3  px   0.99894
    9.2     2.00000   -24.94616     1  3  pz   0.99894
   10.2     2.00000    -5.36423     1  1  f2-  0.99277
   11.2     2.00000    -5.36423     1  1  f2+  0.99277
   12.2     2.00000    -5.36423     1  1  f0   0.99969
   13.2     2.00000    -5.36423     1  1  f3+ -0.39767    1  1  f3-  0.89952
   14.2     2.00000    -5.36423     1  1  f3+  0.89928    1  1  f3-  0.39651
   15.2     2.00000    -5.36423     1  1  f1-  0.97097
   16.2     2.00000    -5.36423     1  1  f1+  0.97083
   17.2     2.00000    -3.70938     1  4  pz   1.00778
   18.2     2.00000    -3.70938     1  4  py   1.00778
   19.2     2.00000    -3.70938     1  4  px   1.00778


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
 CPU TIMES  *         8.14      0.13      7.79
 REAL TIME  *        12.82 SEC
 DISK USED  *        31.05 MB (local),      251.64 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  36 (   20   16)
 Number of active  orbitals:       11 (    2    9)
 Number of external orbitals:      78 (   38   40)

 State symmetry 1

 Number of active electrons:   9    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:           38682   (76356 determinants, 152460 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.135D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.378D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.371D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.282D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.283D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.397D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.102D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.339D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.438D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.302D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.759D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.155D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.164D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.174D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.165D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 5 6 4 1 2   5 4 3 6 1 2 6 4 3 5   1 1 4 6 3 5 2 1 6 4   2 5 3 1 4 6 2 5 3 2
                                        5 3 4 61415 7 81210  1311 9 1 2 5 3 4 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.129D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.156D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.391D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.876D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.863D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.150D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.859D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.859D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.302D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.421D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.420D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.274D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.277D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.150D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.154D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.615D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.652D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.652D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.114D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.114D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 2 1 3 8  10 6 9 7 5 4 3 2 1 1   2 3 3 1 2 1 2 3 9 7  10 8 6 5 4 1 2 3 5 4
                                        6 810 7 9 7 9 6 810   5 4 1 2 3 610 8 9 7   4 5 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  2020  ( 184 closed/active, 1400 closed/virtual, 0 active/active, 436 active/virtual )
 Total number of variables:    460156
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   19    0 -20247.65478314  -20247.66050966   -0.00572652    0.04752474 0.00011883 0.00028726  0.89E+00      3.85
   2    9   19    0 -20247.66044523  -20247.66044811   -0.00000288    0.00206850 0.00000527 0.00000459  0.26E-01      8.43
   3    8   12    0 -20247.66044811  -20247.66044811    0.00000000    0.00000129 0.00000000 0.00000002  0.56E-05     11.99

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.67E-09)
                       Final energy: -20247.66044811
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -20247.7175176095    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31217.19259207
 One electron energy                        -27730.11341615
 Two electron energy                          7482.39589854
 Virial ratio                                    1.64860789
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -20247.7175176095    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31217.19259207
 One electron energy                        -27730.11341615
 Two electron energy                          7482.39589854
 Virial ratio                                    1.64860789
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -20247.7175176094    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31217.19259207
 One electron energy                        -27730.11341614
 Two electron energy                          7482.39589853
 Virial ratio                                    1.64860789
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -20247.6033786156    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31216.90798819
 One electron energy                        -27715.83586695
 Two electron energy                          7468.23248833
 Virial ratio                                    1.64861015
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -20247.6033786155    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31216.90798819
 One electron energy                        -27715.83586695
 Two electron energy                          7468.23248834
 Virial ratio                                    1.64861015
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -20247.6033786155    
 Nuclear energy                                  0.00000000
 Kinetic energy                              31216.90798819
 One electron energy                        -27715.83586695
 Two electron energy                          7468.23248834
 Virial ratio                                    1.64861015
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.000047602336
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999952546167
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999851498
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999309708
 !MCSCF expec                      <5.2|LXLX|5.2>     0.968925183194
 !MCSCF expec                      <6.2|LXLX|6.2>     0.031075507098
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999952541805
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000048140995
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999317200
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999962680
 !MCSCF expec                      <5.2|LYLY|5.2>     0.031074818716
 !MCSCF expec                      <6.2|LYLY|6.2>     0.968925218604
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999999855859
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999312839
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.000000831302
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.000000727612
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999999998090
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999274298
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 2   4 6 5 3 1 2 6 4 3 5   1 1 1 4 6 3 5 2 6 4   5 3 2 1 4 6 5 3 2 2
                                        5 3 4 61514 7 81210  1311 9 1 2 5 3 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 2 1 3 8  10 6 9 7 5 4 3 2 1 1   2 3 3 1 2 1 2 3 9 7   610 8 5 4 1 2 3 5 4
                                        6 810 7 9 7 9 6 810   5 4 1 2 3 610 8 9 7   4 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3162.07643     1  1  s    0.99877
    2.1     2.00000  -568.72053     1  2  s    1.01269
    3.1     2.00000  -138.42178     1  3  s    0.93830
    4.1     2.00000   -90.97555     1  1  d0   1.00000
    5.1     2.00000   -90.97555     1  1  d1-  1.00000
    6.1     2.00000   -90.97555     1  1  d1+  1.00000
    7.1     2.00000   -90.97555     1  1  d2-  1.00000
    8.1     2.00000   -90.97555     1  1  d2+  1.00000
    9.1     2.00000   -32.36856     1  4  s    1.15511
   10.1     2.00000   -15.43980     1  2  d0   0.99991
   11.1     2.00000   -15.43980     1  2  d1+  0.99991
   12.1     2.00000   -15.43980     1  2  d1-  0.99991
   13.1     2.00000   -15.43980     1  2  d2+  0.99991
   14.1     2.00000   -15.43980     1  2  d2-  0.99991
   15.1     2.00000    -5.69220     1  5  s    0.89756
   16.1     2.00000    -0.91474     1  3  d0   0.99938
   17.1     2.00000    -0.91474     1  3  d1-  0.99938
   18.1     2.00000    -0.91474     1  3  d1+  0.99938
   19.1     2.00000    -0.91474     1  3  d2-  0.99938
   20.1     2.00000    -0.91474     1  3  d2+  0.99938
   21.1     1.95270    -0.50325     1  6  s    1.07948
   22.1     0.00287     0.51607     1  4  s    0.27246    1  5  s    1.49138    1  6  s    1.57128    1  7  s    0.57538
                                    1  9  s   -2.96356    1 10  s    0.28573
    1.2     2.00000  -491.20953     1  1  px   1.00000
    2.2     2.00000  -491.20953     1  1  py   1.00000
    3.2     2.00000  -491.20953     1  1  pz   1.00000
    4.2     2.00000  -115.66993     1  2  px   1.00010
    5.2     2.00000  -115.66993     1  2  py   1.00010
    6.2     2.00000  -115.66993     1  2  pz   1.00010
    7.2     2.00000   -24.73794     1  3  py   0.99860
    8.2     2.00000   -24.73794     1  3  px   0.99860
    9.2     2.00000   -24.73794     1  3  pz   0.99860
   10.2     2.00000    -5.17130     1  1  f2-  0.99992
   11.2     2.00000    -5.17130     1  1  f2+  0.99992
   12.2     2.00000    -5.17130     1  1  f0   0.99992
   13.2     2.00000    -5.17130     1  1  f3-  0.99992
   14.2     2.00000    -5.17130     1  1  f3+  0.99992
   15.2     2.00000    -5.17130     1  1  f1-  0.99992
   16.2     2.00000    -5.17130     1  1  f1+  0.99992
   17.2     1.99989    -3.53216     1  4  pz   1.00316
   18.2     1.99989    -3.53216     1  4  py   1.00316
   19.2     1.99989    -3.53216     1  4  px   1.00316
   20.2     0.18160    -0.01493     1  5  px   1.23736
   21.2     0.18160    -0.01493     1  5  py   1.23736
   22.2     0.18160    -0.01493     1  5  pz   1.23736
   23.2     0.16665     0.01513     1  5  pz  -0.31765    1 10  pz   1.07209
   24.2     0.16665     0.01513     1  5  px  -0.31765    1 10  px   1.07209
   25.2     0.16665     0.01513     1  5  py  -0.31765    1 10  py   1.07209
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 22200a000      0.00036054      0.00078721      0.94964319     -0.27412906      0.00001198      0.00023353
 20 222a00000      0.94962099      0.00654179     -0.00036595     -0.00022776      0.04832363     -0.26983619
 20 2220a0000     -0.00654209      0.94962073     -0.00078471     -0.00005296     -0.26983629     -0.04832360
 20 222000a00      0.00010399      0.00022705      0.27390444      0.94812676     -0.00004143     -0.00080769
 20 22200000a     -0.00188693      0.27389796     -0.00022633      0.00018316      0.93327940      0.16713623
 20 2220000a0      0.27389803      0.00188684     -0.00010555      0.00078774     -0.16713632      0.93327907
 00 22220a000     -0.00003682     -0.00008039     -0.09697770      0.02938224     -0.00000128     -0.00002503
 00 22202a000     -0.00003682     -0.00008039     -0.09697770      0.02938224     -0.00000128     -0.00002503
 00 222a20000     -0.09697543     -0.00066805      0.00003737      0.00002441     -0.00517952      0.02892211
 00 222a02000     -0.09697543     -0.00066805      0.00003737      0.00002441     -0.00517952      0.02892211
 00 2222a0000      0.00066808     -0.09697541      0.00008013      0.00000568      0.02892212      0.00517951
 00 2220a2000      0.00066808     -0.09697541      0.00008013      0.00000568      0.02892212      0.00517951
 00 222200a00     -0.00000948     -0.00002069     -0.02496417     -0.08605843      0.00000376      0.00007331
 00 222020a00     -0.00000948     -0.00002069     -0.02496417     -0.08605843      0.00000376      0.00007331
 00 222002a00     -0.00000920     -0.00002009     -0.02423515     -0.08520507      0.00000372      0.00007258
 00 22220000a      0.00017198     -0.02496358      0.00002063     -0.00001663     -0.08471079     -0.01517042
 00 22200200a      0.00017198     -0.02496358      0.00002063     -0.00001663     -0.08471079     -0.01517042
 00 2220200a0     -0.02496359     -0.00017197      0.00000962     -0.00007150      0.01517043     -0.08471076
 00 2220020a0     -0.02496359     -0.00017197      0.00000962     -0.00007150      0.01517043     -0.08471076
 00 22202000a      0.00016696     -0.02423458      0.00002003     -0.00001646     -0.08387078     -0.01501999
 00 2222000a0     -0.02423459     -0.00016695      0.00000934     -0.00007079      0.01502000     -0.08387075
 
 Energy:      -20247.71751761 -20247.71751761 -20247.71751761 -20247.60337862 -20247.60337862 -20247.60337862
 


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
 CPU TIMES  *        19.44     11.30      0.13      7.79
 REAL TIME  *        26.95 SEC
 DISK USED  *       132.41 MB (local),      859.85 MB (total)
 SF USED    *       249.57 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -20247.71752   2.0
    -20247.71752   2.0
    -20247.71752   2.0
    -20247.60338   2.0
    -20247.60338   2.0
    -20247.60338   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 81
 Maximum number of shells:             8
 Maximum number of spin couplings:  1430

 Reference space:    10933 conf    38682 CSFs
 N elec internal:   702976 conf  6018903 CSFs
 N-1 el internal:   638913 conf  9221289 CSFs
 N-2 el internal:   324765 conf  6893073 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  9
 Maximum number of open shell orbitals in internal spaces: 15


 Number of core orbitals:          30 (  14  16 )
 Number of closed-shell orbitals:   6 (   6   0 )
 Number of active  orbitals:       11 (   2   9 )
 Number of external orbitals:      78 (  38  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.13 sec, npass=  1  Memory used:   1.50 MW


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -20247.71751761
     2    -20247.71751761
     3    -20247.71751761
     4    -20247.60337862
     5    -20247.60337862
     6    -20247.60337862

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4147D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1654D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2173D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2255D-06

 Number of blocks in overlap matrix:   268   Smallest eigenvalue:  0.17D-06
 Number of N-2 electron functions:    1656
 Number of N-1 electron functions: 9221289

 Number of internal configurations:              3032415
 Number of singly external configurations:     359687940
 Number of doubly external configurations:       2521905
 Total number of contracted configurations:    365242260
 Total number of uncontracted configurations:10775914758

 Diagonal Coupling coefficients finished.               Storage:2001096684 words, CPU-Time:  21718.22 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  51575287 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-20247.71751761    -0.00000000    -0.67766062  0.54D-01  0.89D-01 22502.30
    1     2     2     1.00000000     0.00000000-20247.71751761    -0.00000000    -0.67764808  0.54D-01  0.89D-01 22502.30
    1     3     3     1.00000000     0.00000000-20247.71751761    -0.00000000    -0.67762512  0.54D-01  0.89D-01 22502.30
    1     4     4     1.00000000     0.00000000-20247.60337862    -0.00000000    -0.66031069  0.43D-01  0.86D-01 22502.30
    1     5     5     1.00000000     0.00000000-20247.60337862    -0.00000000    -0.66031701  0.43D-01  0.86D-01 22502.30
    1     6     6     1.00000000     0.00000000-20247.60337862    -0.00000000    -0.66031612  0.43D-01  0.86D-01 22502.30
