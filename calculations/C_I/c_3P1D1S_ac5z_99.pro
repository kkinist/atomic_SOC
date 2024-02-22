
 Working directory              : /wrk/irikura/molpro.QPbCEZcQWS/
 Global scratch directory       : /wrk/irikura/molpro.QPbCEZcQWS/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.QPbCEZcQWS/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,C SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={C};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=6,sym=1,spin=2}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,1,0;
     wf,sym=1,spin=2;state,3;
         weight,all,99
     wf,sym=1,spin=0;state,6;
         weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=2;state,3; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,6; save,5200.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2,5200.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   C SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 13:31:30  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry C      S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry C      P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry C      D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry C      F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry C      G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry C      H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  C       6.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    6
 NUMBER OF PRIMITIVE AOS:         268
 NUMBER OF SYMMETRY AOS:          198
 NUMBER OF CONTRACTIONS:          181   (   87Ag  +   94Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     112.722 MB (compressed) written to integral file ( 12.1%)

     Node minimum: 20.972 MB, node maximum: 24.379 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   13716042.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   13716042      RECORD LENGTH: 524288

 Memory used in sort:      14.27 MW

 SORT1 READ   116167465. AND WROTE     2452140. INTEGRALS IN      8 RECORDS. CPU TIME:     0.57 SEC, REAL TIME:     0.60 SEC
 SORT2 READ    12169024. AND WROTE    68575111. INTEGRALS IN    440 RECORDS. CPU TIME:     0.37 SEC, REAL TIME:     0.41 SEC

 Node minimum:    13713236.  Node maximum:    13716554. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       19202111121314151617  18192021

 Eigenvalues of metric

         1 0.446E-05 0.445E-03 0.459E-02 0.928E-02 0.401E-01 0.413E-01 0.413E-01 0.413E-01
         2 0.233E-03 0.233E-03 0.233E-03 0.220E-01 0.220E-01 0.220E-01 0.412E-01 0.412E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.23      3.03
 REAL TIME  *         4.43 SEC
 DISK USED  *        30.07 MB (local),      387.77 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   2
 Initial beta  occupancy:   2   0

 NELEC=    6   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -37.66672341     -37.66672341     0.00D+00     0.31D-01     0     0       0.08      0.15    start
   2      -37.70233679      -0.03561338     0.60D-02     0.63D-02     1     0       0.08      0.23    diag2
   3      -37.70339282      -0.00105603     0.14D-02     0.12D-02     2     0       0.09      0.32    diag2
   4      -37.70361766      -0.00022484     0.42D-03     0.41D-03     3     0       0.08      0.40    diag2
   5      -37.70363189      -0.00001424     0.98D-04     0.12D-03     4     0       0.08      0.48    diag2
   6      -37.70363212      -0.00000023     0.14D-04     0.26D-04     5     0       0.09      0.57    diag2
   7      -37.70363213      -0.00000000     0.14D-05     0.32D-05     6     0       0.08      0.65    diag2
   8      -37.70363213      -0.00000000     0.15D-06     0.32D-06     7     0       0.09      0.74    fixocc
   9      -37.70363213      -0.00000000     0.90D-08     0.32D-07     0     0       0.08      0.82    diag

 Final alpha occupancy:   2   2
 Final beta  occupancy:   2   0

 !RHF STATE 1.1 Energy                -37.703632126099
  RHF One-electron energy             -50.469179382815
  RHF Two-electron energy              12.765547256716
  RHF Kinetic energy                   37.809525154518
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.997199302874

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.32961     1  1  s    0.99600
    2.1     2.00000    -0.70617     1  2  s    1.00674
    1.2     1.00000    -0.43326     1  1  px   0.99821
    2.2     1.00000    -0.43326     1  1  py   0.82850    1  1  pz   0.55679


 HOMO      2.2    -0.433257 =     -11.7895eV
 LUMO      3.2     0.011206 =       0.3049eV
 LUMO-HOMO         0.444463 =      12.0945eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.91       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.06      0.83      3.03
 REAL TIME  *         5.27 SEC
 DISK USED  *        32.74 MB (local),      401.08 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     176 (   85   91)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.156D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.108D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 2 5 3 1 3   5 4 2 611 7 8 91513  101412 1 3 5 4 2 611   8 715 913101412 6 4
                                        2 3 5 111 7 815 913  101412 6 4 2 3 5 1 6   4 2 3 511 7 8 91513  101412 1 6 4 2 3 5 1
                                        6 4 2 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.192D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.402D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.405D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 5   8 6 4 9 710 2 1 3 5   8 6 4 910 7 1 2 313  12141911171518201621
                                        5 8 6 4 910 7 3 1 2  13141219111715182021  16 5 8 6 9 410 7 3 1   2 5 8 6 4 9 710 3 1
                                        2 5 6 8 4 9 710 3 1   2 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  444  ( 1 closed/active, 85 closed/virtual, 0 active/active, 358 active/virtual )
 Total number of variables:    570
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0    -37.64902706     -37.72215827   -0.07313121    0.14183812 0.00106394 0.00000000  0.54E+00      0.35
   2    8   14    0    -37.71857159     -37.71959896   -0.00102737    0.05365465 0.00000014 0.00000000  0.37E-01      0.73
   3    5   10    0    -37.71960523     -37.71960533   -0.00000009    0.00044703 0.00000006 0.00000000  0.34E-03      1.00
   4    2    4    0    -37.71960533     -37.71960533    0.00000000    0.00000004 0.00000001 0.00000000  0.41E-07      1.20

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.84E-08)
                       Final energy:    -37.71960533
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -37.720902714707
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.82546763
 One electron energy                           -50.47934758
 Two electron energy                            12.75844486
 Virial ratio                                    1.99723559
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -37.720902714036
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.82546767
 One electron energy                           -50.47934762
 Two electron energy                            12.75844490
 Virial ratio                                    1.99723559
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -37.720902713978
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.82546767
 One electron energy                           -50.47934762
 Two electron energy                            12.75844491
 Virial ratio                                    1.99723559
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -37.662068725308
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.82546763
 One electron energy                           -50.47934758
 Two electron energy                            12.81727885
 Virial ratio                                    1.99568019
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -37.662068725296
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.82546763
 One electron energy                           -50.47934758
 Two electron energy                            12.81727885
 Virial ratio                                    1.99568019
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -37.662068723754
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.82546767
 One electron energy                           -50.47934762
 Two electron energy                            12.81727889
 Virial ratio                                    1.99568019
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -37.662068723620
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.82546767
 One electron energy                           -50.47934762
 Two electron energy                            12.81727890
 Virial ratio                                    1.99568019
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -37.662068723129
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.82546769
 One electron energy                           -50.47934763
 Two electron energy                            12.81727891
 Virial ratio                                    1.99568019
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -37.621963958489
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.80591335
 One electron energy                           -50.43933789
 Two electron energy                            12.81737393
 Virial ratio                                    1.99513438
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000167
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999832
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000000063
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.125788734965
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999652
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000038
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.874209786462
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999833
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000172
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.999999999943
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.879281509566
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000347
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999999964
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.120719852000
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999995
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.999999999994
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.994929755469
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000001
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999999998
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.005070361539
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 4 5 3 1 5   3 6 4 211 7 912 814  151013 1 6 2 4 3 510  1314151112 8 7 9 3 5
                                        6 4 2 11013151412 8  11 7 9 5 3 6 4 2 1 3   5 6 4 21013151412 8  11 7 9 1 3 5 6 4 2 1
                                        3 5 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 3 1 2 6   5 410 8 7 9 3 1 2 5   610 8 4 7 9 3 2 112  19211314161115172018
                                        9 710 8 5 6 4 2 1 3  20181715141621131219  11 7 910 8 5 4 6 2 1   3 9 7 810 5 4 6 2 1
                                        3 9 710 8 5 4 6 2 1   3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.32067     1  1  s    0.99591
    2.1     1.95539    -0.69501     1  2  s    1.00711
    1.2     0.68154    -0.05632     1  1  px   0.99558
    2.2     0.68154    -0.05632     1  1  pz   0.99558
    3.2     0.68154    -0.05632     1  1  py   0.99558
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa0         -0.00000000      0.00001279      0.98887050
 2 0aa          0.00000000      0.98887050     -0.00001279
 2 a0a          0.98887050      0.00000000      0.00000000
 0 a2a         -0.14877884      0.00000000     -0.00000000
 0 2aa          0.00000000     -0.14877884      0.00000192
 0 aa2         -0.00000000     -0.00000192     -0.14877884
 
 Energy:      -37.72090271    -37.72090271    -37.72090271
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020         -0.00000041     -0.02874605     -0.00000053      0.00000216      0.80689747      0.55550564
 2 002          0.00002493      0.71316676      0.00000113     -0.00000091     -0.37855396      0.55550558
 2 ab0         -0.00000081     -0.00000011     -0.00000753      0.69923703     -0.00000188      0.00000000
 2 ba0          0.00000081      0.00000011      0.00000753     -0.69923703      0.00000188     -0.00000000
 2 0ba          0.00000027      0.00000088     -0.69923703     -0.00000753     -0.00000043     -0.00000000
 2 0ab         -0.00000027     -0.00000088      0.69923703      0.00000753      0.00000043      0.00000000
 2 a0b          0.69923703     -0.00002473      0.00000027      0.00000081     -0.00000053      0.00000000
 2 b0a         -0.69923703      0.00002473     -0.00000027     -0.00000081      0.00000053     -0.00000000
 2 200         -0.00002453     -0.68442070     -0.00000059     -0.00000126     -0.42834359      0.55550559
 0 220          0.00000375      0.10729830      0.00000017     -0.00000014     -0.05695468     -0.15731135
 0 022         -0.00000369     -0.10297336     -0.00000009     -0.00000019     -0.06444570     -0.15731135
 0 202         -0.00000006     -0.00432494     -0.00000008      0.00000033      0.12140040     -0.15731134
 0 a2b         -0.10520253      0.00000372     -0.00000004     -0.00000012      0.00000008     -0.00000000
 0 b2a          0.10520253     -0.00000372      0.00000004      0.00000012     -0.00000008      0.00000000
 0 2ab          0.00000004      0.00000013     -0.10520253     -0.00000113     -0.00000006     -0.00000000
 0 2ba         -0.00000004     -0.00000013      0.10520253      0.00000113      0.00000006      0.00000000
 0 ab2          0.00000012      0.00000002      0.00000113     -0.10520252      0.00000028     -0.00000000
 0 ba2         -0.00000012     -0.00000002     -0.00000113      0.10520252     -0.00000028      0.00000000
 
 Energy:      -37.66206873    -37.66206873    -37.66206872    -37.66206872    -37.66206872    -37.62196396
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.58       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.28      1.20      0.83      3.03
 REAL TIME  *         6.77 SEC
 DISK USED  *        34.83 MB (local),      411.56 MB (total)
 SF USED    *        11.10 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -37.72090271   2.0
    -37.72090271   2.0
    -37.72090271   2.0
    -37.66206873   6.0
    -37.66206873   6.0
    -37.66206872   6.0
    -37.66206872   6.0
    -37.66206872   6.0
    -37.62196396   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                  6
 Maximum number of shells:             2
 Maximum number of spin couplings:     3

 Reference space:        6 conf        6 CSFs
 N elec internal:       13 conf       15 CSFs
 N-1 el internal:       16 conf       24 CSFs
 N-2 el internal:       10 conf       22 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     176 (  85  91 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -37.72090271
     2       -37.72090271
     3       -37.72090271

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.22D-01
 Number of N-2 electron functions:      18
 Number of N-1 electron functions:      24

 Number of internal configurations:                    6
 Number of singly external configurations:          2112
 Number of doubly external configurations:        138918
 Total number of contracted configurations:       141036
 Total number of uncontracted configurations:     171906

 Diagonal Coupling coefficients finished.               Storage:    174137 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    316348 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -37.72090271    -0.00000000    -0.08043150  0.23D-01  0.11D-01     0.07
    1     2     2     1.00000000     0.00000000   -37.72090271    -0.00000000    -0.08021627  0.23D-01  0.11D-01     0.07
    1     3     3     1.00000000     0.00000000   -37.72090271    -0.00000000    -0.08056791  0.23D-01  0.11D-01     0.07
    2     1     1     1.03266786    -0.07890808   -37.79981079    -0.07890808    -0.00193773  0.16D-03  0.44D-03     0.62
    2     2     2     1.03262576    -0.07889804   -37.79980076    -0.07889804    -0.00194469  0.17D-03  0.44D-03     0.62
    2     3     3     1.03253293    -0.07888457   -37.79978728    -0.07888457    -0.00195591  0.18D-03  0.44D-03     0.62
    3     1     1     1.03737115    -0.08108245   -37.80198516    -0.00217437    -0.00007442  0.25D-04  0.16D-04     1.17
    3     2     2     1.03737487    -0.08108227   -37.80198498    -0.00218423    -0.00007446  0.25D-04  0.16D-04     1.17
    3     3     3     1.03737550    -0.08108206   -37.80198478    -0.00219750    -0.00007450  0.25D-04  0.16D-04     1.17
    4     1     1     1.03800865    -0.08117821   -37.80208092    -0.00009576    -0.00000745  0.18D-05  0.16D-05     1.72
    4     2     2     1.03800981    -0.08117816   -37.80208087    -0.00009589    -0.00000748  0.18D-05  0.16D-05     1.72
    4     3     3     1.03801187    -0.08117813   -37.80208085    -0.00009607    -0.00000751  0.18D-05  0.16D-05     1.72
    5     1     1     1.03811271    -0.08118814   -37.80209085    -0.00000993    -0.00000070  0.19D-06  0.14D-06     2.27
    5     2     2     1.03811286    -0.08118813   -37.80209085    -0.00000998    -0.00000071  0.19D-06  0.14D-06     2.27
    5     3     3     1.03811300    -0.08118813   -37.80209085    -0.00001000    -0.00000071  0.19D-06  0.14D-06     2.27
    6     1     1     1.03811503    -0.08118905   -37.80209176    -0.00000091    -0.00000006  0.14D-07  0.12D-07     2.81
    6     2     2     1.03811523    -0.08118905   -37.80209176    -0.00000092    -0.00000006  0.14D-07  0.12D-07     2.81
    6     3     3     1.03811545    -0.08118905   -37.80209176    -0.00000092    -0.00000006  0.14D-07  0.12D-07     2.81
    7     1     1     1.03811065    -0.08118912   -37.80209184    -0.00000007    -0.00000001  0.15D-08  0.12D-08     3.34
    7     2     2     1.03811073    -0.08118912   -37.80209184    -0.00000007    -0.00000001  0.15D-08  0.12D-08     3.34
    7     3     3     1.03811070    -0.08118912   -37.80209184    -0.00000007    -0.00000001  0.15D-08  0.12D-08     3.34


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.3%   3.0%   8.7%

 Initialization:   2.1%
 Other:           85.9%

 Total CPU:        3.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//0           0.0000000   0.9723212   0.0000000
 2/0/           0.0000000   0.0000000   0.9723212
 20//           0.9723212   0.0000000   0.0000000
 02//          -0.1337161   0.0000000   0.0000000
 0/2/           0.0000000   0.0000000  -0.1337158
 0//2           0.0000000  -0.1337157   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.981394    0.000000
 2           0.000000    0.000000    0.981394
 3           0.981394    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.981394    0.000000    0.000000
 2           0.000000    0.981394    0.000000
 3           0.000000    0.000000    0.981394


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98139384 (fixed)   0.98147259 (relaxed)   0.98139384 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016050   -0.00000000   -0.04041449
 Singles      0.02441529   -0.03924071   -0.03970239
 Pairs        0.01370148    0.00000000   -0.00107225
 Total        1.03827726   -0.03924071   -0.08118912
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.72090271
 Nuclear energy                         0.00000000
 Kinetic energy                        37.90471216
 One electron energy                  -50.42152537
 Two electron energy                   12.61943353
 Virial quotient                       -0.99729268
 Correlation energy                    -0.08118912
 !MRCI STATE 1.1 Energy               -37.802091837882

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80519954 (Davidson, fixed reference)
 Cluster corrected energies           -37.80518601 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80519954 (Davidson, rotated reference)

 Cluster corrected energies           -37.80209184 (Pople, fixed reference)
 Cluster corrected energies           -37.80209184 (Pople, relaxed reference)
 Cluster corrected energies           -37.80209184 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98139380 (fixed)   0.98147256 (relaxed)   0.98139380 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016050    0.00000000   -0.00001255
 Singles      0.02441537   -0.03924077   -0.03970239
 Pairs        0.01370147   -0.04194835   -0.04147419
 Total        1.03827735   -0.08118912   -0.08118912
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.72090271
 Nuclear energy                         0.00000000
 Kinetic energy                        37.90471440
 One electron energy                  -50.42152761
 Two electron energy                   12.61943577
 Virial quotient                       -0.99729262
 Correlation energy                    -0.08118912
 !MRCI STATE 2.1 Energy               -37.802091837854

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80519954 (Davidson, fixed reference)
 Cluster corrected energies           -37.80518601 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80519954 (Davidson, rotated reference)

 Cluster corrected energies           -37.80209184 (Pople, fixed reference)
 Cluster corrected energies           -37.80209184 (Pople, relaxed reference)
 Cluster corrected energies           -37.80209184 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98139382 (fixed)   0.98147257 (relaxed)   0.98139382 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016050   -0.00000000   -0.04041445
 Singles      0.02441534   -0.03924075   -0.03970239
 Pairs        0.01370147    0.00000000   -0.00107229
 Total        1.03827731   -0.03924075   -0.08118912
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.72090271
 Nuclear energy                         0.00000000
 Kinetic energy                        37.90471329
 One electron energy                  -50.42152640
 Two electron energy                   12.61943456
 Virial quotient                       -0.99729265
 Correlation energy                    -0.08118912
 !MRCI STATE 3.1 Energy               -37.802091837853

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80519954 (Davidson, fixed reference)
 Cluster corrected energies           -37.80518601 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80519954 (Davidson, rotated reference)

 Cluster corrected energies           -37.80209184 (Pople, fixed reference)
 Cluster corrected energies           -37.80209184 (Pople, relaxed reference)
 Cluster corrected energies           -37.80209184 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.80       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.70      3.41      1.20      0.83      3.03
 REAL TIME  *        10.33 SEC
 DISK USED  *        39.06 MB (local),      432.69 MB (total)
 SF USED    *        38.80 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -37.80519954  AU                              
 SETTING HLSDIAG(2)     =       -37.80519954  AU                              
 SETTING HLSDIAG(3)     =       -37.80519954  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                  6
 Maximum number of shells:             3
 Maximum number of spin couplings:     2

 Reference space:       12 conf       12 CSFs
 N elec internal:       19 conf       20 CSFs
 N-1 el internal:       16 conf       20 CSFs
 N-2 el internal:       10 conf       16 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     176 (  85  91 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -37.66206873
     2       -37.66206873
     3       -37.66206872
     4       -37.66206872
     5       -37.66206872
     6       -37.62196396

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.84D+00
 Number of N-2 electron functions:      16
 Number of N-1 electron functions:      20

 Number of internal configurations:                   12
 Number of singly external configurations:          1766
 Number of doubly external configurations:        124292
 Total number of contracted configurations:       126070
 Total number of uncontracted configurations:     126070

 Diagonal Coupling coefficients finished.               Storage:    175939 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    315960 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -37.66206873    -0.00000000    -0.09260338  0.25D-01  0.13D-01     0.02
    1     2     2     1.00000000     0.00000000   -37.66206873    -0.00000000    -0.09213234  0.24D-01  0.13D-01     0.02
    1     3     3     1.00000000     0.00000000   -37.66206872    -0.00000000    -0.09295875  0.25D-01  0.13D-01     0.02
    1     4     4     1.00000000     0.00000000   -37.66206872    -0.00000000    -0.09254278  0.25D-01  0.13D-01     0.02
    1     5     5     1.00000000     0.00000000   -37.66206872    -0.00000000    -0.09206874  0.24D-01  0.13D-01     0.02
    1     6     6     1.00000000     0.00000000   -37.62196396    -0.00000000    -0.07708234  0.10D-01  0.20D-01     0.02
    2     1     1     1.03618949    -0.09002421   -37.75209294    -0.09002421    -0.00321452  0.32D-03  0.71D-03     0.86
    2     2     2     1.03597132    -0.09000391   -37.75207263    -0.09000391    -0.00320456  0.31D-03  0.70D-03     0.86
    2     3     3     1.03616302    -0.09000309   -37.75207182    -0.09000309    -0.00323219  0.31D-03  0.72D-03     0.86
    2     4     4     1.03624695    -0.08999332   -37.75206204    -0.08999332    -0.00325009  0.32D-03  0.72D-03     0.86
    2     5     5     1.03597341    -0.08997184   -37.75204056    -0.08997184    -0.00323251  0.32D-03  0.71D-03     0.86
    2     6     6     1.03161597    -0.07813311   -37.70009707    -0.07813311    -0.00298429  0.30D-03  0.76D-03     0.86
    3     1     1     1.04310757    -0.09363537   -37.75570410    -0.00361116    -0.00018388  0.81D-04  0.30D-04     1.72
    3     2     2     1.04309281    -0.09363168   -37.75570041    -0.00362777    -0.00018693  0.81D-04  0.31D-04     1.72
    3     3     3     1.04306724    -0.09362930   -37.75569802    -0.00362621    -0.00018817  0.82D-04  0.31D-04     1.72
    3     4     4     1.04304432    -0.09362770   -37.75569643    -0.00363439    -0.00018524  0.80D-04  0.30D-04     1.72
    3     5     5     1.04303279    -0.09362500   -37.75569372    -0.00365316    -0.00018731  0.80D-04  0.30D-04     1.72
    3     6     6     1.03971634    -0.08166374   -37.70362770    -0.00353064    -0.00029087  0.23D-03  0.39D-04     1.72
    4     1     1     1.04555245    -0.09387146   -37.75594019    -0.00023609    -0.00002313  0.11D-04  0.34D-05     2.60
    4     2     2     1.04554640    -0.09387101   -37.75593974    -0.00023933    -0.00002336  0.11D-04  0.34D-05     2.60
    4     3     3     1.04553912    -0.09387044   -37.75593916    -0.00024114    -0.00002376  0.11D-04  0.35D-05     2.60
    4     4     4     1.04553037    -0.09386912   -37.75593784    -0.00024142    -0.00002461  0.11D-04  0.34D-05     2.60
    4     5     5     1.04552260    -0.09386871   -37.75593743    -0.00024371    -0.00002481  0.12D-04  0.34D-05     2.60
    4     6     6     1.04532203    -0.08207488   -37.70403884    -0.00041114    -0.00004473  0.19D-04  0.68D-05     2.60
    5     1     1     1.04617672    -0.09390401   -37.75597273    -0.00003255    -0.00000225  0.73D-06  0.39D-06     3.50
    5     2     2     1.04617361    -0.09390396   -37.75597268    -0.00003294    -0.00000228  0.74D-06  0.39D-06     3.50
    5     3     3     1.04617577    -0.09390393   -37.75597266    -0.00003349    -0.00000231  0.74D-06  0.40D-06     3.50
    5     4     4     1.04616578    -0.09390387   -37.75597259    -0.00003475    -0.00000237  0.74D-06  0.40D-06     3.50
    5     5     5     1.04616543    -0.09390383   -37.75597255    -0.00003512    -0.00000240  0.74D-06  0.40D-06     3.50
    5     6     6     1.04652570    -0.08213226   -37.70409622    -0.00005738    -0.00000450  0.15D-05  0.91D-06     3.50
    6     1     1     1.04627250    -0.09390688   -37.75597561    -0.00000288    -0.00000024  0.10D-06  0.39D-07     4.37
    6     2     2     1.04627216    -0.09390688   -37.75597560    -0.00000292    -0.00000024  0.10D-06  0.39D-07     4.37
    6     3     3     1.04627131    -0.09390687   -37.75597560    -0.00000294    -0.00000024  0.10D-06  0.40D-07     4.37
    6     4     4     1.04626954    -0.09390687   -37.75597560    -0.00000300    -0.00000024  0.11D-06  0.38D-07     4.37
    6     5     5     1.04626936    -0.09390687   -37.75597559    -0.00000304    -0.00000025  0.11D-06  0.39D-07     4.37
    6     6     6     1.04672957    -0.08213821   -37.70410217    -0.00000595    -0.00000066  0.37D-06  0.11D-06     4.37
    7     1     1     1.04630060    -0.09390717   -37.75597590    -0.00000029    -0.00000003  0.12D-07  0.44D-08     5.22
    7     2     2     1.04630039    -0.09390717   -37.75597590    -0.00000029    -0.00000003  0.12D-07  0.45D-08     5.22
    7     3     3     1.04630019    -0.09390717   -37.75597590    -0.00000030    -0.00000003  0.13D-07  0.46D-08     5.22
    7     4     4     1.04629894    -0.09390717   -37.75597589    -0.00000030    -0.00000003  0.13D-07  0.47D-08     5.22
    7     5     5     1.04629877    -0.09390717   -37.75597589    -0.00000030    -0.00000003  0.13D-07  0.48D-08     5.22
    7     6     6     1.04685841    -0.08213905   -37.70410300    -0.00000083    -0.00000010  0.37D-07  0.18D-07     5.22
    8     1     1     1.04631366    -0.09390721   -37.75597594    -0.00000004    -0.00000000  0.14D-08  0.59D-09     6.09
    8     2     2     1.04631350    -0.09390721   -37.75597594    -0.00000004    -0.00000000  0.14D-08  0.61D-09     6.09
    8     3     3     1.04631347    -0.09390721   -37.75597594    -0.00000004    -0.00000000  0.14D-08  0.63D-09     6.09
    8     4     4     1.04631296    -0.09390721   -37.75597594    -0.00000004    -0.00000000  0.14D-08  0.64D-09     6.09
    8     5     5     1.04631289    -0.09390721   -37.75597594    -0.00000004    -0.00000000  0.14D-08  0.65D-09     6.09
    8     6     6     1.04689215    -0.08213917   -37.70410313    -0.00000012    -0.00000001  0.41D-08  0.24D-08     6.09


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.3%
 P   0.7%   2.8%   9.2%

 Initialization:   0.3%
 Other:           86.7%

 Total CPU:        6.1 seconds
 =====================================



 Wavefunction saved on  5200.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\0           0.0000000   0.9683873   0.0000000   0.0000000   0.0000000   0.0000000
 20/\           0.0000000   0.0000000   0.9683873   0.0000000   0.0000000   0.0000000
 2/0\           0.9683872   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2020           0.0000000   0.0000000   0.0000000  -0.0734985   0.7872617   0.5448935
 2200           0.0000000   0.0000000   0.0000000   0.7185379  -0.3299793   0.5448934
 2002           0.0000000   0.0000000   0.0000000  -0.6450393  -0.4572824   0.5448934
 0220           0.0000000   0.0000000  -0.0000000  -0.0892732  -0.0632877  -0.1466081
 0022           0.0000000  -0.0000000  -0.0000000   0.0994454  -0.0456687  -0.1466081
 0202           0.0000000  -0.0000000  -0.0000000  -0.0101720   0.1089567  -0.1466077
 0/2\          -0.1340246  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 02/\           0.0000000  -0.0000000  -0.1340244  -0.0000000  -0.0000000  -0.0000000
 0/\2           0.0000000  -0.1340242  -0.0000000   0.0000000   0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \/0\  10.1    -0.0696705  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 \/0\  11.1     0.0000000  -0.0000000  -0.0000000   0.0694833   0.0052435   0.0016714
 \0/\  12.1    -0.0000000  -0.0000000  -0.0000000   0.0279505   0.0638293   0.0016712
 \/\0  14.1     0.0000000   0.0609553  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 \0/\  14.1     0.0000000   0.0000000  -0.0597181   0.0000000   0.0000000  -0.0000000
 \/\0  13.1     0.0000000   0.0000000  -0.0000000   0.0413028  -0.0561208   0.0016714
 \/0\  29.1    -0.0557825  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 \/0\  28.1    -0.0000000  -0.0000000  -0.0000000   0.0557708   0.0027228   0.0036869
 2\00   8.2    -0.0000000  -0.0000000  -0.0000000   0.0348759  -0.0160160   0.0556820
 200\   9.2    -0.0000000   0.0000000  -0.0000000  -0.0313085  -0.0221950   0.0556818
 20\0   7.2    -0.0000000  -0.0000000   0.0000000  -0.0035674   0.0382117   0.0556813
 \0/\  25.1     0.0000000  -0.0000000   0.0000000   0.0210323   0.0517246   0.0036868

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.977550    0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.000000    0.000000    0.977550   -0.000000    0.000000
 3          -0.000000   -0.000000    0.977550    0.000000    0.000000    0.000000
 4          -0.000000   -0.969465    0.000000   -0.000000   -0.125464   -0.000000
 5          -0.000000   -0.125464    0.000000   -0.000000    0.969465    0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.977263

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.977550    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.977550    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.977550    0.000000    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.977550   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.977550    0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.977263


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97754955 (fixed)   0.97761769 (relaxed)   0.97754955 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013942    0.00000000   -0.04693299
 Singles      0.02886689   -0.04480683   -0.04540875
 Pairs        0.01745323   -0.00000000   -0.00156548
 Total        1.04645954   -0.04480683   -0.09390721
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66206873
 Nuclear energy                         0.00000000
 Kinetic energy                        37.85689072
 One electron energy                  -50.32374569
 Two electron energy                   12.56776975
 Virial quotient                       -0.99733431
 Correlation energy                    -0.09390721
 !MRCI STATE 1.1 Energy               -37.755975937282

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.76033882 (Davidson, fixed reference)
 Cluster corrected energies           -37.76032512 (Davidson, relaxed reference)
 Cluster corrected energies           -37.76033882 (Davidson, rotated reference)

 Cluster corrected energies           -37.75815620 (Pople, fixed reference)
 Cluster corrected energies           -37.75814937 (Pople, relaxed reference)
 Cluster corrected energies           -37.75815620 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97754962 (fixed)   0.97761777 (relaxed)   0.97754962 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013943   -0.00000000   -0.04693303
 Singles      0.02886675   -0.04480679   -0.04540876
 Pairs        0.01745321   -0.00000000   -0.00156542
 Total        1.04645938   -0.04480679   -0.09390721
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66206872
 Nuclear energy                         0.00000000
 Kinetic energy                        37.85688854
 One electron energy                  -50.32374504
 Two electron energy                   12.56776911
 Virial quotient                       -0.99733437
 Correlation energy                    -0.09390721
 !MRCI STATE 2.1 Energy               -37.755975937092

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.76033881 (Davidson, fixed reference)
 Cluster corrected energies           -37.76032511 (Davidson, relaxed reference)
 Cluster corrected energies           -37.76033881 (Davidson, rotated reference)

 Cluster corrected energies           -37.75815620 (Pople, fixed reference)
 Cluster corrected energies           -37.75814936 (Pople, relaxed reference)
 Cluster corrected energies           -37.75815620 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97754964 (fixed)   0.97761778 (relaxed)   0.97754964 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013943   -0.00000000   -0.04693299
 Singles      0.02886674   -0.04480684   -0.04540875
 Pairs        0.01745318   -0.00000000   -0.00156547
 Total        1.04645935   -0.04480684   -0.09390721
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66206872
 Nuclear energy                         0.00000000
 Kinetic energy                        37.85689003
 One electron energy                  -50.32374628
 Two electron energy                   12.56777034
 Virial quotient                       -0.99733433
 Correlation energy                    -0.09390721
 !MRCI STATE 3.1 Energy               -37.755975936990

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.76033881 (Davidson, fixed reference)
 Cluster corrected energies           -37.76032511 (Davidson, relaxed reference)
 Cluster corrected energies           -37.76033881 (Davidson, rotated reference)

 Cluster corrected energies           -37.75815620 (Pople, fixed reference)
 Cluster corrected energies           -37.75814936 (Pople, relaxed reference)
 Cluster corrected energies           -37.75815620 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96946506 (fixed)   0.97761802 (relaxed)   0.97754987 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013942   -0.00000000   -0.04693317
 Singles      0.02886632   -0.04480672   -0.04540872
 Pairs        0.01745310    0.00000004   -0.00156532
 Total        1.04645884   -0.04480667   -0.09390721
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66206873
 Nuclear energy                         0.00000000
 Kinetic energy                        37.85689317
 One electron energy                  -50.32374965
 Two electron energy                   12.56777371
 Virial quotient                       -0.99733424
 Correlation energy                    -0.09390721
 !MRCI STATE 4.1 Energy               -37.755975936736

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.76033876 (Davidson, fixed reference)
 Cluster corrected energies           -37.76032506 (Davidson, relaxed reference)
 Cluster corrected energies           -37.76033876 (Davidson, rotated reference)

 Cluster corrected energies           -37.75815617 (Pople, fixed reference)
 Cluster corrected energies           -37.75814933 (Pople, relaxed reference)
 Cluster corrected energies           -37.75815617 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96946510 (fixed)   0.97761805 (relaxed)   0.97754991 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013943    0.00000000   -0.04693314
 Singles      0.02886627   -0.04480673   -0.04540873
 Pairs        0.01745307    0.00000002   -0.00156534
 Total        1.04645877   -0.04480671   -0.09390721
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66206872
 Nuclear energy                         0.00000000
 Kinetic energy                        37.85689268
 One electron energy                  -50.32374993
 Two electron energy                   12.56777399
 Virial quotient                       -0.99733426
 Correlation energy                    -0.09390721
 !MRCI STATE 5.1 Energy               -37.755975936581

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.76033875 (Davidson, fixed reference)
 Cluster corrected energies           -37.76032505 (Davidson, relaxed reference)
 Cluster corrected energies           -37.76033875 (Davidson, rotated reference)

 Cluster corrected energies           -37.75815617 (Pople, fixed reference)
 Cluster corrected energies           -37.75814933 (Pople, relaxed reference)
 Cluster corrected energies           -37.75815617 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97726335 (fixed)   0.97734755 (relaxed)   0.97726335 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00017233    0.00000000   -0.00001352
 Singles      0.01769071   -0.00980734   -0.01075640
 Pairs        0.02920952   -0.07233183   -0.07136925
 Total        1.04707256   -0.08213917   -0.08213917
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.62196396
 Nuclear energy                         0.00000000
 Kinetic energy                        37.80233750
 One electron energy                  -50.20671757
 Two electron energy                   12.50261445
 Virial quotient                       -0.99740137
 Correlation energy                    -0.08213917
 !MRCI STATE 6.1 Energy               -37.704103125877

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.70796963 (Davidson, fixed reference)
 Cluster corrected energies           -37.70795481 (Davidson, relaxed reference)
 Cluster corrected energies           -37.70796963 (Davidson, rotated reference)

 Cluster corrected energies           -37.70603531 (Pople, fixed reference)
 Cluster corrected energies           -37.70602791 (Pople, relaxed reference)
 Cluster corrected energies           -37.70603531 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       11.73       700     1000      520     2100     2140     5203     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        14.92      6.23      3.41      1.20      0.83      3.03
 REAL TIME  *        16.93 SEC
 DISK USED  *        44.99 MB (local),      462.33 MB (total)
 SF USED    *        62.09 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =       -37.76033882  AU                              
 SETTING HLSDIAG(5)     =       -37.76033881  AU                              
 SETTING HLSDIAG(6)     =       -37.76033881  AU                              
 SETTING HLSDIAG(7)     =       -37.76033876  AU                              
 SETTING HLSDIAG(8)     =       -37.76033875  AU                              
 SETTING HLSDIAG(9)     =       -37.70796963  AU                              


        HLSDIAG
    -37.80519954
    -37.80519954
    -37.80519954
    -37.76033882
    -37.76033881
    -37.76033881
    -37.76033876
    -37.76033875
    -37.70796963
                                                  


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

 Time for Seward_LS:       7.53 sec

       78212669. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    19723 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.53 sec, REAL time:      7.87 sec


 SORTLS1 read    80741269. and wrote    80741269. SO integrals in   317 records. CPU time:      0.75 sec, REAL time:      1.27 sec
 SORTLS2 read    80741269. and wrote   406960599. SO integrals in    15 records. CPU time:      1.09 sec, REAL time:      1.76 sec

 FILE SIZES: FILE 1:  1327.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1327.5 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -37.802092    -37.802092    -37.802092
 Replaced energies:    -37.805200    -37.805200    -37.805200

 Wavefunction restored from record  5200.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:    -37.755976    -37.755976    -37.755976    -37.755976    -37.755976    -37.704103
 Replaced energies:    -37.760339    -37.760339    -37.760339    -37.760339    -37.760339    -37.707970



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -37.80519954

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      -9.31       0.00       0.00       0.00      11.11
                           -0.00     -13.17      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           13.17      -0.00      -0.00      -0.00      -0.00       9.31       0.00       0.00       0.00      11.11

    3   3.1  1.0  1.0       0.00       0.00       0.00       9.31       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -9.31      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00       0.00       9.31       0.00       0.00       0.00      -0.00      -0.00      -9.31       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

    5   2.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       9.31      -0.00       0.00       0.00      -0.00      -0.00       9.31      -0.00

    6   3.1  1.0  0.0      -9.31      -0.00       0.00       0.00       0.00       0.00       9.31       0.00       0.00       0.00
                           -0.00      -9.31       0.00      -0.00      -0.00       0.00      -0.00      -9.31      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       9.31       0.00       0.00       0.00      11.11
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      13.17       0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       9.31     -13.17       0.00       0.00     -11.11

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -9.31      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -9.31       0.00      -0.00      -0.00       0.00      -0.00

   10   1.1  0.0  0.0      11.11      -0.00      -0.00       0.00       0.00       0.00      11.11      -0.00      -0.00    9845.79
                            0.00     -11.11      -0.00      -0.00       0.00       0.00      -0.00      11.11       0.00       0.00

   11   2.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00      11.10      15.71       0.00      -0.00       0.00      -0.00     -11.10      -0.00

   12   3.1  0.0  0.0       0.00       0.00     -11.10       0.00       0.00       0.00       0.00       0.00     -11.10       0.00
                           -0.00       0.00       0.00       0.00      15.72       0.00       0.00      -0.00      -0.00      -0.00

   13   4.1  0.0  0.0       0.00     -10.47      -0.00       0.00       0.00       0.00       0.00     -10.47      -0.00       0.00
                          -11.66      -0.00       0.00       0.00      -0.00       1.69      11.66       0.00      -0.00      -0.00

   14   5.1  0.0  0.0      -0.00      -7.42       0.00       0.00       0.00       0.00      -0.00      -7.42       0.00       0.00
                            5.35       0.00      -0.00      -0.00      -0.00     -18.05      -5.35      -0.00       0.00      -0.00

   15   6.1  0.0  0.0      -0.00     -17.73      -0.00       0.00       0.00       0.00      -0.00     -17.73      -0.00       0.00
                           17.74       0.00      -0.00      -0.00       0.00      25.10     -17.74      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      11.66      -5.35     -17.74

    2   2.1  1.0  1.0      -0.00       0.00     -10.47      -7.42     -17.73
                           -0.00      -0.00       0.00      -0.00      -0.00

    3   3.1  1.0  1.0      -0.00     -11.10      -0.00       0.00      -0.00
                          -11.10      -0.00      -0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          -15.71      -0.00      -0.00       0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00     -15.72       0.00       0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -1.69      18.05     -25.10

    7   1.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00     -11.66       5.35      17.74

    8   2.1  1.0 -1.0      -0.00       0.00     -10.47      -7.42     -17.73
                            0.00       0.00      -0.00       0.00       0.00

    9   3.1  1.0 -1.0      -0.00     -11.10      -0.00       0.00      -0.00
                           11.10       0.00       0.00      -0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    9845.79       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    9845.79       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    9845.80       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    9845.81       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   21339.50
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by    -37.80519954 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.002       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000     -13.173

    2    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      13.173      13.173      -0.000

    3    1  |1 1>+              0.000       0.000       0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -13.173       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000       0.000       0.002       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      13.173      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.001     -13.173      -0.000
                               -0.000     -13.173       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000     -13.173       0.002       0.000
                               -0.000     -13.173      -0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               13.173      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      13.173       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>              15.707      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000     -15.715

    2    1  |0 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      15.708       0.000      -0.000      -0.000       0.000

    3    1  |0 0>               0.000       0.000     -15.700       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      15.716       0.000      -0.000       0.000

    4    1  |0 0>               0.000     -14.803      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       1.685     -16.483      -0.000

    5    1  |0 0>              -0.000     -10.494       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     -18.052       7.569       0.000

    6    1  |0 0>              -0.000     -25.081      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      25.102      25.091       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      15.707      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000      -0.000       0.000     -14.803     -10.494     -25.081
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000     -15.700      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              13.173       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -15.708      -0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -15.716       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -1.685      18.052     -25.102

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      16.483      -7.569     -25.091

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      15.715      -0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.001       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -15.700      -0.000      -0.000       0.000       0.000

    1    1  |0 0>               0.000    9845.790       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    9845.793       0.000       0.000       0.000       0.000
                               15.700      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    9845.794       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    9845.804       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    9845.806       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   21339.500
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -37.80531998    -0.00012044      -26.43      0.00000000        0.00      0.0000
    2   -37.80525956    -0.00006002      -13.17      0.00006042       13.26      0.0016
    3   -37.80525956    -0.00006002      -13.17      0.00006042       13.26      0.0016
    4   -37.80525956    -0.00006002      -13.17      0.00006042       13.26      0.0016
    5   -37.80513975     0.00005979       13.12      0.00018023       39.56      0.0049
    6   -37.80513975     0.00005979       13.12      0.00018023       39.56      0.0049
    7   -37.80513975     0.00005979       13.12      0.00018024       39.56      0.0049
    8   -37.80513975     0.00005980       13.12      0.00018024       39.56      0.0049
    9   -37.80513975     0.00005980       13.12      0.00018024       39.56      0.0049
   10   -37.76033859     0.04486095     9845.84      0.04498139     9872.27      1.2240
   11   -37.76033858     0.04486096     9845.84      0.04498140     9872.28      1.2240
   12   -37.76033858     0.04486097     9845.84      0.04498141     9872.28      1.2240
   13   -37.76033853     0.04486101     9845.85      0.04498145     9872.29      1.2240
   14   -37.76033852     0.04486102     9845.86      0.04498146     9872.29      1.2240
   15   -37.70796922     0.09723032    21339.59      0.09735076    21366.02      2.6490

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.70708602  0.00000000  0.00000000 -0.00000000  0.70712574  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.57714487 -0.00000000  0.00000000 -0.00000000  0.78131078  0.00000003 -0.00000000  0.00000000
                          -0.01573066 -0.00000000  0.00000000  0.00000000  0.00990947  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.70709789  0.00000000 -0.00000000 -0.00000002  0.70711387  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000024  0.00000000 -0.00000000 -0.00000000  0.00000022
                          -0.00000000  0.00000000 -0.00000000 -0.70709492 -0.00000000  0.00000000 -0.00000000  0.70711684

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.70711568 -0.00000000  0.00000000 -0.00000002  0.70709608  0.00000000 -0.00000000

   3    1  |1 0>           0.01573044 -0.00000000  0.00000000 -0.00000000  0.00755645  0.00000000  0.00000000 -0.00000000
                           0.57713647 -0.00000000 -0.00000000 -0.00000000 -0.59578758 -0.00000002  0.00000000  0.00000000

   1    1  |1 1>-          0.01573007  0.00000000 -0.00000000 -0.00000000  0.00235321  0.00000000 -0.00000000  0.00000000
                           0.57712288 -0.00000000 -0.00000000  0.00000000 -0.18553894 -0.00000001 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.70712754 -0.00000000  0.00000000 -0.00000000  0.70708422  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000024  0.00000000 -0.00000000 -0.00000000  0.00000022
                          -0.00000000 -0.00000000  0.00000000  0.70711865 -0.00000000  0.00000000 -0.00000000  0.70709311

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000064  0.00000000 -0.00000000  0.00000000 -0.00225965 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000053 -0.00000000  0.00000000 -0.00000000  0.00225874
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000117 -0.00000000  0.00000000 -0.00000000  0.00225919  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000032 -0.00000000  0.00000000 -0.00000000  0.00138513  0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00001757  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000062 -0.00000000  0.00000000  0.00000000  0.00178483  0.00000000 -0.00000000 -0.00000000
                          -0.00000002 -0.00000000  0.00000000  0.00000000  0.00002264  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00203331 -0.00000000 -0.00000000  0.00000000 -0.00000072 -0.00000000  0.00000000  0.00000000
                          -0.00005542  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.00159741 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.23668944  0.00000000 -0.00000000  0.00000000 -0.00149361 -0.00108370 -0.00117376
                           0.00921661  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00001502

   3    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00159669 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00159757  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00159830 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>          -0.02172155 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00001503
                          -0.55782569 -0.00000000 -0.00000000 -0.00000000 -0.00019155  0.00183393 -0.00117478

   1    1  |1 1>-          0.03093902 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00001503
                           0.79453729  0.00000000  0.00000000  0.00000000  0.00168468 -0.00075132 -0.00117427

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00159822 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00159676  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |0 0>          -0.00000000  0.99999745  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.99999745 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.99999745  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00178383  0.00000000  0.00000000 -0.00000000  0.99993704  0.01099159 -0.00000000
                           0.00006946  0.00000000  0.00000000 -0.00000000  0.00000293 -0.00000009  0.00000000

   5    1  |0 0>           0.00138316 -0.00000000 -0.00000000 -0.00000000 -0.01099159  0.99993704 -0.00000000
                          -0.00005386 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000829  0.00000000

   6    1  |0 0>          -0.00000014 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.99991605
                           0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.01279639


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -37.80531998     -0.00012044      -26.43      0.00000000        0.00      0.0000
     2   1    -37.80525956     -0.00006002      -13.17      0.00006042       13.26      0.0016
     3   1    -37.80525956     -0.00006002      -13.17      0.00006042       13.26      0.0016
     4   1    -37.80525956     -0.00006002      -13.17      0.00006042       13.26      0.0016
     5   1    -37.80513975      0.00005979       13.12      0.00018023       39.56      0.0049
     6   1    -37.80513975      0.00005979       13.12      0.00018023       39.56      0.0049
     7   1    -37.80513975      0.00005979       13.12      0.00018024       39.56      0.0049
     8   1    -37.80513975      0.00005980       13.12      0.00018024       39.56      0.0049
     9   1    -37.80513975      0.00005980       13.12      0.00018024       39.56      0.0049
    10   1    -37.76033859      0.04486095     9845.84      0.04498139     9872.27      1.2240
    11   1    -37.76033858      0.04486096     9845.84      0.04498140     9872.28      1.2240
    12   1    -37.76033858      0.04486097     9845.84      0.04498141     9872.28      1.2240
    13   1    -37.76033853      0.04486101     9845.85      0.04498145     9872.29      1.2240
    14   1    -37.76033852      0.04486102     9845.86      0.04498146     9872.29      1.2240
    15   1    -37.70796922      0.09723032    21339.59      0.09735076    21366.02      2.6490

 E0 =    -37.80519954 is the energy of the lowest zeroth-order state
 E1 =    -37.80531998 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.70708602  0.00000000  0.00000000 -0.00000000  0.70712574  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.57714487 -0.00000000  0.00000000 -0.00000000  0.78131078  0.00000003 -0.00000000  0.00000000
                               -0.01573066 -0.00000000  0.00000000  0.00000000  0.00990947  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.70709789  0.00000000 -0.00000000 -0.00000002  0.70711387  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000024  0.00000000 -0.00000000 -0.00000000  0.00000022
                               -0.00000000  0.00000000 -0.00000000 -0.70709492 -0.00000000  0.00000000 -0.00000000  0.70711684

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.70711568 -0.00000000  0.00000000 -0.00000002  0.70709608  0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.01573044 -0.00000000  0.00000000 -0.00000000  0.00755645  0.00000000  0.00000000 -0.00000000
                                0.57713647 -0.00000000 -0.00000000 -0.00000000 -0.59578758 -0.00000002  0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.01573007  0.00000000 -0.00000000 -0.00000000  0.00235321  0.00000000 -0.00000000  0.00000000
                                0.57712288 -0.00000000 -0.00000000  0.00000000 -0.18553894 -0.00000001 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.70712754 -0.00000000  0.00000000 -0.00000000  0.70708422  0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000024  0.00000000 -0.00000000 -0.00000000  0.00000022
                               -0.00000000 -0.00000000  0.00000000  0.70711865 -0.00000000  0.00000000 -0.00000000  0.70709311

 10  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000064  0.00000000 -0.00000000  0.00000000 -0.00225965 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000053 -0.00000000  0.00000000 -0.00000000  0.00225874
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000117 -0.00000000  0.00000000 -0.00000000  0.00225919  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000032 -0.00000000  0.00000000 -0.00000000  0.00138513  0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00001757  0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000062 -0.00000000  0.00000000  0.00000000  0.00178483  0.00000000 -0.00000000 -0.00000000
                               -0.00000002 -0.00000000  0.00000000  0.00000000  0.00002264  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00203331 -0.00000000 -0.00000000  0.00000000 -0.00000072 -0.00000000  0.00000000  0.00000000
                               -0.00005542  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.00159741 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.23668944  0.00000000 -0.00000000  0.00000000 -0.00149361 -0.00108370 -0.00117376
                                0.00921661  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00001502

  3  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00159669 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00159757  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00159830 -0.00000000 -0.00000000  0.00000000

  6  1     3    1  |1 0>       -0.02172155 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00001503
                               -0.55782569 -0.00000000 -0.00000000 -0.00000000 -0.00019155  0.00183393 -0.00117478

  7  1     1    1  |1 1>-       0.03093902 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00001503
                                0.79453729  0.00000000  0.00000000  0.00000000  0.00168468 -0.00075132 -0.00117427

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00159822 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00159676  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.99999745  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000  0.99999745 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.99999745  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00178383  0.00000000  0.00000000 -0.00000000  0.99993704  0.01099159 -0.00000000
                                0.00006946  0.00000000  0.00000000 -0.00000000  0.00000293 -0.00000009  0.00000000

 14  1     5    1  |0 0>        0.00138316 -0.00000000 -0.00000000 -0.00000000 -0.01099159  0.99993704 -0.00000000
                               -0.00005386 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000829  0.00000000

 15  1     6    1  |0 0>       -0.00000014 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.99991605
                                0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.01279639



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  2  1     2    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   61.05%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  6  1     3    1  |1 0>         33.33%    0.00%    0.00%    0.00%   35.50%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-        33.33%    0.00%    0.00%    0.00%    3.44%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         5.61%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         31.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-        63.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.99%    0.01%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%   99.99%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1266.04       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       11.73       700     1000      520     2100     2140     5203     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        27.67     12.74      6.23      3.41      1.20      0.83      3.03
 REAL TIME  *        33.75 SEC
 DISK USED  *        45.18 MB (local),        4.55 GB (total)
 SF USED    *         1.24 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=    -37.707969224124

              CI              CI           MULTI         RHF-SCF
    -37.70410313    -37.80209184    -37.62196396    -37.70363213
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
