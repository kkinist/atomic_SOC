
 Working directory              : /wrk/irikura/molpro.67PIlfgvcR/
 Global scratch directory       : /wrk/irikura/molpro.67PIlfgvcR/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.67PIlfgvcR/

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
 
 basis=aug-cc-pwCV5Z-DK
 
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   S SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 13:37:29  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry S      S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry S      P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry S      D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry S      F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry S      G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry S      H aug-cc-pwCV5Z-DK     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         322
 NUMBER OF SYMMETRY AOS:          232
 NUMBER OF CONTRACTIONS:          217   (  102Ag  +  115Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     232.784 MB (compressed) written to integral file ( 12.1%)

     Node minimum: 15.991 MB, node maximum: 22.544 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   11746161.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   11746161      RECORD LENGTH: 524288

 Memory used in sort:      12.30 MW

 SORT1 READ   241177324. AND WROTE     2019144. INTEGRALS IN      6 RECORDS. CPU TIME:     1.10 SEC, REAL TIME:     1.15 SEC
 SORT2 READ    24868386. AND WROTE   141159946. INTEGRALS IN    876 RECORDS. CPU TIME:     0.24 SEC, REAL TIME:     0.26 SEC

 Node minimum:    11745169.  Node maximum:    11770866. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9  101112131415 7 8 910  1112131415 7 8 91011
                                       12131415 7 8 9101112  131415 7 8 910111213  1415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  19202111121314151617  18192021111213141516  1718192021

 Eigenvalues of metric

         1 0.368E-05 0.432E-03 0.220E-02 0.295E-02 0.295E-02 0.295E-02 0.295E-02 0.295E-02
         2 0.437E-04 0.437E-04 0.437E-04 0.486E-02 0.486E-02 0.486E-02 0.165E-01 0.165E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.63      3.43
 REAL TIME  *         4.44 SEC
 DISK USED  *        30.55 MB (local),      851.21 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   3   4

 NELEC=   16   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -295.71330096    -295.71330096     0.00D+00     0.19D+00     0     0       0.06      0.12    start
   2     -388.27673396     -92.56343300     0.41D+00     0.19D+00     1     0       0.07      0.19    diag2
   3     -397.32086838      -9.04413442     0.27D+00     0.48D-01     2     0       0.07      0.26    diag2
   4     -398.56570666      -1.24483828     0.52D-01     0.36D-01     3     0       0.07      0.33    diag2
   5     -398.58721454      -0.02150788     0.61D-02     0.48D-02     4     0       0.07      0.40    diag2
   6     -398.58930201      -0.00208746     0.11D-02     0.11D-02     5     0       0.07      0.47    diag2
   7     -398.58936689      -0.00006488     0.23D-03     0.16D-03     6     0       0.07      0.54    diag2
   8     -398.58936930      -0.00000241     0.28D-04     0.40D-04     7     0       0.07      0.61    fixocc
   9     -398.58936940      -0.00000010     0.57D-05     0.54D-05     8     0       0.07      0.68    diag2
  10     -398.58936941      -0.00000001     0.14D-05     0.17D-05     9     0       0.07      0.75    diag2/orth
  11     -398.58936941      -0.00000000     0.22D-06     0.22D-06     0     0       0.07      0.82    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   4

 !RHF STATE 1.1 Energy               -398.589369410301
  RHF One-electron energy            -550.864203677778
  RHF Two-electron energy             152.274834267477
  RHF Kinetic energy                  405.207100515130
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.983668274578

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -92.29412     1  1  s    0.95655
    2.1     2.00000    -9.05412     1  2  s    1.04111
    3.1     2.00000    -0.88427     1  2  s    0.33413    1  9  s    0.42843    1 10  s    0.61370
    1.2     2.00000    -6.68295     1  1  pz   0.99284
    2.2     2.00000    -6.68295     1  1  px   0.99879
    3.2     2.00000    -6.68149     1  1  py   0.99577
    4.2     2.00000    -0.39714     1  8  py   0.39076    1  9  py   0.45947
    5.2     1.00000    -0.48022     1  1  pz  -0.25734    1  8  pz   0.41911    1  9  pz   0.47414
    6.2     1.00000    -0.48022     1  1  px  -0.25888    1  8  px   0.42163    1  9  px   0.47699


 HOMO      6.2    -0.480222 =     -13.0675eV
 LUMO      7.2     0.070651 =       1.9225eV
 LUMO-HOMO         0.550873 =      14.9900eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.14       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.46      0.83      3.43
 REAL TIME  *         6.12 SEC
 DISK USED  *        34.69 MB (local),      900.87 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     208 (   99  109)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.626D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.247D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.708D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 2 6 3 5 1   4 2 6 3 5 7 9 81514  10111312 4 2 6 3 5 1   7 9 8151014111312 4
                                        2 6 3 5 1 7 9 81510  14131112 4 2 6 3 5 1   7 915 81410111312 2   4 6 3 5 1 2 4 6 3 5
                                        7 9 8151410111312 2   4 6 3 5 1 2 4 6 3 5   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.123D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.110D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.119D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.194D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 3 1 3 1 2 3   1 2 6 4 5 8 710 9 6   4 3 1 8 5 9 710 2 6   4 8 510 7 919112116
                                       17141518132012 3 1 2   6 4 8 510 7 9191116  2117141518132012 3 1   2 6 4 8 510 7 91119
                                       162114171815201312 1   3 2 6 4 8 510 7 9 1   3 2 6 4 8 510 7 9 1   3 2 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  962  ( 11 closed/active, 525 closed/virtual, 0 active/active, 426 active/virtual )
 Total number of variables:    1031
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -398.54545173    -398.54695999   -0.00150825    0.05443822 0.00004213 0.00000000  0.45E-01      0.54
   2    5   10    0   -398.54696586    -398.54696593   -0.00000007    0.00029881 0.00000008 0.00000000  0.29E-03      1.07
   3   20   40    0   -398.54696593    -398.54696593    0.00000000    0.00000008 0.00000002 0.00000000  0.35E-07      1.66

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.29E-07)
                       Final energy:   -398.54696593
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -398.586823522122
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.16945868
 One electron energy                          -550.76955772
 Two electron energy                           152.18273419
 Virial ratio                                    1.98375338
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -398.586823522006
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.16945868
 One electron energy                          -550.76955772
 Two electron energy                           152.18273420
 Virial ratio                                    1.98375338
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -398.586823521823
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.16945869
 One electron energy                          -550.76955774
 Two electron energy                           152.18273422
 Virial ratio                                    1.98375338
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -398.534428013024
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.16945868
 One electron energy                          -550.76955771
 Two electron energy                           152.23512970
 Virial ratio                                    1.98362406
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -398.534428013019
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.16945868
 One electron energy                          -550.76955772
 Two electron energy                           152.23512970
 Virial ratio                                    1.98362406
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -398.534428012953
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.16945868
 One electron energy                          -550.76955772
 Two electron energy                           152.23512971
 Virial ratio                                    1.98362406
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -398.534428012850
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.16945869
 One electron energy                          -550.76955774
 Two electron energy                           152.23512972
 Virial ratio                                    1.98362406
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -398.534428012828
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.16945869
 One electron energy                          -550.76955774
 Two electron energy                           152.23512973
 Virial ratio                                    1.98362406
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -398.490082776351
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.12556703
 One electron energy                          -550.66182624
 Two electron energy                           152.17174346
 Virial ratio                                    1.98362117
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999969
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000032
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999944
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.256655128043
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000008734
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999994374
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000033415
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.743332458416
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999421
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999999
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000635
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.153942512568
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000495
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000004056
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999971156
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.846062305367
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000610
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999969
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999421
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.589402359389
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999990771
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000001570
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999995429
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.410605236217
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 4 2 6 1   3 5 4 2 610131514 9   812 711 3 5 4 2 6 1  10131514 9 812 711 3
                                        5 4 2 6 110131415 9   812 711 3 5 4 2 6 1  10131415 9 812 711 3   5 4 2 6 1 3 5 4 2 6
                                       13101514 912 8 711 3   5 4 2 6 1 3 5 4 2 6   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 1 2 3 1   2 3 7 9 4 810 6 5 7   9 410 8 6 5 1 2 3 9   7 410 8 6 520181715
                                       11141613211912 1 2 3   9 7 4 810 6 5201817  1511161413211912 1 2   3 9 7 4 810 6 52018
                                       171511141613211912 1   2 3 9 7 410 8 6 5 1   2 3 9 7 410 8 6 5 1   2 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -92.30327     1  1  s    0.95654
    2.1     2.00000    -9.06200     1  2  s    1.04332
    3.1     1.99221    -0.88761     1  2  s    0.32763    1  9  s    0.43067    1 10  s    0.61337
    1.2     2.00000    -6.69071     1  1  px   0.99950
    2.2     2.00000    -6.69071     1  1  pz   0.99950
    3.2     2.00000    -6.69071     1  1  py   0.99950
    4.2     1.33593    -0.28691     1  1  pz  -0.25590    1  8  pz   0.40199    1  9  pz   0.46642
    5.2     1.33593    -0.28691     1  1  py  -0.25590    1  8  py   0.40199    1  9  py   0.46642
    6.2     1.33593    -0.28691     1  1  px  -0.25590    1  8  px   0.40199    1  9  px   0.46642
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa2         -0.00000556      1.00000000      0.00000082
 2 a2a          0.00002407     -0.00000082      1.00000000
 2 2aa          1.00000000      0.00000556     -0.00002407
 
 Energy:     -398.58682352   -398.58682352   -398.58682352
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202          0.80063074      0.00008339      0.00003182      0.00001671     -0.16017829      0.56714351
 2 022         -0.26159690     -0.00001654     -0.00004720     -0.00010341      0.77345570      0.56714351
 2 ba2          0.00002088     -0.00000656     -0.70710678      0.00002965     -0.00003609     -0.00000000
 2 ab2         -0.00002088      0.00000656      0.70710678     -0.00002965      0.00003609      0.00000000
 2 2ba          0.00007575     -0.70710678      0.00000657      0.00003483      0.00001051     -0.00000000
 2 2ab         -0.00007575      0.70710678     -0.00000657     -0.00003483     -0.00001051      0.00000000
 2 b2a         -0.00000445     -0.00003483     -0.00002965     -0.70710677     -0.00009604     -0.00000000
 2 a2b          0.00000445      0.00003483      0.00002965      0.70710677      0.00009604      0.00000000
 2 220         -0.53903383     -0.00006685      0.00001538      0.00008670     -0.61327741      0.56714351
 0 222         -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.18720235
 
 Energy:     -398.53442801   -398.53442801   -398.53442801   -398.53442801   -398.53442801   -398.49008278
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.06       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.32      1.85      0.83      3.43
 REAL TIME  *         8.25 SEC
 DISK USED  *        45.40 MB (local),        1.01 GB (total)
 SF USED    *        35.17 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -398.5868235   2.0
    -398.5868235   2.0
    -398.5868235   2.0
    -398.5344280   6.0
    -398.5344280   6.0
    -398.5344280   6.0
    -398.5344280   6.0
    -398.5344280   6.0
    -398.4900828  -0.0
                                                  


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
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.27 sec, npass=  1  Memory used:   1.23 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -398.58682352
     2      -398.58682352
     3      -398.58682352

 Number of blocks in overlap matrix:   154   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     177
 Number of N-1 electron functions:     174

 Number of internal configurations:                   16
 Number of singly external configurations:         18186
 Number of doubly external configurations:       1916193
 Total number of contracted configurations:      1934395
 Total number of uncontracted configurations:    5007208

 Diagonal Coupling coefficients finished.               Storage:    201340 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    787595 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.58682352     0.00000000    -0.51351038  0.33D-01  0.59D-01     0.42
    1     2     2     1.00000000     0.00000000  -398.58682352     0.00000000    -0.51384490  0.34D-01  0.58D-01     0.42
    1     3     3     1.00000000     0.00000000  -398.58682352     0.00000000    -0.51367233  0.33D-01  0.59D-01     0.42
    2     1     1     1.07443370    -0.46259099  -399.04941451    -0.46259099    -0.00843794  0.17D-02  0.10D-02     5.11
    2     2     2     1.07456337    -0.46256532  -399.04938884    -0.46256532    -0.00845735  0.18D-02  0.10D-02     5.11
    2     3     3     1.07471204    -0.46250019  -399.04932371    -0.46250019    -0.00852638  0.18D-02  0.10D-02     5.11
    3     1     1     1.06196715    -0.47045430  -399.05727782    -0.00786331    -0.00010261  0.66D-05  0.16D-04     9.95
    3     2     2     1.06197355    -0.47045424  -399.05727776    -0.00788892    -0.00010272  0.68D-05  0.16D-04     9.95
    3     3     3     1.06196100    -0.47045341  -399.05727693    -0.00795323    -0.00010344  0.65D-05  0.17D-04     9.95
    4     1     1     1.06166338    -0.47055887  -399.05738239    -0.00010457    -0.00000230  0.41D-06  0.37D-06    14.77
    4     2     2     1.06166083    -0.47055882  -399.05738234    -0.00010458    -0.00000233  0.43D-06  0.37D-06    14.77
    4     3     3     1.06165789    -0.47055877  -399.05738229    -0.00010535    -0.00000237  0.43D-06  0.38D-06    14.77
    5     1     1     1.06178097    -0.47056144  -399.05738496    -0.00000256    -0.00000009  0.12D-07  0.18D-07    19.56
    5     2     2     1.06178068    -0.47056143  -399.05738495    -0.00000261    -0.00000009  0.12D-07  0.19D-07    19.56
    5     3     3     1.06178032    -0.47056143  -399.05738495    -0.00000266    -0.00000010  0.13D-07  0.19D-07    19.56
    6     1     1     1.06178378    -0.47056154  -399.05738506    -0.00000011    -0.00000000  0.71D-09  0.72D-09    24.40
    6     2     2     1.06178383    -0.47056154  -399.05738506    -0.00000011    -0.00000000  0.72D-09  0.74D-09    24.40
    6     3     3     1.06178389    -0.47056154  -399.05738506    -0.00000011    -0.00000000  0.73D-09  0.76D-09    24.40


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.2%
 P   0.4%   7.0%  17.1%

 Initialization:   1.6%
 Other:           73.7%

 Total CPU:       24.4 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//2           0.9704679   0.0000000  -0.0000000
 22222/2/           0.0000000   0.9704679   0.0000000
 222222//          -0.0000000   0.0000000   0.9704679

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.970468    0.000000
 2           0.000000    0.000000    0.970468
 3           0.970468   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970468    0.000000   -0.000000
 2           0.000000    0.970468    0.000000
 3          -0.000000    0.000000    0.970468


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97046790 (fixed)   0.97046790 (relaxed)   0.97046790 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000360   -0.00004354   -0.40282223
 Singles      0.01853734   -0.04285158   -0.04857511
 Pairs        0.04324666    0.00000000   -0.01916420
 Total        1.06178760   -0.04289512   -0.47056154
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58682352
 Nuclear energy                         0.00000000
 Kinetic energy                       405.61842543
 One electron energy                 -550.62516411
 Two electron energy                  151.56777905
 Virial quotient                       -0.98382460
 Correlation energy                    -0.47056154
 !MRCI STATE 1.1 Energy              -399.057385063357

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.08645993 (Davidson, fixed reference)
 Cluster corrected energies          -399.08645993 (Davidson, relaxed reference)
 Cluster corrected energies          -399.08645993 (Davidson, rotated reference)

 Cluster corrected energies          -399.08264048 (Pople, fixed reference)
 Cluster corrected energies          -399.08264048 (Pople, relaxed reference)
 Cluster corrected energies          -399.08264048 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97046788 (fixed)   0.97046788 (relaxed)   0.97046788 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000360   -0.00004354   -0.00004260
 Singles      0.01853730   -0.04285153   -0.04857507
 Pairs        0.04324676   -0.42766647   -0.42194387
 Total        1.06178765   -0.47056154   -0.47056154
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58682352
 Nuclear energy                         0.00000000
 Kinetic energy                       405.61842682
 One electron energy                 -550.62516893
 Two electron energy                  151.56778387
 Virial quotient                       -0.98382460
 Correlation energy                    -0.47056154
 !MRCI STATE 2.1 Energy              -399.057385063144

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.08645996 (Davidson, fixed reference)
 Cluster corrected energies          -399.08645996 (Davidson, relaxed reference)
 Cluster corrected energies          -399.08645996 (Davidson, rotated reference)

 Cluster corrected energies          -399.08264050 (Pople, fixed reference)
 Cluster corrected energies          -399.08264050 (Pople, relaxed reference)
 Cluster corrected energies          -399.08264050 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97046785 (fixed)   0.97046785 (relaxed)   0.97046785 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000360   -0.00004354   -0.40282229
 Singles      0.01853726   -0.04285148   -0.04857503
 Pairs        0.04324684    0.00000000   -0.01916422
 Total        1.06178771   -0.04289502   -0.47056154
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58682352
 Nuclear energy                         0.00000000
 Kinetic energy                       405.61843111
 One electron energy                 -550.62517574
 Two electron energy                  151.56779068
 Virial quotient                       -0.98382459
 Correlation energy                    -0.47056154
 !MRCI STATE 3.1 Energy              -399.057385063133

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.08645998 (Davidson, fixed reference)
 Cluster corrected energies          -399.08645998 (Davidson, relaxed reference)
 Cluster corrected energies          -399.08645998 (Davidson, rotated reference)

 Cluster corrected energies          -399.08264052 (Pople, fixed reference)
 Cluster corrected energies          -399.08264052 (Pople, relaxed reference)
 Cluster corrected energies          -399.08264052 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       47.96       700     1000      520     2100     2140     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        31.24     24.92      1.85      0.83      3.43
 REAL TIME  *        35.44 SEC
 DISK USED  *        91.30 MB (local),        1.54 GB (total)
 SF USED    *       443.88 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -399.08645993  AU                              
 SETTING HLSDIAG(2)     =      -399.08645996  AU                              
 SETTING HLSDIAG(3)     =      -399.08645998  AU                              


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
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -398.53442801
     2      -398.53442801
     3      -398.53442801
     4      -398.53442801
     5      -398.53442801
     6      -398.49008278

 Number of blocks in overlap matrix:   186   Smallest eigenvalue:  0.24D-01
 Number of N-2 electron functions:     266
 Number of N-1 electron functions:     148

 Number of internal configurations:                   24
 Number of singly external configurations:         15482
 Number of doubly external configurations:       2881326
 Total number of contracted configurations:      2896832
 Total number of uncontracted configurations:    4224783

 Diagonal Coupling coefficients finished.               Storage:    220221 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    810166 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.53442801    -0.00000000    -0.51670539  0.33D-01  0.55D-01     0.15
    1     2     2     1.00000000     0.00000000  -398.53442801     0.00000000    -0.51791334  0.34D-01  0.56D-01     0.15
    1     3     3     1.00000000     0.00000000  -398.53442801    -0.00000000    -0.51783174  0.34D-01  0.56D-01     0.15
    1     4     4     1.00000000     0.00000000  -398.53442801    -0.00000000    -0.51780305  0.34D-01  0.56D-01     0.15
    1     5     5     1.00000000     0.00000000  -398.53442801    -0.00000000    -0.51630962  0.33D-01  0.55D-01     0.15
    1     6     6     1.00000000     0.00000000  -398.49008278     0.00000000    -0.49616908  0.45D-02  0.69D-01     0.15
    2     1     1     1.07369373    -0.47226520  -399.00669321    -0.47226520    -0.00862763  0.16D-02  0.11D-02    16.25
    2     2     2     1.07436909    -0.47211391  -399.00654192    -0.47211391    -0.00881909  0.16D-02  0.11D-02    16.25
    2     3     3     1.07447809    -0.47200323  -399.00643125    -0.47200323    -0.00896300  0.17D-02  0.11D-02    16.25
    2     4     4     1.07405060    -0.47198280  -399.00641081    -0.47198280    -0.00896764  0.17D-02  0.11D-02    16.25
    2     5     5     1.07445005    -0.47187910  -399.00630711    -0.47187910    -0.00910182  0.18D-02  0.11D-02    16.25
    2     6     6     1.06399997    -0.46347204  -398.95355482    -0.46347204    -0.00560242  0.93D-03  0.85D-03    16.25
    3     1     1     1.06592199    -0.47999903  -399.01442704    -0.00773383    -0.00018620  0.14D-04  0.35D-04    32.64
    3     2     2     1.06593031    -0.47999391  -399.01442192    -0.00788000    -0.00019116  0.14D-04  0.36D-04    32.64
    3     3     3     1.06577123    -0.47998871  -399.01441672    -0.00798548    -0.00019325  0.15D-04  0.36D-04    32.64
    3     4     4     1.06586504    -0.47998754  -399.01441555    -0.00800473    -0.00019632  0.14D-04  0.37D-04    32.64
    3     5     5     1.06576237    -0.47997878  -399.01440679    -0.00809968    -0.00020232  0.16D-04  0.38D-04    32.64
    3     6     6     1.05950092    -0.46867204  -398.95875482    -0.00520000    -0.00013018  0.89D-05  0.22D-04    32.64
    4     1     1     1.06610650    -0.48018790  -399.01461591    -0.00018887    -0.00000758  0.72D-06  0.16D-05    48.93
    4     2     2     1.06610070    -0.48018764  -399.01461565    -0.00019373    -0.00000777  0.76D-06  0.16D-05    48.93
    4     3     3     1.06607930    -0.48018706  -399.01461507    -0.00019835    -0.00000826  0.88D-06  0.17D-05    48.93
    4     4     4     1.06608377    -0.48018695  -399.01461496    -0.00019941    -0.00000833  0.80D-06  0.17D-05    48.93
    4     5     5     1.06606231    -0.48018617  -399.01461418    -0.00020739    -0.00000896  0.97D-06  0.18D-05    48.93
    4     6     6     1.05985381    -0.46880715  -398.95888992    -0.00013510    -0.00000553  0.99D-06  0.93D-06    48.93
    5     1     1     1.06642061    -0.48019645  -399.01462446    -0.00000855    -0.00000037  0.29D-07  0.77D-07    65.33
    5     2     2     1.06641941    -0.48019643  -399.01462445    -0.00000879    -0.00000039  0.31D-07  0.80D-07    65.33
    5     3     3     1.06641837    -0.48019641  -399.01462442    -0.00000935    -0.00000041  0.34D-07  0.82D-07    65.33
    5     4     4     1.06642475    -0.48019641  -399.01462442    -0.00000946    -0.00000041  0.31D-07  0.84D-07    65.33
    5     5     5     1.06642103    -0.48019637  -399.01462438    -0.00001020    -0.00000045  0.37D-07  0.88D-07    65.33
    5     6     6     1.06012321    -0.46881338  -398.95889615    -0.00000623    -0.00000030  0.43D-07  0.50D-07    65.33
    6     1     1     1.06644481    -0.48019687  -399.01462489    -0.00000042    -0.00000002  0.19D-08  0.36D-08    81.32
    6     2     2     1.06644465    -0.48019687  -399.01462489    -0.00000044    -0.00000002  0.20D-08  0.37D-08    81.32
    6     3     3     1.06644453    -0.48019687  -399.01462489    -0.00000046    -0.00000002  0.21D-08  0.39D-08    81.32
    6     4     4     1.06644544    -0.48019687  -399.01462489    -0.00000047    -0.00000002  0.21D-08  0.39D-08    81.32
    6     5     5     1.06644464    -0.48019687  -399.01462488    -0.00000050    -0.00000002  0.22D-08  0.43D-08    81.32
    6     6     6     1.06013611    -0.46881371  -398.95889649    -0.00000033    -0.00000002  0.13D-08  0.35D-08    81.32


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.3%   6.7%  23.9%

 Initialization:   0.1%
 Other:           68.9%

 Total CPU:       81.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/\          -0.0000000   0.0000000   0.9683424  -0.0000000   0.0000000  -0.0000000
 22222/2\           0.0000000   0.9683423   0.0000000  -0.0000000   0.0000000  -0.0000000
 22222/\2           0.9683422  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 22222220          -0.0000000   0.0000000   0.0000000  -0.1288925   0.7800715   0.5512235
 22222022           0.0000000   0.0000000   0.0000000   0.7400073  -0.2784113   0.5512234
 22222202          -0.0000000   0.0000000   0.0000000  -0.6111154  -0.5016596   0.5512235
 20222222          -0.0000000  -0.0000000  -0.0000000  -0.0000003   0.0000006  -0.1780898

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\2222/\  12.1    -0.0000000   0.0000000   0.0699510  -0.0000000  -0.0000000  -0.0000000
 2\222/\2  15.1    -0.0000000   0.0000000  -0.0000000  -0.0688040  -0.0126861   0.0068019
 2\2222/\  11.1     0.0000000   0.0000000   0.0000000   0.0234151   0.0659279   0.0068019
 2\222/2\  14.1     0.0000000  -0.0612308  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2\222/\2  14.1    -0.0612306   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2\222/2\  13.1    -0.0000000   0.0000000   0.0000000  -0.0433801   0.0548918   0.0068025

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.968342    0.000000    0.000000   -0.000000
 2           0.000000    0.000000   -0.000000    0.968342    0.000000    0.000000
 3           0.000000    0.968342    0.000000    0.000000   -0.000000    0.000000
 4          -0.613213   -0.000000   -0.000000   -0.000000    0.749437   -0.000000
 5          -0.749438    0.000000    0.000000    0.000000   -0.613213    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.971207

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968342    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.968342    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.968342   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.968342    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.968342    0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.971207


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96834224 (fixed)   0.96834224 (relaxed)   0.96834224 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000889   -0.00008764   -0.40514528
 Singles      0.02140278   -0.04813222   -0.05477251
 Pairs        0.04504262    0.00000000   -0.02027908
 Total        1.06645429   -0.04821986   -0.48019687
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53442801
 Nuclear energy                         0.00000000
 Kinetic energy                       405.59601557
 One electron energy                 -550.55173320
 Two electron energy                  151.53710831
 Virial quotient                       -0.98377353
 Correlation energy                    -0.48019687
 !MRCI STATE 1.1 Energy              -399.014624887337

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.04653603 (Davidson, fixed reference)
 Cluster corrected energies          -399.04653603 (Davidson, relaxed reference)
 Cluster corrected energies          -399.04653603 (Davidson, rotated reference)

 Cluster corrected energies          -399.04332325 (Pople, fixed reference)
 Cluster corrected energies          -399.04332325 (Pople, relaxed reference)
 Cluster corrected energies          -399.04332325 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96834231 (fixed)   0.96834231 (relaxed)   0.96834231 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000889   -0.00008764   -0.40514561
 Singles      0.02140248   -0.04813194   -0.05477232
 Pairs        0.04504277   -0.00000000   -0.02027895
 Total        1.06645413   -0.04821957   -0.48019687
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53442801
 Nuclear energy                         0.00000000
 Kinetic energy                       405.59602105
 One electron energy                 -550.55174640
 Two electron energy                  151.53712151
 Virial quotient                       -0.98377352
 Correlation energy                    -0.48019687
 !MRCI STATE 2.1 Energy              -399.014624886421

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.04653595 (Davidson, fixed reference)
 Cluster corrected energies          -399.04653595 (Davidson, relaxed reference)
 Cluster corrected energies          -399.04653595 (Davidson, rotated reference)

 Cluster corrected energies          -399.04332317 (Pople, fixed reference)
 Cluster corrected energies          -399.04332317 (Pople, relaxed reference)
 Cluster corrected energies          -399.04332317 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96834237 (fixed)   0.96834237 (relaxed)   0.96834237 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000889   -0.00008764   -0.40514586
 Singles      0.02140222   -0.04813172   -0.05477219
 Pairs        0.04504290   -0.00000000   -0.02027883
 Total        1.06645401   -0.04821936   -0.48019687
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53442801
 Nuclear energy                         0.00000000
 Kinetic energy                       405.59601889
 One electron energy                 -550.55174862
 Two electron energy                  151.53712373
 Virial quotient                       -0.98377352
 Correlation energy                    -0.48019687
 !MRCI STATE 3.1 Energy              -399.014624885500

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.04653589 (Davidson, fixed reference)
 Cluster corrected energies          -399.04653589 (Davidson, relaxed reference)
 Cluster corrected energies          -399.04653589 (Davidson, rotated reference)

 Cluster corrected energies          -399.04332312 (Pople, fixed reference)
 Cluster corrected energies          -399.04332312 (Pople, relaxed reference)
 Cluster corrected energies          -399.04332312 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.74943714 (fixed)   0.96834196 (relaxed)   0.96834196 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000889   -0.00008764   -0.40514510
 Singles      0.02140304   -0.04813223   -0.05477274
 Pairs        0.04504299    0.00000008   -0.02027903
 Total        1.06645492   -0.04821979   -0.48019687
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53442801
 Nuclear energy                         0.00000000
 Kinetic energy                       405.59603982
 One electron energy                 -550.55174349
 Two electron energy                  151.53711860
 Virial quotient                       -0.98377347
 Correlation energy                    -0.48019687
 !MRCI STATE 4.1 Energy              -399.014624885326

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.04653633 (Davidson, fixed reference)
 Cluster corrected energies          -399.04653633 (Davidson, relaxed reference)
 Cluster corrected energies          -399.04653633 (Davidson, rotated reference)

 Cluster corrected energies          -399.04332353 (Pople, fixed reference)
 Cluster corrected energies          -399.04332353 (Pople, relaxed reference)
 Cluster corrected energies          -399.04332353 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.74943752 (fixed)   0.96834232 (relaxed)   0.96834232 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000889   -0.00008764   -0.40514592
 Singles      0.02140206   -0.04813145   -0.05477212
 Pairs        0.04504317   -0.00000015   -0.02027883
 Total        1.06645412   -0.04821923   -0.48019687
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53442801
 Nuclear energy                         0.00000000
 Kinetic energy                       405.59603023
 One electron energy                 -550.55174749
 Two electron energy                  151.53712261
 Virial quotient                       -0.98377350
 Correlation energy                    -0.48019687
 !MRCI STATE 5.1 Energy              -399.014624883269

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.04653594 (Davidson, fixed reference)
 Cluster corrected energies          -399.04653594 (Davidson, relaxed reference)
 Cluster corrected energies          -399.04653594 (Davidson, rotated reference)

 Cluster corrected energies          -399.04332317 (Pople, fixed reference)
 Cluster corrected energies          -399.04332317 (Pople, relaxed reference)
 Cluster corrected energies          -399.04332317 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97120725 (fixed)   0.97121464 (relaxed)   0.97120725 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003348   -0.00014614   -0.00015265
 Singles      0.00351783   -0.01369701   -0.01447538
 Pairs        0.05662030   -0.45497056   -0.45418569
 Total        1.06017161   -0.46881371   -0.46881371
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.49008278
 Nuclear energy                         0.00000000
 Kinetic energy                       405.54934591
 One electron energy                 -550.40865731
 Two electron energy                  151.44976082
 Virial quotient                       -0.98374933
 Correlation energy                    -0.46881371
 !MRCI STATE 6.1 Energy              -398.958896487066

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.98710576 (Davidson, fixed reference)
 Cluster corrected energies          -398.98709819 (Davidson, relaxed reference)
 Cluster corrected energies          -398.98710576 (Davidson, rotated reference)

 Cluster corrected energies          -398.98414954 (Pople, fixed reference)
 Cluster corrected energies          -398.98414247 (Pople, relaxed reference)
 Cluster corrected energies          -398.98414954 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      181.37       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       114.91     83.66     24.92      1.85      0.83      3.43
 REAL TIME  *       126.16 SEC
 DISK USED  *       224.71 MB (local),        3.11 GB (total)
 SF USED    *         1.24 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -399.04653603  AU                              
 SETTING HLSDIAG(5)     =      -399.04653595  AU                              
 SETTING HLSDIAG(6)     =      -399.04653589  AU                              
 SETTING HLSDIAG(7)     =      -399.04653633  AU                              
 SETTING HLSDIAG(8)     =      -399.04653594  AU                              
 SETTING HLSDIAG(9)     =      -398.98710576  AU                              


         HLSDIAG
    -399.0864599
    -399.0864600
    -399.0864600
    -399.0465360
    -399.0465360
    -399.0465359
    -399.0465363
    -399.0465359
    -398.9871058
                                                  

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

 Time for Seward_LS:      13.08 sec

       37108551. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    40849 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     13.08 sec, REAL time:     13.96 sec


 SORTLS1 read   167212435. and wrote   167212435. SO integrals in   660 records. CPU time:      1.59 sec, REAL time:      2.33 sec
 SORTLS2 read   167212435. and wrote   839252487. SO integrals in    36 records. CPU time:      0.97 sec, REAL time:      1.37 sec

 FILE SIZES: FILE 1:  2722.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2722.7 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2596.57       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      181.37       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       130.90     15.98     83.66     24.92      1.85      0.83      3.43
 REAL TIME  *       144.54 SEC
 DISK USED  *       224.99 MB (local),       11.59 GB (total)
 SF USED    *         2.50 GB
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

 Original energies:   -399.057385   -399.057385   -399.057385
 Replaced energies:   -399.086460   -399.086460   -399.086460

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -399.014625   -399.014625   -399.014625   -399.014625   -399.014625   -398.958896
 Replaced energies:   -399.046536   -399.046536   -399.046536   -399.046536   -399.046536   -398.987106



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -399.08645998

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00      -0.00       0.00    -141.38       0.00       0.00       0.00      -0.00
                           -0.00    -199.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          199.94      -0.00       0.00      -0.00      -0.00    -141.38       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00     141.38      -0.00       0.00       0.00       0.00       0.00    -141.95
                           -0.00      -0.00       0.00      -0.00     141.38      -0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0      -0.00      -0.00     141.38       0.01       0.00       0.00      -0.00       0.00    -141.38       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   2.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.01       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00    -141.38      -0.00       0.00       0.00      -0.00      -0.00    -141.38    -200.76

    6   3.1  1.0  0.0    -141.38       0.00       0.00       0.00       0.00       0.00     141.38      -0.00       0.00       0.00
                           -0.00     141.38       0.00      -0.00      -0.00       0.00      -0.00     141.38      -0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00     141.38       0.01       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     199.94      -0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.01       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    -141.38    -199.94       0.00      -0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00    -141.38       0.00       0.00       0.00       0.00       0.00    -141.95
                           -0.00      -0.00      -0.00      -0.00     141.38       0.00       0.00       0.00      -0.00       0.00

   10   1.1  0.0  0.0      -0.00       0.00    -141.95       0.00       0.00       0.00      -0.00       0.00    -141.95    8762.29
                            0.00      -0.00       0.00      -0.00     200.76      -0.00      -0.00       0.00      -0.00       0.00

   11   2.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00     141.96    -200.76       0.00      -0.00      -0.00      -0.00    -141.96      -0.00

   12   3.1  0.0  0.0    -141.95       0.00      -0.00       0.00       0.00       0.00    -141.95       0.00      -0.00       0.00
                            0.00    -141.97      -0.00       0.00       0.00      -0.00      -0.00     141.97       0.00      -0.00

   13   4.1  0.0  0.0      -0.00     126.69       0.00       0.00       0.00       0.00      -0.00     126.69       0.00       0.00
                           26.72      -0.00      -0.00       0.00      -0.00     216.97     -26.72       0.00       0.00      -0.00

   14   5.1  0.0  0.0      -0.00     104.00      -0.00       0.00       0.00       0.00      -0.00     104.00      -0.00       0.00
                         -161.73       0.00      -0.00      -0.00       0.00     -81.63     161.73      -0.00       0.00      -0.00

   15   6.1  0.0  0.0       0.00     231.24       0.00       0.00       0.00       0.00       0.00     231.24       0.00       0.00
                          231.26       0.00      -0.00       0.00       0.00    -327.04    -231.26      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00    -141.95      -0.00      -0.00       0.00
                           -0.00      -0.00     -26.72     161.73    -231.26

    2   2.1  1.0  1.0       0.00       0.00     126.69     104.00     231.24
                           -0.00     141.97       0.00      -0.00      -0.00

    3   3.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00
                         -141.96       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          200.76      -0.00      -0.00       0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -216.97      81.63     327.04

    7   1.1  1.0 -1.0       0.00    -141.95      -0.00      -0.00       0.00
                            0.00       0.00      26.72    -161.73     231.26

    8   2.1  1.0 -1.0       0.00       0.00     126.69     104.00     231.24
                            0.00    -141.97      -0.00       0.00       0.00

    9   3.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00
                          141.96      -0.00      -0.00      -0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    8762.31       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    8762.32       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    8762.23       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    8762.31       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   21805.73
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -399.08645998 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.011       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000    -199.942

    2    1  |1 1>+              0.000       0.005       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -199.942     199.942      -0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     199.942       0.000      -0.000      -0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.011       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.005       0.000       0.000       0.000
                               -0.000       0.000    -199.942      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000    -199.942       0.000
                               -0.000     199.942       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -199.942       0.011       0.000
                               -0.000    -199.942       0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.005
                              199.942      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000     199.942      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.000       0.000    -200.750       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     200.762      -0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -200.755       0.000      -0.000       0.000       0.000

    3    1  |0 0>            -200.747       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000    -200.771

    4    1  |0 0>              -0.000     179.172       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     216.968      37.792      -0.000

    5    1  |0 0>              -0.000     147.083      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     -81.631    -228.720       0.000

    6    1  |0 0>               0.000     327.020       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -327.035     327.049       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000       0.000    -200.747      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000     179.172     147.083     327.020
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    -200.750      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>             199.942       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     200.755      -0.000      -0.000       0.000      -0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -200.762      -0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -216.968      81.631     327.035

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     -37.792     228.720    -327.049

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     200.771       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -200.767       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000    8762.294       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    8762.312       0.000       0.000       0.000       0.000
                              200.767      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    8762.325       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    8762.229       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    8762.314       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   21805.731
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -399.08741191    -0.00095193     -208.92      0.00000000        0.00      0.0000
    2  -399.08741191    -0.00095193     -208.92      0.00000000        0.00      0.0000
    3  -399.08741190    -0.00095192     -208.92      0.00000001        0.00      0.0000
    4  -399.08741189    -0.00095190     -208.92      0.00000003        0.01      0.0000
    5  -399.08741188    -0.00095190     -208.92      0.00000003        0.01      0.0000
    6  -399.08554897     0.00091102      199.94      0.00186295      408.87      0.0507
    7  -399.08554895     0.00091103      199.95      0.00186296      408.87      0.0507
    8  -399.08554894     0.00091104      199.95      0.00186297      408.87      0.0507
    9  -399.08470620     0.00175378      384.91      0.00270571      593.84      0.0736
   10  -399.04649539     0.03996459     8771.21      0.04091652     8980.14      1.1134
   11  -399.04649509     0.03996489     8771.28      0.04091682     8980.20      1.1134
   12  -399.04649501     0.03996497     8771.30      0.04091690     8980.22      1.1134
   13  -399.04649500     0.03996498     8771.30      0.04091691     8980.22      1.1134
   14  -399.04649495     0.03996503     8771.31      0.04091696     8980.23      1.1134
   15  -398.98703751     0.09942247    21820.71      0.10037440    22029.63      2.7313

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.70674721 -0.00000000  0.00000000  0.00000000  0.70711255
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.55826949 -0.00000000 -0.00000000 -0.00000000  0.59525957  0.00000000 -0.00000000 -0.00000000
                           0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.70675712 -0.00000000  0.00000000  0.00000000 -0.70710264  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.70674304  0.00000000  0.00000000  0.00000000  0.70711669 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.70674879 -0.00000000  0.00000000  0.00000000  0.70711092 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000
                           0.79464752  0.00000000  0.00000001  0.00000000  0.18585208  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000001  0.00000000  0.00000000  0.00000000 -0.00000007  0.00000000  0.00000000 -0.00000000
                           0.23636825  0.00000000  0.00000001 -0.00000000  0.78110466 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.70675868  0.00000000  0.00000000  0.00000000  0.70710101

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.70676283 -0.00000000 -0.00000000  0.00000000  0.70709687 -0.00000000

   1    1  |0 0>          -0.00000000  0.03163110 -0.00000000  0.00000000  0.00000000  0.00000116 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.03163192 -0.00000000 -0.00000000  0.00000000  0.00000053  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.03163147 -0.00000000 -0.00000000 -0.00000000 -0.00000171
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.03136413  0.00000000  0.00000000  0.00000000 -0.00410324 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00410399  0.00000000 -0.00000000  0.00000000 -0.03136441 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000039 -0.00000000 -0.00000000  0.00000000  0.00000080 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02236544  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.57714892  0.02000101  0.00000000  0.00000000  0.01633911  0.00000000  0.01526114
                          -0.00066190 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001

   3    1  |1 1>+         -0.00000000  0.00000000 -0.02236587  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.02236645 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.02236726  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00066190 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.57714290 -0.02415127 -0.00000000  0.00000000  0.00915210 -0.00000000  0.01526184

   1    1  |1 1>-         -0.00066191 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                           0.57715260 -0.00414978 -0.00000000  0.00000000  0.02549199 -0.00000000 -0.01526247

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.02236822 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.02236784  0.00000000  0.00000000  0.00000000

   1    1  |0 0>           0.00000000 -0.00000000  0.99949961 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000  0.99949959 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.99949960  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000011  0.99949677  0.00000000 -0.00000000 -0.00237985  0.00000000 -0.00000001
                          -0.00000000 -0.00000029  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000060  0.00237988 -0.00000000  0.00000000  0.99949676 -0.00000000 -0.00000003
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000000 -0.00000000

   6    1  |0 0>           0.02643423  0.00000003 -0.00000000 -0.00000000  0.00000007 -0.00000000  0.99965055
                           0.00003032 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000038


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -399.08741191     -0.00095193     -208.92      0.00000000        0.00      0.0000
     2   1   -399.08741191     -0.00095193     -208.92      0.00000000        0.00      0.0000
     3   1   -399.08741190     -0.00095192     -208.92      0.00000001        0.00      0.0000
     4   1   -399.08741189     -0.00095190     -208.92      0.00000003        0.01      0.0000
     5   1   -399.08741188     -0.00095190     -208.92      0.00000003        0.01      0.0000
     6   1   -399.08554897      0.00091102      199.94      0.00186295      408.87      0.0507
     7   1   -399.08554895      0.00091103      199.95      0.00186296      408.87      0.0507
     8   1   -399.08554894      0.00091104      199.95      0.00186297      408.87      0.0507
     9   1   -399.08470620      0.00175378      384.91      0.00270571      593.84      0.0736
    10   1   -399.04649539      0.03996459     8771.21      0.04091652     8980.14      1.1134
    11   1   -399.04649509      0.03996489     8771.28      0.04091682     8980.20      1.1134
    12   1   -399.04649501      0.03996497     8771.30      0.04091690     8980.22      1.1134
    13   1   -399.04649500      0.03996498     8771.30      0.04091691     8980.22      1.1134
    14   1   -399.04649495      0.03996503     8771.31      0.04091696     8980.23      1.1134
    15   1   -398.98703751      0.09942247    21820.71      0.10037440    22029.63      2.7313

 E0 =   -399.08645998 is the energy of the lowest zeroth-order state
 E1 =   -399.08741191 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.70674721 -0.00000000  0.00000000  0.00000000  0.70711255
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.55826949 -0.00000000 -0.00000000 -0.00000000  0.59525957  0.00000000 -0.00000000 -0.00000000
                                0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.70675712 -0.00000000  0.00000000  0.00000000 -0.70710264  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.70674304  0.00000000  0.00000000  0.00000000  0.70711669 -0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.70674879 -0.00000000  0.00000000  0.00000000  0.70711092 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000
                                0.79464752  0.00000000  0.00000001  0.00000000  0.18585208  0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00000001  0.00000000  0.00000000  0.00000000 -0.00000007  0.00000000  0.00000000 -0.00000000
                                0.23636825  0.00000000  0.00000001 -0.00000000  0.78110466 -0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.70675868  0.00000000  0.00000000  0.00000000  0.70710101

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.70676283 -0.00000000 -0.00000000  0.00000000  0.70709687 -0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.03163110 -0.00000000  0.00000000  0.00000000  0.00000116 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000000  0.03163192 -0.00000000 -0.00000000  0.00000000  0.00000053  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.03163147 -0.00000000 -0.00000000 -0.00000000 -0.00000171
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.03136413  0.00000000  0.00000000  0.00000000 -0.00410324 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00410399  0.00000000 -0.00000000  0.00000000 -0.03136441 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.00000039 -0.00000000 -0.00000000  0.00000000  0.00000080 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02236544  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.57714892  0.02000101  0.00000000  0.00000000  0.01633911  0.00000000  0.01526114
                               -0.00066190 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001

  3  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.02236587  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.02236645 -0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.02236726  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00066190 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.57714290 -0.02415127 -0.00000000  0.00000000  0.00915210 -0.00000000  0.01526184

  7  1     1    1  |1 1>-      -0.00066191 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                                0.57715260 -0.00414978 -0.00000000  0.00000000  0.02549199 -0.00000000 -0.01526247

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.02236822 -0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.02236784  0.00000000  0.00000000  0.00000000

 10  1     1    1  |0 0>        0.00000000 -0.00000000  0.99949961 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000  0.99949959 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.99949960  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000011  0.99949677  0.00000000 -0.00000000 -0.00237985  0.00000000 -0.00000001
                               -0.00000000 -0.00000029  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000060  0.00237988 -0.00000000  0.00000000  0.99949676 -0.00000000 -0.00000003
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.02643423  0.00000003 -0.00000000 -0.00000000  0.00000007 -0.00000000  0.99965055
                                0.00003032 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000038



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%
  2  1     2    1  |1 1>+        31.17%    0.00%    0.00%    0.00%   35.43%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%
  5  1     2    1  |1 0>          0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  6  1     3    1  |1 0>         63.15%    0.00%    0.00%    0.00%    3.45%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         5.59%    0.00%    0.00%    0.00%   61.01%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%
  9  1     3    1  |1 1>-         0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
  2  1     2    1  |1 1>+        33.31%    0.04%    0.00%    0.00%    0.03%    0.00%    0.02%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         33.31%    0.06%    0.00%    0.00%    0.01%    0.00%    0.02%
  7  1     1    1  |1 1>-        33.31%    0.00%    0.00%    0.00%    0.06%    0.00%    0.02%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%   99.90%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   99.90%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.90%    0.00%
 13  1     4    1  |0 0>          0.00%   99.90%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.90%    0.00%    0.00%
 15  1     6    1  |0 0>          0.07%    0.00%    0.00%    0.00%    0.00%    0.00%   99.93%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2596.57       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      181.37       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       160.92     30.01     15.98     83.66     24.92      1.85      0.83      3.43
 REAL TIME  *       182.23 SEC
 DISK USED  *       224.99 MB (local),       11.59 GB (total)
 SF USED    *         3.03 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -398.987037513088

              CI              CI           MULTI         RHF-SCF
   -398.95889649   -399.05738506   -398.49008278   -398.58936941
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
