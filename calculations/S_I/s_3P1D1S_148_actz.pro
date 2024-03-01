
 Working directory              : /wrk/irikura/molpro.mV7V9xaOaE/
 Global scratch directory       : /wrk/irikura/molpro.mV7V9xaOaE/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.mV7V9xaOaE/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,S SO-CI
                                                                                 ! Active space (14/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={S};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=16,sym=1,spin=2}
 
 {multi
     closed,1,0
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
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   S SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 13:31:53  
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
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     36 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         0.61      0.39
 REAL TIME  *         1.18 SEC
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
   1     -398.57777024    -398.57777024     0.00D+00     0.14D+00     0     0       0.00      0.01    start
   2     -398.58502631      -0.00725607     0.33D-02     0.69D-02     1     0       0.00      0.01    diag2
   3     -398.58534467      -0.00031836     0.10D-02     0.13D-02     2     0       0.01      0.02    diag2
   4     -398.58539497      -0.00005030     0.24D-03     0.58D-03     3     0       0.00      0.02    diag2
   5     -398.58540304      -0.00000808     0.76D-04     0.29D-03     4     0       0.00      0.02    diag2
   6     -398.58540352      -0.00000048     0.19D-04     0.78D-04     5     0       0.01      0.03    diag2
   7     -398.58540353      -0.00000001     0.29D-05     0.11D-04     6     0       0.00      0.03    diag2
   8     -398.58540353      -0.00000000     0.33D-06     0.17D-05     7     0       0.00      0.03    fixocc
   9     -398.58540353      -0.00000000     0.29D-07     0.78D-07     0     0       0.00      0.03    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   4

 !RHF STATE 1.1 Energy               -398.585403528638
  RHF One-electron energy            -550.851178789677
  RHF Two-electron energy             152.265775261039
  RHF Kinetic energy                  405.263482256385
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
    1.2     2.00000    -6.68315     1  1  px   0.99859
    2.2     2.00000    -6.68315     1  1  py   0.99851
    3.2     2.00000    -6.68153     1  1  pz   1.00171
    4.2     2.00000    -0.39732     1  2  pz   0.97126
    5.2     1.00000    -0.48037     1  2  px   1.04375
    6.2     1.00000    -0.48037     1  2  py   1.04366


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
 CPU TIMES  *         0.79      0.18      0.39
 REAL TIME  *         2.52 SEC
 DISK USED  *        29.72 MB (local),      407.69 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:  14    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:              16   (16 determinants, 28 intermediate states)

 State symmetry 2

 Number of active electrons:  14    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              24   (40 determinants, 64 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.245D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.144D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.804D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 4 6 2 1   3 5 4 6 2 3 5 6 4 2   1 3 5 6 4 2 1 5 3 6   4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.111D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.171D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.272D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.377D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.342D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.403D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 2 3 1   2 3 9 7 810 4 5 6 1   2 3 9 710 8 5 4 6 7   9 810 4 5 6 1 2 3 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  308  ( 2 closed/active, 30 closed/virtual, 0 active/active, 276 active/virtual )
 Total number of variables:    596
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -398.54165935    -398.54313119   -0.00147184    0.05308049 0.00000577 0.00000000  0.45E-01      0.14
   2    7   14    0   -398.54313691    -398.54313697   -0.00000007    0.00028921 0.00000025 0.00000000  0.28E-03      0.38
   3   41   80    0   -398.54313697    -398.54313697    0.00000000    0.00000026 0.00000045 0.00000000  0.11E-05      0.89

 CONVERGENCE REACHED!  Final gradient:    0.00000021 ( 0.21E-06)
                       Final energy:   -398.54313697
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -398.582939862041
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.23646798
 One electron energy                          -550.76229985
 Two electron energy                           152.17935999
 Virial ratio                                    1.98358112
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -398.582939855876
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.23646819
 One electron energy                          -550.76230028
 Two electron energy                           152.17936042
 Virial ratio                                    1.98358112
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -398.582939855493
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.23646820
 One electron energy                          -550.76230030
 Two electron energy                           152.17936045
 Virial ratio                                    1.98358112
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -398.530614435560
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22237065
 One electron energy                          -550.75539115
 Two electron energy                           152.22477671
 Virial ratio                                    1.98348621
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -398.530614435553
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22237065
 One electron energy                          -550.75539115
 Two electron energy                           152.22477671
 Virial ratio                                    1.98348621
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -398.530614432085
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22237086
 One electron energy                          -550.75539157
 Two electron energy                           152.22477714
 Virial ratio                                    1.98348621
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -398.530614431869
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22237087
 One electron energy                          -550.75539160
 Two electron energy                           152.22477717
 Virial ratio                                    1.98348621
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -398.530614430768
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22237094
 One electron energy                          -550.75539173
 Two electron energy                           152.22477730
 Virial ratio                                    1.98348621
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -398.486341016122
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.16775953
 One electron energy                          -550.64249504
 Two electron energy                           152.15615403
 Virial ratio                                    1.98350950
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000004
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999994
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.999999999993
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.997274639273
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999994272
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.002725828572
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999996
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000686
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.999999999809
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.910972658082
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999719366
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.089035551610
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999320
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.000000000198
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.091752702645
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000286363
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.908238619818
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 2 6 3 5 1   2 4 6 5 3 4 2 6 3 5   1 4 2 6 3 5 1 4 2 6   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 3   2 1 4 6 510 8 9 7 3   1 2 4 6 510 8 9 7 4   6 810 5 7 9 3 1 2 3
                                        1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -86.33136     1  1  s    0.96242    1  2  s   -0.26967
    2.1     2.00000   -15.03523     1  1  s    0.26816    1  2  s    0.96351
    3.1     1.99223    -0.88795     1  3  s    1.01034
    1.2     2.00000    -6.69080     1  1  py   0.99978
    2.2     2.00000    -6.69080     1  1  px   0.99978
    3.2     2.00000    -6.69080     1  1  pz   0.99978
    4.2     1.33593    -0.28713     1  2  py   0.99258
    5.2     1.33593    -0.28713     1  2  px   0.99258
    6.2     1.33593    -0.28713     1  2  pz   0.99258
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 22 222aa2     -0.00000008      0.99999766      0.00000000
 22 2222aa      0.00000208      0.00000000      0.99999766
 22 222a2a      0.99999766      0.00000008     -0.00000208
 
 Energy:     -398.58293986   -398.58293986   -398.58293986
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 22 222202     -0.00000082     -0.02131272      0.00000006     -0.00006467      0.81621564      0.56716805
 22 222022      0.00003975      0.71751988     -0.00000232      0.00003652     -0.38965051      0.56716798
 22 222ba2      0.00000063     -0.00000228     -0.70710445     -0.00000004     -0.00000000     -0.00000000
 22 222ab2     -0.00000063      0.00000228      0.70710445      0.00000004      0.00000000      0.00000000
 22 222a2b      0.70710444     -0.00003935      0.00000063     -0.00000024     -0.00000032      0.00000000
 22 222b2a     -0.70710444      0.00003935     -0.00000063      0.00000024      0.00000032     -0.00000000
 22 2222ba     -0.00000024      0.00000565      0.00000004     -0.70710444     -0.00005588     -0.00000000
 22 2222ab      0.00000024     -0.00000565     -0.00000004      0.70710444      0.00005588      0.00000000
 22 222220     -0.00003893     -0.69620714      0.00000225      0.00002814     -0.42656523      0.56716798
 20 222222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000002     -0.18695185
 
 Energy:     -398.53061444   -398.53061444   -398.53061443   -398.53061443   -398.53061443   -398.48634102
 


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
 CPU TIMES  *         1.68      0.88      0.18      0.39
 REAL TIME  *         3.58 SEC
 DISK USED  *        31.13 MB (local),      424.64 MB (total)
 SF USED    *         5.42 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -398.5829399   2.0
    -398.5829399   2.0
    -398.5829399   2.0
    -398.5306144   6.0
    -398.5306144   6.0
    -398.5306144   6.0
    -398.5306144   6.0
    -398.5306144   6.0
    -398.4863410   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 16
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:       16 conf       16 CSFs
 N elec internal:       28 conf       28 CSFs
 N-1 el internal:      112 conf      224 CSFs
 N-2 el internal:      254 conf     1150 CSFs

 Number of electrons in valence space:                     14
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -398.58293986
     2      -398.58293986
     3      -398.58293986

 Number of blocks in overlap matrix:    64   Smallest eigenvalue:  0.52D-05
 Number of N-2 electron functions:     192
 Number of N-1 electron functions:     224

 Number of internal configurations:                   16
 Number of singly external configurations:          7440
 Number of doubly external configurations:        210312
 Total number of contracted configurations:       217768
 Total number of uncontracted configurations:    1253122

 Diagonal Coupling coefficients finished.               Storage:    208921 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    254162 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.58293986     0.00000000    -0.39028437  0.34D-01  0.40D-01     0.04
    1     2     2     1.00000000     0.00000000  -398.58293986     0.00000000    -0.39059132  0.34D-01  0.40D-01     0.04
    1     3     3     1.00000000     0.00000000  -398.58293986     0.00000000    -0.39005339  0.34D-01  0.40D-01     0.04
    2     1     1     1.06312905    -0.36018268  -398.94312254    -0.36018268    -0.00766086  0.12D-02  0.80D-03     0.57
    2     2     2     1.06331480    -0.36010934  -398.94304920    -0.36010934    -0.00774040  0.13D-02  0.80D-03     0.57
    2     3     3     1.06357139    -0.35998653  -398.94292639    -0.35998653    -0.00787863  0.13D-02  0.80D-03     0.57
    3     1     1     1.05394580    -0.37067506  -398.95361492    -0.01049239    -0.00252851  0.22D-03  0.22D-03     1.01
    3     2     2     1.05391994    -0.37065329  -398.95359315    -0.01054395    -0.00252533  0.23D-03  0.22D-03     1.01
    3     3     3     1.05389794    -0.37061398  -398.95355384    -0.01062745    -0.00252118  0.23D-03  0.22D-03     1.01
    4     1     1     1.06176265    -0.37817138  -398.96111124    -0.00749632    -0.00082337  0.50D-04  0.93D-04     1.43
    4     2     2     1.06172524    -0.37816228  -398.96110214    -0.00750899    -0.00082910  0.51D-04  0.93D-04     1.43
    4     3     3     1.06167075    -0.37814474  -398.96108460    -0.00753076    -0.00083957  0.53D-04  0.94D-04     1.43
    5     1     1     1.06353151    -0.37946374  -398.96240360    -0.00129236    -0.00025668  0.20D-04  0.29D-04     1.85
    5     2     2     1.06354737    -0.37946081  -398.96240067    -0.00129853    -0.00025747  0.20D-04  0.29D-04     1.85
    5     3     3     1.06356598    -0.37945561  -398.96239547    -0.00131087    -0.00025881  0.21D-04  0.29D-04     1.85
    6     1     1     1.06222355    -0.37998188  -398.96292174    -0.00051814    -0.00012394  0.14D-04  0.12D-04     2.23
    6     2     2     1.06221323    -0.37997973  -398.96291959    -0.00051892    -0.00012487  0.14D-04  0.12D-04     2.23
    6     3     3     1.06219752    -0.37997587  -398.96291573    -0.00052026    -0.00012657  0.15D-04  0.12D-04     2.23
    7     1     1     1.06396700    -0.38015932  -398.96309918    -0.00017744    -0.00004537  0.42D-05  0.48D-05     2.59
    7     2     2     1.06395907    -0.38015841  -398.96309827    -0.00017868    -0.00004571  0.43D-05  0.49D-05     2.59
    7     3     3     1.06394446    -0.38015671  -398.96309657    -0.00018084    -0.00004635  0.43D-05  0.50D-05     2.59
    8     1     1     1.06449475    -0.38023647  -398.96317633    -0.00007715    -0.00002269  0.23D-05  0.30D-05     2.96
    8     2     2     1.06449300    -0.38023597  -398.96317583    -0.00007756    -0.00002282  0.24D-05  0.30D-05     2.96
    8     3     3     1.06448990    -0.38023507  -398.96317493    -0.00007836    -0.00002304  0.24D-05  0.30D-05     2.96
    9     1     1     1.06416205    -0.38027388  -398.96321374    -0.00003741    -0.00001124  0.13D-05  0.10D-05     3.33
    9     2     2     1.06415900    -0.38027362  -398.96321348    -0.00003765    -0.00001135  0.13D-05  0.10D-05     3.33
    9     3     3     1.06415421    -0.38027316  -398.96321301    -0.00003809    -0.00001154  0.13D-05  0.10D-05     3.33
   10     1     1     1.06462392    -0.38029032  -398.96323019    -0.00001644    -0.00000483  0.58D-06  0.48D-06     3.71
   10     2     2     1.06462231    -0.38029021  -398.96323006    -0.00001658    -0.00000488  0.58D-06  0.48D-06     3.71
   10     3     3     1.06461915    -0.38028999  -398.96322984    -0.00001683    -0.00000495  0.60D-06  0.49D-06     3.71
   11     1     1     1.06475146    -0.38029813  -398.96323799    -0.00000780    -0.00000262  0.33D-06  0.31D-06     4.09
   11     2     2     1.06475002    -0.38029806  -398.96323792    -0.00000786    -0.00000264  0.34D-06  0.31D-06     4.09
   11     3     3     1.06474761    -0.38029794  -398.96323779    -0.00000795    -0.00000267  0.34D-06  0.32D-06     4.09
   12     1     1     1.06468011    -0.38030233  -398.96324219    -0.00000420    -0.00000138  0.19D-06  0.12D-06     4.47
   12     2     2     1.06467918    -0.38030230  -398.96324215    -0.00000424    -0.00000140  0.20D-06  0.12D-06     4.47
   12     3     3     1.06467771    -0.38030223  -398.96324209    -0.00000429    -0.00000142  0.20D-06  0.12D-06     4.47
   13     1     1     1.06481411    -0.38030433  -398.96324420    -0.00000201    -0.00000063  0.87D-07  0.61D-07     4.84
   13     2     2     1.06481376    -0.38030432  -398.96324418    -0.00000203    -0.00000063  0.88D-07  0.61D-07     4.84
   13     3     3     1.06481321    -0.38030429  -398.96324415    -0.00000206    -0.00000064  0.91D-07  0.62D-07     4.84
   14     1     1     1.06484222    -0.38030533  -398.96324520    -0.00000100    -0.00000035  0.48D-07  0.39D-07     5.22
   14     2     2     1.06484149    -0.38030533  -398.96324519    -0.00000101    -0.00000036  0.49D-07  0.39D-07     5.22
   14     3     3     1.06484019    -0.38030531  -398.96324517    -0.00000102    -0.00000036  0.51D-07  0.39D-07     5.22
   15     1     1     1.06483012    -0.38030589  -398.96324575    -0.00000056    -0.00000019  0.31D-07  0.17D-07     5.62
   15     2     2     1.06482985    -0.38030589  -398.96324575    -0.00000056    -0.00000020  0.31D-07  0.18D-07     5.62
   15     3     3     1.06482939    -0.38030588  -398.96324574    -0.00000057    -0.00000020  0.32D-07  0.18D-07     5.62
   16     1     1     1.06487179    -0.38030617  -398.96324603    -0.00000028    -0.00000009  0.13D-07  0.87D-08     6.00
   16     2     2     1.06487173    -0.38030617  -398.96324603    -0.00000028    -0.00000009  0.13D-07  0.88D-08     6.00
   16     3     3     1.06487175    -0.38030617  -398.96324602    -0.00000029    -0.00000009  0.14D-07  0.90D-08     6.00
   17     1     1     1.06487668    -0.38030631  -398.96324617    -0.00000014    -0.00000005  0.75D-08  0.54D-08     6.38
   17     2     2     1.06487704    -0.38030632  -398.96324617    -0.00000014    -0.00000005  0.73D-08  0.54D-08     6.38
   17     3     3     1.06487603    -0.38030631  -398.96324617    -0.00000015    -0.00000005  0.78D-08  0.55D-08     6.38
   18     1     1     1.06487676    -0.38030639  -398.96324625    -0.00000008    -0.00000003  0.51D-08  0.27D-08     6.77
   18     2     2     1.06487685    -0.38030640  -398.96324625    -0.00000008    -0.00000003  0.49D-08  0.26D-08     6.77
   18     3     3     1.06487658    -0.38030639  -398.96324625    -0.00000008    -0.00000003  0.52D-08  0.28D-08     6.77


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.1%   0.4%
 P   1.0%  17.1%  32.9%

 Initialization:   0.3%
 Other:           47.6%

 Total CPU:        6.8 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//2          -0.0000000   0.0000000   0.9690573
 22222/2/           0.9690572  -0.0000000   0.0000000
 222222//          -0.0000000   0.9690571   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969058   -0.000000   -0.000000
 2          -0.000000   -0.000000    0.969058
 3           0.000000    0.969058    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969058   -0.000000   -0.000000
 2          -0.000000    0.969058   -0.000000
 3          -0.000000   -0.000000    0.969058


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96905778 (fixed)   0.96905924 (relaxed)   0.96905778 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000301    0.00000000   -0.31522604
 Singles      0.02117621   -0.04462964   -0.04947538
 Pairs        0.04370075    0.00000000   -0.01560498
 Total        1.06487996   -0.04462964   -0.38030639
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58293986
 Nuclear energy                         0.00000000
 Kinetic energy                       405.54576447
 One electron energy                 -550.62629679
 Two electron energy                  151.66305054
 Virial quotient                       -0.98376874
 Correlation energy                    -0.38030639
 !MRCI STATE 1.1 Energy              -398.963246253602

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.98792052 (Davidson, fixed reference)
 Cluster corrected energies          -398.98791930 (Davidson, relaxed reference)
 Cluster corrected energies          -398.98792052 (Davidson, rotated reference)

 Cluster corrected energies          -398.98472401 (Pople, fixed reference)
 Cluster corrected energies          -398.98472290 (Pople, relaxed reference)
 Cluster corrected energies          -398.98472401 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96905774 (fixed)   0.96905920 (relaxed)   0.96905774 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000301    0.00000000   -0.00000107
 Singles      0.02117625   -0.04462970   -0.04947542
 Pairs        0.04370079   -0.33567670   -0.33082991
 Total        1.06488005   -0.38030640   -0.38030640
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58293986
 Nuclear energy                         0.00000000
 Kinetic energy                       405.54575594
 One electron energy                 -550.62628808
 Two electron energy                  151.66304183
 Virial quotient                       -0.98376876
 Correlation energy                    -0.38030640
 !MRCI STATE 2.1 Energy              -398.963246252636

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.98792055 (Davidson, fixed reference)
 Cluster corrected energies          -398.98791933 (Davidson, relaxed reference)
 Cluster corrected energies          -398.98792055 (Davidson, rotated reference)

 Cluster corrected energies          -398.98472404 (Pople, fixed reference)
 Cluster corrected energies          -398.98472293 (Pople, relaxed reference)
 Cluster corrected energies          -398.98472404 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96905786 (fixed)   0.96905932 (relaxed)   0.96905786 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000301    0.00000000   -0.31522620
 Singles      0.02117609   -0.04462953   -0.04947531
 Pairs        0.04370069    0.00000000   -0.01560488
 Total        1.06487978   -0.04462953   -0.38030639
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58293986
 Nuclear energy                         0.00000000
 Kinetic energy                       405.54578085
 One electron energy                 -550.62631279
 Two electron energy                  151.66306654
 Virial quotient                       -0.98376870
 Correlation energy                    -0.38030639
 !MRCI STATE 3.1 Energy              -398.963246249971

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.98792045 (Davidson, fixed reference)
 Cluster corrected energies          -398.98791923 (Davidson, relaxed reference)
 Cluster corrected energies          -398.98792045 (Davidson, rotated reference)

 Cluster corrected energies          -398.98472394 (Pople, fixed reference)
 Cluster corrected energies          -398.98472284 (Pople, relaxed reference)
 Cluster corrected energies          -398.98472394 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.98       700     1000      520     2100     2140     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.58      6.90      0.88      0.18      0.39
 REAL TIME  *        12.03 SEC
 DISK USED  *        36.44 MB (local),      488.34 MB (total)
 SF USED    *        55.69 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -398.98792052  AU                              
 SETTING HLSDIAG(2)     =      -398.98792055  AU                              
 SETTING HLSDIAG(3)     =      -398.98792045  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 16
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:       24 conf       24 CSFs
 N elec internal:       36 conf       36 CSFs
 N-1 el internal:      112 conf      168 CSFs
 N-2 el internal:      266 conf      714 CSFs

 Number of electrons in valence space:                     14
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -398.53061444
     2      -398.53061444
     3      -398.53061443
     4      -398.53061443
     5      -398.53061443
     6      -398.48634102

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1560D-06

 Number of blocks in overlap matrix:    32   Smallest eigenvalue:  0.16D-06
 Number of N-2 electron functions:     342
 Number of N-1 electron functions:     168

 Number of internal configurations:                   24
 Number of singly external configurations:          5604
 Number of doubly external configurations:        373716
 Total number of contracted configurations:       379344
 Total number of uncontracted configurations:     783342

 Diagonal Coupling coefficients finished.               Storage:    235708 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    270599 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.53061444     0.00000000    -0.36968710  0.34D-01  0.31D-01     0.04
    1     2     2     1.00000000     0.00000000  -398.53061444    -0.00000000    -0.34860295  0.34D-01  0.19D-01     0.04
    1     3     3     1.00000000     0.00000000  -398.53061443     0.00000000    -0.37031447  0.34D-01  0.31D-01     0.04
    1     4     4     1.00000000     0.00000000  -398.53061443     0.00000000    -0.37068333  0.34D-01  0.31D-01     0.04
    1     5     5     1.00000000     0.00000000  -398.53061443    -0.00000000    -0.35141833  0.34D-01  0.19D-01     0.04
    1     6     6     1.00000000     0.00000000  -398.48634102     0.00000000    -0.31322797  0.45D-02  0.21D-01     0.04
    2     1     1     1.06033776    -0.35854428  -398.88915871    -0.35854428    -0.01207277  0.14D-02  0.12D-02     2.14
    2     2     2     1.06065596    -0.35817950  -398.88879394    -0.35817950    -0.01225069  0.15D-02  0.12D-02     2.14
    2     3     3     1.06048804    -0.35777926  -398.88839369    -0.35777926    -0.01213776  0.14D-02  0.11D-02     2.14
    2     4     4     1.05192319    -0.34727696  -398.87789139    -0.34727696    -0.01423280  0.14D-02  0.12D-02     2.14
    2     5     5     1.05213479    -0.34683793  -398.87745236    -0.34683793    -0.01456740  0.16D-02  0.12D-02     2.14
    2     6     6     1.02666354    -0.32059799  -398.80693900    -0.32059799    -0.01537825  0.69D-03  0.12D-02     2.14
    3     1     1     1.05935340    -0.37795925  -398.90857369    -0.01941498    -0.00446267  0.55D-03  0.41D-03     4.20
    3     2     2     1.05903416    -0.37768476  -398.90829919    -0.01950525    -0.00450920  0.58D-03  0.41D-03     4.20
    3     3     3     1.05906720    -0.37737132  -398.90798575    -0.01959206    -0.00458809  0.57D-03  0.42D-03     4.20
    3     4     4     1.05455002    -0.37265145  -398.90326588    -0.02537448    -0.00753601  0.86D-03  0.69D-03     4.20
    3     5     5     1.05445228    -0.37249965  -398.90311408    -0.02566172    -0.00794622  0.72D-03  0.72D-03     4.20
    3     6     6     1.04202049    -0.35724784  -398.84358886    -0.03664986    -0.01121488  0.97D-03  0.10D-02     4.20
    4     1     1     1.06901880    -0.38597111  -398.91658555    -0.00801186    -0.00127776  0.68D-04  0.12D-03     6.30
    4     2     2     1.06905893    -0.38591839  -398.91653282    -0.00823363    -0.00125961  0.75D-04  0.12D-03     6.30
    4     3     3     1.06882404    -0.38571183  -398.91632626    -0.00834051    -0.00140026  0.73D-04  0.13D-03     6.30
    4     4     4     1.06633127    -0.38441297  -398.91502740    -0.01176153    -0.00251194  0.12D-03  0.25D-03     6.30
    4     5     5     1.06441693    -0.38312850  -398.91374293    -0.01062885    -0.00370506  0.17D-03  0.46D-03     6.30
    4     6     6     1.05390740    -0.36964564  -398.85598665    -0.01239779    -0.00338689  0.19D-03  0.35D-03     6.30
    5     1     1     1.06877248    -0.38755621  -398.91817064    -0.00158510    -0.00064781  0.20D-04  0.75D-04     8.44
    5     2     2     1.06882090    -0.38755203  -398.91816646    -0.00163364    -0.00064367  0.21D-04  0.74D-04     8.44
    5     3     3     1.06875661    -0.38739763  -398.91801207    -0.00168581    -0.00071349  0.26D-04  0.84D-04     8.44
    5     4     4     1.06711534    -0.38697669  -398.91759112    -0.00256372    -0.00082476  0.82D-04  0.75D-04     8.44
    5     5     5     1.06691968    -0.38654520  -398.91715963    -0.00341670    -0.00092929  0.13D-03  0.74D-04     8.44
    5     6     6     1.05556421    -0.37348507  -398.85982608    -0.00383943    -0.00103798  0.94D-04  0.85D-04     8.44
    6     1     1     1.06754374    -0.38825262  -398.91886706    -0.00069641    -0.00023168  0.13D-04  0.21D-04    10.53
    6     2     2     1.06749972    -0.38824533  -398.91885976    -0.00069330    -0.00023719  0.13D-04  0.22D-04    10.53
    6     3     3     1.06732233    -0.38818398  -398.91879842    -0.00078635    -0.00025343  0.15D-04  0.22D-04    10.53
    6     4     4     1.06589582    -0.38807804  -398.91869248    -0.00110136    -0.00033290  0.20D-04  0.27D-04    10.53
    6     5     5     1.06563786    -0.38785565  -398.91847008    -0.00131044    -0.00045896  0.17D-04  0.41D-04    10.53
    6     6     6     1.05718901    -0.37498002  -398.86132103    -0.00149495    -0.00058643  0.22D-04  0.52D-04    10.53
    7     1     1     1.06898749    -0.38858126  -398.91919569    -0.00032864    -0.00012437  0.38D-05  0.11D-04    12.64
    7     2     2     1.06902179    -0.38858057  -398.91919500    -0.00033524    -0.00012740  0.32D-05  0.12D-04    12.64
    7     3     3     1.06889085    -0.38854783  -398.91916226    -0.00036385    -0.00014270  0.39D-05  0.13D-04    12.64
    7     4     4     1.06803281    -0.38850920  -398.91912363    -0.00043115    -0.00019238  0.24D-05  0.18D-04    12.64
    7     5     5     1.06725241    -0.38836147  -398.91897590    -0.00050582    -0.00027771  0.52D-05  0.29D-04    12.64
    7     6     6     1.05936756    -0.37557424  -398.86191525    -0.00059422    -0.00025815  0.12D-04  0.25D-04    12.64
    8     1     1     1.06961236    -0.38871290  -398.91932733    -0.00013164    -0.00007048  0.20D-05  0.74D-05    14.73
    8     2     2     1.06963358    -0.38871163  -398.91932607    -0.00013107    -0.00006956  0.23D-05  0.71D-05    14.73
    8     3     3     1.06954829    -0.38869457  -398.91930900    -0.00014674    -0.00007842  0.28D-05  0.83D-05    14.73
    8     4     4     1.06914224    -0.38869193  -398.91930636    -0.00018274    -0.00007557  0.62D-05  0.69D-05    14.73
    8     5     5     1.06887450    -0.38862556  -398.91923999    -0.00026409    -0.00010502  0.86D-05  0.96D-05    14.73
    8     6     6     1.06077089    -0.37584067  -398.86218169    -0.00026644    -0.00010992  0.46D-05  0.11D-04    14.73
    9     1     1     1.06956296    -0.38878647  -398.91940090    -0.00007357    -0.00003543  0.94D-06  0.38D-05    16.84
    9     2     2     1.06956565    -0.38878565  -398.91940009    -0.00007402    -0.00003554  0.92D-06  0.37D-05    16.84
    9     3     3     1.06917562    -0.38877915  -398.91939358    -0.00008457    -0.00004067  0.85D-06  0.40D-05    16.84
    9     4     4     1.06948082    -0.38877700  -398.91939144    -0.00008507    -0.00003903  0.11D-05  0.40D-05    16.84
    9     5     5     1.06904460    -0.38873259  -398.91934702    -0.00010703    -0.00006119  0.46D-06  0.65D-05    16.84
    9     6     6     1.06144767    -0.37595952  -398.86230054    -0.00011884    -0.00006981  0.34D-06  0.74D-05    16.84
   10     1     1     1.06962726    -0.38882417  -398.91943861    -0.00003770    -0.00002182  0.37D-07  0.22D-05    18.92
   10     2     2     1.06963821    -0.38882309  -398.91943753    -0.00003744    -0.00002216  0.40D-07  0.23D-05    18.92
   10     3     3     1.06937433    -0.38882293  -398.91943736    -0.00004378    -0.00002490  0.41D-06  0.25D-05    18.92
   10     4     4     1.06957018    -0.38881849  -398.91943292    -0.00004148    -0.00002430  0.50D-07  0.25D-05    18.92
   10     5     5     1.06918651    -0.38879753  -398.91941197    -0.00006494    -0.00003647  0.15D-05  0.37D-05    18.92
   10     6     6     1.06189813    -0.37603118  -398.86237220    -0.00007166    -0.00003733  0.15D-05  0.38D-05    18.92
   11     1     1     1.06967562    -0.38884812  -398.91946256    -0.00002395    -0.00001235  0.43D-06  0.12D-05    21.02
   11     2     2     1.06979062    -0.38884612  -398.91946055    -0.00002302    -0.00001302  0.29D-06  0.13D-05    21.02
   11     3     3     1.06980881    -0.38884543  -398.91945986    -0.00002251    -0.00001315  0.31D-06  0.13D-05    21.02
   11     4     4     1.06975888    -0.38884323  -398.91945766    -0.00002474    -0.00001438  0.38D-06  0.15D-05    21.02
   11     5     5     1.06953756    -0.38883348  -398.91944791    -0.00003594    -0.00001939  0.15D-06  0.22D-05    21.02
   11     6     6     1.06220365    -0.37606770  -398.86240872    -0.00003652    -0.00001978  0.70D-07  0.22D-05    21.02
   12     1     1     1.06979109    -0.38886061  -398.91947504    -0.00001249    -0.00000736  0.50D-07  0.76D-06    23.12
   12     2     2     1.06987582    -0.38885885  -398.91947329    -0.00001274    -0.00000816  0.25D-07  0.91D-06    23.12
   12     3     3     1.06988590    -0.38885835  -398.91947278    -0.00001291    -0.00000821  0.23D-07  0.91D-06    23.12
   12     4     4     1.06984482    -0.38885732  -398.91947175    -0.00001409    -0.00000873  0.30D-07  0.97D-06    23.12
   12     5     5     1.06971723    -0.38885038  -398.91946481    -0.00001690    -0.00001074  0.24D-06  0.11D-05    23.12
   12     6     6     1.06246404    -0.37608741  -398.86242842    -0.00001970    -0.00001276  0.14D-06  0.14D-05    23.12
   13     1     1     1.06985023    -0.38886837  -398.91948280    -0.00000776    -0.00000480  0.82D-07  0.51D-06    25.17
   13     2     2     1.06992076    -0.38886634  -398.91948078    -0.00000748    -0.00000495  0.37D-07  0.54D-06    25.17
   13     3     3     1.06992522    -0.38886596  -398.91948039    -0.00000762    -0.00000507  0.41D-07  0.55D-06    25.17
   13     4     4     1.06989322    -0.38886544  -398.91947987    -0.00000812    -0.00000536  0.50D-07  0.59D-06    25.17
   13     5     5     1.06979105    -0.38886233  -398.91947676    -0.00001194    -0.00000769  0.61D-07  0.83D-06    25.17
   13     6     6     1.06263218    -0.37610062  -398.86244163    -0.00001321    -0.00000804  0.51D-07  0.92D-06    25.17
   14     1     1     1.06992462    -0.38887305  -398.91948749    -0.00000469    -0.00000272  0.10D-07  0.29D-06    27.29
   14     2     2     1.06996686    -0.38887137  -398.91948580    -0.00000503    -0.00000331  0.14D-07  0.36D-06    27.29
   14     3     3     1.06997303    -0.38887110  -398.91948553    -0.00000514    -0.00000338  0.13D-07  0.36D-06    27.29
   14     4     4     1.06994882    -0.38887093  -398.91948536    -0.00000548    -0.00000353  0.16D-07  0.38D-06    27.29
   14     5     5     1.06986197    -0.38886928  -398.91948371    -0.00000696    -0.00000422  0.17D-07  0.49D-06    27.29
   14     6     6     1.06271989    -0.37610795  -398.86244896    -0.00000733    -0.00000438  0.22D-07  0.49D-06    27.29
   15     1     1     1.06997992    -0.38887568  -398.91949011    -0.00000262    -0.00000163  0.19D-07  0.17D-06    29.38
   15     2     2     1.06999669    -0.38887441  -398.91948885    -0.00000305    -0.00000219  0.12D-07  0.25D-06    29.38
   15     3     3     1.07000318    -0.38887422  -398.91948865    -0.00000312    -0.00000221  0.13D-07  0.25D-06    29.38
   15     4     4     1.06998402    -0.38887422  -398.91948865    -0.00000329    -0.00000226  0.15D-07  0.26D-06    29.38
   15     5     5     1.06993767    -0.38887306  -398.91948749    -0.00000378    -0.00000253  0.19D-07  0.28D-06    29.38
   15     6     6     1.06281932    -0.37611237  -398.86245339    -0.00000443    -0.00000300  0.85D-08  0.33D-06    29.38
   16     1     1     1.07000299    -0.38887740  -398.91949184    -0.00000173    -0.00000117  0.30D-08  0.13D-06    31.53
   16     2     2     1.07001594    -0.38887632  -398.91949076    -0.00000191    -0.00000140  0.26D-08  0.15D-06    31.53
   16     3     3     1.07000492    -0.38887623  -398.91949066    -0.00000201    -0.00000146  0.33D-08  0.16D-06    31.53
   16     4     4     1.07002003    -0.38887618  -398.91949062    -0.00000197    -0.00000144  0.25D-08  0.16D-06    31.53
   16     5     5     1.06998147    -0.38887572  -398.91949015    -0.00000266    -0.00000187  0.59D-08  0.20D-06    31.53
   16     6     6     1.06289135    -0.37611536  -398.86245638    -0.00000299    -0.00000197  0.16D-08  0.23D-06    31.53
   17     1     1     1.07002253    -0.38887848  -398.91949292    -0.00000108    -0.00000068  0.19D-08  0.74D-07    33.58
   17     2     2     1.07003605    -0.38887769  -398.91949212    -0.00000136    -0.00000095  0.16D-08  0.10D-06    33.58
   17     3     3     1.07002699    -0.38887766  -398.91949209    -0.00000144    -0.00000098  0.18D-08  0.11D-06    33.58
   17     4     4     1.07003894    -0.38887759  -398.91949202    -0.00000141    -0.00000098  0.16D-08  0.11D-06    33.58
   17     5     5     1.07000008    -0.38887743  -398.91949186    -0.00000171    -0.00000109  0.25D-08  0.13D-06    33.58
   17     6     6     1.06292743    -0.37611714  -398.86245816    -0.00000178    -0.00000111  0.29D-08  0.13D-06    33.58
   18     1     1     1.07004772    -0.38887914  -398.91949358    -0.00000066    -0.00000042  0.17D-08  0.45D-07    35.62
   18     2     2     1.07004575    -0.38887857  -398.91949301    -0.00000089    -0.00000066  0.23D-08  0.77D-07    35.62
   18     3     3     1.07005210    -0.38887857  -398.91949300    -0.00000090    -0.00000066  0.19D-08  0.78D-07    35.62
   18     4     4     1.07005500    -0.38887849  -398.91949292    -0.00000090    -0.00000068  0.18D-08  0.79D-07    35.62
   18     5     5     1.07002595    -0.38887839  -398.91949282    -0.00000096    -0.00000067  0.12D-08  0.74D-07    35.62
   18     6     6     1.06296731    -0.37611825  -398.86245926    -0.00000111    -0.00000078  0.99D-09  0.88D-07    35.62
   19     1     1     1.07006130    -0.38887958  -398.91949402    -0.00000044    -0.00000031  0.75D-09  0.35D-07    37.68
   19     2     2     1.07005657    -0.38887914  -398.91949357    -0.00000056    -0.00000044  0.11D-08  0.49D-07    37.68
   19     3     3     1.07006144    -0.38887912  -398.91949355    -0.00000056    -0.00000043  0.98D-09  0.48D-07    37.68
   19     4     4     1.07004927    -0.38887909  -398.91949352    -0.00000060    -0.00000051  0.16D-08  0.56D-07    37.68
   19     5     5     1.07006384    -0.38887907  -398.91949350    -0.00000068    -0.00000045  0.10D-08  0.50D-07    37.68
   19     6     6     1.06299970    -0.37611901  -398.86246003    -0.00000077    -0.00000053  0.58D-09  0.62D-07    37.68
   20     1     1     1.07006716    -0.38887987  -398.91949431    -0.00000029    -0.00000019  0.28D-09  0.21D-07    39.72
   20     2     2     1.07006500    -0.38887956  -398.91949399    -0.00000042    -0.00000030  0.38D-09  0.33D-07    39.72
   20     3     3     1.07005812    -0.38887956  -398.91949399    -0.00000043    -0.00000031  0.56D-09  0.36D-07    39.72
   20     4     4     1.07006901    -0.38887954  -398.91949397    -0.00000044    -0.00000030  0.36D-09  0.33D-07    39.72
   20     5     5     1.07007075    -0.38887950  -398.91949393    -0.00000043    -0.00000031  0.35D-09  0.34D-07    39.72
   20     6     6     1.06301675    -0.37611948  -398.86246050    -0.00000047    -0.00000030  0.22D-09  0.35D-07    39.72
   21     1     1     1.07007612    -0.38888005  -398.91949448    -0.00000018    -0.00000012  0.19D-09  0.13D-07    41.79
   21     2     2     1.07007337    -0.38887983  -398.91949427    -0.00000028    -0.00000021  0.37D-09  0.24D-07    41.79
   21     3     3     1.07006726    -0.38887983  -398.91949426    -0.00000027    -0.00000019  0.30D-09  0.21D-07    41.79
   21     4     4     1.07007639    -0.38887981  -398.91949424    -0.00000027    -0.00000022  0.31D-09  0.26D-07    41.79
   21     5     5     1.07007785    -0.38887978  -398.91949422    -0.00000028    -0.00000022  0.29D-09  0.26D-07    41.79
   21     6     6     1.06303441    -0.37611978  -398.86246080    -0.00000030    -0.00000022  0.38D-09  0.25D-07    41.79
   22     1     1     1.07008355    -0.38888017  -398.91949461    -0.00000013    -0.00000009  0.17D-09  0.10D-07    43.92
   22     2     2     1.07007702    -0.38888002  -398.91949446    -0.00000019    -0.00000015  0.20D-09  0.17D-07    43.92
   22     3     3     1.07007947    -0.38888001  -398.91949444    -0.00000019    -0.00000014  0.29D-09  0.16D-07    43.92
   22     4     4     1.07008180    -0.38887999  -398.91949442    -0.00000018    -0.00000014  0.27D-09  0.16D-07    43.92
   22     5     5     1.07008300    -0.38887997  -398.91949440    -0.00000019    -0.00000015  0.27D-09  0.17D-07    43.92
   22     6     6     1.06304941    -0.37611999  -398.86246101    -0.00000021    -0.00000015  0.97D-10  0.17D-07    43.92
   23     1     1     1.07008665    -0.38888026  -398.91949469    -0.00000008    -0.00000006  0.80D-10  0.64D-08    45.96
   23     2     2     1.07008200    -0.38888016  -398.91949459    -0.00000014    -0.00000009  0.17D-09  0.11D-07    45.96
   23     3     3     1.07008384    -0.38888014  -398.91949457    -0.00000013    -0.00000010  0.12D-09  0.11D-07    45.96
   23     4     4     1.07008568    -0.38888012  -398.91949456    -0.00000013    -0.00000010  0.12D-09  0.11D-07    45.96
   23     5     5     1.07008663    -0.38888011  -398.91949454    -0.00000014    -0.00000011  0.12D-09  0.12D-07    45.96
   23     6     6     1.06305793    -0.37612012  -398.86246114    -0.00000013    -0.00000009  0.70D-10  0.10D-07    45.96
   24     1     1     1.07008663    -0.38888026  -398.91949469    -0.00000000    -0.00000006  0.81D-10  0.64D-08    47.70
   24     2     2     1.07008624    -0.38888024  -398.91949468    -0.00000008    -0.00000006  0.81D-10  0.64D-08    47.70
   24     3     3     1.07008743    -0.38888023  -398.91949466    -0.00000009    -0.00000007  0.10D-09  0.81D-08    47.70
   24     4     4     1.07008883    -0.38888021  -398.91949465    -0.00000009    -0.00000007  0.90D-10  0.88D-08    47.70
   24     5     5     1.07008963    -0.38888021  -398.91949464    -0.00000009    -0.00000008  0.85D-10  0.91D-08    47.70
   24     6     6     1.06310003    -0.37612037  -398.86246138    -0.00000024    -0.00000003  0.14D-10  0.33D-08    47.70


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.3%
 P   0.4%   8.8%  58.1%

 Initialization:   0.0%
 Other:           32.4%

 Total CPU:       47.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222/2\          -0.0000000  -0.0000000   0.9666920   0.0000000  -0.0000000  -0.0000000
 222222/\          -0.0000000  -0.0000000  -0.0000000   0.9666914  -0.0000000   0.0000000
 22222/\2           0.0000000   0.0000000   0.0000000   0.0000000   0.9666910  -0.0000000
 22222202           0.7878952  -0.0470766   0.0000000   0.0000000  -0.0000000   0.5503083
 22222022          -0.3531795   0.7058759  -0.0000000  -0.0000000   0.0000000   0.5503089
 22222220          -0.4347178  -0.6588000  -0.0000000  -0.0000000   0.0000000   0.5503091
 20222222          -0.0000004  -0.0000006  -0.0000000   0.0000000   0.0000000  -0.1791829

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222/\2  14.1     0.0000000  -0.0000000   0.0000000   0.0000000   0.0729781   0.0000000
 2\222/2\  13.1    -0.0067231  -0.0727031   0.0000000   0.0000000  -0.0000000   0.0085020
 2\2222/\  12.1    -0.0641984  -0.0347771   0.0000000  -0.0000000  -0.0000000   0.0085021
 2\222/\2  15.1     0.0622169  -0.0382084  -0.0000000   0.0000000  -0.0000000   0.0085028
 2\2222/\  11.1     0.0000000   0.0000000   0.0000000   0.0620132  -0.0000000  -0.0000000
 2\222/2\  11.1    -0.0000000   0.0000000   0.0620131  -0.0000000   0.0000000  -0.0000000
 2\222/\2   9.1     0.0000000  -0.0000000   0.0000000   0.0000000   0.0538339   0.0000000
 2\222/2\   7.1    -0.0032440  -0.0537306   0.0000000   0.0000000  -0.0000000   0.0040205

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.032442    0.000000   -0.000000    0.966152   -0.000001
 2          -0.000000    0.966152    0.000000   -0.000000   -0.032442   -0.000000
 3           0.966696   -0.000000    0.000000   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.966695    0.000000   -0.000000
 5          -0.000000    0.000000    0.966695    0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000001    0.969864

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966696   -0.000000    0.000000    0.000000    0.000000   -0.000001
 2          -0.000000    0.966696   -0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.966696    0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.966695    0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.966695   -0.000000
 6          -0.000001   -0.000000    0.000000   -0.000000   -0.000000    0.969864


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96615160 (fixed)   0.96669735 (relaxed)   0.96669611 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000257   -0.00000000   -0.31636649
 Singles      0.02460282   -0.05034133   -0.05598290
 Pairs        0.04548399    0.00000050   -0.01653087
 Total        1.07008938   -0.05034083   -0.38888026
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53061443
 Nuclear energy                         0.00000000
 Kinetic energy                       405.52015693
 One electron energy                 -550.54477084
 Two electron energy                  151.62527614
 Virial quotient                       -0.98372297
 Correlation energy                    -0.38888026
 !MRCI STATE 1.1 Energy              -398.919494692247

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.94675107 (Davidson, fixed reference)
 Cluster corrected energies          -398.94675000 (Davidson, relaxed reference)
 Cluster corrected energies          -398.94675107 (Davidson, rotated reference)

 Cluster corrected energies          -398.94407219 (Pople, fixed reference)
 Cluster corrected energies          -398.94407118 (Pople, relaxed reference)
 Cluster corrected energies          -398.94407219 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96615177 (fixed)   0.96669753 (relaxed)   0.96669629 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000257    0.00000000   -0.31636601
 Singles      0.02460345   -0.05034160   -0.05598355
 Pairs        0.04548297    0.00000015   -0.01653068
 Total        1.07008899   -0.05034145   -0.38888024
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53061444
 Nuclear energy                         0.00000000
 Kinetic energy                       405.52017152
 One electron energy                 -550.54479961
 Two electron energy                  151.62530494
 Virial quotient                       -0.98372294
 Correlation energy                    -0.38888024
 !MRCI STATE 2.1 Energy              -398.919494675015

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.94675090 (Davidson, fixed reference)
 Cluster corrected energies          -398.94674983 (Davidson, relaxed reference)
 Cluster corrected energies          -398.94675090 (Davidson, rotated reference)

 Cluster corrected energies          -398.94407203 (Pople, fixed reference)
 Cluster corrected energies          -398.94407102 (Pople, relaxed reference)
 Cluster corrected energies          -398.94407203 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96669575 (fixed)   0.96669699 (relaxed)   0.96669575 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000257    0.00000000   -0.31636406
 Singles      0.02460528   -0.05034315   -0.05598489
 Pairs        0.04548234   -0.00000000   -0.01653128
 Total        1.07009018   -0.05034315   -0.38888023
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53061444
 Nuclear energy                         0.00000000
 Kinetic energy                       405.52015860
 One electron energy                 -550.54475241
 Two electron energy                  151.62525775
 Virial quotient                       -0.98372297
 Correlation energy                    -0.38888023
 !MRCI STATE 3.1 Energy              -398.919494662021

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.94675135 (Davidson, fixed reference)
 Cluster corrected energies          -398.94675028 (Davidson, relaxed reference)
 Cluster corrected energies          -398.94675135 (Davidson, rotated reference)

 Cluster corrected energies          -398.94407246 (Pople, fixed reference)
 Cluster corrected energies          -398.94407144 (Pople, relaxed reference)
 Cluster corrected energies          -398.94407246 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96669512 (fixed)   0.96669636 (relaxed)   0.96669512 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000257   -0.00000000   -0.31636357
 Singles      0.02460531   -0.05034321   -0.05598502
 Pairs        0.04548370   -0.00000000   -0.01653162
 Total        1.07009158   -0.05034321   -0.38888021
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53061443
 Nuclear energy                         0.00000000
 Kinetic energy                       405.52014914
 One electron energy                 -550.54473234
 Two electron energy                  151.62523770
 Virial quotient                       -0.98372299
 Correlation energy                    -0.38888021
 !MRCI STATE 4.1 Energy              -398.919494645327

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.94675188 (Davidson, fixed reference)
 Cluster corrected energies          -398.94675081 (Davidson, relaxed reference)
 Cluster corrected energies          -398.94675188 (Davidson, rotated reference)

 Cluster corrected energies          -398.94407295 (Pople, fixed reference)
 Cluster corrected energies          -398.94407194 (Pople, relaxed reference)
 Cluster corrected energies          -398.94407295 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96669476 (fixed)   0.96669600 (relaxed)   0.96669476 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000257    0.00000000   -0.31636327
 Singles      0.02460537   -0.05034328   -0.05598509
 Pairs        0.04548444    0.00000000   -0.01653184
 Total        1.07009238   -0.05034328   -0.38888021
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53061443
 Nuclear energy                         0.00000000
 Kinetic energy                       405.52014386
 One electron energy                 -550.54472179
 Two electron energy                  151.62522715
 Virial quotient                       -0.98372301
 Correlation energy                    -0.38888020
 !MRCI STATE 5.1 Energy              -398.919494635876

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.94675217 (Davidson, fixed reference)
 Cluster corrected energies          -398.94675110 (Davidson, relaxed reference)
 Cluster corrected energies          -398.94675217 (Davidson, rotated reference)

 Cluster corrected energies          -398.94407324 (Pople, fixed reference)
 Cluster corrected energies          -398.94407222 (Pople, relaxed reference)
 Cluster corrected energies          -398.94407324 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96986409 (fixed)   0.96986868 (relaxed)   0.96986409 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000946    0.00000000   -0.00000335
 Singles      0.00420478   -0.01371839   -0.01439168
 Pairs        0.05889584   -0.36240197   -0.36172534
 Total        1.06311008   -0.37612037   -0.37612037
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.48634102
 Nuclear energy                         0.00000000
 Kinetic energy                       405.47405675
 One electron energy                 -550.39451339
 Two electron energy                  151.53205201
 Virial quotient                       -0.98369416
 Correlation energy                    -0.37612037
 !MRCI STATE 6.1 Energy              -398.862461382716

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.88619837 (Davidson, fixed reference)
 Cluster corrected energies          -398.88619459 (Davidson, relaxed reference)
 Cluster corrected energies          -398.88619837 (Davidson, rotated reference)

 Cluster corrected energies          -398.88375645 (Pople, fixed reference)
 Cluster corrected energies          -398.88375291 (Pople, relaxed reference)
 Cluster corrected energies          -398.88375645 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       23.90       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        56.68     48.09      6.90      0.88      0.18      0.39
 REAL TIME  *        68.02 SEC
 DISK USED  *        54.36 MB (local),      703.41 MB (total)
 SF USED    *       182.37 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -398.94675107  AU                              
 SETTING HLSDIAG(5)     =      -398.94675090  AU                              
 SETTING HLSDIAG(6)     =      -398.94675135  AU                              
 SETTING HLSDIAG(7)     =      -398.94675188  AU                              
 SETTING HLSDIAG(8)     =      -398.94675217  AU                              
 SETTING HLSDIAG(9)     =      -398.88619837  AU                              


         HLSDIAG
    -398.9879205
    -398.9879206
    -398.9879204
    -398.9467511
    -398.9467509
    -398.9467513
    -398.9467519
    -398.9467522
    -398.8861984
                                                  

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

 Time for Seward_LS:       0.68 sec

        2402996. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.69 sec, REAL time:      0.70 sec


 SORTLS1 read     2508011. and wrote     2508011. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.04 sec
 SORTLS2 read     2508011. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    72.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    72.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       23.90       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        58.23      1.54     48.09      6.90      0.88      0.18      0.39
 REAL TIME  *        69.68 SEC
 DISK USED  *        54.40 MB (local),      892.90 MB (total)
 SF USED    *       182.37 MB
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

 Original energies:   -398.963246   -398.963246   -398.963246
 Replaced energies:   -398.987921   -398.987921   -398.987920

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -398.919495   -398.919495   -398.919495   -398.919495   -398.919495   -398.862461
 Replaced energies:   -398.946751   -398.946751   -398.946751   -398.946752   -398.946752   -398.886198



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -398.98792055

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00     139.79       0.00       0.00       0.00       0.00
                            0.00    -197.70       0.00       0.00      -0.00       0.00       0.00       0.00       0.00    -162.18

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -72.70
                          197.70       0.00      -0.00       0.00      -0.00     139.79       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.02    -139.79       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    -139.79       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00      -0.00    -139.79       0.01       0.00       0.00       0.00       0.00     139.79       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    5   2.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00     139.79      -0.00       0.00       0.00       0.00      -0.00     139.79       0.00

    6   3.1  1.0  0.0     139.79      -0.00       0.00       0.00       0.00       0.02    -139.79       0.00       0.00       0.00
                           -0.00    -139.79      -0.00      -0.00      -0.00       0.00      -0.00    -139.79       0.00     126.55

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00    -139.79       0.01       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     197.70      -0.00     162.18

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00     -72.70
                           -0.00      -0.00      -0.00       0.00       0.00     139.79    -197.70      -0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00     139.79      -0.00       0.00       0.00       0.00       0.02       0.00
                           -0.00      -0.00      -0.00      -0.00    -139.79      -0.00       0.00      -0.00      -0.00       0.00

   10   1.1  0.0  0.0       0.00     -72.70       0.00       0.00       0.00       0.00       0.00     -72.70       0.00    9035.66
                          162.18       0.00       0.00       0.00      -0.00    -126.55    -162.18      -0.00      -0.00       0.00

   11   2.1  0.0  0.0       0.00     145.30      -0.00       0.00       0.00       0.00       0.00     145.30      -0.00       0.00
                           -9.69       0.00      -0.00      -0.00      -0.00    -191.78       9.69      -0.00       0.00      -0.00

   12   3.1  0.0  0.0       0.00      -0.00    -140.70       0.00       0.00       0.00       0.00      -0.00    -140.70       0.00
                            0.00       0.00       0.00       0.00    -198.98      -0.00      -0.00      -0.00      -0.00      -0.00

   13   4.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00     140.70     198.98      -0.00       0.00      -0.00      -0.00    -140.70      -0.00

   14   5.1  0.0  0.0     140.70       0.00       0.00       0.00       0.00       0.00     140.70       0.00       0.00       0.00
                           -0.00     140.70       0.00       0.00       0.00       0.00       0.00    -140.70      -0.00      -0.00

   15   6.1  0.0  0.0      -0.00    -229.59       0.00       0.00       0.00       0.00      -0.00    -229.59       0.00       0.00
                         -229.59      -0.00       0.00       0.00      -0.00    -324.68     229.59       0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00       0.00      -0.00     140.70      -0.00
                            9.69      -0.00      -0.00       0.00     229.59

    2   2.1  1.0  1.0     145.30      -0.00       0.00       0.00    -229.59
                           -0.00      -0.00      -0.00    -140.70       0.00

    3   3.1  1.0  1.0      -0.00    -140.70      -0.00       0.00       0.00
                            0.00      -0.00    -140.70      -0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -198.98      -0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00     198.98       0.00      -0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          191.78       0.00      -0.00      -0.00     324.68

    7   1.1  1.0 -1.0       0.00       0.00      -0.00     140.70      -0.00
                           -9.69       0.00       0.00      -0.00    -229.59

    8   2.1  1.0 -1.0     145.30      -0.00       0.00       0.00    -229.59
                            0.00       0.00       0.00     140.70      -0.00

    9   3.1  1.0 -1.0      -0.00    -140.70      -0.00       0.00       0.00
                           -0.00       0.00     140.70       0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    9035.69       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    9035.60       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    9035.48       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    9035.41       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   22325.44
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -398.98792055 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.007       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000    -197.698

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     197.698     197.698       0.000

    3    1  |1 1>+              0.000       0.000       0.023      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -197.698       0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.007       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     197.698      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.023     197.699      -0.000
                               -0.000    -197.698       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     197.699       0.007       0.000
                                0.000    -197.698       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                              197.698       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000    -197.699       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000    -102.811       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -126.547     229.360       0.000

    2    1  |0 0>               0.000     205.482      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000    -191.777     -13.704       0.000

    3    1  |0 0>               0.000      -0.000    -198.983       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -198.983      -0.000       0.000       0.000

    4    1  |0 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     198.984      -0.000       0.000       0.000       0.000

    5    1  |0 0>             198.983       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000     198.983

    6    1  |0 0>              -0.000    -324.684       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -324.684    -324.685      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000     198.983      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000    -102.811     205.482      -0.000       0.000       0.000    -324.684
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000    -198.983      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            -197.699       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000    -198.984      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     198.983       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     126.547     191.777       0.000      -0.000      -0.000     324.684

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -229.360      13.704      -0.000      -0.000       0.000     324.685

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000    -198.983       0.000

    3    1  |1 1>-              0.023       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000    -198.984      -0.000      -0.000

    1    1  |0 0>               0.000    9035.657       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    9035.694       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    9035.596       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    9035.480       0.000       0.000
                              198.984      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    9035.414       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   22325.438
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -398.98886036    -0.00093980     -206.26      0.00000000        0.00      0.0000
    2  -398.98886035    -0.00093980     -206.26      0.00000000        0.00      0.0000
    3  -398.98886032    -0.00093977     -206.26      0.00000004        0.01      0.0000
    4  -398.98886031    -0.00093975     -206.25      0.00000005        0.01      0.0000
    5  -398.98886030    -0.00093975     -206.25      0.00000006        0.01      0.0000
    6  -398.98701976     0.00090079      197.70      0.00184060      403.96      0.0501
    7  -398.98701972     0.00090083      197.71      0.00184064      403.97      0.0501
    8  -398.98701970     0.00090085      197.71      0.00184065      403.98      0.0501
    9  -398.98618461     0.00173594      380.99      0.00267574      587.26      0.0728
   10  -398.94671313     0.04120742     9043.98      0.04214722     9250.25      1.1469
   11  -398.94671283     0.04120772     9044.05      0.04214752     9250.31      1.1469
   12  -398.94671231     0.04120824     9044.16      0.04214805     9250.43      1.1469
   13  -398.94671203     0.04120852     9044.23      0.04214833     9250.49      1.1469
   14  -398.94671186     0.04120869     9044.26      0.04214850     9250.53      1.1469
   15  -398.88613270     0.10178785    22339.85      0.10272765    22546.11      2.7954

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000001 -0.70677285  0.00000000  0.00000000 -0.00000000  0.70711313  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.75868832 -0.00000002  0.00000001  0.00000000  0.30075368 -0.00000000  0.00000000 -0.00000000
                           0.00027083 -0.00000000 -0.00000000 -0.00000000 -0.00039667  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.70675909 -0.00000000  0.00000000 -0.00000000  0.70712690 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.70679296 -0.00000000  0.00000000 -0.00000000 -0.70709303

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.70679934  0.00000000 -0.00000000 -0.00000000  0.70708667 -0.00000000

   3    1  |1 0>          -0.00004244  0.00000000  0.00000000  0.00000000  0.00106491  0.00000000 -0.00000000 -0.00000000
                           0.11888470 -0.00000000  0.00000001  0.00000000  0.80740282  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00022838  0.00000000 -0.00000000 -0.00000000 -0.00066827  0.00000000  0.00000000  0.00000000
                           0.63979064 -0.00000001  0.00000000 -0.00000000 -0.50667534  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001  0.70678555 -0.00000000 -0.00000000  0.00000000  0.70710043  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.70676545 -0.00000000 -0.00000000  0.00000000  0.70712053

   1    1  |0 0>           0.02269007 -0.00000000  0.00000000 -0.00000000 -0.02028421  0.00000000  0.00000000  0.00000000
                           0.00000810 -0.00000000  0.00000000  0.00000000  0.00002675 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.02028401  0.00000000 -0.00000000 -0.00000000 -0.02268976  0.00000000 -0.00000000  0.00000000
                          -0.00000724  0.00000000  0.00000000  0.00000000  0.00002993 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.03043488 -0.00000000  0.00000000 -0.00000000  0.00000089  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.03043533 -0.00000000  0.00000000  0.00000000  0.00000063
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.03043545 -0.00000000 -0.00000000  0.00000000 -0.00000029 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000016 -0.00000000  0.00000000  0.00000000  0.00000040 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.00000000  0.02152113  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.57713302  0.00000000  0.00000000  0.00000000 -0.01111002  0.02222794 -0.01479086
                           0.00449683 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000035  0.00000011

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.02152073 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.02152100 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.02152070  0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00449701  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000033  0.00000011
                           0.57715636 -0.00000000 -0.00000000 -0.00000000  0.01369510  0.02073543  0.01479088

   1    1  |1 1>-          0.00449688 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000002  0.00000011
                           0.57714039  0.00000000  0.00000000  0.00000000 -0.02480526  0.00149251  0.01479091

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.02152110 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.02152106 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |0 0>          -0.00000006 -0.00000000 -0.00000000 -0.00000000  0.99953666 -0.00041812 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000097  0.00000001  0.00000000

   2    1  |0 0>          -0.00000049  0.00000000  0.00000000  0.00000000  0.00041812  0.99953667 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001583  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.99953675  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.99953674  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.99953673  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.02561778  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.99967179
                           0.00019961  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000774


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -398.98886036     -0.00093980     -206.26      0.00000000        0.00      0.0000
     2   1   -398.98886035     -0.00093980     -206.26      0.00000000        0.00      0.0000
     3   1   -398.98886032     -0.00093977     -206.26      0.00000004        0.01      0.0000
     4   1   -398.98886031     -0.00093975     -206.25      0.00000005        0.01      0.0000
     5   1   -398.98886030     -0.00093975     -206.25      0.00000006        0.01      0.0000
     6   1   -398.98701976      0.00090079      197.70      0.00184060      403.96      0.0501
     7   1   -398.98701972      0.00090083      197.71      0.00184064      403.97      0.0501
     8   1   -398.98701970      0.00090085      197.71      0.00184065      403.98      0.0501
     9   1   -398.98618461      0.00173594      380.99      0.00267574      587.26      0.0728
    10   1   -398.94671313      0.04120742     9043.98      0.04214722     9250.25      1.1469
    11   1   -398.94671283      0.04120772     9044.05      0.04214752     9250.31      1.1469
    12   1   -398.94671231      0.04120824     9044.16      0.04214805     9250.43      1.1469
    13   1   -398.94671203      0.04120852     9044.23      0.04214833     9250.49      1.1469
    14   1   -398.94671186      0.04120869     9044.26      0.04214850     9250.53      1.1469
    15   1   -398.88613270      0.10178785    22339.85      0.10272765    22546.11      2.7954

 E0 =   -398.98792055 is the energy of the lowest zeroth-order state
 E1 =   -398.98886036 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000001 -0.70677285  0.00000000  0.00000000 -0.00000000  0.70711313  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.75868832 -0.00000002  0.00000001  0.00000000  0.30075368 -0.00000000  0.00000000 -0.00000000
                                0.00027083 -0.00000000 -0.00000000 -0.00000000 -0.00039667  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.70675909 -0.00000000  0.00000000 -0.00000000  0.70712690 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.70679296 -0.00000000  0.00000000 -0.00000000 -0.70709303

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.70679934  0.00000000 -0.00000000 -0.00000000  0.70708667 -0.00000000

  6  1     3    1  |1 0>       -0.00004244  0.00000000  0.00000000  0.00000000  0.00106491  0.00000000 -0.00000000 -0.00000000
                                0.11888470 -0.00000000  0.00000001  0.00000000  0.80740282  0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.00022838  0.00000000 -0.00000000 -0.00000000 -0.00066827  0.00000000  0.00000000  0.00000000
                                0.63979064 -0.00000001  0.00000000 -0.00000000 -0.50667534  0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001  0.70678555 -0.00000000 -0.00000000  0.00000000  0.70710043  0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.70676545 -0.00000000 -0.00000000  0.00000000  0.70712053

 10  1     1    1  |0 0>        0.02269007 -0.00000000  0.00000000 -0.00000000 -0.02028421  0.00000000  0.00000000  0.00000000
                                0.00000810 -0.00000000  0.00000000  0.00000000  0.00002675 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.02028401  0.00000000 -0.00000000 -0.00000000 -0.02268976  0.00000000 -0.00000000  0.00000000
                               -0.00000724  0.00000000  0.00000000  0.00000000  0.00002993 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000 -0.03043488 -0.00000000  0.00000000 -0.00000000  0.00000089  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.03043533 -0.00000000  0.00000000  0.00000000  0.00000063
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000000  0.03043545 -0.00000000 -0.00000000  0.00000000 -0.00000029 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000016 -0.00000000  0.00000000  0.00000000  0.00000040 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.00000000  0.02152113  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.57713302  0.00000000  0.00000000  0.00000000 -0.01111002  0.02222794 -0.01479086
                                0.00449683 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000035  0.00000011

  3  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.02152073 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.02152100 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.02152070  0.00000000 -0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00449701  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000033  0.00000011
                                0.57715636 -0.00000000 -0.00000000 -0.00000000  0.01369510  0.02073543  0.01479088

  7  1     1    1  |1 1>-       0.00449688 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000002  0.00000011
                                0.57714039  0.00000000  0.00000000  0.00000000 -0.02480526  0.00149251  0.01479091

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.02152110 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.02152106 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000006 -0.00000000 -0.00000000 -0.00000000  0.99953666 -0.00041812 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000097  0.00000001  0.00000000

 11  1     2    1  |0 0>       -0.00000049  0.00000000  0.00000000  0.00000000  0.00041812  0.99953667 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001583  0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.99953675  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000  0.99953674  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000000  0.99953673  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.02561778  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.99967179
                                0.00019961  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000774



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        57.56%    0.00%    0.00%    0.00%    9.05%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>          0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.00%    0.00%
  6  1     3    1  |1 0>          1.41%    0.00%    0.00%    0.00%   65.19%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-        40.93%    0.00%    0.00%    0.00%   25.67%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.05%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.04%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        33.31%    0.00%    0.00%    0.00%    0.01%    0.05%    0.02%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         33.31%    0.00%    0.00%    0.00%    0.02%    0.04%    0.02%
  7  1     1    1  |1 1>-        33.31%    0.00%    0.00%    0.00%    0.06%    0.00%    0.02%
  8  1     2    1  |1 1>-         0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.91%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.91%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%   99.91%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%   99.91%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%   99.91%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.07%    0.00%    0.00%    0.00%    0.00%    0.00%   99.93%


 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       23.90       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        66.71      8.47      1.54     48.09      6.90      0.88      0.18      0.39
 REAL TIME  *        79.39 SEC
 DISK USED  *        54.40 MB (local),      892.90 MB (total)
 SF USED    *       182.37 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -398.886132704804

              CI              CI           MULTI         RHF-SCF
   -398.86246138   -398.96324625   -398.48634102   -398.58540353
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
