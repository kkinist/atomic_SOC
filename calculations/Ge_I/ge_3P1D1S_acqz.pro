
 Working directory              : /wrk/irikura/molpro.2e1rziCDNg/
 Global scratch directory       : /wrk/irikura/molpro.2e1rziCDNg/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.2e1rziCDNg/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ge SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCVQZ-DK
 
 set,dkho=101
 
                                                                                 ! spherical anion (4S) orbitals
 {rhf;wf,nelec=33,sym=2,spin=3}
 
 NTRIP=3
 NSING=6
 
 {multi
     wf,nelec=32,sym=1,spin=2;state,NTRIP;
     wf,nelec=32,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! free KL shells
 core,2,3
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5201.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 16:59:37  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry GE     S aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry GE     P aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry GE     D aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry GE     F aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry GE     G aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry GE     H aug-cc-pwCVQZ-DK     selected for orbital group  1


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

   1  GE     32.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   32
 NUMBER OF PRIMITIVE AOS:         322
 NUMBER OF SYMMETRY AOS:          254
 NUMBER OF CONTRACTIONS:          170   (   87Ag  +   83Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     98.566 MB (compressed) written to integral file ( 13.1%)

     Node minimum: 4.981 MB, node maximum: 12.583 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4449180.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4449180      RECORD LENGTH: 524288

 Memory used in sort:       5.01 MW

 SORT1 READ    94260844. AND WROTE      784606. INTEGRALS IN      3 RECORDS. CPU TIME:     0.39 SEC, REAL TIME:     0.41 SEC
 SORT2 READ     9786520. AND WROTE    53439771. INTEGRALS IN    540 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.11 SEC

 Node minimum:     4446135.  Node maximum:     4460496. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       192021

 Eigenvalues of metric

         1 0.389E-05 0.110E-03 0.446E-02 0.931E-02 0.980E-02 0.980E-02 0.980E-02 0.980E-02
         2 0.468E-06 0.468E-06 0.468E-06 0.607E-03 0.607E-03 0.607E-03 0.272E-01 0.272E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.50      2.31
 REAL TIME  *         3.17 SEC
 DISK USED  *        30.21 MB (local),      567.14 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   9   6

 NELEC=   33   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2097.10157372   -2097.10157372     0.00D+00     0.96D-01     0     0       0.03      0.05    start
   2    -2097.10440248      -0.00282876     0.89D-03     0.50D-02     1     0       0.02      0.07    diag2
   3    -2097.10469754      -0.00029507     0.53D-03     0.14D-02     2     0       0.03      0.10    diag2
   4    -2097.10480221      -0.00010467     0.27D-03     0.32D-03     3     0       0.03      0.13    diag2
   5    -2097.10482018      -0.00001797     0.71D-04     0.17D-03     4     0       0.03      0.16    diag2
   6    -2097.10482146      -0.00000128     0.11D-04     0.73D-04     5     0       0.03      0.19    diag2
   7    -2097.10482161      -0.00000015     0.36D-05     0.42D-04     6     0       0.02      0.21    diag2
   8    -2097.10482163      -0.00000001     0.81D-06     0.64D-05     7     0       0.03      0.24    fixocc
   9    -2097.10482163      -0.00000000     0.27D-06     0.37D-05     8     0       0.03      0.27    diag2
  10    -2097.10482163      -0.00000000     0.53D-07     0.13D-05     9     0       0.03      0.30    diag2/orth
  11    -2097.10482163      -0.00000000     0.74D-08     0.80D-07     0     0       0.02      0.32    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2097.104821631337
  RHF One-electron energy           -2930.701980758636
  RHF Two-electron energy             833.597159127299
  RHF Kinetic energy                 2223.602007359226
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.943111588625

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.58032     1  1  s    0.97268    1  3  s   -0.35325    1  4  s   -0.38231
    2.1     2.00000   -53.17954     1  2  s    1.06275
    3.1     2.00000    -7.15126     1  3  s    0.94794
    4.1     2.00000    -1.34712     1  1  d1+  0.99249
    5.1     2.00000    -1.34712     1  1  d2+  0.99082
    6.1     2.00000    -1.34712     1  1  d0   0.99993
    7.1     2.00000    -1.34712     1  1  d2-  0.72702    1  1  d1-  0.68521
    8.1     2.00000    -1.34712     1  1  d2- -0.68408    1  1  d1-  0.72824
    9.1     2.00000    -0.33249     1  4  s    0.93540
    1.2     2.00000   -46.27245     1  1  px   0.99792
    2.2     2.00000   -46.27245     1  1  pz   0.99792
    3.2     2.00000   -46.27245     1  1  py   0.99792
    4.2     2.00000    -4.95682     1  2  px   0.99605
    5.2     2.00000    -4.95682     1  2  py   0.99605
    6.2     2.00000    -4.95682     1  2  pz   0.99605
    7.2     1.00000    -0.05788     1  3  px   0.83298
    8.2     1.00000    -0.05788     1  3  py   0.83298
    9.2     1.00000    -0.05788     1  3  pz   0.83298


 HOMO      9.2    -0.057880 =      -1.5750eV
 LUMO     10.2     0.161395 =       4.3918eV
 LUMO-HOMO         0.219275 =       5.9668eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.85       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.25      0.74      2.31
 REAL TIME  *         3.95 SEC
 DISK USED  *        32.81 MB (local),      598.23 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     152 (   78   74)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.154D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.600D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.501D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.500D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 5 2 3 6 1 1   2 6 4 5 3 1 4 6 2 3   5 2 4 6 5 3 712 814  15101311 9 1 2 4 6 5
                                        31310 7151412 811 9   1 2 3 5 4 612 81310  1415 711 9 1 2 4 6 5   311 9 712 814151310
                                        1 5 3 6 4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.874D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.129D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.167D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.943D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.943D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.167D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.167D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 2 3 1 2 3 1   2 3 1 2 310 8 5 4 6   7 9 3 1 2 810 4 5 6   7 9 6 5 4 810 7 9 3
                                        2 1 6 5 4 7 9 81014  16201815171211132119   3 2 1 6 5 410 8 7 9   6 5 410 8 7 9 3 2 1
                                        3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1394  ( 26 closed/active, 1068 closed/virtual, 0 active/active, 300 active/virtual )
 Total number of variables:    1520
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   25   36    0  -2097.02774270   -2097.05076507   -0.02302236    0.12869658 0.00181419 0.00000000  0.41E+00      1.16
   2    8   14    0  -2097.03920646   -2097.05010724   -0.01090077    0.52933839 0.00004997 0.00000000  0.50E-01      1.97
   3    6   10    0  -2097.05020342   -2097.05020606   -0.00000263    0.00513048 0.00000030 0.00000000  0.17E-02      2.77
   4    5   10    0  -2097.05020606   -2097.05020606   -0.00000000    0.00000148 0.00000001 0.00000000  0.12E-05      3.41

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.63E-08)
                       Final energy:  -2097.05020606
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2097.079706256679
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.55929757
 One electron energy                         -2922.56023130
 Two electron energy                           825.48052504
 Virial ratio                                    1.94311841
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2097.079706256647
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.55929757
 One electron energy                         -2922.56023130
 Two electron energy                           825.48052504
 Virial ratio                                    1.94311841
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2097.079706256576
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.55929758
 One electron energy                         -2922.56023134
 Two electron energy                           825.48052508
 Virial ratio                                    1.94311841
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2097.041098301147
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.55929757
 One electron energy                         -2922.56023130
 Two electron energy                           825.51913299
 Virial ratio                                    1.94310105
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2097.041098301108
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.55929757
 One electron energy                         -2922.56023130
 Two electron energy                           825.51913300
 Virial ratio                                    1.94310105
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2097.041098301084
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.55929757
 One electron energy                         -2922.56023128
 Two electron energy                           825.51913298
 Virial ratio                                    1.94310105
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2097.041098300941
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.55929758
 One electron energy                         -2922.56023134
 Two electron energy                           825.51913304
 Virial ratio                                    1.94310105
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2097.041098300830
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.55929758
 One electron energy                         -2922.56023134
 Two electron energy                           825.51913304
 Virial ratio                                    1.94310105
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2097.007244237805
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.50146606
 One electron energy                         -2922.31847908
 Two electron energy                           825.31123484
 Virial ratio                                    1.94311035
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999737
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999910
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000000422
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000000169
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.999999999161
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.030676654593
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999974993
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.969324040508
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999924270
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000075574
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999841
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000000161066
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999833999
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     2.682462901338
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000007046
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.317533474340
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000075993
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999924516
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999737
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.999999838764
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000166840
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.286860444069
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000017961
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.713142485152
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 6 5 3 1 1   4 2 6 3 5 1 4 2 6 5   3 2 4 6 5 3 9 712 8  1114151310 1 4 2 6 5
                                        3 9 712 81115141310   1 2 4 6 3 5 9 712 8  1114151310 1 4 2 6 5   3 9 712 81114151310
                                        1 4 5 3 6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 2 1 3 3   1 2 3 1 2 4 6 510 8   7 9 3 1 2 4 6 810 5   7 9 4 6 5 810 7 9 3
                                        1 2 4 6 5 810 7 911  19132112141617152018   3 1 2 4 6 510 8 7 9   4 6 510 8 9 7 3 1 2
                                        3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.83831     1  1  s    0.97268    1  3  s   -0.35324    1  4  s   -0.38230
    2.1     2.00000   -53.43740     1  2  s    1.06273
    3.1     2.00000    -7.40941     1  3  s    0.94795
    4.1     2.00000    -1.60487     1  1  d1+  1.00002
    5.1     2.00000    -1.60487     1  1  d0   1.00002
    6.1     2.00000    -1.60487     1  1  d1-  1.00002
    7.1     2.00000    -1.60487     1  1  d2+  1.00002
    8.1     2.00000    -1.60487     1  1  d2-  1.00002
    9.1     1.96771    -0.56500     1  4  s    0.99531
    1.2     2.00000   -46.53002     1  1  px   0.99792
    2.2     2.00000   -46.53002     1  1  pz   0.99792
    3.2     2.00000   -46.53002     1  1  py   0.99792
    4.2     2.00000    -5.21431     1  2  px   0.99811
    5.2     2.00000    -5.21431     1  2  pz   0.99811
    6.2     2.00000    -5.21431     1  2  py   0.99811
    7.2     0.67743    -0.06822     1  3  py   1.16535
    8.2     0.67743    -0.06822     1  3  px   1.16535
    9.2     0.67743    -0.06822     1  3  pz   1.16535
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a          0.00001612     -0.00000942      0.99371757
 2 0aa          0.00027346      0.99371753      0.00000941
 2 aa0          0.99371753     -0.00027346     -0.00001613
 0 a2a         -0.00000182      0.00000106     -0.11191691
 0 2aa         -0.00003080     -0.11191691     -0.00000106
 0 aa2         -0.11191691      0.00003080      0.00000182
 
 Energy:    -2097.07970626  -2097.07970626  -2097.07970626
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020         -0.00000608      0.00003620      0.80824976     -0.00005988     -0.07105443      0.56417626
 2 002          0.00000512     -0.00000921     -0.34258993      0.00001583      0.73549204      0.56417627
 2 b0a         -0.00000572      0.00001051     -0.00005290     -0.70266443     -0.00000951     -0.00000000
 2 a0b          0.00000572     -0.00001051      0.00005290      0.70266443      0.00000951      0.00000000
 2 ba0         -0.70266441     -0.00016272     -0.00000506      0.00000572      0.00000254     -0.00000000
 2 ab0          0.70266441      0.00016272      0.00000506     -0.00000572     -0.00000254      0.00000000
 2 0ba          0.00016272     -0.70266441      0.00003201     -0.00001051      0.00000611      0.00000000
 2 0ab         -0.00016272      0.70266441     -0.00003201      0.00001051     -0.00000611     -0.00000000
 2 200          0.00000096     -0.00002699     -0.46565982      0.00004405     -0.66443761      0.56417627
 0 202         -0.00000068      0.00000408      0.09102870     -0.00000674     -0.00800247     -0.12263144
 0 022          0.00000011     -0.00000304     -0.05244469      0.00000496     -0.07483193     -0.12263144
 0 220          0.00000058     -0.00000104     -0.03858401      0.00000178      0.08283440     -0.12263144
 0 a2b         -0.00000064      0.00000118     -0.00000596     -0.07913721     -0.00000107     -0.00000000
 0 b2a          0.00000064     -0.00000118      0.00000596      0.07913721      0.00000107      0.00000000
 0 ab2         -0.07913720     -0.00001833     -0.00000057      0.00000064      0.00000029     -0.00000000
 0 ba2          0.07913720      0.00001833      0.00000057     -0.00000064     -0.00000029      0.00000000
 0 2ba         -0.00001833      0.07913720     -0.00000360      0.00000118     -0.00000069     -0.00000000
 0 2ab          0.00001833     -0.07913720      0.00000360     -0.00000118      0.00000069      0.00000000
 
 Energy:    -2097.04109830  -2097.04109830  -2097.04109830  -2097.04109830  -2097.04109830  -2097.00724424
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       58.74       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.45       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.42      3.17      0.74      2.31
 REAL TIME  *         7.86 SEC
 DISK USED  *        60.29 MB (local),      928.09 MB (total)
 SF USED    *        70.23 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2097.079706   2.0
    -2097.079706   2.0
    -2097.079706   2.0
    -2097.041098   6.0
    -2097.041098   6.0
    -2097.041098   6.0
    -2097.041098   6.0
    -2097.041098   6.0
    -2097.007244   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 32
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     152 (  78  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.19 sec, npass=  1  Memory used:   1.70 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2097.07970626
     2     -2097.07970626
     3     -2097.07970626

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        223368
 Number of doubly external configurations:       2756736
 Total number of contracted configurations:      2980641
 Total number of uncontracted configurations:   15754681

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    906340 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.07970626     0.00000000    -1.04782946  0.35D-01  0.74D-01     0.48
    1     2     2     1.00000000     0.00000000 -2097.07970626    -0.00000000    -1.04744859  0.34D-01  0.74D-01     0.48
    1     3     3     1.00000000     0.00000000 -2097.07970626    -0.00000000    -1.04760994  0.35D-01  0.74D-01     0.48
    2     1     1     1.07130442    -0.84932077 -2097.92902703    -0.84932077    -0.02473736  0.30D-02  0.13D-02     8.14
    2     2     2     1.07146790    -0.84920273 -2097.92890899    -0.84920273    -0.02485129  0.30D-02  0.13D-02     8.14
    2     3     3     1.07169724    -0.84903910 -2097.92874536    -0.84903910    -0.02500720  0.31D-02  0.13D-02     8.14
    3     1     1     1.06067527    -0.87196806 -2097.95167432    -0.02264729    -0.00059369  0.93D-04  0.41D-04    15.64
    3     2     2     1.06067000    -0.87196658 -2097.95167284    -0.02276385    -0.00059528  0.93D-04  0.41D-04    15.64
    3     3     3     1.06066291    -0.87196457 -2097.95167083    -0.02292547    -0.00059748  0.93D-04  0.42D-04    15.64
    4     1     1     1.05959068    -0.87252766 -2097.95223391    -0.00055959    -0.00002892  0.42D-05  0.20D-05    23.35
    4     2     2     1.05958717    -0.87252761 -2097.95223386    -0.00056103    -0.00002899  0.42D-05  0.20D-05    23.35
    4     3     3     1.05958219    -0.87252754 -2097.95223380    -0.00056297    -0.00002908  0.42D-05  0.20D-05    23.35
    5     1     1     1.05963603    -0.87255580 -2097.95226206    -0.00002814    -0.00000134  0.10D-06  0.93D-07    30.98
    5     2     2     1.05963575    -0.87255580 -2097.95226206    -0.00002819    -0.00000134  0.10D-06  0.93D-07    30.98
    5     3     3     1.05963538    -0.87255580 -2097.95226205    -0.00002826    -0.00000134  0.10D-06  0.94D-07    30.98
    6     1     1     1.05967359    -0.87255722 -2097.95226348    -0.00000142    -0.00000010  0.24D-08  0.60D-08    38.52
    6     2     2     1.05967351    -0.87255722 -2097.95226348    -0.00000142    -0.00000010  0.24D-08  0.61D-08    38.52
    6     3     3     1.05967354    -0.87255722 -2097.95226348    -0.00000142    -0.00000010  0.24D-08  0.60D-08    38.52
    7     1     1     1.05967307    -0.87255734 -2097.95226360    -0.00000012    -0.00000001  0.64D-09  0.68D-09    46.15
    7     2     2     1.05967306    -0.87255734 -2097.95226360    -0.00000012    -0.00000001  0.64D-09  0.68D-09    46.15
    7     3     3     1.05967305    -0.87255734 -2097.95226360    -0.00000012    -0.00000001  0.64D-09  0.67D-09    46.15


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%   2.6%
 P   0.6%  15.0%  23.9%

 Initialization:   0.8%
 Other:           56.7%

 Total CPU:       46.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//           0.0000000  -0.0000000   0.9660043
 2222222222/0/           0.0000000   0.9660043   0.0000000
 2222222222//0           0.9660043  -0.0000000  -0.0000000
 22222202222//          -0.0000000   0.0000000  -0.1015305
 2222220222/2/          -0.0000000  -0.1015305  -0.0000000
 2222220222//2          -0.1015305   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971298    0.000000    0.000000
 2          -0.000000   -0.000000    0.971298
 3          -0.000000    0.971298    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971298   -0.000000   -0.000000
 2          -0.000000    0.971298    0.000000
 3          -0.000000    0.000000    0.971298


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97129840 (fixed)   0.97132524 (relaxed)   0.97129840 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00028269   -0.00059520   -0.78339545
 Singles      0.01233887   -0.04242626   -0.05018570
 Pairs        0.04735107   -0.00000000   -0.03897619
 Total        1.05997263   -0.04302147   -0.87255734
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07970626
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.31817175
 One electron energy                -2921.46726486
 Two electron energy                  823.51500126
 Virial quotient                       -0.94318892
 Correlation energy                    -0.87255734
 !MRCI STATE 1.1 Energy             -2097.952263595667

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.00459315 (Davidson, fixed reference)
 Cluster corrected energies         -2098.00454205 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.00459315 (Davidson, rotated reference)

 Cluster corrected energies         -2098.00171602 (Pople, fixed reference)
 Cluster corrected energies         -2098.00166534 (Pople, relaxed reference)
 Cluster corrected energies         -2098.00171602 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97129841 (fixed)   0.97132524 (relaxed)   0.97129841 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00028269   -0.00059520   -0.00079423
 Singles      0.01233886   -0.04242626   -0.05018568
 Pairs        0.04735107   -0.82953588   -0.82157742
 Total        1.05997262   -0.87255734   -0.87255734
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07970626
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.31817827
 One electron energy                -2921.46727111
 Two electron energy                  823.51500752
 Virial quotient                       -0.94318892
 Correlation energy                    -0.87255734
 !MRCI STATE 2.1 Energy             -2097.952263595442

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.00459314 (Davidson, fixed reference)
 Cluster corrected energies         -2098.00454205 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.00459314 (Davidson, rotated reference)

 Cluster corrected energies         -2098.00171601 (Pople, fixed reference)
 Cluster corrected energies         -2098.00166533 (Pople, relaxed reference)
 Cluster corrected energies         -2098.00171601 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97129841 (fixed)   0.97132524 (relaxed)   0.97129841 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00028269   -0.00059520   -0.78339548
 Singles      0.01233885   -0.04242625   -0.05018567
 Pairs        0.04735107   -0.00000000   -0.03897619
 Total        1.05997261   -0.04302145   -0.87255734
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07970626
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.31818250
 One electron energy                -2921.46727527
 Two electron energy                  823.51501167
 Virial quotient                       -0.94318892
 Correlation energy                    -0.87255734
 !MRCI STATE 3.1 Energy             -2097.952263595432

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.00459313 (Davidson, fixed reference)
 Cluster corrected energies         -2098.00454204 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.00459313 (Davidson, rotated reference)

 Cluster corrected energies         -2098.00171600 (Pople, fixed reference)
 Cluster corrected energies         -2098.00166532 (Pople, relaxed reference)
 Cluster corrected energies         -2098.00171600 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       58.74       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       71.40       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        53.61     47.17      3.17      0.74      2.31
 REAL TIME  *        59.21 SEC
 DISK USED  *       130.24 MB (local),        1.73 GB (total)
 SF USED    *       715.41 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2098.00459315  AU                              
 SETTING HLSDIAG(2)     =     -2098.00459314  AU                              
 SETTING HLSDIAG(3)     =     -2098.00459313  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 32
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      613 conf      866 CSFs
 N-1 el internal:      907 conf     2099 CSFs
 N-2 el internal:      694 conf     2086 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     152 (  78  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2097.04109830
     2     -2097.04109830
     3     -2097.04109830
     4     -2097.04109830
     5     -2097.04109830
     6     -2097.00724424

 Number of blocks in overlap matrix:   661   Smallest eigenvalue:  0.25D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:        159490
 Number of doubly external configurations:       4671528
 Total number of contracted configurations:      4831468
 Total number of uncontracted configurations:   12203920

 Diagonal Coupling coefficients finished.               Storage:    700713 words, CPU-Time:      0.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    983882 words, CPU-time:      0.14 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.04109830    -0.00000000    -1.05795129  0.39D-01  0.79D-01     0.51
    1     2     2     1.00000000     0.00000000 -2097.04109830    -0.00000000    -1.05822866  0.39D-01  0.78D-01     0.51
    1     3     3     1.00000000     0.00000000 -2097.04109830    -0.00000000    -1.05750375  0.38D-01  0.78D-01     0.51
    1     4     4     1.00000000     0.00000000 -2097.04109830    -0.00000000    -1.05797208  0.39D-01  0.78D-01     0.51
    1     5     5     1.00000000     0.00000000 -2097.04109830     0.00000000    -1.05720082  0.38D-01  0.78D-01     0.51
    1     6     6     1.00000000     0.00000000 -2097.00724424     0.00000000    -1.04379929  0.14D-01  0.93D-01     0.51
    2     1     1     1.07601619    -0.85451890 -2097.89561720    -0.85451890    -0.02626547  0.33D-02  0.16D-02    27.06
    2     2     2     1.07610684    -0.85449316 -2097.89559146    -0.85449316    -0.02628874  0.33D-02  0.16D-02    27.06
    2     3     3     1.07637541    -0.85427181 -2097.89537011    -0.85427181    -0.02655071  0.34D-02  0.17D-02    27.06
    2     4     4     1.07652228    -0.85411233 -2097.89521064    -0.85411233    -0.02672470  0.35D-02  0.17D-02    27.06
    2     5     5     1.07664797    -0.85404021 -2097.89513851    -0.85404021    -0.02679862  0.36D-02  0.17D-02    27.06
    2     6     6     1.07076152    -0.85042128 -2097.85766552    -0.85042128    -0.02463027  0.26D-02  0.20D-02    27.06
    3     1     1     1.06388684    -0.87853681 -2097.91963512    -0.02401791    -0.00059890  0.78D-04  0.53D-04    53.69
    3     2     2     1.06389783    -0.87853492 -2097.91963322    -0.02404175    -0.00060116  0.78D-04  0.54D-04    53.69
    3     3     3     1.06392848    -0.87852715 -2097.91962545    -0.02425534    -0.00061344  0.81D-04  0.55D-04    53.69
    3     4     4     1.06391145    -0.87852599 -2097.91962429    -0.02441366    -0.00061366  0.81D-04  0.55D-04    53.69
    3     5     5     1.06391921    -0.87852555 -2097.91962385    -0.02448534    -0.00061442  0.81D-04  0.55D-04    53.69
    3     6     6     1.06147913    -0.87280756 -2097.88005180    -0.02238628    -0.00060003  0.57D-04  0.85D-04    53.69
    4     1     1     1.06271437    -0.87912438 -2097.92022269    -0.00058757    -0.00003303  0.49D-05  0.26D-05    80.65
    4     2     2     1.06271482    -0.87912429 -2097.92022259    -0.00058937    -0.00003311  0.49D-05  0.26D-05    80.65
    4     3     3     1.06272012    -0.87912378 -2097.92022208    -0.00059663    -0.00003430  0.51D-05  0.27D-05    80.65
    4     4     4     1.06272084    -0.87912375 -2097.92022206    -0.00059776    -0.00003431  0.51D-05  0.26D-05    80.65
    4     5     5     1.06272032    -0.87912374 -2097.92022204    -0.00059819    -0.00003433  0.51D-05  0.26D-05    80.65
    4     6     6     1.06042226    -0.87340341 -2097.88064765    -0.00059585    -0.00003274  0.50D-05  0.29D-05    80.65
    5     1     1     1.06271785    -0.87915709 -2097.92025539    -0.00003270    -0.00000167  0.17D-06  0.12D-06   108.09
    5     2     2     1.06271884    -0.87915708 -2097.92025538    -0.00003279    -0.00000168  0.17D-06  0.12D-06   108.09
    5     3     3     1.06271884    -0.87915707 -2097.92025537    -0.00003329    -0.00000169  0.17D-06  0.12D-06   108.09
    5     4     4     1.06271735    -0.87915683 -2097.92025513    -0.00003308    -0.00000160  0.16D-06  0.11D-06   108.09
    5     5     5     1.06271812    -0.87915681 -2097.92025511    -0.00003308    -0.00000162  0.16D-06  0.11D-06   108.09
    5     6     6     1.06041461    -0.87343589 -2097.88068013    -0.00003248    -0.00000186  0.20D-06  0.15D-06   108.09
    6     1     1     1.06272772    -0.87915882 -2097.92025712    -0.00000173    -0.00000010  0.35D-08  0.58D-08   135.08
    6     2     2     1.06272765    -0.87915882 -2097.92025712    -0.00000174    -0.00000010  0.35D-08  0.58D-08   135.08
    6     3     3     1.06272784    -0.87915882 -2097.92025712    -0.00000175    -0.00000010  0.34D-08  0.58D-08   135.08
    6     4     4     1.06272787    -0.87915850 -2097.92025680    -0.00000167    -0.00000009  0.34D-08  0.56D-08   135.08
    6     5     5     1.06272774    -0.87915850 -2097.92025680    -0.00000169    -0.00000009  0.34D-08  0.55D-08   135.08
    6     6     6     1.06043136    -0.87343780 -2097.88068203    -0.00000191    -0.00000011  0.50D-08  0.71D-08   135.08
    7     1     1     1.06272638    -0.87915894 -2097.92025724    -0.00000012    -0.00000001  0.68D-09  0.63D-09   161.96
    7     2     2     1.06272636    -0.87915894 -2097.92025724    -0.00000012    -0.00000001  0.67D-09  0.64D-09   161.96
    7     3     3     1.06272632    -0.87915894 -2097.92025724    -0.00000012    -0.00000001  0.68D-09  0.64D-09   161.96
    7     4     4     1.06272629    -0.87915861 -2097.92025691    -0.00000011    -0.00000001  0.59D-09  0.60D-09   161.96
    7     5     5     1.06272630    -0.87915861 -2097.92025691    -0.00000011    -0.00000001  0.59D-09  0.61D-09   161.96
    7     6     6     1.06042861    -0.87343792 -2097.88068216    -0.00000012    -0.00000001  0.61D-09  0.56D-09   161.96


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   1.0%
 P   0.5%  10.9%  27.5%

 Initialization:   0.2%
 Other:           59.8%

 Total CPU:      162.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0           0.0000000   0.0000000   0.9645635   0.0000000   0.0000000  -0.0000000
 22222222220/\           0.0000000   0.9645635  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222222222/0\           0.9645635  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 2222222222002          -0.0000000   0.0000000  -0.0000000   0.7874609  -0.0126688   0.5493002
 2222222222020          -0.0000000   0.0000000   0.0000000  -0.3827589   0.6882956   0.5493002
 2222222222200           0.0000000  -0.0000000   0.0000000  -0.4047020  -0.6756267   0.5493002
 2222220222022           0.0000000  -0.0000000   0.0000000  -0.0425271  -0.0709965  -0.1119063
 2222220222220          -0.0000000   0.0000000  -0.0000000   0.0827482  -0.0013312  -0.1119063
 2222220222202          -0.0000000  -0.0000000   0.0000000  -0.0402213   0.0723277  -0.1119062
 2222220222/\2          -0.0000000  -0.0000000  -0.1013586  -0.0000000  -0.0000000  -0.0000000
 2222220222/2\          -0.1013586   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 22222202222/\          -0.0000000  -0.1013586   0.0000000   0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000   -0.000000    0.969847   -0.000000    0.000000
 2           0.000000    0.969847    0.000000   -0.000000    0.000000    0.000000
 3           0.969847   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000   -0.395591    0.000000    0.885501   -0.000000
 5           0.000000   -0.000000    0.885501    0.000000    0.395591    0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970876

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969847   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.969847   -0.000000   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.969847   -0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.969847   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.969847    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.970876


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96984740 (fixed)   0.96987434 (relaxed)   0.96984740 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039549   -0.00086850   -0.78401667
 Singles      0.01407389   -0.04598191   -0.05489139
 Pairs        0.04867730   -0.00000000   -0.04025088
 Total        1.06314668   -0.04685042   -0.87915894
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04109830
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.31471339
 One electron energy                -2921.39917164
 Two electron energy                  823.47891440
 Virial quotient                       -0.94317600
 Correlation energy                    -0.87915894
 !MRCI STATE 1.1 Energy             -2097.920257238392

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.97577321 (Davidson, fixed reference)
 Cluster corrected energies         -2097.97572128 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.97577321 (Davidson, rotated reference)

 Cluster corrected energies         -2097.97345638 (Pople, fixed reference)
 Cluster corrected energies         -2097.97340395 (Pople, relaxed reference)
 Cluster corrected energies         -2097.97345638 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96984741 (fixed)   0.96987436 (relaxed)   0.96984741 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039549   -0.00086850   -0.78401672
 Singles      0.01407386   -0.04598188   -0.05489136
 Pairs        0.04867730   -0.00000000   -0.04025086
 Total        1.06314665   -0.04685038   -0.87915894
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04109830
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.31471228
 One electron energy                -2921.39916749
 Two electron energy                  823.47891025
 Virial quotient                       -0.94317600
 Correlation energy                    -0.87915894
 !MRCI STATE 2.1 Energy             -2097.920257238281

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.97577318 (Davidson, fixed reference)
 Cluster corrected energies         -2097.97572126 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.97577318 (Davidson, rotated reference)

 Cluster corrected energies         -2097.97345636 (Pople, fixed reference)
 Cluster corrected energies         -2097.97340392 (Pople, relaxed reference)
 Cluster corrected energies         -2097.97345636 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96984743 (fixed)   0.96987437 (relaxed)   0.96984743 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039549   -0.00086850   -0.78401685
 Singles      0.01407378   -0.04598177   -0.05489131
 Pairs        0.04867735   -0.00000000   -0.04025078
 Total        1.06314661   -0.04685027   -0.87915894
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04109830
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.31471095
 One electron energy                -2921.39917246
 Two electron energy                  823.47891523
 Virial quotient                       -0.94317600
 Correlation energy                    -0.87915894
 !MRCI STATE 3.1 Energy             -2097.920257237428

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.97577315 (Davidson, fixed reference)
 Cluster corrected energies         -2097.97572122 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.97577315 (Davidson, rotated reference)

 Cluster corrected energies         -2097.97345632 (Pople, fixed reference)
 Cluster corrected energies         -2097.97340389 (Pople, relaxed reference)
 Cluster corrected energies         -2097.97345632 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.88550069 (fixed)   0.96987438 (relaxed)   0.96984744 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039549   -0.00086851   -0.78401649
 Singles      0.01407389   -0.04598184   -0.05489138
 Pairs        0.04867721   -0.00000001   -0.04025074
 Total        1.06314659   -0.04685036   -0.87915861
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04109830
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.31465317
 One electron energy                -2921.39910608
 Two electron energy                  823.47884917
 Virial quotient                       -0.94317603
 Correlation energy                    -0.87915861
 !MRCI STATE 4.1 Energy             -2097.920256914666

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.97577278 (Davidson, fixed reference)
 Cluster corrected energies         -2097.97572085 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.97577278 (Davidson, rotated reference)

 Cluster corrected energies         -2097.97345596 (Pople, fixed reference)
 Cluster corrected energies         -2097.97340352 (Pople, relaxed reference)
 Cluster corrected energies         -2097.97345596 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.88550069 (fixed)   0.96987438 (relaxed)   0.96984744 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039549   -0.00086851   -0.78401649
 Singles      0.01407387   -0.04598182   -0.05489136
 Pairs        0.04867724   -0.00000002   -0.04025076
 Total        1.06314660   -0.04685035   -0.87915861
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04109830
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.31465188
 One electron energy                -2921.39910530
 Two electron energy                  823.47884838
 Virial quotient                       -0.94317603
 Correlation energy                    -0.87915861
 !MRCI STATE 5.1 Energy             -2097.920256913479

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.97577279 (Davidson, fixed reference)
 Cluster corrected energies         -2097.97572087 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.97577279 (Davidson, rotated reference)

 Cluster corrected energies         -2097.97345597 (Pople, fixed reference)
 Cluster corrected energies         -2097.97340354 (Pople, relaxed reference)
 Cluster corrected energies         -2097.97345597 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97087609 (fixed)   0.97095888 (relaxed)   0.97087609 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043978   -0.00069187   -0.00101423
 Singles      0.00583996   -0.02824109   -0.03142886
 Pairs        0.05461523   -0.84450496   -0.84099483
 Total        1.06089497   -0.87343792   -0.87343792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.00724424
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.28341173
 One electron energy                -2921.16465397
 Two electron energy                  823.28397181
 Virial quotient                       -0.94317148
 Correlation energy                    -0.87343792
 !MRCI STATE 6.1 Energy             -2097.880682156670

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.93387013 (Davidson, fixed reference)
 Cluster corrected energies         -2097.93371211 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.93387013 (Davidson, rotated reference)

 Cluster corrected energies         -2097.93155301 (Pople, fixed reference)
 Cluster corrected energies         -2097.93139407 (Pople, relaxed reference)
 Cluster corrected energies         -2097.93155301 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       58.74       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      295.43       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       221.58    167.97     47.17      3.17      0.74      2.31
 REAL TIME  *       242.23 SEC
 DISK USED  *       354.27 MB (local),        4.35 GB (total)
 SF USED    *         2.16 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2097.97577321  AU                              
 SETTING HLSDIAG(5)     =     -2097.97577318  AU                              
 SETTING HLSDIAG(6)     =     -2097.97577315  AU                              
 SETTING HLSDIAG(7)     =     -2097.97577278  AU                              
 SETTING HLSDIAG(8)     =     -2097.97577279  AU                              
 SETTING HLSDIAG(9)     =     -2097.93387013  AU                              


         HLSDIAG
    -2098.004593
    -2098.004593
    -2098.004593
    -2097.975773
    -2097.975773
    -2097.975773
    -2097.975773
    -2097.975773
    -2097.933870
                                                  

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

 Time for Seward_LS:      16.49 sec

       38708288. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    15631 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     16.49 sec, REAL time:     17.07 sec


 SORTLS1 read    63947966. and wrote    63947966. SO integrals in   264 records. CPU time:      0.55 sec, REAL time:      1.00 sec
 SORTLS2 read    63947966. and wrote   316904997. SO integrals in    36 records. CPU time:      0.35 sec, REAL time:      0.51 sec

 FILE SIZES: FILE 1:  1086.2 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1086.2 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1035.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      295.43       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       239.59     18.00    167.97     47.17      3.17      0.74      2.31
 REAL TIME  *       261.47 SEC
 DISK USED  *       354.44 MB (local),        7.60 GB (total)
 SF USED    *         2.16 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:  -2097.952264  -2097.952264  -2097.952264
 Replaced energies:  -2098.004593  -2098.004593  -2098.004593

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -2097.920257  -2097.920257  -2097.920257  -2097.920257  -2097.920257  -2097.880682
 Replaced energies:  -2097.975773  -2097.975773  -2097.975773  -2097.975773  -2097.975773  -2097.933870



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2098.00459315

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00     323.34       0.00       0.00       0.00       0.00     322.38
                            0.00      -0.00       0.00       0.00      -0.00     323.34       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00    -323.34       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00     457.28       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -457.28       0.00    -323.34       0.00      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00    -323.34      -0.00       0.00       0.00       0.00      -0.00     323.34       0.00       0.00
                           -0.00      -0.00     323.34       0.00       0.00       0.00       0.00      -0.00     323.34       0.00

    5   2.1  1.0  0.0     323.34       0.00      -0.00       0.00       0.00       0.00    -323.34       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                         -323.34       0.00       0.00      -0.00      -0.00       0.00    -323.34       0.00      -0.00    -455.91

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00    -323.34      -0.00       0.00       0.00       0.00     322.38
                           -0.00      -0.00      -0.00      -0.00      -0.00     323.34      -0.00       0.00      -0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00     323.34       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00    -457.28      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -323.34       0.00       0.00       0.00     457.28      -0.00      -0.00

   10   1.1  0.0  0.0     322.38      -0.00       0.00       0.00       0.00       0.00     322.38      -0.00       0.00    6325.25
                           -0.00      -0.00      -0.00      -0.00      -0.00     455.91       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                         -322.37       0.00      -0.00       0.00    -455.91      -0.00     322.37      -0.00       0.00      -0.00

   12   3.1  0.0  0.0      -0.00    -322.38       0.00       0.00       0.00       0.00      -0.00    -322.38       0.00       0.00
                            0.00       0.00    -322.38      -0.00       0.00      -0.00      -0.00      -0.00     322.38      -0.00

   13   4.1  0.0  0.0       0.00      -0.00    -191.29       0.00       0.00       0.00       0.00      -0.00    -191.29       0.00
                            0.00    -180.92      -0.00     526.38       0.00       0.00      -0.00     180.92       0.00      -0.00

   14   5.1  0.0  0.0       0.00      -0.00    -319.35       0.00       0.00       0.00       0.00      -0.00    -319.35       0.00
                            0.00     325.34      -0.00      -8.47       0.00       0.00      -0.00    -325.34       0.00      -0.00

   15   6.1  0.0  0.0      -0.00       0.00    -536.24       0.00       0.00       0.00      -0.00       0.00    -536.24       0.00
                           -0.00    -536.24      -0.00    -758.35       0.00       0.00       0.00     536.24       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00      -0.00       0.00       0.00      -0.00
                          322.37      -0.00      -0.00      -0.00       0.00

    2   2.1  1.0  1.0      -0.00    -322.38      -0.00      -0.00       0.00
                           -0.00      -0.00     180.92    -325.34     536.24

    3   3.1  1.0  1.0      -0.00       0.00    -191.29    -319.35    -536.24
                            0.00     322.38       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -526.38       8.47     758.35

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          455.91      -0.00      -0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00

    7   1.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      -0.00
                         -322.37       0.00       0.00       0.00      -0.00

    8   2.1  1.0 -1.0      -0.00    -322.38      -0.00      -0.00       0.00
                            0.00       0.00    -180.92     325.34    -536.24

    9   3.1  1.0 -1.0      -0.00       0.00    -191.29    -319.35    -536.24
                           -0.00    -322.38      -0.00      -0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6325.25       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6325.26       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6325.34       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6325.34       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15521.91
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by  -2098.00459315 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     457.275       0.000      -0.000

    2    1  |1 1>+              0.000       0.002       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.004      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -457.275       0.000       0.000      -0.000    -457.275

    1    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000    -457.275
                                0.000      -0.000     457.275       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.002       0.000     457.275       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.004       0.000       0.000
                             -457.275       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000     457.275       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000    -457.275       0.000       0.000       0.000       0.002
                                0.000      -0.000     457.275      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000    -457.275       0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>             455.909      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     455.906      -0.000      -0.000

    2    1  |0 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -455.905      -0.000    -455.907       0.000

    3    1  |0 0>              -0.000    -455.910       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000      -0.000    -270.527       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     526.377       0.000       0.000       0.000    -255.857

    5    1  |0 0>               0.000      -0.000    -451.628       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -8.468       0.000       0.000       0.000     460.093

    6    1  |0 0>              -0.000       0.000    -758.359       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -758.352       0.000       0.000      -0.000    -758.355

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000     455.909      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000      -0.000    -455.910      -0.000      -0.000       0.000
                              457.275       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000       0.000    -270.527    -451.628    -758.359
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000    -526.377       8.468     758.352

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     455.905      -0.000      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -455.906       0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     455.907      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000     255.857    -460.093     758.355

    3    1  |1 1>-              0.004       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     455.909       0.000       0.000       0.000

    1    1  |0 0>               0.000    6325.246       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6325.252       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6325.259       0.000       0.000       0.000
                             -455.909      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6325.340       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6325.337       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15521.908
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2098.00923540    -0.00464225    -1018.86      0.00000000        0.00      0.0000
    2 -2098.00667665    -0.00208350     -457.27      0.00255875      561.58      0.0696
    3 -2098.00667664    -0.00208349     -457.27      0.00255875      561.58      0.0696
    4 -2098.00667664    -0.00208349     -457.27      0.00255876      561.58      0.0696
    5 -2098.00282863     0.00176452      387.27      0.00640676     1406.12      0.1743
    6 -2098.00282863     0.00176452      387.27      0.00640677     1406.12      0.1743
    7 -2098.00282862     0.00176453      387.27      0.00640677     1406.12      0.1743
    8 -2098.00282862     0.00176453      387.27      0.00640678     1406.12      0.1743
    9 -2098.00282862     0.00176453      387.27      0.00640678     1406.13      0.1743
   10 -2097.97545423     0.02913892     6395.25      0.03378117     7414.11      0.9192
   11 -2097.97545421     0.02913894     6395.26      0.03378119     7414.11      0.9192
   12 -2097.97545417     0.02913898     6395.27      0.03378123     7414.12      0.9192
   13 -2097.97545380     0.02913935     6395.35      0.03378159     7414.20      0.9192
   14 -2097.97545380     0.02913935     6395.35      0.03378160     7414.20      0.9192
   15 -2097.93339488     0.07119827    15626.21      0.07584052    16645.07      2.0637

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000 -0.00000000  0.70710850  0.00000000 -0.00000000  0.00000000  0.00000001 -0.70297321
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.70710765  0.00000000 -0.00000000 -0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.57553804 -0.00000000 -0.00000000  0.00000000  0.19742221  0.78735193 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.57553883 -0.00000000  0.00000000  0.00000000  0.78057751  0.22270319  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.02472176  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.02366622 -0.00000000
                          -0.00000000 -0.70667364 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70257737  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.70710507  0.00000000  0.00000000 -0.00000000 -0.00000000  0.70297670

   1    1  |1 1>-         -0.00000000 -0.02472182 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.02366617 -0.00000000
                           0.00000000  0.70667534  0.00000000  0.00000000 -0.00000000  0.00000000  0.70257565  0.00000001

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.57553846 -0.00000000  0.00000000 -0.00000000 -0.58315583  0.56464814 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.70710591 -0.00000000 -0.00000000  0.00000000  0.00000001

   1    1  |0 0>           0.00000000  0.00000000 -0.00000050 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.10794641
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000025 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.10788472 -0.00000000
                           0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00363408 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000050  0.00000000 -0.00000000  0.00000000  0.10331470  0.03128229  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000023 -0.00000000 -0.00000000  0.00000000 -0.03128206  0.10331562 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.07916127  0.00000000  0.00000000  0.00000000  0.00000026  0.00000027  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000001  0.07632981 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.70297406 -0.00000000 -0.00000000 -0.07632984  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.06565747 -0.05880139 -0.04570403
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.01809448 -0.08626050  0.04570354

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00035300  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.07632839 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.07632947  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00035300  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.07632856 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.08375169  0.02746011  0.04570377

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.70297583  0.00000000  0.00000000  0.07632966 -0.00000000  0.00000000  0.00000000

   1    1  |0 0>          -0.00000000  0.99415671 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.99414614  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00459765 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.10794657  0.00000000 -0.00000000  0.99415670 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.18842029  0.97613794  0.00000005
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.97613787  0.18842022  0.00000003
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000014  0.99686182
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2098.00923540     -0.00464225    -1018.86      0.00000000        0.00      0.0000
     2   1  -2098.00667665     -0.00208350     -457.27      0.00255875      561.58      0.0696
     3   1  -2098.00667664     -0.00208349     -457.27      0.00255875      561.58      0.0696
     4   1  -2098.00667664     -0.00208349     -457.27      0.00255876      561.58      0.0696
     5   1  -2098.00282863      0.00176452      387.27      0.00640676     1406.12      0.1743
     6   1  -2098.00282863      0.00176452      387.27      0.00640677     1406.12      0.1743
     7   1  -2098.00282862      0.00176453      387.27      0.00640677     1406.12      0.1743
     8   1  -2098.00282862      0.00176453      387.27      0.00640678     1406.12      0.1743
     9   1  -2098.00282862      0.00176453      387.27      0.00640678     1406.13      0.1743
    10   1  -2097.97545423      0.02913892     6395.25      0.03378117     7414.11      0.9192
    11   1  -2097.97545421      0.02913894     6395.26      0.03378119     7414.11      0.9192
    12   1  -2097.97545417      0.02913898     6395.27      0.03378123     7414.12      0.9192
    13   1  -2097.97545380      0.02913935     6395.35      0.03378159     7414.20      0.9192
    14   1  -2097.97545380      0.02913935     6395.35      0.03378160     7414.20      0.9192
    15   1  -2097.93339488      0.07119827    15626.21      0.07584052    16645.07      2.0637

 E0 =  -2098.00459315 is the energy of the lowest zeroth-order state
 E1 =  -2098.00923540 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.70710850  0.00000000 -0.00000000  0.00000000  0.00000001 -0.70297321
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.70710765  0.00000000 -0.00000000 -0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.57553804 -0.00000000 -0.00000000  0.00000000  0.19742221  0.78735193 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.57553883 -0.00000000  0.00000000  0.00000000  0.78057751  0.22270319  0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000  0.02472176  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.02366622 -0.00000000
                               -0.00000000 -0.70667364 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70257737  0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.70710507  0.00000000  0.00000000 -0.00000000 -0.00000000  0.70297670

  7  1     1    1  |1 1>-      -0.00000000 -0.02472182 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.02366617 -0.00000000
                                0.00000000  0.70667534  0.00000000  0.00000000 -0.00000000  0.00000000  0.70257565  0.00000001

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.57553846 -0.00000000  0.00000000 -0.00000000 -0.58315583  0.56464814 -0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.70710591 -0.00000000 -0.00000000  0.00000000  0.00000001

 10  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000050 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.10794641
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000025 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.10788472 -0.00000000
                                0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00363408 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000050  0.00000000 -0.00000000  0.00000000  0.10331470  0.03128229  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000023 -0.00000000 -0.00000000  0.00000000 -0.03128206  0.10331562 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.07916127  0.00000000  0.00000000  0.00000000  0.00000026  0.00000027  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000001  0.07632981 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.70297406 -0.00000000 -0.00000000 -0.07632984  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.06565747 -0.05880139 -0.04570403
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.01809448 -0.08626050  0.04570354

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00035300  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.07632839 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.07632947  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00035300  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.07632856 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.08375169  0.02746011  0.04570377

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.70297583  0.00000000  0.00000000  0.07632966 -0.00000000  0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.99415671 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000  0.99414614  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00459765 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.10794657  0.00000000 -0.00000000  0.99415670 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.18842029  0.97613794  0.00000005
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.97613787  0.18842022  0.00000003
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000014  0.99686182
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.42%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+        33.12%    0.00%    0.00%    0.00%    3.90%   61.99%    0.00%    0.00%
  4  1     1    1  |1 0>         33.12%    0.00%    0.00%    0.00%   60.93%    4.96%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.42%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.42%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.42%    0.00%
  8  1     2    1  |1 1>-        33.12%    0.00%    0.00%    0.00%   34.01%   31.88%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.17%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.17%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.07%    0.10%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.10%    1.07%    0.00%    0.00%
 15  1     6    1  |0 0>          0.63%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.58%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        49.42%    0.00%    0.00%    0.58%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.43%    0.35%    0.21%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.74%    0.21%
  5  1     2    1  |1 0>          0.00%    0.00%    0.58%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.58%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.58%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.70%    0.08%    0.21%
  9  1     3    1  |1 1>-        49.42%    0.00%    0.00%    0.58%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%   98.83%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   98.83%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          1.17%    0.00%    0.00%   98.83%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.55%   95.28%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   95.28%    3.55%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.37%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1035.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      295.43       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       342.25    102.66     18.00    167.97     47.17      3.17      0.74      2.31
 REAL TIME  *       376.10 SEC
 DISK USED  *       354.44 MB (local),        7.60 GB (total)
 SF USED    *         2.16 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK energy=  -2097.933394879060

              CI              CI           MULTI         RHF-SCF
  -2097.88068216  -2097.95226360  -2097.00724424  -2097.10482163
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
