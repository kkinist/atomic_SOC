
 Working directory              : /wrk/irikura/molpro.4cGDj5w1F0/
 Global scratch directory       : /wrk/irikura/molpro.4cGDj5w1F0/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.4cGDj5w1F0/

 id        : nistki

 Nodes     nprocs
 comp-10     31
 Distribution of processes:   nprocs(total)=   32   nprocs(compute)=   31   nprocs(helper)=    1
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Br SO-CI
                                                                                 ! active space (7/4)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Br};
 
 basis=aug-cc-pwCVTZ-X2C
 
 set,dkho=101
 
 rhf
 
 {multi
     closed,8,6;
     wf,sym=2,spin=1;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! KL-shell uncorrelated
 core,2,3
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 1.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 08:33:13 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (2 PROC) 64 bit mpp version                                                            DATE: 07-Jun-24          TIME: 14:09:53  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  31000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry BR     S aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BR     P aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BR     D aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BR     F aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BR     G aug-cc-pwCVTZ-X      selected for orbital group  1


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

   1  BR     35.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   35
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

     19.399 MB (compressed) written to integral file ( 17.7%)

     Node minimum: 0.262 MB, node maximum: 1.311 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     207715.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     207715      RECORD LENGTH: 524288

 Memory used in sort:       0.76 MW

 SORT1 READ    12736444. AND WROTE       42664. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.18 SEC
 SORT2 READ     1292716. AND WROTE     6503791. INTEGRALS IN     62 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      207581.  Node maximum:      212405. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.106E-03 0.240E-02 0.163E-01 0.408E-01 0.408E-01 0.408E-01 0.408E-01 0.408E-01
         2 0.349E-02 0.349E-02 0.349E-02 0.131E-01 0.131E-01 0.131E-01 0.739E-01 0.739E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.28      1.11
 REAL TIME  *         3.92 SEC
 DISK USED  *        29.42 MB (local),        1.02 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   9   8

 NELEC=   35   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2604.49761287   -2604.49761287     0.00D+00     0.17D+00     0     0       0.00      0.01    start
   2    -2604.50641499      -0.00880212     0.12D-01     0.58D-02     1     0       0.00      0.01    diag2
   3    -2604.51032163      -0.00390663     0.70D-02     0.22D-02     2     0       0.01      0.02    diag2
   4    -2604.51036573      -0.00004410     0.37D-03     0.31D-03     3     0       0.00      0.02    diag2
   5    -2604.51036916      -0.00000343     0.76D-04     0.10D-03     4     0       0.01      0.03    diag2
   6    -2604.51036946      -0.00000030     0.11D-04     0.36D-04     5     0       0.00      0.03    diag2
   7    -2604.51036947      -0.00000001     0.18D-05     0.75D-05     6     0       0.00      0.03    diag2
   8    -2604.51036947      -0.00000000     0.19D-06     0.39D-06     7     0       0.00      0.03    fixocc
   9    -2604.51036947       0.00000000     0.18D-07     0.22D-07     0     0       0.01      0.04    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   8

 !RHF STATE 1.2 Energy              -2604.510369469549
  RHF One-electron energy           -3622.818699202902
  RHF Two-electron energy            1018.308329733354
  RHF Kinetic energy                 2786.381801345918
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.934728459758

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -498.23737     1  1  s    0.99998
    2.1     2.00000   -67.09844     1  2  s    0.99986
    3.1     2.00000   -10.19621     1  3  s    0.99904
    4.1     2.00000    -3.16246     1  1  d0  -0.49963    1  1  d2+  0.86538
    5.1     2.00000    -3.15856     1  1  d1+  0.99959
    6.1     2.00000    -3.15856     1  1  d2-  0.99959
    7.1     2.00000    -3.14681     1  1  d1-  1.00060
    8.1     2.00000    -3.14681     1  1  d0   0.86654    1  1  d2+  0.50030
    9.1     2.00000    -1.02088     1  4  s    1.00040
    1.2     2.00000   -58.99709     1  1  px   1.00011
    2.2     2.00000   -58.99525     1  1  pz   0.99972
    3.2     2.00000   -58.99525     1  1  py   0.99972
    4.2     2.00000    -7.55373     1  2  px   0.99706
    5.2     2.00000    -7.54528     1  2  pz   1.00093
    6.2     2.00000    -7.54528     1  2  py   1.00093
    7.2     2.00000    -0.44344     1  3  pz   0.99607
    8.2     2.00000    -0.44344     1  3  py   0.99607
    9.2     1.00000    -0.51233     1  3  px   1.04796


 HOMO      9.2    -0.512334 =     -13.9413eV
 LUMO     10.1     0.085900 =       2.3374eV
 LUMO-HOMO         0.598233 =      16.2788eV

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
 CPU TIMES  *         1.32      0.04      1.11
 REAL TIME  *         4.02 SEC
 DISK USED  *        30.33 MB (local),        1.05 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      82 (   39   43)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.570D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.277D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.378D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.907D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.709D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.285D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.104D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 4 3 6 2 1 1   5 3 4 2 6 1 5 4 3 2   6 5 3 4 2 6 1 5 4 3   6 210 913 71514 812
                                       11 1 5 4 3 2 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.202D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.191D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.183D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.371D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.379D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.275D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.159D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.133D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.337D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 3 2 1 1   3 2 1 2 3 7 910 4 8   6 5 1 3 2 7 910 4 8   6 5 710 9 8 4 6 5 1
                                        3 2 710 9 4 8 6 5 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  764  ( 26 closed/active, 570 closed/virtual, 0 active/active, 168 active/virtual )
 Total number of variables:    773
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0  -2604.50761302   -2604.50832844   -0.00071542    0.04844792 0.00002134 0.00000000  0.27E-01      0.34
   2    8    8    0  -2604.50832862   -2604.50832862   -0.00000000    0.00009404 0.00000001 0.00000000  0.48E-04      0.67

 CONVERGENCE REACHED!  Final gradient:    0.00000005 ( 0.50E-07)
                       Final energy:  -2604.50832862
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                     -2604.508328618883
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.37958271
 One electron energy                         -3622.81821654
 Two electron energy                          1018.30988792
 Virial ratio                                    1.93472847
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                     -2604.508328618870
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.37958271
 One electron energy                         -3622.81821654
 Two electron energy                          1018.30988792
 Virial ratio                                    1.93472847
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                     -2604.508328618865
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.37958271
 One electron energy                         -3622.81821654
 Two electron energy                          1018.30988792
 Virial ratio                                    1.93472847
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.000000000000
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999943846
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999995426
 
 !MCSCF expec                      <1.2|LYLY|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000016904021
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999985103672
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999983152132
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.000014900902
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 6 3 5 1 1   4 2 6 3 5 1 4 2 6 3   5 4 2 6 3 5 1 4 2 6   3 5 9 7 81211141510
                                       13 1 2 4 6 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 2 1 3 3   1 2 3 1 2 4 6 5 810   7 9 3 1 2 4 6 510 8   9 7 4 6 510 8 7 9 3
                                        1 2 4 6 5 810 7 9 3   1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -498.23744     1  1  s    0.99998
    2.1     2.00000   -67.09851     1  2  s    0.99986
    3.1     2.00000   -10.19626     1  3  s    0.99904
    4.1     2.00000    -3.15471     1  1  d1+  0.99993
    5.1     2.00000    -3.15471     1  1  d0   0.99993
    6.1     2.00000    -3.15471     1  1  d1-  0.99993
    7.1     2.00000    -3.15471     1  1  d2-  0.99993
    8.1     2.00000    -3.15471     1  1  d2+  0.99993
    9.1     2.00000    -1.02091     1  4  s    1.00025
    1.2     2.00000   -58.99593     1  1  pz   0.99996
    2.2     2.00000   -58.99593     1  1  px   0.99996
    3.2     2.00000   -58.99593     1  1  py   0.99996
    4.2     2.00000    -7.54815     1  2  pz   0.99964
    5.2     2.00000    -7.54815     1  2  px   0.99964
    6.2     2.00000    -7.54815     1  2  py   0.99964
    7.2     1.66667    -0.38730     1  3  py   1.00622
    8.2     1.66667    -0.38730     1  3  px   1.00622
    9.2     1.66667    -0.38730     1  3  pz   1.00622
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 2 2a2          1.00000000     -0.00000000      0.00000000
 2 a22          0.00000000      0.99999158     -0.00410462
 2 22a         -0.00000000      0.00410462      0.99999158
 
 Energy:    -2604.50832862  -2604.50832862  -2604.50832862
 


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
 CPU TIMES  *         1.83      0.51      0.04      1.11
 REAL TIME  *         5.14 SEC
 DISK USED  *        40.00 MB (local),        1.34 GB (total)
 SF USED    *        24.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2604.508329   2.0
    -2604.508329   2.0
    -2604.508329   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 35
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:        3 conf        3 CSFs
 N elec internal:       13 conf       13 CSFs
 N-1 el internal:       91 conf      169 CSFs
 N-2 el internal:      232 conf      962 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  5


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.04 sec, npass=  1  Memory used:   0.64 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2604.50832862
     2     -2604.50832862
     3     -2604.50832862

 Number of blocks in overlap matrix:   434   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     497
 Number of N-1 electron functions:     169

 Number of internal configurations:                    6
 Number of singly external configurations:          6931
 Number of doubly external configurations:        836618
 Total number of contracted configurations:       843555
 Total number of uncontracted configurations:    1620849

 Diagonal Coupling coefficients finished.               Storage:    301205 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    438797 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.50832862    -0.00000000    -0.99272759  0.17D-01  0.98D-01     0.11
    1     2     2     1.00000000     0.00000000 -2604.50832862    -0.00000000    -0.99269041  0.17D-01  0.98D-01     0.11
    1     3     3     1.00000000     0.00000000 -2604.50832862    -0.00000000    -0.99272066  0.17D-01  0.98D-01     0.11
    2     1     1     1.07661554    -0.81133841 -2605.31966703    -0.81133841    -0.01686180  0.13D-02  0.17D-02     1.88
    2     2     2     1.07663435    -0.81132916 -2605.31965778    -0.81132916    -0.01686887  0.13D-02  0.17D-02     1.88
    2     3     3     1.07663218    -0.81132899 -2605.31965761    -0.81132899    -0.01687151  0.13D-02  0.17D-02     1.88
    3     1     1     1.06591760    -0.82713593 -2605.33546455    -0.01579753    -0.00026391  0.13D-04  0.27D-04     3.78
    3     2     2     1.06591918    -0.82713565 -2605.33546426    -0.01580648    -0.00026422  0.13D-04  0.27D-04     3.78
    3     3     3     1.06591908    -0.82713558 -2605.33546420    -0.01580659    -0.00026428  0.13D-04  0.28D-04     3.78
    4     1     1     1.06526088    -0.82739374 -2605.33572236    -0.00025781    -0.00000741  0.84D-06  0.48D-06     5.68
    4     2     2     1.06526081    -0.82739374 -2605.33572236    -0.00025810    -0.00000741  0.84D-06  0.48D-06     5.68
    4     3     3     1.06526061    -0.82739373 -2605.33572235    -0.00025815    -0.00000742  0.84D-06  0.48D-06     5.68
    5     1     1     1.06528083    -0.82740090 -2605.33572951    -0.00000715    -0.00000023  0.39D-07  0.13D-07     7.57
    5     2     2     1.06528084    -0.82740090 -2605.33572951    -0.00000715    -0.00000023  0.39D-07  0.13D-07     7.57
    5     3     3     1.06528094    -0.82740089 -2605.33572951    -0.00000716    -0.00000023  0.39D-07  0.13D-07     7.57
    6     1     1     1.06527578    -0.82740113 -2605.33572975    -0.00000023    -0.00000001  0.86D-09  0.81D-09     9.47
    6     2     2     1.06527578    -0.82740113 -2605.33572975    -0.00000023    -0.00000001  0.86D-09  0.81D-09     9.47
    6     3     3     1.06527579    -0.82740113 -2605.33572975    -0.00000023    -0.00000001  0.86D-09  0.81D-09     9.47


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.1%   0.2%
 P   0.3%  22.2%   9.3%

 Initialization:   1.1%
 Other:           66.8%

 Total CPU:        9.5 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/2           0.9688769   0.0000000   0.0000000
 2222222222/22           0.0000000   0.9688769   0.0000000
 222222222222/           0.0000000   0.0000000   0.9688769

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968877    0.000000    0.000000
 2           0.000000    0.968877    0.000000
 3           0.000000    0.000000    0.968877

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968877    0.000000    0.000000
 2           0.000000    0.968877    0.000000
 3           0.000000    0.000000    0.968877


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.96887693 (fixed)   0.96887693 (relaxed)   0.96887693 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000165    0.00000000   -0.75297097
 Singles      0.00764592   -0.02527943   -0.02967020
 Pairs        0.05762997    0.00000000   -0.04475996
 Total        1.06527753   -0.02527943   -0.82740113
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.50832862
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.76362113
 One electron energy                -3621.81113504
 Two electron energy                 1016.47540529
 Virial quotient                       -0.93489656
 Correlation energy                    -0.82740113
 !MRCI STATE 1.2 Energy             -2605.335729747205

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.38974045 (Davidson, fixed reference)
 Cluster corrected energies         -2605.38974045 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.38974045 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38806868 (Pople, fixed reference)
 Cluster corrected energies         -2605.38806868 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38806868 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.96887693 (fixed)   0.96887693 (relaxed)   0.96887693 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000165    0.00000000   -0.75297097
 Singles      0.00764592   -0.02527943   -0.02967020
 Pairs        0.05762997   -0.00000000   -0.04475996
 Total        1.06527754   -0.02527943   -0.82740113
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.50832862
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.76362054
 One electron energy                -3621.81113438
 Two electron energy                 1016.47540464
 Virial quotient                       -0.93489656
 Correlation energy                    -0.82740113
 !MRCI STATE 2.2 Energy             -2605.335729747198

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.38974045 (Davidson, fixed reference)
 Cluster corrected energies         -2605.38974045 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.38974045 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38806868 (Pople, fixed reference)
 Cluster corrected energies         -2605.38806868 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38806868 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96887693 (fixed)   0.96887693 (relaxed)   0.96887693 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000165    0.00000000   -0.00000128
 Singles      0.00764594   -0.02527945   -0.02967021
 Pairs        0.05762996   -0.80212167   -0.79772964
 Total        1.06527755   -0.82740113   -0.82740113
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.50832862
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.76362140
 One electron energy                -3621.81113435
 Two electron energy                 1016.47540460
 Virial quotient                       -0.93489656
 Correlation energy                    -0.82740113
 !MRCI STATE 3.2 Energy             -2605.335729747168

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.38974046 (Davidson, fixed reference)
 Cluster corrected energies         -2605.38974046 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.38974046 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38806869 (Pople, fixed reference)
 Cluster corrected energies         -2605.38806869 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38806869 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       20.55       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        11.63      9.79      0.51      0.04      1.11
 REAL TIME  *        17.64 SEC
 DISK USED  *        59.73 MB (local),        1.94 GB (total)
 SF USED    *       212.04 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2605.38974045  AU                              
 SETTING HLSDIAG(2)     =     -2605.38974045  AU                              
 SETTING HLSDIAG(3)     =     -2605.38974046  AU                              


         HLSDIAG
    -2605.389740
    -2605.389740
    -2605.389740
                                                  


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

 Time for Seward_LS:       3.00 sec

 CPU time:      3.00 sec, REAL time:      4.91 sec


 SORTLS1 read     7823938. and wrote     7823938. SO integrals in    93 records. CPU time:      0.06 sec, REAL time:      0.16 sec
 SORTLS2 read     7823938. and wrote    38256242. SO integrals in    93 records. CPU time:      0.01 sec, REAL time:      0.08 sec

 FILE SIZES: FILE 1:    41.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    41.1 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:  -2605.335730  -2605.335730  -2605.335730
 Replaced energies:  -2605.389740  -2605.389740  -2605.389740



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2605.38974046

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00   -1275.34
                            0.00    1275.34       0.00      -0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00
                        -1275.34       0.00      -0.00      -0.00       0.00    1275.34

    3   3.2  0.5  0.5       0.00       0.00       0.00    1275.34       0.00       0.00
                           -0.00       0.00       0.00      -0.00   -1275.34       0.00

    4   1.2  0.5 -0.5      -0.00       0.00    1275.34       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00   -1275.34      -0.00

    5   2.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    1275.34    1275.34      -0.00       0.00

    6   3.2  0.5 -0.5   -1275.34      -0.00       0.00       0.00       0.00       0.00
                           -0.00   -1275.34      -0.00       0.00      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2605.39555132    -0.00581086    -1275.34      0.00000000        0.00      0.0000
     2 -2605.39555132    -0.00581086    -1275.34      0.00000000        0.00      0.0000
     3 -2605.39555132    -0.00581085    -1275.33      0.00000001        0.00      0.0000
     4 -2605.39555132    -0.00581085    -1275.33      0.00000001        0.00      0.0000
     5 -2605.37811873     0.01162174     2550.68      0.01743260     3826.01      0.4744
     6 -2605.37811873     0.01162174     2550.68      0.01743260     3826.01      0.4744


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5   0.013767146   0.335275370   0.743855142   0.027329353   0.577350435  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.019564145  -0.476451415   0.662333534   0.024334237  -0.577350351   0.000000000

    3    3.2  0.5  0.5   0.729728463  -0.029964259   0.002995025  -0.081519119   0.000000000   0.576781693
                        -0.355524371   0.014598614   0.000024127  -0.000656686  -0.000000000  -0.025611042

    4    1.2  0.5 -0.5  -0.301406619   0.012376420  -0.027328467   0.743831008  -0.000000000   0.576782107
                         0.146845579  -0.006029803  -0.000220147   0.005992010  -0.000000000  -0.025611060

    5    2.2  0.5 -0.5  -0.208678567   0.008568802  -0.000196021   0.005335326   0.000000000   0.025611056
                        -0.428321383   0.017587820   0.024333447  -0.662312044  -0.000000000   0.576782023

    6    3.2  0.5 -0.5   0.033331312   0.811727299   0.081521764   0.002995122  -0.577350021  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5   0.019%  11.241%  55.332%   0.075%  33.333%   0.000%
    2    2.2  0.5  0.5   0.038%  22.701%  43.869%   0.059%  33.333%   0.000%
    3    3.2  0.5  0.5  65.890%   0.111%   0.001%   0.665%   0.000%  33.333%
    4    1.2  0.5 -0.5  11.241%   0.019%   0.075%  55.332%   0.000%  33.333%
    5    2.2  0.5 -0.5  22.701%   0.038%   0.059%  43.869%   0.000%  33.333%
    6    3.2  0.5 -0.5   0.111%  65.890%   0.665%   0.001%  33.333%   0.000%


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
              1      24       39.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       20.55       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        23.10     11.46      9.79      0.51      0.04      1.11
 REAL TIME  *        33.05 SEC
 DISK USED  *        59.79 MB (local),        2.47 GB (total)
 SF USED    *       212.04 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy=  -2605.378118727889

              CI           MULTI         RHF-SCF
  -2605.33572975  -2604.50832862  -2604.51036947
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
