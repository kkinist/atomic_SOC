
 Working directory              : /wrk/irikura/molpro.hKYffnxE4Z/
 Global scratch directory       : /wrk/irikura/molpro.hKYffnxE4Z/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.hKYffnxE4Z/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Si SO-CI
                                                                                 ! Active space (12/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Si};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=14,sym=1,spin=2}
 
 {multi
     closed,1,0
     wf,sym=1,spin=2;state,3;
 weight,all,99
     wf,sym=1,spin=0;state,6;
 weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=2;state,3; save,5102.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,6; save,5101.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5102.2,5101.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Si SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 25-Feb-24          TIME: 08:15:03  
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

 Library entry SI     S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry SI     P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry SI     D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry SI     F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry SI     G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry SI     H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  SI     14.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   14
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

     230.687 MB (compressed) written to integral file ( 11.9%)

     Node minimum: 17.039 MB, node maximum: 21.234 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   11746161.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   11746161      RECORD LENGTH: 524288

 Memory used in sort:      12.30 MW

 SORT1 READ   241177324. AND WROTE     2015492. INTEGRALS IN      6 RECORDS. CPU TIME:     1.10 SEC, REAL TIME:     1.13 SEC
 SORT2 READ    24831399. AND WROTE   141159946. INTEGRALS IN    864 RECORDS. CPU TIME:     0.28 SEC, REAL TIME:     0.31 SEC

 Node minimum:    11745169.  Node maximum:    11770866. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9  101112131415 7 8 910  1112131415 7 8 91011
                                       12131415 7 8 9101112  131415 7 8 910111213  1415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  19202111121314151617  18192021111213141516  1718192021

 Eigenvalues of metric

         1 0.399E-05 0.522E-03 0.210E-02 0.210E-02 0.210E-02 0.210E-02 0.210E-02 0.274E-02
         2 0.307E-04 0.307E-04 0.307E-04 0.559E-02 0.559E-02 0.559E-02 0.208E-01 0.208E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.75      3.48
 REAL TIME  *         4.48 SEC
 DISK USED  *        30.55 MB (local),      849.21 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   5   3
 Initial beta  occupancy:   3   3

 NELEC=   14   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -224.07655330    -224.07655330     0.00D+00     0.11D+00     0     0       0.06      0.12    start
   2     -279.75888205     -55.68232875     0.28D+00     0.14D+00     1     0       0.06      0.18    diag2
   3     -287.79778826      -8.03890621     0.23D+00     0.50D-01     2     0       0.07      0.25    diag2
   4     -289.25333451      -1.45554625     0.66D-01     0.32D-01     3     0       0.07      0.32    diag2
   5     -289.39584366      -0.14250915     0.54D-02     0.59D-02     4     0       0.06      0.38    diag2
   6     -289.45294139      -0.05709773     0.23D-02     0.41D-02     5     0       0.07      0.45    diag2
   7     -289.45750896      -0.00456758     0.88D-03     0.16D-02     6     0       0.07      0.52    diag2
   8     -289.45762791      -0.00011895     0.12D-03     0.29D-03     7     0       0.06      0.58    fixocc
   9     -289.45763290      -0.00000499     0.28D-04     0.72D-04     8     0       0.07      0.65    diag2
  10     -289.45763322      -0.00000032     0.10D-04     0.18D-04     9     0       0.07      0.72    diag2/orth
  11     -289.45763325      -0.00000003     0.22D-05     0.44D-05     9     0       0.06      0.78    diag2
  12     -289.45763325      -0.00000000     0.14D-06     0.30D-06     9     0       0.07      0.85    diag2
  13     -289.45763325      -0.00000000     0.37D-07     0.61D-07     0     0       0.07      0.92    diag

 Final alpha occupancy:   3   5
 Final beta  occupancy:   3   3

 !RHF STATE 1.1 Energy               -289.457633247141
  RHF One-electron energy            -401.394399978064
  RHF Two-electron energy             111.936766730923
  RHF Kinetic energy                  293.218060835685
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.987175320723

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.97611     1  1  s    0.97072
    2.1     2.00000    -6.18239     1  2  s    1.02793
    3.1     2.00000    -0.54170     1  2  s   -0.28904    1  9  s    0.37423    1 10  s    0.61777
    1.2     2.00000    -4.25519     1  1  px   0.80034    1  1  py   0.29013    1  1  pz  -0.52027
    2.2     2.00000    -4.25409     1  1  px  -0.45875    1  1  py   0.86029
    3.2     2.00000    -4.25409     1  1  px   0.38290    1  1  py   0.42049    1  1  pz   0.82352
    4.2     1.00000    -0.29685     1  8  py   0.28905    1  9  py   0.45942
    5.2     1.00000    -0.29685     1  8  pz   0.27664    1  9  pz   0.43969


 HOMO      5.2    -0.296853 =      -8.0778eV
 LUMO      6.2    -0.016228 =      -0.4416eV
 LUMO-HOMO         0.280625 =       7.6362eV

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
 CPU TIMES  *         4.67      0.92      3.48
 REAL TIME  *         6.76 SEC
 DISK USED  *        34.69 MB (local),      898.87 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     208 (   99  109)

 State symmetry 1

 Number of active electrons:  12    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:             186   (216 determinants, 448 intermediate states)

 State symmetry 2

 Number of active electrons:  12    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             184   (400 determinants, 784 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.898D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.394D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.130D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 5 3 1   2 6 5 4 3151412 9 8   7111310 4 5 2 6 3 1  151214 91011 7 813 4
                                        2 5 6 3 1151214 8 9  11 71310 4 2 5 2 6 1  151214 9 811 71013 4   3 5 3 6 4 2 5 3 6 1
                                       151214 8 9 7111310 4   2 5 3 6 1 4 2 5 3 6   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.504D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.444D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.495D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.443D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.494D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.507D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 3 1 2 3 1 2   3 110 7 4 5 6 8 510   7 4 6 8 9 5 2 3 110   7 4 6 8 9 515191711
                                       14182012132116 1 2 3  10 4 7 8 6 9 9151917  141118201213211610 4   7 5 6 9 8 1 3 21519
                                       17141118201312211610   4 7 5 6 8 9 1 3 210   4 7 5 6 8 9 1 3 2 1   3 2 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  953  ( 2 closed/active, 99 closed/virtual, 0 active/active, 852 active/virtual )
 Total number of variables:    4001
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9   12    0   -289.44599891    -289.46845325   -0.02245434    0.06614084 0.00004892 0.00000000  0.38E+00      1.15
   2   10   18    0   -289.46594704    -289.46706242   -0.00111538    0.14556951 0.00000079 0.00000000  0.31E-01      2.61
   3    5   10    0   -289.46706728    -289.46706734   -0.00000006    0.00051980 0.00000010 0.00000000  0.33E-03      3.52
   4    8   14    0   -289.46706734    -289.46706734   -0.00000000    0.00000018 0.00000001 0.00000000  0.18E-06      4.64

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.56E-08)
                       Final energy:   -289.46706734
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -289.467967751483
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22735047
 One electron energy                          -401.42617199
 Two electron energy                           111.95820424
 Virial ratio                                    1.98717929
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -289.467967751339
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22735048
 One electron energy                          -401.42617201
 Two electron energy                           111.95820426
 Virial ratio                                    1.98717929
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -289.467967750953
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22735050
 One electron energy                          -401.42617206
 Two electron energy                           111.95820431
 Virial ratio                                    1.98717929
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -289.427695856178
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.21837134
 One electron energy                          -401.42081248
 Two electron energy                           111.99311662
 Virial ratio                                    1.98707218
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -289.427695856024
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.21837135
 One electron energy                          -401.42081249
 Two electron energy                           111.99311664
 Virial ratio                                    1.98707218
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -289.427695855768
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.21837135
 One electron energy                          -401.42081251
 Two electron energy                           111.99311665
 Virial ratio                                    1.98707218
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -289.427695855082
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.21837137
 One electron energy                          -401.42081256
 Two electron energy                           111.99311670
 Virial ratio                                    1.98707218
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -289.427695855056
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.21837137
 One electron energy                          -401.42081256
 Two electron energy                           111.99311670
 Virial ratio                                    1.98707218
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -289.396502710004
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.18102857
 One electron energy                          -401.31265227
 Two electron energy                           111.91614956
 Virial ratio                                    1.98709150
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999984
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.070044785409
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000254115
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.999999994885
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999993494
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.929965494533
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999997816
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000002200
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.510604858837
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.999999938537
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999993911
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000004575
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.489356721993
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000002184
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999997816
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.419350355754
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999807347
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000011203
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000001932
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.580677783473
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 2 6 3 5 1   4 2 6 3 5 9 712 811  15141013 4 2 6 3 5 1   9 712 81114151013 4
                                        2 6 3 5 1 9 7 81211  14151310 2 4 6 5 3 1   9 712 81514111013 2   4 6 5 3 2 4 6 5 3 1
                                        9 7 8121415111310 2   4 6 5 3 1 2 4 6 5 3   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 3   2 1 4 6 810 5 7 9 4   610 8 5 7 9 3 1 2 4   610 8 5 9 711192113
                                       14161215171820 3 1 2   4 6 810 5 7 9111921  1314161215171820 4 6   810 5 7 9 3 1 21119
                                       211314161215172018 4   610 8 5 7 9 1 3 2 4   6 810 5 9 7 3 1 2 3   1 2 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.94909     1  1  s    0.97038
    2.1     2.00000    -6.20172     1  2  s    1.02703
    3.1     1.96581    -0.53430     1  2  s   -0.28360    1  9  s    0.36989    1 10  s    0.62167
    1.2     1.99998    -4.25118     1  1  py   0.99972
    2.2     1.99998    -4.25118     1  1  px   0.99972
    3.2     1.99998    -4.25118     1  1  pz   0.99972
    4.2     0.67808    -0.06433     1  8  py   0.34482    1  9  py   0.53736
    5.2     0.67808    -0.06433     1  8  px   0.34482    1  9  px   0.53736
    6.2     0.67808    -0.06433     1  8  pz   0.34482    1  9  pz   0.53736
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 22 222a0a      0.00000002      0.00000396      0.99146948
 22 2220aa     -0.00004633      0.99146948     -0.00000396
 22 222aa0      0.99146948      0.00004633     -0.00000002
 20 222aa2     -0.13022136     -0.00000609      0.00000000
 20 2222aa      0.00000609     -0.13022136      0.00000052
 20 222a2a     -0.00000000     -0.00000052     -0.13022135
 
 Energy:     -289.46796775   -289.46796775   -289.46796775
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 22 222020      0.80241257     -0.00011493     -0.00000180      0.00000613     -0.10712526      0.56003885
 22 222002     -0.30843310     -0.00015505      0.00004715     -0.00000628      0.74847226      0.56003888
 22 222a0b     -0.00000483     -0.00000042     -0.00000175      0.70107511      0.00000389     -0.00000000
 22 222b0a      0.00000483      0.00000042      0.00000175     -0.70107511     -0.00000389      0.00000000
 22 2220ba      0.00000458      0.00002790     -0.70107511     -0.00000175      0.00004605      0.00000000
 22 2220ab     -0.00000458     -0.00002790      0.70107511      0.00000175     -0.00004605     -0.00000000
 22 222ba0     -0.00012678     -0.70107507     -0.00002791     -0.00000042     -0.00019747     -0.00000000
 22 222ab0      0.00012678      0.70107507      0.00002791      0.00000042      0.00019747      0.00000000
 22 222200     -0.49397943      0.00026997     -0.00004534      0.00000016     -0.64134701      0.56003887
 20 222202      0.10538303     -0.00001509     -0.00000024      0.00000080     -0.01406905     -0.14027914
 20 222022     -0.06487567      0.00003546     -0.00000596      0.00000002     -0.08422985     -0.14027913
 20 222220     -0.04050737     -0.00002036      0.00000619     -0.00000083      0.09829891     -0.14027913
 20 2222ba     -0.00000060     -0.00000366      0.09207411      0.00000023     -0.00000605     -0.00000000
 20 2222ab      0.00000060      0.00000366     -0.09207411     -0.00000023      0.00000605      0.00000000
 20 222a2b      0.00000063      0.00000006      0.00000023     -0.09207411     -0.00000051      0.00000000
 20 222b2a     -0.00000063     -0.00000006     -0.00000023      0.09207411      0.00000051     -0.00000000
 20 222ba2      0.00001665      0.09207410      0.00000367      0.00000006      0.00002593      0.00000000
 20 222ab2     -0.00001665     -0.09207410     -0.00000367     -0.00000006     -0.00002593     -0.00000000
 
 Energy:     -289.42769586   -289.42769586   -289.42769586   -289.42769586   -289.42769586   -289.39650271
 


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
 CPU TIMES  *         9.33      4.65      0.92      3.48
 REAL TIME  *        11.97 SEC
 DISK USED  *        45.40 MB (local),        1.00 GB (total)
 SF USED    *        46.02 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -289.4679678   2.0
    -289.4679678   2.0
    -289.4679678   2.0
    -289.4276959   6.0
    -289.4276959   6.0
    -289.4276959   6.0
    -289.4276959   6.0
    -289.4276959   6.0
    -289.3965027   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 14
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:      126 conf      186 CSFs
 N elec internal:      238 conf      378 CSFs
 N-1 el internal:      504 conf     1512 CSFs
 N-2 el internal:      784 conf     4620 CSFs

 Number of electrons in valence space:                     12
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.46796775
     2      -289.46796775
     3      -289.46796775

 Number of blocks in overlap matrix:     5   Smallest eigenvalue:  0.25D-04
 Number of N-2 electron functions:     192
 Number of N-1 electron functions:    1512

 Number of internal configurations:                  186
 Number of singly external configurations:        157188
 Number of doubly external configurations:       2080368
 Total number of contracted configurations:      2237742
 Total number of uncontracted configurations:   50042130

 Diagonal Coupling coefficients finished.               Storage:    319626 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    801258 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.46796775     0.00000000    -0.38393919  0.41D-01  0.17D-01     0.20
    1     2     2     1.00000000     0.00000000  -289.46796775     0.00000000    -0.38341668  0.39D-01  0.17D-01     0.20
    1     3     3     1.00000000     0.00000000  -289.46796775     0.00000000    -0.38362700  0.40D-01  0.17D-01     0.20
    2     1     1     1.05163061    -0.36522579  -289.83319354    -0.36522579    -0.00556219  0.14D-02  0.45D-03     8.94
    2     2     2     1.05196111    -0.36513961  -289.83310736    -0.36513961    -0.00564335  0.15D-02  0.45D-03     8.94
    2     3     3     1.05246319    -0.36500707  -289.83297482    -0.36500707    -0.00576493  0.16D-02  0.46D-03     8.94
    3     1     1     1.04166209    -0.37350790  -289.84147565    -0.00828211    -0.00153078  0.13D-03  0.16D-03    17.61
    3     2     2     1.04159762    -0.37348064  -289.84144839    -0.00834104    -0.00153602  0.14D-03  0.16D-03    17.61
    3     3     3     1.04149940    -0.37344325  -289.84141100    -0.00843617    -0.00154215  0.14D-03  0.17D-03    17.61
    4     1     1     1.04637488    -0.37684299  -289.84481074    -0.00333508    -0.00035429  0.48D-04  0.36D-04    26.29
    4     2     2     1.04633649    -0.37683613  -289.84480388    -0.00335549    -0.00035773  0.50D-04  0.37D-04    26.29
    4     3     3     1.04628681    -0.37682708  -289.84479483    -0.00338383    -0.00036244  0.52D-04  0.37D-04    26.29
    5     1     1     1.04826114    -0.37737679  -289.84534454    -0.00053381    -0.00009094  0.82D-05  0.96D-05    34.96
    5     2     2     1.04827843    -0.37737573  -289.84534348    -0.00053960    -0.00009105  0.85D-05  0.96D-05    34.96
    5     3     3     1.04830481    -0.37737415  -289.84534190    -0.00054707    -0.00009142  0.88D-05  0.96D-05    34.96
    6     1     1     1.04768230    -0.37751996  -289.84548772    -0.00014317    -0.00003557  0.15D-05  0.40D-05    43.49
    6     2     2     1.04769218    -0.37751995  -289.84548770    -0.00014422    -0.00003569  0.15D-05  0.40D-05    43.49
    6     3     3     1.04766803    -0.37751976  -289.84548751    -0.00014561    -0.00003557  0.17D-05  0.40D-05    43.49
    7     1     1     1.04797622    -0.37756790  -289.84553565    -0.00004794    -0.00001365  0.12D-05  0.14D-05    52.07
    7     2     2     1.04797493    -0.37756788  -289.84553563    -0.00004793    -0.00001360  0.12D-05  0.14D-05    52.07
    7     3     3     1.04797496    -0.37756784  -289.84553559    -0.00004809    -0.00001372  0.12D-05  0.15D-05    52.07
    8     1     1     1.04840432    -0.37758715  -289.84555490    -0.00001924    -0.00000493  0.39D-06  0.47D-06    60.57
    8     2     2     1.04840241    -0.37758713  -289.84555488    -0.00001925    -0.00000494  0.38D-06  0.47D-06    60.57
    8     3     3     1.04840764    -0.37758713  -289.84555488    -0.00001929    -0.00000493  0.40D-06  0.48D-06    60.57
    9     1     1     1.04835465    -0.37759431  -289.84556206    -0.00000716    -0.00000221  0.80D-07  0.24D-06    69.18
    9     2     2     1.04835758    -0.37759430  -289.84556205    -0.00000717    -0.00000223  0.74D-07  0.24D-06    69.18
    9     3     3     1.04835999    -0.37759427  -289.84556202    -0.00000714    -0.00000226  0.69D-07  0.24D-06    69.18
   10     1     1     1.04838818    -0.37759714  -289.84556489    -0.00000282    -0.00000102  0.52D-07  0.11D-06    77.76
   10     2     2     1.04838726    -0.37759712  -289.84556487    -0.00000282    -0.00000103  0.52D-07  0.11D-06    77.76
   10     3     3     1.04838577    -0.37759710  -289.84556485    -0.00000283    -0.00000103  0.52D-07  0.11D-06    77.76
   11     1     1     1.04846875    -0.37759844  -289.84556619    -0.00000130    -0.00000043  0.16D-07  0.46D-07    86.25
   11     2     2     1.04846743    -0.37759843  -289.84556618    -0.00000131    -0.00000044  0.15D-07  0.46D-07    86.25
   11     3     3     1.04846619    -0.37759842  -289.84556617    -0.00000132    -0.00000044  0.14D-07  0.47D-07    86.25
   12     1     1     1.04847728    -0.37759899  -289.84556674    -0.00000055    -0.00000022  0.52D-08  0.25D-07    94.88
   12     2     2     1.04847778    -0.37759898  -289.84556673    -0.00000055    -0.00000022  0.50D-08  0.26D-07    94.88
   12     3     3     1.04847822    -0.37759897  -289.84556673    -0.00000055    -0.00000023  0.49D-08  0.26D-07    94.88
   13     1     1     1.04848286    -0.37759925  -289.84556700    -0.00000026    -0.00000011  0.30D-08  0.11D-07   103.60
   13     2     2     1.04848283    -0.37759925  -289.84556700    -0.00000027    -0.00000011  0.30D-08  0.11D-07   103.60
   13     3     3     1.04848266    -0.37759925  -289.84556700    -0.00000027    -0.00000011  0.31D-08  0.11D-07   103.60
   14     1     1     1.04849986    -0.37759938  -289.84556713    -0.00000013    -0.00000005  0.72D-09  0.62D-08   112.29
   14     2     2     1.04849937    -0.37759938  -289.84556713    -0.00000013    -0.00000005  0.63D-09  0.63D-08   112.29
   14     3     3     1.04849885    -0.37759938  -289.84556713    -0.00000013    -0.00000005  0.55D-09  0.65D-08   112.29


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.8%
 P   0.3%   6.2%  45.7%

 Initialization:   0.1%
 Other:           46.8%

 Total CPU:      112.3 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 222220//          -0.0000000  -0.0000000   0.9695584
 22222/0/          -0.0000000   0.9695582   0.0000000
 22222//0           0.9695580   0.0000000   0.0000000
 202222//           0.0000000  -0.0000000  -0.1169019
 20222/2/           0.0000000  -0.1169015   0.0000000
 20222//2          -0.1169011  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.976540   -0.000000   -0.000000
 2           0.000000   -0.000000    0.976540
 3           0.000000    0.976540    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.976540    0.000000   -0.000000
 2           0.000000    0.976540   -0.000000
 3          -0.000000   -0.000000    0.976540


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97653977 (fixed)   0.97659796 (relaxed)   0.97653977 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011918    0.00000000   -0.32024525
 Singles      0.02296706   -0.04182726   -0.04815487
 Pairs        0.02553858    0.00000000   -0.00919926
 Total        1.04862482   -0.04182726   -0.37759938
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46796775
 Nuclear energy                         0.00000000
 Kinetic energy                       293.57225961
 One electron energy                 -401.21035955
 Two electron energy                  111.36479242
 Virial quotient                       -0.98730571
 Correlation energy                    -0.37759938
 !MRCI STATE 1.1 Energy              -289.845567134655

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.86392784 (Davidson, fixed reference)
 Cluster corrected energies          -289.86388065 (Davidson, relaxed reference)
 Cluster corrected energies          -289.86392784 (Davidson, rotated reference)

 Cluster corrected energies          -289.86069104 (Pople, fixed reference)
 Cluster corrected energies          -289.86065105 (Pople, relaxed reference)
 Cluster corrected energies          -289.86069104 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97654000 (fixed)   0.97659819 (relaxed)   0.97654000 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011917    0.00000000   -0.00004291
 Singles      0.02296669   -0.04182697   -0.04815476
 Pairs        0.02553846   -0.33577242   -0.32940171
 Total        1.04862432   -0.37759938   -0.37759938
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46796775
 Nuclear energy                         0.00000000
 Kinetic energy                       293.57227427
 One electron energy                 -401.21036800
 Two electron energy                  111.36480086
 Virial quotient                       -0.98730566
 Correlation energy                    -0.37759938
 !MRCI STATE 2.1 Energy              -289.845567132987

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.86392765 (Davidson, fixed reference)
 Cluster corrected energies          -289.86388047 (Davidson, relaxed reference)
 Cluster corrected energies          -289.86392765 (Davidson, rotated reference)

 Cluster corrected energies          -289.86069088 (Pople, fixed reference)
 Cluster corrected energies          -289.86065089 (Pople, relaxed reference)
 Cluster corrected energies          -289.86069088 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97654025 (fixed)   0.97659843 (relaxed)   0.97654025 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011916    0.00000000   -0.32024613
 Singles      0.02296633   -0.04182667   -0.04815465
 Pairs        0.02553830   -0.00000000   -0.00919861
 Total        1.04862379   -0.04182667   -0.37759938
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46796775
 Nuclear energy                         0.00000000
 Kinetic energy                       293.57229061
 One electron energy                 -401.21037643
 Two electron energy                  111.36480930
 Virial quotient                       -0.98730560
 Correlation energy                    -0.37759938
 !MRCI STATE 3.1 Energy              -289.845567130922

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.86392744 (Davidson, fixed reference)
 Cluster corrected energies          -289.86388027 (Davidson, relaxed reference)
 Cluster corrected energies          -289.86392744 (Davidson, rotated reference)

 Cluster corrected energies          -289.86069071 (Pople, fixed reference)
 Cluster corrected energies          -289.86065072 (Pople, relaxed reference)
 Cluster corrected energies          -289.86069071 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       54.98       700     1000      520     2100     2140     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       122.26    112.92      4.65      0.92      3.48
 REAL TIME  *       131.11 SEC
 DISK USED  *        98.32 MB (local),        1.62 GB (total)
 SF USED    *       525.88 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -289.86392784  AU                              
 SETTING HLSDIAG(2)     =      -289.86392765  AU                              
 SETTING HLSDIAG(3)     =      -289.86392744  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 14
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:      154 conf      184 CSFs
 N elec internal:      266 conf      336 CSFs
 N-1 el internal:      504 conf     1008 CSFs
 N-2 el internal:      784 conf     2688 CSFs

 Number of electrons in valence space:                     12
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.42769586
     2      -289.42769586
     3      -289.42769586
     4      -289.42769586
     5      -289.42769586
     6      -289.39650271

 Number of blocks in overlap matrix:     4   Smallest eigenvalue:  0.15D-06
 Number of N-2 electron functions:     375
 Number of N-1 electron functions:    1008

 Number of internal configurations:                  184
 Number of singly external configurations:        104952
 Number of doubly external configurations:       4062231
 Total number of contracted configurations:      4167367
 Total number of uncontracted configurations:   29166032

 Diagonal Coupling coefficients finished.               Storage:    406732 words, CPU-Time:      0.05 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    841762 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.42769586     0.00000000    -0.38349471  0.44D-01  0.14D-01     0.30
    1     2     2     1.00000000     0.00000000  -289.42769586     0.00000000    -0.38077777  0.44D-01  0.14D-01     0.30
    1     3     3     1.00000000     0.00000000  -289.42769586     0.00000000    -0.38163183  0.45D-01  0.14D-01     0.30
    1     4     4     1.00000000     0.00000000  -289.42769586     0.00000000    -0.38118912  0.45D-01  0.14D-01     0.30
    1     5     5     1.00000000     0.00000000  -289.42769586     0.00000000    -0.38190555  0.44D-01  0.14D-01     0.30
    1     6     6     1.00000000     0.00000000  -289.39650271     0.00000000    -0.35189536  0.13D-01  0.15D-01     0.30
    2     1     1     1.05340165    -0.36742279  -289.79511865    -0.36742279    -0.00787930  0.17D-02  0.48D-03    48.17
    2     2     2     1.05292777    -0.36653026  -289.79422611    -0.36653026    -0.00773513  0.18D-02  0.47D-03    48.17
    2     3     3     1.05292032    -0.36542273  -289.79311858    -0.36542273    -0.00775816  0.19D-02  0.44D-03    48.17
    2     4     4     1.05387689    -0.36517739  -289.79287324    -0.36517739    -0.00800946  0.21D-02  0.44D-03    48.17
    2     5     5     1.05365629    -0.36507187  -289.79276773    -0.36507187    -0.00794551  0.20D-02  0.43D-03    48.17
    2     6     6     1.02697302    -0.34591205  -289.74241476    -0.34591205    -0.00907441  0.17D-02  0.64D-03    48.17
    3     1     1     1.04328928    -0.37909645  -289.80679231    -0.01167366    -0.00278705  0.28D-03  0.26D-03    95.81
    3     2     2     1.04237868    -0.37879622  -289.80649207    -0.01226596    -0.00289269  0.40D-03  0.21D-03    95.81
    3     3     3     1.04159506    -0.37797571  -289.80567156    -0.01255298    -0.00303507  0.48D-03  0.19D-03    95.81
    3     4     4     1.04137223    -0.37782204  -289.80551790    -0.01264466    -0.00303632  0.49D-03  0.19D-03    95.81
    3     5     5     1.04136372    -0.37766509  -289.80536094    -0.01259322    -0.00304609  0.49D-03  0.19D-03    95.81
    3     6     6     1.02541802    -0.36296592  -289.75946863    -0.01705386    -0.00548818  0.87D-03  0.45D-03    95.81
    4     1     1     1.05005800    -0.38499983  -289.81269568    -0.00590337    -0.00103644  0.76D-04  0.91D-04   143.53
    4     2     2     1.04953390    -0.38490275  -289.81259861    -0.00610653    -0.00108491  0.98D-04  0.81D-04   143.53
    4     3     3     1.04960010    -0.38489808  -289.81259394    -0.00692238    -0.00109154  0.92D-04  0.84D-04   143.53
    4     4     4     1.04934277    -0.38479431  -289.81249016    -0.00697226    -0.00114759  0.10D-03  0.87D-04   143.53
    4     5     5     1.04902859    -0.38444424  -289.81214010    -0.00677915    -0.00141575  0.10D-03  0.17D-03   143.53
    4     6     6     1.03756177    -0.37331263  -289.76981534    -0.01034671    -0.00222604  0.16D-03  0.29D-03   143.53
    5     1     1     1.05299351    -0.38640848  -289.81410433    -0.00140865    -0.00042235  0.37D-04  0.41D-04   190.84
    5     2     2     1.05291301    -0.38639663  -289.81409249    -0.00149388    -0.00043269  0.36D-04  0.42D-04   190.84
    5     3     3     1.05327281    -0.38637880  -289.81407466    -0.00148072    -0.00041094  0.40D-04  0.37D-04   190.84
    5     4     4     1.05292100    -0.38635918  -289.81405504    -0.00156487    -0.00044868  0.42D-04  0.41D-04   190.84
    5     5     5     1.05307659    -0.38609406  -289.81378991    -0.00164982    -0.00046565  0.66D-04  0.33D-04   190.84
    5     6     6     1.04031774    -0.37632674  -289.77282945    -0.00301411    -0.00082203  0.11D-03  0.60D-04   190.84
    6     1     1     1.05229527    -0.38700796  -289.81470382    -0.00059949    -0.00018658  0.18D-04  0.14D-04   237.62
    6     2     2     1.05230491    -0.38699947  -289.81469533    -0.00060284    -0.00018718  0.17D-04  0.14D-04   237.62
    6     3     3     1.05247860    -0.38698789  -289.81468374    -0.00060908    -0.00018846  0.18D-04  0.13D-04   237.62
    6     4     4     1.05222799    -0.38698149  -289.81467734    -0.00062231    -0.00019422  0.18D-04  0.14D-04   237.62
    6     5     5     1.05213578    -0.38683494  -289.81453079    -0.00074088    -0.00024320  0.20D-04  0.19D-04   237.62
    6     6     6     1.04122466    -0.37768382  -289.77418653    -0.00135708    -0.00044780  0.43D-04  0.36D-04   237.62
    7     1     1     1.05331455    -0.38729859  -289.81499444    -0.00029063    -0.00010236  0.61D-05  0.80D-05   285.09
    7     2     2     1.05328276    -0.38729195  -289.81498780    -0.00029248    -0.00010532  0.56D-05  0.84D-05   285.09
    7     3     3     1.05316813    -0.38728264  -289.81497850    -0.00029476    -0.00010993  0.58D-05  0.87D-05   285.09
    7     4     4     1.05342851    -0.38728184  -289.81497770    -0.00030036    -0.00010879  0.48D-05  0.93D-05   285.09
    7     5     5     1.05300553    -0.38717987  -289.81487572    -0.00034493    -0.00015777  0.25D-05  0.19D-04   285.09
    7     6     6     1.04380865    -0.37832214  -289.77482485    -0.00063832    -0.00027846  0.55D-05  0.33D-04   285.09
    8     1     1     1.05441041    -0.38744349  -289.81513935    -0.00014491    -0.00005995  0.25D-05  0.62D-05   332.75
    8     2     2     1.05437097    -0.38743887  -289.81513472    -0.00014692    -0.00006198  0.25D-05  0.64D-05   332.75
    8     3     3     1.05433389    -0.38743491  -289.81513077    -0.00015227    -0.00006396  0.30D-05  0.63D-05   332.75
    8     4     4     1.05441300    -0.38742747  -289.81512332    -0.00014563    -0.00006265  0.32D-05  0.63D-05   332.75
    8     5     5     1.05410569    -0.38736276  -289.81505862    -0.00018289    -0.00007822  0.68D-05  0.73D-05   332.75
    8     6     6     1.04546435    -0.37867409  -289.77517680    -0.00035195    -0.00013479  0.12D-04  0.12D-04   332.75
    9     1     1     1.05452647    -0.38751755  -289.81521341    -0.00007406    -0.00003158  0.17D-05  0.30D-05   379.36
    9     2     2     1.05451566    -0.38751417  -289.81521003    -0.00007530    -0.00003248  0.16D-05  0.32D-05   379.36
    9     3     3     1.05448258    -0.38751265  -289.81520851    -0.00007774    -0.00003327  0.17D-05  0.32D-05   379.36
    9     4     4     1.05452556    -0.38750746  -289.81520332    -0.00007999    -0.00003411  0.20D-05  0.31D-05   379.36
    9     5     5     1.05430116    -0.38746561  -289.81516146    -0.00010284    -0.00004707  0.16D-05  0.48D-05   379.36
    9     6     6     1.04611502    -0.37886177  -289.77536448    -0.00018768    -0.00008009  0.57D-05  0.77D-05   379.36
   10     1     1     1.05470245    -0.38756049  -289.81525635    -0.00004294    -0.00002084  0.34D-06  0.22D-05   426.88
   10     2     2     1.05467982    -0.38755769  -289.81525355    -0.00004352    -0.00002170  0.28D-06  0.23D-05   426.88
   10     3     3     1.05464207    -0.38755676  -289.81525261    -0.00004411    -0.00002232  0.28D-06  0.24D-05   426.88
   10     4     4     1.05470932    -0.38755438  -289.81525023    -0.00004691    -0.00002285  0.33D-06  0.25D-05   426.88
   10     5     5     1.05451942    -0.38752682  -289.81522268    -0.00006122    -0.00003269  0.55D-06  0.40D-05   426.88
   10     6     6     1.04691133    -0.37896669  -289.77546940    -0.00010492    -0.00005570  0.66D-06  0.72D-05   426.88
   11     1     1     1.05502322    -0.38758689  -289.81528275    -0.00002640    -0.00001312  0.32D-06  0.14D-05   474.26
   11     2     2     1.05500151    -0.38758512  -289.81528098    -0.00002743    -0.00001370  0.33D-06  0.14D-05   474.26
   11     3     3     1.05498074    -0.38758464  -289.81528050    -0.00002789    -0.00001397  0.39D-06  0.14D-05   474.26
   11     4     4     1.05501488    -0.38758282  -289.81527868    -0.00002845    -0.00001406  0.46D-06  0.15D-05   474.26
   11     5     5     1.05485740    -0.38756522  -289.81526107    -0.00003839    -0.00001891  0.68D-06  0.21D-05   474.26
   11     6     6     1.04753893    -0.37903337  -289.77553608    -0.00006668    -0.00002971  0.21D-05  0.29D-05   474.26
   12     1     1     1.05518013    -0.38760313  -289.81529899    -0.00001624    -0.00000780  0.18D-06  0.84D-06   521.44
   12     2     2     1.05516582    -0.38760182  -289.81529768    -0.00001670    -0.00000819  0.16D-06  0.92D-06   521.44
   12     3     3     1.05514967    -0.38760159  -289.81529744    -0.00001694    -0.00000830  0.14D-06  0.92D-06   521.44
   12     4     4     1.05516600    -0.38760049  -289.81529635    -0.00001767    -0.00000851  0.19D-06  0.90D-06   521.44
   12     5     5     1.05504163    -0.38758770  -289.81528355    -0.00002248    -0.00001205  0.97D-07  0.14D-05   521.44
   12     6     6     1.04787427    -0.37907230  -289.77557501    -0.00003893    -0.00001877  0.62D-06  0.21D-05   521.44
   13     1     1     1.05526674    -0.38761287  -289.81530873    -0.00000974    -0.00000547  0.36D-07  0.66D-06   568.72
   13     2     2     1.05525246    -0.38761183  -289.81530769    -0.00001000    -0.00000573  0.43D-07  0.68D-06   568.72
   13     3     3     1.05523749    -0.38761167  -289.81530752    -0.00001008    -0.00000582  0.51D-07  0.70D-06   568.72
   13     4     4     1.05525249    -0.38761134  -289.81530719    -0.00001085    -0.00000596  0.55D-07  0.72D-06   568.72
   13     5     5     1.05514709    -0.38760283  -289.81529869    -0.00001513    -0.00000868  0.15D-06  0.11D-05   568.72
   13     6     6     1.04816825    -0.37909589  -289.77559860    -0.00002360    -0.00001356  0.17D-06  0.18D-05   568.72
   14     1     1     1.05536366    -0.38761951  -289.81531536    -0.00000664    -0.00000363  0.52D-07  0.40D-06   616.09
   14     2     2     1.05535268    -0.38761884  -289.81531469    -0.00000701    -0.00000385  0.49D-07  0.43D-06   616.09
   14     3     3     1.05534432    -0.38761871  -289.81531457    -0.00000705    -0.00000393  0.49D-07  0.43D-06   616.09
   14     4     4     1.05535267    -0.38761852  -289.81531437    -0.00000718    -0.00000389  0.65D-07  0.44D-06   616.09
   14     5     5     1.05526275    -0.38761283  -289.81530868    -0.00001000    -0.00000546  0.41D-07  0.66D-06   616.09
   14     6     6     1.04841697    -0.37911162  -289.77561433    -0.00001573    -0.00000784  0.28D-06  0.87D-06   616.09
   15     1     1     1.05543368    -0.38762385  -289.81531970    -0.00000434    -0.00000229  0.12D-07  0.26D-06   662.36
   15     2     2     1.05542467    -0.38762335  -289.81531920    -0.00000451    -0.00000243  0.11D-07  0.29D-06   662.36
   15     3     3     1.05541802    -0.38762324  -289.81531910    -0.00000453    -0.00000245  0.10D-07  0.29D-06   662.36
   15     4     4     1.05542598    -0.38762318  -289.81531903    -0.00000466    -0.00000246  0.13D-07  0.28D-06   662.36
   15     5     5     1.05536249    -0.38761900  -289.81531486    -0.00000618    -0.00000351  0.25D-07  0.41D-06   662.36
   15     6     6     1.04858879    -0.37912121  -289.77562392    -0.00000959    -0.00000507  0.37D-07  0.63D-06   662.36
   16     1     1     1.05548564    -0.38762660  -289.81532246    -0.00000275    -0.00000163  0.12D-07  0.20D-06   709.30
   16     2     2     1.05547674    -0.38762623  -289.81532208    -0.00000288    -0.00000172  0.13D-07  0.21D-06   709.30
   16     3     3     1.05547553    -0.38762622  -289.81532207    -0.00000297    -0.00000176  0.15D-07  0.22D-06   709.30
   16     4     4     1.05547018    -0.38762615  -289.81532201    -0.00000298    -0.00000175  0.14D-07  0.21D-06   709.30
   16     5     5     1.05542089    -0.38762339  -289.81531924    -0.00000438    -0.00000266  0.17D-07  0.34D-06   709.30
   16     6     6     1.04872098    -0.37912751  -289.77563022    -0.00000630    -0.00000376  0.46D-07  0.49D-06   709.30
   17     1     1     1.05553275    -0.38762855  -289.81532441    -0.00000195    -0.00000114  0.56D-08  0.13D-06   755.75
   17     2     2     1.05552577    -0.38762830  -289.81532416    -0.00000207    -0.00000122  0.49D-08  0.14D-06   755.75
   17     3     3     1.05552319    -0.38762829  -289.81532415    -0.00000208    -0.00000120  0.65D-08  0.15D-06   755.75
   17     4     4     1.05552144    -0.38762823  -289.81532409    -0.00000208    -0.00000125  0.43D-08  0.15D-06   755.75
   17     5     5     1.05546965    -0.38762634  -289.81532219    -0.00000295    -0.00000172  0.54D-08  0.22D-06   755.75
   17     6     6     1.04882693    -0.37913177  -289.77563448    -0.00000427    -0.00000232  0.24D-07  0.29D-06   755.75
   18     1     1     1.05556373    -0.38762986  -289.81532571    -0.00000130    -0.00000073  0.28D-08  0.86D-07   802.21
   18     2     2     1.05555900    -0.38762968  -289.81532553    -0.00000138    -0.00000078  0.31D-08  0.93D-07   802.21
   18     3     3     1.05555849    -0.38762967  -289.81532553    -0.00000138    -0.00000078  0.31D-08  0.95D-07   802.21
   18     4     4     1.05555551    -0.38762961  -289.81532547    -0.00000138    -0.00000079  0.33D-08  0.95D-07   802.21
   18     5     5     1.05552211    -0.38762825  -289.81532411    -0.00000192    -0.00000112  0.54D-08  0.13D-06   802.21
   18     6     6     1.04891259    -0.37913446  -289.77563717    -0.00000269    -0.00000152  0.41D-08  0.19D-06   802.21
   19     1     1     1.05558849    -0.38763072  -289.81532658    -0.00000087    -0.00000053  0.22D-08  0.66D-07   848.32
   19     2     2     1.05558336    -0.38763062  -289.81532647    -0.00000094    -0.00000057  0.24D-08  0.73D-07   848.32
   19     3     3     1.05558365    -0.38763059  -289.81532644    -0.00000092    -0.00000056  0.21D-08  0.69D-07   848.32
   19     4     4     1.05558084    -0.38763054  -289.81532640    -0.00000093    -0.00000057  0.21D-08  0.71D-07   848.32
   19     5     5     1.05555529    -0.38762963  -289.81532549    -0.00000138    -0.00000087  0.23D-08  0.11D-06   848.32
   19     6     6     1.04897845    -0.37913632  -289.77563903    -0.00000186    -0.00000116  0.78D-08  0.15D-06   848.32
   20     1     1     1.05561349    -0.38763135  -289.81532720    -0.00000062    -0.00000038  0.87D-09  0.44D-07   894.84
   20     2     2     1.05560740    -0.38763127  -289.81532713    -0.00000066    -0.00000039  0.11D-08  0.49D-07   894.84
   20     3     3     1.05560912    -0.38763125  -289.81532711    -0.00000067    -0.00000041  0.93D-09  0.49D-07   894.84
   20     4     4     1.05560683    -0.38763121  -289.81532707    -0.00000067    -0.00000042  0.94D-09  0.52D-07   894.84
   20     5     5     1.05557845    -0.38763058  -289.81532644    -0.00000095    -0.00000057  0.17D-08  0.74D-07   894.84
   20     6     6     1.04902799    -0.37913761  -289.77564032    -0.00000129    -0.00000074  0.16D-08  0.96D-07   894.84
   21     1     1     1.05563081    -0.38763177  -289.81532763    -0.00000042    -0.00000025  0.88D-09  0.30D-07   942.44
   21     2     2     1.05562741    -0.38763172  -289.81532757    -0.00000045    -0.00000026  0.81D-09  0.33D-07   942.44
   21     3     3     1.05562732    -0.38763170  -289.81532756    -0.00000045    -0.00000026  0.88D-09  0.33D-07   942.44
   21     4     4     1.05562559    -0.38763167  -289.81532752    -0.00000046    -0.00000027  0.84D-09  0.34D-07   942.44
   21     5     5     1.05560487    -0.38763121  -289.81532707    -0.00000063    -0.00000038  0.88D-09  0.45D-07   942.44
   21     6     6     1.04907118    -0.37913844  -289.77564115    -0.00000083    -0.00000049  0.12D-08  0.64D-07   942.44
   22     1     1     1.05564328    -0.38763206  -289.81532791    -0.00000029    -0.00000018  0.35D-09  0.22D-07   989.63
   22     2     2     1.05564060    -0.38763203  -289.81532788    -0.00000031    -0.00000019  0.39D-09  0.25D-07   989.63
   22     3     3     1.05564058    -0.38763201  -289.81532787    -0.00000031    -0.00000019  0.37D-09  0.24D-07   989.63
   22     4     4     1.05563924    -0.38763198  -289.81532784    -0.00000031    -0.00000020  0.41D-09  0.25D-07   989.63
   22     5     5     1.05562460    -0.38763168  -289.81532753    -0.00000046    -0.00000030  0.83D-09  0.39D-07   989.63
   22     6     6     1.04910601    -0.37913904  -289.77564175    -0.00000059    -0.00000038  0.91D-09  0.50D-07   989.63
   23     1     1     1.05565592    -0.38763227  -289.81532812    -0.00000021    -0.00000013  0.26D-09  0.15D-07  1036.87
   23     2     2     1.05565259    -0.38763225  -289.81532810    -0.00000022    -0.00000014  0.31D-09  0.17D-07  1036.87
   23     3     3     1.05565348    -0.38763224  -289.81532809    -0.00000023    -0.00000014  0.29D-09  0.17D-07  1036.87
   23     4     4     1.05565233    -0.38763221  -289.81532807    -0.00000023    -0.00000015  0.29D-09  0.19D-07  1036.87
   23     5     5     1.05563737    -0.38763200  -289.81532785    -0.00000032    -0.00000020  0.41D-09  0.26D-07  1036.87
   23     6     6     1.04913114    -0.37913946  -289.77564217    -0.00000042    -0.00000025  0.34D-09  0.33D-07  1036.87
   24     1     1     1.05566581    -0.38763241  -289.81532827    -0.00000014    -0.00000009  0.21D-09  0.11D-07  1083.98
   24     2     2     1.05566352    -0.38763240  -289.81532825    -0.00000015    -0.00000009  0.17D-09  0.12D-07  1083.98
   24     3     3     1.05566354    -0.38763239  -289.81532825    -0.00000015    -0.00000009  0.19D-09  0.12D-07  1083.98
   24     4     4     1.05566245    -0.38763237  -289.81532823    -0.00000016    -0.00000010  0.18D-09  0.12D-07  1083.98
   24     5     5     1.05565043    -0.38763222  -289.81532807    -0.00000022    -0.00000013  0.24D-09  0.16D-07  1083.98
   24     6     6     1.04915296    -0.37913973  -289.77564244    -0.00000027    -0.00000017  0.21D-09  0.23D-07  1083.98
   25     1     1     1.05567301    -0.38763251  -289.81532837    -0.00000010    -0.00000006  0.96D-10  0.78D-08  1130.53
   25     2     2     1.05567140    -0.38763250  -289.81532836    -0.00000011    -0.00000007  0.12D-09  0.87D-08  1130.53
   25     3     3     1.05567133    -0.38763250  -289.81532835    -0.00000011    -0.00000007  0.12D-09  0.83D-08  1130.53
   25     4     4     1.05567055    -0.38763248  -289.81532834    -0.00000011    -0.00000007  0.13D-09  0.87D-08  1130.53
   25     5     5     1.05566169    -0.38763238  -289.81532823    -0.00000016    -0.00000011  0.25D-09  0.14D-07  1130.53
   25     6     6     1.04917217    -0.37913993  -289.77564264    -0.00000020    -0.00000013  0.18D-09  0.17D-07  1130.53
   26     1     1     1.05571535    -0.38763275  -289.81532861    -0.00000024    -0.00000002  0.13D-09  0.26D-08  1148.30
   26     2     2     1.05567301    -0.38763251  -289.81532837    -0.00000001    -0.00000006  0.96D-10  0.78D-08  1148.30
   26     3     3     1.05567159    -0.38763250  -289.81532836    -0.00000001    -0.00000007  0.11D-09  0.87D-08  1148.30
   26     4     4     1.05567133    -0.38763250  -289.81532835    -0.00000002    -0.00000007  0.12D-09  0.83D-08  1148.30
   26     5     5     1.05567055    -0.38763248  -289.81532834    -0.00000010    -0.00000007  0.13D-09  0.87D-08  1148.30
   26     6     6     1.04926157    -0.37914040  -289.77564311    -0.00000047    -0.00000002  0.21D-09  0.31D-08  1148.30


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.2%
 P   0.1%   3.7%  60.7%

 Initialization:   0.0%
 Other:           35.3%

 Total CPU:     1148.3 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222/\0           0.0000083  -0.0008779  -0.0000064   0.9662590  -0.0049854   0.0000000
 22222/0\          -0.0003049  -0.0004134   0.0012819   0.0049850   0.9662588   0.0000000
 222220/\          -0.0001035   0.9661065  -0.0178231   0.0008799   0.0004324   0.0000000
 22222002          -0.0892825   0.0144499   0.7837562   0.0000136  -0.0010618   0.5488809
 22222200           0.7234949  -0.0057260  -0.3145688  -0.0000102   0.0006432   0.5488809
 22222020          -0.6342123  -0.0087239  -0.4691854  -0.0000034   0.0004186   0.5488805
 20222022           0.0871376  -0.0006896  -0.0378852  -0.0000012   0.0000775  -0.1280522
 20222202          -0.0763847  -0.0010507  -0.0565067  -0.0000004   0.0000504  -0.1280521
 20222220          -0.0107543   0.0017403   0.0943909   0.0000016  -0.0001279  -0.1280519
 20222/\2          -0.0000010   0.0001057   0.0000008  -0.1163694   0.0006004  -0.0000000
 20222/2\           0.0000367   0.0000498  -0.0001544  -0.0006004  -0.1163689   0.0000000
 202222/\           0.0000125  -0.1163521   0.0021465  -0.0001060  -0.0000521  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222/\0  15.1     0.0000007  -0.0000705  -0.0000005   0.0776034  -0.0004004   0.0000000
 2\222/\0  14.1    -0.0773666  -0.0001275  -0.0064620   0.0000004  -0.0000159  -0.0035781
 2\2220/\  11.1     0.0330930   0.0012991   0.0702245   0.0000009  -0.0000822  -0.0035789
 2\222/0\  12.1    -0.0000216  -0.0000292   0.0000907   0.0003527   0.0683732   0.0000000
 2\2220/\  12.1    -0.0000073   0.0683624  -0.0012612   0.0000623   0.0000306   0.0000000
 2\222/0\  13.1     0.0480380  -0.0011200  -0.0609864  -0.0000013   0.0000956   0.0035784

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.851996    0.000008   -0.000104   -0.000307   -0.470333    0.000000
 2          -0.008767   -0.000884    0.973049   -0.000416    0.015666    0.000000
 3          -0.470261   -0.000006   -0.017951    0.001291    0.851869    0.000001
 4          -0.000002    0.973203    0.000886    0.005021    0.000017   -0.000000
 5           0.000351   -0.005021    0.000435    0.973203   -0.001272   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.976111

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.973196    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.973215    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.973216    0.000000    0.000000    0.000001
 4           0.000000   -0.000000    0.000000    0.973216    0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.973216   -0.000000
 6           0.000000    0.000000    0.000001   -0.000000   -0.000000    0.976111


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.85199586 (fixed)   0.97325486 (relaxed)   0.97319592 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012114    0.00000000   -0.32204348
 Singles      0.02708597   -0.04765210   -0.05507558
 Pairs        0.02863613   -0.00000017   -0.01051369
 Total        1.05584324   -0.04765227   -0.38763275
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42769586
 Nuclear energy                         0.00000000
 Kinetic energy                       293.55980604
 One electron energy                 -401.14364770
 Two electron energy                  111.32831909
 Virial quotient                       -0.98724458
 Correlation energy                    -0.38763275
 !MRCI STATE 1.1 Energy              -289.815328605984

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.83697527 (Davidson, fixed reference)
 Cluster corrected energies          -289.83692570 (Davidson, relaxed reference)
 Cluster corrected energies          -289.83697527 (Davidson, rotated reference)

 Cluster corrected energies          -289.83405628 (Pople, fixed reference)
 Cluster corrected energies          -289.83401178 (Pople, relaxed reference)
 Cluster corrected energies          -289.83405628 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97304929 (fixed)   0.97327438 (relaxed)   0.97321537 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012127    0.00000000   -0.32205461
 Singles      0.02708826   -0.04765393   -0.05507857
 Pairs        0.02859150   -0.00000001   -0.01049933
 Total        1.05580103   -0.04765393   -0.38763251
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42769586
 Nuclear energy                         0.00000000
 Kinetic energy                       293.55997057
 One electron energy                 -401.14385110
 Two electron energy                  111.32852273
 Virial quotient                       -0.98724403
 Correlation energy                    -0.38763251
 !MRCI STATE 2.1 Energy              -289.815328368201

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.83695866 (Davidson, fixed reference)
 Cluster corrected energies          -289.83690904 (Davidson, relaxed reference)
 Cluster corrected energies          -289.83695866 (Davidson, rotated reference)

 Cluster corrected energies          -289.83404135 (Pople, fixed reference)
 Cluster corrected energies          -289.83399680 (Pople, relaxed reference)
 Cluster corrected energies          -289.83404135 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.85186861 (fixed)   0.97327503 (relaxed)   0.97321603 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012126   -0.00000000   -0.32205444
 Singles      0.02708843   -0.04765397   -0.05507869
 Pairs        0.02858991   -0.00000059   -0.01049937
 Total        1.05579960   -0.04765456   -0.38763250
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42769586
 Nuclear energy                         0.00000000
 Kinetic energy                       293.55995552
 One electron energy                 -401.14384394
 Two electron energy                  111.32851558
 Virial quotient                       -0.98724408
 Correlation energy                    -0.38763251
 !MRCI STATE 3.1 Energy              -289.815328360522

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.83695810 (Davidson, fixed reference)
 Cluster corrected energies          -289.83690848 (Davidson, relaxed reference)
 Cluster corrected energies          -289.83695810 (Davidson, rotated reference)

 Cluster corrected energies          -289.83404084 (Pople, fixed reference)
 Cluster corrected energies          -289.83399630 (Pople, relaxed reference)
 Cluster corrected energies          -289.83404084 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97320278 (fixed)   0.97327515 (relaxed)   0.97321613 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012130    0.00000000   -0.32205487
 Singles      0.02708849   -0.04765419   -0.05507870
 Pairs        0.02858960    0.00000000   -0.01049893
 Total        1.05579938   -0.04765419   -0.38763250
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42769586
 Nuclear energy                         0.00000000
 Kinetic energy                       293.55997244
 One electron energy                 -401.14385631
 Two electron energy                  111.32852796
 Virial quotient                       -0.98724402
 Correlation energy                    -0.38763250
 !MRCI STATE 4.1 Energy              -289.815328352911

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.83695801 (Davidson, fixed reference)
 Cluster corrected energies          -289.83690837 (Davidson, relaxed reference)
 Cluster corrected energies          -289.83695801 (Davidson, rotated reference)

 Cluster corrected energies          -289.83404076 (Pople, fixed reference)
 Cluster corrected energies          -289.83399620 (Pople, relaxed reference)
 Cluster corrected energies          -289.83404076 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97320254 (fixed)   0.97327551 (relaxed)   0.97321649 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012131    0.00000000   -0.32205502
 Singles      0.02708863   -0.04765426   -0.05507876
 Pairs        0.02858867    0.00000000   -0.01049870
 Total        1.05579861   -0.04765426   -0.38763248
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42769586
 Nuclear energy                         0.00000000
 Kinetic energy                       293.55997500
 One electron energy                 -401.14386117
 Two electron energy                  111.32853283
 Virial quotient                       -0.98724401
 Correlation energy                    -0.38763248
 !MRCI STATE 5.1 Energy              -289.815328337698

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.83695769 (Davidson, fixed reference)
 Cluster corrected energies          -289.83690805 (Davidson, relaxed reference)
 Cluster corrected energies          -289.83695769 (Davidson, rotated reference)

 Cluster corrected energies          -289.83404047 (Pople, fixed reference)
 Cluster corrected energies          -289.83399591 (Pople, relaxed reference)
 Cluster corrected energies          -289.83404047 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97611064 (fixed)   0.97624341 (relaxed)   0.97611064 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00027207    0.00000000   -0.00009828
 Singles      0.00624717   -0.01951037   -0.02084626
 Pairs        0.04302781   -0.35963003   -0.35819586
 Total        1.04954704   -0.37914040   -0.37914040
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.39650271
 Nuclear energy                         0.00000000
 Kinetic energy                       293.52756623
 One electron energy                 -401.01036537
 Two electron energy                  111.23472226
 Virial quotient                       -0.98721782
 Correlation energy                    -0.37914040
 !MRCI STATE 6.1 Energy              -289.775643111190

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79442840 (Davidson, fixed reference)
 Cluster corrected energies          -289.79432016 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79442840 (Davidson, rotated reference)

 Cluster corrected energies          -289.79182637 (Pople, fixed reference)
 Cluster corrected energies          -289.79173003 (Pople, relaxed reference)
 Cluster corrected energies          -289.79182637 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      247.18       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1274.46   1152.19    112.92      4.65      0.92      3.48
 REAL TIME  *      1330.79 SEC
 DISK USED  *       290.52 MB (local),        3.88 GB (total)
 SF USED    *         1.79 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -289.83697527  AU                              
 SETTING HLSDIAG(5)     =      -289.83695866  AU                              
 SETTING HLSDIAG(6)     =      -289.83695810  AU                              
 SETTING HLSDIAG(7)     =      -289.83695801  AU                              
 SETTING HLSDIAG(8)     =      -289.83695769  AU                              
 SETTING HLSDIAG(9)     =      -289.79442840  AU                              


         HLSDIAG
    -289.8639278
    -289.8639276
    -289.8639274
    -289.8369753
    -289.8369587
    -289.8369581
    -289.8369580
    -289.8369577
    -289.7944284
                                                  

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

 Time for Seward_LS:      13.56 sec

       38754150. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    40780 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     13.56 sec, REAL time:     14.42 sec


 SORTLS1 read   166946497. and wrote   166946497. SO integrals in   660 records. CPU time:      1.48 sec, REAL time:      2.32 sec
 SORTLS2 read   166946497. and wrote   839252487. SO integrals in    36 records. CPU time:      0.97 sec, REAL time:      1.36 sec

 FILE SIZES: FILE 1:  2718.2 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2718.2 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2592.26       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      247.18       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1291.09     16.63   1152.19    112.92      4.65      0.92      3.48
 REAL TIME  *      1349.55 SEC
 DISK USED  *       290.80 MB (local),       12.36 GB (total)
 SF USED    *         2.51 GB
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
  
 Wavefunction restored from record  5102.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -289.845567   -289.845567   -289.845567
 Replaced energies:   -289.863928   -289.863928   -289.863927

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -289.815329   -289.815328   -289.815328   -289.815328   -289.815328   -289.775643
 Replaced energies:   -289.836975   -289.836959   -289.836958   -289.836958   -289.836958   -289.794428



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -289.86392784

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      52.21       0.00       0.00       0.00       0.00      -0.02
                           -0.00       0.00      -0.00       0.00      -0.00      52.21       0.00       0.00       0.00      -0.01

    2   2.1  1.0  1.0       0.00       0.04       0.00     -52.21       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      73.84       0.00       0.00       0.00       0.00       0.00       0.00      48.43

    3   3.1  1.0  1.0       0.00       0.00       0.09      -0.00       0.00       0.00       0.00       0.00       0.00      55.24
                            0.00     -73.84       0.00     -52.21      -0.00      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00     -52.21      -0.00       0.00       0.00       0.00       0.00      52.21       0.00       0.00
                           -0.00      -0.00      52.21       0.00       0.00       0.00       0.00      -0.00      52.21       9.64

    5   2.1  1.0  0.0      52.21       0.00       0.00       0.00       0.04       0.00     -52.21       0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.01

    6   3.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.09      -0.00       0.00       0.00       0.00
                          -52.21      -0.00       0.00      -0.00      -0.00       0.00     -52.21      -0.00      -0.00       0.02

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00     -52.21      -0.00       0.00       0.00       0.00      -0.02
                           -0.00      -0.00      -0.00      -0.00      -0.00      52.21       0.00      -0.00       0.00       0.01

    8   2.1  1.0 -1.0       0.00       0.00       0.00      52.21       0.00       0.00       0.00       0.04       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     -73.84     -48.43

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.09      55.24
                           -0.00      -0.00      -0.00     -52.21      -0.00       0.00      -0.00      73.84      -0.00      -0.00

   10   1.1  0.0  0.0      -0.02      -0.00      55.24       0.00       0.00       0.00      -0.02      -0.00      55.24    5915.40
                            0.01     -48.43      -0.00      -9.64       0.01      -0.02      -0.01      48.43       0.00       0.00

   11   2.1  0.0  0.0      -0.02       0.05      -0.44       0.00       0.00       0.00      -0.02       0.05      -0.44       0.00
                          -52.16      -0.67       0.05       1.56     -73.77      -0.03      52.16       0.67      -0.05      -0.00

   12   3.1  0.0  0.0       0.07       0.00     -24.02       0.00       0.00       0.00       0.07       0.00     -24.02       0.00
                            0.96     -35.83       0.00      84.63       1.36       0.10      -0.96      35.83      -0.00      -0.00

   13   4.1  0.0  0.0       0.27     -52.17      -0.00       0.00       0.00       0.00       0.27     -52.17      -0.00       0.00
                           -0.05      -0.00     -52.17       0.00      -0.07       0.38       0.05       0.00      52.17      -0.00

   14   5.1  0.0  0.0      52.17       0.27       0.05       0.00       0.00       0.00      52.17       0.27       0.05       0.00
                           -0.02       0.03       0.27      -0.11      -0.03      73.78       0.02      -0.03      -0.27      -0.00

   15   6.1  0.0  0.0      -0.00       0.00     -86.43       0.00       0.00       0.00      -0.00       0.00     -86.43       0.00
                            0.00     -86.44      -0.00    -122.23      -0.00      -0.00      -0.00      86.44       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.02       0.07       0.27      52.17      -0.00
                           52.16      -0.96       0.05       0.02      -0.00

    2   2.1  1.0  1.0       0.05       0.00     -52.17       0.27       0.00
                            0.67      35.83       0.00      -0.03      86.44

    3   3.1  1.0  1.0      -0.44     -24.02      -0.00       0.05     -86.43
                           -0.05      -0.00      52.17      -0.27       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -1.56     -84.63      -0.00       0.11     122.23

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           73.77      -1.36       0.07       0.03       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.10      -0.38     -73.78       0.00

    7   1.1  1.0 -1.0      -0.02       0.07       0.27      52.17      -0.00
                          -52.16       0.96      -0.05      -0.02       0.00

    8   2.1  1.0 -1.0       0.05       0.00     -52.17       0.27       0.00
                           -0.67     -35.83      -0.00       0.03     -86.44

    9   3.1  1.0 -1.0      -0.44     -24.02      -0.00       0.05     -86.43
                            0.05       0.00     -52.17       0.27      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5919.05       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5919.17       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5919.19       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5919.26       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15253.36
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -289.86392784 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      73.838      -0.000       0.000

    2    1  |1 1>+              0.000       0.042       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.087       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -73.838      -0.000       0.000       0.000     -73.838

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     -73.838
                                0.000      -0.000      73.838       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.042       0.000      73.838       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.087       0.000      -0.000
                              -73.838      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      73.838       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000     -73.838       0.000      -0.000       0.000       0.042
                               -0.000      -0.000      73.838      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000     -73.838       0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.023      -0.001      78.123       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -9.640       0.008      -0.023       0.008     -68.486

    2    1  |0 0>              -0.032       0.067      -0.618       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       1.560     -73.767      -0.032     -73.768      -0.942

    3    1  |0 0>               0.098       0.000     -33.969       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      84.627       1.361       0.098       1.361     -50.667

    4    1  |0 0>               0.381     -73.781      -0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.001      -0.067       0.381      -0.067      -0.000

    5    1  |0 0>              73.778       0.381       0.069       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.115      -0.033      73.777      -0.033       0.045

    6    1  |0 0>              -0.000       0.000    -122.238       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -122.234      -0.000      -0.000       0.000    -122.240

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.023      -0.032       0.098       0.381      73.778      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.001       0.067       0.000     -73.781       0.381       0.000
                               73.838       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      78.123      -0.618     -33.969      -0.001       0.069    -122.238
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       9.640      -1.560     -84.627      -0.001       0.115     122.234

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.008      73.767      -1.361       0.067       0.033       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.023       0.032      -0.098      -0.381     -73.777       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.008      73.768      -1.361       0.067       0.033      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      68.486       0.942      50.667       0.000      -0.045     122.240

    3    1  |1 1>-              0.087       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.001      -0.067      -0.000      73.782      -0.381       0.000

    1    1  |0 0>               0.000    5915.404       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5919.050       0.000       0.000       0.000       0.000
                                0.067      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5919.173       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5919.194       0.000       0.000
                              -73.782      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5919.263       0.000
                                0.381      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15253.364
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -289.86461376    -0.00068592     -150.54      0.00000000        0.00      0.0000
    2  -289.86426417    -0.00033633      -73.82      0.00034959       76.73      0.0095
    3  -289.86426407    -0.00033623      -73.79      0.00034969       76.75      0.0095
    4  -289.86426398    -0.00033614      -73.77      0.00034979       76.77      0.0095
    5  -289.86359981     0.00032803       71.99      0.00101395      222.54      0.0276
    6  -289.86359980     0.00032804       72.00      0.00101397      222.54      0.0276
    7  -289.86359969     0.00032814       72.02      0.00101407      222.56      0.0276
    8  -289.86359960     0.00032824       72.04      0.00101416      222.58      0.0276
    9  -289.86359959     0.00032825       72.04      0.00101418      222.59      0.0276
   10  -289.83696679     0.02696105     5917.27      0.02764698     6067.81      0.7523
   11  -289.83695018     0.02697766     5920.91      0.02766358     6071.45      0.7528
   12  -289.83694962     0.02697822     5921.04      0.02766415     6071.58      0.7528
   13  -289.83694952     0.02697831     5921.06      0.02766424     6071.60      0.7528
   14  -289.83694921     0.02697863     5921.12      0.02766455     6071.67      0.7528
   15  -289.79441514     0.06951270    15256.27      0.07019863    15406.82      1.9102

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000 -0.00000000  0.70731649  0.00000000  0.00000032 -0.00000089 -0.70678443 -0.00000363
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.70721473 -0.00000018  0.00000072  0.00000363 -0.70688624
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.57718272  0.00000000  0.00000000  0.00000000  0.20029676  0.00004197  0.00001081 -0.00000055
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57740604  0.00000000 -0.00000000 -0.00000000  0.78545310  0.00017745  0.00000337 -0.00000034

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.70700499 -0.00000000 -0.00000000 -0.00016064  0.70709600 -0.00000089  0.00000072

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.70689701  0.00000001 -0.00000032  0.00000089  0.70720397  0.00000364

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.70720856  0.00000000  0.00000000 -0.00016059  0.70689239 -0.00000089  0.00000072

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.57729844  0.00000000  0.00000000 -0.00000000 -0.58534285 -0.00013552  0.00000744 -0.00000021

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000001  0.70699881  0.00000018 -0.00000072 -0.00000364  0.70710218

   1    1  |0 0>          -0.00000200  0.00000000  0.00000000  0.00000000  0.00288671  0.00000265 -0.00000587 -0.00000014
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000002 -0.00000262  0.00000000 -0.00000000  0.00032914 -0.01783909 -0.00000761  0.00001619
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000125  0.00000005 -0.00000001 -0.00000000  0.01760365  0.00033308  0.00002372  0.00000011
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000003  0.00000259  0.00000027 -0.00001623  0.00009214 -0.01784216
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000521 -0.00000001 -0.00002231 -0.00000797  0.01784095  0.00009215
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.01374336  0.00000000 -0.00000000 -0.00000000  0.00000178  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000957 -0.00000398 -0.00000540  0.00001673  0.00006527  0.01261539 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000044 -0.00000011  0.00001145  0.00000008 -0.01261622  0.00006528  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.79149599  0.01336758 -0.00010581 -0.00580830 -0.00000018  0.00001187 -0.00793476
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.22223978  0.00164979 -0.00026699 -0.01447075 -0.00000024  0.00001960  0.00793451

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000315 -0.00000135  0.01261416 -0.00023287  0.00001148  0.00000565  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000958  0.00000398  0.00000540 -0.00001673 -0.00006527 -0.01261552  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000315 -0.00000135  0.01261423 -0.00023288  0.00001148  0.00000565 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.56905611  0.01171827  0.00016122  0.00866416  0.00000006 -0.00000773  0.00793493

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000044  0.00000011 -0.00001145 -0.00000008  0.01261640 -0.00006528  0.00000000

   1    1  |0 0>          -0.01761814  0.99984062  0.00000040  0.00002051 -0.00000000 -0.00000001  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00005124 -0.00000040  0.99984082 -0.00001335 -0.00000076  0.00000019  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00288365 -0.00002053  0.00001335  0.99984083 -0.00000068  0.00000041  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000016  0.00000000  0.00000076  0.00000068  0.99984081 -0.00001496  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000960  0.00000001 -0.00000019 -0.00000041  0.00001496  0.99984083 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000155 -0.00000001 -0.00000000 -0.00000003 -0.00000000  0.00000000  0.99990556
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -289.86461376     -0.00068592     -150.54      0.00000000        0.00      0.0000
     2   1   -289.86426417     -0.00033633      -73.82      0.00034959       76.73      0.0095
     3   1   -289.86426407     -0.00033623      -73.79      0.00034969       76.75      0.0095
     4   1   -289.86426398     -0.00033614      -73.77      0.00034979       76.77      0.0095
     5   1   -289.86359981      0.00032803       71.99      0.00101395      222.54      0.0276
     6   1   -289.86359980      0.00032804       72.00      0.00101397      222.54      0.0276
     7   1   -289.86359969      0.00032814       72.02      0.00101407      222.56      0.0276
     8   1   -289.86359960      0.00032824       72.04      0.00101416      222.58      0.0276
     9   1   -289.86359959      0.00032825       72.04      0.00101418      222.59      0.0276
    10   1   -289.83696679      0.02696105     5917.27      0.02764698     6067.81      0.7523
    11   1   -289.83695018      0.02697766     5920.91      0.02766358     6071.45      0.7528
    12   1   -289.83694962      0.02697822     5921.04      0.02766415     6071.58      0.7528
    13   1   -289.83694952      0.02697831     5921.06      0.02766424     6071.60      0.7528
    14   1   -289.83694921      0.02697863     5921.12      0.02766455     6071.67      0.7528
    15   1   -289.79441514      0.06951270    15256.27      0.07019863    15406.82      1.9102

 E0 =   -289.86392784 is the energy of the lowest zeroth-order state
 E1 =   -289.86461376 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000 -0.00000000  0.70731649  0.00000000  0.00000032 -0.00000089 -0.70678443 -0.00000363
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.70721473 -0.00000018  0.00000072  0.00000363 -0.70688624
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.57718272  0.00000000  0.00000000  0.00000000  0.20029676  0.00004197  0.00001081 -0.00000055
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57740604  0.00000000 -0.00000000 -0.00000000  0.78545310  0.00017745  0.00000337 -0.00000034

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.70700499 -0.00000000 -0.00000000 -0.00016064  0.70709600 -0.00000089  0.00000072

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.70689701  0.00000001 -0.00000032  0.00000089  0.70720397  0.00000364

  7  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.70720856  0.00000000  0.00000000 -0.00016059  0.70689239 -0.00000089  0.00000072

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.57729844  0.00000000  0.00000000 -0.00000000 -0.58534285 -0.00013552  0.00000744 -0.00000021

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000001  0.70699881  0.00000018 -0.00000072 -0.00000364  0.70710218

 10  1     1    1  |0 0>       -0.00000200  0.00000000  0.00000000  0.00000000  0.00288671  0.00000265 -0.00000587 -0.00000014
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000002 -0.00000262  0.00000000 -0.00000000  0.00032914 -0.01783909 -0.00000761  0.00001619
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000125  0.00000005 -0.00000001 -0.00000000  0.01760365  0.00033308  0.00002372  0.00000011
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000003  0.00000259  0.00000027 -0.00001623  0.00009214 -0.01784216
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000521 -0.00000001 -0.00002231 -0.00000797  0.01784095  0.00009215
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.01374336  0.00000000 -0.00000000 -0.00000000  0.00000178  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000957 -0.00000398 -0.00000540  0.00001673  0.00006527  0.01261539 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000044 -0.00000011  0.00001145  0.00000008 -0.01261622  0.00006528  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.79149599  0.01336758 -0.00010581 -0.00580830 -0.00000018  0.00001187 -0.00793476
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.22223978  0.00164979 -0.00026699 -0.01447075 -0.00000024  0.00001960  0.00793451

  5  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000315 -0.00000135  0.01261416 -0.00023287  0.00001148  0.00000565  0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000958  0.00000398  0.00000540 -0.00001673 -0.00006527 -0.01261552  0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000315 -0.00000135  0.01261423 -0.00023288  0.00001148  0.00000565 -0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.56905611  0.01171827  0.00016122  0.00866416  0.00000006 -0.00000773  0.00793493

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000044  0.00000011 -0.00001145 -0.00000008  0.01261640 -0.00006528  0.00000000

 10  1     1    1  |0 0>       -0.01761814  0.99984062  0.00000040  0.00002051 -0.00000000 -0.00000001  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00005124 -0.00000040  0.99984082 -0.00001335 -0.00000076  0.00000019  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00288365 -0.00002053  0.00001335  0.99984083 -0.00000068  0.00000041  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000016  0.00000000  0.00000076  0.00000068  0.99984081 -0.00001496  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000960  0.00000001 -0.00000019 -0.00000041  0.00001496  0.99984083 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000155 -0.00000001 -0.00000000 -0.00000003 -0.00000000  0.00000000  0.99990556
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.03%    0.00%    0.00%    0.00%   49.95%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   50.02%    0.00%    0.00%    0.00%   49.97%
  3  1     3    1  |1 1>+        33.31%    0.00%    0.00%    0.00%    4.01%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         33.34%    0.00%    0.00%    0.00%   61.69%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%   49.99%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   49.97%    0.00%    0.00%    0.00%   50.01%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.01%    0.00%    0.00%    0.00%   49.97%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   34.26%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.98%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 15  1     6    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
  3  1     3    1  |1 1>+        62.65%    0.02%    0.00%    0.00%    0.00%    0.00%    0.01%
  4  1     1    1  |1 0>          4.94%    0.00%    0.00%    0.02%    0.00%    0.00%    0.01%
  5  1     2    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        32.38%    0.01%    0.00%    0.01%    0.00%    0.00%    0.01%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 10  1     1    1  |0 0>          0.03%   99.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   99.97%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%   99.97%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.97%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.97%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.98%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2592.26       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      247.18       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1479.38    188.29     16.63   1152.19    112.92      4.65      0.92      3.48
 REAL TIME  *      1549.42 SEC
 DISK USED  *       290.80 MB (local),       12.36 GB (total)
 SF USED    *         3.25 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -289.794415136752

              CI              CI           MULTI         RHF-SCF
   -289.77564311   -289.84556713   -289.39650271   -289.45763325
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
