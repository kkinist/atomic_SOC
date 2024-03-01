
 Working directory              : /wrk/irikura/molpro.CPeNvFFYI3/
 Global scratch directory       : /wrk/irikura/molpro.CPeNvFFYI3/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.CPeNvFFYI3/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Si SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Si};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=14,sym=1,spin=2}
 
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
 
 {ci;wf,sym=1,spin=2;state,3; save,5102.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,6; save,5101.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5102.2,5101.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Si SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 23-Feb-24          TIME: 17:55:24  
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

     230.162 MB (compressed) written to integral file ( 12.0%)

     Node minimum: 15.466 MB, node maximum: 23.331 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   11746161.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   11746161      RECORD LENGTH: 524288

 Memory used in sort:      12.30 MW

 SORT1 READ   241177324. AND WROTE     2015492. INTEGRALS IN      6 RECORDS. CPU TIME:     1.09 SEC, REAL TIME:     1.11 SEC
 SORT2 READ    24831399. AND WROTE   141159946. INTEGRALS IN    840 RECORDS. CPU TIME:     0.23 SEC, REAL TIME:     0.26 SEC

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
 CPU TIMES  *         3.55      3.36
 REAL TIME  *         4.27 SEC
 DISK USED  *        30.55 MB (local),      848.71 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   5   3
 Initial beta  occupancy:   3   3

 NELEC=   14   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -224.07015971    -224.07015971     0.00D+00     0.11D+00     0     0       0.05      0.10    start
   2     -279.76918675     -55.69902704     0.28D+00     0.14D+00     1     0       0.07      0.17    diag2
   3     -287.79851978      -8.02933303     0.23D+00     0.50D-01     2     0       0.07      0.24    diag2
   4     -289.25298565      -1.45446587     0.66D-01     0.32D-01     3     0       0.07      0.31    diag2
   5     -289.39568746      -0.14270181     0.54D-02     0.59D-02     4     0       0.06      0.37    diag2
   6     -289.45291111      -0.05722365     0.23D-02     0.41D-02     5     0       0.07      0.44    diag2
   7     -289.45750809      -0.00459698     0.89D-03     0.16D-02     6     0       0.07      0.51    diag2
   8     -289.45762787      -0.00011978     0.12D-03     0.29D-03     7     0       0.06      0.57    fixocc
   9     -289.45763290      -0.00000503     0.28D-04     0.72D-04     8     0       0.07      0.64    diag2
  10     -289.45763322      -0.00000032     0.10D-04     0.18D-04     9     0       0.06      0.70    diag2/orth
  11     -289.45763325      -0.00000003     0.23D-05     0.45D-05     9     0       0.07      0.77    diag2
  12     -289.45763325      -0.00000000     0.14D-06     0.30D-06     9     0       0.07      0.84    diag2
  13     -289.45763325      -0.00000000     0.38D-07     0.61D-07     0     0       0.06      0.90    diag

 Final alpha occupancy:   3   5
 Final beta  occupancy:   3   3

 !RHF STATE 1.1 Energy               -289.457633247142
  RHF One-electron energy            -401.394399967953
  RHF Two-electron energy             111.936766720810
  RHF Kinetic energy                  293.218060828138
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.987175320748

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.97611     1  1  s    0.97072
    2.1     2.00000    -6.18239     1  2  s    1.02793
    3.1     2.00000    -0.54170     1  2  s   -0.28904    1  9  s    0.37423    1 10  s    0.61777
    1.2     2.00000    -4.25519     1  1  px  -0.55100    1  1  py   0.83041
    2.2     2.00000    -4.25409     1  1  px   0.79356    1  1  py   0.50731    1  1  pz   0.33838
    3.2     2.00000    -4.25409     1  1  px  -0.25764    1  1  pz   0.94067
    4.2     1.00000    -0.29685     1  8  px   0.26650    1  9  px   0.42356    1  9  py   0.27078
    5.2     1.00000    -0.29685     1  8  pz   0.31590    1  9  pz   0.50208


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
 CPU TIMES  *         4.47      0.93      3.36
 REAL TIME  *         6.43 SEC
 DISK USED  *        34.69 MB (local),      898.37 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     208 (   99  109)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.795D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.349D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.115D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 4 6 5 3 1   2 4 5 6 313101415 7  1112 8 9 3 5 6 4 2 1  131410 7151211 9 8 3
                                        6 5 4 2 1131410 715  1211 8 9 3 6 5 2 4 1  13141015 71112 9 8 3   6 5 2 4 3 6 5 2 4 1
                                       131410 7151211 8 9 3   6 5 2 4 1 3 6 5 2 4   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.420D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.517D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.340D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.516D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.339D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.423D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 3 2 1 3 2 1   3 2 7 9 810 5 6 4 7   9 810 5 6 4 1 3 2 7   9 810 5 6 418212012
                                       17151614131119 2 1 3   7 8 910 5 4 6182120  1217151614131119 7 8   910 5 4 6 2 3 11821
                                       201217161514131119 7   8 910 5 6 4 2 3 1 7   8 9 510 4 6 2 3 1 2   3 1 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  962  ( 11 closed/active, 525 closed/virtual, 0 active/active, 426 active/virtual )
 Total number of variables:    1088
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0   -289.44582019    -289.46693442   -0.02111422    0.06603342 0.00001946 0.00000000  0.36E+00      0.53
   2    6   10    0   -289.46678371    -289.46680873   -0.00002502    0.00701523 0.00000023 0.00000000  0.79E-02      1.11
   3    4    8    0   -289.46680875    -289.46680875   -0.00000000    0.00001022 0.00000001 0.00000000  0.12E-04      1.65

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.67E-08)
                       Final energy:   -289.46680875
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -289.467709328119
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22690031
 One electron energy                          -401.42310400
 Two electron energy                           111.95539467
 Virial ratio                                    1.98717992
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -289.467709327870
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22690032
 One electron energy                          -401.42310403
 Two electron energy                           111.95539470
 Virial ratio                                    1.98717992
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -289.467709327571
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22690034
 One electron energy                          -401.42310407
 Two electron energy                           111.95539474
 Virial ratio                                    1.98717992
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -289.427434079034
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22690030
 One electron energy                          -401.42310399
 Two electron energy                           111.99566991
 Virial ratio                                    1.98704257
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -289.427434078953
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22690031
 One electron energy                          -401.42310400
 Two electron energy                           111.99566992
 Virial ratio                                    1.98704257
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -289.427434078519
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22690032
 One electron energy                          -401.42310403
 Two electron energy                           111.99566995
 Virial ratio                                    1.98704257
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -289.427434077996
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22690034
 One electron energy                          -401.42310407
 Two electron energy                           111.99566999
 Virial ratio                                    1.98704257
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -289.427434077927
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22690034
 One electron energy                          -401.42310407
 Two electron energy                           111.99567000
 Virial ratio                                    1.98704257
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -289.396211705360
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.19332945
 One electron energy                          -401.31705024
 Two electron energy                           111.92083854
 Virial ratio                                    1.98704910
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000040
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999973
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999988
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.675312511190
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999999962
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000103
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000001
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.324685629246
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999972
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000000239
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999830
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.108386022434
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000084
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999999777
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000184
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.891617377024
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999988
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999789
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000183
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.216301466376
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.999999999954
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000120
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999999815
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.783696993729
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 2 5 3 4 1   3 5 6 2 410131514 7  12 811 9 6 3 5 4 2 1  11101312 81514 7 9 6
                                        2 4 3 5 111 7 812 9  15141310 2 6 4 5 3 1  11 7 9 81214151013 2   6 4 5 3 2 6 4 5 3 1
                                        71112 815141310 9 2   6 4 5 3 1 2 5 3 6 4   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 3 2 1 2 3 1   2 3 7 910 8 6 5 4 7   910 8 6 5 4 1 2 310   8 6 5 7 9 412182017
                                       15191416111321 3 2 1   810 5 4 6 7 9121921  1314161115171820 5 8  10 6 4 9 7 3 2 11219
                                       211314161117152018 5   610 8 7 9 4 3 2 1 5   9 7 6 410 8 3 2 1 2   1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.97244     1  1  s    0.97072
    2.1     2.00000    -6.17889     1  2  s    1.02907
    3.1     1.96581    -0.53445     1  2  s   -0.28359    1  9  s    0.37000    1 10  s    0.62166
    1.2     2.00000    -4.25148     1  1  pz   0.99975
    2.2     2.00000    -4.25148     1  1  py   0.99975
    3.2     2.00000    -4.25148     1  1  px   0.99975
    4.2     0.67806    -0.06450     1  8  px   0.34443    1  9  px   0.53749
    5.2     0.67806    -0.06450     1  8  pz   0.34443    1  9  pz   0.53749
    6.2     0.67806    -0.06450     1  8  py   0.34443    1  9  py   0.53749
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a         -0.00000347      0.00001442      0.99148475
 2 aa0          0.00000524      0.99148475     -0.00001295
 2 0aa          0.99148475     -0.00000517      0.00000347
 0 2aa         -0.13022284      0.00000068     -0.00000046
 0 aa2         -0.00000069     -0.13022284      0.00000170
 0 a2a          0.00000046     -0.00000189     -0.13022284
 
 Energy:     -289.46770933   -289.46770933   -289.46770933
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.78735154     -0.00001598      0.00000597      0.00000037     -0.18825292      0.56004365
 2 200         -0.23064454      0.00000065     -0.00000394     -0.00000491      0.77599273      0.56004369
 2 b0a         -0.00000094      0.00000157     -0.00000527     -0.70108559     -0.00000261     -0.00000000
 2 a0b          0.00000094     -0.00000157      0.00000527      0.70108559      0.00000261      0.00000000
 2 ab0         -0.00000435     -0.00000185      0.70108559     -0.00000532      0.00000274      0.00000000
 2 ba0          0.00000435      0.00000185     -0.70108559      0.00000532     -0.00000274     -0.00000000
 2 0ab          0.00001289      0.70108559      0.00000217      0.00000137      0.00000344     -0.00000000
 2 0ba         -0.00001289     -0.70108559     -0.00000217     -0.00000137     -0.00000344      0.00000000
 2 002         -0.55670697      0.00001533     -0.00000203      0.00000455     -0.58773985      0.56004367
 0 202          0.10341173     -0.00000210      0.00000078      0.00000005     -0.02472537     -0.14030117
 0 220         -0.07311859      0.00000201     -0.00000027      0.00000060     -0.07719448     -0.14030117
 0 022         -0.03029315      0.00000008     -0.00000052     -0.00000065      0.10191986     -0.14030117
 0 2ba          0.00000169      0.09208146      0.00000028      0.00000018      0.00000045     -0.00000000
 0 2ab         -0.00000169     -0.09208146     -0.00000028     -0.00000018     -0.00000045      0.00000000
 0 ba2         -0.00000057     -0.00000024      0.09208146     -0.00000070      0.00000036      0.00000000
 0 ab2          0.00000057      0.00000024     -0.09208146      0.00000070     -0.00000036     -0.00000000
 0 a2b         -0.00000012      0.00000021     -0.00000069     -0.09208146     -0.00000034     -0.00000000
 0 b2a          0.00000012     -0.00000021      0.00000069      0.09208146      0.00000034      0.00000000
 
 Energy:     -289.42743408   -289.42743408   -289.42743408   -289.42743408   -289.42743408   -289.39621171
 


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
 CPU TIMES  *         6.24      1.77      0.93      3.36
 REAL TIME  *         8.54 SEC
 DISK USED  *        45.40 MB (local),        1.00 GB (total)
 SF USED    *        35.17 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -289.4677093   2.0
    -289.4677093   2.0
    -289.4677093   2.0
    -289.4274341   6.0
    -289.4274341   6.0
    -289.4274341   6.0
    -289.4274341   6.0
    -289.4274341   6.0
    -289.3962117   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 14
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      161 conf      267 CSFs
 N-1 el internal:      222 conf      690 CSFs
 N-2 el internal:      122 conf      670 CSFs

 Number of electrons in valence space:                     12
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.27 sec, npass=  1  Memory used:   1.23 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.46770933
     2      -289.46770933
     3      -289.46770933

 Number of blocks in overlap matrix:   117   Smallest eigenvalue:  0.17D-01
 Number of N-2 electron functions:     162
 Number of N-1 electron functions:     690

 Number of internal configurations:                  132
 Number of singly external configurations:         71790
 Number of doubly external configurations:       1753866
 Total number of contracted configurations:      1825788
 Total number of uncontracted configurations:    7307472

 Diagonal Coupling coefficients finished.               Storage:    238061 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    793150 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.46770933    -0.00000000    -0.40323470  0.40D-01  0.29D-01     0.44
    1     2     2     1.00000000     0.00000000  -289.46770933    -0.00000000    -0.40364312  0.40D-01  0.29D-01     0.44
    1     3     3     1.00000000     0.00000000  -289.46770933    -0.00000000    -0.40350336  0.40D-01  0.29D-01     0.44
    2     1     1     1.05869602    -0.37273068  -289.84044001    -0.37273068    -0.00557203  0.17D-02  0.67D-03     5.07
    2     2     2     1.05908836    -0.37262117  -289.84033050    -0.37262117    -0.00568844  0.18D-02  0.67D-03     5.07
    2     3     3     1.05923984    -0.37257725  -289.84028658    -0.37257725    -0.00573994  0.18D-02  0.68D-03     5.07
    3     1     1     1.04844313    -0.37805077  -289.84576009    -0.00532008    -0.00011149  0.15D-04  0.22D-04     9.69
    3     2     2     1.04847123    -0.37804810  -289.84575743    -0.00542693    -0.00011380  0.15D-04  0.22D-04     9.69
    3     3     3     1.04849133    -0.37804668  -289.84575601    -0.00546943    -0.00011499  0.16D-04  0.22D-04     9.69
    4     1     1     1.04835671    -0.37817599  -289.84588532    -0.00012522    -0.00000551  0.49D-06  0.17D-05    14.34
    4     2     2     1.04835675    -0.37817584  -289.84588516    -0.00012774    -0.00000562  0.50D-06  0.17D-05    14.34
    4     3     3     1.04835737    -0.37817569  -289.84588502    -0.00012901    -0.00000572  0.51D-06  0.17D-05    14.34
    5     1     1     1.04850170    -0.37818280  -289.84589213    -0.00000681    -0.00000041  0.31D-07  0.11D-06    19.07
    5     2     2     1.04850086    -0.37818279  -289.84589211    -0.00000695    -0.00000042  0.31D-07  0.12D-06    19.07
    5     3     3     1.04850014    -0.37818278  -289.84589211    -0.00000708    -0.00000042  0.32D-07  0.12D-06    19.07
    6     1     1     1.04848858    -0.37818331  -289.84589263    -0.00000051    -0.00000002  0.30D-08  0.49D-08    23.79
    6     2     2     1.04848826    -0.37818331  -289.84589263    -0.00000052    -0.00000002  0.31D-08  0.50D-08    23.79
    6     3     3     1.04848798    -0.37818331  -289.84589263    -0.00000053    -0.00000002  0.31D-08  0.51D-08    23.79


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.7%
 P   0.5%   7.3%  18.6%

 Initialization:   1.7%
 Other:           71.2%

 Total CPU:       23.8 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//0          -0.0000000  -0.0000000   0.9695307
 22222/0/          -0.0000000   0.9695306   0.0000000
 222220//           0.9695305   0.0000000   0.0000000
 20222//2           0.0000000   0.0000000  -0.1171765
 20222/2/           0.0000000  -0.1171761  -0.0000000
 202222//          -0.1171759  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.976534   -0.000000   -0.000000
 2           0.000000   -0.000000    0.976534
 3           0.000000    0.976534    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.976534   -0.000000   -0.000000
 2          -0.000000    0.976534   -0.000000
 3          -0.000000   -0.000000    0.976534


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97653367 (fixed)   0.97658566 (relaxed)   0.97653367 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014244   -0.00024193   -0.32090240
 Singles      0.02293789   -0.04172675   -0.04806382
 Pairs        0.02555760    0.00000000   -0.00921709
 Total        1.04863792   -0.04196868   -0.37818331
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46770933
 Nuclear energy                         0.00000000
 Kinetic energy                       293.56795421
 One electron energy                 -401.20744204
 Two electron energy                  111.36154941
 Virial quotient                       -0.98732129
 Correlation energy                    -0.37818331
 !MRCI STATE 1.1 Energy              -289.845892634731

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.86428668 (Davidson, fixed reference)
 Cluster corrected energies          -289.86424446 (Davidson, relaxed reference)
 Cluster corrected energies          -289.86428668 (Davidson, rotated reference)

 Cluster corrected energies          -289.86104413 (Pople, fixed reference)
 Cluster corrected energies          -289.86100834 (Pople, relaxed reference)
 Cluster corrected energies          -289.86104413 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97653382 (fixed)   0.97658581 (relaxed)   0.97653382 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014243   -0.00024193   -0.00028207
 Singles      0.02293760   -0.04172658   -0.04806371
 Pairs        0.02555756   -0.33621480   -0.32983752
 Total        1.04863760   -0.37818331   -0.37818331
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46770933
 Nuclear energy                         0.00000000
 Kinetic energy                       293.56795563
 One electron energy                 -401.20744536
 Two electron energy                  111.36155272
 Virial quotient                       -0.98732129
 Correlation energy                    -0.37818331
 !MRCI STATE 2.1 Energy              -289.845892634082

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.86428656 (Davidson, fixed reference)
 Cluster corrected energies          -289.86424434 (Davidson, relaxed reference)
 Cluster corrected energies          -289.86428656 (Davidson, rotated reference)

 Cluster corrected energies          -289.86104403 (Pople, fixed reference)
 Cluster corrected energies          -289.86100823 (Pople, relaxed reference)
 Cluster corrected energies          -289.86104403 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97653395 (fixed)   0.97658594 (relaxed)   0.97653395 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014242   -0.00024193   -0.32090284
 Singles      0.02293742   -0.04172648   -0.04806363
 Pairs        0.02555746   -0.00000000   -0.00921684
 Total        1.04863731   -0.04196841   -0.37818331
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46770933
 Nuclear energy                         0.00000000
 Kinetic energy                       293.56795864
 One electron energy                 -401.20745048
 Two electron energy                  111.36155785
 Virial quotient                       -0.98732128
 Correlation energy                    -0.37818331
 !MRCI STATE 3.1 Energy              -289.845892633751

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.86428645 (Davidson, fixed reference)
 Cluster corrected energies          -289.86424423 (Davidson, relaxed reference)
 Cluster corrected energies          -289.86428645 (Davidson, rotated reference)

 Cluster corrected energies          -289.86104393 (Pople, fixed reference)
 Cluster corrected energies          -289.86100814 (Pople, relaxed reference)
 Cluster corrected energies          -289.86104393 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       45.47       700     1000      520     2100     2140     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        30.54     24.28      1.77      0.93      3.36
 REAL TIME  *        34.84 SEC
 DISK USED  *        88.82 MB (local),        1.51 GB (total)
 SF USED    *       423.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -289.86428668  AU                              
 SETTING HLSDIAG(2)     =      -289.86428656  AU                              
 SETTING HLSDIAG(3)     =      -289.86428645  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 14
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      183 conf      236 CSFs
 N-1 el internal:      252 conf      504 CSFs
 N-2 el internal:      194 conf      516 CSFs

 Number of electrons in valence space:                     12
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.42743408
     2      -289.42743408
     3      -289.42743408
     4      -289.42743408
     5      -289.42743408
     6      -289.39621171

 Number of blocks in overlap matrix:   173   Smallest eigenvalue:  0.33D-01
 Number of N-2 electron functions:     248
 Number of N-1 electron functions:     504

 Number of internal configurations:                  130
 Number of singly external configurations:         52476
 Number of doubly external configurations:       2686480
 Total number of contracted configurations:      2739086
 Total number of uncontracted configurations:    5636078

 Diagonal Coupling coefficients finished.               Storage:    261335 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    808878 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.42743408    -0.00000000    -0.41482797  0.44D-01  0.33D-01     0.16
    1     2     2     1.00000000     0.00000000  -289.42743408    -0.00000000    -0.41594208  0.46D-01  0.34D-01     0.16
    1     3     3     1.00000000     0.00000000  -289.42743408    -0.00000000    -0.41537301  0.45D-01  0.34D-01     0.16
    1     4     4     1.00000000     0.00000000  -289.42743408    -0.00000000    -0.41513443  0.44D-01  0.33D-01     0.16
    1     5     5     1.00000000     0.00000000  -289.42743408     0.00000000    -0.41467738  0.44D-01  0.33D-01     0.16
    1     6     6     1.00000000     0.00000000  -289.39621171     0.00000000    -0.40036841  0.13D-01  0.51D-01     0.16
    2     1     1     1.06487445    -0.38117132  -289.80860540    -0.38117132    -0.00746772  0.20D-02  0.11D-02    15.55
    2     2     2     1.06502503    -0.38114822  -289.80858229    -0.38114822    -0.00749251  0.20D-02  0.11D-02    15.55
    2     3     3     1.06528194    -0.38098313  -289.80841721    -0.38098313    -0.00769663  0.22D-02  0.12D-02    15.55
    2     4     4     1.06554770    -0.38088153  -289.80831561    -0.38088153    -0.00781915  0.22D-02  0.12D-02    15.55
    2     5     5     1.06620817    -0.38071910  -289.80815317    -0.38071910    -0.00802103  0.23D-02  0.12D-02    15.55
    2     6     6     1.05560356    -0.37433985  -289.77055155    -0.37433985    -0.00569295  0.19D-02  0.92D-03    15.55
    3     1     1     1.05479822    -0.38795614  -289.81539022    -0.00678482    -0.00015019  0.25D-04  0.23D-04    31.12
    3     2     2     1.05472783    -0.38795178  -289.81538586    -0.00680357    -0.00015321  0.25D-04  0.25D-04    31.12
    3     3     3     1.05477709    -0.38794897  -289.81538305    -0.00696584    -0.00015649  0.26D-04  0.25D-04    31.12
    3     4     4     1.05496833    -0.38794751  -289.81538159    -0.00706598    -0.00015928  0.26D-04  0.25D-04    31.12
    3     5     5     1.05482886    -0.38794555  -289.81537963    -0.00722645    -0.00015948  0.26D-04  0.25D-04    31.12
    3     6     6     1.04856904    -0.37956214  -289.77577385    -0.00522229    -0.00014845  0.17D-04  0.29D-04    31.12
    4     1     1     1.05531007    -0.38811555  -289.81554963    -0.00015941    -0.00000609  0.13D-05  0.11D-05    46.38
    4     2     2     1.05532348    -0.38811509  -289.81554917    -0.00016331    -0.00000648  0.14D-05  0.12D-05    46.38
    4     3     3     1.05528704    -0.38811502  -289.81554910    -0.00016605    -0.00000644  0.14D-05  0.12D-05    46.38
    4     4     4     1.05528860    -0.38811497  -289.81554905    -0.00016746    -0.00000653  0.14D-05  0.12D-05    46.38
    4     5     5     1.05528886    -0.38811461  -289.81554869    -0.00016907    -0.00000678  0.15D-05  0.13D-05    46.38
    4     6     6     1.04896573    -0.37971657  -289.77592827    -0.00015443    -0.00000662  0.11D-05  0.14D-05    46.38
    5     1     1     1.05559872    -0.38812233  -289.81555641    -0.00000678    -0.00000027  0.55D-07  0.55D-07    61.85
    5     2     2     1.05559827    -0.38812230  -289.81555638    -0.00000721    -0.00000030  0.58D-07  0.64D-07    61.85
    5     3     3     1.05559674    -0.38812229  -289.81555637    -0.00000727    -0.00000030  0.58D-07  0.63D-07    61.85
    5     4     4     1.05559841    -0.38812229  -289.81555637    -0.00000732    -0.00000030  0.58D-07  0.63D-07    61.85
    5     5     5     1.05559662    -0.38812226  -289.81555634    -0.00000765    -0.00000033  0.61D-07  0.69D-07    61.85
    5     6     6     1.04918145    -0.37972400  -289.77593570    -0.00000743    -0.00000034  0.87D-07  0.72D-07    61.85
    6     1     1     1.05560666    -0.38812264  -289.81555672    -0.00000031    -0.00000002  0.24D-08  0.36D-08    77.44
    6     2     2     1.05560571    -0.38812264  -289.81555672    -0.00000034    -0.00000002  0.25D-08  0.42D-08    77.44
    6     3     3     1.05560568    -0.38812264  -289.81555672    -0.00000034    -0.00000002  0.26D-08  0.41D-08    77.44
    6     4     4     1.05560625    -0.38812264  -289.81555672    -0.00000035    -0.00000002  0.27D-08  0.41D-08    77.44
    6     5     5     1.05560532    -0.38812264  -289.81555671    -0.00000037    -0.00000002  0.28D-08  0.45D-08    77.44
    6     6     6     1.04916208    -0.37972440  -289.77593611    -0.00000040    -0.00000002  0.46D-08  0.47D-08    77.44


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.3%
 P   0.3%   7.0%  24.1%

 Initialization:   0.1%
 Other:           68.1%

 Total CPU:       77.4 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222/\0           0.0000000   0.0000000   0.0000000  -0.0000000   0.9662226  -0.0000000
 222220/\           0.0000000   0.9662224   0.0000000   0.0000000  -0.0000000   0.0000000
 22222/0\          -0.0000000  -0.0000000   0.9662223   0.0000000  -0.0000000   0.0000000
 22222002           0.7696823  -0.0000000   0.0000000  -0.1731433  -0.0000000   0.5488031
 22222200          -0.2348948  -0.0000000  -0.0000000   0.7531366   0.0000000   0.5488030
 22222020          -0.5347880   0.0000000  -0.0000000  -0.5799929   0.0000000   0.5488029
 20222220           0.0932323  -0.0000000   0.0000000  -0.0209726  -0.0000000  -0.1285025
 20222022          -0.0284538  -0.0000000  -0.0000000   0.0912276   0.0000000  -0.1285021
 20222202          -0.0647792   0.0000000  -0.0000000  -0.0702545   0.0000000  -0.1285020
 20222/2\           0.0000000   0.0000000  -0.1170390  -0.0000000   0.0000000  -0.0000000
 202222/\          -0.0000000  -0.1170384  -0.0000000  -0.0000000   0.0000000  -0.0000000
 20222/\2          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1170382   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222/0\  12.1     0.0000000   0.0000000  -0.0775404  -0.0000000   0.0000000   0.0000000
 2\222/\0  15.1     0.0147300  -0.0000000  -0.0000000   0.0761648   0.0000000   0.0035706
 2\2220/\  13.1    -0.0733248   0.0000000  -0.0000000  -0.0253246   0.0000000   0.0035690
 2\222/\0  14.1     0.0000000   0.0000000   0.0000000  -0.0000000   0.0683258  -0.0000000
 2\2220/\  14.1    -0.0000000  -0.0659806  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2\222/0\  11.1    -0.0554162  -0.0000000  -0.0000000   0.0542856   0.0000000   0.0035689

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.808033    0.000000    0.000000   -0.000000   -0.542466   -0.000000
 2           0.000000    0.973236    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.000000    0.973236   -0.000000   -0.000000
 4          -0.542466    0.000000   -0.000000    0.000000    0.808034    0.000000
 5           0.000000   -0.000000    0.973236   -0.000000    0.000000    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.976148

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.973235    0.000000    0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.973236   -0.000000    0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.973236    0.000000    0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.973236   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.973236   -0.000000
 6          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.976148


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.80803337 (fixed)   0.97328456 (relaxed)   0.97323541 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014295   -0.00027167   -0.32276293
 Singles      0.02698459   -0.04741890   -0.05483598
 Pairs        0.02863002    0.00000019   -0.01052373
 Total        1.05575756   -0.04769038   -0.38812264
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42743408
 Nuclear energy                         0.00000000
 Kinetic energy                       293.55270174
 One electron energy                 -401.13935559
 Two electron energy                  111.32379887
 Virial quotient                       -0.98726925
 Correlation energy                    -0.38812264
 !MRCI STATE 1.1 Energy              -289.815556717866

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.83719749 (Davidson, fixed reference)
 Cluster corrected energies          -289.83715610 (Davidson, relaxed reference)
 Cluster corrected energies          -289.83719749 (Davidson, rotated reference)

 Cluster corrected energies          -289.83427821 (Pople, fixed reference)
 Cluster corrected energies          -289.83424106 (Pople, relaxed reference)
 Cluster corrected energies          -289.83427821 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97323583 (fixed)   0.97328500 (relaxed)   0.97323583 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014297   -0.00027167   -0.32276296
 Singles      0.02698454   -0.04741899   -0.05483601
 Pairs        0.02862912    0.00000000   -0.01052367
 Total        1.05575663   -0.04769066   -0.38812264
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42743408
 Nuclear energy                         0.00000000
 Kinetic energy                       293.55269355
 One electron energy                 -401.13938653
 Two electron energy                  111.32382982
 Virial quotient                       -0.98726928
 Correlation energy                    -0.38812264
 !MRCI STATE 2.1 Energy              -289.815556716034

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.83719713 (Davidson, fixed reference)
 Cluster corrected energies          -289.83715573 (Davidson, relaxed reference)
 Cluster corrected energies          -289.83719713 (Davidson, rotated reference)

 Cluster corrected energies          -289.83427789 (Pople, fixed reference)
 Cluster corrected energies          -289.83424073 (Pople, relaxed reference)
 Cluster corrected energies          -289.83427789 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97323585 (fixed)   0.97328501 (relaxed)   0.97323585 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014296   -0.00027167   -0.32276317
 Singles      0.02698427   -0.04741878   -0.05483583
 Pairs        0.02862936    0.00000000   -0.01052363
 Total        1.05575659   -0.04769044   -0.38812264
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42743408
 Nuclear energy                         0.00000000
 Kinetic energy                       293.55272345
 One electron energy                 -401.13941219
 Two electron energy                  111.32385548
 Virial quotient                       -0.98726918
 Correlation energy                    -0.38812264
 !MRCI STATE 3.1 Energy              -289.815556715930

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.83719711 (Davidson, fixed reference)
 Cluster corrected energies          -289.83715572 (Davidson, relaxed reference)
 Cluster corrected energies          -289.83719711 (Davidson, rotated reference)

 Cluster corrected energies          -289.83427787 (Pople, fixed reference)
 Cluster corrected energies          -289.83424072 (Pople, relaxed reference)
 Cluster corrected energies          -289.83427787 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.80803356 (fixed)   0.97328475 (relaxed)   0.97323559 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014297   -0.00027167   -0.32276256
 Singles      0.02698502   -0.04741903   -0.05483610
 Pairs        0.02862919   -0.00000022   -0.01052398
 Total        1.05575717   -0.04769091   -0.38812264
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42743408
 Nuclear energy                         0.00000000
 Kinetic energy                       293.55274049
 One electron energy                 -401.13942378
 Two electron energy                  111.32386707
 Virial quotient                       -0.98726912
 Correlation energy                    -0.38812264
 !MRCI STATE 4.1 Energy              -289.815556715284

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.83719734 (Davidson, fixed reference)
 Cluster corrected energies          -289.83715594 (Davidson, relaxed reference)
 Cluster corrected energies          -289.83719734 (Davidson, rotated reference)

 Cluster corrected energies          -289.83427807 (Pople, fixed reference)
 Cluster corrected energies          -289.83424092 (Pople, relaxed reference)
 Cluster corrected energies          -289.83427807 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97323601 (fixed)   0.97328518 (relaxed)   0.97323601 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014298   -0.00027167   -0.32276326
 Singles      0.02698440   -0.04741880   -0.05483585
 Pairs        0.02862887   -0.00000000   -0.01052353
 Total        1.05575625   -0.04769047   -0.38812264
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42743408
 Nuclear energy                         0.00000000
 Kinetic energy                       293.55273347
 One electron energy                 -401.13944597
 Two electron energy                  111.32388925
 Virial quotient                       -0.98726915
 Correlation energy                    -0.38812264
 !MRCI STATE 5.1 Energy              -289.815556714155

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.83719698 (Davidson, fixed reference)
 Cluster corrected energies          -289.83715558 (Davidson, relaxed reference)
 Cluster corrected energies          -289.83719698 (Davidson, rotated reference)

 Cluster corrected energies          -289.83427775 (Pople, fixed reference)
 Cluster corrected energies          -289.83424059 (Pople, relaxed reference)
 Cluster corrected energies          -289.83427775 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97614799 (fixed)   0.97626465 (relaxed)   0.97614799 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00029037   -0.00030344   -0.00039420
 Singles      0.00618091   -0.01934685   -0.02066984
 Pairs        0.04299545   -0.36007411   -0.35866037
 Total        1.04946673   -0.37972440   -0.37972440
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.39621171
 Nuclear energy                         0.00000000
 Kinetic energy                       293.52268263
 One electron energy                 -401.00706123
 Two electron energy                  111.23112513
 Virial quotient                       -0.98723524
 Correlation energy                    -0.37972440
 !MRCI STATE 6.1 Energy              -289.775936105455

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79471983 (Davidson, fixed reference)
 Cluster corrected energies          -289.79462459 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79471983 (Davidson, rotated reference)

 Cluster corrected energies          -289.79211714 (Pople, fixed reference)
 Cluster corrected energies          -289.79203237 (Pople, relaxed reference)
 Cluster corrected energies          -289.79211714 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      171.65       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       110.11     79.56     24.28      1.77      0.93      3.36
 REAL TIME  *       120.99 SEC
 DISK USED  *       214.99 MB (local),        2.99 GB (total)
 SF USED    *         1.18 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -289.83719749  AU                              
 SETTING HLSDIAG(5)     =      -289.83719713  AU                              
 SETTING HLSDIAG(6)     =      -289.83719711  AU                              
 SETTING HLSDIAG(7)     =      -289.83719734  AU                              
 SETTING HLSDIAG(8)     =      -289.83719698  AU                              
 SETTING HLSDIAG(9)     =      -289.79471983  AU                              


         HLSDIAG
    -289.8642867
    -289.8642866
    -289.8642865
    -289.8371975
    -289.8371971
    -289.8371971
    -289.8371973
    -289.8371970
    -289.7947198
                                                  

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

 Time for Seward_LS:      14.24 sec

       36526470. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    40780 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     14.24 sec, REAL time:     15.25 sec


 SORTLS1 read   166946497. and wrote   166946497. SO integrals in   660 records. CPU time:      1.65 sec, REAL time:      2.34 sec
 SORTLS2 read   166946497. and wrote   839252487. SO integrals in    36 records. CPU time:      0.98 sec, REAL time:      1.36 sec

 FILE SIZES: FILE 1:  2718.2 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2718.2 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2592.26       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      171.65       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       127.48     17.37     79.56     24.28      1.77      0.93      3.36
 REAL TIME  *       140.49 SEC
 DISK USED  *       215.26 MB (local),       11.47 GB (total)
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
  
 Wavefunction restored from record  5102.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -289.845893   -289.845893   -289.845893
 Replaced energies:   -289.864287   -289.864287   -289.864286

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -289.815557   -289.815557   -289.815557   -289.815557   -289.815557   -289.775936
 Replaced energies:   -289.837197   -289.837197   -289.837197   -289.837197   -289.837197   -289.794720



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -289.86428668

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00     -52.12      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00     -73.71       0.00      -0.00       0.00       0.00       0.00       0.00     -17.91

    2   2.1  1.0  1.0       0.00       0.03       0.00      52.12      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     -52.12       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.05       0.00      -0.00       0.00       0.00       0.00       0.00      58.68
                           73.71       0.00      -0.00      -0.00      52.12       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00      52.12       0.00       0.00       0.00       0.00       0.00     -52.12      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    5   2.1  1.0  0.0     -52.12      -0.00      -0.00       0.00       0.03       0.00      52.12      -0.00       0.00       0.00
                            0.00       0.00     -52.12      -0.00       0.00       0.00       0.00      -0.00     -52.12     -57.66

    6   3.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.05       0.00      -0.00       0.00       0.00
                           -0.00      52.12      -0.00      -0.00      -0.00       0.00      -0.00      52.12       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      52.12       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      73.71      17.91

    8   2.1  1.0 -1.0       0.00       0.00       0.00     -52.12      -0.00      -0.00       0.00       0.03       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00     -52.12       0.00       0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.05      58.68
                           -0.00      -0.00      -0.00      -0.00      52.12      -0.00     -73.71      -0.00       0.00       0.00

   10   1.1  0.0  0.0      -0.00      -0.00      58.68       0.00       0.00       0.00      -0.00      -0.00      58.68    5945.39
                           17.91       0.00       0.00       0.00      57.66       0.00     -17.91      -0.00      -0.00       0.00

   11   2.1  0.0  0.0      -0.00     -52.09      -0.00       0.00       0.00       0.00      -0.00     -52.09      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      73.66      -0.00      -0.00      -0.00      -0.00

   12   3.1  0.0  0.0      52.09      -0.00       0.00       0.00       0.00       0.00      52.09      -0.00       0.00       0.00
                            0.00       0.00     -52.09       0.00       0.00       0.00      -0.00      -0.00      52.09      -0.00

   13   4.1  0.0  0.0       0.00      -0.00     -13.20       0.00       0.00       0.00       0.00      -0.00     -13.20       0.00
                          -57.42      -0.00      -0.00      -0.00      62.54       0.00      57.42       0.00       0.00      -0.00

   14   5.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      52.09       0.00      73.67      -0.00      -0.00       0.00     -52.09      -0.00      -0.00

   15   6.1  0.0  0.0       0.00       0.00     -86.36       0.00       0.00       0.00       0.00       0.00     -86.36       0.00
                           86.36       0.00       0.00      -0.00     122.13       0.00     -86.36      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00      52.09       0.00      -0.00       0.00
                           -0.00      -0.00      57.42       0.00     -86.36

    2   2.1  1.0  1.0     -52.09      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00     -52.09      -0.00

    3   3.1  1.0  1.0      -0.00       0.00     -13.20      -0.00     -86.36
                           -0.00      52.09       0.00      -0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -73.67       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -62.54       0.00    -122.13

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          -73.66      -0.00      -0.00       0.00      -0.00

    7   1.1  1.0 -1.0      -0.00      52.09       0.00      -0.00       0.00
                            0.00       0.00     -57.42      -0.00      86.36

    8   2.1  1.0 -1.0     -52.09      -0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      52.09       0.00

    9   3.1  1.0 -1.0      -0.00       0.00     -13.20      -0.00     -86.36
                            0.00     -52.09      -0.00       0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5945.47       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5945.47       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5945.42       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5945.50       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15268.16
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -289.86428668 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.027       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -73.707      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.051       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      73.707       0.000      73.707       0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000      73.706
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.027       0.000     -73.706       0.000
                                0.000       0.000     -73.707      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.051      -0.000       0.000
                               -0.000      73.707       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000     -73.706      -0.000       0.000       0.000
                                0.000       0.000     -73.707       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      73.706       0.000       0.000       0.000       0.027
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               73.707       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000      -0.000      82.981       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      57.663       0.000      25.326       0.000

    2    1  |0 0>              -0.000     -73.663      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      73.664       0.000       0.000

    3    1  |0 0>              73.661      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000      -0.000     -18.668       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      62.538       0.000     -81.201      -0.000

    5    1  |0 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      73.666      -0.000      -0.000      -0.000      73.665

    6    1  |0 0>               0.000       0.000    -122.128       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     122.134       0.000     122.131       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000      -0.000      73.661       0.000      -0.000       0.000
                              -73.707       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000     -73.663      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      82.981      -0.000       0.000     -18.668      -0.000    -122.128
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000     -73.666       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -57.663       0.000      -0.000     -62.538       0.000    -122.134

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -73.664      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -25.326      -0.000      -0.000      81.201       0.000    -122.131

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000     -73.665      -0.000

    3    1  |1 1>-              0.051       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      73.661       0.000      -0.000      -0.000

    1    1  |0 0>               0.000    5945.391       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5945.471       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5945.474       0.000       0.000       0.000
                              -73.661      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5945.425       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5945.504       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15268.160
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -289.86497145    -0.00068477     -150.29      0.00000000        0.00      0.0000
    2  -289.86462245    -0.00033577      -73.69      0.00034900       76.60      0.0095
    3  -289.86462240    -0.00033572      -73.68      0.00034905       76.61      0.0095
    4  -289.86462234    -0.00033565      -73.67      0.00034911       76.62      0.0095
    5  -289.86395922     0.00032746       71.87      0.00101223      222.16      0.0275
    6  -289.86395921     0.00032747       71.87      0.00101224      222.16      0.0275
    7  -289.86395915     0.00032753       71.88      0.00101230      222.17      0.0275
    8  -289.86395909     0.00032759       71.90      0.00101236      222.19      0.0275
    9  -289.86395908     0.00032760       71.90      0.00101237      222.19      0.0275
   10  -289.83718907     0.02709761     5947.24      0.02778238     6097.53      0.7560
   11  -289.83718892     0.02709777     5947.27      0.02778254     6097.56      0.7560
   12  -289.83718871     0.02709798     5947.32      0.02778274     6097.61      0.7560
   13  -289.83718869     0.02709799     5947.32      0.02778276     6097.61      0.7560
   14  -289.83718856     0.02709813     5947.35      0.02778290     6097.64      0.7560
   15  -289.79470661     0.06958008    15271.06      0.07026485    15421.35      1.9120

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000 -0.00000000  0.70723074 -0.00000000 -0.00000000  0.00000000  0.70687159  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.70716546 -0.00000000 -0.00000000 -0.00000000  0.70693690
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.57723062  0.00000000  0.00000000  0.00000000 -0.21931503 -0.00000000 -0.00000000  0.00000000
                           0.00000862  0.00000000  0.00000000  0.00000000  0.02061863 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.70717206  0.00000000  0.00000000 -0.00000000  0.70693029 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000862 -0.00000000  0.00000000  0.00000000 -0.05341803  0.00000000  0.00000000 -0.00000000
                           0.57729406  0.00000000  0.00000000  0.00000000 -0.56819380 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.70704810 -0.00000000  0.00000000 -0.00000000  0.70705427

   1    1  |1 1>-         -0.00000862  0.00000000 -0.00000000 -0.00000000  0.07402554 -0.00000000  0.00000000 -0.00000000
                           0.57736313  0.00000000  0.00000000 -0.00000000  0.78739052  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.70704150 -0.00000000  0.00000000 -0.00000000  0.70706087 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.70698280 -0.00000000 -0.00000000  0.00000000  0.70711958  0.00000000

   1    1  |0 0>           0.00000187  0.00000000  0.00000000  0.00000000  0.00091540  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00008606  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000131  0.00000000  0.00000000  0.00000000  0.01773350
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000299  0.00000000  0.00000000 -0.00000000 -0.01773297  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000075 -0.00000000 -0.00000000  0.00000000 -0.01763239 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00165769 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000165  0.00000000 -0.00000000 -0.00000000  0.01773388 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.01371843  0.00000000  0.00000000  0.00000000 -0.00000102 -0.00000000  0.00000000  0.00000000
                           0.00000020 -0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.01253902 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.01253937 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.74019659  0.01413475 -0.00313778 -0.00000000  0.00000000 -0.00000000 -0.00792016
                          -0.26479660 -0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01253976  0.00000000

   2    1  |1 0>          -0.19662581 -0.00000001  0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.54963603 -0.00978570 -0.01067340  0.00000000 -0.00000000  0.00000000 -0.00792053

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.01253959 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.06813353 -0.00000000 -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.19045640 -0.00435022  0.01381047 -0.00000000 -0.00000000  0.00000000 -0.00792033

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01253974 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.01253918 -0.00000000 -0.00000000

   1    1  |0 0>          -0.01667473  0.99983875  0.00282783 -0.00000000 -0.00000000  0.00000000  0.00000001
                           0.00596519 -0.00000097  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.99984275  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.99984276  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00086660 -0.00282784  0.99983874 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00031002  0.00000000  0.00000345  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.99984274 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000059 -0.00000002 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.99990590
                          -0.00000021  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000022


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -289.86497145     -0.00068477     -150.29      0.00000000        0.00      0.0000
     2   1   -289.86462245     -0.00033577      -73.69      0.00034900       76.60      0.0095
     3   1   -289.86462240     -0.00033572      -73.68      0.00034905       76.61      0.0095
     4   1   -289.86462234     -0.00033565      -73.67      0.00034911       76.62      0.0095
     5   1   -289.86395922      0.00032746       71.87      0.00101223      222.16      0.0275
     6   1   -289.86395921      0.00032747       71.87      0.00101224      222.16      0.0275
     7   1   -289.86395915      0.00032753       71.88      0.00101230      222.17      0.0275
     8   1   -289.86395909      0.00032759       71.90      0.00101236      222.19      0.0275
     9   1   -289.86395908      0.00032760       71.90      0.00101237      222.19      0.0275
    10   1   -289.83718907      0.02709761     5947.24      0.02778238     6097.53      0.7560
    11   1   -289.83718892      0.02709777     5947.27      0.02778254     6097.56      0.7560
    12   1   -289.83718871      0.02709798     5947.32      0.02778274     6097.61      0.7560
    13   1   -289.83718869      0.02709799     5947.32      0.02778276     6097.61      0.7560
    14   1   -289.83718856      0.02709813     5947.35      0.02778290     6097.64      0.7560
    15   1   -289.79470661      0.06958008    15271.06      0.07026485    15421.35      1.9120

 E0 =   -289.86428668 is the energy of the lowest zeroth-order state
 E1 =   -289.86497145 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.70723074 -0.00000000 -0.00000000  0.00000000  0.70687159  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.70716546 -0.00000000 -0.00000000 -0.00000000  0.70693690
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.57723062  0.00000000  0.00000000  0.00000000 -0.21931503 -0.00000000 -0.00000000  0.00000000
                                0.00000862  0.00000000  0.00000000  0.00000000  0.02061863 -0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.70717206  0.00000000  0.00000000 -0.00000000  0.70693029 -0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000862 -0.00000000  0.00000000  0.00000000 -0.05341803  0.00000000  0.00000000 -0.00000000
                                0.57729406  0.00000000  0.00000000  0.00000000 -0.56819380 -0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.70704810 -0.00000000  0.00000000 -0.00000000  0.70705427

  7  1     1    1  |1 1>-      -0.00000862  0.00000000 -0.00000000 -0.00000000  0.07402554 -0.00000000  0.00000000 -0.00000000
                                0.57736313  0.00000000  0.00000000 -0.00000000  0.78739052  0.00000000  0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.70704150 -0.00000000  0.00000000 -0.00000000  0.70706087 -0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.70698280 -0.00000000 -0.00000000  0.00000000  0.70711958  0.00000000

 10  1     1    1  |0 0>        0.00000187  0.00000000  0.00000000  0.00000000  0.00091540  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00008606  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000131  0.00000000  0.00000000  0.00000000  0.01773350
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000299  0.00000000  0.00000000 -0.00000000 -0.01773297  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000075 -0.00000000 -0.00000000  0.00000000 -0.01763239 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00165769 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000165  0.00000000 -0.00000000 -0.00000000  0.01773388 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.01371843  0.00000000  0.00000000  0.00000000 -0.00000102 -0.00000000  0.00000000  0.00000000
                                0.00000020 -0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.01253902 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.01253937 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.74019659  0.01413475 -0.00313778 -0.00000000  0.00000000 -0.00000000 -0.00792016
                               -0.26479660 -0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01253976  0.00000000

  5  1     2    1  |1 0>       -0.19662581 -0.00000001  0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.54963603 -0.00978570 -0.01067340  0.00000000 -0.00000000  0.00000000 -0.00792053

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.01253959 -0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.06813353 -0.00000000 -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.19045640 -0.00435022  0.01381047 -0.00000000 -0.00000000  0.00000000 -0.00792033

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01253974 -0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.01253918 -0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.01667473  0.99983875  0.00282783 -0.00000000 -0.00000000  0.00000000  0.00000001
                                0.00596519 -0.00000097  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.99984275  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.99984276  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00086660 -0.00282784  0.99983874 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00031002  0.00000000  0.00000345  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.99984274 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000059 -0.00000002 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.99990590
                               -0.00000021  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000022



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.02%    0.00%    0.00%    0.00%   49.97%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   50.01%    0.00%    0.00%    0.00%   49.98%
  3  1     3    1  |1 1>+        33.32%    0.00%    0.00%    0.00%    4.85%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%   50.01%    0.00%    0.00%    0.00%   49.98%    0.00%    0.00%
  5  1     2    1  |1 0>         33.33%    0.00%    0.00%    0.00%   32.57%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%   49.99%    0.00%    0.00%    0.00%   49.99%
  7  1     1    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   62.55%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%   49.99%    0.00%    0.00%    0.00%   49.99%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%   49.98%    0.00%    0.00%    0.00%   50.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 15  1     6    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+        61.80%    0.02%    0.00%    0.00%    0.00%    0.00%    0.01%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
  5  1     2    1  |1 0>         34.08%    0.01%    0.01%    0.00%    0.00%    0.00%    0.01%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         4.09%    0.00%    0.02%    0.00%    0.00%    0.00%    0.01%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 10  1     1    1  |0 0>          0.03%   99.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   99.97%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.97%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%   99.97%    0.00%    0.00%    0.00%    0.00%
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

              2       7      171.65       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       157.12     29.64     17.37     79.56     24.28      1.77      0.93      3.36
 REAL TIME  *       177.57 SEC
 DISK USED  *       215.26 MB (local),       11.47 GB (total)
 SF USED    *         3.00 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -289.794706605923

              CI              CI           MULTI         RHF-SCF
   -289.77593611   -289.84589263   -289.39621171   -289.45763325
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
