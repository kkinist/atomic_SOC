
 Working directory              : /wrk/irikura/molpro.Lacqfjvtk5/
 Global scratch directory       : /wrk/irikura/molpro.Lacqfjvtk5/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Lacqfjvtk5/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Se SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Se};
 
 basis=AWCVQZ-X2C
 set,dkho=101
 
 NT=3
 NS=6
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,8,6
     occ,9,9
     wf,charge=0,sym=PAR,spin=2;state,NT;
     wf,charge=0,sym=PAR,spin=0;state,NS;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=PAR,spin=2;state,NT; save,5302.2}
 hlsdiag = energd4
                                                                                 !hlsdiag(1) = energd
 {ci;wf,sym=PAR,spin=0;state,NS; save,5102.2}
 hlsdiag(NT+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5302.2,5102.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Se SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-Sep-24          TIME: 10:19:01  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AWCVQZ-X2C
 SETTING DKHO           =       101.00000000                                  
 SETTING NT             =         3.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry SE     S aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry SE     P aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry SE     D aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry SE     F aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry SE     G aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry SE     H aug-cc-pwCVQZ-X      selected for orbital group  1


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

   1  SE     34.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   34
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

     99.615 MB (compressed) written to integral file ( 13.1%)

     Node minimum: 5.243 MB, node maximum: 14.418 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4449180.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4449180      RECORD LENGTH: 524288

 Memory used in sort:       5.01 MW

 SORT1 READ    94260844. AND WROTE      784704. INTEGRALS IN      3 RECORDS. CPU TIME:     0.39 SEC, REAL TIME:     0.42 SEC
 SORT2 READ     9787416. AND WROTE    53439771. INTEGRALS IN    276 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.12 SEC

 Node minimum:     4446135.  Node maximum:     4460496. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       192021

 Eigenvalues of metric

         1 0.284E-05 0.195E-03 0.325E-02 0.842E-02 0.842E-02 0.842E-02 0.842E-02 0.842E-02
         2 0.760E-05 0.760E-05 0.760E-05 0.298E-03 0.298E-03 0.298E-03 0.268E-01 0.268E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.56      3.19
 REAL TIME  *         4.54 SEC
 DISK USED  *        30.21 MB (local),      572.84 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   9   6

 NELEC=   33   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2427.78952630   -2427.78952630     0.00D+00     0.92D-01     0     0       0.02      0.04    start
   2    -2427.84567292      -0.05614662     0.38D-02     0.72D-02     1     0       0.03      0.07    diag2
   3    -2427.84851632      -0.00284339     0.27D-02     0.27D-02     2     0       0.03      0.10    diag2
   4    -2427.84907914      -0.00056283     0.50D-03     0.11D-02     3     0       0.03      0.13    diag2
   5    -2427.84912367      -0.00004453     0.12D-03     0.52D-03     4     0       0.03      0.16    diag2
   6    -2427.84912442      -0.00000075     0.21D-04     0.73D-04     5     0       0.03      0.19    diag2
   7    -2427.84912444      -0.00000002     0.28D-05     0.92D-05     6     0       0.03      0.22    diag2
   8    -2427.84912444      -0.00000000     0.28D-06     0.95D-06     7     0       0.03      0.25    fixocc
   9    -2427.84912444      -0.00000000     0.29D-07     0.10D-06     0     0       0.02      0.27    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2427.849124441024
  RHF One-electron energy           -3366.809740951977
  RHF Two-electron energy             938.960616510954
  RHF Kinetic energy                 2588.318012538409
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.938002638269

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -468.48499     1  1  s    0.99998
    2.1     2.00000   -62.72191     1  2  s    0.99966
    3.1     2.00000    -9.59426     1  3  s    1.00113
    4.1     2.00000    -2.97365     1  1  d0   1.00051
    5.1     2.00000    -2.97365     1  1  d1+  1.00048
    6.1     2.00000    -2.97365     1  1  d2-  1.00001
    7.1     2.00000    -2.97365     1  1  d1-  0.99999
    8.1     2.00000    -2.97365     1  1  d2+  1.00049
    9.1     2.00000    -1.19169     1  4  s    1.05315
    1.2     2.00000   -55.03382     1  1  py   1.00024
    2.2     2.00000   -55.03382     1  1  px   1.00024
    3.2     2.00000   -55.03382     1  1  pz   1.00024
    4.2     2.00000    -7.10062     1  2  py   1.00066
    5.2     2.00000    -7.10062     1  2  pz   1.00066
    6.2     2.00000    -7.10062     1  2  px   1.00066
    7.2     1.00000    -0.78655     1  3  pz   1.00620
    8.2     1.00000    -0.78655     1  3  py   1.00620
    9.2     1.00000    -0.78655     1  3  px   1.00620


 HOMO      9.2    -0.786553 =     -21.4032eV
 LUMO     10.1    -0.119615 =      -3.2549eV
 LUMO-HOMO         0.666938 =      18.1483eV

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
 CPU TIMES  *         3.86      0.30      3.19
 REAL TIME  *         5.70 SEC
 DISK USED  *        32.58 MB (local),      601.25 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     152 (   78   74)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.422D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.114D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.379D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.397D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.848D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 3 6 5 1 1   3 5 6 4 2 1 2 3 5 4   6 2 4 6 3 5 812 711   913101415 11415 712
                                        811 91013 3 5 4 6 2   1 2 3 5 4 6141512 8   7131011 9 1 2 6 4 3   5141512 8 7 9111013
                                        2 4 6 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.133D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.133D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.213D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.213D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.686D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.687D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 3 1 3 2 1 3   2 1 3 2 1 5 4 610 8   7 9 3 2 1 5 4 6 810   9 7 6 810 5 9 7 4 3
                                        2 1 810 6 4 5 9 7 3   2 11321121119151716  14201810 8 6 4 5 7 9   3 2 110 8 9 7 4 5 6
                                        3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1394  ( 26 closed/active, 1068 closed/virtual, 0 active/active, 300 active/virtual )
 Total number of variables:    1463
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -2428.07499062   -2428.11747208   -0.04248146    0.27744950 0.00001825 0.00000000  0.20E+00      0.73
   2    6   10    0  -2428.11899498   -2428.11915889   -0.00016391    0.01645663 0.00000019 0.00000000  0.13E-01      1.59
   3   21   42    0  -2428.11915932   -2428.11915933   -0.00000000    0.00007088 0.00000002 0.00000000  0.49E-04      2.52

 CONVERGENCE REACHED!  Final gradient:    0.00000022 ( 0.22E-06)
                       Final energy:  -2428.11915933
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2428.156566401807
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.58469043
 One electron energy                         -3379.27155578
 Two electron energy                           951.11498938
 Virial ratio                                    1.93802477
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2428.156566401749
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.58469044
 One electron energy                         -3379.27155579
 Two electron energy                           951.11498939
 Virial ratio                                    1.93802477
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2428.156566401697
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.58469044
 One electron energy                         -3379.27155581
 Two electron energy                           951.11498940
 Virial ratio                                    1.93802477
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2428.107951664305
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.58469043
 One electron energy                         -3379.27155578
 Two electron energy                           951.16360412
 Virial ratio                                    1.93800599
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2428.107951664297
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.58469043
 One electron energy                         -3379.27155578
 Two electron energy                           951.16360411
 Virial ratio                                    1.93800599
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2428.107951664281
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.58469044
 One electron energy                         -3379.27155579
 Two electron energy                           951.16360413
 Virial ratio                                    1.93800599
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2428.107951664255
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.58469044
 One electron energy                         -3379.27155581
 Two electron energy                           951.16360414
 Virial ratio                                    1.93800599
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2428.107951664240
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.58469044
 One electron energy                         -3379.27155581
 Two electron energy                           951.16360414
 Virial ratio                                    1.93800599
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2428.062976400771
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.51899707
 One electron energy                         -3379.05298605
 Two electron energy                           950.99000965
 Virial ratio                                    1.93801242
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000011124
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999993312
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999997459
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.999998737476
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.715463662116
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000358040
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000057965
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.284478577654
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999993316
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000132817
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999873885
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000001719143
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     2.032710323557
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999998153257
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000001159771
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.967402046584
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999995560
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999873871
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000128657
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.999999543381
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.251826014328
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000001488703
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999998782264
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.748119375762
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 3 5 6 1 1   4 2 3 5 6 1 4 2 3 5   6 4 2 3 5 6 9 7 812  1514111013 1 9 712 8
                                       1514111013 4 2 3 5 6   1 4 2 3 5 6 9 712 8  1514111310 1 4 2 3 5   6 9 712 81514111013
                                        4 2 6 3 5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 2 3 1 1   3 2 1 3 2 4 6 810 5   7 9 3 1 2 4 6 810 5   9 7 4 6 810 5 9 7 3
                                        1 2 4 6 810 5 7 9 3   1 21119132116141517  121820 4 610 8 5 9 7   3 1 2 4 610 8 5 9 7
                                        3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -468.10951     1  1  s    0.99998
    2.1     2.00000   -62.34824     1  2  s    0.99978
    3.1     2.00000    -9.22141     1  3  s    1.00058
    4.1     2.00000    -2.60192     1  1  d1+  1.00005
    5.1     2.00000    -2.60192     1  1  d0   1.00005
    6.1     2.00000    -2.60192     1  1  d2-  1.00005
    7.1     2.00000    -2.60192     1  1  d2+  1.00005
    8.1     2.00000    -2.60192     1  1  d1-  1.00005
    9.1     1.99364    -0.86294     1  4  s    0.98874
    1.2     2.00000   -54.66058     1  1  px   1.00018
    2.2     2.00000   -54.66058     1  1  pz   1.00018
    3.2     2.00000   -54.66058     1  1  py   1.00018
    4.2     2.00000    -6.72932     1  2  px   0.99994
    5.2     2.00000    -6.72932     1  2  pz   0.99994
    6.2     2.00000    -6.72932     1  2  py   0.99994
    7.2     1.33546    -0.26692     1  3  py   1.02994
    8.2     1.33545    -0.26692     1  3  pz   1.02994
    9.2     1.33545    -0.26692     1  3  px   1.02994
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa2          0.99999999      0.00008178      0.00006661
 2 a2a         -0.00006663      0.00035515      0.99999993
 2 2aa         -0.00008176      0.99999993     -0.00035515
 
 Energy:    -2428.15656640  -2428.15656640  -2428.15656640
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202         -0.00061750      0.79037675     -0.00021961     -0.00011391     -0.20486781      0.56902685
 2 220          0.00042223     -0.21776751      0.00008092      0.00008530      0.78692044      0.56902686
 2 a2b         -0.00007967      0.00008847      0.00051049      0.70710658     -0.00005218      0.00000000
 2 b2a          0.00007967     -0.00008847     -0.00051049     -0.70710658      0.00005218     -0.00000000
 2 2ba         -0.00016061     -0.00019140     -0.70710655      0.00051050      0.00001978      0.00000000
 2 2ab          0.00016061      0.00019140      0.70710655     -0.00051050     -0.00001978     -0.00000000
 2 ab2          0.70710655      0.00048916     -0.00016069      0.00007970     -0.00024403      0.00000000
 2 ba2         -0.70710655     -0.00048916      0.00016069     -0.00007970      0.00024403     -0.00000000
 2 022          0.00019527     -0.57260924      0.00013869      0.00002861     -0.58205264      0.56902685
 0 222          0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.16919018
 
 Energy:    -2428.10795166  -2428.10795166  -2428.10795166  -2428.10795166  -2428.10795166  -2428.06297640
 


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
 CPU TIMES  *         6.39      2.52      0.30      3.19
 REAL TIME  *         8.80 SEC
 DISK USED  *        60.29 MB (local),      933.78 MB (total)
 SF USED    *        70.23 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2428.156566   2.0
    -2428.156566   2.0
    -2428.156566   2.0
    -2428.107952   6.0
    -2428.107952   6.0
    -2428.107952   6.0
    -2428.107952   6.0
    -2428.107952   6.0
    -2428.062976  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 34
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:       78 conf       78 CSFs
 N-1 el internal:      232 conf      564 CSFs
 N-2 el internal:      241 conf     1587 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     152 (  78  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.19 sec, npass=  1  Memory used:   1.70 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2428.15656640
     2     -2428.15656640
     3     -2428.15656640

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         42828
 Number of doubly external configurations:       2843568
 Total number of contracted configurations:      2886432
 Total number of uncontracted configurations:    9188472

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    895355 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2428.15656640     0.00000000    -1.11366268  0.30D-01  0.89D-01     0.50
    1     2     2     1.00000000     0.00000000 -2428.15656640    -0.00000000    -1.11342358  0.29D-01  0.89D-01     0.50
    1     3     3     1.00000000     0.00000000 -2428.15656640     0.00000000    -1.11362705  0.30D-01  0.89D-01     0.50
    2     1     1     1.07981550    -0.91578882 -2429.07235522    -0.91578882    -0.02269014  0.25D-02  0.18D-02     7.60
    2     2     2     1.07996201    -0.91566097 -2429.07222737    -0.91566097    -0.02282496  0.25D-02  0.18D-02     7.60
    2     3     3     1.07999817    -0.91564333 -2429.07220973    -0.91564333    -0.02283336  0.26D-02  0.18D-02     7.60
    3     1     1     1.06448485    -0.93718560 -2429.09375200    -0.02139678    -0.00037085  0.31D-04  0.36D-04    14.55
    3     2     2     1.06447551    -0.93718533 -2429.09375173    -0.02152436    -0.00037104  0.31D-04  0.36D-04    14.55
    3     3     3     1.06447975    -0.93718490 -2429.09375130    -0.02154157    -0.00037137  0.31D-04  0.36D-04    14.55
    4     1     1     1.06333816    -0.93754716 -2429.09411356    -0.00036156    -0.00001305  0.17D-05  0.94D-06    21.34
    4     2     2     1.06333886    -0.93754713 -2429.09411353    -0.00036180    -0.00001306  0.17D-05  0.94D-06    21.34
    4     3     3     1.06333698    -0.93754713 -2429.09411353    -0.00036223    -0.00001308  0.17D-05  0.94D-06    21.34
    5     1     1     1.06333231    -0.93755981 -2429.09412621    -0.00001265    -0.00000047  0.70D-07  0.34D-07    28.21
    5     2     2     1.06333241    -0.93755981 -2429.09412621    -0.00001268    -0.00000047  0.70D-07  0.34D-07    28.21
    5     3     3     1.06333242    -0.93755981 -2429.09412621    -0.00001268    -0.00000047  0.70D-07  0.35D-07    28.21
    6     1     1     1.06333426    -0.93756028 -2429.09412668    -0.00000047    -0.00000002  0.14D-08  0.17D-08    35.08
    6     2     2     1.06333427    -0.93756028 -2429.09412668    -0.00000047    -0.00000002  0.15D-08  0.17D-08    35.08
    6     3     3     1.06333422    -0.93756028 -2429.09412668    -0.00000047    -0.00000002  0.14D-08  0.17D-08    35.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.4%
 P   0.9%  11.6%  22.7%

 Initialization:   1.0%
 Other:           63.4%

 Total CPU:       35.1 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/           0.0000000   0.0000000   0.9697603
 2222222222//2           0.9697603   0.0000000   0.0000000
 22222222222//           0.0000000   0.9697603   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969760    0.000000    0.000000
 2           0.000000    0.969760    0.000000
 3           0.000000    0.000000    0.969760

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969760    0.000000    0.000000
 2           0.000000    0.969760    0.000000
 3           0.000000    0.000000    0.969760


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96976026 (fixed)   0.96976026 (relaxed)   0.96976026 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000329   -0.00001843   -0.84555981
 Singles      0.01071830   -0.03844770   -0.04560744
 Pairs        0.05261616    0.00000000   -0.04639304
 Total        1.06333776   -0.03846613   -0.93756028
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.15656640
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.40565525
 One electron energy                -3378.42529425
 Two electron energy                  949.33116757
 Virial quotient                       -0.93808945
 Correlation energy                    -0.93756028
 !MRCI STATE 1.1 Energy             -2429.094126683198

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.15350965 (Davidson, fixed reference)
 Cluster corrected energies         -2429.15350965 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.15350965 (Davidson, rotated reference)

 Cluster corrected energies         -2429.15104069 (Pople, fixed reference)
 Cluster corrected energies         -2429.15104069 (Pople, relaxed reference)
 Cluster corrected energies         -2429.15104069 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96976025 (fixed)   0.96976025 (relaxed)   0.96976025 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000329   -0.00001843   -0.84555970
 Singles      0.01071837   -0.03844780   -0.04560751
 Pairs        0.05261611   -0.00000000   -0.04639308
 Total        1.06333778   -0.03846624   -0.93756028
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.15656640
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.40565639
 One electron energy                -3378.42529502
 Two electron energy                  949.33116834
 Virial quotient                       -0.93808945
 Correlation energy                    -0.93756028
 !MRCI STATE 2.1 Energy             -2429.094126683129

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.15350967 (Davidson, fixed reference)
 Cluster corrected energies         -2429.15350967 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.15350967 (Davidson, rotated reference)

 Cluster corrected energies         -2429.15104071 (Pople, fixed reference)
 Cluster corrected energies         -2429.15104071 (Pople, relaxed reference)
 Cluster corrected energies         -2429.15104071 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96976027 (fixed)   0.96976027 (relaxed)   0.96976027 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000329   -0.00001843   -0.00002024
 Singles      0.01071830   -0.03844769   -0.04560744
 Pairs        0.05261613   -0.89909416   -0.89193260
 Total        1.06333772   -0.93756028   -0.93756028
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.15656640
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.40564827
 One electron energy                -3378.42528985
 Two electron energy                  949.33116317
 Virial quotient                       -0.93808945
 Correlation energy                    -0.93756028
 !MRCI STATE 3.1 Energy             -2429.094126682914

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.15350962 (Davidson, fixed reference)
 Cluster corrected energies         -2429.15350962 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.15350962 (Davidson, rotated reference)

 Cluster corrected energies         -2429.15104066 (Pople, fixed reference)
 Cluster corrected energies         -2429.15104066 (Pople, relaxed reference)
 Cluster corrected energies         -2429.15104066 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       58.74       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       69.24       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        42.31     35.91      2.52      0.30      3.19
 REAL TIME  *        48.57 SEC
 DISK USED  *       128.08 MB (local),        1.71 GB (total)
 SF USED    *       687.53 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2429.15350965  AU                              
 SETTING HLSDIAG(2)     =     -2429.15350967  AU                              
 SETTING HLSDIAG(3)     =     -2429.15350962  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 34
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       91 conf       91 CSFs
 N-1 el internal:      286 conf      488 CSFs
 N-2 el internal:      478 conf     1349 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     152 (  78  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2428.10795166
     2     -2428.10795166
     3     -2428.10795166
     4     -2428.10795166
     5     -2428.10795166
     6     -2428.06297640

 Number of blocks in overlap matrix:   684   Smallest eigenvalue:  0.19D-01
 Number of N-2 electron functions:     826
 Number of N-1 electron functions:     488

 Number of internal configurations:                   49
 Number of singly external configurations:         37072
 Number of doubly external configurations:       4775640
 Total number of contracted configurations:      4812761
 Total number of uncontracted configurations:    7826777

 Diagonal Coupling coefficients finished.               Storage:    441505 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    979307 words, CPU-time:      0.16 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2428.10795166     0.00000000    -1.11684477  0.31D-01  0.86D-01     0.42
    1     2     2     1.00000000     0.00000000 -2428.10795166    -0.00000000    -1.11576175  0.31D-01  0.86D-01     0.42
    1     3     3     1.00000000     0.00000000 -2428.10795166    -0.00000000    -1.11793677  0.31D-01  0.87D-01     0.42
    1     4     4     1.00000000     0.00000000 -2428.10795166    -0.00000000    -1.11687369  0.31D-01  0.86D-01     0.42
    1     5     5     1.00000000     0.00000000 -2428.10795166    -0.00000000    -1.11552770  0.31D-01  0.85D-01     0.42
    1     6     6     1.00000000     0.00000000 -2428.06297640    -0.00000000    -1.09575427  0.54D-02  0.97D-01     0.42
    2     1     1     1.07978023    -0.92400060 -2429.03195226    -0.92400060    -0.02180063  0.23D-02  0.15D-02    26.27
    2     2     2     1.07967366    -0.92395800 -2429.03190966    -0.92395800    -0.02188452  0.24D-02  0.15D-02    26.27
    2     3     3     1.08000854    -0.92387404 -2429.03182571    -0.92387404    -0.02195298  0.23D-02  0.16D-02    26.27
    2     4     4     1.08007650    -0.92375126 -2429.03170292    -0.92375126    -0.02210640  0.24D-02  0.16D-02    26.27
    2     5     5     1.08034695    -0.92347559 -2429.03142726    -0.92347559    -0.02243448  0.25D-02  0.16D-02    26.27
    2     6     6     1.07234601    -0.91911694 -2428.98209334    -0.91911694    -0.01825134  0.12D-02  0.17D-02    26.27
    3     1     1     1.06726842    -0.94419381 -2429.05214547    -0.02019321    -0.00041361  0.31D-04  0.48D-04    52.52
    3     2     2     1.06723071    -0.94419263 -2429.05214429    -0.02023463    -0.00041208  0.31D-04  0.49D-04    52.52
    3     3     3     1.06721205    -0.94418948 -2429.05214114    -0.02031544    -0.00041589  0.31D-04  0.49D-04    52.52
    3     4     4     1.06726971    -0.94418837 -2429.05214003    -0.02043711    -0.00041921  0.31D-04  0.50D-04    52.52
    3     5     5     1.06727869    -0.94418356 -2429.05213523    -0.02070797    -0.00042497  0.31D-04  0.51D-04    52.52
    3     6     6     1.06383755    -0.93614746 -2428.99912386    -0.01703052    -0.00034661  0.15D-04  0.49D-04    52.52
    4     1     1     1.06606068    -0.94460326 -2429.05255492    -0.00040945    -0.00001442  0.16D-05  0.12D-05    78.83
    4     2     2     1.06605378    -0.94460324 -2429.05255491    -0.00041061    -0.00001430  0.16D-05  0.12D-05    78.83
    4     3     3     1.06605677    -0.94460323 -2429.05255490    -0.00041375    -0.00001431  0.16D-05  0.12D-05    78.83
    4     4     4     1.06606208    -0.94460317 -2429.05255483    -0.00041480    -0.00001449  0.16D-05  0.13D-05    78.83
    4     5     5     1.06606422    -0.94460315 -2429.05255481    -0.00041959    -0.00001451  0.16D-05  0.13D-05    78.83
    4     6     6     1.06276762    -0.93649676 -2428.99947316    -0.00034930    -0.00001237  0.14D-05  0.11D-05    78.83
    5     1     1     1.06598719    -0.94461773 -2429.05256939    -0.00001447    -0.00000050  0.49D-07  0.43D-07   105.47
    5     2     2     1.06598759    -0.94461772 -2429.05256938    -0.00001448    -0.00000050  0.50D-07  0.44D-07   105.47
    5     3     3     1.06598924    -0.94461771 -2429.05256938    -0.00001448    -0.00000052  0.54D-07  0.44D-07   105.47
    5     4     4     1.06598986    -0.94461771 -2429.05256937    -0.00001454    -0.00000052  0.55D-07  0.44D-07   105.47
    5     5     5     1.06598910    -0.94461771 -2429.05256937    -0.00001456    -0.00000052  0.54D-07  0.45D-07   105.47
    5     6     6     1.06273799    -0.93650922 -2428.99948562    -0.00001246    -0.00000048  0.52D-07  0.39D-07   105.47
    6     1     1     1.06598765    -0.94461822 -2429.05256989    -0.00000050    -0.00000002  0.12D-08  0.26D-08   131.87
    6     2     2     1.06598736    -0.94461822 -2429.05256989    -0.00000050    -0.00000002  0.13D-08  0.26D-08   131.87
    6     3     3     1.06598748    -0.94461822 -2429.05256988    -0.00000051    -0.00000002  0.12D-08  0.26D-08   131.87
    6     4     4     1.06598729    -0.94461822 -2429.05256988    -0.00000051    -0.00000002  0.12D-08  0.24D-08   131.87
    6     5     5     1.06598732    -0.94461822 -2429.05256988    -0.00000051    -0.00000002  0.11D-08  0.24D-08   131.87
    6     6     6     1.06274244    -0.93650968 -2428.99948608    -0.00000046    -0.00000002  0.12D-08  0.16D-08   131.87


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.2%
 P   0.5%   8.9%  28.1%

 Initialization:   0.2%
 Other:           62.1%

 Total CPU:      131.9 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/\          -0.0000000   0.9685196   0.0000000   0.0000000  -0.0000000  -0.0000000
 2222222222/2\           0.0000000  -0.0000000   0.9685196  -0.0000000   0.0000000  -0.0000000
 2222222222/\2           0.9685195  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2222222222022          -0.0000000   0.0000000   0.0000000  -0.1802325   0.7699804   0.5526635
 2222222222202          -0.0000000   0.0000000   0.0000000   0.7569388  -0.2289042   0.5526635
 2222222222220          -0.0000000   0.0000000   0.0000000  -0.5767063  -0.5410761   0.5526634
 2222220222222           0.0000000  -0.0000000  -0.0000000  -0.0000001   0.0000005  -0.1569307

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968519    0.000000   -0.000000    0.000000    0.000000   -0.000000
 2          -0.000000   -0.000000    0.968520   -0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.000000    0.968520   -0.000000    0.000000
 4           0.000000    0.827096    0.000000   -0.000000   -0.503927    0.000000
 5           0.000000   -0.503927   -0.000000    0.000000   -0.827096   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.969992

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968519   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.968520   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.968520   -0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.968520    0.000000    0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.968520    0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.969992


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96851948 (fixed)   0.96851948 (relaxed)   0.96851948 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007162   -0.00027129   -0.84649426
 Singles      0.01234333   -0.04226882   -0.05058706
 Pairs        0.05364905    0.00000000   -0.04753690
 Total        1.06606399   -0.04254011   -0.94461822
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10795166
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.39573181
 One electron energy                -3378.34121894
 Two electron energy                  949.28864905
 Virial quotient                       -0.93807700
 Correlation energy                    -0.94461822
 !MRCI STATE 1.1 Energy             -2429.052569885234

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.11497514 (Davidson, fixed reference)
 Cluster corrected energies         -2429.11497514 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.11497514 (Davidson, rotated reference)

 Cluster corrected energies         -2429.11308491 (Pople, fixed reference)
 Cluster corrected energies         -2429.11308491 (Pople, relaxed reference)
 Cluster corrected energies         -2429.11308491 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96851962 (fixed)   0.96851962 (relaxed)   0.96851962 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007162   -0.00027129   -0.84649463
 Singles      0.01234322   -0.04226867   -0.05058702
 Pairs        0.05364887   -0.00000000   -0.04753657
 Total        1.06606371   -0.04253996   -0.94461822
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10795166
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.39578794
 One electron energy                -3378.34128467
 Two electron energy                  949.28871479
 Virial quotient                       -0.93807698
 Correlation energy                    -0.94461822
 !MRCI STATE 2.1 Energy             -2429.052569885192

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.11497486 (Davidson, fixed reference)
 Cluster corrected energies         -2429.11497486 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.11497486 (Davidson, rotated reference)

 Cluster corrected energies         -2429.11308463 (Pople, fixed reference)
 Cluster corrected energies         -2429.11308463 (Pople, relaxed reference)
 Cluster corrected energies         -2429.11308463 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96851956 (fixed)   0.96851956 (relaxed)   0.96851956 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007162   -0.00027129   -0.84649442
 Singles      0.01234335   -0.04226879   -0.05058708
 Pairs        0.05364886   -0.00000000   -0.04753672
 Total        1.06606382   -0.04254009   -0.94461822
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10795166
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.39578050
 One electron energy                -3378.34127428
 Two electron energy                  949.28870440
 Virial quotient                       -0.93807698
 Correlation energy                    -0.94461822
 !MRCI STATE 3.1 Energy             -2429.052569884703

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.11497498 (Davidson, fixed reference)
 Cluster corrected energies         -2429.11497498 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.11497498 (Davidson, rotated reference)

 Cluster corrected energies         -2429.11308475 (Pople, fixed reference)
 Cluster corrected energies         -2429.11308475 (Pople, relaxed reference)
 Cluster corrected energies         -2429.11308475 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.82709618 (fixed)   0.96851965 (relaxed)   0.96851965 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007162   -0.00027129   -0.84649485
 Singles      0.01234296   -0.04226844   -0.05058660
 Pairs        0.05364906   -0.00000005   -0.04753677
 Total        1.06606364   -0.04253979   -0.94461822
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10795166
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.39578550
 One electron energy                -3378.34122247
 Two electron energy                  949.28865258
 Virial quotient                       -0.93807698
 Correlation energy                    -0.94461822
 !MRCI STATE 4.1 Energy             -2429.052569884579

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.11497480 (Davidson, fixed reference)
 Cluster corrected energies         -2429.11497480 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.11497480 (Davidson, rotated reference)

 Cluster corrected energies         -2429.11308456 (Pople, fixed reference)
 Cluster corrected energies         -2429.11308456 (Pople, relaxed reference)
 Cluster corrected energies         -2429.11308456 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.82709617 (fixed)   0.96851964 (relaxed)   0.96851964 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007162   -0.00027129   -0.84649486
 Singles      0.01234305   -0.04226852   -0.05058668
 Pairs        0.05364899    0.00000005   -0.04753669
 Total        1.06606366   -0.04253976   -0.94461822
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10795166
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.39577419
 One electron energy                -3378.34122436
 Two electron energy                  949.28865448
 Virial quotient                       -0.93807698
 Correlation energy                    -0.94461822
 !MRCI STATE 5.1 Energy             -2429.052569884131

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.11497482 (Davidson, fixed reference)
 Cluster corrected energies         -2429.11497482 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.11497482 (Davidson, rotated reference)

 Cluster corrected energies         -2429.11308459 (Pople, fixed reference)
 Cluster corrected energies         -2429.11308459 (Pople, relaxed reference)
 Cluster corrected energies         -2429.11308459 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96999215 (fixed)   0.97001952 (relaxed)   0.96999215 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008183   -0.00013305   -0.00019729
 Singles      0.00317954   -0.01883947   -0.02052712
 Pairs        0.05956803   -0.91753716   -0.91578527
 Total        1.06282941   -0.93650968   -0.93650968
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.06297640
 Nuclear energy                         0.00000000
 Kinetic energy                      2589.35102554
 One electron energy                -3378.10096315
 Two electron energy                  949.10147707
 Virial quotient                       -0.93807269
 Correlation energy                    -0.93650968
 !MRCI STATE 6.1 Energy             -2428.999486082490

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2429.05832643 (Davidson, fixed reference)
 Cluster corrected energies         -2429.05827025 (Davidson, relaxed reference)
 Cluster corrected energies         -2429.05832643 (Davidson, rotated reference)

 Cluster corrected energies         -2429.05638402 (Pople, fixed reference)
 Cluster corrected energies         -2429.05632674 (Pople, relaxed reference)
 Cluster corrected energies         -2429.05638402 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       58.74       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      292.44       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       179.56    137.24     35.91      2.52      0.30      3.19
 REAL TIME  *       199.39 SEC
 DISK USED  *       351.28 MB (local),        4.32 GB (total)
 SF USED    *         2.15 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2429.11497514  AU                              
 SETTING HLSDIAG(5)     =     -2429.11497486  AU                              
 SETTING HLSDIAG(6)     =     -2429.11497498  AU                              
 SETTING HLSDIAG(7)     =     -2429.11497480  AU                              
 SETTING HLSDIAG(8)     =     -2429.11497482  AU                              
 SETTING HLSDIAG(9)     =     -2429.05832643  AU                              


         HLSDIAG
    -2429.153510
    -2429.153510
    -2429.153510
    -2429.114975
    -2429.114975
    -2429.114975
    -2429.114975
    -2429.114975
    -2429.058326
                                                  

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

 Time for Seward_LS:      15.49 sec

       52021255. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    15633 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     15.50 sec, REAL time:     15.96 sec


 SORTLS1 read    63956560. and wrote    63956560. SO integrals in   264 records. CPU time:      0.57 sec, REAL time:      1.00 sec
 SORTLS2 read    63956560. and wrote   316904997. SO integrals in    36 records. CPU time:      0.34 sec, REAL time:      0.49 sec

 FILE SIZES: FILE 1:  1086.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1086.3 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1035.97       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      292.44       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       196.84     17.27    137.24     35.91      2.52      0.30      3.19
 REAL TIME  *       217.76 SEC
 DISK USED  *       351.45 MB (local),        7.56 GB (total)
 SF USED    *         2.15 GB
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
  
 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:  -2429.094127  -2429.094127  -2429.094127
 Replaced energies:  -2429.153510  -2429.153510  -2429.153510

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -2429.052570  -2429.052570  -2429.052570  -2429.052570  -2429.052570  -2428.999486
 Replaced energies:  -2429.114975  -2429.114975  -2429.114975  -2429.114975  -2429.114975  -2429.058326



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2429.15350967

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00     677.84       0.00       0.00       0.00      -0.00
                            0.00     958.60      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                         -958.60      -0.00      -0.00       0.00      -0.00    -677.84       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01    -677.84       0.00      -0.00       0.00       0.00       0.00    -681.06
                            0.00       0.00      -0.00      -0.00     677.84      -0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0      -0.00       0.00    -677.84       0.00       0.00       0.00      -0.00      -0.00     677.84       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

    5   2.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00    -677.84      -0.00       0.00       0.00       0.00      -0.00    -677.84    -963.17

    6   3.1  1.0  0.0     677.84      -0.00      -0.00       0.00       0.00       0.01    -677.84       0.00      -0.00       0.00
                           -0.00     677.84       0.00      -0.00      -0.00       0.00      -0.00     677.84      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00    -677.84       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00    -958.60       0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00    -677.84     958.60       0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00     677.84      -0.00      -0.00       0.00       0.00       0.01    -681.06
                           -0.00      -0.00      -0.00      -0.00     677.84       0.00      -0.00      -0.00       0.00       0.00

   10   1.1  0.0  0.0      -0.00      -0.00    -681.06       0.00       0.00       0.00      -0.00      -0.00    -681.06    8457.35
                            0.00       0.00       0.00       0.00     963.17       0.00      -0.00      -0.00      -0.00       0.00

   11   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     681.06     963.18      -0.00      -0.00       0.00       0.00    -681.06      -0.00

   12   3.1  0.0  0.0     681.06       0.00      -0.00       0.00       0.00       0.00     681.06       0.00      -0.00       0.00
                           -0.00    -681.06       0.00       0.00       0.00      -0.00       0.00     681.06      -0.00      -0.00

   13   4.1  0.0  0.0       0.00     179.24      -0.00       0.00       0.00       0.00       0.00     179.24      -0.00       0.00
                         -573.51      -0.00      -0.00      -0.00       0.00    1064.56     573.51       0.00       0.00      -0.00

   14   5.1  0.0  0.0       0.00    -765.72      -0.00       0.00       0.00       0.00       0.00    -765.72      -0.00       0.00
                         -538.08      -0.00       0.00       0.00       0.00    -321.93     538.08       0.00      -0.00      -0.00

   15   6.1  0.0  0.0      -0.00    1104.69      -0.00       0.00       0.00       0.00      -0.00    1104.69      -0.00       0.00
                        -1104.68       0.00      -0.00      -0.00       0.00   -1562.28    1104.68      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00     681.06       0.00       0.00      -0.00
                            0.00       0.00     573.51     538.08    1104.68

    2   2.1  1.0  1.0       0.00       0.00     179.24    -765.72    1104.69
                            0.00     681.06       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00      -0.00      -0.00      -0.00      -0.00
                         -681.06      -0.00       0.00      -0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         -963.18      -0.00       0.00      -0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00   -1064.56     321.93    1562.28

    7   1.1  1.0 -1.0       0.00     681.06       0.00       0.00      -0.00
                           -0.00      -0.00    -573.51    -538.08   -1104.68

    8   2.1  1.0 -1.0       0.00       0.00     179.24    -765.72    1104.69
                           -0.00    -681.06      -0.00      -0.00       0.00

    9   3.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00      -0.00
                          681.06       0.00      -0.00       0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    8457.41       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    8457.39       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    8457.43       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    8457.42       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   20890.31
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by  -2429.15350967 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.003       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000     958.604

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -958.604    -958.604      -0.000

    3    1  |1 1>+              0.000       0.000       0.011      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     958.604       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.003       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000    -958.604      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.011     958.605      -0.000
                               -0.000     958.604       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000     958.605       0.003       0.000
                                0.000     958.604      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                             -958.604      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000    -958.605       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.000      -0.000    -963.164       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     963.173       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     963.176      -0.000      -0.000      -0.000      -0.000

    3    1  |0 0>             963.169       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000    -963.165

    4    1  |0 0>               0.000     253.479      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    1064.556    -811.072      -0.000

    5    1  |0 0>               0.000   -1082.896      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -321.931    -760.963      -0.000

    6    1  |0 0>              -0.000    1562.268      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000   -1562.276   -1562.258       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000       0.000     963.169       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000       0.000     253.479   -1082.896    1562.268
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    -963.164       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            -958.605       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -963.176      -0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -963.173       0.000      -0.000      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000   -1064.556     321.931    1562.276

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     811.072     760.963    1562.258

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     963.165       0.000       0.000      -0.000

    3    1  |1 1>-              0.011       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -963.163      -0.000       0.000      -0.000       0.000

    1    1  |0 0>               0.000    8457.351       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    8457.411       0.000       0.000       0.000       0.000
                              963.163      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    8457.387       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    8457.426       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    8457.420       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   20890.305
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2429.15875715    -0.00524748    -1151.69      0.00000000        0.00      0.0000
    2 -2429.15875714    -0.00524747    -1151.69      0.00000001        0.00      0.0000
    3 -2429.15875714    -0.00524747    -1151.69      0.00000001        0.00      0.0000
    4 -2429.15875713    -0.00524746    -1151.68      0.00000002        0.00      0.0000
    5 -2429.15875711    -0.00524745    -1151.68      0.00000004        0.01      0.0000
    6 -2429.14914194     0.00436773      958.61      0.00961521     2110.30      0.2616
    7 -2429.14914192     0.00436775      958.61      0.00961523     2110.30      0.2616
    8 -2429.14914191     0.00436775      958.61      0.00961524     2110.30      0.2616
    9 -2429.14649819     0.00701148     1538.84      0.01225896     2690.53      0.3336
   10 -2429.11409537     0.03941430     8650.44      0.04466178     9802.13      1.2153
   11 -2429.11409521     0.03941446     8650.47      0.04466194     9802.16      1.2153
   12 -2429.11409510     0.03941457     8650.50      0.04466205     9802.19      1.2153
   13 -2429.11409507     0.03941460     8650.50      0.04466208     9802.19      1.2153
   14 -2429.11409504     0.03941463     8650.51      0.04466211     9802.20      1.2153
   15 -2429.05660244     0.09690722    21268.68      0.10215470    22420.37      2.7798

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.70010737  0.00000001 -0.00000001  0.00000000 -0.00000001  0.70710710 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000001  0.77673492 -0.00000008 -0.00000001 -0.22409467  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00039595 -0.00000000 -0.00000000 -0.00023669 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000001  0.00000007  0.70010560 -0.00000001 -0.00000001  0.00000000  0.70710888 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000001  0.00000001  0.70010942  0.00000000  0.00000000 -0.00000000 -0.70710499

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001  0.00000007  0.70010969 -0.00000001 -0.00000001 -0.00000000 -0.70710469  0.00000000

   3    1  |1 0>          -0.00000000  0.00009905 -0.00000000  0.00000000 -0.00082882  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.19429499  0.00000004  0.00000000  0.78471806 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00029691 -0.00000000 -0.00000000  0.00059214  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.58243797  0.00000005  0.00000001 -0.56062460 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.70010808  0.00000001 -0.00000001  0.00000000 -0.00000001 -0.70710647  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000001  0.00000001  0.70010603  0.00000000 -0.00000000  0.00000000  0.70710857

   1    1  |0 0>           0.00000000  0.00000001  0.14035157 -0.00000000 -0.00000000  0.00000000 -0.00000029  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.14035080  0.00000000 -0.00000000 -0.00000000 -0.00000075
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.14035083 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000045  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00714689  0.00000000 -0.00000000  0.14016776 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000364 -0.00000000 -0.00000000  0.00014805  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.14016772 -0.00000001 -0.00000000 -0.00714762 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00007145 -0.00000000 -0.00000000 -0.00000755 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000033  0.00000000 -0.00000000 -0.00000044  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.00000000  0.00000000  0.09924329  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.57178598  0.00000000  0.00000000  0.00000000 -0.10523646  0.04535830  0.07995336
                          -0.00062987 -0.00000000 -0.00000000  0.00000000  0.00000069 -0.00000096 -0.00000052

   3    1  |1 1>+         -0.00000000 -0.09924305  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.09924378 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.09924405  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00062987  0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000241  0.00000052
                           0.57178770  0.00000000 -0.00000000 -0.00000000  0.01333699 -0.11381685  0.07995375

   1    1  |1 1>-          0.00062987 -0.00000000  0.00000000  0.00000000  0.00000060  0.00000145  0.00000052
                           0.57178739 -0.00000000  0.00000000 -0.00000000  0.09189919  0.06845791  0.07995293

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.09924275  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.09924222 -0.00000000  0.00000000  0.00000000

   1    1  |0 0>           0.00000000  0.99010173 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.99010184  0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.99010184  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000049 -0.00000000  0.00000000 -0.00000000  0.17435198  0.97462982 -0.00000009
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000114 -0.00002064  0.00000000

   5    1  |0 0>          -0.00000007 -0.00000000 -0.00000000 -0.00000001  0.97462985 -0.17435187 -0.00000003
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000636  0.00000369  0.00000000

   6    1  |0 0>          -0.13848318  0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000021  0.99036477
                           0.00015255  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000639


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2429.15875715     -0.00524748    -1151.69      0.00000000        0.00      0.0000
     2   1  -2429.15875714     -0.00524747    -1151.69      0.00000001        0.00      0.0000
     3   1  -2429.15875714     -0.00524747    -1151.69      0.00000001        0.00      0.0000
     4   1  -2429.15875713     -0.00524746    -1151.68      0.00000002        0.00      0.0000
     5   1  -2429.15875711     -0.00524745    -1151.68      0.00000004        0.01      0.0000
     6   1  -2429.14914194      0.00436773      958.61      0.00961521     2110.30      0.2616
     7   1  -2429.14914192      0.00436775      958.61      0.00961523     2110.30      0.2616
     8   1  -2429.14914191      0.00436775      958.61      0.00961524     2110.30      0.2616
     9   1  -2429.14649819      0.00701148     1538.84      0.01225896     2690.53      0.3336
    10   1  -2429.11409537      0.03941430     8650.44      0.04466178     9802.13      1.2153
    11   1  -2429.11409521      0.03941446     8650.47      0.04466194     9802.16      1.2153
    12   1  -2429.11409510      0.03941457     8650.50      0.04466205     9802.19      1.2153
    13   1  -2429.11409507      0.03941460     8650.50      0.04466208     9802.19      1.2153
    14   1  -2429.11409504      0.03941463     8650.51      0.04466211     9802.20      1.2153
    15   1  -2429.05660244      0.09690722    21268.68      0.10215470    22420.37      2.7798

 E0 =  -2429.15350967 is the energy of the lowest zeroth-order state
 E1 =  -2429.15875715 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.70010737  0.00000001 -0.00000001  0.00000000 -0.00000001  0.70710710 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000001  0.77673492 -0.00000008 -0.00000001 -0.22409467  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00039595 -0.00000000 -0.00000000 -0.00023669 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000001  0.00000007  0.70010560 -0.00000001 -0.00000001  0.00000000  0.70710888 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000001  0.00000001  0.70010942  0.00000000  0.00000000 -0.00000000 -0.70710499

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001  0.00000007  0.70010969 -0.00000001 -0.00000001 -0.00000000 -0.70710469  0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00009905 -0.00000000  0.00000000 -0.00082882  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.19429499  0.00000004  0.00000000  0.78471806 -0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00029691 -0.00000000 -0.00000000  0.00059214  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.58243797  0.00000005  0.00000001 -0.56062460 -0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.70010808  0.00000001 -0.00000001  0.00000000 -0.00000001 -0.70710647  0.00000000 -0.00000000

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000001  0.00000001  0.70010603  0.00000000 -0.00000000  0.00000000  0.70710857

 10  1     1    1  |0 0>        0.00000000  0.00000001  0.14035157 -0.00000000 -0.00000000  0.00000000 -0.00000029  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.14035080  0.00000000 -0.00000000 -0.00000000 -0.00000075
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.14035083 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000045  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00714689  0.00000000 -0.00000000  0.14016776 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000364 -0.00000000 -0.00000000  0.00014805  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.14016772 -0.00000001 -0.00000000 -0.00714762 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00007145 -0.00000000 -0.00000000 -0.00000755 -0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000000 -0.00000033  0.00000000 -0.00000000 -0.00000044  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.00000000  0.00000000  0.09924329  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.57178598  0.00000000  0.00000000  0.00000000 -0.10523646  0.04535830  0.07995336
                               -0.00062987 -0.00000000 -0.00000000  0.00000000  0.00000069 -0.00000096 -0.00000052

  3  1     3    1  |1 1>+      -0.00000000 -0.09924305  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.09924378 -0.00000000  0.00000000  0.00000000

  5  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.09924405  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00062987  0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000241  0.00000052
                                0.57178770  0.00000000 -0.00000000 -0.00000000  0.01333699 -0.11381685  0.07995375

  7  1     1    1  |1 1>-       0.00062987 -0.00000000  0.00000000  0.00000000  0.00000060  0.00000145  0.00000052
                                0.57178739 -0.00000000  0.00000000 -0.00000000  0.09189919  0.06845791  0.07995293

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.09924275  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.09924222 -0.00000000  0.00000000  0.00000000

 10  1     1    1  |0 0>        0.00000000  0.99010173 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.99010184  0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000  0.99010184  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000049 -0.00000000  0.00000000 -0.00000000  0.17435198  0.97462982 -0.00000009
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000114 -0.00002064  0.00000000

 14  1     5    1  |0 0>       -0.00000007 -0.00000000 -0.00000000 -0.00000001  0.97462985 -0.17435187 -0.00000003
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000636  0.00000369  0.00000000

 15  1     6    1  |0 0>       -0.13848318  0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000021  0.99036477
                                0.00015255  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000639



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        49.02%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   60.33%    0.00%    0.00%    5.02%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   49.01%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   49.02%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>          0.00%    0.00%   49.02%    0.00%    0.00%    0.00%   50.00%    0.00%
  6  1     3    1  |1 0>          0.00%    3.78%    0.00%    0.00%   61.58%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   33.92%    0.00%    0.00%   31.43%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        49.02%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.01%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.00%    1.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    1.97%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          1.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.01%    0.00%    0.00%    1.96%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    1.96%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.98%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        32.69%    0.00%    0.00%    0.00%    1.11%    0.21%    0.64%
  3  1     3    1  |1 1>+         0.00%    0.98%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.98%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.98%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         32.69%    0.00%    0.00%    0.00%    0.02%    1.30%    0.64%
  7  1     1    1  |1 1>-        32.69%    0.00%    0.00%    0.00%    0.84%    0.47%    0.64%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.98%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.98%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%   98.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   98.03%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%   98.03%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.04%   94.99%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   94.99%    3.04%    0.00%
 15  1     6    1  |0 0>          1.92%    0.00%    0.00%    0.00%    0.00%    0.00%   98.08%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1035.97       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      292.44       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       277.29     80.45     17.27    137.24     35.91      2.52      0.30      3.19
 REAL TIME  *       311.00 SEC
 DISK USED  *       351.45 MB (local),        7.56 GB (total)
 SF USED    *         2.15 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCVQZ-X2C energy=  -2429.056602444538

              CI              CI           MULTI         RHF-SCF
  -2428.99948608  -2429.09412668  -2428.06297640  -2427.84912444
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
