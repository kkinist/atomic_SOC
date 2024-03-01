
 Working directory              : /wrk/irikura/molpro.FroysQN7hZ/
 Global scratch directory       : /wrk/irikura/molpro.FroysQN7hZ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.FroysQN7hZ/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
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
     wf,sym=1,spin=0;state,6;
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
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   S SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 13:26:23  
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

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     24 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         0.59      0.40
 REAL TIME  *         1.14 SEC
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
   2     -398.58502631      -0.00725607     0.33D-02     0.69D-02     1     0       0.01      0.01    diag2
   3     -398.58534467      -0.00031836     0.10D-02     0.13D-02     2     0       0.00      0.01    diag2
   4     -398.58539497      -0.00005030     0.24D-03     0.58D-03     3     0       0.00      0.01    diag2
   5     -398.58540304      -0.00000808     0.76D-04     0.29D-03     4     0       0.00      0.01    diag2
   6     -398.58540352      -0.00000048     0.19D-04     0.78D-04     5     0       0.00      0.01    diag2
   7     -398.58540353      -0.00000001     0.29D-05     0.11D-04     6     0       0.01      0.02    diag2
   8     -398.58540353      -0.00000000     0.33D-06     0.17D-05     7     0       0.00      0.02    fixocc
   9     -398.58540353      -0.00000000     0.29D-07     0.78D-07     0     0       0.00      0.02    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   4

 !RHF STATE 1.1 Energy               -398.585403528641
  RHF One-electron energy            -550.851178789680
  RHF Two-electron energy             152.265775261039
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
    2.2     2.00000    -6.68315     1  1  py   0.99827
    3.2     2.00000    -6.68153     1  1  pz   1.00152
    4.2     2.00000    -0.39732     1  2  pz   0.97108
    5.2     1.00000    -0.48037     1  2  px   1.04382
    6.2     1.00000    -0.48037     1  2  py   1.04342


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
 CPU TIMES  *         0.62      0.03      0.40
 REAL TIME  *         2.25 SEC
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
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.245D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.144D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.805D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 4 6 2 1   3 5 4 6 2 3 5 6 4 2   1 3 5 6 4 2 1 5 3 6   4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.639D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.275D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.276D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.381D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.200D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.469D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 2 3 1   2 3 7 9 810 4 5 6 1   2 3 7 910 8 5 4 6 7   9 810 4 5 6 1 2 3 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  317  ( 11 closed/active, 168 closed/virtual, 0 active/active, 138 active/virtual )
 Total number of variables:    386
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -398.54154127    -398.54304822   -0.00150695    0.05407116 0.00004074 0.00000000  0.45E-01      0.12
   2    5   10    0   -398.54305408    -398.54305415   -0.00000007    0.00029780 0.00000012 0.00000000  0.29E-03      0.27
   3   20   40    0   -398.54305415    -398.54305415   -0.00000000    0.00000012 0.00000004 0.00000000  0.48E-07      0.48

 CONVERGENCE REACHED!  Final gradient:    0.00000004 ( 0.43E-07)
                       Final energy:   -398.54305415
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -398.582882424651
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22579675
 One electron energy                          -550.75650825
 Two electron energy                           152.17362582
 Virial ratio                                    1.98360688
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -398.582882424402
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22579676
 One electron energy                          -550.75650827
 Two electron energy                           152.17362584
 Virial ratio                                    1.98360688
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -398.582882424029
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22579677
 One electron energy                          -550.75650829
 Two electron energy                           152.17362587
 Virial ratio                                    1.98360688
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -398.530526593286
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22579675
 One electron energy                          -550.75650824
 Two electron energy                           152.22598165
 Virial ratio                                    1.98347768
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -398.530526593251
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22579675
 One electron energy                          -550.75650825
 Two electron energy                           152.22598165
 Virial ratio                                    1.98347768
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -398.530526593117
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22579676
 One electron energy                          -550.75650827
 Two electron energy                           152.22598167
 Virial ratio                                    1.98347768
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -398.530526592888
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22579677
 One electron energy                          -550.75650829
 Two electron energy                           152.22598170
 Virial ratio                                    1.98347768
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -398.530526592862
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22579677
 One electron energy                          -550.75650829
 Two electron energy                           152.22598170
 Virial ratio                                    1.98347768
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -398.486207077121
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.18189427
 One electron energy                          -550.64875982
 Two electron energy                           152.16255275
 Virial ratio                                    1.98347486
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999959
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.563782804008
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999997689
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000572
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999999950
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.436205944256
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000000384
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999657
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.297894456257
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000001875
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999996858
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000002705
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.702123389607
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999657
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000343
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.138322739735
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000436
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000002570
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999997345
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.861670666137
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 2 5 3 6 1   4 2 5 3 6 4 2 5 3 6   1 4 2 5 3 6 1 4 2 5   3 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 1   3 2 4 610 8 7 9 5 1   3 2 4 610 8 7 9 5 4   6 810 7 9 5 1 3 2 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -92.30422     1  1  s    0.99908
    2.1     2.00000    -9.06248     1  2  s    1.00053
    3.1     1.99222    -0.88797     1  3  s    1.01036
    1.2     2.00000    -6.69086     1  1  px   0.99978
    2.2     2.00000    -6.69086     1  1  pz   0.99978
    3.2     2.00000    -6.69086     1  1  py   0.99978
    4.2     1.33593    -0.28715     1  2  py   0.99259
    5.2     1.33593    -0.28715     1  2  pz   0.99259
    6.2     1.33593    -0.28715     1  2  px   0.99259
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa2          1.00000000      0.00000000     -0.00000000
 2 a2a         -0.00000000      0.00001853      1.00000000
 2 2aa         -0.00000000      1.00000000     -0.00001853
 
 Energy:     -398.58288242   -398.58288242   -398.58288242
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202          0.80225487      0.00005295     -0.00000537      0.00000115     -0.15183475      0.56715555
 2 220         -0.26963469     -0.00000391      0.00000199     -0.00001911      0.77069047      0.56715556
 2 2ab          0.00000470      0.00000503      0.70710678     -0.00002099     -0.00000018     -0.00000000
 2 2ba         -0.00000470     -0.00000503     -0.70710678      0.00002099      0.00000018      0.00000000
 2 a2b          0.00000247      0.00000007      0.00002099      0.70710678      0.00001840      0.00000000
 2 b2a         -0.00000247     -0.00000007     -0.00002099     -0.70710678     -0.00001840     -0.00000000
 2 ab2         -0.00004925      0.70710678     -0.00000503     -0.00000007     -0.00001364      0.00000000
 2 ba2          0.00004925     -0.70710678      0.00000503      0.00000007      0.00001364     -0.00000000
 2 022         -0.53262018     -0.00004903      0.00000338      0.00001796     -0.61885573      0.56715556
 0 222         -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.18709282
 
 Energy:     -398.53052659   -398.53052659   -398.53052659   -398.53052659   -398.53052659   -398.48620708
 


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
 CPU TIMES  *         1.13      0.50      0.03      0.40
 REAL TIME  *         2.88 SEC
 DISK USED  *        31.13 MB (local),      424.64 MB (total)
 SF USED    *         4.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -398.5828824   2.0
    -398.5828824   2.0
    -398.5828824   2.0
    -398.5305266   6.0
    -398.5305266   6.0
    -398.5305266   6.0
    -398.5305266   6.0
    -398.5305266   6.0
    -398.4862071   0.0
                                                  


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

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.19 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -398.58288242
     2      -398.58288242
     3      -398.58288242

 Number of blocks in overlap matrix:   154   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     177
 Number of N-1 electron functions:     174

 Number of internal configurations:                   16
 Number of singly external configurations:          5796
 Number of doubly external configurations:        193347
 Total number of contracted configurations:       199159
 Total number of uncontracted configurations:     506428

 Diagonal Coupling coefficients finished.               Storage:    201340 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    252133 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.58288242    -0.00000000    -0.43444469  0.34D-01  0.57D-01     0.03
    1     2     2     1.00000000     0.00000000  -398.58288242    -0.00000000    -0.43409201  0.34D-01  0.57D-01     0.03
    1     3     3     1.00000000     0.00000000  -398.58288242    -0.00000000    -0.43438813  0.34D-01  0.57D-01     0.03
    2     1     1     1.07340756    -0.39002819  -398.97291062    -0.39002819    -0.00623219  0.13D-02  0.85D-03     0.37
    2     2     2     1.07368791    -0.38994295  -398.97282538    -0.38994295    -0.00632573  0.14D-02  0.85D-03     0.37
    2     3     3     1.07362774    -0.38993470  -398.97281713    -0.38993470    -0.00634316  0.14D-02  0.86D-03     0.37
    3     1     1     1.06421830    -0.39587157  -398.97875400    -0.00584338    -0.00007640  0.56D-05  0.14D-04     0.69
    3     2     2     1.06421725    -0.39587079  -398.97875321    -0.00592783    -0.00007712  0.56D-05  0.14D-04     0.69
    3     3     3     1.06419438    -0.39587068  -398.97875310    -0.00593598    -0.00007691  0.53D-05  0.15D-04     0.69
    4     1     1     1.06440461    -0.39595409  -398.97883651    -0.00008252    -0.00000202  0.36D-06  0.43D-06     1.00
    4     2     2     1.06440299    -0.39595405  -398.97883647    -0.00008326    -0.00000205  0.38D-06  0.44D-06     1.00
    4     3     3     1.06439874    -0.39595396  -398.97883638    -0.00008328    -0.00000212  0.40D-06  0.45D-06     1.00
    5     1     1     1.06457140    -0.39595645  -398.97883887    -0.00000236    -0.00000011  0.25D-07  0.18D-07     1.30
    5     2     2     1.06457136    -0.39595645  -398.97883887    -0.00000240    -0.00000011  0.25D-07  0.18D-07     1.30
    5     3     3     1.06457193    -0.39595644  -398.97883887    -0.00000249    -0.00000011  0.25D-07  0.19D-07     1.30
    6     1     1     1.06457290    -0.39595657  -398.97883899    -0.00000012    -0.00000000  0.47D-09  0.70D-09     1.58
    6     2     2     1.06457298    -0.39595657  -398.97883899    -0.00000012    -0.00000000  0.47D-09  0.72D-09     1.58
    6     3     3     1.06457298    -0.39595657  -398.97883899    -0.00000012    -0.00000000  0.46D-09  0.70D-09     1.58


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   1.3%
 P   1.3%  17.7%  24.1%

 Initialization:   1.9%
 Other:           53.8%

 Total CPU:        1.6 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//2           0.9691955   0.0000000  -0.0000000
 22222/2/           0.0000000   0.0000000   0.9691955
 222222//          -0.0000000   0.9691954   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969195   -0.000000    0.000000
 2           0.000000    0.969195    0.000000
 3          -0.000000    0.000000    0.969195

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969195   -0.000000    0.000000
 2          -0.000000    0.969195   -0.000000
 3           0.000000   -0.000000    0.969195


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96919549 (fixed)   0.96919549 (relaxed)   0.96919549 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000421   -0.00004204   -0.33005631
 Singles      0.02075382   -0.04458776   -0.04960390
 Pairs        0.04381936    0.00000000   -0.01629636
 Total        1.06457738   -0.04462979   -0.39595657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58288242
 Nuclear energy                         0.00000000
 Kinetic energy                       405.53855000
 One electron energy                 -550.60783283
 Two electron energy                  151.62899383
 Virial quotient                       -0.98382469
 Correlation energy                    -0.39595657
 !MRCI STATE 1.1 Energy              -398.978838991288

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.00440883 (Davidson, fixed reference)
 Cluster corrected energies          -399.00440883 (Davidson, relaxed reference)
 Cluster corrected energies          -399.00440883 (Davidson, rotated reference)

 Cluster corrected energies          -399.00109175 (Pople, fixed reference)
 Cluster corrected energies          -399.00109175 (Pople, relaxed reference)
 Cluster corrected energies          -399.00109175 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96919545 (fixed)   0.96919545 (relaxed)   0.96919545 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000421   -0.00004204   -0.33005624
 Singles      0.02075392   -0.04458779   -0.04960395
 Pairs        0.04381934   -0.00000000   -0.01629638
 Total        1.06457746   -0.04462983   -0.39595657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58288242
 Nuclear energy                         0.00000000
 Kinetic energy                       405.53855238
 One electron energy                 -550.60783463
 Two electron energy                  151.62899563
 Virial quotient                       -0.98382469
 Correlation energy                    -0.39595657
 !MRCI STATE 2.1 Energy              -398.978838991140

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.00440886 (Davidson, fixed reference)
 Cluster corrected energies          -399.00440886 (Davidson, relaxed reference)
 Cluster corrected energies          -399.00440886 (Davidson, rotated reference)

 Cluster corrected energies          -399.00109178 (Pople, fixed reference)
 Cluster corrected energies          -399.00109178 (Pople, relaxed reference)
 Cluster corrected energies          -399.00109178 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96919545 (fixed)   0.96919545 (relaxed)   0.96919545 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000421   -0.00004204   -0.00004105
 Singles      0.02075387   -0.04458778   -0.04960392
 Pairs        0.04381938   -0.35132675   -0.34631159
 Total        1.06457746   -0.39595657   -0.39595657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58288242
 Nuclear energy                         0.00000000
 Kinetic energy                       405.53855123
 One electron energy                 -550.60783450
 Two electron energy                  151.62899551
 Virial quotient                       -0.98382469
 Correlation energy                    -0.39595657
 !MRCI STATE 3.1 Energy              -398.978838991092

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.00440886 (Davidson, fixed reference)
 Cluster corrected energies          -399.00440886 (Davidson, relaxed reference)
 Cluster corrected energies          -399.00440886 (Davidson, rotated reference)

 Cluster corrected energies          -399.00109177 (Pople, fixed reference)
 Cluster corrected energies          -399.00109177 (Pople, relaxed reference)
 Cluster corrected energies          -399.00109177 (Pople, rotated reference)



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
 CPU TIMES  *         2.82      1.68      0.50      0.03      0.40
 REAL TIME  *         5.07 SEC
 DISK USED  *        36.01 MB (local),      483.15 MB (total)
 SF USED    *        49.92 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -399.00440883  AU                              
 SETTING HLSDIAG(2)     =      -399.00440886  AU                              
 SETTING HLSDIAG(3)     =      -399.00440886  AU                              


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
     1      -398.53052659
     2      -398.53052659
     3      -398.53052659
     4      -398.53052659
     5      -398.53052659
     6      -398.48620708

 Number of blocks in overlap matrix:   178   Smallest eigenvalue:  0.24D-01
 Number of N-2 electron functions:     266
 Number of N-1 electron functions:     148

 Number of internal configurations:                   24
 Number of singly external configurations:          4938
 Number of doubly external configurations:        291078
 Total number of contracted configurations:       296040
 Total number of uncontracted configurations:     429219

 Diagonal Coupling coefficients finished.               Storage:    220253 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    262066 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.53052659    -0.00000000    -0.43494088  0.34D-01  0.53D-01     0.03
    1     2     2     1.00000000     0.00000000  -398.53052659    -0.00000000    -0.43588646  0.34D-01  0.54D-01     0.03
    1     3     3     1.00000000     0.00000000  -398.53052659     0.00000000    -0.43678864  0.35D-01  0.54D-01     0.03
    1     4     4     1.00000000     0.00000000  -398.53052659    -0.00000000    -0.43593870  0.34D-01  0.54D-01     0.03
    1     5     5     1.00000000     0.00000000  -398.53052659    -0.00000000    -0.43481674  0.34D-01  0.53D-01     0.03
    1     6     6     1.00000000     0.00000000  -398.48620708    -0.00000000    -0.41451193  0.46D-02  0.68D-01     0.03
    2     1     1     1.07324129    -0.39824496  -398.92877156    -0.39824496    -0.00672621  0.12D-02  0.98D-03     1.06
    2     2     2     1.07300207    -0.39823491  -398.92876150    -0.39823491    -0.00672694  0.13D-02  0.97D-03     1.06
    2     3     3     1.07331705    -0.39811642  -398.92864301    -0.39811642    -0.00689526  0.14D-02  0.98D-03     1.06
    2     4     4     1.07278146    -0.39804319  -398.92856979    -0.39804319    -0.00695814  0.14D-02  0.96D-03     1.06
    2     5     5     1.07368300    -0.39794628  -398.92847287    -0.39794628    -0.00710777  0.14D-02  0.10D-02     1.06
    2     6     6     1.06315222    -0.38776112  -398.87396819    -0.38776112    -0.00427444  0.75D-03  0.73D-03     1.06
    3     1     1     1.06834777    -0.40428073  -398.93480732    -0.00603576    -0.00016681  0.17D-04  0.32D-04     2.10
    3     2     2     1.06834497    -0.40427214  -398.93479874    -0.00603723    -0.00017418  0.18D-04  0.34D-04     2.10
    3     3     3     1.06828022    -0.40427079  -398.93479738    -0.00615437    -0.00017459  0.18D-04  0.34D-04     2.10
    3     4     4     1.06837916    -0.40426968  -398.93479627    -0.00622649    -0.00017654  0.18D-04  0.35D-04     2.10
    3     5     5     1.06815015    -0.40425235  -398.93477895    -0.00630608    -0.00018927  0.20D-04  0.37D-04     2.10
    3     6     6     1.06144296    -0.39180873  -398.87801580    -0.00404761    -0.00012134  0.13D-04  0.23D-04     2.10
    4     1     1     1.06925207    -0.40445626  -398.93498285    -0.00017554    -0.00000748  0.76D-06  0.17D-05     3.08
    4     2     2     1.06925125    -0.40445561  -398.93498220    -0.00018347    -0.00000802  0.80D-06  0.19D-05     3.08
    4     3     3     1.06924171    -0.40445550  -398.93498209    -0.00018471    -0.00000807  0.86D-06  0.19D-05     3.08
    4     4     4     1.06923605    -0.40445530  -398.93498189    -0.00018562    -0.00000819  0.87D-06  0.19D-05     3.08
    4     5     5     1.06922185    -0.40445405  -398.93498065    -0.00020170    -0.00000918  0.10D-05  0.20D-05     3.08
    4     6     6     1.06245792    -0.39193978  -398.87814686    -0.00013106    -0.00000665  0.12D-05  0.13D-05     3.08
    5     1     1     1.06963868    -0.40446489  -398.93499148    -0.00000863    -0.00000037  0.21D-07  0.88D-07     4.05
    5     2     2     1.06964277    -0.40446487  -398.93499146    -0.00000926    -0.00000039  0.21D-07  0.92D-07     4.05
    5     3     3     1.06963991    -0.40446485  -398.93499145    -0.00000935    -0.00000040  0.25D-07  0.93D-07     4.05
    5     4     4     1.06963913    -0.40446484  -398.93499143    -0.00000954    -0.00000041  0.26D-07  0.96D-07     4.05
    5     5     5     1.06964584    -0.40446478  -398.93499137    -0.00001073    -0.00000046  0.29D-07  0.10D-06     4.05
    5     6     6     1.06278023    -0.39194729  -398.87815437    -0.00000751    -0.00000041  0.66D-07  0.75D-07     4.05
    6     1     1     1.06964130    -0.40446532  -398.93499192    -0.00000044    -0.00000002  0.22D-08  0.41D-08     5.02
    6     2     2     1.06964146    -0.40446532  -398.93499192    -0.00000045    -0.00000002  0.22D-08  0.41D-08     5.02
    6     3     3     1.06964120    -0.40446532  -398.93499192    -0.00000047    -0.00000002  0.24D-08  0.41D-08     5.02
    6     4     4     1.06964116    -0.40446532  -398.93499191    -0.00000049    -0.00000002  0.25D-08  0.44D-08     5.02
    6     5     5     1.06964072    -0.40446532  -398.93499191    -0.00000054    -0.00000002  0.29D-08  0.47D-08     5.02
    6     6     6     1.06278088    -0.39194775  -398.87815483    -0.00000046    -0.00000002  0.11D-08  0.47D-08     5.02


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.8%
 S   0.2%   0.4%
 P   0.6%  14.5%  31.1%

 Initialization:   0.2%
 Other:           52.2%

 Total CPU:        5.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/\          -0.0000000  -0.0000000   0.0000000   0.9668936  -0.0000000  -0.0000000
 22222/2\           0.0000000  -0.0000000   0.9668936  -0.0000000   0.0000000  -0.0000000
 22222/\2          -0.0000000   0.9668935   0.0000000  -0.0000000   0.0000000   0.0000000
 22222022           0.7738177  -0.0000000   0.0000000   0.0000000  -0.1564018   0.5503586
 22222220          -0.2514610  -0.0000000   0.0000000   0.0000000   0.7483470   0.5503589
 22222202          -0.5223568  -0.0000000   0.0000000   0.0000000  -0.5919451   0.5503586
 20222222           0.0000003   0.0000000  -0.0000000  -0.0000000  -0.0000001  -0.1795103

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222/2\  13.1    -0.0000000   0.0000000   0.0722159   0.0000000  -0.0000000  -0.0000000
 2\2222/\  11.1     0.0120439  -0.0000000   0.0000000   0.0000000   0.0712409   0.0083786
 2\222/\2  15.1    -0.0677188  -0.0000000   0.0000000   0.0000000  -0.0251908   0.0083799
 2\2222/\  12.1    -0.0000000  -0.0000000  -0.0000000  -0.0636957   0.0000000   0.0000000
 2\222/\2  12.1     0.0000000   0.0613879  -0.0000000   0.0000000  -0.0000000   0.0000000
 2\222/2\   7.1    -0.0000000   0.0000000   0.0531451   0.0000000  -0.0000000  -0.0000000
 2\222/2\  14.1    -0.0526199  -0.0000000   0.0000000   0.0000000   0.0495118   0.0083797
 2\2222/\   5.1     0.0105309  -0.0000000  -0.0000000   0.0000000   0.0520905   0.0039309
 2\222/\2   9.1    -0.0503786  -0.0000000   0.0000000   0.0000000  -0.0169253   0.0039334

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.763432   -0.000000   -0.000000    0.000000   -0.593342   -0.000000
 2           0.000000    0.966893   -0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.000000    0.966894    0.000000    0.000000
 4          -0.000000   -0.000000    0.966894   -0.000000    0.000000    0.000000
 5          -0.593342    0.000000   -0.000000    0.000000    0.763432    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970002

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966894   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.966893   -0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.966894   -0.000000    0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.966894    0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.966894    0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970002


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.76343225 (fixed)   0.96689355 (relaxed)   0.96689355 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001038   -0.00008926   -0.33119946
 Singles      0.02408045   -0.05020137   -0.05604024
 Pairs        0.04556158    0.00000015   -0.01722562
 Total        1.06965240   -0.05029048   -0.40446532
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53052659
 Nuclear energy                         0.00000000
 Kinetic energy                       405.51382747
 One electron energy                 -550.52735587
 Two electron energy                  151.59236395
 Virial quotient                       -0.98377654
 Correlation energy                    -0.40446532
 !MRCI STATE 1.1 Energy              -398.934991915997

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96316390 (Davidson, fixed reference)
 Cluster corrected energies          -398.96316390 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96316390 (Davidson, rotated reference)

 Cluster corrected energies          -398.96038691 (Pople, fixed reference)
 Cluster corrected energies          -398.96038691 (Pople, relaxed reference)
 Cluster corrected energies          -398.96038691 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96689348 (fixed)   0.96689348 (relaxed)   0.96689348 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001038   -0.00008926   -0.33119913
 Singles      0.02408043   -0.05020152   -0.05604017
 Pairs        0.04556175    0.00000000   -0.01722602
 Total        1.06965256   -0.05029078   -0.40446532
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53052659
 Nuclear energy                         0.00000000
 Kinetic energy                       405.51380181
 One electron energy                 -550.52734326
 Two electron energy                  151.59235134
 Virial quotient                       -0.98377661
 Correlation energy                    -0.40446532
 !MRCI STATE 2.1 Energy              -398.934991915739

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96316396 (Davidson, fixed reference)
 Cluster corrected energies          -398.96316396 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96316396 (Davidson, rotated reference)

 Cluster corrected energies          -398.96038697 (Pople, fixed reference)
 Cluster corrected energies          -398.96038697 (Pople, relaxed reference)
 Cluster corrected energies          -398.96038697 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96689360 (fixed)   0.96689360 (relaxed)   0.96689360 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001038   -0.00008926   -0.33119960
 Singles      0.02408003   -0.05020111   -0.05604003
 Pairs        0.04556190   -0.00000000   -0.01722569
 Total        1.06965231   -0.05029036   -0.40446532
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53052659
 Nuclear energy                         0.00000000
 Kinetic energy                       405.51381329
 One electron energy                 -550.52736049
 Two electron energy                  151.59236858
 Virial quotient                       -0.98377658
 Correlation energy                    -0.40446532
 !MRCI STATE 3.1 Energy              -398.934991915197

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96316386 (Davidson, fixed reference)
 Cluster corrected energies          -398.96316386 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96316386 (Davidson, rotated reference)

 Cluster corrected energies          -398.96038687 (Pople, fixed reference)
 Cluster corrected energies          -398.96038687 (Pople, relaxed reference)
 Cluster corrected energies          -398.96038687 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96689361 (fixed)   0.96689361 (relaxed)   0.96689361 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001038   -0.00008926   -0.33119972
 Singles      0.02407991   -0.05020099   -0.05603997
 Pairs        0.04556197   -0.00000000   -0.01722563
 Total        1.06965227   -0.05029025   -0.40446532
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53052659
 Nuclear energy                         0.00000000
 Kinetic energy                       405.51381311
 One electron energy                 -550.52736817
 Two electron energy                  151.59237625
 Virial quotient                       -0.98377658
 Correlation energy                    -0.40446532
 !MRCI STATE 4.1 Energy              -398.934991913698

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96316384 (Davidson, fixed reference)
 Cluster corrected energies          -398.96316384 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96316384 (Davidson, rotated reference)

 Cluster corrected energies          -398.96038685 (Pople, fixed reference)
 Cluster corrected energies          -398.96038685 (Pople, relaxed reference)
 Cluster corrected energies          -398.96038685 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.76343246 (fixed)   0.96689382 (relaxed)   0.96689382 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001038   -0.00008926   -0.33120049
 Singles      0.02407920   -0.05020011   -0.05603975
 Pairs        0.04556224   -0.00000020   -0.01722508
 Total        1.06965182   -0.05028957   -0.40446532
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53052659
 Nuclear energy                         0.00000000
 Kinetic energy                       405.51386613
 One electron energy                 -550.52738874
 Two electron energy                  151.59239683
 Virial quotient                       -0.98377645
 Correlation energy                    -0.40446532
 !MRCI STATE 5.1 Energy              -398.934991911445

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96316366 (Davidson, fixed reference)
 Cluster corrected energies          -398.96316366 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96316366 (Davidson, rotated reference)

 Cluster corrected energies          -398.96038668 (Pople, fixed reference)
 Cluster corrected energies          -398.96038668 (Pople, relaxed reference)
 Cluster corrected energies          -398.96038668 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97000207 (fixed)   0.97000414 (relaxed)   0.97000207 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002521   -0.00014961   -0.00015007
 Singles      0.00412277   -0.01397601   -0.01467144
 Pairs        0.05865970   -0.37782213   -0.37712625
 Total        1.06280767   -0.39194775   -0.39194775
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.48620708
 Nuclear energy                         0.00000000
 Kinetic energy                       405.46503156
 One electron energy                 -550.37839191
 Two electron energy                  151.50023708
 Virial quotient                       -0.98375476
 Correlation energy                    -0.39194775
 !MRCI STATE 6.1 Energy              -398.878154827337

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.90277215 (Davidson, fixed reference)
 Cluster corrected energies          -398.90277037 (Davidson, relaxed reference)
 Cluster corrected energies          -398.90277215 (Davidson, rotated reference)

 Cluster corrected energies          -398.90023480 (Pople, fixed reference)
 Cluster corrected energies          -398.90023313 (Pople, relaxed reference)
 Cluster corrected energies          -398.90023480 (Pople, rotated reference)



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
 CPU TIMES  *         8.14      5.31      1.68      0.50      0.03      0.40
 REAL TIME  *        11.79 SEC
 DISK USED  *        49.95 MB (local),      650.48 MB (total)
 SF USED    *       141.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -398.96316390  AU                              
 SETTING HLSDIAG(5)     =      -398.96316396  AU                              
 SETTING HLSDIAG(6)     =      -398.96316386  AU                              
 SETTING HLSDIAG(7)     =      -398.96316384  AU                              
 SETTING HLSDIAG(8)     =      -398.96316366  AU                              
 SETTING HLSDIAG(9)     =      -398.90277215  AU                              


         HLSDIAG
    -399.0044088
    -399.0044089
    -399.0044089
    -398.9631639
    -398.9631640
    -398.9631639
    -398.9631638
    -398.9631637
    -398.9027722
                                                  

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

 CPU time:      0.65 sec, REAL time:      0.70 sec


 SORTLS1 read     2508011. and wrote     2508011. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.04 sec
 SORTLS2 read     2508011. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.03 sec

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
 CPU TIMES  *         9.60      1.44      5.31      1.68      0.50      0.03      0.40
 REAL TIME  *        13.41 SEC
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

 Original energies:   -398.978839   -398.978839   -398.978839
 Replaced energies:   -399.004409   -399.004409   -399.004409

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -398.934992   -398.934992   -398.934992   -398.934992   -398.934992   -398.878155
 Replaced energies:   -398.963164   -398.963164   -398.963164   -398.963164   -398.963164   -398.902772



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -399.00440886

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00      -0.00     140.09       0.00       0.00       0.00      -0.00
                           -0.00     198.11      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      51.83

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -159.49
                         -198.11      -0.00      -0.00      -0.00      -0.00    -140.09       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00    -140.09      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00     140.09      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00    -140.09       0.01       0.00       0.00       0.00      -0.00     140.09       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    5   2.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -140.09      -0.00       0.00       0.00      -0.00      -0.00    -140.09       0.00

    6   3.1  1.0  0.0     140.09       0.00       0.00       0.00       0.00       0.00    -140.09      -0.00       0.00       0.00
                            0.00     140.09       0.00      -0.00      -0.00       0.00       0.00     140.09      -0.00     152.26

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00    -140.09       0.01       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -198.11       0.00     -51.83

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -159.49
                           -0.00      -0.00      -0.00      -0.00       0.00    -140.09     198.11       0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00     140.09       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     140.09       0.00      -0.00      -0.00       0.00      -0.00

   10   1.1  0.0  0.0      -0.00    -159.49       0.00       0.00       0.00       0.00      -0.00    -159.49       0.00    9052.22
                          -51.83      -0.00      -0.00      -0.00      -0.00    -152.26      51.83       0.00       0.00       0.00

   11   2.1  0.0  0.0      -0.00      -0.00    -140.92       0.00       0.00       0.00      -0.00      -0.00    -140.92       0.00
                            0.00       0.00      -0.00       0.00     199.28       0.00      -0.00      -0.00       0.00      -0.00

   12   3.1  0.0  0.0     140.92       0.00       0.00       0.00       0.00       0.00     140.92       0.00       0.00       0.00
                           -0.00    -140.92       0.00       0.00       0.00      -0.00       0.00     140.92      -0.00      -0.00

   13   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     140.93     199.28       0.00      -0.00       0.00       0.00    -140.93      -0.00

   14   5.1  0.0  0.0       0.00      32.24      -0.00       0.00       0.00       0.00       0.00      32.24      -0.00       0.00
                          154.25       0.00       0.00      -0.00       0.00    -172.54    -154.25      -0.00      -0.00      -0.00

   15   6.1  0.0  0.0      -0.00     229.87      -0.00       0.00       0.00       0.00      -0.00     229.87      -0.00       0.00
                         -229.88       0.00      -0.00      -0.00       0.00    -325.07     229.88      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00     140.92       0.00       0.00      -0.00
                           -0.00       0.00       0.00    -154.25     229.88

    2   2.1  1.0  1.0      -0.00       0.00       0.00      32.24     229.87
                           -0.00     140.92       0.00      -0.00      -0.00

    3   3.1  1.0  1.0    -140.92       0.00       0.00      -0.00      -0.00
                            0.00      -0.00    -140.93      -0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -199.28       0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         -199.28      -0.00      -0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     172.54     325.07

    7   1.1  1.0 -1.0      -0.00     140.92       0.00       0.00      -0.00
                            0.00      -0.00      -0.00     154.25    -229.88

    8   2.1  1.0 -1.0      -0.00       0.00       0.00      32.24     229.87
                            0.00    -140.92      -0.00       0.00       0.00

    9   3.1  1.0 -1.0    -140.92       0.00       0.00      -0.00      -0.00
                           -0.00       0.00     140.93       0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    9052.21       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    9052.23       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    9052.24       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    9052.28       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   22306.68
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -399.00440886 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.007       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000     198.114

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -198.114    -198.114      -0.000

    3    1  |1 1>+              0.000       0.000       0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     198.114       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.007       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000    -198.114      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.001     198.114       0.000
                                0.000     198.114       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000     198.114       0.007       0.000
                               -0.000     198.114      -0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -198.114      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000    -198.114      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.000    -225.557       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000    -152.256     -73.299      -0.000

    2    1  |0 0>              -0.000      -0.000    -199.292       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     199.280       0.000       0.000       0.000

    3    1  |0 0>             199.285       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000    -199.297

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     199.277       0.000      -0.000      -0.000      -0.000

    5    1  |0 0>               0.000      45.590      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -172.541     218.137       0.000

    6    1  |0 0>              -0.000     325.089      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -325.074    -325.103       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000      -0.000     199.285       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000    -225.557      -0.000       0.000       0.000      45.590     325.089
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000    -199.292       0.000       0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            -198.114       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000    -199.277       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -199.280      -0.000      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     152.256      -0.000       0.000       0.000     172.541     325.074

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      73.299      -0.000       0.000       0.000    -218.137     325.103

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     199.297       0.000      -0.000      -0.000

    3    1  |1 1>-              0.001       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -199.301      -0.000       0.000

    1    1  |0 0>               0.000    9052.223       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    9052.209       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    9052.232       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    9052.236       0.000       0.000
                              199.301      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    9052.276       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   22306.679
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -399.00535062    -0.00094176     -206.69      0.00000000        0.00      0.0000
    2  -399.00535062    -0.00094176     -206.69      0.00000000        0.00      0.0000
    3  -399.00535061    -0.00094175     -206.69      0.00000001        0.00      0.0000
    4  -399.00535061    -0.00094175     -206.69      0.00000002        0.00      0.0000
    5  -399.00535060    -0.00094174     -206.69      0.00000002        0.00      0.0000
    6  -399.00350619     0.00090268      198.11      0.00184444      404.81      0.0502
    7  -399.00350617     0.00090269      198.12      0.00184445      404.81      0.0502
    8  -399.00350617     0.00090269      198.12      0.00184446      404.81      0.0502
    9  -399.00266939     0.00173948      381.77      0.00268124      588.46      0.0730
   10  -398.96312487     0.04128399     9060.79      0.04222575     9267.48      1.1490
   11  -398.96312481     0.04128405     9060.80      0.04222581     9267.49      1.1490
   12  -398.96312477     0.04128409     9060.81      0.04222586     9267.50      1.1490
   13  -398.96312475     0.04128411     9060.81      0.04222587     9267.51      1.1490
   14  -398.96312457     0.04128429     9060.86      0.04222606     9267.55      1.1490
   15  -398.90270627     0.10170260    22321.14      0.10264436    22527.83      2.7931

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000001  0.00000001  0.70677257  0.00000002 -0.00000002 -0.00000001  0.70711364 -0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000026  0.73161574 -0.00000002  0.00000000 -0.36165045  0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.70677926  0.00000025 -0.00000001 -0.00000001 -0.00000000  0.70710693  0.00000001 -0.00000001
                          -0.00000001  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000001 -0.00000002  0.70677275 -0.00000002  0.00000001  0.00000002  0.70711349

   2    1  |1 0>           0.00000001 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.70677959  0.00000025 -0.00000001 -0.00000001 -0.00000000 -0.70710664 -0.00000001  0.00000001

   3    1  |1 0>           0.00000001 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000024 -0.67900284 -0.00000000 -0.00000002 -0.45277587  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                           0.00000002 -0.05261046  0.00000002  0.00000002  0.81441836  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000001  0.70678625  0.00000002 -0.00000002  0.00000001 -0.70709992  0.00000002

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000001 -0.00000002  0.70678609 -0.00000002 -0.00000001 -0.00000002 -0.70710007

   1    1  |0 0>          -0.00000001  0.02940519 -0.00000000  0.00000000 -0.00781206 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.03042508  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000095  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.03042575 -0.00000000  0.00000000 -0.00000000  0.00000064 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.03042539 -0.00000000 -0.00000000 -0.00000000 -0.00000159
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00781137  0.00000000  0.00000000  0.02940552 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000044  0.00000000 -0.00000000 -0.00000068 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.02151360  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.57714773 -0.00000000 -0.02433003 -0.00000000  0.00000000  0.00501853  0.01482249
                          -0.00331895 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

   3    1  |1 1>+         -0.00000000 -0.02151445  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.02151267 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.02151311  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00331896 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.57714933 -0.00000000  0.01651078  0.00000000 -0.00000000  0.01856069  0.01482184

   1    1  |1 1>-          0.00331899  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                           0.57715421  0.00000000  0.00781905 -0.00000000 -0.00000000 -0.02358002  0.01482312

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.02151491  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.02151532 -0.00000000  0.00000000

   1    1  |0 0>           0.00000004  0.00000000  0.99952911  0.00000000 -0.00000000 -0.00398285 -0.00000001
                          -0.00000000  0.00000000  0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.99953705 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.99953703  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.99953704  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000059 -0.00000000  0.00398287  0.00000000 -0.00000000  0.99952911 -0.00000003
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000

   6    1  |0 0>          -0.02567287  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000007  0.99967039
                           0.00014763  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000095


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -399.00535062     -0.00094176     -206.69      0.00000000        0.00      0.0000
     2   1   -399.00535062     -0.00094176     -206.69      0.00000000        0.00      0.0000
     3   1   -399.00535061     -0.00094175     -206.69      0.00000001        0.00      0.0000
     4   1   -399.00535061     -0.00094175     -206.69      0.00000002        0.00      0.0000
     5   1   -399.00535060     -0.00094174     -206.69      0.00000002        0.00      0.0000
     6   1   -399.00350619      0.00090268      198.11      0.00184444      404.81      0.0502
     7   1   -399.00350617      0.00090269      198.12      0.00184445      404.81      0.0502
     8   1   -399.00350617      0.00090269      198.12      0.00184446      404.81      0.0502
     9   1   -399.00266939      0.00173948      381.77      0.00268124      588.46      0.0730
    10   1   -398.96312487      0.04128399     9060.79      0.04222575     9267.48      1.1490
    11   1   -398.96312481      0.04128405     9060.80      0.04222581     9267.49      1.1490
    12   1   -398.96312477      0.04128409     9060.81      0.04222586     9267.50      1.1490
    13   1   -398.96312475      0.04128411     9060.81      0.04222587     9267.51      1.1490
    14   1   -398.96312457      0.04128429     9060.86      0.04222606     9267.55      1.1490
    15   1   -398.90270627      0.10170260    22321.14      0.10264436    22527.83      2.7931

 E0 =   -399.00440886 is the energy of the lowest zeroth-order state
 E1 =   -399.00535062 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000001  0.00000001  0.70677257  0.00000002 -0.00000002 -0.00000001  0.70711364 -0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000026  0.73161574 -0.00000002  0.00000000 -0.36165045  0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.70677926  0.00000025 -0.00000001 -0.00000001 -0.00000000  0.70710693  0.00000001 -0.00000001
                               -0.00000001  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000001 -0.00000002  0.70677275 -0.00000002  0.00000001  0.00000002  0.70711349

  5  1     2    1  |1 0>        0.00000001 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.70677959  0.00000025 -0.00000001 -0.00000001 -0.00000000 -0.70710664 -0.00000001  0.00000001

  6  1     3    1  |1 0>        0.00000001 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000024 -0.67900284 -0.00000000 -0.00000002 -0.45277587  0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                                0.00000002 -0.05261046  0.00000002  0.00000002  0.81441836  0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000001  0.70678625  0.00000002 -0.00000002  0.00000001 -0.70709992  0.00000002

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000001 -0.00000002  0.70678609 -0.00000002 -0.00000001 -0.00000002 -0.70710007

 10  1     1    1  |0 0>       -0.00000001  0.02940519 -0.00000000  0.00000000 -0.00781206 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.03042508  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000095  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.03042575 -0.00000000  0.00000000 -0.00000000  0.00000064 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.03042539 -0.00000000 -0.00000000 -0.00000000 -0.00000159
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00781137  0.00000000  0.00000000  0.02940552 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000000 -0.00000044  0.00000000 -0.00000000 -0.00000068 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.02151360  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.57714773 -0.00000000 -0.02433003 -0.00000000  0.00000000  0.00501853  0.01482249
                               -0.00331895 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

  3  1     3    1  |1 1>+      -0.00000000 -0.02151445  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.02151267 -0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.02151311  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00331896 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.57714933 -0.00000000  0.01651078  0.00000000 -0.00000000  0.01856069  0.01482184

  7  1     1    1  |1 1>-       0.00331899  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                                0.57715421  0.00000000  0.00781905 -0.00000000 -0.00000000 -0.02358002  0.01482312

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.02151491  0.00000000 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.02151532 -0.00000000  0.00000000

 10  1     1    1  |0 0>        0.00000004  0.00000000  0.99952911  0.00000000 -0.00000000 -0.00398285 -0.00000001
                               -0.00000000  0.00000000  0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.99953705 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.99953703  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.99953704  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000059 -0.00000000  0.00398287  0.00000000 -0.00000000  0.99952911 -0.00000003
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000

 15  1     6    1  |0 0>       -0.02567287  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000007  0.99967039
                                0.00014763  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000095



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   53.53%    0.00%    0.00%   13.08%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+        49.95%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>         49.95%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%   46.10%    0.00%    0.00%   20.50%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.28%    0.00%    0.00%   66.33%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.09%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        33.31%    0.00%    0.06%    0.00%    0.00%    0.00%    0.02%
  3  1     3    1  |1 1>+         0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         33.31%    0.00%    0.03%    0.00%    0.00%    0.03%    0.02%
  7  1     1    1  |1 1>-        33.31%    0.00%    0.01%    0.00%    0.00%    0.06%    0.02%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%   99.91%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%   99.91%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 CPU TIMES  *        12.95      3.36      1.44      5.31      1.68      0.50      0.03      0.40
 REAL TIME  *        17.70 SEC
 DISK USED  *        49.99 MB (local),      839.98 MB (total)
 SF USED    *       141.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -398.902706266708

              CI              CI           MULTI         RHF-SCF
   -398.87815483   -398.97883899   -398.48620708   -398.58540353
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
