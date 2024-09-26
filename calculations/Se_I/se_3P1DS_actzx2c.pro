
 Working directory              : /wrk/irikura/molpro.NZ9REoIqh8/
 Global scratch directory       : /wrk/irikura/molpro.NZ9REoIqh8/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.NZ9REoIqh8/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Se SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Se};
 
 basis=AWCVTZ-X2C
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Se SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 27-Aug-24          TIME: 16:40:39  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AWCVTZ-X2C
 SETTING DKHO           =       101.00000000                                  
 SETTING NT             =         3.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry SE     S aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry SE     P aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry SE     D aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry SE     F aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry SE     G aug-cc-pwCVTZ-X      selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         198
 NUMBER OF SYMMETRY AOS:          168
 NUMBER OF CONTRACTIONS:          100   (   48Ag  +   52Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     15.991 MB (compressed) written to integral file ( 16.0%)

     Node minimum: 0.786 MB, node maximum: 2.359 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     539064.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     539064      RECORD LENGTH: 524288

 Memory used in sort:       1.10 MW

 SORT1 READ    12736444. AND WROTE      107439. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1292755. AND WROTE     6503791. INTEGRALS IN     48 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      538852.  Node maximum:      543546. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.123E-03 0.244E-02 0.165E-01 0.443E-01 0.443E-01 0.443E-01 0.443E-01 0.443E-01
         2 0.414E-02 0.414E-02 0.414E-02 0.141E-01 0.141E-01 0.141E-01 0.763E-01 0.763E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.17      0.93
 REAL TIME  *         1.96 SEC
 DISK USED  *        29.42 MB (local),      409.06 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   9   6

 NELEC=   33   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2427.78353566   -2427.78353566     0.00D+00     0.16D+00     0     0       0.00      0.00    start
   2    -2427.83954204      -0.05600638     0.51D-02     0.13D-01     1     0       0.01      0.01    diag2
   3    -2427.84238264      -0.00284060     0.36D-02     0.35D-02     2     0       0.00      0.01    diag2
   4    -2427.84293485      -0.00055222     0.68D-03     0.24D-02     3     0       0.01      0.02    diag2
   5    -2427.84297798      -0.00004312     0.16D-03     0.71D-03     4     0       0.01      0.03    diag2
   6    -2427.84297863      -0.00000065     0.25D-04     0.73D-04     5     0       0.00      0.03    diag2
   7    -2427.84297864      -0.00000001     0.32D-05     0.12D-04     6     0       0.01      0.04    diag2
   8    -2427.84297864      -0.00000000     0.24D-06     0.11D-05     7     0       0.01      0.05    fixocc
   9    -2427.84297864      -0.00000000     0.27D-07     0.57D-07     0     0       0.01      0.06    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2427.842978644976
  RHF One-electron energy           -3366.802429099553
  RHF Two-electron energy             938.959450454577
  RHF Kinetic energy                 2588.160908933979
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.938057201260

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -468.48507     1  1  s    0.99999
    2.1     2.00000   -62.72196     1  2  s    0.99981
    3.1     2.00000    -9.59419     1  3  s    0.99905
    4.1     2.00000    -2.97352     1  1  d1-  0.99713
    5.1     2.00000    -2.97352     1  1  d1+  0.99723
    6.1     2.00000    -2.97352     1  1  d2-  1.00029
    7.1     2.00000    -2.97352     1  1  d2+  1.00040
    8.1     2.00000    -2.97352     1  1  d0   1.00048
    9.1     2.00000    -1.19171     1  4  s    1.08271
    1.2     2.00000   -55.03336     1  1  pz   0.99970
    2.2     2.00000   -55.03336     1  1  py   0.99967
    3.2     2.00000   -55.03336     1  1  px   0.99989
    4.2     2.00000    -7.10046     1  2  pz   0.99950
    5.2     2.00000    -7.10046     1  2  py   0.99950
    6.2     2.00000    -7.10046     1  2  px   0.99950
    7.2     1.00000    -0.78650     1  3  pz   1.14719
    8.2     1.00000    -0.78650     1  3  py   1.14719
    9.2     1.00000    -0.78650     1  3  px   1.14719


 HOMO      9.2    -0.786501 =     -21.4018eV
 LUMO     10.1    -0.118418 =      -3.2223eV
 LUMO-HOMO         0.668083 =      18.1795eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.54       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.24      0.07      0.93
 REAL TIME  *         2.91 SEC
 DISK USED  *        30.33 MB (local),      419.97 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      82 (   39   43)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.909D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.870D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.241D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.156D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.447D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 3 5 2 1 1   5 3 2 4 6 1 2 3 5 6   4 3 5 2 4 6 1 2 3 5   4 611 9 712 8151410
                                       13 1 4 6 2 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.254D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.289D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.128D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.631D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.631D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.388D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.388D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 3   2 1 3 2 110 8 4 5 9   7 6 3 2 1 810 9 7 5   4 6 6 4 5 7 9 810 3
                                        2 1 6 5 4 9 7 810 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  764  ( 26 closed/active, 570 closed/virtual, 0 active/active, 168 active/virtual )
 Total number of variables:    833
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -2428.06881113   -2428.11140437   -0.04259324    0.27683356 0.00001808 0.00000000  0.20E+00      0.27
   2    6   10    0  -2428.11292951   -2428.11309366   -0.00016415    0.01648103 0.00000023 0.00000000  0.13E-01      0.61
   3   21   42    0  -2428.11309409   -2428.11309410   -0.00000000    0.00007098 0.00000003 0.00000000  0.49E-04      1.07

 CONVERGENCE REACHED!  Final gradient:    0.00000009 ( 0.93E-07)
                       Final energy:  -2428.11309410
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2428.150489556916
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.42920770
 One electron energy                         -3379.25608493
 Two electron energy                           951.10559537
 Virial ratio                                    1.93807877
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2428.150489556831
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.42920771
 One electron energy                         -3379.25608494
 Two electron energy                           951.10559539
 Virial ratio                                    1.93807877
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2428.150489556705
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.42920771
 One electron energy                         -3379.25608497
 Two electron energy                           951.10559541
 Virial ratio                                    1.93807877
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2428.101890062624
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.42920770
 One electron energy                         -3379.25608493
 Two electron energy                           951.15419486
 Virial ratio                                    1.93806000
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2428.101890062620
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.42920770
 One electron energy                         -3379.25608493
 Two electron energy                           951.15419487
 Virial ratio                                    1.93806000
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2428.101890062575
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.42920771
 One electron energy                         -3379.25608494
 Two electron energy                           951.15419488
 Virial ratio                                    1.93806000
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2428.101890062521
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.42920771
 One electron energy                         -3379.25608497
 Two electron energy                           951.15419491
 Virial ratio                                    1.93806000
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2428.101890062509
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.42920772
 One electron energy                         -3379.25608497
 Two electron energy                           951.15419491
 Virial ratio                                    1.93806000
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2428.056927880336
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.36357974
 One electron energy                         -3379.03750915
 Two electron energy                           950.98058127
 Virial ratio                                    1.93806641
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000007176
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999992824
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999999
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.683944892876
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999917644
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000073010
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000025055
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.316080892373
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999992825
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000007342
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999833
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.092504444186
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000095784
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999924919
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999983012
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.907447759011
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999999
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999833
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000168
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.223550662938
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.999999986571
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000002071
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999991932
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.776471348617
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 5 2 4 1 1   6 3 5 2 4 1 6 3 5 2   4 6 3 5 2 4 1 6 3 5   2 4101311151412 8 7
                                        9 1 6 3 5 2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 3 2 2   3 1 2 3 1 9 7 5 810   6 4 2 3 1 9 7 510 8   6 4 7 9 510 8 6 4 2
                                        3 1 7 9 5 810 6 4 2   3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -468.10989     1  1  s    0.99999
    2.1     2.00000   -62.34859     1  2  s    0.99980
    3.1     2.00000    -9.22161     1  3  s    0.99887
    4.1     2.00000    -2.60204     1  1  d1-  1.00000
    5.1     2.00000    -2.60204     1  1  d2-  1.00000
    6.1     2.00000    -2.60204     1  1  d2+  1.00000
    7.1     2.00000    -2.60204     1  1  d0   1.00000
    8.1     2.00000    -2.60204     1  1  d1+  1.00000
    9.1     1.99364    -0.86312     1  4  s    1.00131
    1.2     2.00000   -54.66041     1  1  py   0.99995
    2.2     2.00000   -54.66041     1  1  pz   0.99995
    3.2     2.00000   -54.66041     1  1  px   0.99995
    4.2     2.00000    -6.72941     1  2  py   0.99964
    5.2     2.00000    -6.72941     1  2  pz   0.99964
    6.2     2.00000    -6.72941     1  2  px   0.99964
    7.2     1.33545    -0.26703     1  3  px   0.99069
    8.2     1.33545    -0.26703     1  3  pz   0.99069
    9.2     1.33545    -0.26703     1  3  py   0.99069
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a2a         -0.00000109     -0.00001290      1.00000000
 2 2aa          1.00000000     -0.00008470      0.00000109
 2 aa2          0.00008470      1.00000000      0.00001290
 
 Energy:    -2428.15048956  -2428.15048956  -2428.15048956
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202          0.79335250     -0.00020953     -0.00000344      0.00003055     -0.19302444      0.56903066
 2 022         -0.22951220      0.00005537      0.00000655      0.00011469      0.78357565      0.56903066
 2 ba2         -0.00000172      0.00011220     -0.70710677     -0.00001802      0.00000540     -0.00000000
 2 ab2          0.00000172     -0.00011220      0.70710677      0.00001802     -0.00000540      0.00000000
 2 b2a          0.00005643     -0.00001766      0.00001802     -0.70710677      0.00012002      0.00000000
 2 a2b         -0.00005643      0.00001766     -0.00001802      0.70710677     -0.00012002     -0.00000000
 2 2ba         -0.00018800     -0.70710675     -0.00011220      0.00001764     -0.00000510      0.00000000
 2 2ab          0.00018800      0.70710675      0.00011220     -0.00001764      0.00000510     -0.00000000
 2 220         -0.56384030      0.00015416     -0.00000311     -0.00014524     -0.59055121      0.56903066
 0 222         -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.16915179
 
 Energy:    -2428.10189006  -2428.10189006  -2428.10189006  -2428.10189006  -2428.10189006  -2428.05692788
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.82       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.26      1.01      0.07      0.93
 REAL TIME  *         4.23 SEC
 DISK USED  *        40.00 MB (local),      535.99 MB (total)
 SF USED    *        24.30 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2428.150490   2.0
    -2428.150490   2.0
    -2428.150490   2.0
    -2428.101890   6.0
    -2428.101890   6.0
    -2428.101890   6.0
    -2428.101890   6.0
    -2428.101890   6.0
    -2428.056928  -0.0
                                                  


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
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.07 sec, npass=  1  Memory used:   0.64 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2428.15048956
     2     -2428.15048956
     3     -2428.15048956

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         23160
 Number of doubly external configurations:        827988
 Total number of contracted configurations:       851184
 Total number of uncontracted configurations:    2679804

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    439655 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2428.15048956     0.00000000    -0.95388574  0.30D-01  0.86D-01     0.14
    1     2     2     1.00000000     0.00000000 -2428.15048956     0.00000000    -0.95412576  0.30D-01  0.86D-01     0.14
    1     3     3     1.00000000     0.00000000 -2428.15048956     0.00000000    -0.95409337  0.30D-01  0.86D-01     0.14
    2     1     1     1.07583247    -0.77238421 -2428.92287376    -0.77238421    -0.01747012  0.20D-02  0.14D-02     2.32
    2     2     2     1.07598055    -0.77228686 -2428.92277641    -0.77228686    -0.01757373  0.20D-02  0.14D-02     2.32
    2     3     3     1.07601185    -0.77227974 -2428.92276930    -0.77227974    -0.01757193  0.20D-02  0.14D-02     2.32
    3     1     1     1.06488620    -0.78873960 -2428.93922915    -0.01635539    -0.00032861  0.26D-04  0.29D-04     4.35
    3     2     2     1.06488184    -0.78873914 -2428.93922870    -0.01645228    -0.00032901  0.26D-04  0.29D-04     4.35
    3     3     3     1.06488369    -0.78873908 -2428.93922863    -0.01645933    -0.00032890  0.26D-04  0.29D-04     4.35
    4     1     1     1.06400427    -0.78905560 -2428.93954515    -0.00031600    -0.00001181  0.17D-05  0.77D-06     6.36
    4     2     2     1.06400458    -0.78905558 -2428.93954513    -0.00031643    -0.00001182  0.17D-05  0.78D-06     6.36
    4     3     3     1.06400285    -0.78905556 -2428.93954512    -0.00031649    -0.00001184  0.17D-05  0.78D-06     6.36
    5     1     1     1.06402290    -0.78906690 -2428.93955646    -0.00001130    -0.00000040  0.72D-07  0.27D-07     8.36
    5     2     2     1.06402305    -0.78906690 -2428.93955646    -0.00001132    -0.00000040  0.72D-07  0.27D-07     8.36
    5     3     3     1.06402308    -0.78906690 -2428.93955646    -0.00001133    -0.00000040  0.72D-07  0.27D-07     8.36
    6     1     1     1.06401800    -0.78906731 -2428.93955687    -0.00000041    -0.00000001  0.15D-08  0.17D-08    10.37
    6     2     2     1.06401794    -0.78906731 -2428.93955687    -0.00000042    -0.00000001  0.15D-08  0.17D-08    10.37
    6     3     3     1.06401802    -0.78906731 -2428.93955687    -0.00000042    -0.00000001  0.15D-08  0.17D-08    10.37


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.8%
 P   0.4%  20.3%  27.4%

 Initialization:   1.3%
 Other:           49.8%

 Total CPU:       10.4 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/           0.0000000   0.9694484   0.0000000
 2222222222//2           0.9694483   0.0000000   0.0000000
 22222222222//           0.0000000   0.0000000   0.9694483

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.969448    0.000000
 2           0.000000    0.000000    0.969448
 3           0.969448    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969448    0.000000    0.000000
 2           0.000000    0.969448    0.000000
 3           0.000000    0.000000    0.969448


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96944833 (fixed)   0.96944833 (relaxed)   0.96944833 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000389   -0.00001776   -0.70413864
 Singles      0.01233775   -0.03985129   -0.04660246
 Pairs        0.05168050    0.00000000   -0.03832621
 Total        1.06402214   -0.03986904   -0.78906731
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.15048956
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.77118536
 One electron energy                -3378.23195949
 Two electron energy                  949.29240262
 Virial quotient                       -0.93825965
 Correlation energy                    -0.78906731
 !MRCI STATE 1.1 Energy             -2428.939556870785

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.99007465 (Davidson, fixed reference)
 Cluster corrected energies         -2428.99007465 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.99007465 (Davidson, rotated reference)

 Cluster corrected energies         -2428.98800248 (Pople, fixed reference)
 Cluster corrected energies         -2428.98800248 (Pople, relaxed reference)
 Cluster corrected energies         -2428.98800248 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96944836 (fixed)   0.96944836 (relaxed)   0.96944836 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000389   -0.00001776   -0.00001958
 Singles      0.01233772   -0.03985125   -0.04660246
 Pairs        0.05168047   -0.74919830   -0.74244528
 Total        1.06402209   -0.78906731   -0.78906731
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.15048956
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.77117943
 One electron energy                -3378.23195548
 Two electron energy                  949.29239861
 Virial quotient                       -0.93825966
 Correlation energy                    -0.78906731
 !MRCI STATE 2.1 Energy             -2428.939556870748

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.99007461 (Davidson, fixed reference)
 Cluster corrected energies         -2428.99007461 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.99007461 (Davidson, rotated reference)

 Cluster corrected energies         -2428.98800244 (Pople, fixed reference)
 Cluster corrected energies         -2428.98800244 (Pople, relaxed reference)
 Cluster corrected energies         -2428.98800244 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96944832 (fixed)   0.96944832 (relaxed)   0.96944832 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000389   -0.00001776   -0.70413853
 Singles      0.01233781   -0.03985138   -0.04660251
 Pairs        0.05168046   -0.00000000   -0.03832627
 Total        1.06402216   -0.03986914   -0.78906731
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.15048956
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.77118730
 One electron energy                -3378.23195975
 Two electron energy                  949.29240288
 Virial quotient                       -0.93825965
 Correlation energy                    -0.78906731
 !MRCI STATE 3.1 Energy             -2428.939556870733

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.99007466 (Davidson, fixed reference)
 Cluster corrected energies         -2428.99007466 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.99007466 (Davidson, rotated reference)

 Cluster corrected energies         -2428.98800249 (Pople, fixed reference)
 Cluster corrected energies         -2428.98800249 (Pople, relaxed reference)
 Cluster corrected energies         -2428.98800249 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       20.84       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        12.97     10.69      1.01      0.07      0.93
 REAL TIME  *        16.70 SEC
 DISK USED  *        60.03 MB (local),      776.30 MB (total)
 SF USED    *       215.31 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2428.99007465  AU                              
 SETTING HLSDIAG(2)     =     -2428.99007461  AU                              
 SETTING HLSDIAG(3)     =     -2428.99007466  AU                              


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
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2428.10189006
     2     -2428.10189006
     3     -2428.10189006
     4     -2428.10189006
     5     -2428.10189006
     6     -2428.05692788

 Number of blocks in overlap matrix:   684   Smallest eigenvalue:  0.19D-01
 Number of N-2 electron functions:     826
 Number of N-1 electron functions:     488

 Number of internal configurations:                   49
 Number of singly external configurations:         20024
 Number of doubly external configurations:       1391070
 Total number of contracted configurations:      1411143
 Total number of uncontracted configurations:    2286729

 Diagonal Coupling coefficients finished.               Storage:    441505 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    500227 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2428.10189006    -0.00000000    -0.95436875  0.31D-01  0.82D-01     0.15
    1     2     2     1.00000000     0.00000000 -2428.10189006    -0.00000000    -0.95633437  0.32D-01  0.83D-01     0.15
    1     3     3     1.00000000     0.00000000 -2428.10189006     0.00000000    -0.95628291  0.31D-01  0.83D-01     0.15
    1     4     4     1.00000000     0.00000000 -2428.10189006     0.00000000    -0.95575189  0.31D-01  0.83D-01     0.15
    1     5     5     1.00000000     0.00000000 -2428.10189006    -0.00000000    -0.95478332  0.31D-01  0.82D-01     0.15
    1     6     6     1.00000000     0.00000000 -2428.05692788    -0.00000000    -0.93461980  0.54D-02  0.95D-01     0.15
    2     1     1     1.07541696    -0.77968836 -2428.88157842    -0.77968836    -0.01685507  0.18D-02  0.12D-02     7.61
    2     2     2     1.07580427    -0.77952935 -2428.88141942    -0.77952935    -0.01706899  0.18D-02  0.12D-02     7.61
    2     3     3     1.07559288    -0.77949551 -2428.88138557    -0.77949551    -0.01707677  0.19D-02  0.12D-02     7.61
    2     4     4     1.07583660    -0.77944618 -2428.88133624    -0.77944618    -0.01715337  0.19D-02  0.12D-02     7.61
    2     5     5     1.07611744    -0.77928182 -2428.88117188    -0.77928182    -0.01733690  0.19D-02  0.12D-02     7.61
    2     6     6     1.06833898    -0.77261478 -2428.82954266    -0.77261478    -0.01450693  0.11D-02  0.12D-02     7.61
    3     1     1     1.06768489    -0.79515958 -2428.89704965    -0.01547123    -0.00035730  0.26D-04  0.40D-04    15.00
    3     2     2     1.06774935    -0.79515940 -2428.89704947    -0.01563005    -0.00036098  0.26D-04  0.40D-04    15.00
    3     3     3     1.06772494    -0.79515689 -2428.89704695    -0.01566138    -0.00036290  0.26D-04  0.40D-04    15.00
    3     4     4     1.06765627    -0.79515444 -2428.89704450    -0.01570826    -0.00036242  0.26D-04  0.41D-04    15.00
    3     5     5     1.06773996    -0.79515170 -2428.89704176    -0.01586988    -0.00036817  0.27D-04  0.41D-04    15.00
    3     6     6     1.06369471    -0.78608362 -2428.84301150    -0.01346884    -0.00030784  0.16D-04  0.37D-04    15.00
    4     1     1     1.06697523    -0.79551192 -2428.89740199    -0.00035234    -0.00001199  0.13D-05  0.11D-05    22.39
    4     2     2     1.06697997    -0.79551188 -2428.89740195    -0.00035248    -0.00001217  0.13D-05  0.11D-05    22.39
    4     3     3     1.06697175    -0.79551176 -2428.89740183    -0.00035488    -0.00001213  0.13D-05  0.11D-05    22.39
    4     4     4     1.06697932    -0.79551176 -2428.89740183    -0.00035733    -0.00001228  0.13D-05  0.11D-05    22.39
    4     5     5     1.06697973    -0.79551172 -2428.89740178    -0.00036002    -0.00001231  0.13D-05  0.11D-05    22.39
    4     6     6     1.06304646    -0.78638931 -2428.84331719    -0.00030570    -0.00001118  0.14D-05  0.93D-06    22.39
    5     1     1     1.06693668    -0.79552396 -2428.89741402    -0.00001204    -0.00000043  0.48D-07  0.38D-07    29.80
    5     2     2     1.06693784    -0.79552396 -2428.89741402    -0.00001207    -0.00000043  0.49D-07  0.39D-07    29.80
    5     3     3     1.06693884    -0.79552395 -2428.89741401    -0.00001218    -0.00000045  0.54D-07  0.39D-07    29.80
    5     4     4     1.06693951    -0.79552395 -2428.89741401    -0.00001219    -0.00000045  0.55D-07  0.39D-07    29.80
    5     5     5     1.06693947    -0.79552394 -2428.89741401    -0.00001222    -0.00000045  0.54D-07  0.40D-07    29.80
    5     6     6     1.06303705    -0.78640039 -2428.84332827    -0.00001107    -0.00000044  0.58D-07  0.36D-07    29.80
    6     1     1     1.06693204    -0.79552439 -2428.89741446    -0.00000043    -0.00000002  0.96D-09  0.27D-08    37.24
    6     2     2     1.06693222    -0.79552439 -2428.89741446    -0.00000044    -0.00000002  0.94D-09  0.28D-08    37.24
    6     3     3     1.06693216    -0.79552439 -2428.89741445    -0.00000044    -0.00000002  0.11D-08  0.28D-08    37.24
    6     4     4     1.06693237    -0.79552439 -2428.89741445    -0.00000044    -0.00000002  0.10D-08  0.29D-08    37.24
    6     5     5     1.06693233    -0.79552439 -2428.89741445    -0.00000045    -0.00000002  0.11D-08  0.29D-08    37.24
    6     6     6     1.06303340    -0.78640083 -2428.84332871    -0.00000044    -0.00000002  0.13D-08  0.18D-08    37.24


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.4%
 P   0.4%  14.0%  35.3%

 Initialization:   0.3%
 Other:           49.5%

 Total CPU:       37.2 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/\          -0.0000000   0.0000000   0.9680867  -0.0000000  -0.0000000  -0.0000000
 2222222222/2\          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9680867   0.0000000
 2222222222/\2           0.0000000  -0.0000000  -0.0000000   0.9680866  -0.0000000  -0.0000000
 2222222222022          -0.0896758   0.7853361   0.0000000   0.0000000  -0.0000000   0.5525781
 2222222222202           0.7249589  -0.3150066   0.0000000   0.0000000  -0.0000000   0.5525780
 2222222222220          -0.6352833  -0.4703296   0.0000000   0.0000000  -0.0000000   0.5525780
 2222220222222          -0.0000002  -0.0000001  -0.0000000  -0.0000000   0.0000000  -0.1570041

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.953882   -0.000000    0.000000   -0.000000    0.165230   -0.000000
 2          -0.165229    0.000000   -0.000000   -0.000000    0.953882   -0.000000
 3           0.000000    0.968087   -0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.968087   -0.000000    0.000000    0.000000
 5           0.000000   -0.000000   -0.000000    0.968087    0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.969859

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968087    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.968087   -0.000000   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.968087   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.968087   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.968087   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.969859


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95388219 (fixed)   0.96808680 (relaxed)   0.96808680 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007978   -0.00028446   -0.70442291
 Singles      0.01431169   -0.04395651   -0.05186750
 Pairs        0.05262569   -0.00000001   -0.03923398
 Total        1.06701716   -0.04424098   -0.79552439
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10189006
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.76066623
 One electron energy                -3378.13807665
 Two electron energy                  949.24066219
 Virial quotient                       -0.93824719
 Correlation energy                    -0.79552439
 !MRCI STATE 1.1 Energy             -2428.897414455465

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95072824 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95072824 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95072824 (Davidson, rotated reference)

 Cluster corrected energies         -2428.94915629 (Pople, fixed reference)
 Cluster corrected energies         -2428.94915629 (Pople, relaxed reference)
 Cluster corrected energies         -2428.94915629 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95388213 (fixed)   0.96808672 (relaxed)   0.96808672 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007978   -0.00028446   -0.70442265
 Singles      0.01431189   -0.04395669   -0.05186765
 Pairs        0.05262567    0.00000002   -0.03923409
 Total        1.06701734   -0.04424113   -0.79552439
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10189006
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.76065355
 One electron energy                -3378.13807361
 Two electron energy                  949.24065915
 Virial quotient                       -0.93824719
 Correlation energy                    -0.79552439
 !MRCI STATE 2.1 Energy             -2428.897414455027

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95072839 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95072839 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95072839 (Davidson, rotated reference)

 Cluster corrected energies         -2428.94915644 (Pople, fixed reference)
 Cluster corrected energies         -2428.94915644 (Pople, relaxed reference)
 Cluster corrected energies         -2428.94915644 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96808674 (fixed)   0.96808674 (relaxed)   0.96808674 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007978   -0.00028446   -0.70442268
 Singles      0.01431185   -0.04395668   -0.05186784
 Pairs        0.05262565   -0.00000000   -0.03923386
 Total        1.06701729   -0.04424114   -0.79552439
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10189006
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.76061724
 One electron energy                -3378.13809617
 Two electron energy                  949.24068171
 Virial quotient                       -0.93824721
 Correlation energy                    -0.79552439
 !MRCI STATE 3.1 Energy             -2428.897414454480

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95072834 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95072834 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95072834 (Davidson, rotated reference)

 Cluster corrected energies         -2428.94915639 (Pople, fixed reference)
 Cluster corrected energies         -2428.94915639 (Pople, relaxed reference)
 Cluster corrected energies         -2428.94915639 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96808665 (fixed)   0.96808665 (relaxed)   0.96808665 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007978   -0.00028446   -0.70442233
 Singles      0.01431205   -0.04395691   -0.05186795
 Pairs        0.05262566   -0.00000000   -0.03923411
 Total        1.06701749   -0.04424137   -0.79552439
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10189006
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.76056139
 One electron energy                -3378.13802913
 Two electron energy                  949.24061467
 Virial quotient                       -0.93824723
 Correlation energy                    -0.79552439
 !MRCI STATE 4.1 Energy             -2428.897414454445

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95072850 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95072850 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95072850 (Davidson, rotated reference)

 Cluster corrected energies         -2428.94915656 (Pople, fixed reference)
 Cluster corrected energies         -2428.94915656 (Pople, relaxed reference)
 Cluster corrected energies         -2428.94915656 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96808667 (fixed)   0.96808667 (relaxed)   0.96808667 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007978   -0.00028446   -0.70442242
 Singles      0.01431204   -0.04395684   -0.05186793
 Pairs        0.05262563    0.00000000   -0.03923404
 Total        1.06701745   -0.04424130   -0.79552439
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.10189006
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.76060582
 One electron energy                -3378.13808330
 Two electron energy                  949.24066885
 Virial quotient                       -0.93824721
 Correlation energy                    -0.79552439
 !MRCI STATE 5.1 Energy             -2428.897414454086

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95072847 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95072847 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95072847 (Davidson, rotated reference)

 Cluster corrected energies         -2428.94915653 (Pople, fixed reference)
 Cluster corrected energies         -2428.94915653 (Pople, relaxed reference)
 Cluster corrected energies         -2428.94915653 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96985905 (fixed)   0.96988542 (relaxed)   0.96985905 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008254   -0.00013732   -0.00019022
 Singles      0.00353811   -0.01878187   -0.02028431
 Pairs        0.05950050   -0.76748164   -0.76592630
 Total        1.06312114   -0.78640083   -0.78640083
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.05692788
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.71270830
 One electron energy                -3377.88593144
 Two electron energy                  949.04260273
 Virial quotient                       -0.93824368
 Correlation energy                    -0.78640083
 !MRCI STATE 6.1 Energy             -2428.843328710794

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.89296723 (Davidson, fixed reference)
 Cluster corrected energies         -2428.89292176 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.89296723 (Davidson, rotated reference)

 Cluster corrected energies         -2428.89134074 (Pople, fixed reference)
 Cluster corrected energies         -2428.89129436 (Pople, relaxed reference)
 Cluster corrected energies         -2428.89134074 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       86.24       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        52.10     39.11     10.69      1.01      0.07      0.93
 REAL TIME  *        61.76 SEC
 DISK USED  *       125.43 MB (local),        1.52 GB (total)
 SF USED    *       683.03 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2428.95072824  AU                              
 SETTING HLSDIAG(5)     =     -2428.95072839  AU                              
 SETTING HLSDIAG(6)     =     -2428.95072834  AU                              
 SETTING HLSDIAG(7)     =     -2428.95072850  AU                              
 SETTING HLSDIAG(8)     =     -2428.95072847  AU                              
 SETTING HLSDIAG(9)     =     -2428.89296723  AU                              


         HLSDIAG
    -2428.990075
    -2428.990075
    -2428.990075
    -2428.950728
    -2428.950728
    -2428.950728
    -2428.950729
    -2428.950728
    -2428.892967
                                                  

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

 Time for Seward_LS:       5.09 sec

        6950559. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1914 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      5.10 sec, REAL time:      5.21 sec


 SORTLS1 read     7823605. and wrote     7823605. SO integrals in    36 records. CPU time:      0.09 sec, REAL time:      0.13 sec
 SORTLS2 read     7823605. and wrote    38256242. SO integrals in    36 records. CPU time:      0.04 sec, REAL time:      0.07 sec

 FILE SIZES: FILE 1:   166.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   166.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       86.24       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        58.41      6.30     39.11     10.69      1.01      0.07      0.93
 REAL TIME  *        68.31 SEC
 DISK USED  *       125.49 MB (local),        1.90 GB (total)
 SF USED    *       683.03 MB
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

 Original energies:  -2428.939557  -2428.939557  -2428.939557
 Replaced energies:  -2428.990075  -2428.990075  -2428.990075

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -2428.897414  -2428.897414  -2428.897414  -2428.897414  -2428.897414  -2428.843329
 Replaced energies:  -2428.950728  -2428.950728  -2428.950728  -2428.950729  -2428.950728  -2428.892967



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2428.99007466

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00    -625.30
                           -0.00      -0.00    -947.21      -0.00    -669.78       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00       0.00    -669.78       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     669.78      -0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00     669.78      -0.00       0.00       0.00       0.00       0.00
                          947.21      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     -88.27

    4   1.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00    -669.78       0.00       0.00       0.00       0.00      -0.00    -669.78       0.00       0.00

    5   2.1  1.0  0.0      -0.00       0.00     669.78       0.00       0.01       0.00       0.00       0.00    -669.78       0.00
                          669.78       0.00      -0.00      -0.00       0.00       0.00     669.78      -0.00      -0.00    1009.14

    6   3.1  1.0  0.0       0.00    -669.78      -0.00       0.00       0.00       0.00      -0.00     669.78      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -625.30
                           -0.00      -0.00      -0.00       0.00    -669.78       0.00       0.00       0.00     947.21      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00     669.78       0.00       0.01       0.00       0.00
                           -0.00      -0.00      -0.00     669.78       0.00      -0.00      -0.00       0.00      -0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00    -669.78      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00    -947.21       0.00       0.00      88.27

   10   1.1  0.0  0.0    -625.30       0.00       0.00       0.00       0.00       0.00    -625.30       0.00       0.00    8635.54
                           -0.00       0.00      88.27      -0.00   -1009.14       0.00       0.00      -0.00     -88.27       0.00

   11   2.1  0.0  0.0    -462.94       0.00       0.00       0.00       0.00       0.00    -462.94       0.00       0.00       0.00
                           -0.00       0.00    -773.00      -0.00     438.49       0.00       0.00      -0.00     773.00      -0.00

   12   3.1  0.0  0.0      -0.00     673.79      -0.00       0.00       0.00       0.00      -0.00     673.79      -0.00       0.00
                            0.00      -0.00       0.00    -952.89       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   13   4.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00    -673.79       0.00      -0.00       0.00    -952.88      -0.00     673.79      -0.00      -0.00

   14   5.1  0.0  0.0       0.00       0.00    -673.79       0.00       0.00       0.00       0.00       0.00    -673.79       0.00
                          673.80       0.00      -0.00      -0.00      -0.00       0.00    -673.80      -0.00       0.00      -0.00

   15   6.1  0.0  0.0   -1094.68      -0.00      -0.00       0.00       0.00       0.00   -1094.68      -0.00      -0.00       0.00
                            0.00       0.00    1094.69       0.00    1548.12       0.00      -0.00      -0.00   -1094.69      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0    -462.94      -0.00      -0.00       0.00   -1094.68
                            0.00      -0.00      -0.00    -673.80      -0.00

    2   2.1  1.0  1.0       0.00     673.79       0.00       0.00      -0.00
                           -0.00       0.00     673.79      -0.00      -0.00

    3   3.1  1.0  1.0       0.00      -0.00      -0.00    -673.79      -0.00
                          773.00      -0.00      -0.00       0.00   -1094.69

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00     952.89       0.00       0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         -438.49      -0.00      -0.00       0.00   -1548.12

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     952.88      -0.00      -0.00

    7   1.1  1.0 -1.0    -462.94      -0.00      -0.00       0.00   -1094.68
                           -0.00       0.00       0.00     673.80       0.00

    8   2.1  1.0 -1.0       0.00     673.79       0.00       0.00      -0.00
                            0.00      -0.00    -673.79       0.00       0.00

    9   3.1  1.0 -1.0       0.00      -0.00      -0.00    -673.79      -0.00
                         -773.00       0.00       0.00      -0.00    1094.69

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    8635.51       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    8635.52       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    8635.48       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    8635.49       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   21312.62
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by  -2428.99007466 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.003       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -947.212       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.012       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     947.212       0.000      -0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000     947.211      -0.000

    1    1  |1 0>               0.000      -0.000      -0.000       0.003       0.000       0.000       0.000       0.000
                                0.000    -947.212       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.012       0.000      -0.000       0.000
                              947.212       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000    -947.211
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.003       0.000
                               -0.000      -0.000    -947.211      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -947.211       0.000       0.012
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000     947.211       0.000       0.000       0.000
                              947.211      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>            -884.312       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -1009.142       0.000      -0.000       0.000

    2    1  |0 0>            -654.698       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     438.489       0.000      -0.000       0.000

    3    1  |0 0>              -0.000     952.881      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -952.887       0.000      -0.000       0.000      -0.000

    4    1  |0 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -952.882       0.000    -952.889

    5    1  |0 0>               0.000       0.000    -952.879       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000     952.893       0.000

    6    1  |0 0>           -1548.109      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1548.117       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000    -884.312    -654.698      -0.000      -0.000       0.000   -1548.109
                             -947.211       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000     952.881       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000    -952.879      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     952.887       0.000       0.000      -0.000

    2    1  |1 0>             947.211       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1009.142    -438.489      -0.000      -0.000       0.000   -1548.117

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     952.882      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000    -952.893      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     952.889      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -124.829    1093.191      -0.000      -0.000       0.000   -1548.125

    1    1  |0 0>               0.000    8635.541       0.000       0.000       0.000       0.000       0.000
                              124.829       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    8635.510       0.000       0.000       0.000       0.000
                            -1093.191      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    8635.520       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    8635.485       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    8635.491       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   21312.619
                             1548.125      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2428.99523749    -0.00516283    -1133.11      0.00000000        0.00      0.0000
    2 -2428.99523748    -0.00516282    -1133.11      0.00000001        0.00      0.0000
    3 -2428.99523747    -0.00516280    -1133.10      0.00000002        0.01      0.0000
    4 -2428.99523746    -0.00516280    -1133.10      0.00000003        0.01      0.0000
    5 -2428.99523745    -0.00516278    -1133.10      0.00000005        0.01      0.0000
    6 -2428.98575885     0.00431582      947.21      0.00947865     2080.32      0.2579
    7 -2428.98575883     0.00431584      947.22      0.00947867     2080.33      0.2579
    8 -2428.98575882     0.00431585      947.22      0.00947868     2080.33      0.2579
    9 -2428.98309910     0.00697557     1530.96      0.01213839     2664.07      0.3303
   10 -2428.94988148     0.04019319     8821.38      0.04535601     9954.49      1.2342
   11 -2428.94988145     0.04019321     8821.39      0.04535604     9954.50      1.2342
   12 -2428.94988137     0.04019329     8821.41      0.04535612     9954.52      1.2342
   13 -2428.94988132     0.04019334     8821.42      0.04535617     9954.53      1.2342
   14 -2428.94988124     0.04019343     8821.44      0.04535626     9954.55      1.2342
   15 -2428.89131115     0.09876352    21676.09      0.10392635    22809.20      2.8280

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000002 -0.63684270 -0.00000002 -0.00000001 -0.49864645 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.70046805 -0.00000001 -0.00000000  0.00000000  0.43536665
                          -0.00000000  0.00000000 -0.00000000 -0.00212520 -0.00000000 -0.00000000  0.00000000  0.55718807

   3    1  |1 1>+          0.70047269 -0.00000001  0.00000000  0.00000000 -0.00000001 -0.37844672  0.00000000 -0.00000000
                          -0.00074312  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.59730916 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00212521  0.00000000 -0.00000000  0.00000000  0.55718510
                          -0.00000000 -0.00000000  0.00000000  0.70047175 -0.00000001  0.00000000 -0.00000000 -0.43536433

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.11341702 -0.00000000  0.00000001  0.80084439  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00063465  0.00000000  0.00000000 -0.00000000 -0.00000071 -0.00000000
                          -0.00000000 -0.00000002  0.70047464 -0.00000000 -0.00000000 -0.00000000 -0.70710500  0.00000000

   1    1  |1 1>-          0.00074312 -0.00000000  0.00000000  0.00000000  0.00000000  0.59730898 -0.00000000  0.00000000
                           0.70047266 -0.00000001  0.00000000  0.00000000 -0.00000001  0.37844661 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00063465  0.00000000  0.00000000  0.00000000  0.00000071  0.00000000
                          -0.00000000 -0.00000002  0.70047090 -0.00000000 -0.00000000  0.00000000  0.70710856 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.75026210  0.00000002 -0.00000000 -0.30220090  0.00000000  0.00000000 -0.00000000

   1    1  |0 0>          -0.00000000 -0.03634684 -0.00000000 -0.00000000 -0.13173258  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.13173322 -0.00000000 -0.00000000  0.03634729  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.13665518  0.00000000  0.00000000 -0.00000000  0.00000007
                           0.00000000 -0.00000000  0.00000000  0.00041461  0.00000000 -0.00000000 -0.00000000  0.00000009

   4    1  |0 0>           0.00000000  0.00000000 -0.13665640  0.00000000  0.00000000  0.00000000 -0.00000110  0.00000000
                           0.00000000  0.00000000 -0.00012382  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.13665631 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000065 -0.00000000  0.00000000
                          -0.00014498  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000102  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000066  0.00000000  0.00000000 -0.00000012  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.57211825 -0.00000000 -0.00000000 -0.06737216  0.00000000 -0.08894210 -0.07755063
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.09662987  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00008793 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.09662979 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00001768 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00008793  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.09663055  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.57211968 -0.00000000  0.00000000 -0.04334047 -0.00000000  0.10281711 -0.07755104

   3    1  |1 0>           0.00000000 -0.00000670 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.09663018  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00001768  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.09663152 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000670 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.09663123  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.57211652  0.00000000 -0.00000000  0.11071297 -0.00000000 -0.01387477 -0.07755133

   1    1  |0 0>          -0.00000032  0.00000000  0.00000000  0.01087418 -0.00000000  0.99055903 -0.00000003
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000004  0.00000000 -0.00000000  0.99055893 -0.00000000 -0.01087414 -0.00000007
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.99061818  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00090140 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.99061850  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00006873  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.99061849  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00018124  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.13432227 -0.00000000  0.00000000  0.00000016 -0.00000000  0.00000008  0.99093770
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2428.99523749     -0.00516283    -1133.11      0.00000000        0.00      0.0000
     2   1  -2428.99523748     -0.00516282    -1133.11      0.00000001        0.00      0.0000
     3   1  -2428.99523747     -0.00516280    -1133.10      0.00000002        0.01      0.0000
     4   1  -2428.99523746     -0.00516280    -1133.10      0.00000003        0.01      0.0000
     5   1  -2428.99523745     -0.00516278    -1133.10      0.00000005        0.01      0.0000
     6   1  -2428.98575885      0.00431582      947.21      0.00947865     2080.32      0.2579
     7   1  -2428.98575883      0.00431584      947.22      0.00947867     2080.33      0.2579
     8   1  -2428.98575882      0.00431585      947.22      0.00947868     2080.33      0.2579
     9   1  -2428.98309910      0.00697557     1530.96      0.01213839     2664.07      0.3303
    10   1  -2428.94988148      0.04019319     8821.38      0.04535601     9954.49      1.2342
    11   1  -2428.94988145      0.04019321     8821.39      0.04535604     9954.50      1.2342
    12   1  -2428.94988137      0.04019329     8821.41      0.04535612     9954.52      1.2342
    13   1  -2428.94988132      0.04019334     8821.42      0.04535617     9954.53      1.2342
    14   1  -2428.94988124      0.04019343     8821.44      0.04535626     9954.55      1.2342
    15   1  -2428.89131115      0.09876352    21676.09      0.10392635    22809.20      2.8280

 E0 =  -2428.99007466 is the energy of the lowest zeroth-order state
 E1 =  -2428.99523749 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000002 -0.63684270 -0.00000002 -0.00000001 -0.49864645 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.70046805 -0.00000001 -0.00000000  0.00000000  0.43536665
                               -0.00000000  0.00000000 -0.00000000 -0.00212520 -0.00000000 -0.00000000  0.00000000  0.55718807

  3  1     3    1  |1 1>+       0.70047269 -0.00000001  0.00000000  0.00000000 -0.00000001 -0.37844672  0.00000000 -0.00000000
                               -0.00074312  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.59730916 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00212521  0.00000000 -0.00000000  0.00000000  0.55718510
                               -0.00000000 -0.00000000  0.00000000  0.70047175 -0.00000001  0.00000000 -0.00000000 -0.43536433

  5  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.11341702 -0.00000000  0.00000001  0.80084439  0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00063465  0.00000000  0.00000000 -0.00000000 -0.00000071 -0.00000000
                               -0.00000000 -0.00000002  0.70047464 -0.00000000 -0.00000000 -0.00000000 -0.70710500  0.00000000

  7  1     1    1  |1 1>-       0.00074312 -0.00000000  0.00000000  0.00000000  0.00000000  0.59730898 -0.00000000  0.00000000
                                0.70047266 -0.00000001  0.00000000  0.00000000 -0.00000001  0.37844661 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00063465  0.00000000  0.00000000  0.00000000  0.00000071  0.00000000
                               -0.00000000 -0.00000002  0.70047090 -0.00000000 -0.00000000  0.00000000  0.70710856 -0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.75026210  0.00000002 -0.00000000 -0.30220090  0.00000000  0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000000 -0.03634684 -0.00000000 -0.00000000 -0.13173258  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.13173322 -0.00000000 -0.00000000  0.03634729  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.13665518  0.00000000  0.00000000 -0.00000000  0.00000007
                                0.00000000 -0.00000000  0.00000000  0.00041461  0.00000000 -0.00000000 -0.00000000  0.00000009

 13  1     4    1  |0 0>        0.00000000  0.00000000 -0.13665640  0.00000000  0.00000000  0.00000000 -0.00000110  0.00000000
                                0.00000000  0.00000000 -0.00012382  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.13665631 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000065 -0.00000000  0.00000000
                               -0.00014498  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000102  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000000  0.00000066  0.00000000  0.00000000 -0.00000012  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.57211825 -0.00000000 -0.00000000 -0.06737216  0.00000000 -0.08894210 -0.07755063
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.09662987  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00008793 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000 -0.09662979 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00001768 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00008793  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.09663055  0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.57211968 -0.00000000  0.00000000 -0.04334047 -0.00000000  0.10281711 -0.07755104

  6  1     3    1  |1 0>        0.00000000 -0.00000670 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.09663018  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00001768  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.09663152 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000670 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.09663123  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.57211652  0.00000000 -0.00000000  0.11071297 -0.00000000 -0.01387477 -0.07755133

 10  1     1    1  |0 0>       -0.00000032  0.00000000  0.00000000  0.01087418 -0.00000000  0.99055903 -0.00000003
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000004  0.00000000 -0.00000000  0.99055893 -0.00000000 -0.01087414 -0.00000007
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.99061818  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00090140 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000  0.99061850  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00006873  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000  0.99061849  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00018124  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>        0.13432227 -0.00000000  0.00000000  0.00000016 -0.00000000  0.00000008  0.99093770
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   40.56%    0.00%    0.00%   24.86%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   49.07%    0.00%    0.00%    0.00%   50.00%
  3  1     3    1  |1 1>+        49.07%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   49.07%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>          0.00%    1.29%    0.00%    0.00%   64.14%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   49.07%    0.00%    0.00%    0.00%   50.00%    0.00%
  7  1     1    1  |1 1>-        49.07%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%   49.07%    0.00%    0.00%    0.00%   50.00%    0.00%
  9  1     3    1  |1 1>-         0.00%   56.29%    0.00%    0.00%    9.13%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.13%    0.00%    0.00%    1.74%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    1.74%    0.00%    0.00%    0.13%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    1.87%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    1.87%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          1.87%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+        32.73%    0.00%    0.00%    0.45%    0.00%    0.79%    0.60%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.93%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.93%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.93%    0.00%    0.00%
  5  1     2    1  |1 0>         32.73%    0.00%    0.00%    0.19%    0.00%    1.06%    0.60%
  6  1     3    1  |1 0>          0.00%    0.93%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.93%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.93%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        32.73%    0.00%    0.00%    1.23%    0.00%    0.02%    0.60%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%   98.12%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   98.12%    0.00%    0.01%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.13%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%   98.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%   98.13%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          1.80%    0.00%    0.00%    0.00%    0.00%    0.00%   98.20%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       86.24       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        81.57     23.16      6.30     39.11     10.69      1.01      0.07      0.93
 REAL TIME  *        95.64 SEC
 DISK USED  *       125.49 MB (local),        1.90 GB (total)
 SF USED    *       683.03 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCVTZ-X2C energy=  -2428.891311146217

              CI              CI           MULTI         RHF-SCF
  -2428.84332871  -2428.93955687  -2428.05692788  -2427.84297864
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
