
 Working directory              : /wrk/irikura/molpro.LvPeIeK9Te/
 Global scratch directory       : /wrk/irikura/molpro.LvPeIeK9Te/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.LvPeIeK9Te/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,S SO-CI
                                                                                 ! Active space (6,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={S};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=16,sym=1,spin=2}
 
 {multi
     wf,sym=1,spin=2;state,3;
 weight,all,99
     wf,sym=1,spin=0;state,6;
 weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=2;state,3; save,5202.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,6; save,5201.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5202.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.16 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   S SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 13:28:41  
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

 Library entry S      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry S      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry S      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry S      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  S      16.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   16
 NUMBER OF PRIMITIVE AOS:         114
 NUMBER OF SYMMETRY AOS:          100
 NUMBER OF CONTRACTIONS:           75   (   33Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     7.078 MB (compressed) written to integral file ( 19.0%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     36 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      172985.  Node maximum:      175449. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.220E-02 0.550E-02 0.598E-01 0.149E+00 0.149E+00 0.149E+00 0.149E+00 0.149E+00
         2 0.135E-01 0.135E-01 0.135E-01 0.300E-01 0.300E-01 0.300E-01 0.116E+00 0.116E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.64      0.39
 REAL TIME  *         1.19 SEC
 DISK USED  *        29.14 MB (local),      400.73 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   3   4

 NELEC=   16   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -398.57777024    -398.57777024     0.00D+00     0.14D+00     0     0       0.00      0.00    start
   2     -398.58502631      -0.00725607     0.33D-02     0.69D-02     1     0       0.00      0.00    diag2
   3     -398.58534467      -0.00031836     0.10D-02     0.13D-02     2     0       0.01      0.01    diag2
   4     -398.58539497      -0.00005030     0.24D-03     0.58D-03     3     0       0.00      0.01    diag2
   5     -398.58540304      -0.00000808     0.76D-04     0.29D-03     4     0       0.00      0.01    diag2
   6     -398.58540352      -0.00000048     0.19D-04     0.78D-04     5     0       0.00      0.01    diag2
   7     -398.58540353      -0.00000001     0.29D-05     0.11D-04     6     0       0.00      0.01    diag2
   8     -398.58540353      -0.00000000     0.33D-06     0.17D-05     7     0       0.00      0.01    fixocc
   9     -398.58540353       0.00000000     0.29D-07     0.78D-07     0     0       0.01      0.02    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   4

 !RHF STATE 1.1 Energy               -398.585403528641
  RHF One-electron energy            -550.851178789679
  RHF Two-electron energy             152.265775261038
  RHF Kinetic energy                  405.263482256420
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.983521637107

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -92.29506     1  1  s    0.99908
    2.1     2.00000    -9.05460     1  2  s    1.00053
    3.1     2.00000    -0.88464     1  3  s    1.00808
    1.2     2.00000    -6.68315     1  1  px   0.99865
    2.2     2.00000    -6.68315     1  1  py   0.99854
    3.2     2.00000    -6.68153     1  1  pz   1.00179
    4.2     2.00000    -0.39732     1  2  pz   0.97134
    5.2     1.00000    -0.48037     1  2  px   1.04382
    6.2     1.00000    -0.48037     1  2  py   1.04371


 HOMO      6.2    -0.480372 =     -13.0716eV
 LUMO      7.2     0.091800 =       2.4980eV
 LUMO-HOMO         0.572171 =      15.5696eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.47       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.67      0.03      0.39
 REAL TIME  *         2.37 SEC
 DISK USED  *        29.72 MB (local),      407.69 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.240D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.141D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.788D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 4 6 2 1   3 5 4 6 2 3 5 6 4 2   1 3 5 6 4 2 1 3 5 6   4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.616D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.153D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.154D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.258D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.181D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.328D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 2 3 1   2 3 9 7 810 4 5 6 1   2 3 7 910 8 5 4 6 7   9 810 4 5 6 1 2 3 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  317  ( 11 closed/active, 168 closed/virtual, 0 active/active, 138 active/virtual )
 Total number of variables:    386
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -398.58079303    -398.58184607   -0.00105304    0.04838797 0.00001363 0.00000000  0.39E-01      0.13
   2    3    6    0   -398.58184879    -398.58184882   -0.00000002    0.00017543 0.00000001 0.00000000  0.17E-03      0.23
   3    2    4    0   -398.58184882    -398.58184882    0.00000000    0.00000001 0.00000001 0.00000000  0.42E-08      0.29

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.63E-08)
                       Final energy:   -398.58184882
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -398.583040981982
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.26000100
 One electron energy                          -550.85304169
 Two electron energy                           152.27000070
 Virial ratio                                    1.98352426
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -398.583040981716
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.26000101
 One electron energy                          -550.85304170
 Two electron energy                           152.27000072
 Virial ratio                                    1.98352426
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -398.583040981694
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.26000101
 One electron energy                          -550.85304170
 Two electron energy                           152.27000072
 Virial ratio                                    1.98352426
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -398.530263561491
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.26000100
 One electron energy                          -550.85304169
 Two electron energy                           152.32277812
 Virial ratio                                    1.98339403
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -398.530263561480
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.26000100
 One electron energy                          -550.85304169
 Two electron energy                           152.32277812
 Virial ratio                                    1.98339403
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -398.530263561328
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.26000101
 One electron energy                          -550.85304170
 Two electron energy                           152.32277814
 Virial ratio                                    1.98339402
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -398.530263561315
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.26000101
 One electron energy                          -550.85304170
 Two electron energy                           152.32277814
 Virial ratio                                    1.98339402
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -398.530263561254
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.26000101
 One electron energy                          -550.85304171
 Two electron energy                           152.32277815
 Virial ratio                                    1.98339402
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -398.485701876907
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.21638460
 One electron energy                          -550.74620349
 Two electron energy                           152.26050161
 Virial ratio                                    1.98338990
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000010207
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999998426
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000000087
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.126095429465
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999948285
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000019556
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.873904505535
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999423
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999989793
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000002159
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000000004690
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.878999112779
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000051625
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999976449
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.121000946619
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000577
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999415
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.999999995224
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.994905457756
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000089
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000003995
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.005094547846
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 6 2 5 3 1   5 3 4 6 2 4 2 5 3 6   1 4 2 6 5 3 1 4 2 6   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 3 1 1 2 3 1   2 3 410 8 6 7 9 5 1   3 2 6 410 8 7 9 5 4   6 5 810 7 9 3 1 2 3
                                        1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -92.29518     1  1  s    0.99908
    2.1     2.00000    -9.05431     1  2  s    1.00050
    3.1     1.99977    -0.88490     1  3  s    1.00775
    1.2     2.00000    -6.68266     1  1  pz   0.99974
    2.2     2.00000    -6.68266     1  1  px   0.99974
    3.2     2.00000    -6.68266     1  1  py   0.99974
    4.2     1.33341    -0.28295     1  2  py   1.00674
    5.2     1.33341    -0.28295     1  2  pz   1.00674
    6.2     1.33341    -0.28295     1  2  px   1.00674
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a2a          1.00000000     -0.00000017     -0.00002402
 2 aa2          0.00000017      0.99999999     -0.00010103
 2 2aa          0.00002402      0.00010103      0.99999999
 
 Energy:     -398.58304098   -398.58304098   -398.58304098
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202          0.00000498     -0.02913914     -0.00005767     -0.00002475      0.81597645      0.56703219
 2 022         -0.00000289      0.72122591      0.00005375      0.00000341     -0.38275299      0.56703219
 2 a2b          0.70710678      0.00000055     -0.00000020     -0.00002777     -0.00000430      0.00000000
 2 b2a         -0.70710678     -0.00000055      0.00000020      0.00002777      0.00000430     -0.00000000
 2 2ba         -0.00002777     -0.00000819     -0.00009284     -0.70710677     -0.00002175      0.00000000
 2 2ab          0.00002777      0.00000819      0.00009284      0.70710677      0.00002175     -0.00000000
 2 ba2         -0.00000020      0.00002668     -0.70710677      0.00009284     -0.00004902     -0.00000000
 2 ab2          0.00000020     -0.00002668      0.70710677     -0.00009284      0.00004902      0.00000000
 2 220         -0.00000210     -0.69208677      0.00000392      0.00002134     -0.43322347      0.56703219
 0 222          0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.18821131
 
 Energy:     -398.53026356   -398.53026356   -398.53026356   -398.53026356   -398.53026356   -398.48570188
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.67       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.03      0.36      0.03      0.39
 REAL TIME  *         2.85 SEC
 DISK USED  *        31.13 MB (local),      424.64 MB (total)
 SF USED    *         4.20 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -398.5830410   2.0
    -398.5830410   2.0
    -398.5830410   2.0
    -398.5302636   6.0
    -398.5302636   6.0
    -398.5302636   6.0
    -398.5302636   6.0
    -398.5302636   6.0
    -398.4857019  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 16
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:       28 conf       28 CSFs
 N-1 el internal:       82 conf      174 CSFs
 N-2 el internal:       86 conf      462 CSFs

 Number of electrons in valence space:                     14
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.01 sec, npass=  1  Memory used:   0.19 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -398.58304098
     2      -398.58304098
     3      -398.58304098

 Number of blocks in overlap matrix:   154   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     177
 Number of N-1 electron functions:     174

 Number of internal configurations:                   16
 Number of singly external configurations:          5796
 Number of doubly external configurations:        193347
 Total number of contracted configurations:       199159
 Total number of uncontracted configurations:     506428

 Diagonal Coupling coefficients finished.               Storage:    201340 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    252133 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.58304098     0.00000000    -0.43447047  0.34D-01  0.57D-01     0.04
    1     2     2     1.00000000     0.00000000  -398.58304098    -0.00000000    -0.43452870  0.34D-01  0.57D-01     0.04
    1     3     3     1.00000000     0.00000000  -398.58304098     0.00000000    -0.43417038  0.34D-01  0.57D-01     0.04
    2     1     1     1.07323888    -0.38985354  -398.97289452    -0.38985354    -0.00638765  0.14D-02  0.86D-03     0.32
    2     2     2     1.07352329    -0.38976605  -398.97280703    -0.38976605    -0.00648373  0.14D-02  0.86D-03     0.32
    2     3     3     1.07346117    -0.38975758  -398.97279856    -0.38975758    -0.00650168  0.15D-02  0.86D-03     0.32
    3     1     1     1.06402727    -0.39582738  -398.97886836    -0.00597384    -0.00007916  0.60D-05  0.14D-04     0.63
    3     2     2     1.06402585    -0.39582658  -398.97886757    -0.00606054    -0.00007988  0.60D-05  0.15D-04     0.63
    3     3     3     1.06400342    -0.39582649  -398.97886747    -0.00606891    -0.00007966  0.57D-05  0.15D-04     0.63
    4     1     1     1.06421660    -0.39591278  -398.97895376    -0.00008540    -0.00000210  0.37D-06  0.46D-06     0.91
    4     2     2     1.06421501    -0.39591274  -398.97895372    -0.00008615    -0.00000213  0.38D-06  0.46D-06     0.91
    4     3     3     1.06421074    -0.39591264  -398.97895362    -0.00008616    -0.00000220  0.40D-06  0.47D-06     0.91
    5     1     1     1.06438624    -0.39591523  -398.97895621    -0.00000245    -0.00000011  0.27D-07  0.19D-07     1.20
    5     2     2     1.06438619    -0.39591522  -398.97895621    -0.00000249    -0.00000011  0.27D-07  0.19D-07     1.20
    5     3     3     1.06438676    -0.39591522  -398.97895620    -0.00000258    -0.00000012  0.28D-07  0.20D-07     1.20
    6     1     1     1.06438934    -0.39591535  -398.97895633    -0.00000013    -0.00000000  0.50D-09  0.74D-09     1.48
    6     2     2     1.06438927    -0.39591535  -398.97895633    -0.00000013    -0.00000000  0.50D-09  0.73D-09     1.48
    6     3     3     1.06438935    -0.39591535  -398.97895633    -0.00000013    -0.00000000  0.50D-09  0.75D-09     1.48


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   1.4%
 P   0.7%  18.9%  24.3%

 Initialization:   2.0%
 Other:           52.7%

 Total CPU:        1.5 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//2          -0.0000000   0.9692780   0.0000000
 22222/2/           0.9692780   0.0000000   0.0000000
 222222//           0.0000000   0.0000000   0.9692780

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969278   -0.000000    0.000000
 2           0.000000    0.969278    0.000000
 3           0.000000    0.000000    0.969278

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969278   -0.000000    0.000000
 2          -0.000000    0.969278    0.000000
 3           0.000000    0.000000    0.969278


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96927797 (fixed)   0.96927797 (relaxed)   0.96927797 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000646   -0.00004723   -0.32998066
 Singles      0.02062949   -0.04468774   -0.04965932
 Pairs        0.04376026    0.00000000   -0.01627537
 Total        1.06439621   -0.04473497   -0.39591535
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58304098
 Nuclear energy                         0.00000000
 Kinetic energy                       405.55121686
 One electron energy                 -550.64403365
 Two electron energy                  151.66507732
 Virial quotient                       -0.98379425
 Correlation energy                    -0.39591535
 !MRCI STATE 1.1 Energy              -398.978956333284

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.00445178 (Davidson, fixed reference)
 Cluster corrected energies          -399.00445178 (Davidson, relaxed reference)
 Cluster corrected energies          -399.00445178 (Davidson, rotated reference)

 Cluster corrected energies          -399.00114163 (Pople, fixed reference)
 Cluster corrected energies          -399.00114163 (Pople, relaxed reference)
 Cluster corrected energies          -399.00114163 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96927800 (fixed)   0.96927800 (relaxed)   0.96927800 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000646   -0.00004723   -0.32998071
 Singles      0.02062944   -0.04468771   -0.04965930
 Pairs        0.04376025    0.00000000   -0.01627534
 Total        1.06439614   -0.04473494   -0.39591535
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58304098
 Nuclear energy                         0.00000000
 Kinetic energy                       405.55121544
 One electron energy                 -550.64403198
 Two electron energy                  151.66507565
 Virial quotient                       -0.98379426
 Correlation energy                    -0.39591535
 !MRCI STATE 2.1 Energy              -398.978956333201

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.00445175 (Davidson, fixed reference)
 Cluster corrected energies          -399.00445175 (Davidson, relaxed reference)
 Cluster corrected energies          -399.00445175 (Davidson, rotated reference)

 Cluster corrected energies          -399.00114160 (Pople, fixed reference)
 Cluster corrected energies          -399.00114160 (Pople, relaxed reference)
 Cluster corrected energies          -399.00114160 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96927796 (fixed)   0.96927796 (relaxed)   0.96927796 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000646   -0.00004723   -0.00004677
 Singles      0.02062955   -0.04468776   -0.04965934
 Pairs        0.04376022   -0.35118037   -0.34620924
 Total        1.06439622   -0.39591535   -0.39591535
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58304098
 Nuclear energy                         0.00000000
 Kinetic energy                       405.55121811
 One electron energy                 -550.64403409
 Two electron energy                  151.66507775
 Virial quotient                       -0.98379425
 Correlation energy                    -0.39591535
 !MRCI STATE 3.1 Energy              -398.978956333127

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.00445179 (Davidson, fixed reference)
 Cluster corrected energies          -399.00445179 (Davidson, relaxed reference)
 Cluster corrected energies          -399.00445179 (Davidson, rotated reference)

 Cluster corrected energies          -399.00114164 (Pople, fixed reference)
 Cluster corrected energies          -399.00114164 (Pople, relaxed reference)
 Cluster corrected energies          -399.00114164 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.54       700     1000      520     2100     2140     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.62      1.57      0.36      0.03      0.39
 REAL TIME  *         4.91 SEC
 DISK USED  *        36.01 MB (local),      483.15 MB (total)
 SF USED    *        49.79 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -399.00445178  AU                              
 SETTING HLSDIAG(2)     =      -399.00445175  AU                              
 SETTING HLSDIAG(3)     =      -399.00445179  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 16
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       36 conf       36 CSFs
 N-1 el internal:       96 conf      148 CSFs
 N-2 el internal:      153 conf      389 CSFs

 Number of electrons in valence space:                     14
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -398.53026356
     2      -398.53026356
     3      -398.53026356
     4      -398.53026356
     5      -398.53026356
     6      -398.48570188

 Number of blocks in overlap matrix:   186   Smallest eigenvalue:  0.26D-01
 Number of N-2 electron functions:     266
 Number of N-1 electron functions:     148

 Number of internal configurations:                   24
 Number of singly external configurations:          4938
 Number of doubly external configurations:        291078
 Total number of contracted configurations:       296040
 Total number of uncontracted configurations:     429219

 Diagonal Coupling coefficients finished.               Storage:    220221 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    262066 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.53026356    -0.00000000    -0.43640730  0.35D-01  0.54D-01     0.04
    1     2     2     1.00000000     0.00000000  -398.53026356    -0.00000000    -0.43542880  0.34D-01  0.53D-01     0.04
    1     3     3     1.00000000     0.00000000  -398.53026356    -0.00000000    -0.43645220  0.34D-01  0.54D-01     0.04
    1     4     4     1.00000000     0.00000000  -398.53026356     0.00000000    -0.43714746  0.35D-01  0.54D-01     0.04
    1     5     5     1.00000000     0.00000000  -398.53026356    -0.00000000    -0.43524123  0.34D-01  0.53D-01     0.04
    1     6     6     1.00000000     0.00000000  -398.48570188    -0.00000000    -0.41509262  0.56D-02  0.67D-01     0.04
    2     1     1     1.07288904    -0.39837841  -398.92864197    -0.39837841    -0.00684504  0.14D-02  0.96D-03     1.01
    2     2     2     1.07344273    -0.39834349  -398.92860705    -0.39834349    -0.00689713  0.13D-02  0.98D-03     1.01
    2     3     3     1.07348854    -0.39819868  -398.92846225    -0.39819868    -0.00708231  0.14D-02  0.99D-03     1.01
    2     4     4     1.07320305    -0.39810379  -398.92836735    -0.39810379    -0.00716610  0.15D-02  0.99D-03     1.01
    2     5     5     1.07384504    -0.39801433  -398.92827789    -0.39801433    -0.00730553  0.15D-02  0.10D-02     1.01
    2     6     6     1.06381445    -0.38790510  -398.87360698    -0.38790510    -0.00449803  0.91D-03  0.73D-03     1.01
    3     1     1     1.06842224    -0.40451668  -398.93478025    -0.00613827    -0.00017043  0.17D-04  0.33D-04     1.97
    3     2     2     1.06839932    -0.40450833  -398.93477189    -0.00616484    -0.00017783  0.18D-04  0.35D-04     1.97
    3     3     3     1.06841479    -0.40450600  -398.93476956    -0.00630732    -0.00018025  0.18D-04  0.35D-04     1.97
    3     4     4     1.06828908    -0.40450539  -398.93476895    -0.00640160    -0.00017962  0.18D-04  0.35D-04     1.97
    3     5     5     1.06824394    -0.40449159  -398.93475515    -0.00647726    -0.00019043  0.21D-04  0.37D-04     1.97
    3     6     6     1.06172564    -0.39214035  -398.87784223    -0.00423525    -0.00012531  0.13D-04  0.24D-04     1.97
    4     1     1     1.06930027    -0.40469597  -398.93495953    -0.00017928    -0.00000765  0.74D-06  0.18D-05     2.94
    4     2     2     1.06929573    -0.40469540  -398.93495896    -0.00018707    -0.00000811  0.78D-06  0.19D-05     2.94
    4     3     3     1.06928844    -0.40469537  -398.93495893    -0.00018936    -0.00000814  0.84D-06  0.19D-05     2.94
    4     4     4     1.06928047    -0.40469529  -398.93495886    -0.00018990    -0.00000820  0.85D-06  0.19D-05     2.94
    4     5     5     1.06926742    -0.40469407  -398.93495763    -0.00020248    -0.00000919  0.10D-05  0.21D-05     2.94
    4     6     6     1.06272415    -0.39227511  -398.87797699    -0.00013476    -0.00000662  0.11D-05  0.14D-05     2.94
    5     1     1     1.06968324    -0.40470481  -398.93496837    -0.00000885    -0.00000039  0.22D-07  0.91D-07     3.91
    5     2     2     1.06968735    -0.40470479  -398.93496835    -0.00000939    -0.00000040  0.22D-07  0.95D-07     3.91
    5     3     3     1.06968325    -0.40470479  -398.93496835    -0.00000942    -0.00000041  0.25D-07  0.94D-07     3.91
    5     4     4     1.06968149    -0.40470478  -398.93496834    -0.00000949    -0.00000041  0.26D-07  0.95D-07     3.91
    5     5     5     1.06968742    -0.40470473  -398.93496829    -0.00001066    -0.00000046  0.28D-07  0.10D-06     3.91
    5     6     6     1.06303963    -0.39228258  -398.87798446    -0.00000747    -0.00000041  0.65D-07  0.74D-07     3.91
    6     1     1     1.06968642    -0.40470527  -398.93496883    -0.00000045    -0.00000002  0.25D-08  0.41D-08     4.86
    6     2     2     1.06968641    -0.40470527  -398.93496883    -0.00000047    -0.00000002  0.26D-08  0.40D-08     4.86
    6     3     3     1.06968617    -0.40470527  -398.93496883    -0.00000048    -0.00000002  0.27D-08  0.41D-08     4.86
    6     4     4     1.06968607    -0.40470527  -398.93496883    -0.00000049    -0.00000002  0.27D-08  0.44D-08     4.86
    6     5     5     1.06968545    -0.40470526  -398.93496882    -0.00000053    -0.00000002  0.27D-08  0.48D-08     4.86
    6     6     6     1.06304136    -0.39228304  -398.87798492    -0.00000046    -0.00000002  0.12D-08  0.46D-08     4.86


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%   0.4%
 P   1.6%  13.8%  31.1%

 Initialization:   0.4%
 Other:           52.3%

 Total CPU:        4.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/\          -0.0000000   0.0000000   0.0000000   0.9668714   0.0000000   0.0000000
 22222/2\          -0.0000000  -0.0000000   0.9668714  -0.0000000   0.0000000  -0.0000000
 22222/\2           0.9668712   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 22222022           0.0000000   0.7815437   0.0000000  -0.0000000  -0.1114271   0.5501996
 22222220          -0.0000000  -0.2942733   0.0000000  -0.0000000   0.7325508   0.5501998
 22222202           0.0000000  -0.4872707   0.0000000  -0.0000000  -0.6211234   0.5501996
 20222222          -0.0000000   0.0000002  -0.0000000   0.0000000   0.0000002  -0.1803124

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222/2\  11.1     0.0000000   0.0000000   0.0725619   0.0000000  -0.0000000  -0.0000000
 2\2222/\  13.1     0.0000000   0.0079613   0.0000000  -0.0000000   0.0721590   0.0084097
 2\222/\2  14.1    -0.0000000  -0.0664725   0.0000000  -0.0000000  -0.0291855   0.0084105
 2\2222/\  15.1     0.0000000   0.0000000  -0.0000000  -0.0639918   0.0000000  -0.0000000
 2\222/\2  15.1     0.0616900  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2\222/2\  12.1     0.0000000  -0.0556681   0.0000000  -0.0000000   0.0465988   0.0084116
 2\222/2\   8.1     0.0000000   0.0000000   0.0530043   0.0000000  -0.0000000  -0.0000000
 2\2222/\   5.1     0.0000000   0.0074789   0.0000000  -0.0000000   0.0524729   0.0039401

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.966871   -0.000000    0.000000    0.000000
 2          -0.000000    0.781550    0.000000    0.000000   -0.569227   -0.000000
 3           0.966871   -0.000000    0.000000    0.000000    0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.966871   -0.000000   -0.000000
 5           0.000000   -0.569227    0.000000    0.000000   -0.781550    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.969880

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966871    0.000000   -0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.966871   -0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.966871   -0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.966871    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.966872    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.969880


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96687124 (fixed)   0.96687124 (relaxed)   0.96687124 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001435   -0.00010552   -0.33103851
 Singles      0.02420202   -0.05059859   -0.05646018
 Pairs        0.04548539   -0.00000000   -0.01720658
 Total        1.06970177   -0.05070412   -0.40470527
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53026356
 Nuclear energy                         0.00000000
 Kinetic energy                       405.52600623
 One electron energy                 -550.56316231
 Two electron energy                  151.62819348
 Virial quotient                       -0.98374694
 Correlation energy                    -0.40470527
 !MRCI STATE 1.1 Energy              -398.934968828433

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96317750 (Davidson, fixed reference)
 Cluster corrected energies          -398.96317750 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96317750 (Davidson, rotated reference)

 Cluster corrected energies          -398.96039781 (Pople, fixed reference)
 Cluster corrected energies          -398.96039781 (Pople, relaxed reference)
 Cluster corrected energies          -398.96039781 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.78155019 (fixed)   0.96687124 (relaxed)   0.96687124 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001435   -0.00010552   -0.33103896
 Singles      0.02420171   -0.05059810   -0.05646015
 Pairs        0.04548570   -0.00000002   -0.01720616
 Total        1.06970176   -0.05070364   -0.40470527
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53026356
 Nuclear energy                         0.00000000
 Kinetic energy                       405.52603892
 One electron energy                 -550.56317633
 Two electron energy                  151.62820750
 Virial quotient                       -0.98374686
 Correlation energy                    -0.40470527
 !MRCI STATE 2.1 Energy              -398.934968828430

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96317750 (Davidson, fixed reference)
 Cluster corrected energies          -398.96317750 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96317750 (Davidson, rotated reference)

 Cluster corrected energies          -398.96039781 (Pople, fixed reference)
 Cluster corrected energies          -398.96039781 (Pople, relaxed reference)
 Cluster corrected energies          -398.96039781 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96687136 (fixed)   0.96687136 (relaxed)   0.96687136 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001435   -0.00010552   -0.33103902
 Singles      0.02420152   -0.05059813   -0.05645999
 Pairs        0.04548564   -0.00000000   -0.01720625
 Total        1.06970152   -0.05070365   -0.40470527
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53026356
 Nuclear energy                         0.00000000
 Kinetic energy                       405.52601746
 One electron energy                 -550.56317596
 Two electron energy                  151.62820713
 Virial quotient                       -0.98374692
 Correlation energy                    -0.40470527
 !MRCI STATE 3.1 Energy              -398.934968828187

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96317740 (Davidson, fixed reference)
 Cluster corrected energies          -398.96317740 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96317740 (Davidson, rotated reference)

 Cluster corrected energies          -398.96039772 (Pople, fixed reference)
 Cluster corrected energies          -398.96039772 (Pople, relaxed reference)
 Cluster corrected energies          -398.96039772 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96687140 (fixed)   0.96687140 (relaxed)   0.96687140 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001435   -0.00010552   -0.33103921
 Singles      0.02420128   -0.05059796   -0.05645987
 Pairs        0.04548579    0.00000000   -0.01720619
 Total        1.06970143   -0.05070348   -0.40470527
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53026356
 Nuclear energy                         0.00000000
 Kinetic energy                       405.52601346
 One electron energy                 -550.56317622
 Two electron energy                  151.62820739
 Virial quotient                       -0.98374693
 Correlation energy                    -0.40470527
 !MRCI STATE 4.1 Energy              -398.934968826660

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96317736 (Davidson, fixed reference)
 Cluster corrected energies          -398.96317736 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96317736 (Davidson, rotated reference)

 Cluster corrected energies          -398.96039768 (Pople, fixed reference)
 Cluster corrected energies          -398.96039768 (Pople, relaxed reference)
 Cluster corrected energies          -398.96039768 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.78155050 (fixed)   0.96687168 (relaxed)   0.96687168 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001435   -0.00010552   -0.33103981
 Singles      0.02420097   -0.05059745   -0.05645980
 Pairs        0.04548548   -0.00000007   -0.01720566
 Total        1.06970081   -0.05070305   -0.40470526
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53026356
 Nuclear energy                         0.00000000
 Kinetic energy                       405.52604674
 One electron energy                 -550.56318412
 Two electron energy                  151.62821529
 Virial quotient                       -0.98374684
 Correlation energy                    -0.40470526
 !MRCI STATE 5.1 Energy              -398.934968824989

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96317711 (Davidson, fixed reference)
 Cluster corrected energies          -398.96317711 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96317711 (Davidson, rotated reference)

 Cluster corrected energies          -398.96039744 (Pople, fixed reference)
 Cluster corrected energies          -398.96039744 (Pople, relaxed reference)
 Cluster corrected energies          -398.96039744 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96987963 (fixed)   0.96988228 (relaxed)   0.96987963 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003261   -0.00017718   -0.00017870
 Singles      0.00439839   -0.01429258   -0.01506861
 Pairs        0.05864503   -0.37781328   -0.37703573
 Total        1.06307604   -0.39228304   -0.39228304
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.48570188
 Nuclear energy                         0.00000000
 Kinetic energy                       405.47741267
 One electron energy                 -550.41528951
 Two electron energy                  151.53730460
 Virial quotient                       -0.98372430
 Correlation energy                    -0.39228304
 !MRCI STATE 6.1 Energy              -398.877984916301

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.90272858 (Davidson, fixed reference)
 Cluster corrected energies          -398.90272629 (Davidson, relaxed reference)
 Cluster corrected energies          -398.90272858 (Davidson, rotated reference)

 Cluster corrected energies          -398.90018255 (Pople, fixed reference)
 Cluster corrected energies          -398.90018040 (Pople, relaxed reference)
 Cluster corrected energies          -398.90018255 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       19.49       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         7.76      5.14      1.57      0.36      0.03      0.39
 REAL TIME  *        11.48 SEC
 DISK USED  *        49.95 MB (local),      650.48 MB (total)
 SF USED    *       141.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -398.96317750  AU                              
 SETTING HLSDIAG(5)     =      -398.96317750  AU                              
 SETTING HLSDIAG(6)     =      -398.96317740  AU                              
 SETTING HLSDIAG(7)     =      -398.96317736  AU                              
 SETTING HLSDIAG(8)     =      -398.96317711  AU                              
 SETTING HLSDIAG(9)     =      -398.90272858  AU                              


         HLSDIAG
    -399.0044518
    -399.0044518
    -399.0044518
    -398.9631775
    -398.9631775
    -398.9631774
    -398.9631774
    -398.9631771
    -398.9027286
                                                  

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

 Time for Seward_LS:       0.65 sec

 CPU time:      0.66 sec, REAL time:      0.70 sec


 SORTLS1 read     2508011. and wrote     2508011. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.04 sec
 SORTLS2 read     2508011. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    31.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    31.9 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.42       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       19.49       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.62      0.86      5.14      1.57      0.36      0.03      0.39
 REAL TIME  *        13.03 SEC
 DISK USED  *        49.99 MB (local),      839.98 MB (total)
 SF USED    *       141.89 MB
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
  
 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -398.978956   -398.978956   -398.978956
 Replaced energies:   -399.004452   -399.004452   -399.004452

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -398.934969   -398.934969   -398.934969   -398.934969   -398.934969   -398.877985
 Replaced energies:   -398.963178   -398.963177   -398.963177   -398.963177   -398.963177   -398.902729



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -399.00445179

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00    -140.40      -0.00       0.00       0.00       0.00    -141.24
                            0.00      -0.00      -0.00       0.00       0.00     140.40       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00     140.40      -0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00     198.55      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00    -198.55       0.00    -140.40       0.00       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00     140.40       0.00       0.00       0.00       0.00       0.00    -140.40      -0.00       0.00
                           -0.00       0.00     140.40       0.00       0.00       0.00       0.00       0.00     140.40       0.00

    5   2.1  1.0  0.0    -140.40      -0.00       0.00       0.00       0.01       0.00     140.40      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

    6   3.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                         -140.40       0.00      -0.00      -0.00      -0.00       0.00    -140.40       0.00       0.00    -199.73

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00     140.40       0.00       0.00       0.00       0.00    -141.24
                           -0.00      -0.00      -0.00      -0.00       0.00     140.40      -0.00       0.00       0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00    -140.40      -0.00       0.00       0.00       0.01       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -198.55      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -140.40       0.00      -0.00      -0.00     198.55      -0.00       0.00

   10   1.1  0.0  0.0    -141.24      -0.00       0.00       0.00       0.00       0.00    -141.24      -0.00       0.00    9058.66
                           -0.00      -0.00       0.00      -0.00      -0.00     199.73       0.00       0.00      -0.00       0.00

   11   2.1  0.0  0.0      -0.00      -0.00    -161.46       0.00       0.00       0.00      -0.00      -0.00    -161.46       0.00
                           -0.00     -60.79      -0.00    -142.36      -0.00       0.00       0.00      60.79       0.00      -0.00

   12   3.1  0.0  0.0      -0.00     141.24       0.00       0.00       0.00       0.00      -0.00     141.24       0.00       0.00
                           -0.00      -0.00    -141.25      -0.00       0.00       0.00       0.00       0.00     141.25      -0.00

   13   4.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                          141.25       0.00      -0.00       0.00     199.73       0.00    -141.25      -0.00       0.00      -0.00

   14   5.1  0.0  0.0       0.00      -0.00      23.02       0.00       0.00       0.00       0.00      -0.00      23.02       0.00
                           -0.00     151.34       0.00    -181.46      -0.00       0.00       0.00    -151.34      -0.00      -0.00

   15   6.1  0.0  0.0       0.00      -0.00     230.37       0.00       0.00       0.00       0.00      -0.00     230.37       0.00
                            0.00    -230.38       0.00    -325.78       0.00       0.00      -0.00     230.38      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00    -141.25       0.00      -0.00

    2   2.1  1.0  1.0      -0.00     141.24      -0.00      -0.00      -0.00
                           60.79       0.00      -0.00    -151.34     230.38

    3   3.1  1.0  1.0    -161.46       0.00      -0.00      23.02     230.37
                            0.00     141.25       0.00      -0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          142.36       0.00      -0.00     181.46     325.78

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -199.73       0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00

    7   1.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00     141.25      -0.00       0.00

    8   2.1  1.0 -1.0      -0.00     141.24      -0.00      -0.00      -0.00
                          -60.79      -0.00       0.00     151.34    -230.38

    9   3.1  1.0 -1.0    -161.46       0.00      -0.00      23.02     230.37
                           -0.00    -141.25      -0.00       0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    9058.66       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    9058.68       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    9058.69       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    9058.74       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   22325.66
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -399.00445179 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.001       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     198.555       0.000      -0.000

    2    1  |1 1>+              0.000       0.007       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    -198.555       0.000       0.000       0.000    -198.555

    1    1  |1 0>               0.000      -0.000      -0.000       0.001       0.000       0.000       0.000     198.555
                                0.000       0.000     198.555       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.007       0.000    -198.555       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                             -198.555       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000    -198.555      -0.000       0.001       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000     198.555       0.000      -0.000       0.000       0.007
                                0.000       0.000     198.555       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -198.555       0.000      -0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>            -199.746      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     199.735      -0.000      -0.000

    2    1  |0 0>              -0.000      -0.000    -228.334       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -142.356      -0.000       0.000      -0.000     -85.976

    3    1  |0 0>              -0.000     199.739       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    4    1  |0 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     199.731       0.000     199.754       0.000

    5    1  |0 0>               0.000      -0.000      32.555       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -181.463      -0.000       0.000      -0.000     214.024

    6    1  |0 0>               0.000      -0.000     325.790       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -325.776       0.000       0.000       0.000    -325.804

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000    -199.746      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000      -0.000     199.739      -0.000      -0.000      -0.000
                              198.555       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000    -228.334       0.000      -0.000      32.555     325.790
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     142.356       0.000      -0.000     181.463     325.776

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000    -199.731       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -199.735      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -199.754       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      85.976       0.000      -0.000    -214.024     325.804

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     199.751       0.000      -0.000      -0.000

    1    1  |0 0>               0.000    9058.659       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    9058.659       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    9058.681       0.000       0.000       0.000
                             -199.751      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    9058.690       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    9058.745       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   22325.664
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -399.00539570    -0.00094392     -207.17      0.00000000        0.00      0.0000
    2  -399.00539570    -0.00094392     -207.17      0.00000000        0.00      0.0000
    3  -399.00539569    -0.00094390     -207.16      0.00000001        0.00      0.0000
    4  -399.00539569    -0.00094390     -207.16      0.00000002        0.00      0.0000
    5  -399.00539568    -0.00094390     -207.16      0.00000002        0.00      0.0000
    6  -399.00354710     0.00090469      198.56      0.00184860      405.72      0.0503
    7  -399.00354709     0.00090470      198.56      0.00184862      405.72      0.0503
    8  -399.00354708     0.00090470      198.56      0.00184862      405.72      0.0503
    9  -399.00270853     0.00174326      382.60      0.00268718      589.77      0.0731
   10  -398.96313826     0.04131352     9067.27      0.04225744     9274.44      1.1499
   11  -398.96313826     0.04131353     9067.27      0.04225744     9274.44      1.1499
   12  -398.96313816     0.04131363     9067.29      0.04225754     9274.46      1.1499
   13  -398.96313812     0.04131366     9067.30      0.04225758     9274.47      1.1499
   14  -398.96313787     0.04131392     9067.36      0.04225783     9274.52      1.1499
   15  -398.90266246     0.10178933    22340.18      0.10273325    22547.34      2.7955

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000013  0.70677779  0.00000000 -0.00000000 -0.00000000  0.70710739 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.70677147  0.00000000 -0.00000000  0.00000000  0.70711374 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.74346296  0.00000013 -0.00000000  0.00000000 -0.33662120 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.66325013 -0.00000012 -0.00000000  0.00000000 -0.47555014 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00391831 -0.00000000  0.00000000 -0.00000000  0.00410149
                          -0.00000000  0.00000000 -0.00000000  0.70676125  0.00000000  0.00000000  0.00000000  0.70710123

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000013  0.70677905  0.00000000 -0.00000000 -0.00000000 -0.70710617  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00391838 -0.00000000 -0.00000000  0.00000000 -0.00410142
                          -0.00000000  0.00000000 -0.00000000  0.70677386  0.00000000 -0.00000000 -0.00000000 -0.70708854

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.08020955 -0.00000001  0.00000000 -0.00000000  0.81216359 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.70678535  0.00000000 -0.00000000 -0.00000000 -0.70709982  0.00000000

   1    1  |0 0>          -0.00000001  0.03047161  0.00000000 -0.00000000 -0.00000000  0.00000095 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.02925500  0.00000001 -0.00000000  0.00000000 -0.00852497 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.03047222 -0.00000000  0.00000000  0.00000000  0.00000060 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.03047139  0.00000000 -0.00000000 -0.00000000 -0.00000154
                           0.00000000 -0.00000000 -0.00000000 -0.00016893  0.00000000  0.00000000 -0.00000000  0.00000001

   5    1  |0 0>           0.00852426  0.00000000  0.00000000 -0.00000000  0.02925517  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000041 -0.00000000  0.00000000  0.00000000 -0.00000068  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000 -0.02154734  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.02154648 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.57715654 -0.00000000 -0.02462271  0.00000000  0.00000000  0.00357031  0.01484217
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57715862  0.00000000  0.01540294 -0.00000000  0.00000000  0.01953826  0.01484154

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000254  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02154557  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.02154603  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000254  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02154814  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.57716322  0.00000000  0.00921960 -0.00000000 -0.00000000 -0.02310925  0.01484277

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.02154775 -0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>          -0.00000000  0.99953563 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000001  0.00000000  0.99953280 -0.00000000 -0.00000000 -0.00237576 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.99953561 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.99953562 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00011779  0.00000000  0.00000000

   5    1  |0 0>           0.00000051 -0.00000000  0.00237578  0.00000000  0.00000000  0.99953280 -0.00000002
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.02570738 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000006  0.99966951
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -399.00539570     -0.00094392     -207.17      0.00000000        0.00      0.0000
     2   1   -399.00539570     -0.00094392     -207.17      0.00000000        0.00      0.0000
     3   1   -399.00539569     -0.00094390     -207.16      0.00000001        0.00      0.0000
     4   1   -399.00539569     -0.00094390     -207.16      0.00000002        0.00      0.0000
     5   1   -399.00539568     -0.00094390     -207.16      0.00000002        0.00      0.0000
     6   1   -399.00354710      0.00090469      198.56      0.00184860      405.72      0.0503
     7   1   -399.00354709      0.00090470      198.56      0.00184862      405.72      0.0503
     8   1   -399.00354708      0.00090470      198.56      0.00184862      405.72      0.0503
     9   1   -399.00270853      0.00174326      382.60      0.00268718      589.77      0.0731
    10   1   -398.96313826      0.04131352     9067.27      0.04225744     9274.44      1.1499
    11   1   -398.96313826      0.04131353     9067.27      0.04225744     9274.44      1.1499
    12   1   -398.96313816      0.04131363     9067.29      0.04225754     9274.46      1.1499
    13   1   -398.96313812      0.04131366     9067.30      0.04225758     9274.47      1.1499
    14   1   -398.96313787      0.04131392     9067.36      0.04225783     9274.52      1.1499
    15   1   -398.90266246      0.10178933    22340.18      0.10273325    22547.34      2.7955

 E0 =   -399.00445179 is the energy of the lowest zeroth-order state
 E1 =   -399.00539570 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000013  0.70677779  0.00000000 -0.00000000 -0.00000000  0.70710739 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000  0.70677147  0.00000000 -0.00000000  0.00000000  0.70711374 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.74346296  0.00000013 -0.00000000  0.00000000 -0.33662120 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.66325013 -0.00000012 -0.00000000  0.00000000 -0.47555014 -0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00391831 -0.00000000  0.00000000 -0.00000000  0.00410149
                               -0.00000000  0.00000000 -0.00000000  0.70676125  0.00000000  0.00000000  0.00000000  0.70710123

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000013  0.70677905  0.00000000 -0.00000000 -0.00000000 -0.70710617  0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00391838 -0.00000000 -0.00000000  0.00000000 -0.00410142
                               -0.00000000  0.00000000 -0.00000000  0.70677386  0.00000000 -0.00000000 -0.00000000 -0.70708854

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.08020955 -0.00000001  0.00000000 -0.00000000  0.81216359 -0.00000000 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.70678535  0.00000000 -0.00000000 -0.00000000 -0.70709982  0.00000000

 10  1     1    1  |0 0>       -0.00000001  0.03047161  0.00000000 -0.00000000 -0.00000000  0.00000095 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.02925500  0.00000001 -0.00000000  0.00000000 -0.00852497 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000 -0.03047222 -0.00000000  0.00000000  0.00000000  0.00000060 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.03047139  0.00000000 -0.00000000 -0.00000000 -0.00000154
                                0.00000000 -0.00000000 -0.00000000 -0.00016893  0.00000000  0.00000000 -0.00000000  0.00000001

 14  1     5    1  |0 0>        0.00852426  0.00000000  0.00000000 -0.00000000  0.02925517  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.00000041 -0.00000000  0.00000000  0.00000000 -0.00000068  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000 -0.02154734  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.02154648 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.57715654 -0.00000000 -0.02462271  0.00000000  0.00000000  0.00357031  0.01484217
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57715862  0.00000000  0.01540294 -0.00000000  0.00000000  0.01953826  0.01484154

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000254  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02154557  0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.02154603  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000254  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02154814  0.00000000 -0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.57716322  0.00000000  0.00921960 -0.00000000 -0.00000000 -0.02310925  0.01484277

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.02154775 -0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.99953563 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000001  0.00000000  0.99953280 -0.00000000 -0.00000000 -0.00237576 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.99953561 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.99953562 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00011779  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000051 -0.00000000  0.00237578  0.00000000  0.00000000  0.99953280 -0.00000002
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.02570738 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000006  0.99966951
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%
  3  1     3    1  |1 1>+        55.27%    0.00%    0.00%    0.00%   11.33%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         43.99%    0.00%    0.00%    0.00%   22.61%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%
  6  1     3    1  |1 0>          0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%
  8  1     2    1  |1 1>-         0.64%    0.00%    0.00%    0.00%   65.96%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.09%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+        33.31%    0.00%    0.06%    0.00%    0.00%    0.00%    0.02%
  4  1     1    1  |1 0>         33.31%    0.00%    0.02%    0.00%    0.00%    0.04%    0.02%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.31%    0.00%    0.01%    0.00%    0.00%    0.05%    0.02%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%   99.91%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   99.91%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%   99.91%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.91%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.91%    0.00%
 15  1     6    1  |0 0>          0.07%    0.00%    0.00%    0.00%    0.00%    0.00%   99.93%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.42       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       19.49       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        12.00      3.38      0.86      5.14      1.57      0.36      0.03      0.39
 REAL TIME  *        17.34 SEC
 DISK USED  *        49.99 MB (local),      839.98 MB (total)
 SF USED    *       141.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -398.902662457667

              CI              CI           MULTI         RHF-SCF
   -398.87798492   -398.97895633   -398.48570188   -398.58540353
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
