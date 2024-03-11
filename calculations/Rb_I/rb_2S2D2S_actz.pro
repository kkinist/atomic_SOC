
 Working directory              : /wrk/irikura/molpro.LKDrXwFtMV/
 Global scratch directory       : /wrk/irikura/molpro.LKDrXwFtMV/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.LKDrXwFtMV/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Rb SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Rb};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=36,sym=1,spin=0}
 
 {multi
     closed,9,9
     occ,16,9
     wf,nelec=37,sym=1,spin=1;state,7;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=1,spin=1;state,7; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 13:58:58  
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

 Library entry RB     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry RB     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry RB     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry RB     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  RB     37.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   37
 NUMBER OF PRIMITIVE AOS:         241
 NUMBER OF SYMMETRY AOS:          214
 NUMBER OF CONTRACTIONS:           93   (   45Ag  +   48Au  )
 NUMBER OF INNER CORE ORBITALS:    14   (    8Ag  +    6Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     13.369 MB (compressed) written to integral file ( 15.5%)

     Node minimum: 0.262 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     407394.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     407394      RECORD LENGTH: 524288

 Memory used in sort:       0.96 MW

 SORT1 READ    10953812. AND WROTE       86621. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1035157. AND WROTE     4879686. INTEGRALS IN     60 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      405922.  Node maximum:      407394. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.128E-03 0.969E-03 0.125E-02 0.125E-02 0.125E-02 0.125E-02 0.125E-02 0.146E-01
         2 0.435E-02 0.435E-02 0.435E-02 0.129E-01 0.129E-01 0.129E-01 0.100E+00 0.100E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.66      2.45
 REAL TIME  *         3.34 SEC
 DISK USED  *        29.57 MB (local),      408.72 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   10   9

 Initial occupancy:   9   9

 NELEC=   36   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2978.94068653   -2978.94068653     0.00D+00     0.18D+00     0     0       0.00      0.00    start
   2    -2978.94105295      -0.00036642     0.56D-03     0.14D-02     1     0       0.01      0.01    diag
   3    -2978.94106823      -0.00001528     0.22D-03     0.44D-03     2     0       0.00      0.01    diag
   4    -2978.94106942      -0.00000119     0.40D-04     0.14D-03     3     0       0.00      0.01    diag
   5    -2978.94106943      -0.00000001     0.37D-05     0.11D-04     4     0       0.01      0.02    diag
   6    -2978.94106943      -0.00000000     0.21D-06     0.65D-06     5     0       0.00      0.02    diag
   7    -2978.94106943      -0.00000000     0.91D-08     0.32D-07     0     0       0.00      0.02    diag

 Final occupancy:   9   9

 !RHF STATE 1.1 Energy              -2978.941069427133
  RHF One-electron energy           -4124.237144168438
  RHF Two-electron energy            1145.296074741305
  RHF Kinetic energy                 3225.085098339908
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.923678284012

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -561.95785     1  1  s    0.99949
    2.1     2.00000   -77.67049     1  2  s    1.00580
    3.1     2.00000   -12.75840     1  3  s    0.97076
    4.1     2.00000    -4.84483     1  1  d1+  0.89834    1  1  d1-  0.43867
    5.1     2.00000    -4.84483     1  1  d1+ -0.43873    1  1  d1-  0.89866
    6.1     2.00000    -4.84483     1  1  d2+  0.97559
    7.1     2.00000    -4.84483     1  1  d2-  0.97604
    8.1     2.00000    -4.84483     1  1  d0   0.99988
    9.1     2.00000    -1.76659     1  4  s    1.03100
    1.2     2.00000   -68.68916     1  1  px   0.99931
    2.2     2.00000   -68.68916     1  1  py   0.99876
    3.2     2.00000   -68.68916     1  1  pz   0.99943
    4.2     2.00000    -9.78310     1  2  py   1.00011
    5.2     2.00000    -9.78310     1  2  px   1.00011
    6.2     2.00000    -9.78310     1  2  pz   1.00012
    7.2     2.00000    -1.00941     1  3  py   1.01001
    8.2     2.00000    -1.00941     1  3  px   1.01001
    9.2     2.00000    -1.00941     1  3  pz   1.01001


 HOMO      9.2    -1.009413 =     -27.4675eV
 LUMO     10.1    -0.139260 =      -3.7894eV
 LUMO-HOMO         0.870153 =      23.6781eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.46       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.80      0.14      2.45
 REAL TIME  *         4.28 SEC
 DISK USED  *        30.00 MB (local),      413.93 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  18 (    9    9)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:      68 (   29   39)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               7   (7 determinants, 7 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.342D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.332D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.214D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.194D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.224D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.445D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.827D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.279D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.325D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.266D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 5 3 2 1 1   3 5 6 4 2 1 4 6 3 5   2 1 5 3 4 6 2 4 6 5   3 2 1 4 6 5 3 2 1 4
                                        6 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.397D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.659D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.356D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.392D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.333D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.187D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.895D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.826D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.671D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 2 1 3 2   1 3 2 1 3 2 1 3 6 8  10 9 7 5 4 2 1 3 9 7  10 8 6 5 4 2 1 3 5 4
                                        9 7 810 6 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  878  ( 63 closed/active, 612 closed/virtual, 0 active/active, 203 active/virtual )
 Total number of variables:    927
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0  -2979.01189690   -2979.01196098   -0.00006408    0.01164781 0.00000043 0.00000000  0.12E-01      0.37
   2    6    6    0  -2979.01196100   -2979.01196100   -0.00000000    0.00001045 0.00000000 0.00000000  0.12E-03      0.68

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.26E-08)
                       Final energy:  -2979.01196100
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -2979.080562948535
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.33931782
 One electron energy                         -4131.91070811
 Two electron energy                          1152.83014516
 Virial ratio                                    1.92364873
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -2979.000693382456
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.12997559
 One electron energy                         -4129.12383583
 Two electron energy                          1150.12314245
 Virial ratio                                    1.92368392
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                     -2979.000693382456
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.12997559
 One electron energy                         -4129.12383583
 Two electron energy                          1150.12314245
 Virial ratio                                    1.92368392
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                     -2979.000693382456
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.12997559
 One electron energy                         -4129.12383583
 Two electron energy                          1150.12314245
 Virial ratio                                    1.92368392
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                     -2979.000693382456
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.12997559
 One electron energy                         -4129.12383583
 Two electron energy                          1150.12314245
 Virial ratio                                    1.92368392
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                     -2979.000693382400
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.12997559
 One electron energy                         -4129.12383581
 Two electron energy                          1150.12314242
 Virial ratio                                    1.92368392
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                     -2978.999697120720
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.12006228
 One electron energy                         -4127.70513067
 Two electron energy                          1148.70543355
 Virial ratio                                    1.92368645
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     0.997435458155
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000126452211
 !MCSCF expec                      <4.1|LXLX|4.1>     1.000955287582
 !MCSCF expec                      <5.1|LXLX|5.1>     3.998804585307
 !MCSCF expec                      <6.1|LXLX|6.1>     3.002668462401
 !MCSCF expec                      <7.1|LXLX|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     1.002693211707
 !MCSCF expec                      <3.1|LYLY|3.1>     1.000170763731
 !MCSCF expec                      <4.1|LYLY|4.1>     3.998854151990
 !MCSCF expec                      <5.1|LYLY|5.1>     1.000961000918
 !MCSCF expec                      <6.1|LYLY|6.1>     2.997329161583
 !MCSCF expec                      <7.1|LYLY|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     3.999871330138
 !MCSCF expec                      <3.1|LZLZ|3.1>     3.999702784058
 !MCSCF expec                      <4.1|LZLZ|4.1>     1.000190560428
 !MCSCF expec                      <5.1|LZLZ|5.1>     1.000234413775
 !MCSCF expec                      <6.1|LZLZ|6.1>     0.000002376016
 !MCSCF expec                      <7.1|LZLZ|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 6 2 4 3 1 5   4 1 1 2 6 3 5 6 2 4   3 1 5 4 2 6 3 5 6 4   3 2 1 6 4 3 5 2 1 6
                                        3 4 5 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 110 5   6 9 7 4 8 2 3 1 5 8   6 9 710 4 2 3 1 5 8
                                        6 9 7 410 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -561.81866     1  1  s    0.99949
    2.1     2.00000   -77.53117     1  2  s    1.00580
    3.1     2.00000   -12.61914     1  3  s    0.97076
    4.1     2.00000    -4.70553     1  1  d2+  1.00006
    5.1     2.00000    -4.70553     1  1  d1-  1.00006
    6.1     2.00000    -4.70553     1  1  d0   1.00006
    7.1     2.00000    -4.70553     1  1  d1+  1.00006
    8.1     2.00000    -4.70553     1  1  d2-  1.00006
    9.1     2.00000    -1.62747     1  4  s    1.02994
   10.1     0.14286     0.03005     1  2  d2+  0.97451
   11.1     0.14286     0.03005     1  2  d1+  0.97451
   12.1     0.14286    -0.03334     1  5  s    1.01560
   13.1     0.14286     0.01362     1  5  s    0.84176    1  7  s   -0.42132    1 10  s    1.76287
   14.1     0.14286     0.03005     1  2  d0   0.97451
   15.1     0.14286     0.03005     1  2  d1-  0.97451
   16.1     0.14285     0.03005     1  2  d2-  0.97451
    1.2     2.00000   -68.54980     1  1  py   1.00000
    2.2     2.00000   -68.54980     1  1  pz   1.00000
    3.2     2.00000   -68.54980     1  1  px   1.00000
    4.2     2.00000    -9.64375     1  2  py   1.00010
    5.2     2.00000    -9.64375     1  2  pz   1.00010
    6.2     2.00000    -9.64375     1  2  px   1.00010
    7.2     2.00000    -0.87070     1  3  py   1.00576
    8.2     2.00000    -0.87070     1  3  pz   1.00576
    9.2     2.00000    -0.87070     1  3  px   1.00576
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 0000a00       -0.00000000     -0.00076993     -0.00002853      0.00000083      0.00002144      0.99999970      0.00000016
 00a0000        0.99999852      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00171974
 000a000        0.00171974      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000016      0.99999852
 0a00000       -0.00000000     -0.00296996     -0.00746912      0.99980903      0.01781254     -0.00000371      0.00000000
 00000a0        0.00000000      0.00576879     -0.00657975     -0.01784444      0.99980248     -0.00001717     -0.00000000
 a000000       -0.00000000      0.99942246      0.03336228      0.00331582     -0.00548784      0.00077055      0.00000000
 000000a       -0.00000000     -0.03334748      0.99939375      0.00724405      0.00689877      0.00000268      0.00000000
 
 Energy:    -2979.08056295  -2979.00069338  -2979.00069338  -2979.00069338  -2979.00069338  -2979.00069338  -2978.99969712
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       45.54       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.73       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.50      0.69      0.14      2.45
 REAL TIME  *         5.22 SEC
 DISK USED  *        46.36 MB (local),      610.19 MB (total)
 SF USED    *        41.27 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2979.080563  -0.0
    -2979.000693   6.0
    -2979.000693   6.0
    -2979.000693   6.0
    -2979.000693   6.0
    -2979.000693   6.0
    -2978.999697   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 37
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:        7 conf        7 CSFs
 N elec internal:     7378 conf    22302 CSFs
 N-1 el internal:     2640 conf    10102 CSFs
 N-2 el internal:      650 conf     2938 CSFs

 Number of electrons in valence space:                     27
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:  13 (   7   6 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:      68 (  29  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.08 sec, npass=  1  Memory used:   1.10 MW


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2979.08056295
     2     -2979.00069338
     3     -2979.00069338
     4     -2979.00069338
     5     -2979.00069338
     6     -2979.00069338
     7     -2978.99969712

 Number of blocks in overlap matrix:  1209   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:    1209
 Number of N-1 electron functions:   10102

 Number of internal configurations:                11130
 Number of singly external configurations:        343778
 Number of doubly external configurations:       1400923
 Total number of contracted configurations:      1755831
 Total number of uncontracted configurations:    3742018

 Diagonal Coupling coefficients finished.               Storage:   7114546 words, CPU-Time:      3.33 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1012243 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2979.08056295    -0.00000000    -0.27316021  0.50D-02  0.65D-01     5.13
    1     2     2     1.00000000     0.00000000 -2979.00069338     0.00000000    -0.26218460  0.40D-02  0.59D-01     5.13
    1     3     3     1.00000000     0.00000000 -2979.00069338     0.00000000    -0.26219148  0.40D-02  0.59D-01     5.13
    1     4     4     1.00000000     0.00000000 -2979.00069338     0.00000000    -0.26219513  0.40D-02  0.59D-01     5.13
    1     5     5     1.00000000     0.00000000 -2979.00069338     0.00000000    -0.26218978  0.40D-02  0.59D-01     5.13
    1     6     6     1.00000000     0.00000000 -2979.00069338     0.00000000    -0.26219202  0.40D-02  0.59D-01     5.13
    1     7     7     1.00000000     0.00000000 -2978.99969712    -0.00000000    -0.26065809  0.40D-02  0.58D-01     5.13
    2     1     1     1.05842921    -0.24856528 -2979.32912823    -0.24856528    -0.00356414  0.55D-03  0.56D-03    43.51
    2     2     2     1.05373776    -0.24200069 -2979.24269407    -0.24200069    -0.00325408  0.38D-03  0.47D-03    43.51
    2     3     3     1.05373648    -0.24200045 -2979.24269384    -0.24200045    -0.00325384  0.38D-03  0.47D-03    43.51
    2     4     4     1.05373833    -0.24199984 -2979.24269322    -0.24199984    -0.00325444  0.38D-03  0.47D-03    43.51
    2     5     5     1.05373591    -0.24199967 -2979.24269305    -0.24199967    -0.00325482  0.38D-03  0.47D-03    43.51
    2     6     6     1.05373787    -0.24199893 -2979.24269231    -0.24199893    -0.00325522  0.38D-03  0.47D-03    43.51
    2     7     7     1.05273858    -0.24112327 -2979.24082040    -0.24112327    -0.00323657  0.32D-03  0.45D-03    43.51
    3     1     1     1.06083774    -0.25222347 -2979.33278641    -0.00365818    -0.00009627  0.14D-04  0.19D-04    81.64
    3     2     2     1.05675688    -0.24530883 -2979.24600222    -0.00330814    -0.00009495  0.14D-04  0.17D-04    81.64
    3     3     3     1.05675632    -0.24530878 -2979.24600217    -0.00330833    -0.00009499  0.14D-04  0.17D-04    81.64
    3     4     4     1.05675602    -0.24530872 -2979.24600210    -0.00330888    -0.00009502  0.14D-04  0.17D-04    81.64
    3     5     5     1.05675601    -0.24530871 -2979.24600209    -0.00330904    -0.00009501  0.14D-04  0.17D-04    81.64
    3     6     6     1.05675585    -0.24530869 -2979.24600207    -0.00330976    -0.00009505  0.14D-04  0.17D-04    81.64
    3     7     7     1.05585191    -0.24439956 -2979.24409668    -0.00327629    -0.00009277  0.97D-05  0.17D-04    81.64
    4     1     1     1.06121640    -0.25233114 -2979.33289408    -0.00010767    -0.00000456  0.14D-05  0.66D-06   118.83
    4     2     2     1.05696541    -0.24541480 -2979.24610818    -0.00010596    -0.00000509  0.23D-05  0.74D-06   118.83
    4     3     3     1.05696526    -0.24541479 -2979.24610817    -0.00010601    -0.00000510  0.23D-05  0.74D-06   118.83
    4     4     4     1.05696494    -0.24541478 -2979.24610816    -0.00010606    -0.00000511  0.23D-05  0.74D-06   118.83
    4     5     5     1.05696493    -0.24541478 -2979.24610816    -0.00010607    -0.00000511  0.23D-05  0.75D-06   118.83
    4     6     6     1.05696491    -0.24541477 -2979.24610816    -0.00010608    -0.00000511  0.23D-05  0.75D-06   118.83
    4     7     7     1.05600085    -0.24450151 -2979.24419863    -0.00010195    -0.00000406  0.10D-05  0.65D-06   118.83
    5     1     1     1.06145162    -0.25233633 -2979.33289928    -0.00000519    -0.00000014  0.42D-07  0.21D-07   156.08
    5     2     2     1.05718472    -0.24542103 -2979.24611441    -0.00000623    -0.00000027  0.18D-06  0.34D-07   156.08
    5     3     3     1.05718472    -0.24542103 -2979.24611441    -0.00000624    -0.00000027  0.18D-06  0.34D-07   156.08
    5     4     4     1.05718473    -0.24542103 -2979.24611441    -0.00000625    -0.00000027  0.18D-06  0.34D-07   156.08
    5     5     5     1.05718473    -0.24542103 -2979.24611441    -0.00000625    -0.00000027  0.18D-06  0.34D-07   156.08
    5     6     6     1.05718471    -0.24542103 -2979.24611441    -0.00000625    -0.00000027  0.18D-06  0.34D-07   156.08
    5     7     7     1.05614687    -0.24450621 -2979.24420333    -0.00000470    -0.00000013  0.39D-07  0.19D-07   156.08
    6     1     1     1.06146140    -0.25233648 -2979.33289943    -0.00000015    -0.00000000  0.89D-09  0.11D-08   193.00
    6     2     2     1.05720851    -0.24542137 -2979.24611475    -0.00000034    -0.00000002  0.48D-08  0.41D-08   193.00
    6     3     3     1.05720852    -0.24542137 -2979.24611475    -0.00000034    -0.00000002  0.49D-08  0.41D-08   193.00
    6     4     4     1.05720852    -0.24542137 -2979.24611475    -0.00000034    -0.00000002  0.49D-08  0.41D-08   193.00
    6     5     5     1.05720851    -0.24542137 -2979.24611475    -0.00000034    -0.00000002  0.49D-08  0.41D-08   193.00
    6     6     6     1.05720852    -0.24542137 -2979.24611475    -0.00000034    -0.00000002  0.49D-08  0.42D-08   193.00
    6     7     7     1.05615662    -0.24450635 -2979.24420347    -0.00000014    -0.00000000  0.14D-08  0.93D-09   193.00


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   6.8%
 S   2.5%  30.0%
 P   0.8%  34.9%  10.5%

 Initialization:   1.9%
 Other:           12.7%

 Total CPU:      193.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222/000000222222          -0.0000000   0.9725254  -0.0000000  -0.0000000   0.0000275   0.0000000  -0.0000000
 22222220000/00222222          -0.0000000  -0.0000275  -0.0000000   0.0000000   0.9725254   0.0000000   0.0000001
 22222220/00000222222          -0.0000000   0.0000000   0.9725254   0.0000000  -0.0000000  -0.0000000   0.0000000
 2222222000000/222222          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.9725254   0.0000000
 222222200000/0222222           0.0000000   0.0000000   0.0000000   0.9725254   0.0000000  -0.0000000   0.0000000
 2222222000/000222222           0.0470004  -0.0000000   0.0000000  -0.0000000  -0.0000001   0.0000000   0.9717428
 222222200/0000222222           0.9694386  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0495362

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969518   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.045333
 2          -0.000000    0.972525    0.000000    0.000000    0.000000   -0.000027   -0.000000
 3          -0.000000   -0.000000    0.000000    0.000000    0.972525   -0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.972525    0.000000    0.000000   -0.000000
 5           0.000000    0.000027   -0.000000    0.000000   -0.000000    0.972525    0.000000
 6           0.000000    0.000000    0.972525   -0.000000   -0.000000    0.000000    0.000000
 7          -0.047865   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.971827

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970576   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.001209
 2          -0.000000    0.972525    0.000000    0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.972525    0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.972525   -0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.972525    0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.972525    0.000000
 7          -0.001209   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.973004


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96951797 (fixed)   0.97057725 (relaxed)   0.97057649 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008349   -0.00016625   -0.21385714
 Singles      0.00519002   -0.01026198   -0.01090087
 Pairs        0.05627651   -0.01507552   -0.02757847
 Total        1.06155002   -0.02550375   -0.25233648
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.08037701
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.30350089
 One electron energy                -4130.58010720
 Two electron energy                 1151.24720777
 Virial quotient                       -0.92402372
 Correlation energy                    -0.25252242
 !MRCI STATE 1.1 Energy             -2979.332899431416

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.34844219 (Davidson, fixed reference)
 Cluster corrected energies         -2979.34844177 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.34844219 (Davidson, rotated reference)

 Cluster corrected energies         -2979.34803033 (Pople, fixed reference)
 Cluster corrected energies         -2979.34802990 (Pople, relaxed reference)
 Cluster corrected energies         -2979.34803033 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97252539 (fixed)   0.97252539 (relaxed)   0.97252539 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008624   -0.00017181   -0.22307394
 Singles      0.00415116   -0.00958653   -0.01003009
 Pairs        0.05306228   -0.00000000   -0.01231734
 Total        1.05729969   -0.00975833   -0.24542137
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.00069338
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.17479326
 One electron energy                -4127.90796240
 Two electron energy                 1148.66184765
 Virial quotient                       -0.92403368
 Correlation energy                    -0.24542137
 !MRCI STATE 2.1 Energy             -2979.246114748507

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.26017732 (Davidson, fixed reference)
 Cluster corrected energies         -2979.26017732 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.26017732 (Davidson, rotated reference)

 Cluster corrected energies         -2979.25975351 (Pople, fixed reference)
 Cluster corrected energies         -2979.25975351 (Pople, relaxed reference)
 Cluster corrected energies         -2979.25975351 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97252539 (fixed)   0.97252539 (relaxed)   0.97252539 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008624   -0.00017181   -0.22307394
 Singles      0.00415116   -0.00958653   -0.01003008
 Pairs        0.05306229   -0.00000000   -0.01231735
 Total        1.05729969   -0.00975833   -0.24542137
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.00069338
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.17479016
 One electron energy                -4127.90795971
 Two electron energy                 1148.66184496
 Virial quotient                       -0.92403369
 Correlation energy                    -0.24542137
 !MRCI STATE 3.1 Energy             -2979.246114748497

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.26017732 (Davidson, fixed reference)
 Cluster corrected energies         -2979.26017732 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.26017732 (Davidson, rotated reference)

 Cluster corrected energies         -2979.25975351 (Pople, fixed reference)
 Cluster corrected energies         -2979.25975351 (Pople, relaxed reference)
 Cluster corrected energies         -2979.25975351 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.97252539 (fixed)   0.97252539 (relaxed)   0.97252539 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008624   -0.00017181   -0.22307394
 Singles      0.00415117   -0.00958653   -0.01003008
 Pairs        0.05306229   -0.00000000   -0.01231735
 Total        1.05729969   -0.00975833   -0.24542137
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.00069338
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.17479079
 One electron energy                -4127.90796028
 Two electron energy                 1148.66184553
 Virial quotient                       -0.92403369
 Correlation energy                    -0.24542137
 !MRCI STATE 4.1 Energy             -2979.246114748493

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.26017732 (Davidson, fixed reference)
 Cluster corrected energies         -2979.26017732 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.26017732 (Davidson, rotated reference)

 Cluster corrected energies         -2979.25975351 (Pople, fixed reference)
 Cluster corrected energies         -2979.25975351 (Pople, relaxed reference)
 Cluster corrected energies         -2979.25975351 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97252539 (fixed)   0.97252539 (relaxed)   0.97252539 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008624   -0.00017181   -0.22307391
 Singles      0.00415116   -0.00958653   -0.01003009
 Pairs        0.05306228   -0.00000002   -0.01231737
 Total        1.05729969   -0.00975836   -0.24542137
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.00069338
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.17479503
 One electron energy                -4127.90796379
 Two electron energy                 1148.66184904
 Virial quotient                       -0.92403368
 Correlation energy                    -0.24542137
 !MRCI STATE 5.1 Energy             -2979.246114748430

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.26017732 (Davidson, fixed reference)
 Cluster corrected energies         -2979.26017732 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.26017732 (Davidson, rotated reference)

 Cluster corrected energies         -2979.25975351 (Pople, fixed reference)
 Cluster corrected energies         -2979.25975351 (Pople, relaxed reference)
 Cluster corrected energies         -2979.25975351 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97252539 (fixed)   0.97252539 (relaxed)   0.97252539 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008624   -0.00017181   -0.22307393
 Singles      0.00415117   -0.00958653   -0.01003008
 Pairs        0.05306229    0.00000000   -0.01231735
 Total        1.05729969   -0.00975834   -0.24542137
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.00069338
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.17479048
 One electron energy                -4127.90796007
 Two electron energy                 1148.66184532
 Virial quotient                       -0.92403369
 Correlation energy                    -0.24542137
 !MRCI STATE 6.1 Energy             -2979.246114748428

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.26017732 (Davidson, fixed reference)
 Cluster corrected energies         -2979.26017732 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.26017732 (Davidson, rotated reference)

 Cluster corrected energies         -2979.25975351 (Pople, fixed reference)
 Cluster corrected energies         -2979.25975351 (Pople, relaxed reference)
 Cluster corrected energies         -2979.25975351 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.97182658 (fixed)   0.97300460 (relaxed)   0.97300385 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009799   -0.00019731   -0.00047380
 Singles      0.00403078   -0.00988916   -0.01029513
 Pairs        0.05213135   -0.23414069   -0.23373743
 Total        1.05626011   -0.24422717   -0.24450635
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2978.99988306
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.17247920
 One electron energy                -4126.36077389
 Two electron energy                 1147.11657042
 Virial quotient                       -0.92403376
 Correlation energy                    -0.24432041
 !MRCI STATE 7.1 Energy             -2979.244203470045

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.25794896 (Davidson, fixed reference)
 Cluster corrected energies         -2979.25794857 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.25794896 (Davidson, rotated reference)

 Cluster corrected energies         -2979.25752253 (Pople, fixed reference)
 Cluster corrected energies         -2979.25752212 (Pople, relaxed reference)
 Cluster corrected energies         -2979.25752253 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       45.54       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       96.94       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       227.20    223.69      0.69      0.14      2.45
 REAL TIME  *       234.59 SEC
 DISK USED  *       142.57 MB (local),        1.72 GB (total)
 SF USED    *       851.12 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2979.34844219  AU                              
 SETTING HLSDIAG(2)     =     -2979.26017732  AU                              
 SETTING HLSDIAG(3)     =     -2979.26017732  AU                              
 SETTING HLSDIAG(4)     =     -2979.26017732  AU                              
 SETTING HLSDIAG(5)     =     -2979.26017732  AU                              
 SETTING HLSDIAG(6)     =     -2979.26017732  AU                              
 SETTING HLSDIAG(7)     =     -2979.25794896  AU                              


         HLSDIAG
    -2979.348442
    -2979.260177
    -2979.260177
    -2979.260177
    -2979.260177
    -2979.260177
    -2979.257949
                                                  


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

 Time for Seward_LS:      26.31 sec

        5869094. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1437 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     26.31 sec, REAL time:     26.42 sec


 SORTLS1 read     5877866. and wrote     5877866. SO integrals in    36 records. CPU time:      0.05 sec, REAL time:      0.08 sec
 SORTLS2 read     5877866. and wrote    28662363. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.05 sec

 FILE SIZES: FILE 1:   142.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   142.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:  -2979.332899  -2979.246115  -2979.246115  -2979.246115  -2979.246115  -2979.246115  -2979.244203
 Replaced energies:  -2979.348442  -2979.260177  -2979.260177  -2979.260177  -2979.260177  -2979.260177  -2979.257949



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2979.34844219

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.5  0.5       0.00   19371.90       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.07
                            0.00      -0.00      -0.00      -0.00       0.00      -0.13       0.00      -0.00      -0.00       0.00

    3   3.1  0.5  0.5       0.00       0.00   19371.90       0.00       0.00       0.00       0.00       0.00      -0.07       0.00
                            0.00       0.00       0.00      -0.07       0.00      -0.00       0.00      -0.00      -0.00       0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   19371.90       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.07       0.00       0.00       0.00      -0.00       0.00      -0.07      -0.00

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   19371.90       0.00       0.00       0.00       0.00      -0.11
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   19371.90       0.00       0.00      -0.00       0.00
                           -0.00       0.13       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.07

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   19860.97       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    9   2.1  0.5 -0.5       0.00       0.00      -0.07       0.00       0.00      -0.00       0.00       0.00   19371.90       0.00
                           -0.00       0.00       0.00       0.07      -0.00       0.00      -0.00      -0.00       0.00       0.00

   10   3.1  0.5 -0.5      -0.00       0.07       0.00      -0.00      -0.11       0.00      -0.00       0.00       0.00   19371.90
                           -0.00      -0.00      -0.00       0.00      -0.00       0.07      -0.00      -0.00      -0.00      -0.00

   11   4.1  0.5 -0.5      -0.00      -0.00       0.00       0.00      -0.00       0.07       0.00       0.00       0.00       0.00
                            0.00      -0.07      -0.00       0.00      -0.11       0.00      -0.00       0.00      -0.00      -0.07

   12   5.1  0.5 -0.5      -0.00      -0.00       0.11       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.11      -0.00       0.00      -0.00      -0.00       0.00       0.00

   13   6.1  0.5 -0.5      -0.00       0.00      -0.00      -0.07      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.07      -0.00      -0.00      -0.00      -0.00       0.00      -0.13      -0.00

   14   7.1  0.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00

    2   2.1  0.5  0.5      -0.00      -0.00       0.00      -0.00
                            0.07      -0.00       0.00      -0.00

    3   3.1  0.5  0.5       0.00       0.11      -0.00       0.00
                            0.00      -0.00       0.07      -0.00

    4   4.1  0.5  0.5       0.00       0.00      -0.07      -0.00
                           -0.00      -0.11       0.00      -0.00

    5   5.1  0.5  0.5      -0.00      -0.00      -0.00       0.00
                            0.11       0.00       0.00      -0.00

    6   6.1  0.5  0.5       0.07       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00

    7   7.1  0.5  0.5       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.13      -0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.07      -0.00       0.00      -0.00

   11   4.1  0.5 -0.5   19371.90       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00

   12   5.1  0.5 -0.5       0.00   19371.90       0.00       0.00
                            0.00       0.00       0.00      -0.00

   13   6.1  0.5 -0.5       0.00       0.00   19371.90       0.00
                            0.00      -0.00       0.00       0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   19860.97
                           -0.00       0.00      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2979.34844219     0.00000000        0.00      0.00000000        0.00      0.0000
     2 -2979.34844219     0.00000000        0.00      0.00000000        0.00      0.0000
     3 -2979.26017822     0.08826397    19371.70      0.08826397    19371.70      2.4018
     4 -2979.26017822     0.08826397    19371.70      0.08826397    19371.70      2.4018
     5 -2979.26017822     0.08826397    19371.70      0.08826397    19371.70      2.4018
     6 -2979.26017822     0.08826397    19371.70      0.08826397    19371.70      2.4018
     7 -2979.26017672     0.08826547    19372.03      0.08826547    19372.03      2.4018
     8 -2979.26017672     0.08826547    19372.03      0.08826547    19372.03      2.4018
     9 -2979.26017672     0.08826547    19372.03      0.08826547    19372.03      2.4018
    10 -2979.26017672     0.08826547    19372.03      0.08826547    19372.03      2.4018
    11 -2979.26017671     0.08826548    19372.03      0.08826548    19372.03      2.4018
    12 -2979.26017671     0.08826548    19372.03      0.08826548    19372.03      2.4018
    13 -2979.25794896     0.09049323    19860.97      0.09049323    19860.97      2.4624
    14 -2979.25794896     0.09049323    19860.97      0.09049323    19860.97      2.4624


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5   1.000000000  -0.000000000  -0.000000001   0.000000022  -0.000000001  -0.000000002  -0.000000009  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  0.5  0.5  -0.000000000   0.000000000  -0.035942967   0.586384186   0.120838000   0.203508718   0.238182963   0.010022383
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000000

    3    3.1  0.5  0.5   0.000000000   0.000000001   0.497190808   0.030475772  -0.333393652   0.197960187   0.006719318  -0.159685254
                        -0.000000000  -0.000000021   0.015069265   0.000923685  -0.041953752   0.024911011  -0.002277450   0.054123828

    4    4.1  0.5  0.5  -0.000000000   0.000000000  -0.002682257  -0.000164412  -0.067224368   0.039916023   0.008237735  -0.195770626
                         0.000000000   0.000000000   0.088497448   0.005424535   0.534211482  -0.317200407   0.024304357  -0.577595582

    5    5.1  0.5  0.5   0.000000000  -0.000000000   0.014424004  -0.235317549   0.299179720   0.503862029  -0.382160640  -0.016080747
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000001   0.000000000  -0.000000001

    6    6.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000001
                         0.000000021  -0.000000000   0.035834347  -0.584612127  -0.120566604  -0.203051648   0.628556349   0.026448711

    7    7.1  0.5  0.5   0.000000000  -0.000000000   0.000000020  -0.000000333   0.000000029   0.000000048   0.000000141   0.000000006
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    8    1.1  0.5 -0.5  -0.000000000  -0.032440534   0.000000022   0.000000001  -0.000000002   0.000000001  -0.000000000   0.000000009
                         0.000000000   0.999473667   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000003

    9    2.1  0.5 -0.5  -0.000000000   0.000000000   0.586115034   0.035926467   0.201916302  -0.119892463   0.009491979  -0.225577867
                         0.000000000  -0.000000000   0.017764457   0.001088889   0.025408846  -0.015087089  -0.003217217   0.076457511

   10    3.1  0.5 -0.5   0.000000021   0.000000000   0.030489765  -0.497419115   0.199521415   0.336022990  -0.168608330  -0.007094787
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000001

   11    4.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000001   0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.005427030   0.088538098   0.319702028   0.538424574   0.609871131   0.025662464

   12    5.1  0.5 -0.5   0.000000000  -0.000000000  -0.235209549  -0.014417386   0.499919378  -0.296838681  -0.015229722   0.361935967
                         0.000000000   0.000000000  -0.007128920  -0.000436974   0.062909100  -0.037353733   0.005161972  -0.122674812

   13    6.1  0.5 -0.5   0.000000000   0.000000021  -0.017710773  -0.001085598  -0.025351779   0.015053204  -0.008490122   0.201768645
                         0.000000000   0.000000001   0.584343789   0.035817897   0.201462808  -0.119623191  -0.025048995   0.595291945

   14    7.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000333  -0.000000020   0.000000048  -0.000000028   0.000000006  -0.000000134
                        -0.000000000   0.000000000  -0.000000010  -0.000000001   0.000000006  -0.000000004  -0.000000002   0.000000045


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5  -0.000000001   0.000000003  -0.000000013   0.000000009   0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  0.5  0.5  -0.037440453   0.217879642   0.581934975  -0.393053248  -0.000000000   0.000000000
                        -0.000000005  -0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000

    3    3.1  0.5  0.5  -0.260866176  -0.044827256  -0.288479965  -0.427109006  -0.000000000  -0.000000051
                         0.476779234   0.081929782  -0.014923331  -0.022094737   0.000000000   0.000000311

    4    4.1  0.5  0.5   0.189739769   0.032604897   0.012242718   0.018125956  -0.000000000   0.000000007
                         0.103814692   0.017839522  -0.236661576  -0.350389289  -0.000000000   0.000000001

    5    5.1  0.5  0.5  -0.113373540   0.659761938  -0.067258591   0.045428112   0.000000000  -0.000000000
                        -0.000000009  -0.000000001   0.000000000   0.000000001  -0.000000000   0.000000000

    6    6.1  0.5  0.5   0.000000007   0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.065752650   0.382638631   0.193742211  -0.130858272  -0.000000303   0.000000000

    7    7.1  0.5  0.5   0.000000010  -0.000000057   0.000000191  -0.000000129   1.000000000  -0.000000187
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000020   0.000000012

    8    1.1  0.5 -0.5  -0.000000001  -0.000000000  -0.000000009  -0.000000013  -0.000000000  -0.000000000
                         0.000000003   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000000

    9    2.1  0.5 -0.5  -0.104580693  -0.017971150   0.392528379   0.581157880  -0.000000000   0.000000000
                         0.191139780   0.032845476   0.020305850   0.030063825  -0.000000000  -0.000000000

   10    3.1  0.5 -0.5   0.093391499  -0.543479161   0.427680116  -0.288865707  -0.000000315   0.000000000
                         0.000000008   0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000

   11    4.1  0.5 -0.5  -0.000000003  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.037166220  -0.216283772  -0.350857810   0.236978027  -0.000000007   0.000000000

   12    5.1  0.5 -0.5  -0.316681093  -0.054418494  -0.045367447  -0.067168774   0.000000000  -0.000000000
                         0.578790896   0.099459475  -0.002346900  -0.003474702  -0.000000000   0.000000000

   13    6.1  0.5 -0.5   0.335678283   0.057682985   0.006760378   0.010009077  -0.000000000  -0.000000299
                         0.183663849   0.031560803  -0.130683529  -0.193483494  -0.000000000  -0.000000049

   14    7.1  0.5 -0.5   0.000000027   0.000000005   0.000000129   0.000000191  -0.000000042  -0.160910912
                        -0.000000050  -0.000000009   0.000000007   0.000000010   0.000000182   0.986968935


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%   0.129%  34.385%   1.460%   4.142%   5.673%   0.010%   0.140%   4.747%
    3    3.1  0.5  0.5   0.000%   0.000%  24.743%   0.093%  11.291%   3.981%   0.005%   2.843%  29.537%   0.872%
    4    4.1  0.5  0.5   0.000%   0.000%   0.784%   0.003%  28.990%  10.221%   0.066%  37.194%   4.678%   0.138%
    5    5.1  0.5  0.5   0.000%   0.000%   0.021%   5.537%   8.951%  25.388%  14.605%   0.026%   1.285%  43.529%
    6    6.1  0.5  0.5   0.000%   0.000%   0.128%  34.177%   1.454%   4.123%  39.508%   0.070%   0.432%  14.641%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    1.1  0.5 -0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%  34.385%   0.129%   4.142%   1.460%   0.010%   5.673%   4.747%   0.140%
   10    3.1  0.5 -0.5   0.000%   0.000%   0.093%  24.743%   3.981%  11.291%   2.843%   0.005%   0.872%  29.537%
   11    4.1  0.5 -0.5   0.000%   0.000%   0.003%   0.784%  10.221%  28.990%  37.194%   0.066%   0.138%   4.678%
   12    5.1  0.5 -0.5   0.000%   0.000%   5.537%   0.021%  25.388%   8.951%   0.026%  14.605%  43.529%   1.285%
   13    6.1  0.5 -0.5   0.000%   0.000%  34.177%   0.128%   4.123%   1.454%   0.070%  39.508%  14.641%   0.432%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5  33.865%  15.449%   0.000%   0.000%
    3    3.1  0.5  0.5   8.344%  18.291%   0.000%   0.000%
    4    4.1  0.5  0.5   5.616%  12.310%   0.000%   0.000%
    5    5.1  0.5  0.5   0.452%   0.206%   0.000%   0.000%
    6    6.1  0.5  0.5   3.754%   1.712%   0.000%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000% 100.000%   0.000%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5  15.449%  33.865%   0.000%   0.000%
   10    3.1  0.5 -0.5  18.291%   8.344%   0.000%   0.000%
   11    4.1  0.5 -0.5  12.310%   5.616%   0.000%   0.000%
   12    5.1  0.5 -0.5   0.206%   0.452%   0.000%   0.000%
   13    6.1  0.5 -0.5   1.712%   3.754%   0.000%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000% 100.000%


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
              1      24      135.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       96.94       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       938.54    711.32    223.69      0.69      0.14      2.45
 REAL TIME  *       956.72 SEC
 DISK USED  *       142.63 MB (local),        2.03 GB (total)
 SF USED    *       851.12 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -2979.257948964110

              CI           MULTI         RHF-SCF
  -2979.24420347  -2978.99969712  -2978.94106943
 **********************************************************************************************************************************
 Molpro calculation terminated
