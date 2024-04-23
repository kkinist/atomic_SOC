
 Working directory              : /wrk/irikura/molpro.jyYVs5Ei1r/
 Global scratch directory       : /wrk/irikura/molpro.jyYVs5Ei1r/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.jyYVs5Ei1r/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Ge SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCVTZ-DK
 
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 16:57:03  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry GE     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GE     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GE     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GE     F aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GE     G aug-cc-pwCVTZ-DK     selected for orbital group  1


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

     15.991 MB (compressed) written to integral file ( 15.6%)

     Node minimum: 0.786 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     539064.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     539064      RECORD LENGTH: 524288

 Memory used in sort:       1.10 MW

 SORT1 READ    12736444. AND WROTE      107437. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1292714. AND WROTE     6503791. INTEGRALS IN     84 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

 Node minimum:      538852.  Node maximum:      543546. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.180E-03 0.254E-02 0.170E-01 0.535E-01 0.535E-01 0.535E-01 0.535E-01 0.535E-01
         2 0.390E-02 0.390E-02 0.390E-02 0.183E-01 0.183E-01 0.183E-01 0.759E-01 0.759E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.99      0.77
 REAL TIME  *         1.57 SEC
 DISK USED  *        29.42 MB (local),      408.95 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   9   6

 NELEC=   33   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2097.09248454   -2097.09248454     0.00D+00     0.15D+00     0     0       0.00      0.00    start
   2    -2097.09533107      -0.00284652     0.12D-02     0.56D-02     1     0       0.01      0.01    diag2
   3    -2097.09562311      -0.00029204     0.73D-03     0.14D-02     2     0       0.00      0.01    diag2
   4    -2097.09573009      -0.00010698     0.34D-03     0.93D-03     3     0       0.00      0.01    diag2
   5    -2097.09574569      -0.00001560     0.96D-04     0.30D-03     4     0       0.01      0.02    diag2
   6    -2097.09574676      -0.00000107     0.14D-04     0.68D-04     5     0       0.00      0.02    diag2
   7    -2097.09574690      -0.00000014     0.42D-05     0.19D-04     6     0       0.01      0.03    diag2
   8    -2097.09574691      -0.00000002     0.11D-05     0.13D-04     7     0       0.00      0.03    fixocc
   9    -2097.09574691      -0.00000000     0.17D-06     0.26D-05     8     0       0.00      0.03    diag2
  10    -2097.09574691      -0.00000000     0.14D-07     0.96D-07     0     0       0.01      0.04    diag/orth

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2097.095746912984
  RHF One-electron energy           -2930.714707295746
  RHF Two-electron energy             833.618960382762
  RHF Kinetic energy                 2226.566287188656
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.941851926430

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.56824     1  1  s    0.99373
    2.1     2.00000   -53.17910     1  2  s    1.03257
    3.1     2.00000    -7.15128     1  3  s    0.97036
    4.1     2.00000    -1.34711     1  1  d0   0.60474    1  1  d2+  0.79627
    5.1     2.00000    -1.34711     1  1  d1-  0.99988
    6.1     2.00000    -1.34711     1  1  d2-  0.99988
    7.1     2.00000    -1.34711     1  1  d1+  0.99984
    8.1     2.00000    -1.34711     1  1  d0   0.79624    1  1  d2+ -0.60472
    9.1     2.00000    -0.33256     1  4  s    0.90641
    1.2     2.00000   -46.27158     1  1  py   0.99994
    2.2     2.00000   -46.27158     1  1  pz   0.99994
    3.2     2.00000   -46.27158     1  1  px   0.99994
    4.2     2.00000    -4.95671     1  2  py   0.99993
    5.2     2.00000    -4.95671     1  2  pz   0.99993
    6.2     2.00000    -4.95671     1  2  px   0.99993
    7.2     1.00000    -0.05786     1  3  px   0.80493
    8.2     1.00000    -0.05786     1  3  pz   0.80493
    9.2     1.00000    -0.05786     1  3  py   0.80493


 HOMO      9.2    -0.057860 =      -1.5744eV
 LUMO     10.1     0.185382 =       5.0445eV
 LUMO-HOMO         0.243242 =       6.6189eV

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
 CPU TIMES  *         1.04      0.05      0.77
 REAL TIME  *         2.05 SEC
 DISK USED  *        30.37 MB (local),      420.33 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      82 (   39   43)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.432D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.137D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.124D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.131D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.435D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 6 3 4 2 1 1   2 6 3 4 5 1 2 4 3 6   5 2 4 3 6 5 1 4 2 3   6 5 912 81510141311
                                        7 1 5 6 3 2 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.230D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.240D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.125D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.675D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.675D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 3 2 1   3 2 1 3 2 9 7 4 5 6   810 4 6 5 7 8 910 2   3 1 4 6 9 8 710 5 2
                                        3 110 5 8 7 9 6 4 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  764  ( 26 closed/active, 570 closed/virtual, 0 active/active, 168 active/virtual )
 Total number of variables:    890
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   23   32    0  -2097.01868528   -2097.04075266   -0.02206738    0.12848489 0.01835314 0.00000000  0.40E+00      0.42
   2    8   14    0  -2097.03491309   -2097.04104195   -0.00612886    0.34482571 0.00002605 0.00000000  0.44E-01      0.79
   3    6   10    0  -2097.04108888   -2097.04108999   -0.00000112    0.00287939 0.00000015 0.00000000  0.12E-02      1.10
   4    3    6    0  -2097.04108999   -2097.04108999    0.00000000    0.00000061 0.00000001 0.00000000  0.51E-06      1.30

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.63E-08)
                       Final energy:  -2097.04108999
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2097.070557054882
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52338576
 One electron energy                         -2922.56776600
 Two electron energy                           825.49720894
 Virial ratio                                    1.94185876
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2097.070557054426
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52338575
 One electron energy                         -2922.56776596
 Two electron energy                           825.49720890
 Virial ratio                                    1.94185876
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2097.070557054369
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52338579
 One electron energy                         -2922.56776611
 Two electron energy                           825.49720906
 Virial ratio                                    1.94185876
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2097.031993751529
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52338575
 One electron energy                         -2922.56776595
 Two electron energy                           825.53577220
 Virial ratio                                    1.94184144
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2097.031993751474
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52338576
 One electron energy                         -2922.56776600
 Two electron energy                           825.53577225
 Virial ratio                                    1.94184144
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2097.031993751116
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52338575
 One electron energy                         -2922.56776596
 Two electron energy                           825.53577221
 Virial ratio                                    1.94184144
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2097.031993750708
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52338579
 One electron energy                         -2922.56776611
 Two electron energy                           825.53577236
 Virial ratio                                    1.94184144
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2097.031993750643
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52338578
 One electron energy                         -2922.56776609
 Two electron energy                           825.53577234
 Virial ratio                                    1.94184144
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2096.998170009820
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.46564935
 One electron energy                         -2922.32612409
 Two electron energy                           825.32795408
 Virial ratio                                    1.94185067
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999992396
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000018085
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999987846
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.076298454369
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000037344
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999962188
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999993545
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.923701160218
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000045980
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999992393
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999960448
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.692640665643
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999909489
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000041773
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000060648
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.307359530556
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999961624
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999989522
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000051706
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.231060879989
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000053167
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.999999996039
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999945807
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.768939309226
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 3 5 4 1 1   2 6 4 5 3 1 2 6 4 3   5 2 6 4 5 3 1 2 6 4   3 5 9 71112 8151410
                                       13 1 6 2 5 3 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 3 2 1   2 3 1 2 3 5 6 410 8   7 9 5 6 4 810 9 7 2   3 1 6 5 4 810 7 9 2
                                        3 1 5 610 8 7 9 4 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.82637     1  1  s    0.99373
    2.1     2.00000   -53.43710     1  2  s    1.03257
    3.1     2.00000    -7.40961     1  3  s    0.97042
    4.1     2.00000    -1.60504     1  1  d1-  0.99999
    5.1     2.00000    -1.60504     1  1  d0   0.99999
    6.1     2.00000    -1.60504     1  1  d2-  0.99999
    7.1     2.00000    -1.60504     1  1  d2+  0.99999
    8.1     2.00000    -1.60504     1  1  d1+  0.99999
    9.1     1.96777    -0.56523     1  4  s    1.00943
    1.2     2.00000   -46.52931     1  1  py   0.99994
    2.2     2.00000   -46.52931     1  1  pz   0.99994
    3.2     2.00000   -46.52931     1  1  px   0.99994
    4.2     2.00000    -5.21438     1  2  py   0.99979
    5.2     2.00000    -5.21438     1  2  pz   0.99979
    6.2     2.00000    -5.21438     1  2  px   0.99979
    7.2     0.67741    -0.06837     1  3  px   0.98406
    8.2     0.67741    -0.06837     1  3  pz   0.98406
    9.2     0.67741    -0.06837     1  3  py   0.98406
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 0aa          0.00008665      0.99372968     -0.00010955
 2 aa0          0.99372967     -0.00008667     -0.00019763
 2 a0a          0.00019467      0.00010172      0.99372966
 0 2aa         -0.00000975     -0.11180924      0.00001233
 0 aa2         -0.11180924      0.00000975      0.00002224
 0 a2a         -0.00002190     -0.00001144     -0.11180924
 
 Energy:    -2097.07055705  -2097.07055705  -2097.07055705
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.78759364     -0.00002018     -0.00018843     -0.00000922     -0.19500942      0.56419939
 2 002         -0.22491361      0.00000126      0.00018445     -0.00011956      0.77958080      0.56419941
 2 ab0          0.00001910      0.70267299      0.00007827     -0.00009378      0.00000434     -0.00000000
 2 ba0         -0.00001910     -0.70267299     -0.00007827      0.00009378     -0.00000434      0.00000000
 2 a0b          0.00003826      0.00009367      0.00000903      0.70267298      0.00012228      0.00000000
 2 b0a         -0.00003826     -0.00009367     -0.00000903     -0.70267298     -0.00012228     -0.00000000
 2 0ba         -0.00013784      0.00007824     -0.70267297      0.00000635      0.00012680      0.00000000
 2 0ab          0.00013784     -0.00007824      0.70267297     -0.00000635     -0.00012680     -0.00000000
 2 200         -0.56268000      0.00001892      0.00000398      0.00012879     -0.58457140      0.56419940
 0 202          0.08861589     -0.00000227     -0.00002120     -0.00000104     -0.02194143     -0.12252497
 0 022         -0.06330980      0.00000213      0.00000045      0.00001449     -0.06577290     -0.12252497
 0 220         -0.02530610      0.00000014      0.00002075     -0.00001345      0.08771434     -0.12252497
 0 ba2          0.00000215      0.07906107      0.00000881     -0.00001055      0.00000049     -0.00000000
 0 ab2         -0.00000215     -0.07906107     -0.00000881      0.00001055     -0.00000049      0.00000000
 0 2ab         -0.00001551      0.00000880     -0.07906107      0.00000071      0.00001427      0.00000000
 0 2ba          0.00001551     -0.00000880      0.07906107     -0.00000071     -0.00001427     -0.00000000
 0 a2b         -0.00000430     -0.00001054     -0.00000102     -0.07906107     -0.00001376     -0.00000000
 0 b2a          0.00000430      0.00001054      0.00000102      0.07906107      0.00001376      0.00000000
 
 Energy:    -2097.03199375  -2097.03199375  -2097.03199375  -2097.03199375  -2097.03199375  -2096.99817001
 


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
 CPU TIMES  *         2.25      1.20      0.05      0.77
 REAL TIME  *         3.59 SEC
 DISK USED  *        40.00 MB (local),      535.89 MB (total)
 SF USED    *        24.26 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2097.070557   2.0
    -2097.070557   2.0
    -2097.070557   2.0
    -2097.031994   6.0
    -2097.031994   6.0
    -2097.031994   6.0
    -2097.031994   6.0
    -2097.031994   6.0
    -2096.998170  -0.0
                                                  


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
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.05 sec, npass=  1  Memory used:   0.64 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2097.07055705
     2     -2097.07055705
     3     -2097.07055705

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        120612
 Number of doubly external configurations:        802686
 Total number of contracted configurations:       923835
 Total number of uncontracted configurations:    4632525

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    451690 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.07055705     0.00000000    -0.89190125  0.35D-01  0.72D-01     0.16
    1     2     2     1.00000000     0.00000000 -2097.07055705     0.00000000    -0.89160077  0.35D-01  0.72D-01     0.16
    1     3     3     1.00000000     0.00000000 -2097.07055705     0.00000000    -0.89179506  0.35D-01  0.72D-01     0.16
    2     1     1     1.06705123    -0.70838740 -2097.77894446    -0.70838740    -0.01965661  0.24D-02  0.11D-02     2.68
    2     2     2     1.06725167    -0.70828349 -2097.77884055    -0.70828349    -0.01975298  0.25D-02  0.11D-02     2.68
    2     3     3     1.06734155    -0.70823653 -2097.77879359    -0.70823653    -0.01979786  0.25D-02  0.11D-02     2.68
    3     1     1     1.06070358    -0.72627279 -2097.79682984    -0.01788539    -0.00058252  0.87D-04  0.42D-04     4.98
    3     2     2     1.06070317    -0.72627096 -2097.79682802    -0.01798747    -0.00058447  0.88D-04  0.42D-04     4.98
    3     3     3     1.06070269    -0.72626993 -2097.79682698    -0.01803340    -0.00058542  0.88D-04  0.43D-04     4.98
    4     1     1     1.05991066    -0.72681786 -2097.79737491    -0.00054507    -0.00002849  0.46D-05  0.21D-05     7.25
    4     2     2     1.05990569    -0.72681776 -2097.79737482    -0.00054680    -0.00002860  0.46D-05  0.21D-05     7.25
    4     3     3     1.05990331    -0.72681769 -2097.79737474    -0.00054776    -0.00002869  0.46D-05  0.21D-05     7.25
    5     1     1     1.06001172    -0.72684532 -2097.79740238    -0.00002746    -0.00000116  0.12D-06  0.12D-06     9.52
    5     2     2     1.06001130    -0.72684532 -2097.79740238    -0.00002756    -0.00000116  0.12D-06  0.12D-06     9.52
    5     3     3     1.06001094    -0.72684532 -2097.79740238    -0.00002763    -0.00000117  0.12D-06  0.12D-06     9.52
    6     1     1     1.06004631    -0.72684652 -2097.79740357    -0.00000119    -0.00000005  0.34D-08  0.77D-08    11.73
    6     2     2     1.06004644    -0.72684652 -2097.79740357    -0.00000119    -0.00000005  0.34D-08  0.77D-08    11.73
    6     3     3     1.06004654    -0.72684652 -2097.79740357    -0.00000120    -0.00000005  0.34D-08  0.76D-08    11.73
    7     1     1     1.06004680    -0.72684657 -2097.79740363    -0.00000005    -0.00000000  0.43D-09  0.46D-09    13.91
    7     2     2     1.06004682    -0.72684657 -2097.79740363    -0.00000005    -0.00000000  0.43D-09  0.46D-09    13.91
    7     3     3     1.06004685    -0.72684657 -2097.79740362    -0.00000005    -0.00000000  0.43D-09  0.46D-09    13.91


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.7%   4.2%
 P   0.5%  27.1%  24.7%

 Initialization:   0.9%
 Other:           41.3%

 Total CPU:       13.9 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0           0.9658928   0.0000000   0.0000000
 2222222222/0/          -0.0000000   0.9658928   0.0000000
 22222222220//          -0.0000000  -0.0000000   0.9658927
 2222220222//2          -0.1007789  -0.0000000  -0.0000000
 2222220222/2/           0.0000000  -0.1007788  -0.0000000
 22222202222//           0.0000000   0.0000000  -0.1007788

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971104   -0.000000   -0.000000
 2           0.000000   -0.000000    0.971104
 3           0.000000    0.971104    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971104   -0.000000    0.000000
 2          -0.000000    0.971104    0.000000
 3           0.000000    0.000000    0.971104


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97110433 (fixed)   0.97113604 (relaxed)   0.97110433 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032975   -0.00063566   -0.64445986
 Singles      0.01437082   -0.04370336   -0.05106644
 Pairs        0.04569578    0.00000000   -0.03132027
 Total        1.06039635   -0.04433902   -0.72684657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07055705
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.79153779
 One electron energy                -2921.24428901
 Two electron energy                  823.44688538
 Virial quotient                       -0.94207175
 Correlation energy                    -0.72684657
 !MRCI STATE 1.1 Energy             -2097.797403625228

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.84130250 (Davidson, fixed reference)
 Cluster corrected energies         -2097.84125216 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.84130250 (Davidson, rotated reference)

 Cluster corrected energies         -2097.83890345 (Pople, fixed reference)
 Cluster corrected energies         -2097.83885348 (Pople, relaxed reference)
 Cluster corrected energies         -2097.83890345 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97110431 (fixed)   0.97113603 (relaxed)   0.97110431 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032975   -0.00063566   -0.00082548
 Singles      0.01437084   -0.04370338   -0.05106645
 Pairs        0.04569579   -0.68250754   -0.67495464
 Total        1.06039637   -0.72684657   -0.72684657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07055705
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.79153821
 One electron energy                -2921.24428922
 Two electron energy                  823.44688560
 Virial quotient                       -0.94207175
 Correlation energy                    -0.72684657
 !MRCI STATE 2.1 Energy             -2097.797403625042

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.84130252 (Davidson, fixed reference)
 Cluster corrected energies         -2097.84125218 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.84130252 (Davidson, rotated reference)

 Cluster corrected energies         -2097.83890347 (Pople, fixed reference)
 Cluster corrected energies         -2097.83885350 (Pople, relaxed reference)
 Cluster corrected energies         -2097.83890347 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97110430 (fixed)   0.97113602 (relaxed)   0.97110430 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032975   -0.00063566   -0.64445979
 Singles      0.01437086   -0.04370340   -0.05106647
 Pairs        0.04569579   -0.00000000   -0.03132031
 Total        1.06039640   -0.04433906   -0.72684657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07055705
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.79154009
 One electron energy                -2921.24429094
 Two electron energy                  823.44688731
 Virial quotient                       -0.94207175
 Correlation energy                    -0.72684657
 !MRCI STATE 3.1 Energy             -2097.797403624792

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.84130254 (Davidson, fixed reference)
 Cluster corrected energies         -2097.84125219 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.84130254 (Davidson, rotated reference)

 Cluster corrected energies         -2097.83890349 (Pople, fixed reference)
 Cluster corrected energies         -2097.83885352 (Pople, relaxed reference)
 Cluster corrected energies         -2097.83890349 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       22.53       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        16.64     14.37      1.20      0.05      0.77
 REAL TIME  *        19.97 SEC
 DISK USED  *        61.71 MB (local),      796.41 MB (total)
 SF USED    *       234.73 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2097.84130250  AU                              
 SETTING HLSDIAG(2)     =     -2097.84130252  AU                              
 SETTING HLSDIAG(3)     =     -2097.84130254  AU                              


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
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2097.03199375
     2     -2097.03199375
     3     -2097.03199375
     4     -2097.03199375
     5     -2097.03199375
     6     -2096.99817001

 Number of blocks in overlap matrix:   643   Smallest eigenvalue:  0.26D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:         86093
 Number of doubly external configurations:       1360738
 Total number of contracted configurations:      1447281
 Total number of uncontracted configurations:    3590838

 Diagonal Coupling coefficients finished.               Storage:    700785 words, CPU-Time:      0.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    506062 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.03199375    -0.00000000    -0.89999438  0.39D-01  0.75D-01     0.22
    1     2     2     1.00000000     0.00000000 -2097.03199375     0.00000000    -0.90071230  0.40D-01  0.75D-01     0.22
    1     3     3     1.00000000     0.00000000 -2097.03199375     0.00000000    -0.90105042  0.40D-01  0.75D-01     0.22
    1     4     4     1.00000000     0.00000000 -2097.03199375    -0.00000000    -0.90060442  0.40D-01  0.75D-01     0.22
    1     5     5     1.00000000     0.00000000 -2097.03199375    -0.00000000    -0.89994895  0.39D-01  0.75D-01     0.22
    1     6     6     1.00000000     0.00000000 -2096.99817001    -0.00000000    -0.88647963  0.14D-01  0.91D-01     0.22
    2     1     1     1.07141321    -0.71379129 -2097.74578505    -0.71379129    -0.02064898  0.26D-02  0.13D-02     7.83
    2     2     2     1.07140872    -0.71378576 -2097.74577951    -0.71378576    -0.02065449  0.26D-02  0.13D-02     7.83
    2     3     3     1.07179311    -0.71355993 -2097.74555368    -0.71355993    -0.02093637  0.28D-02  0.14D-02     7.83
    2     4     4     1.07186658    -0.71353093 -2097.74552468    -0.71353093    -0.02096319  0.28D-02  0.14D-02     7.83
    2     5     5     1.07216839    -0.71337407 -2097.74536782    -0.71337407    -0.02112311  0.29D-02  0.14D-02     7.83
    2     6     6     1.06650847    -0.70823127 -2097.70640128    -0.70823127    -0.01981384  0.24D-02  0.15D-02     7.83
    3     1     1     1.06426573    -0.73256463 -2097.76455839    -0.01877334    -0.00056636  0.72D-04  0.48D-04    15.29
    3     2     2     1.06427116    -0.73256320 -2097.76455695    -0.01877744    -0.00056752  0.72D-04  0.49D-04    15.29
    3     3     3     1.06431082    -0.73255501 -2097.76454876    -0.01899508    -0.00058127  0.75D-04  0.49D-04    15.29
    3     4     4     1.06431377    -0.73255332 -2097.76454707    -0.01902240    -0.00058269  0.75D-04  0.50D-04    15.29
    3     5     5     1.06432402    -0.73255148 -2097.76454523    -0.01917742    -0.00058416  0.76D-04  0.50D-04    15.29
    3     6     6     1.06147364    -0.72617329 -2097.72434330    -0.01794202    -0.00056723  0.60D-04  0.69D-04    15.29
    4     1     1     1.06352885    -0.73311300 -2097.76510676    -0.00054837    -0.00003065  0.51D-05  0.23D-05    22.86
    4     2     2     1.06352817    -0.73311293 -2097.76510668    -0.00054973    -0.00003074  0.51D-05  0.23D-05    22.86
    4     3     3     1.06353336    -0.73311186 -2097.76510561    -0.00055685    -0.00003217  0.53D-05  0.24D-05    22.86
    4     4     4     1.06353073    -0.73311183 -2097.76510558    -0.00055851    -0.00003222  0.53D-05  0.25D-05    22.86
    4     5     5     1.06353095    -0.73311176 -2097.76510551    -0.00056028    -0.00003231  0.53D-05  0.25D-05    22.86
    4     6     6     1.06085934    -0.72672901 -2097.72489902    -0.00055573    -0.00003126  0.55D-05  0.27D-05    22.86
    5     1     1     1.06359707    -0.73314279 -2097.76513654    -0.00002979    -0.00000136  0.20D-06  0.11D-06    30.40
    5     2     2     1.06359796    -0.73314279 -2097.76513654    -0.00002985    -0.00000136  0.20D-06  0.11D-06    30.40
    5     3     3     1.06359668    -0.73314275 -2097.76513650    -0.00003089    -0.00000141  0.21D-06  0.11D-06    30.40
    5     4     4     1.06359804    -0.73314274 -2097.76513650    -0.00003091    -0.00000141  0.21D-06  0.11D-06    30.40
    5     5     5     1.06359797    -0.73314274 -2097.76513649    -0.00003098    -0.00000142  0.21D-06  0.11D-06    30.40
    5     6     6     1.06089209    -0.72675950 -2097.72492951    -0.00003049    -0.00000163  0.25D-06  0.15D-06    30.40
    6     1     1     1.06359818    -0.73314420 -2097.76513795    -0.00000141    -0.00000005  0.47D-08  0.57D-08    39.38
    6     2     2     1.06359854    -0.73314419 -2097.76513795    -0.00000141    -0.00000005  0.47D-08  0.58D-08    39.38
    6     3     3     1.06359788    -0.73314419 -2097.76513795    -0.00000145    -0.00000005  0.46D-08  0.61D-08    39.38
    6     4     4     1.06359827    -0.73314419 -2097.76513794    -0.00000145    -0.00000005  0.46D-08  0.61D-08    39.38
    6     5     5     1.06359783    -0.73314419 -2097.76513794    -0.00000146    -0.00000005  0.47D-08  0.61D-08    39.38
    6     6     6     1.06089145    -0.72676118 -2097.72493119    -0.00000167    -0.00000007  0.84D-08  0.85D-08    39.38
    7     1     1     1.06359655    -0.73314425 -2097.76513800    -0.00000005    -0.00000000  0.54D-09  0.23D-09    46.85
    7     2     2     1.06359654    -0.73314425 -2097.76513800    -0.00000005    -0.00000000  0.57D-09  0.23D-09    46.85
    7     3     3     1.06359660    -0.73314425 -2097.76513800    -0.00000005    -0.00000000  0.57D-09  0.24D-09    46.85
    7     4     4     1.06359660    -0.73314425 -2097.76513800    -0.00000005    -0.00000000  0.54D-09  0.23D-09    46.85
    7     5     5     1.06359655    -0.73314425 -2097.76513800    -0.00000005    -0.00000000  0.57D-09  0.24D-09    46.85
    7     6     6     1.06088737    -0.72676125 -2097.72493126    -0.00000007    -0.00000000  0.79D-09  0.38D-09    46.85


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.3%   1.7%
 P   0.4%  17.5%  31.7%

 Initialization:   0.3%
 Other:           47.7%

 Total CPU:       46.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\           0.0000000  -0.0000000  -0.0000000   0.0000000   0.9642173   0.0000000
 2222222222/\0          -0.0000000   0.9642173   0.0000000  -0.0000000   0.0000000  -0.0000000
 2222222222/0\           0.0000000  -0.0000000   0.9642173   0.0000000   0.0000000   0.0000000
 2222222222002          -0.0462483   0.0000000  -0.0000000   0.7859205  -0.0000000   0.5493063
 2222222222200           0.7037513   0.0000000   0.0000000  -0.3529081  -0.0000000   0.5493063
 2222222222020          -0.6575030  -0.0000000   0.0000000  -0.4330125   0.0000000   0.5493063
 2222220222022           0.0734220   0.0000000   0.0000000  -0.0368187  -0.0000000  -0.1112034
 2222220222220          -0.0048251   0.0000000  -0.0000000   0.0819947  -0.0000000  -0.1112034
 2222220222202          -0.0685970  -0.0000000   0.0000000  -0.0451759   0.0000000  -0.1112034
 2222220222/\2           0.0000000  -0.1005964  -0.0000000   0.0000000  -0.0000000   0.0000000
 2222220222/2\          -0.0000000   0.0000000  -0.1005964  -0.0000000   0.0000000  -0.0000000
 22222202222/\          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.1005963  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222\222/\0  19.1     0.0510102   0.0000000  -0.0000000   0.0012789  -0.0000000   0.0025700
 222222\222/0\  21.1    -0.0000000   0.0000000  -0.0509977  -0.0000000   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.914007   -0.000000    0.000000    0.000000   -0.323056   -0.000000
 2          -0.000000    0.969419   -0.000000   -0.000000    0.000000    0.000000
 3           0.000000    0.000000   -0.000000    0.969419   -0.000000   -0.000000
 4          -0.323056   -0.000000    0.000000    0.000000    0.914007   -0.000000
 5           0.000000    0.000000    0.969419    0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.970630

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969419   -0.000000    0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.969419    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.969419    0.000000   -0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.969419   -0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.969419    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.970630


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.91400660 (fixed)   0.96945067 (relaxed)   0.96941895 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046079   -0.00093070   -0.64459930
 Singles      0.01653613   -0.04757259   -0.05610250
 Pairs        0.04708972    0.00000002   -0.03244245
 Total        1.06408664   -0.04850326   -0.73314425
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03199375
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.78894102
 One electron energy                -2921.16561316
 Two electron energy                  823.40047516
 Virial quotient                       -0.94205836
 Correlation energy                    -0.73314425
 !MRCI STATE 1.1 Energy             -2097.765137998030

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81212275 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81207169 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81212275 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81019797 (Pople, fixed reference)
 Cluster corrected energies         -2097.81014634 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81019797 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96941895 (fixed)   0.96945068 (relaxed)   0.96941895 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046079   -0.00093069   -0.64459921
 Singles      0.01653614   -0.04757267   -0.05610255
 Pairs        0.04708970   -0.00000000   -0.03244248
 Total        1.06408663   -0.04850336   -0.73314425
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03199375
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.78897865
 One electron energy                -2921.16566514
 Two electron energy                  823.40052714
 Virial quotient                       -0.94205834
 Correlation energy                    -0.73314425
 !MRCI STATE 2.1 Energy             -2097.765137997927

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81212274 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81207169 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81212274 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81019797 (Pople, fixed reference)
 Cluster corrected energies         -2097.81014633 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81019797 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96941893 (fixed)   0.96945065 (relaxed)   0.96941893 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046079   -0.00093069   -0.64459919
 Singles      0.01653615   -0.04757266   -0.05610256
 Pairs        0.04708975    0.00000000   -0.03244250
 Total        1.06408669   -0.04850335   -0.73314425
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03199375
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.78898038
 One electron energy                -2921.16566742
 Two electron energy                  823.40052942
 Virial quotient                       -0.94205834
 Correlation energy                    -0.73314425
 !MRCI STATE 3.1 Energy             -2097.765137997564

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81212278 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81207173 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81212278 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81019801 (Pople, fixed reference)
 Cluster corrected energies         -2097.81014637 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81019801 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.91400657 (fixed)   0.96945065 (relaxed)   0.96941892 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046079   -0.00093070   -0.64459925
 Singles      0.01653614   -0.04757258   -0.05610250
 Pairs        0.04708977   -0.00000000   -0.03244250
 Total        1.06408670   -0.04850328   -0.73314425
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03199375
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.78894288
 One electron energy                -2921.16561536
 Two electron energy                  823.40047737
 Virial quotient                       -0.94205836
 Correlation energy                    -0.73314425
 !MRCI STATE 4.1 Energy             -2097.765137997510

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81212279 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81207173 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81212279 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81019801 (Pople, fixed reference)
 Cluster corrected energies         -2097.81014638 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81019801 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96941895 (fixed)   0.96945067 (relaxed)   0.96941895 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046079   -0.00093069   -0.64459922
 Singles      0.01653611   -0.04757265   -0.05610253
 Pairs        0.04708974    0.00000000   -0.03244249
 Total        1.06408664   -0.04850334   -0.73314425
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03199375
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.78898061
 One electron energy                -2921.16566723
 Two electron energy                  823.40052924
 Virial quotient                       -0.94205834
 Correlation energy                    -0.73314425
 !MRCI STATE 5.1 Energy             -2097.765137997508

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81212275 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81207169 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81212275 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81019797 (Pople, fixed reference)
 Cluster corrected energies         -2097.81014634 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81019797 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97063045 (fixed)   0.97072697 (relaxed)   0.97063045 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00051337   -0.00074061   -0.00104925
 Singles      0.00660642   -0.02830971   -0.03119567
 Pairs        0.05431221   -0.69771093   -0.69451633
 Total        1.06143200   -0.72676125   -0.72676125
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2096.99817001
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.75669656
 One electron energy                -2920.92019001
 Two electron energy                  823.19525876
 Virial quotient                       -0.94205395
 Correlation energy                    -0.72676125
 !MRCI STATE 6.1 Energy             -2097.724931258160

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.76957765 (Davidson, fixed reference)
 Cluster corrected energies         -2097.76942426 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.76957765 (Davidson, rotated reference)

 Cluster corrected energies         -2097.76765212 (Pople, fixed reference)
 Cluster corrected energies         -2097.76749771 (Pople, relaxed reference)
 Cluster corrected energies         -2097.76765212 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       89.60       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        65.83     49.19     14.37      1.20      0.05      0.77
 REAL TIME  *        75.96 SEC
 DISK USED  *       128.79 MB (local),        1.56 GB (total)
 SF USED    *       702.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2097.81212275  AU                              
 SETTING HLSDIAG(5)     =     -2097.81212274  AU                              
 SETTING HLSDIAG(6)     =     -2097.81212278  AU                              
 SETTING HLSDIAG(7)     =     -2097.81212279  AU                              
 SETTING HLSDIAG(8)     =     -2097.81212275  AU                              
 SETTING HLSDIAG(9)     =     -2097.76957765  AU                              


         HLSDIAG
    -2097.841303
    -2097.841303
    -2097.841303
    -2097.812123
    -2097.812123
    -2097.812123
    -2097.812123
    -2097.812123
    -2097.769578
                                                  

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

 Time for Seward_LS:       4.30 sec

        6950500. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1914 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.31 sec, REAL time:      4.42 sec


 SORTLS1 read     7822434. and wrote     7822434. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.11 sec
 SORTLS2 read     7822434. and wrote    38256242. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.06 sec

 FILE SIZES: FILE 1:   166.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   166.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       89.60       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        71.00      5.15     49.19     14.37      1.20      0.05      0.77
 REAL TIME  *        81.36 SEC
 DISK USED  *       128.85 MB (local),        1.94 GB (total)
 SF USED    *       702.55 MB
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

 Original energies:  -2097.797404  -2097.797404  -2097.797404
 Replaced energies:  -2097.841303  -2097.841303  -2097.841303

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -2097.765138  -2097.765138  -2097.765138  -2097.765138  -2097.765138  -2097.724931
 Replaced energies:  -2097.812123  -2097.812123  -2097.812123  -2097.812123  -2097.812123  -2097.769578



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2097.84130254

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00     -21.67
                           -0.00      -0.00     453.52       0.00     320.69       0.00       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00     320.69       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00    -320.69      -0.00      -0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00    -320.69      -0.00       0.00       0.00       0.00       0.00
                         -453.52      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00     329.72

    4   1.1  1.0  0.0       0.00      -0.00       0.00       0.01       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00     320.69       0.00       0.00       0.00       0.00       0.00     320.69       0.00      -0.00

    5   2.1  1.0  0.0       0.00      -0.00    -320.69       0.00       0.00       0.00      -0.00      -0.00     320.69       0.00
                         -320.69       0.00      -0.00      -0.00       0.00       0.00    -320.69      -0.00      -0.00    -435.65

    6   3.1  1.0  0.0      -0.00     320.69      -0.00       0.00       0.00       0.00       0.00    -320.69      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.01       0.00       0.00     -21.67
                           -0.00      -0.00      -0.00      -0.00     320.69       0.00       0.00       0.00    -453.52       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00    -320.69       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00    -320.69       0.00      -0.00      -0.00       0.00      -0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00     320.69      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00     453.52       0.00      -0.00    -329.72

   10   1.1  0.0  0.0     -21.67      -0.00       0.00       0.00       0.00       0.00     -21.67      -0.00       0.00    6404.22
                            0.00      -0.00    -329.72       0.00     435.65      -0.00      -0.00       0.00     329.72       0.00

   11   2.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00     319.43      -0.00      -0.00       0.00     451.74      -0.00    -319.43       0.00      -0.00

   12   3.1  0.0  0.0      -0.00      -0.00     319.43       0.00       0.00       0.00      -0.00      -0.00     319.43       0.00
                         -319.43       0.00      -0.00      -0.00      -0.00       0.00     319.43      -0.00       0.00      -0.00

   13   4.1  0.0  0.0     368.22      -0.00       0.00       0.00       0.00       0.00     368.22      -0.00       0.00       0.00
                           -0.00      -0.00     165.34       0.00     286.91      -0.00       0.00       0.00    -165.34      -0.00

   14   5.1  0.0  0.0      -0.00    -319.43      -0.00       0.00       0.00       0.00      -0.00    -319.43      -0.00       0.00
                           -0.00       0.00       0.00     451.74      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   15   6.1  0.0  0.0    -530.63      -0.00      -0.00       0.00       0.00       0.00    -530.63      -0.00      -0.00       0.00
                           -0.00      -0.00     530.63      -0.00     750.42       0.00       0.00       0.00    -530.63      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00      -0.00     368.22      -0.00    -530.63
                           -0.00     319.43       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00      -0.00      -0.00    -319.43      -0.00
                         -319.43      -0.00       0.00      -0.00       0.00

    3   3.1  1.0  1.0      -0.00     319.43       0.00      -0.00      -0.00
                            0.00       0.00    -165.34      -0.00    -530.63

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -451.74       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -286.91       0.00    -750.42

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         -451.74      -0.00       0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00      -0.00     368.22      -0.00    -530.63
                            0.00    -319.43      -0.00      -0.00      -0.00

    8   2.1  1.0 -1.0       0.00      -0.00      -0.00    -319.43      -0.00
                          319.43       0.00      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0      -0.00     319.43       0.00      -0.00      -0.00
                           -0.00      -0.00     165.34       0.00     530.63

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6404.22       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6404.22       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6404.21       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6404.22       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15741.79
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by  -2097.84130254 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.008       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     453.522       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.004       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    -453.522       0.000      -0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000    -453.521      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.008       0.000       0.000       0.000      -0.000
                                0.000     453.522       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.004       0.000       0.000       0.000
                             -453.522       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000     453.521
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.008       0.000
                               -0.000      -0.000     453.521       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000     453.521       0.000       0.004
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000    -453.521       0.000       0.000       0.000
                             -453.521      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>             -30.643      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     435.650      -0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     451.742       0.000     451.742

    3    1  |0 0>              -0.000      -0.000     451.742       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000    -451.741       0.000

    4    1  |0 0>             520.737      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     286.906      -0.000      -0.000      -0.000

    5    1  |0 0>              -0.000    -451.741      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     451.741      -0.000       0.000      -0.000       0.000

    6    1  |0 0>            -750.423      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     750.423       0.000      -0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000     -30.643       0.000      -0.000     520.737      -0.000    -750.423
                              453.521       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000    -451.741      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000     451.742       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000    -451.741       0.000

    2    1  |1 0>            -453.521       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -435.650      -0.000       0.000    -286.906       0.000    -750.423

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -451.742      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     451.741       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -451.742      -0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     466.293       0.000       0.000    -233.831      -0.000    -750.423

    1    1  |0 0>               0.000    6404.223       0.000       0.000       0.000       0.000       0.000
                             -466.293       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6404.225       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6404.216       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6404.215       0.000       0.000
                              233.831      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6404.224       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15741.793
                              750.423      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2097.84589487    -0.00459233    -1007.90      0.00000000        0.00      0.0000
    2 -2097.84336893    -0.00206639     -453.52      0.00252595      554.38      0.0687
    3 -2097.84336892    -0.00206638     -453.52      0.00252596      554.38      0.0687
    4 -2097.84336891    -0.00206637     -453.52      0.00252597      554.39      0.0687
    5 -2097.83954514     0.00175740      385.71      0.00634974     1393.61      0.1728
    6 -2097.83954512     0.00175742      385.71      0.00634975     1393.61      0.1728
    7 -2097.83954511     0.00175743      385.71      0.00634976     1393.61      0.1728
    8 -2097.83954511     0.00175743      385.71      0.00634976     1393.61      0.1728
    9 -2097.83954510     0.00175744      385.71      0.00634977     1393.61      0.1728
   10 -2097.81181380     0.02948874     6472.03      0.03408107     7479.93      0.9274
   11 -2097.81181379     0.02948875     6472.03      0.03408108     7479.93      0.9274
   12 -2097.81181376     0.02948878     6472.04      0.03408111     7479.94      0.9274
   13 -2097.81181376     0.02948878     6472.04      0.03408111     7479.94      0.9274
   14 -2097.81181375     0.02948879     6472.04      0.03408112     7479.94      0.9274
   15 -2097.76911809     0.07218445    15842.66      0.07677678    16850.56      2.0892

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57561810 -0.00000000 -0.00000000 -0.00000000 -0.20901503  0.00000000  0.78457179  0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.70710853 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00001730 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.70711028  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.70313169
                           0.00000000 -0.00000000 -0.00000164 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00546282

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00001730  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.70710503 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.57561977 -0.00000000 -0.00000000 -0.00000000 -0.57495220 -0.00000000 -0.57329596 -0.00000001

   3    1  |1 0>           0.00000000 -0.00000067  0.00000000 -0.00000000  0.00000000  0.00153766 -0.00000000 -0.00000000
                           0.00000000  0.70710852  0.00000000  0.00000000  0.00000000  0.70315301 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000164 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00546288
                          -0.00000000  0.00000000 -0.70710328 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.70313872

   2    1  |1 1>-         -0.00000000  0.00000067 -0.00000000  0.00000000  0.00000000  0.00153767 -0.00000000 -0.00000000
                          -0.00000000 -0.70710504 -0.00000000 -0.00000000  0.00000000  0.70315650 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.57562142 -0.00000000 -0.00000000 -0.00000000  0.78396437 -0.00000000 -0.21127296 -0.00000000

   1    1  |0 0>          -0.00000010 -0.00000000  0.00000000  0.00000000 -0.10342086 -0.00000000 -0.02113467 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000023  0.00000000 -0.00000000  0.00000000  0.10555568 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00023083  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000047 -0.00000000  0.00000000  0.00000000  0.00000000 -0.10555290
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00082007

   4    1  |0 0>           0.00000017  0.00000000 -0.00000000  0.00000000  0.02113468 -0.00000000 -0.10342105 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000022 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.07736711  0.00000000  0.00000000  0.00000000 -0.00000014 -0.00000000  0.00000015 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.00000000 -0.00000000  0.08604345 -0.00000000 -0.00000000 -0.00499199 -0.04466794
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.70111164  0.00000000 -0.00000000 -0.07458973 -0.00000000 -0.00000000 -0.00000000
                           0.05356272  0.00000000 -0.00000000 -0.00272030  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.07463939  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000819 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.05356299 -0.00000000  0.00000000  0.00272030 -0.00000000  0.00000000 -0.00000000
                           0.70111515  0.00000000 -0.00000000 -0.07458979 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.04734490  0.00000000 -0.00000000 -0.07201970 -0.04466792

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00036328  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.07463841  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000819  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.07463946  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00036328  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.07463845  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.03869849 -0.00000000  0.00000000  0.07701163 -0.04466791

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00082156 -0.00000000  0.00000000  0.99441278  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000001  0.99440159 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00483996  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.99441334  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00010906 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.99441276 -0.00000000 -0.00000000  0.00082155 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.10524928 -0.00000000  0.00000000  0.99375270  0.00000001  0.00000000 -0.00000000
                           0.00804071 -0.00000000  0.00000000  0.03624227 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.99700267
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2097.84589487     -0.00459233    -1007.90      0.00000000        0.00      0.0000
     2   1  -2097.84336893     -0.00206639     -453.52      0.00252595      554.38      0.0687
     3   1  -2097.84336892     -0.00206638     -453.52      0.00252596      554.38      0.0687
     4   1  -2097.84336891     -0.00206637     -453.52      0.00252597      554.39      0.0687
     5   1  -2097.83954514      0.00175740      385.71      0.00634974     1393.61      0.1728
     6   1  -2097.83954512      0.00175742      385.71      0.00634975     1393.61      0.1728
     7   1  -2097.83954511      0.00175743      385.71      0.00634976     1393.61      0.1728
     8   1  -2097.83954511      0.00175743      385.71      0.00634976     1393.61      0.1728
     9   1  -2097.83954510      0.00175744      385.71      0.00634977     1393.61      0.1728
    10   1  -2097.81181380      0.02948874     6472.03      0.03408107     7479.93      0.9274
    11   1  -2097.81181379      0.02948875     6472.03      0.03408108     7479.93      0.9274
    12   1  -2097.81181376      0.02948878     6472.04      0.03408111     7479.94      0.9274
    13   1  -2097.81181376      0.02948878     6472.04      0.03408111     7479.94      0.9274
    14   1  -2097.81181375      0.02948879     6472.04      0.03408112     7479.94      0.9274
    15   1  -2097.76911809      0.07218445    15842.66      0.07677678    16850.56      2.0892

 E0 =  -2097.84130254 is the energy of the lowest zeroth-order state
 E1 =  -2097.84589487 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57561810 -0.00000000 -0.00000000 -0.00000000 -0.20901503  0.00000000  0.78457179  0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.70710853 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00001730 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000  0.70711028  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.70313169
                                0.00000000 -0.00000000 -0.00000164 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00546282

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00001730  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.70710503 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.57561977 -0.00000000 -0.00000000 -0.00000000 -0.57495220 -0.00000000 -0.57329596 -0.00000001

  6  1     3    1  |1 0>        0.00000000 -0.00000067  0.00000000 -0.00000000  0.00000000  0.00153766 -0.00000000 -0.00000000
                                0.00000000  0.70710852  0.00000000  0.00000000  0.00000000  0.70315301 -0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000164 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00546288
                               -0.00000000  0.00000000 -0.70710328 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.70313872

  8  1     2    1  |1 1>-      -0.00000000  0.00000067 -0.00000000  0.00000000  0.00000000  0.00153767 -0.00000000 -0.00000000
                               -0.00000000 -0.70710504 -0.00000000 -0.00000000  0.00000000  0.70315650 -0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.57562142 -0.00000000 -0.00000000 -0.00000000  0.78396437 -0.00000000 -0.21127296 -0.00000000

 10  1     1    1  |0 0>       -0.00000010 -0.00000000  0.00000000  0.00000000 -0.10342086 -0.00000000 -0.02113467 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000023  0.00000000 -0.00000000  0.00000000  0.10555568 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00023083  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000047 -0.00000000  0.00000000  0.00000000  0.00000000 -0.10555290
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00082007

 13  1     4    1  |0 0>        0.00000017  0.00000000 -0.00000000  0.00000000  0.02113468 -0.00000000 -0.10342105 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000022 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.07736711  0.00000000  0.00000000  0.00000000 -0.00000014 -0.00000000  0.00000015 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.08604345 -0.00000000 -0.00000000 -0.00499199 -0.04466794
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.70111164  0.00000000 -0.00000000 -0.07458973 -0.00000000 -0.00000000 -0.00000000
                                0.05356272  0.00000000 -0.00000000 -0.00272030  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.07463939  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000819 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.05356299 -0.00000000  0.00000000  0.00272030 -0.00000000  0.00000000 -0.00000000
                                0.70111515  0.00000000 -0.00000000 -0.07458979 -0.00000000 -0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.04734490  0.00000000 -0.00000000 -0.07201970 -0.04466792

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00036328  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.07463841  0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00000819  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.07463946  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00036328  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.07463845  0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.03869849 -0.00000000  0.00000000  0.07701163 -0.04466791

 10  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00082156 -0.00000000  0.00000000  0.99441278  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000001  0.99440159 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00483996  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.99441334  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00010906 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000  0.99441276 -0.00000000 -0.00000000  0.00082155 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>        0.10524928 -0.00000000  0.00000000  0.99375270  0.00000001  0.00000000 -0.00000000
                                0.00804071 -0.00000000  0.00000000  0.03624227 -0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.99700267
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.13%    0.00%    0.00%    0.00%    4.37%    0.00%   61.56%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.44%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>         33.13%    0.00%    0.00%    0.00%   33.06%    0.00%   32.87%    0.00%
  6  1     3    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   49.44%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.44%
  8  1     2    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   49.44%    0.00%    0.00%
  9  1     3    1  |1 1>-        33.13%    0.00%    0.00%    0.00%   61.46%    0.00%    4.46%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.07%    0.00%    0.04%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.11%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.11%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    1.07%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.60%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.74%    0.00%    0.00%    0.00%    0.20%
  2  1     2    1  |1 1>+        49.44%    0.00%    0.00%    0.56%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.56%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         49.44%    0.00%    0.00%    0.56%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.22%    0.00%    0.00%    0.52%    0.20%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.56%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.56%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.56%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.15%    0.00%    0.00%    0.59%    0.20%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   98.89%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.89%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%   98.89%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%   98.89%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          1.11%    0.00%    0.00%   98.89%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.40%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       89.60       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       108.64     37.64      5.15     49.19     14.37      1.20      0.05      0.77
 REAL TIME  *       123.16 SEC
 DISK USED  *       128.85 MB (local),        1.94 GB (total)
 SF USED    *       702.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -2097.769118091987

              CI              CI           MULTI         RHF-SCF
  -2097.72493126  -2097.79740362  -2096.99817001  -2097.09574691
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
