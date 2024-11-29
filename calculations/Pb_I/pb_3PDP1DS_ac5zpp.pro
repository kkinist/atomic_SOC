
 Working directory              : /wrk/irikura/molpro.ovFfLirJnf/
 Global scratch directory       : /wrk/irikura/molpro.ovFfLirJnf/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ovFfLirJnf/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    8
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Pb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Pb};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,charge=-1,sym=2,spin=3}
 
 NTRIP=11
 NSING=6
 
 {multi
     closed,6,3
     occ,7,9
     wf,charge=0,sym=1,spin=2;state,NTRIP;
     wf,charge=0,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5203.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5203.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 25-Nov-24          TIME: 18:00:25  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Pb   ECP ECP60MDF                 selected for group  1
 Library entry PB     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry PB     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry PB     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry PB     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry PB     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry PB     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry PB     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  PB     22.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   22
 NUMBER OF PRIMITIVE AOS:         459
 NUMBER OF SYMMETRY AOS:          327
 NUMBER OF CONTRACTIONS:          265   (  129Ag  +  136Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 7 8 91011121314  15 7 8 9101112131415
                                        7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9  10111213141516171819
                                       202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617  18192021111213141516
                                       17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.182E-04 0.215E-04 0.215E-04 0.215E-04 0.215E-04 0.215E-04 0.416E-04 0.287E-03
         2 0.228E-05 0.228E-05 0.228E-05 0.344E-03 0.344E-03 0.344E-03 0.263E-02 0.263E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     561.250 MB (compressed) written to integral file ( 13.7%)

     Node minimum: 57.147 MB, node maximum: 83.100 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   39102068.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   3  SEGMENT LENGTH:   15998580      RECORD LENGTH: 524288

 Memory used in sort:      16.56 MW

 SORT1 READ   511790813. AND WROTE     6708865. INTEGRALS IN     21 RECORDS. CPU TIME:     2.68 SEC, REAL TIME:     2.85 SEC
 SORT2 READ    53582235. AND WROTE   312900871. INTEGRALS IN   1928 RECORDS. CPU TIME:     1.00 SEC, REAL TIME:     1.09 SEC

 Node minimum:    39095432.  Node maximum:    39129437. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        15.23     15.01
 REAL TIME  *        17.09 SEC
 DISK USED  *        30.87 MB (local),        1.33 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   6   7
 Initial beta  occupancy:   4   6

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -140.99982926    -140.99982926     0.00D+00     0.17D+00     0     0       0.23      0.41    start
   2     -179.13713445     -38.13730519     0.12D+00     0.20D+00     1     0       0.23      0.64    diag2
   3     -187.65806050      -8.52092605     0.12D+00     0.69D-01     2     0       0.24      0.88    diag2
   4     -191.43572375      -3.77766324     0.56D-01     0.52D-01     3     0       0.24      1.12    diag2
   5     -191.76229995      -0.32657621     0.11D-01     0.20D-01     4     0       0.23      1.35    diag2
   6     -191.85258727      -0.09028732     0.35D-02     0.59D-02     5     0       0.24      1.59    diag2
   7     -191.86165640      -0.00906913     0.11D-02     0.19D-02     6     0       0.24      1.83    diag2
   8     -191.86377789      -0.00212149     0.51D-03     0.75D-03     7     0       0.24      2.07    fixocc
   9     -191.86430765      -0.00052976     0.17D-03     0.68D-03     8     0       0.24      2.31    diag2
  10     -191.86437457      -0.00006692     0.11D-03     0.20D-03     9     0       0.24      2.55    diag2/orth
  11     -191.86439092      -0.00001635     0.22D-04     0.95D-04     9     0       0.24      2.79    diag2
  12     -191.86439560      -0.00000468     0.11D-04     0.40D-04     9     0       0.24      3.03    diag2
  13     -191.86439698      -0.00000138     0.46D-05     0.33D-04     9     0       0.24      3.27    diag2
  14     -191.86439720      -0.00000022     0.18D-05     0.15D-04     9     0       0.24      3.51    diag2
  15     -191.86439723      -0.00000003     0.71D-06     0.54D-05     9     0       0.24      3.75    diag2
  16     -191.86439724      -0.00000001     0.30D-06     0.32D-05     9     0       0.24      3.99    diag2
  17     -191.86439724      -0.00000000     0.10D-06     0.35D-06     0     0       0.24      4.23    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864397240744
  RHF One-electron energy            -340.681777118059
  RHF Two-electron energy             148.817379877315
  RHF Kinetic energy                   62.712671773439
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059419919692

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94945     1  1  s    1.00000
    2.1     2.00000    -0.84962     1  1  d0  -0.50939    1  1  d2+  0.85985
    3.1     2.00000    -0.84962     1  1  d1+  0.99942
    4.1     2.00000    -0.84962     1  1  d2-  0.99940
    5.1     2.00000    -0.84962     1  1  d0   0.85986    1  1  d2+  0.50939
    6.1     2.00000    -0.84962     1  1  d1-  0.99942
    7.1     2.00000    -0.35280     1  1  s   -0.38141    1  5  s    0.52245    1  6  s    0.42682    1 11  s   -0.25488
    1.2     2.00000    -3.63192     1  1  px   1.00025
    2.2     2.00000    -3.63191     1  1  pz   1.00025
    3.2     2.00000    -3.63191     1  1  py   1.00025
    4.2     1.00000    -0.05163     1  5  py   0.35611    1  6  py   0.37651    1  7  py   0.25410
    5.2     1.00000    -0.05163     1  5  pz   0.35611    1  6  pz   0.37651    1  7  pz   0.25410
    6.2     1.00000    -0.05163     1  5  px   0.35611    1  6  px   0.37649    1  7  px   0.25414


 HOMO      6.2    -0.051631 =      -1.4050eV
 LUMO      7.2     0.120361 =       3.2752eV
 LUMO-HOMO         0.171992 =       4.6801eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        1.51       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        19.53      4.30     15.01
 REAL TIME  *        22.22 SEC
 DISK USED  *        36.95 MB (local),        1.38 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        11.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     249 (  122  127)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            11
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.375D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.238D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.774D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.373D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.212D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 4 3 2 6 1 1 5 4   3 2 6 1 5 4 3 2 6 7  11 8141015 91312 1 2   6 4 3 510 91315 714
                                        81211 2 6 4 3 5 110   91315 7 8141211 5 4   3 2 6 110 91315 7 8  14121116282220211824
                                       261917232527 5 4 3 6   210 91315 714 81211   1 5 4 3 6 210 91315   714 81211 1 5 4 3 6
                                        2 1 5 4 3 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.134D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.654D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.123D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.160D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.760D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.161D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.154D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.667D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.163D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 2 3 1 2   3 1 710 9 4 8 5 6 3   2 1 6 5 4 810 9 7 7  10 9 8 4 6 5 3 2 120
                                       13181511171614211912   710 9 8 4 6 5 1 3 2  20131815111617142119  12 710 9 8 4 6 52013
                                       181511171621141912 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 520131815  11171621141912 1 3 2
                                        710 9 8 4 6 5 1 3 2   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
                                          0.05882   0.05882   0.05882
 Weight factors for state symmetry  2:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
 
 Number of orbital rotations:  2021  ( 24 closed/active, 1113 closed/virtual, 0 active/active, 884 active/virtual )
 Total number of variables:    5072
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   20    0   -191.71052344    -191.74197138   -0.03144794    0.14996046 0.00144601 0.00000000  0.87E+00      3.32
   2    6   10    0   -191.74140875    -191.74314287   -0.00173412    0.10150597 0.00006193 0.00000000  0.12E+00      6.19
   3    5   10    0   -191.74314856    -191.74314862   -0.00000006    0.00056281 0.00000010 0.00000000  0.53E-03      8.82
   4    6   12    0   -191.74314862    -191.74314862    0.00000000    0.00000003 0.00000001 0.00000000  0.98E-07     11.33

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.73E-08)
                       Final energy:   -191.74314862
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.836634845449
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.83626508
 One electron energy                          -336.24960786
 Two electron energy                           144.41297302
 Virial ratio                                    4.05296049
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.836634844683
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.83626510
 One electron energy                          -336.24960792
 Two electron energy                           144.41297308
 Virial ratio                                    4.05296049
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.836634844642
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.83626510
 One electron energy                          -336.24960792
 Two electron energy                           144.41297308
 Virial ratio                                    4.05296049
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -191.669505952889
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.37728536
 One electron energy                          -331.74664648
 Two electron energy                           140.07714053
 Virial ratio                                    4.07274523
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -191.669505952802
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.37728535
 One electron energy                          -331.74664647
 Two electron energy                           140.07714051
 Virial ratio                                    4.07274523
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -191.669505952770
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.37728535
 One electron energy                          -331.74664647
 Two electron energy                           140.07714051
 Virial ratio                                    4.07274523
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -191.669505952481
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.37728534
 One electron energy                          -331.74664643
 Two electron energy                           140.07714048
 Virial ratio                                    4.07274523
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -191.669505952481
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.37728534
 One electron energy                          -331.74664643
 Two electron energy                           140.07714048
 Virial ratio                                    4.07274523
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -191.664785592782
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.45564198
 One electron energy                          -332.13107515
 Two electron energy                           140.46628956
 Virial ratio                                    4.06881459
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -191.664785592725
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.45564198
 One electron energy                          -332.13107516
 Two electron energy                           140.46628956
 Virial ratio                                    4.06881459
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -191.664785592722
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.45564197
 One electron energy                          -332.13107510
 Two electron energy                           140.46628951
 Virial ratio                                    4.06881459
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.802618580282
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.79415923
 One electron energy                          -336.01304048
 Two electron energy                           144.21042190
 Virial ratio                                    4.05446591
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.802618580280
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.79415923
 One electron energy                          -336.01304048
 Two electron energy                           144.21042190
 Virial ratio                                    4.05446591
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.802618579423
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.79415925
 One electron energy                          -336.01304053
 Two electron energy                           144.21042195
 Virial ratio                                    4.05446591
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.802618579369
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.79415925
 One electron energy                          -336.01304053
 Two electron energy                           144.21042195
 Virial ratio                                    4.05446591
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.802618579102
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.79415925
 One electron energy                          -336.01304054
 Two electron energy                           144.21042196
 Virial ratio                                    4.05446591
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -191.768642559858
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.73042723
 One electron energy                          -335.61453475
 Two electron energy                           143.84589219
 Virial ratio                                    4.05702752
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.008008836016
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999999999422
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000000000019
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.991991540048
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.999999999999
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.997208809304
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.999999999942
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000001
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.002791153718
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999998688
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000001339
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.150845186880
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999993586
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000005407
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.849158307535
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000000366
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.999999999872
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.909920303781
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000009640
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999992363
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.090079108409
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000001312
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999998661
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     2.841145977104
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000006991
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999994575
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.158850152417
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999634
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.000000000129
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.092870886915
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999990419
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000007636
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.907129737873
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     6.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     6.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>     2.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 3 5   6 4 2 1 5 3 6 2 413  101514 81211 7 9 1 5   3 6 4 21310141511 8
                                       12 7 9 5 3 6 4 2 113  10151411 812 7 9 3 5   6 2 4 11310151411 8  12 7 922162018241927
                                       232617212528 3 5 6 2   4101315141112 8 7 9   1 2 3 5 6 410131415  1112 8 7 9 1 2 3 5 6
                                        4 1 2 3 5 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 1   2 3 9 7 810 5 6 4 1   2 3 9 7 810 5 6 4 9   7 810 5 6 4 2 1 318
                                       20151716141221131911   9 7 810 5 6 4 2 1 3  18201517161412211319  11 9 7 810 5 6 42018
                                       151716141221131911 9   7 810 5 6 4 2 1 3 7   910 8 5 6 418201517  16141221131911 2 1 3
                                        9 7 510 8 6 4 2 1 3   1 2 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.25368     1  1  s    0.99858
    2.1     2.00000    -1.15412     1  1  d2-  1.00117
    3.1     2.00000    -1.15412     1  1  d2+  1.00117
    4.1     2.00000    -1.15412     1  1  d1-  1.00117
    5.1     2.00000    -1.15412     1  1  d0   1.00117
    6.1     2.00000    -1.15412     1  1  d1+  1.00117
    7.1     1.97378    -0.62588     1  1  s   -0.40256    1  5  s    0.61353    1  6  s    0.43889    1 11  s   -0.26856
    1.2     2.00000    -3.93637     1  1  py   0.99976
    2.2     2.00000    -3.93637     1  1  px   0.99976
    3.2     2.00000    -3.93637     1  1  pz   0.99976
    4.2     0.51591    -0.09969     1  1  pz  -0.25838    1  5  pz   0.46789    1  6  pz   0.39075
    5.2     0.51591    -0.09969     1  1  px  -0.25838    1  5  px   0.46789    1  6  px   0.39075
    6.2     0.51591    -0.09969     1  1  py  -0.25838    1  5  py   0.46789    1  6  py   0.39075
    7.2     0.15950     0.03354     1  5  pz  -0.25870    1 12  pz   0.99151
    8.2     0.15950     0.03354     1  5  px  -0.25870    1 12  px   0.99151
    9.2     0.15950     0.03354     1  5  py  -0.25870    1 12  py   0.99151
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a0a000       0.99510964      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2 0aa000      -0.00000000      0.99510964     -0.00003605     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2 aa0000       0.00000000      0.00003605      0.99510964     -0.00000000      0.00000000     -0.00000000      0.00000000
 2 0a00a0      -0.00000000      0.00000000     -0.00000000      0.80963074      0.00002093     -0.00000476     -0.00000009
 2 00a00a      -0.00000000      0.00000000     -0.00000000     -0.37340970     -0.00000994      0.00000045      0.00000004
 2 0a0a00      -0.00000000     -0.00000009     -0.00256710     -0.00001813      0.70186379     -0.00003110      0.00000004
 2 0a000a      -0.00000000      0.00256710     -0.00000009      0.00000420      0.00003110      0.70186379      0.00000003
 2 00aa00      -0.00256710     -0.00000000     -0.00000000      0.00000008     -0.00000004     -0.00000003      0.70186376
 2 a0000a       0.00256709     -0.00000000     -0.00000000      0.00000008     -0.00000004     -0.00000003      0.70186375
 2 00a0a0      -0.00000000     -0.00256709      0.00000009      0.00000420      0.00003110      0.70186372      0.00000003
 2 a000a0       0.00000000      0.00000009      0.00256709     -0.00001813      0.70186372     -0.00003110      0.00000004
 2 a00a00      -0.00000000      0.00000000     -0.00000000     -0.43622096     -0.00001099      0.00000431      0.00000005
 2 0000aa      -0.00000000     -0.01577168      0.00000057     -0.00000000     -0.00000000     -0.00000001     -0.00000000
 2 000aa0      -0.00000000     -0.00000057     -0.01577168     -0.00000000      0.00000001     -0.00000000     -0.00000000
 2 000a0a      -0.01577168     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 0 a2a000      -0.08854250     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 0 2aa000      -0.00000000     -0.08854249      0.00000321      0.00000000      0.00000000      0.00000000      0.00000000
 0 aa2000      -0.00000000     -0.00000321     -0.08854249      0.00000000     -0.00000000      0.00000000      0.00000000
 0 0a20a0       0.00000000     -0.00000000      0.00000000     -0.06636300     -0.00000172      0.00000039      0.00000001
 0 2a00a0      -0.00000000     -0.00000000      0.00000000     -0.06632874     -0.00000171      0.00000039      0.00000001
 0 02a00a      -0.00000000      0.00000000     -0.00000000      0.03025960      0.00000081     -0.00000003     -0.00000000
 0 20a00a       0.00000000     -0.00000000      0.00000000      0.03093914      0.00000082     -0.00000004     -0.00000000
 0 0a2a00       0.00000000     -0.00000005     -0.00141192      0.00000149     -0.05770623      0.00000256     -0.00000000
 0 2a000a       0.00000000      0.00141192     -0.00000005     -0.00000035     -0.00000256     -0.05770623     -0.00000000
 0 02aa00      -0.00141192      0.00000000      0.00000000     -0.00000001      0.00000000      0.00000000     -0.05770623
 0 a2000a       0.00141192      0.00000000      0.00000000     -0.00000001      0.00000000      0.00000000     -0.05770623
 0 20a0a0       0.00000000     -0.00141192      0.00000005     -0.00000035     -0.00000256     -0.05770622     -0.00000000
 0 a020a0      -0.00000000      0.00000005      0.00141192      0.00000149     -0.05770622      0.00000256     -0.00000000
 0 2a0a00       0.00000000      0.00000069      0.01897801      0.00000148     -0.05732340      0.00000254     -0.00000000
 0 0a200a       0.00000000     -0.01897801      0.00000069     -0.00000034     -0.00000254     -0.05732340     -0.00000000
 0 20aa00       0.01897801     -0.00000000     -0.00000000     -0.00000001      0.00000000      0.00000000     -0.05732340
 0 a0200a      -0.01897801      0.00000000      0.00000000     -0.00000001      0.00000000      0.00000000     -0.05732340
 0 02a0a0       0.00000000      0.01897801     -0.00000069     -0.00000034     -0.00000254     -0.05732340     -0.00000000
 0 a200a0      -0.00000000     -0.00000069     -0.01897801      0.00000148     -0.05732340      0.00000254     -0.00000000
 0 a20a00      -0.00000000      0.00000000      0.00000000      0.03542385      0.00000089     -0.00000035     -0.00000000
 0 a02a00       0.00000000     -0.00000000     -0.00000000      0.03606913      0.00000091     -0.00000035     -0.00000000
 
 Energy:     -191.83663485   -191.83663484   -191.83663484   -191.66950595   -191.66950595   -191.66950595   -191.66950595

 State:              8               9              10              11
 2 a0a000      -0.00000000     -0.00000000      0.00000001     -0.00729950
 2 0aa000      -0.00000000     -0.00000014     -0.00729951     -0.00000001
 2 aa0000       0.00000000     -0.00729951      0.00000014      0.00000000
 2 0a00a0      -0.03626410      0.00000000      0.00000000      0.00000000
 2 00a00a       0.71929281     -0.00000000      0.00000000     -0.00000000
 2 0a0a00       0.00000029     -0.69616844      0.00001331      0.00000026
 2 0a000a       0.00000174      0.00001331      0.69616844      0.00000068
 2 00aa00       0.00000000     -0.00000026      0.00000068     -0.69616847
 2 a0000a       0.00000000      0.00000026     -0.00000068      0.69616848
 2 00a0a0       0.00000174     -0.00001331     -0.69616851     -0.00000068
 2 a000a0       0.00000029      0.69616851     -0.00001331     -0.00000026
 2 a00a00      -0.68302872     -0.00000000      0.00000000     -0.00000000
 2 0000aa      -0.00000000     -0.00000245     -0.12827679     -0.00000013
 2 000aa0      -0.00000000     -0.12827679      0.00000245      0.00000005
 2 000a0a      -0.00000000     -0.00000005      0.00000013     -0.12827679
 0 a2a000      -0.00000000      0.00000000     -0.00000000      0.00421809
 0 2aa000       0.00000000      0.00000008      0.00421809      0.00000000
 0 aa2000      -0.00000000      0.00421809     -0.00000008     -0.00000000
 0 0a20a0       0.00258925     -0.00000000     -0.00000000     -0.00000000
 0 2a00a0       0.00335413     -0.00000000     -0.00000000     -0.00000000
 0 02a00a      -0.05911944      0.00000000     -0.00000000      0.00000000
 0 20a00a      -0.05876667      0.00000000     -0.00000000      0.00000000
 0 0a2a00      -0.00000002      0.05765030     -0.00000110     -0.00000002
 0 2a000a      -0.00000014     -0.00000110     -0.05765030     -0.00000006
 0 02aa00      -0.00000000      0.00000002     -0.00000006      0.05765030
 0 a2000a      -0.00000000     -0.00000002      0.00000006     -0.05765030
 0 20a0a0      -0.00000014      0.00000110      0.05765030      0.00000006
 0 a020a0      -0.00000002     -0.05765030      0.00000110      0.00000002
 0 2a0a00      -0.00000002      0.05581745     -0.00000107     -0.00000002
 0 0a200a      -0.00000014     -0.00000107     -0.05581745     -0.00000005
 0 20aa00      -0.00000000      0.00000002     -0.00000005      0.05581745
 0 a0200a      -0.00000000     -0.00000002      0.00000005     -0.05581745
 0 02a0a0      -0.00000014      0.00000107      0.05581746      0.00000005
 0 a200a0      -0.00000002     -0.05581746      0.00000107      0.00000002
 0 a20a00       0.05617742      0.00000000     -0.00000000      0.00000000
 0 a02a00       0.05576530      0.00000000     -0.00000000      0.00000000
 
 Energy:     -191.66950595   -191.66478559   -191.66478559   -191.66478559
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020000      -0.02140568      0.00000119     -0.00000636     -0.00000006      0.81005154      0.56215787
 2 002000       0.71222806     -0.00003954      0.00000210     -0.00000102     -0.38648793      0.56215784
 2 b0a000      -0.00003896     -0.70177011      0.00000000      0.00000000     -0.00000000      0.00000000
 2 a0b000       0.00003896      0.70177011     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2 0ab000       0.00000093     -0.00000000      0.70177011      0.00003946      0.00000554     -0.00000000
 2 0ba000      -0.00000093      0.00000000     -0.70177011     -0.00003946     -0.00000554      0.00000000
 2 ab0000       0.00000105     -0.00000000     -0.00003946      0.70177011      0.00000008      0.00000000
 2 ba0000      -0.00000105      0.00000000      0.00003946     -0.70177011     -0.00000008     -0.00000000
 2 200000      -0.69082238      0.00003835      0.00000426      0.00000108     -0.42356365      0.56215784
 0 220000       0.06322145     -0.00000351      0.00000019     -0.00000009     -0.03430688     -0.09737471
 0 022000      -0.06132136      0.00000340      0.00000038      0.00000010     -0.03759794     -0.09737471
 0 202000      -0.00190009      0.00000011     -0.00000056     -0.00000001      0.07190483     -0.09737470
 0 b2a000       0.00000346      0.06229315      0.00000000     -0.00000000      0.00000000     -0.00000000
 0 a2b000      -0.00000346     -0.06229315     -0.00000000      0.00000000     -0.00000000      0.00000000
 0 2ab000      -0.00000008      0.00000000     -0.06229315     -0.00000350     -0.00000049      0.00000000
 0 2ba000       0.00000008     -0.00000000      0.06229315      0.00000350      0.00000049     -0.00000000
 0 ba2000       0.00000009     -0.00000000     -0.00000350      0.06229315      0.00000001     -0.00000000
 0 ab2000      -0.00000009      0.00000000      0.00000350     -0.06229315     -0.00000001      0.00000000
 2 0b00a0       0.00101919     -0.00000006      0.00000030      0.00000000     -0.03856916     -0.05880975
 2 0a00b0      -0.00101919      0.00000006     -0.00000030     -0.00000000      0.03856916      0.05880975
 2 a00b00      -0.03289228      0.00000183      0.00000020      0.00000005     -0.02016723      0.05880974
 2 b00a00       0.03289228     -0.00000183     -0.00000020     -0.00000005      0.02016723     -0.05880974
 2 00a00b       0.03391147     -0.00000188      0.00000010     -0.00000005     -0.01840193      0.05880974
 2 00b00a      -0.03391147      0.00000188     -0.00000010      0.00000005      0.01840193     -0.05880974
 
 Energy:     -191.80261858   -191.80261858   -191.80261858   -191.80261858   -191.80261858   -191.76864256
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        31.54     12.01      4.30     15.01
 REAL TIME  *        35.81 SEC
 DISK USED  *        89.89 MB (local),        1.79 GB (total)
 SF USED    *       148.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8366348   2.0
    -191.8366348   2.0
    -191.8366348   2.0
    -191.6695060   6.0
    -191.6695060   6.0
    -191.6695060   6.0
    -191.6695060   6.0
    -191.6695060   6.0
    -191.6647856   2.0
    -191.6647856   2.0
    -191.6647856   2.0
    -191.8026186   6.0
    -191.8026186   6.0
    -191.8026186   6.0
    -191.8026186   6.0
    -191.8026186   6.0
    -191.7686426  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 11  Roots:   1   2   3   4   5   6   7   8   9  10  11
 Number of reference states: 11  Roots:   1   2   3   4   5   6   7   8   9  10  11

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:       90 conf      120 CSFs
 N elec internal:    18284 conf    76944 CSFs
 N-1 el internal:    12821 conf    88545 CSFs
 N-2 el internal:     4717 conf    46537 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.83663485
     2      -191.83663484
     3      -191.83663484
     4      -191.66950595
     5      -191.66950595
     6      -191.66950595
     7      -191.66950595
     8      -191.66950595
     9      -191.66478559
    10      -191.66478559
    11      -191.66478559

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1166D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1031D-06

 Number of blocks in overlap matrix:  1023   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2268
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:      11024685
 Number of doubly external configurations:      35163228
 Total number of contracted configurations:     46226319
 Total number of uncontracted configurations:  731368774

 Diagonal Coupling coefficients finished.               Storage:  24097073 words, CPU-Time:    110.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3764734 words, CPU-time:      5.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.83663485     0.00000000    -0.95547801  0.48D-01  0.12D+00   142.83
    1     2     2     1.00000000     0.00000000  -191.83663484     0.00000000    -0.95572204  0.48D-01  0.12D+00   142.83
    1     3     3     1.00000000     0.00000000  -191.83663484    -0.00000000    -0.95592727  0.48D-01  0.12D+00   142.83
    1     4     4     1.00000000     0.00000000  -191.66950595     0.00000000    -0.91760749  0.40D-01  0.10D+00   142.83
    1     5     5     1.00000000     0.00000000  -191.66950595    -0.00000000    -0.91729027  0.41D-01  0.10D+00   142.83
    1     6     6     1.00000000     0.00000000  -191.66950595     0.00000000    -0.91721453  0.40D-01  0.10D+00   142.83
    1     7     7     1.00000000     0.00000000  -191.66950595    -0.00000000    -0.91748553  0.40D-01  0.10D+00   142.83
    1     8     8     1.00000000     0.00000000  -191.66950595     0.00000000    -0.91715570  0.40D-01  0.10D+00   142.83
    1     9     9     1.00000000     0.00000000  -191.66478559     0.00000000    -0.92260537  0.43D-01  0.11D+00   142.83
    1    10    10     1.00000000     0.00000000  -191.66478559     0.00000000    -0.92249140  0.43D-01  0.11D+00   142.83
    1    11    11     1.00000000     0.00000000  -191.66478559     0.00000000    -0.92241921  0.43D-01  0.11D+00   142.83
    2     1     1     1.10363922    -0.76305918  -192.59969402    -0.76305918    -0.02638916  0.42D-02  0.20D-02  4151.25
    2     2     2     1.10368343    -0.76296969  -192.59960453    -0.76296969    -0.02646308  0.42D-02  0.20D-02  4151.25
    2     3     3     1.10378894    -0.76290067  -192.59953552    -0.76290067    -0.02656448  0.43D-02  0.20D-02  4151.25
    2     4     4     1.09686817    -0.75363617  -192.42314212    -0.75363617    -0.02123764  0.28D-02  0.15D-02  4151.25
    2     5     5     1.09687231    -0.75362213  -192.42312808    -0.75362213    -0.02124912  0.28D-02  0.15D-02  4151.25
    2     6     6     1.09694922    -0.75361642  -192.42312238    -0.75361642    -0.02124917  0.28D-02  0.15D-02  4151.25
    2     7     7     1.09690531    -0.75360103  -192.42310698    -0.75360103    -0.02127622  0.28D-02  0.15D-02  4151.25
    2     8     8     1.09697349    -0.75359597  -192.42310192    -0.75359597    -0.02127596  0.28D-02  0.15D-02  4151.25
    2     9     9     1.09835447    -0.75399373  -192.41877933    -0.75399373    -0.02240408  0.35D-02  0.15D-02  4151.25
    2    10    10     1.09835555    -0.75398393  -192.41876952    -0.75398393    -0.02241106  0.35D-02  0.15D-02  4151.25
    2    11    11     1.09839864    -0.75396210  -192.41874769    -0.75396210    -0.02243917  0.35D-02  0.15D-02  4151.25
    3     1     1     1.08998348    -0.78778030  -192.62441514    -0.02472112    -0.00046281  0.68D-04  0.52D-04  8060.66
    3     2     2     1.08998020    -0.78777493  -192.62440978    -0.02480524    -0.00046815  0.69D-04  0.52D-04  8060.66
    3     3     3     1.08996805    -0.78776849  -192.62440334    -0.02486782    -0.00047153  0.69D-04  0.53D-04  8060.66
    3     4     4     1.08690834    -0.77357285  -192.44307880    -0.01993667    -0.00029464  0.35D-04  0.29D-04  8060.66
    3     5     5     1.08690789    -0.77357191  -192.44307787    -0.01994978    -0.00029556  0.35D-04  0.29D-04  8060.66
    3     6     6     1.08690478    -0.77357160  -192.44307756    -0.01995518    -0.00029556  0.35D-04  0.29D-04  8060.66
    3     7     7     1.08692627    -0.77357082  -192.44307677    -0.01996979    -0.00029745  0.35D-04  0.30D-04  8060.66
    3     8     8     1.08692104    -0.77356979  -192.44307574    -0.01997382    -0.00029773  0.35D-04  0.30D-04  8060.66
    3     9     9     1.08710903    -0.77502867  -192.43981426    -0.02103493    -0.00033917  0.48D-04  0.34D-04  8060.66
    3    10    10     1.08710501    -0.77502773  -192.43981332    -0.02104380    -0.00033963  0.49D-04  0.34D-04  8060.66
    3    11    11     1.08711260    -0.77502743  -192.43981302    -0.02106533    -0.00034044  0.48D-04  0.34D-04  8060.66
    4     1     1     1.08963044    -0.78826456  -192.62489940    -0.00048426    -0.00002181  0.31D-05  0.28D-05 11630.26
    4     2     2     1.08962912    -0.78826436  -192.62489921    -0.00048943    -0.00002198  0.32D-05  0.28D-05 11630.26
    4     3     3     1.08962265    -0.78826341  -192.62489826    -0.00049492    -0.00002270  0.32D-05  0.29D-05 11630.26
    4     4     4     1.08706552    -0.77387926  -192.44338521    -0.00030641    -0.00001246  0.22D-05  0.15D-05 11630.26
    4     5     5     1.08706723    -0.77387924  -192.44338519    -0.00030732    -0.00001234  0.21D-05  0.15D-05 11630.26
    4     6     6     1.08706426    -0.77387923  -192.44338518    -0.00030762    -0.00001254  0.22D-05  0.16D-05 11630.26
    4     7     7     1.08706801    -0.77387915  -192.44338510    -0.00030833    -0.00001224  0.21D-05  0.15D-05 11630.26
    4     8     8     1.08706731    -0.77387905  -192.44338501    -0.00030927    -0.00001226  0.21D-05  0.15D-05 11630.26
    4     9     9     1.08718306    -0.77538185  -192.44016744    -0.00035318    -0.00001517  0.29D-05  0.18D-05 11630.26
    4    10    10     1.08718217    -0.77538176  -192.44016736    -0.00035403    -0.00001524  0.29D-05  0.18D-05 11630.26
    4    11    11     1.08718246    -0.77538175  -192.44016734    -0.00035432    -0.00001526  0.29D-05  0.18D-05 11630.26
    5     1     1     1.08976814    -0.78828908  -192.62492393    -0.00002452    -0.00000096  0.58D-07  0.15D-06 14883.34
    5     2     2     1.08976771    -0.78828907  -192.62492392    -0.00002471    -0.00000096  0.58D-07  0.15D-06 14883.34
    5     3     3     1.08976762    -0.78828902  -192.62492387    -0.00002561    -0.00000101  0.60D-07  0.15D-06 14883.34
    5     4     4     1.08719567    -0.77389391  -192.44339987    -0.00001466    -0.00000067  0.34D-07  0.14D-06 14883.34
    5     5     5     1.08719537    -0.77389379  -192.44339974    -0.00001455    -0.00000067  0.34D-07  0.14D-06 14883.34
    5     6     6     1.08719570    -0.77389372  -192.44339967    -0.00001449    -0.00000066  0.35D-07  0.14D-06 14883.34
    5     7     7     1.08719534    -0.77389350  -192.44339945    -0.00001434    -0.00000066  0.35D-07  0.14D-06 14883.34
    5     8     8     1.08719524    -0.77389342  -192.44339938    -0.00001437    -0.00000066  0.35D-07  0.14D-06 14883.34
    5     9     9     1.08729356    -0.77539916  -192.44018475    -0.00001731    -0.00000086  0.69D-07  0.16D-06 14883.34
    5    10    10     1.08729336    -0.77539914  -192.44018473    -0.00001737    -0.00000085  0.68D-07  0.16D-06 14883.34
    5    11    11     1.08729326    -0.77539912  -192.44018472    -0.00001738    -0.00000085  0.68D-07  0.16D-06 14883.34
    6     1     1     1.08978049    -0.78829017  -192.62492502    -0.00000109    -0.00000006  0.57D-08  0.90D-08 18138.73
    6     2     2     1.08978034    -0.78829017  -192.62492502    -0.00000110    -0.00000006  0.61D-08  0.93D-08 18138.73
    6     3     3     1.08978047    -0.78829017  -192.62492502    -0.00000115    -0.00000006  0.58D-08  0.91D-08 18138.73
    6     4     4     1.08721699    -0.77389475  -192.44340070    -0.00000084    -0.00000006  0.49D-08  0.12D-07 18138.73
    6     5     5     1.08721678    -0.77389462  -192.44340058    -0.00000084    -0.00000006  0.49D-08  0.12D-07 18138.73
    6     6     6     1.08721732    -0.77389455  -192.44340050    -0.00000083    -0.00000006  0.50D-08  0.12D-07 18138.73
    6     7     7     1.08721712    -0.77389432  -192.44340027    -0.00000082    -0.00000006  0.51D-08  0.12D-07 18138.73
    6     8     8     1.08721707    -0.77389425  -192.44340020    -0.00000082    -0.00000006  0.50D-08  0.12D-07 18138.73
    6     9     9     1.08731096    -0.77540018  -192.44018577    -0.00000103    -0.00000008  0.84D-08  0.17D-07 18138.73
    6    10    10     1.08731090    -0.77540015  -192.44018574    -0.00000102    -0.00000008  0.84D-08  0.17D-07 18138.73
    6    11    11     1.08731087    -0.77540014  -192.44018573    -0.00000102    -0.00000008  0.83D-08  0.17D-07 18138.73
    7     1     1     1.08978763    -0.78829024  -192.62492509    -0.00000007    -0.00000000  0.35D-09  0.74D-09 21389.13
    7     2     2     1.08978762    -0.78829024  -192.62492509    -0.00000007    -0.00000000  0.33D-09  0.72D-09 21389.13
    7     3     3     1.08978763    -0.78829024  -192.62492509    -0.00000007    -0.00000000  0.33D-09  0.72D-09 21389.13
    7     4     4     1.08722080    -0.77389483  -192.44340078    -0.00000007    -0.00000001  0.53D-09  0.95D-09 21389.13
    7     5     5     1.08722079    -0.77389470  -192.44340065    -0.00000008    -0.00000001  0.53D-09  0.96D-09 21389.13
    7     6     6     1.08722049    -0.77389462  -192.44340057    -0.00000007    -0.00000001  0.52D-09  0.97D-09 21389.13
    7     7     7     1.08722036    -0.77389440  -192.44340035    -0.00000007    -0.00000001  0.52D-09  0.97D-09 21389.13
    7     8     8     1.08722033    -0.77389432  -192.44340027    -0.00000007    -0.00000001  0.52D-09  0.97D-09 21389.13
    7     9     9     1.08731523    -0.77540029  -192.44018588    -0.00000011    -0.00000001  0.77D-09  0.17D-08 21389.13
    7    10    10     1.08731523    -0.77540026  -192.44018585    -0.00000011    -0.00000001  0.76D-09  0.17D-08 21389.13
    7    11    11     1.08731523    -0.77540025  -192.44018584    -0.00000011    -0.00000001  0.77D-09  0.17D-08 21389.13


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.2%  24.1%
 P   0.2%  25.3%  38.6%

 Initialization:   0.5%
 Other:           10.8%

 Total CPU:    21389.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0/000           0.9531242   0.0144349  -0.0206524   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                            0.0309104   0.0008812   0.0036952
 22222222220//000          -0.0157293   0.9513767  -0.0609561  -0.0000000  -0.0000000  -0.0000000  -0.0000001  -0.0000000
                           -0.0012907   0.0309275   0.0034217
 2222222222//0000           0.0196845   0.0612755   0.9512825  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000001
                            0.0035728   0.0035493  -0.0307331
 22222222220/00/0           0.0000000   0.0000000  -0.0000000  -0.0618333   0.7755807  -0.0075816  -0.0017489   0.0003696
                            0.0000004   0.0000002  -0.0000001
 222222222200/00/          -0.0000000   0.0000000   0.0000000   0.7026216  -0.3342526   0.0026785  -0.0006481  -0.0005980
                           -0.0000004   0.0000006   0.0000001
 222222222200/0/0          -0.0003864   0.0233727  -0.0014975   0.0014014   0.0016319   0.0002928   0.6738197   0.0047831
                            0.0276590  -0.6627682  -0.0733256
 22222222220/000/           0.0003864  -0.0233728   0.0014975   0.0014001   0.0016315   0.0002926   0.6738149   0.0047827
                           -0.0276596   0.6627729   0.0733262
 22222222220/0/00           0.0004836   0.0015054   0.0233704   0.0004312  -0.0002551   0.0043249  -0.0047851   0.6738102
                           -0.0765649  -0.0760597   0.6586005
 2222222222/000/0          -0.0004836  -0.0015054  -0.0233705   0.0004311  -0.0002554   0.0043262  -0.0047849   0.6738032
                            0.0765652   0.0760607  -0.6586074
 2222222222/0000/          -0.0234156  -0.0003546   0.0005074   0.0005839   0.0066343   0.6737912  -0.0002791  -0.0043250
                            0.6624038   0.0188831   0.0791883
 222222222200//00           0.0234156   0.0003546  -0.0005074   0.0005835   0.0066348   0.6737907  -0.0002795  -0.0043255
                           -0.6624045  -0.0188831  -0.0791869
 2222222222/00/00          -0.0000000  -0.0000000  -0.0000000  -0.6407878  -0.4413282   0.0049032   0.0023970   0.0002284
                            0.0000000  -0.0000007   0.0000000
 22222222220000//           0.0001729  -0.0104595   0.0006702   0.0000001   0.0000000   0.0000000   0.0000004   0.0000000
                            0.0053450  -0.1280772  -0.0141699
 2222222222000/0/          -0.0104787  -0.0001587   0.0002271  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                           -0.1280063  -0.0036491  -0.0153026
 2222222222000//0          -0.0002164  -0.0006737  -0.0104585  -0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000007
                           -0.0147958  -0.0146983   0.1272720
 2222220222/2/000          -0.0743446  -0.0011259   0.0016109   0.0000000   0.0000000   0.0000001   0.0000000  -0.0000000
                            0.0007757   0.0000221   0.0000927
 22222202222//000           0.0012269  -0.0742083   0.0047546   0.0000000  -0.0000000  -0.0000000   0.0000006   0.0000000
                           -0.0000324   0.0007762   0.0000859
 2222220222//2000          -0.0015354  -0.0047795  -0.0742010   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000001
                            0.0000897   0.0000891  -0.0007713
 22222202220/20/0           0.0000000  -0.0000000   0.0000000   0.0040494  -0.0554531   0.0005424   0.0001258  -0.0000262
                           -0.0000000  -0.0000001  -0.0000000
 22222202222/00/0           0.0000000   0.0000000   0.0000000   0.0047876  -0.0553937   0.0005412   0.0001241  -0.0000266
                           -0.0000001   0.0000000   0.0000000
 222222022202/00/           0.0000000   0.0000000   0.0000000  -0.0503682   0.0235524  -0.0001880   0.0000474   0.0000427
                            0.0000000  -0.0000000  -0.0000000
 222222022220/00/           0.0000000  -0.0000000   0.0000000  -0.0500488   0.0242191  -0.0001948   0.0000452   0.0000428
                            0.0000001  -0.0000001  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956383   -0.015783    0.019752    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000771    0.000616
            -0.037334
 2           0.014484    0.954629    0.061485    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.002400   -0.037266
            -0.000565
 3          -0.020723   -0.061164    0.954535   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.037262    0.002388
             0.000809
 4           0.000000   -0.000000   -0.000000   -0.033355    0.000613    0.001992    0.957677    0.000830    0.000000   -0.000001
             0.000000
 5          -0.000000   -0.000000   -0.000000    0.957631   -0.000363    0.002320    0.033341    0.009435    0.000000   -0.000000
            -0.000000
 6          -0.000000   -0.000000    0.000000   -0.009399    0.006151    0.000416   -0.001163    0.958194   -0.000001   -0.000000
             0.000000
 7           0.000000   -0.000000    0.000000   -0.002249   -0.006805    0.958231   -0.002067   -0.000397   -0.000000   -0.000003
             0.000000
 8           0.000000   -0.000000   -0.000000    0.000428    0.958216    0.006802   -0.000607   -0.006151    0.000005   -0.000000
             0.000000
 9           0.037858   -0.001581    0.004376    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.109844   -0.039681
             0.950318
 10          0.001079    0.037879    0.004347    0.000000    0.000001    0.000003    0.000001    0.000000   -0.109120    0.950844
             0.027091
 11          0.004526    0.004191   -0.037641   -0.000000   -0.000005    0.000000    0.000000    0.000001    0.944866    0.105197
             0.113606

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957446   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000381    0.000005
             0.000037
 2          -0.000000    0.957446   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000007    0.000382
             0.000018
 3           0.000000   -0.000000    0.957446   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000037    0.000019
            -0.000380
 4           0.000000   -0.000000   -0.000000    0.958260    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.958260    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958260   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.958260    0.000000   -0.000000   -0.000000
            -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.958260   -0.000000   -0.000000
             0.000000
 9           0.000381   -0.000007    0.000037   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958227    0.000000
             0.000000
 10          0.000005    0.000382    0.000019    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.958227
             0.000000
 11          0.000037    0.000018   -0.000380    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.958227


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95638278 (fixed)   0.95751851 (relaxed)   0.95744553 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00099054   -0.00191696   -0.70593379
 Singles      0.01565561   -0.05713493   -0.06368556
 Pairs        0.07422096    0.03814381   -0.01867089
 Total        1.09086712   -0.02090808   -0.78829024
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83636798
 Nuclear energy                         0.00000000
 Kinetic energy                        63.24408911
 One electron energy                 -335.66560341
 Two electron energy                  143.04067832
 Virial quotient                       -3.04573799
 Correlation energy                    -0.78855711
 !MRCI STATE 1.1 Energy              -192.624925089014

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69657900 (Davidson, fixed reference)
 Cluster corrected energies          -192.69644787 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69657900 (Davidson, rotated reference)

 Cluster corrected energies          -192.69440902 (Pople, fixed reference)
 Cluster corrected energies          -192.69427214 (Pople, relaxed reference)
 Cluster corrected energies          -192.69440902 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95462928 (fixed)   0.95751852 (relaxed)   0.95744553 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00099054   -0.00191696   -0.67149696
 Singles      0.01565554   -0.05713482   -0.06368550
 Pairs        0.07422102    0.00057768   -0.05310778
 Total        1.09086710   -0.05847409   -0.78829024
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83636798
 Nuclear energy                         0.00000000
 Kinetic energy                        63.24408898
 One electron energy                 -335.66560385
 Two electron energy                  143.04067876
 Virial quotient                       -3.04573800
 Correlation energy                    -0.78855710
 !MRCI STATE 2.1 Energy              -192.624925085666

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69657898 (Davidson, fixed reference)
 Cluster corrected energies          -192.69644785 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69657898 (Davidson, rotated reference)

 Cluster corrected energies          -192.69440900 (Pople, fixed reference)
 Cluster corrected energies          -192.69427213 (Pople, relaxed reference)
 Cluster corrected energies          -192.69440900 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95453482 (fixed)   0.95751852 (relaxed)   0.95744553 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00099054   -0.00191696   -0.67020973
 Singles      0.01565557   -0.05713482   -0.06368551
 Pairs        0.07422100   -0.00082651   -0.05439500
 Total        1.09086711   -0.05987829   -0.78829024
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83636798
 Nuclear energy                         0.00000000
 Kinetic energy                        63.24408710
 One electron energy                 -335.66560215
 Two electron energy                  143.04067707
 Virial quotient                       -3.04573809
 Correlation energy                    -0.78855710
 !MRCI STATE 3.1 Energy              -192.624925085234

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69657899 (Davidson, fixed reference)
 Cluster corrected energies          -192.69644786 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69657899 (Davidson, rotated reference)

 Cluster corrected energies          -192.69440901 (Pople, fixed reference)
 Cluster corrected energies          -192.69427213 (Pople, relaxed reference)
 Cluster corrected energies          -192.69440901 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95767692 (fixed)   0.95837409 (relaxed)   0.95826023 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00164844   -0.00324664   -0.65534208
 Singles      0.01742211   -0.06149426   -0.06884472
 Pairs        0.06994248   -0.00000023   -0.04970802
 Total        1.08901302   -0.06474113   -0.77389483
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66950595
 Nuclear energy                         0.00000000
 Kinetic energy                        62.99640730
 One electron energy                 -331.56986951
 Two electron energy                  139.12646873
 Virial quotient                       -3.05483136
 Correlation energy                    -0.77389483
 !MRCI STATE 4.1 Energy              -192.443400779348

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51228750 (Davidson, fixed reference)
 Cluster corrected energies          -192.51208726 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51228750 (Davidson, rotated reference)

 Cluster corrected energies          -192.51009714 (Pople, fixed reference)
 Cluster corrected energies          -192.50988879 (Pople, relaxed reference)
 Cluster corrected energies          -192.51009714 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95763071 (fixed)   0.95837409 (relaxed)   0.95826024 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00164842   -0.00324664   -0.65534247
 Singles      0.01742212   -0.06149424   -0.06884463
 Pairs        0.06994245    0.00000029   -0.04970760
 Total        1.08901298   -0.06474058   -0.77389470
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66950595
 Nuclear energy                         0.00000000
 Kinetic energy                        62.99641132
 One electron energy                 -331.56987392
 Two electron energy                  139.12647326
 Virial quotient                       -3.05483117
 Correlation energy                    -0.77389470
 !MRCI STATE 5.1 Energy              -192.443400651495

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51228733 (Davidson, fixed reference)
 Cluster corrected energies          -192.51208711 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51228733 (Davidson, rotated reference)

 Cluster corrected energies          -192.51009697 (Pople, fixed reference)
 Cluster corrected energies          -192.50988864 (Pople, relaxed reference)
 Cluster corrected energies          -192.51009697 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95819373 (fixed)   0.95837422 (relaxed)   0.95826037 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00164844   -0.00324663   -0.65534238
 Singles      0.01742186   -0.06149391   -0.06884442
 Pairs        0.06994240   -0.00000025   -0.04970782
 Total        1.08901271   -0.06474079   -0.77389462
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66950595
 Nuclear energy                         0.00000000
 Kinetic energy                        62.99639106
 One electron energy                 -331.56984860
 Two electron energy                  139.12644803
 Virial quotient                       -3.05483215
 Correlation energy                    -0.77389462
 !MRCI STATE 6.1 Energy              -192.443400572904

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51228703 (Davidson, fixed reference)
 Cluster corrected energies          -192.51208680 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51228703 (Davidson, rotated reference)

 Cluster corrected energies          -192.51009666 (Pople, fixed reference)
 Cluster corrected energies          -192.50988832 (Pople, relaxed reference)
 Cluster corrected energies          -192.51009666 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95823133 (fixed)   0.95837428 (relaxed)   0.95826044 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00164841   -0.00324663   -0.65534241
 Singles      0.01742178   -0.06149380   -0.06884423
 Pairs        0.06994235   -0.00000019   -0.04970776
 Total        1.08901254   -0.06474062   -0.77389440
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66950595
 Nuclear energy                         0.00000000
 Kinetic energy                        62.99639296
 One electron energy                 -331.56984919
 Two electron energy                  139.12644884
 Virial quotient                       -3.05483205
 Correlation energy                    -0.77389440
 !MRCI STATE 7.1 Energy              -192.443400347865

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51228666 (Davidson, fixed reference)
 Cluster corrected energies          -192.51208645 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51228666 (Davidson, rotated reference)

 Cluster corrected energies          -192.51009628 (Pople, fixed reference)
 Cluster corrected energies          -192.50988796 (Pople, relaxed reference)
 Cluster corrected energies          -192.51009628 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95821629 (fixed)   0.95837429 (relaxed)   0.95826046 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00164839   -0.00324663   -0.65534232
 Singles      0.01742177   -0.06149376   -0.06884418
 Pairs        0.06994233   -0.00000027   -0.04970783
 Total        1.08901249   -0.06474066   -0.77389432
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66950595
 Nuclear energy                         0.00000000
 Kinetic energy                        62.99639348
 One electron energy                 -331.56984918
 Two electron energy                  139.12644890
 Virial quotient                       -3.05483203
 Correlation energy                    -0.77389432
 !MRCI STATE 8.1 Energy              -192.443400274854

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51228654 (Davidson, fixed reference)
 Cluster corrected energies          -192.51208634 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51228654 (Davidson, rotated reference)

 Cluster corrected energies          -192.51009616 (Pople, fixed reference)
 Cluster corrected energies          -192.50988786 (Pople, relaxed reference)
 Cluster corrected energies          -192.51009616 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95031821 (fixed)   0.95835442 (relaxed)   0.95822741 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00163005   -0.00315136   -0.00932465
 Singles      0.01726456   -0.06124465   -0.06852303
 Pairs        0.07019300   -0.70526422   -0.69755260
 Total        1.08908761   -0.76966023   -0.77540029
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66505246
 Nuclear energy                         0.00000000
 Kinetic energy                        63.02520525
 One electron energy                 -331.74967112
 Two electron energy                  139.30948524
 Virial quotient                       -3.05338452
 Correlation energy                    -0.77513343
 !MRCI STATE 9.1 Energy              -192.440185880798

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50924067 (Davidson, fixed reference)
 Cluster corrected energies          -192.50901693 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50924067 (Davidson, rotated reference)

 Cluster corrected energies          -192.50704916 (Pople, fixed reference)
 Cluster corrected energies          -192.50681634 (Pople, relaxed reference)
 Cluster corrected energies          -192.50704916 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.95084384 (fixed)   0.95835442 (relaxed)   0.95822741 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00163005   -0.00315136   -0.63843780
 Singles      0.01726455   -0.06124462   -0.06852299
 Pairs        0.07019301   -0.02010489   -0.06843947
 Total        1.08908761   -0.08450086   -0.77540026
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66505246
 Nuclear energy                         0.00000000
 Kinetic energy                        63.02520550
 One electron energy                 -331.74967187
 Two electron energy                  139.30948602
 Virial quotient                       -3.05338450
 Correlation energy                    -0.77513340
 !MRCI STATE 10.1 Energy             -192.440185850723

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50924063 (Davidson, fixed reference)
 Cluster corrected energies          -192.50901690 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50924063 (Davidson, rotated reference)

 Cluster corrected energies          -192.50704912 (Pople, fixed reference)
 Cluster corrected energies          -192.50681630 (Pople, relaxed reference)
 Cluster corrected energies          -192.50704912 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.94486623 (fixed)   0.95835442 (relaxed)   0.95822741 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00163005   -0.00315136   -0.57948345
 Singles      0.01726455   -0.06124461   -0.06852297
 Pairs        0.07019301   -0.08431133   -0.12739382
 Total        1.08908761   -0.14870730   -0.77540025
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66505246
 Nuclear energy                         0.00000000
 Kinetic energy                        63.02520492
 One electron energy                 -331.74967158
 Two electron energy                  139.30948574
 Virial quotient                       -3.05338453
 Correlation energy                    -0.77513338
 !MRCI STATE 11.1 Energy             -192.440185840190

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50924062 (Davidson, fixed reference)
 Cluster corrected energies          -192.50901688 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50924062 (Davidson, rotated reference)

 Cluster corrected energies          -192.50704911 (Pople, fixed reference)
 Cluster corrected energies          -192.50681629 (Pople, relaxed reference)
 Cluster corrected energies          -192.50704911 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     3902.73       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     23083.28  23051.74     12.01      4.30     15.01
 REAL TIME  *     23468.04 SEC
 DISK USED  *         3.90 GB (local),       32.26 GB (total)
 SF USED    *        37.69 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.69657900  AU                              
 SETTING HLSDIAG(2)     =      -192.69657898  AU                              
 SETTING HLSDIAG(3)     =      -192.69657899  AU                              
 SETTING HLSDIAG(4)     =      -192.51228750  AU                              
 SETTING HLSDIAG(5)     =      -192.51228733  AU                              
 SETTING HLSDIAG(6)     =      -192.51228703  AU                              
 SETTING HLSDIAG(7)     =      -192.51228666  AU                              
 SETTING HLSDIAG(8)     =      -192.51228654  AU                              
 SETTING HLSDIAG(9)     =      -192.50924067  AU                              
 SETTING HLSDIAG(10)    =      -192.50924063  AU                              
 SETTING HLSDIAG(11)    =      -192.50924062  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      111 conf      126 CSFs
 N elec internal:    18620 conf    47824 CSFs
 N-1 el internal:    13496 conf    51520 CSFs
 N-2 el internal:     5716 conf    27166 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.80261858
     2      -191.80261858
     3      -191.80261858
     4      -191.80261858
     5      -191.80261858
     6      -191.76864256

 Number of blocks in overlap matrix:   602   Smallest eigenvalue:  0.12D-05
 Number of N-2 electron functions:    1183
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       6415270
 Number of doubly external configurations:      18343984
 Total number of contracted configurations:     24783404
 Total number of uncontracted configurations:  427217996

 Diagonal Coupling coefficients finished.               Storage:  12970733 words, CPU-Time:     15.71 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3250833 words, CPU-time:      2.45 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.80261858     0.00000000    -0.96240383  0.55D-01  0.12D+00    25.12
    1     2     2     1.00000000     0.00000000  -191.80261858    -0.00000000    -0.96322181  0.56D-01  0.12D+00    25.12
    1     3     3     1.00000000     0.00000000  -191.80261858    -0.00000000    -0.96346590  0.55D-01  0.12D+00    25.12
    1     4     4     1.00000000     0.00000000  -191.80261858    -0.00000000    -0.96366514  0.56D-01  0.12D+00    25.12
    1     5     5     1.00000000     0.00000000  -191.80261858     0.00000000    -0.96314355  0.55D-01  0.12D+00    25.12
    1     6     6     1.00000000     0.00000000  -191.76864256    -0.00000000    -0.94320660  0.34D-01  0.12D+00    25.12
    2     1     1     1.10746884    -0.76748170  -192.57010028    -0.76748170    -0.02725630  0.47D-02  0.20D-02   672.22
    2     2     2     1.10753540    -0.76743668  -192.57005526    -0.76743668    -0.02732662  0.47D-02  0.20D-02   672.22
    2     3     3     1.10781842    -0.76714493  -192.56976351    -0.76714493    -0.02763412  0.49D-02  0.20D-02   672.22
    2     4     4     1.10791971    -0.76706100  -192.56967958    -0.76706100    -0.02770849  0.49D-02  0.20D-02   672.22
    2     5     5     1.10793805    -0.76705164  -192.56967021    -0.76705164    -0.02773656  0.49D-02  0.20D-02   672.22
    2     6     6     1.10014554    -0.76668808  -192.53533064    -0.76668808    -0.02356632  0.38D-02  0.19D-02   672.22
    3     1     1     1.09310267    -0.79290193  -192.59552051    -0.02542024    -0.00052912  0.87D-04  0.63D-04  1318.36
    3     2     2     1.09308569    -0.79289578  -192.59551436    -0.02545910    -0.00053344  0.89D-04  0.63D-04  1318.36
    3     3     3     1.09309823    -0.79289363  -192.59551221    -0.02574870    -0.00053732  0.90D-04  0.63D-04  1318.36
    3     4     4     1.09310871    -0.79288772  -192.59550630    -0.02582671    -0.00054292  0.90D-04  0.65D-04  1318.36
    3     5     5     1.09309821    -0.79288266  -192.59550124    -0.02583102    -0.00054679  0.91D-04  0.65D-04  1318.36
    3     6     6     1.09084323    -0.78894201  -192.55758457    -0.02225393    -0.00046051  0.53D-04  0.71D-04  1318.36
    4     1     1     1.09258627    -0.79346395  -192.59608253    -0.00056202    -0.00003131  0.44D-05  0.48D-05  1966.23
    4     2     2     1.09258570    -0.79346381  -192.59608239    -0.00056803    -0.00003142  0.44D-05  0.48D-05  1966.23
    4     3     3     1.09258371    -0.79346354  -192.59608212    -0.00056991    -0.00003155  0.45D-05  0.48D-05  1966.23
    4     4     4     1.09258398    -0.79346339  -192.59608197    -0.00057567    -0.00003172  0.45D-05  0.49D-05  1966.23
    4     5     5     1.09258103    -0.79346311  -192.59608169    -0.00058045    -0.00003202  0.45D-05  0.49D-05  1966.23
    4     6     6     1.09133046    -0.78944586  -192.55808842    -0.00050385    -0.00003451  0.30D-05  0.68D-05  1966.23
    5     1     1     1.09270829    -0.79350138  -192.59611996    -0.00003742    -0.00000213  0.11D-06  0.44D-06  2622.22
    5     2     2     1.09270688    -0.79350132  -192.59611990    -0.00003751    -0.00000216  0.11D-06  0.45D-06  2622.22
    5     3     3     1.09270628    -0.79350125  -192.59611983    -0.00003770    -0.00000217  0.11D-06  0.45D-06  2622.22
    5     4     4     1.09270805    -0.79350124  -192.59611982    -0.00003785    -0.00000212  0.10D-06  0.44D-06  2622.22
    5     5     5     1.09270596    -0.79350123  -192.59611981    -0.00003812    -0.00000217  0.11D-06  0.45D-06  2622.22
    5     6     6     1.09184693    -0.78948887  -192.55813143    -0.00004302    -0.00000293  0.19D-06  0.58D-06  2622.22
    6     1     1     1.09273799    -0.79350408  -192.59612266    -0.00000270    -0.00000025  0.25D-07  0.45D-07  3271.49
    6     2     2     1.09273826    -0.79350406  -192.59612264    -0.00000274    -0.00000025  0.26D-07  0.46D-07  3271.49
    6     3     3     1.09273805    -0.79350399  -192.59612257    -0.00000275    -0.00000025  0.26D-07  0.46D-07  3271.49
    6     4     4     1.09273802    -0.79350398  -192.59612256    -0.00000275    -0.00000025  0.27D-07  0.46D-07  3271.49
    6     5     5     1.09273798    -0.79350393  -192.59612251    -0.00000271    -0.00000025  0.25D-07  0.45D-07  3271.49
    6     6     6     1.09190308    -0.78949267  -192.55813523    -0.00000380    -0.00000032  0.31D-07  0.53D-07  3271.49
    7     1     1     1.09275926    -0.79350439  -192.59612297    -0.00000031    -0.00000003  0.26D-08  0.44D-08  3922.38
    7     2     2     1.09275913    -0.79350437  -192.59612295    -0.00000031    -0.00000003  0.26D-08  0.45D-08  3922.38
    7     3     3     1.09275918    -0.79350431  -192.59612289    -0.00000031    -0.00000003  0.27D-08  0.45D-08  3922.38
    7     4     4     1.09275917    -0.79350429  -192.59612287    -0.00000031    -0.00000003  0.26D-08  0.45D-08  3922.38
    7     5     5     1.09275913    -0.79350424  -192.59612282    -0.00000031    -0.00000003  0.26D-08  0.44D-08  3922.38
    7     6     6     1.09192197    -0.78949305  -192.55813561    -0.00000038    -0.00000003  0.39D-08  0.58D-08  3922.38


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%  36.8%
 P   0.3%  23.0%  23.9%

 Initialization:   0.5%
 Other:           14.8%

 Total CPU:     3922.4 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\000           0.0002997   0.9507892   0.0059843  -0.0001353  -0.0018924   0.0000000
 2222222222/\0000           0.0037905   0.0002558  -0.0181192   0.9506217   0.0038869   0.0000000
 2222222222/0\000           0.0003183  -0.0059808   0.9506184   0.0181197  -0.0000436  -0.0000000
 2222222222200000          -0.0024607   0.0015448   0.0001064  -0.0031628   0.7763192   0.5405653
 2222222222002000           0.6735459  -0.0009793  -0.0002282  -0.0011114  -0.3860420   0.5405605
 2222222222020000          -0.6710847  -0.0005655   0.0001218   0.0042741  -0.3902832   0.5405609
 2222220222220000           0.0523743  -0.0000762  -0.0000177  -0.0000864  -0.0300178  -0.0823228
 2222220222202000          -0.0521831  -0.0000440   0.0000095   0.0003324  -0.0303475  -0.0823227
 2222220222022000          -0.0001915   0.0001201   0.0000083  -0.0002459   0.0603665  -0.0823225
 22222202222/\000          -0.0000233  -0.0739325  -0.0004653   0.0000105   0.0001472  -0.0000000
 2222220222/\2000          -0.0002947  -0.0000199   0.0014089  -0.0739194  -0.0003022  -0.0000000
 2222220222/2\000          -0.0000247   0.0004651  -0.0739192  -0.0014090   0.0000034   0.0000000
 22222222220/00\0          -0.0359269  -0.0000303   0.0000065   0.0002288  -0.0208943   0.0721787
 222222222200/00\           0.0360589  -0.0000524  -0.0000122  -0.0000595  -0.0206672   0.0721787
 2222222222/00\00          -0.0001316   0.0000827   0.0000057  -0.0001693   0.0415601   0.0721783

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.502216    0.000320    0.000301    0.003811   -0.813327    0.000000
 2          -0.001775   -0.006013    0.955875    0.000257   -0.000743   -0.000000
 3          -0.000242    0.955703    0.006016   -0.018216    0.000144    0.000000
 4           0.001319    0.018217   -0.000136    0.955706    0.005299    0.000000
 5          -0.813333   -0.000044   -0.001902    0.003908   -0.502202   -0.000004
 6          -0.000003   -0.000000    0.000000    0.000000   -0.000002    0.956198

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955896   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.955896    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.955896    0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.955896    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.955896    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.956198


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.81332727 (fixed)   0.95606607 (relaxed)   0.95589563 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00150829   -0.00261024   -0.67041626
 Singles      0.01779209   -0.06099242   -0.06862362
 Pairs        0.07510708   -0.00000026   -0.05446452
 Total        1.09440746   -0.06360292   -0.79350439
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80261858
 Nuclear energy                         0.00000000
 Kinetic energy                        63.20834355
 One electron energy                 -335.38798974
 Two electron energy                  142.79186676
 Virial quotient                       -3.04700475
 Correlation energy                    -0.79350439
 !MRCI STATE 1.1 Energy              -192.596122970792

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67103570 (Davidson, fixed reference)
 Cluster corrected energies          -192.67072611 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67103570 (Davidson, rotated reference)

 Cluster corrected energies          -192.66986246 (Pople, fixed reference)
 Cluster corrected energies          -192.66953289 (Pople, relaxed reference)
 Cluster corrected energies          -192.66986246 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95587480 (fixed)   0.95606612 (relaxed)   0.95589568 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00150830   -0.00261025   -0.67041647
 Singles      0.01779217   -0.06099251   -0.06862367
 Pairs        0.07510687    0.00000001   -0.05446422
 Total        1.09440734   -0.06360275   -0.79350437
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80261858
 Nuclear energy                         0.00000000
 Kinetic energy                        63.20833367
 One electron energy                 -335.38797343
 Two electron energy                  142.79185048
 Virial quotient                       -3.04700522
 Correlation energy                    -0.79350437
 !MRCI STATE 2.1 Energy              -192.596122949183

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67103559 (Davidson, fixed reference)
 Cluster corrected energies          -192.67072599 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67103559 (Davidson, rotated reference)

 Cluster corrected energies          -192.66986234 (Pople, fixed reference)
 Cluster corrected energies          -192.66953277 (Pople, relaxed reference)
 Cluster corrected energies          -192.66986234 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95570310 (fixed)   0.95606610 (relaxed)   0.95589567 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00150830   -0.00261024   -0.67041635
 Singles      0.01779224   -0.06099255   -0.06862367
 Pairs        0.07510684   -0.00000000   -0.05446429
 Total        1.09440738   -0.06360279   -0.79350431
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80261858
 Nuclear energy                         0.00000000
 Kinetic energy                        63.20833403
 One electron energy                 -335.38797407
 Two electron energy                  142.79185119
 Virial quotient                       -3.04700521
 Correlation energy                    -0.79350431
 !MRCI STATE 3.1 Energy              -192.596122887483

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67103555 (Davidson, fixed reference)
 Cluster corrected energies          -192.67072596 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67103555 (Davidson, rotated reference)

 Cluster corrected energies          -192.66986231 (Pople, fixed reference)
 Cluster corrected energies          -192.66953273 (Pople, relaxed reference)
 Cluster corrected energies          -192.66986231 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95570646 (fixed)   0.95606611 (relaxed)   0.95589567 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00150830   -0.00261024   -0.67041638
 Singles      0.01779220   -0.06099250   -0.06862362
 Pairs        0.07510688   -0.00000000   -0.05446429
 Total        1.09440738   -0.06360275   -0.79350429
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80261858
 Nuclear energy                         0.00000000
 Kinetic energy                        63.20833274
 One electron energy                 -335.38797376
 Two electron energy                  142.79185088
 Virial quotient                       -3.04700527
 Correlation energy                    -0.79350429
 !MRCI STATE 4.1 Energy              -192.596122874354

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67103553 (Davidson, fixed reference)
 Cluster corrected energies          -192.67072594 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67103553 (Davidson, rotated reference)

 Cluster corrected energies          -192.66986229 (Pople, fixed reference)
 Cluster corrected energies          -192.66953271 (Pople, relaxed reference)
 Cluster corrected energies          -192.66986229 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.81333334 (fixed)   0.95606613 (relaxed)   0.95589569 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00150830   -0.00261023   -0.67041911
 Singles      0.01779199   -0.06099230   -0.06862340
 Pairs        0.07510705    0.00000281   -0.05446173
 Total        1.09440733   -0.06359973   -0.79350424
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80261858
 Nuclear energy                         0.00000000
 Kinetic energy                        63.20834120
 One electron energy                 -335.38798812
 Two electron energy                  142.79186530
 Virial quotient                       -3.04700486
 Correlation energy                    -0.79350424
 !MRCI STATE 5.1 Energy              -192.596122817739

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67103544 (Davidson, fixed reference)
 Cluster corrected energies          -192.67072584 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67103544 (Davidson, rotated reference)

 Cluster corrected energies          -192.66986219 (Pople, fixed reference)
 Cluster corrected energies          -192.66953261 (Pople, relaxed reference)
 Cluster corrected energies          -192.66986219 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95619763 (fixed)   0.95648301 (relaxed)   0.95619763 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00164326   -0.00238926   -0.00337072
 Singles      0.01244034   -0.04956461   -0.05429230
 Pairs        0.07963268   -0.73753917   -0.73183004
 Total        1.09371628   -0.78949304   -0.78949305
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.76864256
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17839288
 One electron energy                 -335.06263347
 Two electron energy                  142.50449786
 Virial quotient                       -3.04784796
 Correlation energy                    -0.78949305
 !MRCI STATE 6.1 Energy              -192.558135610778

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.63212396 (Davidson, fixed reference)
 Cluster corrected energies          -192.63160878 (Davidson, relaxed reference)
 Cluster corrected energies          -192.63212396 (Davidson, rotated reference)

 Cluster corrected energies          -192.63092159 (Pople, fixed reference)
 Cluster corrected energies          -192.63037392 (Pople, relaxed reference)
 Cluster corrected energies          -192.63092159 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     5042.77       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     27137.47   4054.19  23051.74     12.01      4.30     15.01
 REAL TIME  *     27599.78 SEC
 DISK USED  *         5.01 GB (local),       41.16 GB (total)
 SF USED    *        37.69 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(12)    =      -192.67103570  AU                              
 SETTING HLSDIAG(13)    =      -192.67103559  AU                              
 SETTING HLSDIAG(14)    =      -192.67103555  AU                              
 SETTING HLSDIAG(15)    =      -192.67103553  AU                              
 SETTING HLSDIAG(16)    =      -192.67103544  AU                              
 SETTING HLSDIAG(17)    =      -192.63212396  AU                              


         HLSDIAG
    -192.6965790
    -192.6965790
    -192.6965790
    -192.5122875
    -192.5122873
    -192.5122870
    -192.5122867
    -192.5122865
    -192.5092407
    -192.5092406
    -192.5092406
    -192.6710357
    -192.6710356
    -192.6710356
    -192.6710355
    -192.6710354
    -192.6321240
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  11

 Original energies:   -192.624925   -192.624925   -192.624925   -192.443401   -192.443401   -192.443401   -192.443400   -192.443400
                      -192.440186   -192.440186   -192.440186
 Replaced energies:   -192.696579   -192.696579   -192.696579   -192.512287   -192.512287   -192.512287   -192.512287   -192.512287
                      -192.509241   -192.509241   -192.509241

 Wavefunction restored from record  5203.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -192.596123   -192.596123   -192.596123   -192.596123   -192.596123   -192.558136
 Replaced energies:   -192.671036   -192.671036   -192.671036   -192.671036   -192.671035   -192.632124



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.69657900

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     221.01    3449.39      13.94      10.54      13.05       6.51    -925.05     -77.12     -92.80

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -221.01      -0.00      57.03    -877.96    -604.11      66.09       3.36     -14.08      50.80       0.08

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3449.39     -57.03       0.00      57.07      47.83     922.82      -0.74      14.10     812.79      25.13

    4   4.1  1.0  1.0       0.00       0.00       0.00   40447.31       0.00       0.00       0.00       0.00       0.00       0.00
                          -13.94     877.96     -57.07      -0.00      12.89      -0.36    2373.04      18.67     -66.30    1610.48

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   40447.35       0.00       0.00       0.00       0.00       0.00
                          -10.54     604.11     -47.83     -12.89      -0.00      -0.65   -3445.38      -3.86     -48.86    1107.32

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   40447.41       0.00       0.00       0.00       0.00
                          -13.05     -66.09    -922.82       0.36       0.65       0.00      17.00    2091.91    -184.27    -206.37

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   40447.49       0.00       0.00       0.00
                           -6.51      -3.36       0.74   -2373.04    3445.38     -17.00       0.00       2.07     -11.69      -6.29

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40447.52       0.00       0.00
                          925.05      14.08     -14.10     -18.67       3.86   -2091.91      -2.07       0.00    1693.95      48.93

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41116.01       0.00
                           77.12     -50.80    -812.79      66.30      48.86     184.27      11.69   -1693.95       0.00     241.82

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41116.02
                           92.80      -0.08     -25.13   -1610.48   -1107.32     206.37       6.29     -48.93    -241.82       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -809.67     -18.48     -79.42    -179.78    -139.22   -1682.83       2.80    -191.48    2185.79      91.22

   12   1.1  1.0  0.0       0.00    2438.85    -157.09     -12.72       8.39      11.02     654.05       4.59      14.51    -574.98
                            0.00     -52.95     -37.01      60.04    -752.78       7.30      15.28     -11.06       0.60      12.96

   13   2.1  1.0  0.0   -2438.85      -0.00      50.47     -44.39      14.45    -652.97      10.22       4.30     573.71       7.64
                           52.95       0.00    2443.57       1.41     -11.55       4.32      37.44     653.12     -67.81     -28.89

   14   3.1  1.0  0.0     157.09     -50.47       0.00    -680.68     324.19      39.23     -13.56       0.21     -37.25      11.41
                           37.01   -2443.57       0.00       0.03      17.91      -0.14     653.03     -37.19     -19.69     577.83

   15   4.1  1.0  0.0      12.72      44.39     680.68       0.00       2.16     -11.25      10.30   -1270.79     141.73     144.28
                          -60.04      -1.41      -0.03      -0.00     -28.83   -2948.75       2.18      15.86    -110.09      -4.18

   16   5.1  1.0  0.0      -8.39     -14.45    -324.19      -2.16       0.00     -20.71      33.54   -2671.00     -72.02     -56.47
                          752.78      11.55     -17.91      28.83      -0.00    -235.10      -0.50      -2.09    1377.32      39.39

   17   6.1  1.0  0.0     -11.02     652.97     -39.23      11.25      20.71       0.00    1478.74      37.91     -49.95    1198.06
                           -7.30      -4.32       0.14    2948.75     235.10      -0.00       2.81      -2.42     -13.21      -8.13

   18   7.1  1.0  0.0    -654.05     -10.22      13.56     -10.30     -33.54   -1478.74      -0.00      18.59   -1197.01     -34.75
                          -15.28     -37.44    -653.03      -2.18       0.50      -2.81      -0.00   -1479.15    -141.81    -129.02

   19   8.1  1.0  0.0      -4.59      -4.30      -0.21    1270.79    2671.00     -37.91     -18.59       0.00      -8.30      -8.05
                           11.06    -653.12      37.19     -15.86       2.09       2.42    1479.15      -0.00      49.65   -1198.49

   20   9.1  1.0  0.0     -14.51    -573.71      37.25    -141.73      72.02      49.95    1197.01       8.30      -0.00    1535.88
                           -0.60      67.81      19.69     110.09   -1377.32      13.21     141.81     -49.65       0.00    -184.67

   21  10.1  1.0  0.0     574.98      -7.64     -11.41    -144.28      56.47   -1198.06      34.75       8.05   -1535.88       0.00
                          -12.96      28.89    -577.83       4.18     -39.39       8.13     129.02    1198.49     184.67      -0.00

   22  11.1  1.0  0.0      64.72     -67.58       3.01    1241.09    -591.30    -127.70     142.00       0.81    -177.37     178.55
                            8.11    -574.14     -26.94      10.74    -167.63       1.94   -1190.62     123.96     -44.04    1544.74

   23   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.1  0.0  0.0     -48.44    -153.94   -2377.72      -3.11      -5.21      -4.58       5.16    -760.17      49.28      49.24
                         2373.52      45.46     -51.29       0.15       7.52     768.55      -3.37      -4.71    -425.97     -13.86

   35   2.1  0.0  0.0    2377.73      51.17     -49.02       0.49       7.17     764.33       4.51      -7.27    -426.78     -14.92
                           51.10     153.54    2373.22      10.07       0.45       2.02      -5.65     764.37     -49.69     -49.13

   36   3.1  0.0  0.0      54.22   -2372.84     152.53      10.93      24.50       4.21    -764.32      -5.44     -20.52     426.88
                            0.63     -44.28      17.84   -1523.63    -121.41       2.18      17.99       5.85      -0.57       7.83

   37   4.1  0.0  0.0       0.49     -44.99       6.83    -656.66   -1380.23      14.10      -9.92       8.19      -0.36       8.06
                          -54.36    2372.87    -152.06     -30.63      -4.14       2.05    -764.16      -5.53      20.54    -426.90

   38   5.1  0.0  0.0      23.47      87.82    1362.89      -3.53      -5.16      -9.98       9.47   -1326.31     -27.48     -28.14
                         1380.17      30.31     -35.26      -1.08     -13.01   -1321.49      -2.57       6.94    -247.59      -8.71

   39   6.1  0.0  0.0      79.00     245.92    3817.87      -0.00       0.00      -0.00      -0.00      -0.00     -58.09     -57.71
                         3825.26      57.93     -82.89      -0.00       0.00      -0.01      -0.00      -0.00    -502.60     -14.33


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00   -2438.85     157.09      12.72      -8.39     -11.02    -654.05      -4.59     -14.51
                          809.67      -0.00     -52.95     -37.01      60.04    -752.78       7.30      15.28     -11.06       0.60

    2   2.1  1.0  1.0       0.00    2438.85      -0.00     -50.47      44.39     -14.45     652.97     -10.22      -4.30    -573.71
                           18.48      52.95      -0.00    2443.57       1.41     -11.55       4.32      37.44     653.12     -67.81

    3   3.1  1.0  1.0       0.00    -157.09      50.47       0.00     680.68    -324.19     -39.23      13.56      -0.21      37.25
                           79.42      37.01   -2443.57      -0.00       0.03      17.91      -0.14     653.03     -37.19     -19.69

    4   4.1  1.0  1.0       0.00     -12.72     -44.39    -680.68       0.00      -2.16      11.25     -10.30    1270.79    -141.73
                          179.78     -60.04      -1.41      -0.03       0.00     -28.83   -2948.75       2.18      15.86    -110.09

    5   5.1  1.0  1.0       0.00       8.39      14.45     324.19       2.16       0.00      20.71     -33.54    2671.00      72.02
                          139.22     752.78      11.55     -17.91      28.83       0.00    -235.10      -0.50      -2.09    1377.32

    6   6.1  1.0  1.0       0.00      11.02    -652.97      39.23     -11.25     -20.71       0.00   -1478.74     -37.91      49.95
                         1682.83      -7.30      -4.32       0.14    2948.75     235.10       0.00       2.81      -2.42     -13.21

    7   7.1  1.0  1.0       0.00     654.05      10.22     -13.56      10.30      33.54    1478.74      -0.00     -18.59    1197.01
                           -2.80     -15.28     -37.44    -653.03      -2.18       0.50      -2.81       0.00   -1479.15    -141.81

    8   8.1  1.0  1.0       0.00       4.59       4.30       0.21   -1270.79   -2671.00      37.91      18.59       0.00       8.30
                          191.48      11.06    -653.12      37.19     -15.86       2.09       2.42    1479.15       0.00      49.65

    9   9.1  1.0  1.0       0.00      14.51     573.71     -37.25     141.73     -72.02     -49.95   -1197.01      -8.30      -0.00
                        -2185.79      -0.60      67.81      19.69     110.09   -1377.32      13.21     141.81     -49.65      -0.00

   10  10.1  1.0  1.0       0.00    -574.98       7.64      11.41     144.28     -56.47    1198.06     -34.75      -8.05    1535.88
                          -91.22     -12.96      28.89    -577.83       4.18     -39.39       8.13     129.02    1198.49     184.67

   11  11.1  1.0  1.0   41116.02     -64.72      67.58      -3.01   -1241.09     591.30     127.70    -142.00      -0.81     177.37
                            0.00       8.11    -574.14     -26.94      10.74    -167.63       1.94   -1190.62     123.96     -44.04

   12   1.1  1.0  0.0     -64.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   2.1  1.0  0.0      67.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          574.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   3.1  1.0  0.0      -3.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           26.94      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   4.1  1.0  0.0   -1241.09       0.00       0.00       0.00   40447.31       0.00       0.00       0.00       0.00       0.00
                          -10.74      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   5.1  1.0  0.0     591.30       0.00       0.00       0.00       0.00   40447.35       0.00       0.00       0.00       0.00
                          167.63      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   6.1  1.0  0.0     127.70       0.00       0.00       0.00       0.00       0.00   40447.41       0.00       0.00       0.00
                           -1.94      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   7.1  1.0  0.0    -142.00       0.00       0.00       0.00       0.00       0.00       0.00   40447.49       0.00       0.00
                         1190.62      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   8.1  1.0  0.0      -0.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40447.52       0.00
                         -123.96      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   9.1  1.0  0.0     177.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41116.01
                           44.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21  10.1  1.0  0.0    -178.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1544.74      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  11.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   1.1  1.0 -1.0       0.00       0.00    2438.85    -157.09     -12.72       8.39      11.02     654.05       4.59      14.51
                           -0.00       0.00     -52.95     -37.01      60.04    -752.78       7.30      15.28     -11.06       0.60

   24   2.1  1.0 -1.0       0.00   -2438.85      -0.00      50.47     -44.39      14.45    -652.97      10.22       4.30     573.71
                           -0.00      52.95       0.00    2443.57       1.41     -11.55       4.32      37.44     653.12     -67.81

   25   3.1  1.0 -1.0       0.00     157.09     -50.47       0.00    -680.68     324.19      39.23     -13.56       0.21     -37.25
                           -0.00      37.01   -2443.57       0.00       0.03      17.91      -0.14     653.03     -37.19     -19.69

   26   4.1  1.0 -1.0       0.00      12.72      44.39     680.68       0.00       2.16     -11.25      10.30   -1270.79     141.73
                           -0.00     -60.04      -1.41      -0.03      -0.00     -28.83   -2948.75       2.18      15.86    -110.09

   27   5.1  1.0 -1.0       0.00      -8.39     -14.45    -324.19      -2.16       0.00     -20.71      33.54   -2671.00     -72.02
                           -0.00     752.78      11.55     -17.91      28.83      -0.00    -235.10      -0.50      -2.09    1377.32

   28   6.1  1.0 -1.0       0.00     -11.02     652.97     -39.23      11.25      20.71       0.00    1478.74      37.91     -49.95
                           -0.00      -7.30      -4.32       0.14    2948.75     235.10      -0.00       2.81      -2.42     -13.21

   29   7.1  1.0 -1.0       0.00    -654.05     -10.22      13.56     -10.30     -33.54   -1478.74      -0.00      18.59   -1197.01
                           -0.00     -15.28     -37.44    -653.03      -2.18       0.50      -2.81      -0.00   -1479.15    -141.81

   30   8.1  1.0 -1.0       0.00      -4.59      -4.30      -0.21    1270.79    2671.00     -37.91     -18.59       0.00      -8.30
                           -0.00      11.06    -653.12      37.19     -15.86       2.09       2.42    1479.15      -0.00      49.65

   31   9.1  1.0 -1.0       0.00     -14.51    -573.71      37.25    -141.73      72.02      49.95    1197.01       8.30      -0.00
                           -0.00      -0.60      67.81      19.69     110.09   -1377.32      13.21     141.81     -49.65       0.00

   32  10.1  1.0 -1.0       0.00     574.98      -7.64     -11.41    -144.28      56.47   -1198.06      34.75       8.05   -1535.88
                           -0.00     -12.96      28.89    -577.83       4.18     -39.39       8.13     129.02    1198.49     184.67

   33  11.1  1.0 -1.0       0.00      64.72     -67.58       3.01    1241.09    -591.30    -127.70     142.00       0.81    -177.37
                           -0.00       8.11    -574.14     -26.94      10.74    -167.63       1.94   -1190.62     123.96     -44.04

   34   1.1  0.0  0.0    -425.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -50.98      13.18      12.42      -2.20       4.10       5.75      -3.37    2161.97      15.74      -2.29

   35   2.1  0.0  0.0     -50.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          424.31       1.47      -6.34      21.59   -1226.39    1780.45     -16.79      -2.38      -5.25      -0.66

   36   3.1  0.0  0.0      47.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.58    -133.52    -217.66   -3354.33      -7.01      11.00      27.43      -8.26    1080.64      81.26

   37   4.1  0.0  0.0       1.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -46.98    3360.68      62.59    -137.83      -0.77     -10.92   -1080.61      -8.36      27.48    -602.06

   38   5.1  0.0  0.0     243.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -30.66      77.84   -3875.94     248.21       2.45      -3.57      -4.38       6.82       0.02     -31.57

   39   6.1  0.0  0.0     499.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -60.08     -89.28    5399.79    -345.97       0.00       0.00       0.00       0.00       0.00      29.68


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0     574.98      64.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.96      -8.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0      -7.64     -67.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -28.89     574.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0     -11.41       3.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          577.83      26.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0    -144.28    1241.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.18     -10.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0      56.47    -591.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           39.39     167.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0   -1198.06    -127.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.13      -1.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0      34.75     142.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -129.02    1190.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0       8.05       0.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1198.49    -123.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0   -1535.88    -177.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -184.67      44.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0       0.00     178.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1544.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0    -178.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1544.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   1.1  1.0  0.0       0.00       0.00       0.00   -2438.85     157.09      12.72      -8.39     -11.02    -654.05      -4.59
                            0.00       0.00      -0.00     -52.95     -37.01      60.04    -752.78       7.30      15.28     -11.06

   13   2.1  1.0  0.0       0.00       0.00    2438.85      -0.00     -50.47      44.39     -14.45     652.97     -10.22      -4.30
                            0.00       0.00      52.95      -0.00    2443.57       1.41     -11.55       4.32      37.44     653.12

   14   3.1  1.0  0.0       0.00       0.00    -157.09      50.47       0.00     680.68    -324.19     -39.23      13.56      -0.21
                            0.00       0.00      37.01   -2443.57      -0.00       0.03      17.91      -0.14     653.03     -37.19

   15   4.1  1.0  0.0       0.00       0.00     -12.72     -44.39    -680.68       0.00      -2.16      11.25     -10.30    1270.79
                            0.00       0.00     -60.04      -1.41      -0.03       0.00     -28.83   -2948.75       2.18      15.86

   16   5.1  1.0  0.0       0.00       0.00       8.39      14.45     324.19       2.16       0.00      20.71     -33.54    2671.00
                            0.00       0.00     752.78      11.55     -17.91      28.83       0.00    -235.10      -0.50      -2.09

   17   6.1  1.0  0.0       0.00       0.00      11.02    -652.97      39.23     -11.25     -20.71       0.00   -1478.74     -37.91
                            0.00       0.00      -7.30      -4.32       0.14    2948.75     235.10       0.00       2.81      -2.42

   18   7.1  1.0  0.0       0.00       0.00     654.05      10.22     -13.56      10.30      33.54    1478.74      -0.00     -18.59
                            0.00       0.00     -15.28     -37.44    -653.03      -2.18       0.50      -2.81       0.00   -1479.15

   19   8.1  1.0  0.0       0.00       0.00       4.59       4.30       0.21   -1270.79   -2671.00      37.91      18.59       0.00
                            0.00       0.00      11.06    -653.12      37.19     -15.86       2.09       2.42    1479.15       0.00

   20   9.1  1.0  0.0       0.00       0.00      14.51     573.71     -37.25     141.73     -72.02     -49.95   -1197.01      -8.30
                            0.00       0.00      -0.60      67.81      19.69     110.09   -1377.32      13.21     141.81     -49.65

   21  10.1  1.0  0.0   41116.02       0.00    -574.98       7.64      11.41     144.28     -56.47    1198.06     -34.75      -8.05
                            0.00       0.00     -12.96      28.89    -577.83       4.18     -39.39       8.13     129.02    1198.49

   22  11.1  1.0  0.0       0.00   41116.02     -64.72      67.58      -3.01   -1241.09     591.30     127.70    -142.00      -0.81
                           -0.00       0.00       8.11    -574.14     -26.94      10.74    -167.63       1.94   -1190.62     123.96

   23   1.1  1.0 -1.0    -574.98     -64.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.96      -8.11       0.00    -221.01   -3449.39     -13.94     -10.54     -13.05      -6.51     925.05

   24   2.1  1.0 -1.0       7.64      67.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -28.89     574.14     221.01       0.00     -57.03     877.96     604.11     -66.09      -3.36      14.08

   25   3.1  1.0 -1.0      11.41      -3.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          577.83      26.94    3449.39      57.03      -0.00     -57.07     -47.83    -922.82       0.74     -14.10

   26   4.1  1.0 -1.0     144.28   -1241.09       0.00       0.00       0.00   40447.31       0.00       0.00       0.00       0.00
                           -4.18     -10.74      13.94    -877.96      57.07       0.00     -12.89       0.36   -2373.04     -18.67

   27   5.1  1.0 -1.0     -56.47     591.30       0.00       0.00       0.00       0.00   40447.35       0.00       0.00       0.00
                           39.39     167.63      10.54    -604.11      47.83      12.89       0.00       0.65    3445.38       3.86

   28   6.1  1.0 -1.0    1198.06     127.70       0.00       0.00       0.00       0.00       0.00   40447.41       0.00       0.00
                           -8.13      -1.94      13.05      66.09     922.82      -0.36      -0.65      -0.00     -17.00   -2091.91

   29   7.1  1.0 -1.0     -34.75    -142.00       0.00       0.00       0.00       0.00       0.00       0.00   40447.49       0.00
                         -129.02    1190.62       6.51       3.36      -0.74    2373.04   -3445.38      17.00      -0.00      -2.07

   30   8.1  1.0 -1.0      -8.05      -0.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40447.52
                        -1198.49    -123.96    -925.05     -14.08      14.10      18.67      -3.86    2091.91       2.07      -0.00

   31   9.1  1.0 -1.0    1535.88     177.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -184.67      44.04     -77.12      50.80     812.79     -66.30     -48.86    -184.27     -11.69    1693.95

   32  10.1  1.0 -1.0       0.00    -178.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1544.74     -92.80       0.08      25.13    1610.48    1107.32    -206.37      -6.29      48.93

   33  11.1  1.0 -1.0     178.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1544.74      -0.00     809.67      18.48      79.42     179.78     139.22    1682.83      -2.80     191.48

   34   1.1  0.0  0.0       0.00       0.00     -48.44    -153.94   -2377.72      -3.11      -5.21      -4.58       5.16    -760.17
                           -2.25      -0.73   -2373.52     -45.46      51.29      -0.15      -7.52    -768.55       3.37       4.71

   35   2.1  0.0  0.0       0.00       0.00    2377.73      51.17     -49.02       0.49       7.17     764.33       4.51      -7.27
                            0.95       3.91     -51.10    -153.54   -2373.22     -10.07      -0.45      -2.02       5.65    -764.37

   36   3.1  0.0  0.0       0.00       0.00      54.22   -2372.84     152.53      10.93      24.50       4.21    -764.32      -5.44
                           69.72    -598.66      -0.63      44.28     -17.84    1523.63     121.41      -2.18     -17.99      -5.85

   37   4.1  0.0  0.0       0.00       0.00       0.49     -44.99       6.83    -656.66   -1380.23      14.10      -9.92       8.19
                          -18.72     -83.90      54.36   -2372.87     152.06      30.63       4.14      -2.05     764.16       5.53

   38   5.1  0.0  0.0       0.00       0.00      23.47      87.82    1362.89      -3.53      -5.16      -9.98       9.47   -1326.31
                          697.29      76.89   -1380.17     -30.31      35.26       1.08      13.01    1321.49       2.57      -6.94

   39   6.1  0.0  0.0       0.00       0.00      79.00     245.92    3817.87      -0.00       0.00      -0.00      -0.00      -0.00
                         -711.18     -78.68   -3825.26     -57.93      82.89       0.00      -0.00       0.01       0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39

    1   1.1  1.0  1.0       0.00       0.00       0.00     -48.44    2377.73      54.22       0.49      23.47      79.00
                            0.00       0.00       0.00   -2373.52     -51.10      -0.63      54.36   -1380.17   -3825.26

    2   2.1  1.0  1.0       0.00       0.00       0.00    -153.94      51.17   -2372.84     -44.99      87.82     245.92
                            0.00       0.00       0.00     -45.46    -153.54      44.28   -2372.87     -30.31     -57.93

    3   3.1  1.0  1.0       0.00       0.00       0.00   -2377.72     -49.02     152.53       6.83    1362.89    3817.87
                            0.00       0.00       0.00      51.29   -2373.22     -17.84     152.06      35.26      82.89

    4   4.1  1.0  1.0       0.00       0.00       0.00      -3.11       0.49      10.93    -656.66      -3.53      -0.00
                            0.00       0.00       0.00      -0.15     -10.07    1523.63      30.63       1.08       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00      -5.21       7.17      24.50   -1380.23      -5.16       0.00
                            0.00       0.00       0.00      -7.52      -0.45     121.41       4.14      13.01      -0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00      -4.58     764.33       4.21      14.10      -9.98      -0.00
                            0.00       0.00       0.00    -768.55      -2.02      -2.18      -2.05    1321.49       0.01

    7   7.1  1.0  1.0       0.00       0.00       0.00       5.16       4.51    -764.32      -9.92       9.47      -0.00
                            0.00       0.00       0.00       3.37       5.65     -17.99     764.16       2.57       0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00    -760.17      -7.27      -5.44       8.19   -1326.31      -0.00
                            0.00       0.00       0.00       4.71    -764.37      -5.85       5.53      -6.94       0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00      49.28    -426.78     -20.52      -0.36     -27.48     -58.09
                            0.00       0.00       0.00     425.97      49.69       0.57     -20.54     247.59     502.60

   10  10.1  1.0  1.0       0.00       0.00       0.00      49.24     -14.92     426.88       8.06     -28.14     -57.71
                            0.00       0.00       0.00      13.86      49.13      -7.83     426.90       8.71      14.33

   11  11.1  1.0  1.0       0.00       0.00       0.00    -425.14     -50.70      47.06       1.61     243.77     499.72
                            0.00       0.00       0.00      50.98    -424.31      -3.58      46.98      30.66      60.08

   12   1.1  1.0  0.0     -14.51     574.98      64.72       0.00       0.00       0.00       0.00       0.00       0.00
                            0.60      12.96      -8.11     -13.18      -1.47     133.52   -3360.68     -77.84      89.28

   13   2.1  1.0  0.0    -573.71      -7.64     -67.58       0.00       0.00       0.00       0.00       0.00       0.00
                          -67.81     -28.89     574.14     -12.42       6.34     217.66     -62.59    3875.94   -5399.79

   14   3.1  1.0  0.0      37.25     -11.41       3.01       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.69     577.83      26.94       2.20     -21.59    3354.33     137.83    -248.21     345.97

   15   4.1  1.0  0.0    -141.73    -144.28    1241.09       0.00       0.00       0.00       0.00       0.00       0.00
                         -110.09      -4.18     -10.74      -4.10    1226.39       7.01       0.77      -2.45      -0.00

   16   5.1  1.0  0.0      72.02      56.47    -591.30       0.00       0.00       0.00       0.00       0.00       0.00
                         1377.32      39.39     167.63      -5.75   -1780.45     -11.00      10.92       3.57      -0.00

   17   6.1  1.0  0.0      49.95   -1198.06    -127.70       0.00       0.00       0.00       0.00       0.00       0.00
                          -13.21      -8.13      -1.94       3.37      16.79     -27.43    1080.61       4.38      -0.00

   18   7.1  1.0  0.0    1197.01      34.75     142.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -141.81    -129.02    1190.62   -2161.97       2.38       8.26       8.36      -6.82      -0.00

   19   8.1  1.0  0.0       8.30       8.05       0.81       0.00       0.00       0.00       0.00       0.00       0.00
                           49.65   -1198.49    -123.96     -15.74       5.25   -1080.64     -27.48      -0.02      -0.00

   20   9.1  1.0  0.0      -0.00   -1535.88    -177.37       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -184.67      44.04       2.29       0.66     -81.26     602.06      31.57     -29.68

   21  10.1  1.0  0.0    1535.88       0.00     178.55       0.00       0.00       0.00       0.00       0.00       0.00
                          184.67       0.00   -1544.74       2.25      -0.95     -69.72      18.72    -697.29     711.18

   22  11.1  1.0  0.0     177.37    -178.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -44.04    1544.74       0.00       0.73      -3.91     598.66      83.90     -76.89      78.68

   23   1.1  1.0 -1.0       0.00       0.00       0.00     -48.44    2377.73      54.22       0.49      23.47      79.00
                           77.12      92.80    -809.67    2373.52      51.10       0.63     -54.36    1380.17    3825.26

   24   2.1  1.0 -1.0       0.00       0.00       0.00    -153.94      51.17   -2372.84     -44.99      87.82     245.92
                          -50.80      -0.08     -18.48      45.46     153.54     -44.28    2372.87      30.31      57.93

   25   3.1  1.0 -1.0       0.00       0.00       0.00   -2377.72     -49.02     152.53       6.83    1362.89    3817.87
                         -812.79     -25.13     -79.42     -51.29    2373.22      17.84    -152.06     -35.26     -82.89

   26   4.1  1.0 -1.0       0.00       0.00       0.00      -3.11       0.49      10.93    -656.66      -3.53      -0.00
                           66.30   -1610.48    -179.78       0.15      10.07   -1523.63     -30.63      -1.08      -0.00

   27   5.1  1.0 -1.0       0.00       0.00       0.00      -5.21       7.17      24.50   -1380.23      -5.16       0.00
                           48.86   -1107.32    -139.22       7.52       0.45    -121.41      -4.14     -13.01       0.00

   28   6.1  1.0 -1.0       0.00       0.00       0.00      -4.58     764.33       4.21      14.10      -9.98      -0.00
                          184.27     206.37   -1682.83     768.55       2.02       2.18       2.05   -1321.49      -0.01

   29   7.1  1.0 -1.0       0.00       0.00       0.00       5.16       4.51    -764.32      -9.92       9.47      -0.00
                           11.69       6.29       2.80      -3.37      -5.65      17.99    -764.16      -2.57      -0.00

   30   8.1  1.0 -1.0       0.00       0.00       0.00    -760.17      -7.27      -5.44       8.19   -1326.31      -0.00
                        -1693.95     -48.93    -191.48      -4.71     764.37       5.85      -5.53       6.94      -0.00

   31   9.1  1.0 -1.0   41116.01       0.00       0.00      49.28    -426.78     -20.52      -0.36     -27.48     -58.09
                           -0.00    -241.82    2185.79    -425.97     -49.69      -0.57      20.54    -247.59    -502.60

   32  10.1  1.0 -1.0       0.00   41116.02       0.00      49.24     -14.92     426.88       8.06     -28.14     -57.71
                          241.82      -0.00      91.22     -13.86     -49.13       7.83    -426.90      -8.71     -14.33

   33  11.1  1.0 -1.0       0.00       0.00   41116.02    -425.14     -50.70      47.06       1.61     243.77     499.72
                        -2185.79     -91.22      -0.00     -50.98     424.31       3.58     -46.98     -30.66     -60.08

   34   1.1  0.0  0.0      49.28      49.24    -425.14    5606.11       0.00       0.00       0.00       0.00       0.00
                          425.97      13.86      50.98       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.1  0.0  0.0    -426.78     -14.92     -50.70       0.00    5606.13       0.00       0.00       0.00       0.00
                           49.69      49.13    -424.31      -0.00       0.00       0.00       0.00       0.00       0.00

   36   3.1  0.0  0.0     -20.52     426.88      47.06       0.00       0.00    5606.14       0.00       0.00       0.00
                            0.57      -7.83      -3.58      -0.00      -0.00       0.00       0.00       0.00       0.00

   37   4.1  0.0  0.0      -0.36       8.06       1.61       0.00       0.00       0.00    5606.14       0.00       0.00
                          -20.54     426.90      46.98      -0.00      -0.00      -0.00       0.00       0.00       0.00

   38   5.1  0.0  0.0     -27.48     -28.14     243.77       0.00       0.00       0.00       0.00    5606.16       0.00
                          247.59       8.71      30.66      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   39   6.1  0.0  0.0     -58.09     -57.71     499.72       0.00       0.00       0.00       0.00       0.00   14146.24
                          502.60      14.33      60.08      -0.00      -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 39)

    The diagonal matrixelements are shifted by   -192.69657900 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.003       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.002       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   40447.309       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   40447.346       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   40447.412       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   40447.494       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40447.520
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000     -74.879     -52.336      84.910   -1064.596      10.318      21.612     -15.636

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               74.879       0.000    3455.725       2.000     -16.330       6.109      52.944     923.653

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               52.336   -3455.725       0.000       0.041      25.327      -0.204     923.522     -52.590

    4    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                              -84.910      -2.000      -0.041       0.000     -40.769   -4170.165       3.089      22.427

    5    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                             1064.596      16.330     -25.327      40.769       0.000    -332.478      -0.712      -2.962

    6    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                              -10.318      -6.109       0.204    4170.165     332.478       0.000       3.980      -3.423

    7    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                              -21.612     -52.944    -923.522      -3.089       0.712      -3.980       0.000   -2091.830

    8    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               15.636    -923.653      52.590     -22.427       2.962       3.423    2091.830       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.849      95.902      27.849     155.692   -1947.829      18.678     200.548     -70.217

   10    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                              -18.325      40.850    -817.172       5.916     -55.712      11.498     182.462    1694.925

   11    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               11.471    -811.959     -38.095      15.193    -237.061       2.748   -1683.793     175.311

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     221.007    3449.388      13.941      10.536      13.052       6.506    -925.053

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -221.007      -0.000      57.029    -877.959    -604.110      66.090       3.359     -14.077

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3449.388     -57.029       0.000      57.068      47.826     922.821      -0.735      14.096

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.941     877.959     -57.068      -0.000      12.895      -0.362    2373.044      18.670

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -10.536     604.110     -47.826     -12.895      -0.000      -0.650   -3445.376      -3.857

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.052     -66.090    -922.821       0.362       0.650       0.000      17.001    2091.907

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.506      -3.359       0.735   -2373.044    3445.376     -17.001       0.000       2.065

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              925.053      14.077     -14.096     -18.670       3.857   -2091.907      -2.065       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               77.117     -50.802    -812.788      66.303      48.859     184.265      11.686   -1693.948

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               92.797      -0.075     -25.133   -1610.477   -1107.322     206.366       6.288     -48.926

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -809.672     -18.475     -79.422    -179.778    -139.218   -1682.830       2.802    -191.482

    1    1  |0 0>             -68.504    -217.708   -3362.606      -4.391      -7.373      -6.480       7.299   -1075.047
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            3362.613      72.360     -69.330       0.698      10.136    1080.924       6.377     -10.284
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              76.676   -3355.695     215.710      15.459      34.653       5.952   -1080.917      -7.686
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.694     -63.620       9.658    -928.663   -1951.939      19.939     -14.036      11.585
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              33.185     124.195    1927.412      -4.999      -7.291     -14.111      13.398   -1875.688
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>             111.725     347.787    5399.283      -0.000       0.000      -0.001      -0.000      -0.006
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000     -74.879     -52.336      84.910   -1064.596

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      74.879       0.000    3455.725       2.000     -16.330

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      52.336   -3455.725       0.000       0.041      25.327

    4    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000     -84.910      -2.000      -0.041       0.000     -40.769

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000    1064.596      16.330     -25.327      40.769       0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     -10.318      -6.109       0.204    4170.165     332.478

    7    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -21.612     -52.944    -923.522      -3.089       0.712

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      15.636    -923.653      52.590     -22.427       2.962

    9    1  |1 1>+          41116.011       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.849      95.902      27.849     155.692   -1947.829

   10    1  |1 1>+              0.000   41116.019       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000     -18.325      40.850    -817.172       5.916     -55.712

   11    1  |1 1>+              0.000       0.000   41116.021      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000      11.471    -811.959     -38.095      15.193    -237.061

    1    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.849      18.325     -11.471       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.003       0.000       0.000       0.000
                              -95.902     -40.850     811.959      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.002       0.000       0.000
                              -27.849     817.172      38.095      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000   40447.309       0.000
                             -155.692      -5.916     -15.193      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000   40447.346
                             1947.829      55.712     237.061      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -18.678     -11.498      -2.748      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -200.548    -182.462    1683.793      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               70.217   -1694.925    -175.311      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -261.158      62.276      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              261.158       0.000   -2184.589      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              -62.276    2184.589       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   -3449.048     222.165      17.983     -11.866
                              -77.117     -92.797     809.672      -0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000    3449.048       0.000     -71.370      62.777     -20.441
                               50.802       0.075      18.475       0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000    -222.165      71.370       0.000     962.620    -458.476
                              812.788      25.133      79.422      -0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000     -17.983     -62.777    -962.620       0.000      -3.059
                              -66.303    1610.477     179.778      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000      11.866      20.441     458.476       3.059       0.000
                              -48.859    1107.322     139.218       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000      15.590    -923.443      55.473     -15.906     -29.292
                             -184.265    -206.366    1682.830       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000     924.961      14.448     -19.178      14.569      47.427
                              -11.686      -6.288      -2.802       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       6.485       6.079       0.297   -1797.168   -3777.365
                             1693.948      48.926     191.482      -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000      20.513     811.348     -52.686     200.437    -101.850
                                0.000     241.825   -2185.785      -0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000    -813.151      10.805      16.129     204.037     -79.860
                             -241.825       0.000     -91.219      -0.000       0.000      -0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000     -91.523      95.569      -4.262   -1755.168     836.228
                             2185.785      91.219       0.000      -0.000       0.000      -0.000      -0.000       0.000

    1    1  |0 0>              69.697      69.631    -601.234       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      13.180      12.422      -2.202       4.104       5.754

    2    1  |0 0>            -603.554     -21.107     -71.704       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       1.469      -6.339      21.587   -1226.386    1780.447

    3    1  |0 0>             -29.022     603.699      66.554       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -133.517    -217.658   -3354.335      -7.011      10.998

    4    1  |0 0>              -0.510      11.396       2.276       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    3360.683      62.592    -137.830      -0.767     -10.923

    5    1  |0 0>             -38.858     -39.791     344.744       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      77.836   -3875.942     248.207       2.451      -3.571

    6    1  |0 0>             -82.158     -81.616     706.710       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -89.276    5399.787    -345.972       0.001       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               10.318      21.612     -15.636       0.849      18.325     -11.471      -0.000     221.007

    2    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                6.109      52.944     923.653     -95.902     -40.850     811.959    -221.007      -0.000

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.204     923.522     -52.590     -27.849     817.172      38.095   -3449.388     -57.029

    4    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                            -4170.165       3.089      22.427    -155.692      -5.916     -15.193     -13.941     877.959

    5    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                             -332.478      -0.712      -2.962    1947.829      55.712     237.061     -10.536     604.110

    6    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       3.980      -3.423     -18.678     -11.498      -2.748     -13.052     -66.090

    7    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -3.980       0.000   -2091.830    -200.548    -182.462    1683.793      -6.506      -3.359

    8    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                3.423    2091.830       0.000      70.217   -1694.925    -175.311     925.053      14.077

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               18.678     200.548     -70.217       0.000    -261.158      62.276      77.117     -50.802

   10    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               11.498     182.462    1694.925     261.158       0.000   -2184.589      92.797      -0.075

   11    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                2.748   -1683.793     175.311     -62.276    2184.589       0.000    -809.672     -18.475

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    3449.048
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   -3449.048       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000     222.165     -71.370
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      17.983      62.777
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000     -11.866     -20.441
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    6    1  |1 0>           40447.412       0.000       0.000       0.000       0.000       0.000     -15.590     923.443
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000   40447.494       0.000       0.000       0.000       0.000    -924.961     -14.448
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000   40447.520       0.000       0.000       0.000      -6.485      -6.079
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000   41116.011       0.000       0.000     -20.513    -811.348
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000   41116.019       0.000     813.151     -10.805
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000   41116.021      91.523     -95.569
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-            -15.590    -924.961      -6.485     -20.513     813.151      91.523       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-            923.443     -14.448      -6.079    -811.348     -10.805     -95.569       0.000       0.003
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-            -55.473      19.178      -0.297      52.686     -16.129       4.262       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 1>-             15.906     -14.569    1797.168    -200.437    -204.037    1755.168       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>-             29.292     -47.427    3777.365     101.850      79.860    -836.228       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   -2091.255     -53.611      70.635   -1694.313    -180.590       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-           2091.255       0.000     -26.287    1692.833      49.141     200.813       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 1>-             53.611      26.287       0.000      11.733      11.383       1.146       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    9    1  |1 1>-            -70.635   -1692.833     -11.733       0.000   -2172.057    -250.846       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

   10    1  |1 1>-           1694.313     -49.141     -11.383    2172.057       0.000     252.513       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-            180.590    -200.813      -1.146     250.846    -252.513       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.373    2161.974      15.736      -2.292      -2.245      -0.732    3356.661      64.290

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -16.795      -2.383      -5.250      -0.658       0.946       3.909      72.265     217.141

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               27.434      -8.257    1080.637      81.256      69.721    -598.659       0.886     -62.617

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1080.615      -8.357      27.476    -602.056     -18.724     -83.899     -76.877    3355.742

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.384       6.819       0.024     -31.574     697.293      76.886    1951.856      42.858

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.002       0.000      29.680    -711.178     -78.681    5409.737      81.930

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             3449.388      13.941      10.536      13.052       6.506    -925.053     -77.117     -92.797

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               57.029    -877.959    -604.110      66.090       3.359     -14.077      50.802       0.075

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      57.068      47.826     922.821      -0.735      14.096     812.788      25.133

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -57.068      -0.000      12.895      -0.362    2373.044      18.670     -66.303    1610.477

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -47.826     -12.895      -0.000      -0.650   -3445.376      -3.857     -48.859    1107.322

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -922.821       0.362       0.650       0.000      17.001    2091.907    -184.265    -206.366

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.735   -2373.044    3445.376     -17.001       0.000       2.065     -11.686      -6.288

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.096     -18.670       3.857   -2091.907      -2.065       0.000    1693.948      48.926

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -812.788      66.303      48.859     184.265      11.686   -1693.948       0.000     241.825

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -25.133   -1610.477   -1107.322     206.366       6.288     -48.926    -241.825       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -79.422    -179.778    -139.218   -1682.830       2.802    -191.482    2185.785      91.219

    1    1  |1 0>            -222.165     -17.983      11.866      15.590     924.961       6.485      20.513    -813.151
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 0>              71.370     -62.777      20.441    -923.443      14.448       6.079     811.348      10.805
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000    -962.620     458.476      55.473     -19.178       0.297     -52.686      16.129
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    4    1  |1 0>             962.620       0.000       3.059     -15.906      14.569   -1797.168     200.437     204.037
                                0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 0>            -458.476      -3.059       0.000     -29.292      47.427   -3777.365    -101.850     -79.860
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>             -55.473      15.906      29.292       0.000    2091.255      53.611     -70.635    1694.313
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 0>              19.178     -14.569     -47.427   -2091.255       0.000      26.287   -1692.833     -49.141
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>              -0.297    1797.168    3777.365     -53.611     -26.287       0.000     -11.733     -11.383
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 0>              52.686    -200.437     101.850      70.635    1692.833      11.733       0.000    2172.057
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>             -16.129    -204.037      79.860   -1694.313      49.141      11.383   -2172.057       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               4.262    1755.168    -836.228    -180.590     200.813       1.146    -250.846     252.513
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.002       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000   40447.309       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000   40447.346       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000   40447.412       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000   40447.494       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   40447.520       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   41116.011       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   41116.019
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -72.536       0.211      10.634    1086.888      -4.761      -6.667    -602.419     -19.605

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             3356.237      14.244       0.630       2.858      -7.996    1080.978     -70.270     -69.486

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               25.237   -2154.739    -171.704       3.083      25.436       8.279      -0.809      11.074

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -215.044     -43.316      -5.858       2.896   -1080.688      -7.821      29.048    -603.724

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -49.860      -1.531     -18.404   -1868.863      -3.630       9.814    -350.150     -12.320

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -117.219      -0.000       0.000      -0.009      -0.000      -0.000    -710.787     -20.262

  State Sym Spin    / Nr.       33          34          35          36          37          38          39

    1    1  |1 1>+              0.000     -68.504    3362.613      76.676       0.694      33.185     111.725
                              809.672       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000    -217.708      72.360   -3355.695     -63.620     124.195     347.787
                               18.475       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   -3362.606     -69.330     215.710       9.658    1927.412    5399.283
                               79.422       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      -4.391       0.698      15.459    -928.663      -4.999      -0.000
                              179.778       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -7.373      10.136      34.653   -1951.939      -7.291       0.000
                              139.218       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -6.480    1080.924       5.952      19.939     -14.111      -0.001
                             1682.830       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       7.299       6.377   -1080.917     -14.036      13.398      -0.000
                               -2.802       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000   -1075.047     -10.284      -7.686      11.585   -1875.688      -0.006
                              191.482       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000      69.697    -603.554     -29.022      -0.510     -38.858     -82.158
                            -2185.785       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000      69.631     -21.107     603.699      11.396     -39.791     -81.616
                              -91.219       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000    -601.234     -71.704      66.554       2.276     344.744     706.710
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>             -91.523       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -13.180      -1.469     133.517   -3360.683     -77.836      89.276

    2    1  |1 0>              95.569       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -12.422       6.339     217.658     -62.592    3875.942   -5399.787

    3    1  |1 0>              -4.262       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       2.202     -21.587    3354.335     137.830    -248.207     345.972

    4    1  |1 0>           -1755.168       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -4.104    1226.386       7.011       0.767      -2.451      -0.001

    5    1  |1 0>             836.228       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -5.754   -1780.447     -10.998      10.923       3.571      -0.000

    6    1  |1 0>             180.590       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       3.373      16.795     -27.434    1080.615       4.384      -0.000

    7    1  |1 0>            -200.813       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -2161.974       2.383       8.257       8.357      -6.819      -0.002

    8    1  |1 0>              -1.146       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -15.736       5.250   -1080.637     -27.476      -0.024      -0.000

    9    1  |1 0>             250.846       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       2.292       0.658     -81.256     602.056      31.574     -29.680

   10    1  |1 0>            -252.513       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       2.245      -0.946     -69.721      18.724    -697.293     711.178

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.732      -3.909     598.659      83.899     -76.886      78.681

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -3356.661     -72.265      -0.886      76.877   -1951.856   -5409.737

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -64.290    -217.141      62.617   -3355.742     -42.858     -81.930

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      72.536   -3356.237     -25.237     215.044      49.860     117.219

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.211     -14.244    2154.739      43.316       1.531       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -10.634      -0.630     171.704       5.858      18.404      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1086.888      -2.858      -3.083      -2.896    1868.863       0.009

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       4.761       7.996     -25.436    1080.688       3.630       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       6.667   -1080.978      -8.279       7.821      -9.814       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     602.419      70.270       0.809     -29.048     350.150     710.787

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      19.605      69.486     -11.074     603.724      12.320      20.262

   11    1  |1 1>-          41116.021       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      72.102    -600.066      -5.064      66.433      43.357      84.972

    1    1  |0 0>               0.000    5606.105       0.000       0.000       0.000       0.000       0.000
                              -72.102       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5606.130       0.000       0.000       0.000       0.000
                              600.066      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5606.138       0.000       0.000       0.000
                                5.064      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5606.142       0.000       0.000
                              -66.433      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5606.164       0.000
                              -43.357      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   14146.245
                              -84.972      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.74470995    -0.04813095   -10563.52      0.00000000        0.00      0.0000
    2  -192.71256291    -0.01598391    -3508.06      0.03214704     7055.46      0.8748
    3  -192.71256291    -0.01598391    -3508.06      0.03214704     7055.46      0.8748
    4  -192.71256290    -0.01598391    -3508.06      0.03214704     7055.46      0.8748
    5  -192.69915710    -0.00257810     -565.83      0.04555285     9997.69      1.2396
    6  -192.69915698    -0.00257798     -565.80      0.04555297     9997.72      1.2396
    7  -192.69915626    -0.00257727     -565.64      0.04555368     9997.88      1.2396
    8  -192.69915625    -0.00257725     -565.64      0.04555370     9997.88      1.2396
    9  -192.69915623    -0.00257723     -565.64      0.04555371     9997.88      1.2396
   10  -192.65403978     0.04253922     9336.28      0.09067017    19899.80      2.4673
   11  -192.65403975     0.04253925     9336.29      0.09067020    19899.81      2.4673
   12  -192.65403975     0.04253925     9336.29      0.09067020    19899.81      2.4673
   13  -192.65403905     0.04253995     9336.44      0.09067089    19899.96      2.4673
   14  -192.65403890     0.04254010     9336.47      0.09067105    19900.00      2.4673
   15  -192.61594874     0.08063026    17696.30      0.12876121    28259.82      3.5038
   16  -192.54473796     0.15184104    33325.26      0.19997199    43888.78      5.4415
   17  -192.54473792     0.15184108    33325.26      0.19997202    43888.79      5.4415
   18  -192.54473778     0.15184122    33325.30      0.19997217    43888.82      5.4415
   19  -192.52884398     0.16773502    36813.58      0.21586597    47377.10      5.8740
   20  -192.52719197     0.16938703    37176.16      0.21751797    47739.68      5.9190
   21  -192.52719196     0.16938704    37176.16      0.21751799    47739.68      5.9190
   22  -192.52719196     0.16938704    37176.16      0.21751799    47739.68      5.9190
   23  -192.52719166     0.16938734    37176.22      0.21751829    47739.75      5.9190
   24  -192.52719143     0.16938757    37176.27      0.21751852    47739.80      5.9190
   25  -192.51517866     0.18140034    39812.77      0.22953128    50376.29      6.2459
   26  -192.51517865     0.18140035    39812.77      0.22953130    50376.30      6.2459
   27  -192.51517863     0.18140037    39812.78      0.22953131    50376.30      6.2459
   28  -192.49322509     0.20335391    44631.02      0.25148486    55194.55      6.8433
   29  -192.49322509     0.20335391    44631.03      0.25148486    55194.55      6.8433
   30  -192.49322484     0.20335416    44631.08      0.25148511    55194.60      6.8433
   31  -192.49322477     0.20335423    44631.09      0.25148517    55194.62      6.8433
   32  -192.49322471     0.20335429    44631.11      0.25148523    55194.63      6.8433
   33  -192.49322471     0.20335429    44631.11      0.25148524    55194.63      6.8433
   34  -192.49322461     0.20335439    44631.13      0.25148534    55194.65      6.8433
   35  -192.49250599     0.20407301    44788.85      0.25220396    55352.37      6.8628
   36  -192.49250598     0.20407302    44788.85      0.25220396    55352.37      6.8628
   37  -192.49250598     0.20407302    44788.85      0.25220397    55352.37      6.8628
   38  -192.49250593     0.20407307    44788.86      0.25220401    55352.38      6.8628
   39  -192.49250591     0.20407309    44788.87      0.25220404    55352.39      6.8628

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.01112675  0.04600876  0.70468184  0.02164173  0.01180119  0.00584818 -0.54735072 -0.01015529
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.03463629  0.00932571 -0.02319323  0.70475963  0.03643804  0.01788849 -0.00943074  0.54633828
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.53771736 -0.00155274 -0.01308770 -0.04584392  0.56687269  0.27679218  0.01206875 -0.03492832
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.01746688  0.00111926  0.00023284  0.00002282 -0.00003169 -0.00016615 -0.00019253
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000001  0.00829759 -0.00070136 -0.00017605  0.00000159  0.00002851 -0.00059537 -0.00046496
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000002 -0.00116331 -0.01672659 -0.00079718  0.00017668 -0.00034731 -0.03068322 -0.00004407
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00018881  0.00081190 -0.01676569 -0.00019561  0.00039482 -0.00005079  0.03068799
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000012  0.00002045  0.00011215 -0.00011415  0.02692953 -0.05515066  0.00018766  0.00022768
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00276044 -0.00080504 -0.01240420 -0.00006723  0.00060637  0.00029685 -0.00504951 -0.00022119
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00274223 -0.00017518  0.00024378 -0.01242804  0.00060102  0.00029433 -0.00015445  0.00505262
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.02374496 -0.00011382 -0.00141390 -0.00144309 -0.00521018 -0.00254364 -0.00060616  0.00055730
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00889106  0.70503405 -0.04638801  0.00374088 -0.00060511 -0.01033237 -0.00287315 -0.01662327

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.53777060  0.01123056 -0.00287256  0.04519509  0.04373166  0.62938268  0.00017607 -0.03532787

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.03445574 -0.00664696 -0.03286376  0.70442081 -0.00272694 -0.04038427  0.00120277 -0.54617848

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000002 -0.00102830 -0.01591332 -0.00074168  0.00013172 -0.00000112 -0.03481520 -0.00005155

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00055346 -0.01096947 -0.00052694  0.00014174 -0.00002156  0.05054621  0.00009508

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.01675795 -0.00096904 -0.00014398  0.00002011 -0.00000590 -0.00030541  0.00049427

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000012 -0.00000450  0.00006570 -0.00011614  0.06122770 -0.00425364 -0.00004281 -0.00020892

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00009822 -0.00079337  0.01676752  0.00043031 -0.00002697 -0.00002149  0.03068397

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00099722 -0.01240976  0.00087217 -0.00124337 -0.00001575 -0.00024229 -0.00002550 -0.00063276

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.02389520 -0.00037071  0.00009135 -0.00141889  0.00040481  0.00582070  0.00000179 -0.00058177

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00264365 -0.00133034 -0.00049689  0.01235594  0.00004420  0.00064459 -0.00001362  0.00501489

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.53875863  0.01258526  0.01378795  0.00050869  0.52415750 -0.35321143  0.01134116  0.00022243

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00815942 -0.70059477  0.09087092  0.01295054  0.00804985 -0.00528271  0.03230081 -0.00523630

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01167387  0.09114038  0.69983858  0.03252830 -0.01143482  0.00752735  0.54650185  0.00145912

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00001668 -0.00008241  0.00153858  0.00003833  0.00003769  0.00014871 -0.06117972

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00027654  0.00093672 -0.01929710  0.00033838  0.00050064 -0.00000082 -0.00487563

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00001201 -0.00011602  0.00018368  0.03429640  0.05089606  0.00021261  0.00010154

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.01674111  0.00120239  0.00030650 -0.00002072 -0.00002521 -0.00005594  0.00043648

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00121567 -0.01672344 -0.00079831 -0.00022413 -0.00033355  0.03068760  0.00010274

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.02388197 -0.00061123 -0.00139734 -0.00005970  0.00483589 -0.00325891  0.00058473  0.00000429

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00068080  0.01230581 -0.00222514 -0.00025772  0.00013886 -0.00009234  0.00055317 -0.00004795

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00285499  0.00217851  0.01221943  0.00056077  0.00057892 -0.00038833 -0.00502418 -0.00001562

   1    1  |0 0>           0.00000036  0.00000001  0.00000001 -0.00000001  0.62681473 -0.04155018  0.00025564  0.00028051
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000001 -0.00000005 -0.00000090 -0.00000004 -0.00035921 -0.00137337  0.62817428 -0.00266352
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000003 -0.00000000 -0.00000014 -0.00026074 -0.00001148  0.00269555  0.62815784
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000109 -0.00000008 -0.00000002 -0.00220093  0.00281425 -0.00343541  0.00586598
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000170  0.00000001 -0.00000000  0.00000001 -0.04155946 -0.62680943 -0.00140878  0.00000207
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.35619163 -0.00000000 -0.00000000  0.00000000 -0.00000030 -0.00000163  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.00299653  0.44604873  0.00837533  0.00181364 -0.00908725  0.00553516  0.00426142 -0.00061823
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00525009  0.00793937 -0.44073151 -0.06314028 -0.02808251  0.01758236  0.01326531  0.00020982
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00043372 -0.00974316  0.02827818  0.00374509 -0.43537191  0.27337317  0.20593974 -0.00000072
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.02636643 -0.00002729 -0.00159189  0.01130782  0.00000330  0.00001733  0.00000000  0.53015926
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.05541770 -0.00016399 -0.00337188  0.02376389 -0.00001741 -0.00000235 -0.00000000 -0.25238760
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00073131 -0.01328956  0.00000823 -0.00026604  0.00009319  0.00014810  0.00000002 -0.01812721
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00010916 -0.00002977  0.01316788  0.00180357 -0.00009923 -0.00015915  0.00000000  0.00671741
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00001143  0.00009372  0.00009064  0.00001730  0.01413452  0.02251084  0.00000022 -0.00027076
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00002901  0.02243817  0.00098261  0.00017024 -0.00254042  0.00158659  0.00199357  0.01041351
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00004817  0.00069940 -0.02222427 -0.00318421 -0.00252179  0.00158078  0.00198042 -0.00337417
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000366  0.00268937 -0.00245558 -0.00033338  0.02181822 -0.01370098 -0.01714844  0.00082097
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                           0.54723970  0.00058686  0.07237109 -0.44025402 -0.00008978 -0.00860803  0.00340514  0.01551081

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00785310  0.00007713  0.02933363 -0.00274570  0.01906549  0.51378187 -0.20595832  0.00024895

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.01715758 -0.00120626  0.43933856  0.07270334 -0.00118886 -0.03289182  0.01319604 -0.00011688

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00021122 -0.01507800 -0.00002670 -0.00003639  0.00005789  0.00000205  0.00000002 -0.01960964

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00003398  0.02189018  0.00006690 -0.00009215  0.00006052 -0.00000841  0.00000001 -0.01820220

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.03068531 -0.00018431  0.00196847 -0.01314395  0.00001827 -0.00000377  0.00000000 -0.50830255

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000196 -0.00001706 -0.00009832  0.00000521  0.02656243 -0.00098558  0.00000007  0.00033344

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00049503 -0.00001634  0.01314370  0.00196902  0.00018961 -0.00000625  0.00000000 -0.00392761

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00504426  0.00002369  0.00574971 -0.02184596 -0.00002861 -0.00108684  0.00072018 -0.25929416

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00013745  0.00000129  0.00264083 -0.00027417  0.00096182  0.02590863 -0.01725681 -0.00780046

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00065231  0.00006381 -0.02170624 -0.00582000  0.00010584  0.00286450 -0.00190921 -0.02730326

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00903500 -0.00936878 -0.00099212  0.00711210 -0.45531570 -0.24082050 -0.20633855  0.00024321

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.54653227 -0.02806692  0.06306674 -0.44080475 -0.00666645 -0.00375331 -0.00312497 -0.01551762

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.03210386 -0.44524220 -0.00513171  0.02746889  0.00993009  0.00534723  0.00447096  0.00037827

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00065766  0.00007899 -0.02622563 -0.00378445  0.00000856 -0.00002182 -0.00000001  0.00038318

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00012185  0.00000059 -0.00208607 -0.00033120  0.00012222 -0.00023147  0.00000000  0.00952398

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00002543  0.00008094  0.00004296  0.00001283  0.01242749 -0.02349603 -0.00000026  0.00001047

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.03068557 -0.00007625  0.00194375 -0.01314759  0.00000156  0.00000636 -0.00000000  0.50854038

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00005447  0.01329034  0.00006191 -0.00006803 -0.00008209  0.00014717 -0.00000001 -0.01653885

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00020832 -0.00260249 -0.00013545  0.00091507 -0.02290546 -0.01211434 -0.01724735 -0.00962367

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00505556 -0.00254605  0.00317761 -0.02223107 -0.00064120 -0.00035041 -0.00049167  0.26019555

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00053226  0.02231443  0.00040706 -0.00242118 -0.00274093 -0.00145509 -0.00206185  0.01845468

   1    1  |0 0>           0.00238118  0.00036694 -0.00029889  0.00347799  0.77375335 -0.03115950  0.00000019 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00346535  0.77438424 -0.00296432  0.00086168 -0.00031842  0.00133677 -0.00000000 -0.00000002
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00585223  0.00283563  0.76851474  0.09518165 -0.00012623  0.00015097 -0.00000000  0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.62814375 -0.00121606 -0.09517615  0.76850624 -0.00360490 -0.00283881 -0.00000000 -0.00000051
                           0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00265490 -0.00132810 -0.00050606  0.00293955  0.03114698  0.77375662 -0.00000037 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000001  0.00000000  0.00000000  0.00000000 -0.00000025 -0.00000015  0.93342321 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.01550766 -0.00025051 -0.00033584 -0.00344738 -0.00109059  0.03176041 -0.00085384 -0.00025999
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00023797  0.01549004 -0.00104561 -0.00154303  0.03185563  0.00087271 -0.00222166 -0.00099843
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00033622 -0.00099259 -0.01623315  0.00024321 -0.00209505 -0.00085154 -0.03362982 -0.01501763
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.02145501 -0.00644609 -0.00000008  0.31285441  0.01348674  0.03412564  0.00024765  0.00057723
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00498992  0.00480395 -0.00000004  0.65788235  0.02911213  0.06881890  0.00104919  0.00005380
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.50853456  0.00037555 -0.00000118  0.03310221  0.00598469 -0.36511970 -0.00010776  0.00371871
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00012813  0.50882710 -0.00000035  0.01491954 -0.36627789 -0.00467878  0.00272331 -0.00438989
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00328112  0.00361695  0.00000981  0.00030743 -0.00241386 -0.00019366 -0.29892891  0.66950849
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.25889466  0.01072454 -0.06614857  0.03241745  0.01813042 -0.30235946  0.03860308  0.01608021
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00743230 -0.25921985 -0.06571196  0.01514206 -0.30410702 -0.01230111  0.03741272  0.01675251
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.03095527 -0.02868971  0.56899668  0.00622075 -0.03365035 -0.03791264 -0.31899653 -0.14257146
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00061470  0.00010101 -0.00026841 -0.03170985 -0.00210419 -0.00350143  0.00044998 -0.00037191

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000951  0.00099434  0.01623490 -0.00033244 -0.00209744 -0.00025668 -0.02982481  0.02162494

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001021  0.01549326 -0.00104021  0.00217933 -0.03183240 -0.00031322  0.00196465 -0.00135331

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.48353748 -0.00014521 -0.00000128  0.04489208  0.00707123 -0.41342759  0.00295915  0.00058046

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.33283447  0.00038358  0.00000096 -0.06921342 -0.01064493  0.59977737 -0.00196100  0.00238508

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.02385259  0.00392830  0.00000000 -0.36329919 -0.01882618 -0.04567302 -0.00028904  0.00007857

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00179968  0.00360960  0.00000293 -0.00096726  0.00385654  0.00057045  0.43034258  0.59364086

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00014504 -0.50885421 -0.00000034  0.01945051 -0.36606371 -0.00381223  0.00365970  0.00458108

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.01026706 -0.02628162 -0.02389613  0.30075542  0.04891610  0.03367821 -0.01152412  0.00872638

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00029799 -0.02964420  0.57259550  0.00648567  0.03553648  0.00308604  0.28480325 -0.20653345

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00117503  0.25803032  0.06334914  0.05028080 -0.30074343  0.00036969  0.03206391 -0.02252755

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00033042 -0.00000351  0.01626405  0.00061579 -0.00000703 -0.00055802 -0.00381543 -0.03671167

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00038349  0.00021944  0.00024632 -0.03145808 -0.00140704 -0.00553152 -0.00009181 -0.00057426

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01551749 -0.00000846 -0.00035247  0.00549633  0.00065461 -0.03148580  0.00024398  0.00074627

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                           0.00035787 -0.04670846  0.00000063 -0.03503410  0.73003192  0.00932595 -0.00057552 -0.00079397

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00002628  0.58565414 -0.00000022 -0.00361056  0.05816279  0.00053163  0.00708405 -0.00080590

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00327143 -0.00572707 -0.00000120 -0.00178343 -0.00024204  0.00593141  0.72924008 -0.07586532

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.01654134 -0.00851841  0.00000024 -0.36367258 -0.01818480 -0.04270738 -0.00079413 -0.00014378

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.50860312  0.00041111  0.00000096 -0.04239240 -0.00702282  0.36405510 -0.00650405  0.00106270

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.03035366  0.00014247  0.57228489 -0.01664336 -0.00078990  0.03320642  0.03619566  0.34979042

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01946070 -0.00367687  0.01631402  0.29873705  0.01317247  0.06806659  0.00128556  0.01016867

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.25854708 -0.00031302  0.06841362  0.06635078  0.00689901 -0.29728509  0.00590039  0.04134966

   1    1  |0 0>          -0.00000001 -0.00000000 -0.00000047 -0.00014105 -0.00008684 -0.00012942 -0.03341750 -0.04579102
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000061  0.00000000 -0.00000010  0.00616158  0.00064054 -0.05634758  0.00038356 -0.00014085
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000001 -0.00000015  0.00000003 -0.00154438  0.05666569  0.00047489 -0.00007522 -0.00004914
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000003 -0.00000000  0.00000002 -0.05633042 -0.00148338 -0.00617821 -0.00013401  0.00029158
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000001 -0.00000043 -0.00032194  0.00002001  0.00036025  0.04579021 -0.03341624
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.04299569  0.00000002 -0.00000002 -0.00000008  0.00000037 -0.00000068
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00070762  0.01960460  0.00046025  0.00000000  0.00000025 -0.00000000 -0.00000001  0.00000010
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00100365 -0.00044893  0.01955536  0.00000002  0.00000000  0.00000014 -0.00000004 -0.00000125
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00005000 -0.00037674 -0.00126915  0.00000000  0.00000001  0.00000001  0.00000000  0.00000009
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.21009614  0.00799062 -0.01017721  0.73233522 -0.04359531 -0.00019030 -0.11210510  0.00144646
                           0.00000000  0.00000000  0.00000000 -0.00000012  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.09998838 -0.00175999  0.00561088 -0.04718822 -0.00591886  0.00097453  0.61625258 -0.01910174
                          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00630222  0.20159262  0.00810630 -0.03995265 -0.68433616  0.00044340 -0.00211890 -0.02858182
                           0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.01026213 -0.00777628  0.20144780  0.00171935  0.00016964 -0.59923927  0.01601151  0.41412878
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000001

   8    1  |1 1>+         -0.00005906 -0.00135499  0.00138708 -0.00008220  0.00169637 -0.00013479 -0.00013255  0.00775802
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.02437276  0.65223945 -0.00113676 -0.00000133 -0.00003869  0.00000145  0.00000084 -0.00001436
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.03313350 -0.00627966  0.65188345 -0.00000171 -0.00000117 -0.00003391  0.00000478  0.00013885
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00099310  0.07510019  0.07515196 -0.00000013 -0.00000261 -0.00000200  0.00000066  0.00001501
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01960252  0.00071456 -0.00058388  0.00000019 -0.00000002 -0.00000001  0.00000063  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00036188 -0.00003697  0.00124378  0.00000000  0.00000002 -0.00000002  0.00000002  0.00000009

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00058973 -0.00076140  0.01956294 -0.00000002  0.00000000 -0.00000038  0.00000003  0.00000114

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00694058  0.19169477  0.00754458  0.04297652  0.71315320 -0.00006944  0.00396994 -0.00725352

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00663566  0.13195601  0.00545540  0.01548150  0.11899982  0.00085960  0.01843990 -0.07495570

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000011 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.20147123 -0.00892773  0.00881589  0.66562465 -0.04214356  0.00420797  0.29687925 -0.00729972

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00018315 -0.00076894  0.00139769 -0.00053931  0.00096931 -0.00593098  0.00023130 -0.00926584

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000001
                          -0.00915700  0.00766576 -0.20151223 -0.00171449  0.00026903  0.25429814  0.02134320  0.67949686

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.65475171  0.02139341  0.04237461 -0.00002969  0.00000287  0.00000395 -0.00007337 -0.00001372

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.02243114 -0.00215917  0.07378905 -0.00000067 -0.00000192  0.00000252 -0.00000315 -0.00001683

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.04423054  0.02758774 -0.65097312 -0.00000524  0.00000035 -0.00002913 -0.00000394  0.00013431

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00030888  0.00041668 -0.00000013 -0.00000000 -0.00000001  0.00000001 -0.00000001 -0.00000001

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01958981  0.00053090  0.00103677  0.00000025 -0.00000005 -0.00000001  0.00000056 -0.00000002

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00056279  0.01960076  0.00071864 -0.00000003 -0.00000034  0.00000000 -0.00000003 -0.00000006

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000001
                          -0.00054448  0.00084989 -0.01850178  0.00261607  0.00000994 -0.23064264  0.02126719  0.52692845

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000
                           0.01252277 -0.00890518  0.23184650 -0.00051711  0.00055770  0.72317605  0.00850939  0.27250475

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00007565  0.00138428 -0.00221943  0.00004184 -0.00318667 -0.00280090 -0.00044832  0.00203656

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.20149139  0.00609926 -0.01074769 -0.12105155  0.00540165  0.00142406  0.71956672 -0.02522433

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00567166  0.20161816  0.00809774 -0.00724970 -0.07197466 -0.00065368 -0.01242876  0.08470124

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.02452266  0.07628400  0.00163813  0.00000121  0.00000411 -0.00000054  0.00000311  0.00000172

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.65384705  0.05049774  0.03585513 -0.00002787  0.00000704  0.00000062 -0.00007178  0.00000385

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.04921595 -0.65015761 -0.02225210 -0.00000403 -0.00003559 -0.00000010 -0.00000690 -0.00000876

   1    1  |0 0>           0.00000000  0.00000003  0.00000000 -0.00000002 -0.00000011 -0.00000011 -0.00000001  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000019 -0.00000001  0.00000007  0.00000269  0.00000001 -0.00000005  0.00000053
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000002 -0.00000000  0.00000000 -0.00000015  0.00000004 -0.00000208  0.00000043  0.00001008
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000012  0.00000000  0.00000000 -0.00000204  0.00000021  0.00000001 -0.00000528  0.00000034
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000001  0.00000000 -0.00000001  0.00000000  0.00000018  0.00000006  0.00000002  0.00000010
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39

   1    1  |1 1>+          0.00000068  0.00000001  0.00031594 -0.00478994 -0.00029995 -0.00009095 -0.00017885
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000016  0.00000005  0.00130401  0.00036749 -0.00461066  0.00032914 -0.00003064
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000001  0.00000060 -0.00000156 -0.00011046  0.00027828  0.00542463 -0.00115952
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00092521 -0.00011490 -0.14547692 -0.00713530 -0.04196005  0.00184834 -0.00043673
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.01440732  0.00030956 -0.30574662 -0.01645702 -0.08797238  0.00395255 -0.00037279
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.25007418  0.00426514  0.01546350 -0.17503954 -0.01296457 -0.00796975 -0.00785909
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.04932345 -0.00243424  0.04858245  0.01662883 -0.16890604 -0.00010791  0.00415828
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00946027  0.57721092 -0.00035900  0.01559981 -0.00308598 -0.07333996 -0.34487097
                           0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00007271 -0.00000691 -0.03829918  0.63283320  0.02440579 -0.05579919  0.03812852
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00001871 -0.00000738 -0.17282463 -0.03878436  0.60773635 -0.07889089  0.01199187
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000982  0.00005961 -0.01251417  0.04423153  0.06969098  0.71234561 -0.14999525
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000001 -0.00464900 -0.00022761 -0.00122545 -0.00000055 -0.00007580

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000076 -0.00010108 -0.00032039  0.00029081  0.00370997  0.00411102

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000014 -0.00000005 -0.00119631 -0.00042846  0.00463063 -0.00022204 -0.00030985

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.06076071  0.00307927  0.01414029 -0.19875401 -0.01569210 -0.00791918 -0.00689925

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.63145722  0.00874321 -0.01859602  0.28861867  0.02321191  0.01289284  0.00873394

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.01630405 -0.00051859  0.17001012  0.00561761  0.04714100 -0.00221968  0.00007228

   7    1  |1 0>           0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00598629 -0.57721254  0.00420301 -0.00343253 -0.00118944  0.26202718 -0.23635905

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.07961148 -0.01022589  0.04646965  0.01678625 -0.16954187  0.00126504  0.00003461

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000043  0.00000316  0.62683611  0.03457638  0.10348040  0.01217950  0.02420171

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000062 -0.00008155  0.02996473  0.04555757 -0.06648151 -0.48855739 -0.54082584

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00001629 -0.00000979 -0.09737024 -0.05140150  0.62266926 -0.05274347 -0.06587812

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000002 -0.00000014  0.00010578  0.00020540 -0.00000965  0.00171804 -0.00528054

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.00000000 -0.00463399  0.00008616 -0.00129450  0.00009935 -0.00007692

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000056  0.00000000 -0.00004007  0.00478152  0.00046012  0.00016196  0.00026871

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.06153463 -0.00119568 -0.09433500 -0.03296355  0.33714875  0.00152405 -0.00330013

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.03109055 -0.00121785 -0.00707749 -0.00285248  0.02695632  0.00338981  0.00079613

   6    1  |1 1>-         -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.01319772  0.57724399  0.00532230 -0.01618771 -0.00083383  0.33528309  0.10852809

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.01468996  0.00050242  0.16983407  0.00701995  0.04757896 -0.00241117  0.00017238

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.72147026 -0.01498144 -0.01107927  0.17550012  0.01391637  0.00529203  0.00495929

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001001  0.00001583 -0.02503388 -0.08728680 -0.00779421 -0.22794519  0.69149111

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000724 -0.00000008  0.61214262 -0.04313820  0.16798387 -0.01742346  0.01835267

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00007979  0.00000289  0.02280452  0.62556080  0.06884430 -0.00124533  0.10316554

   1    1  |0 0>          -0.00000001 -0.00000188 -0.00046193  0.00042654  0.00040023 -0.03707692  0.03323750
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000525 -0.00000000  0.00357030 -0.04942970 -0.00418291 -0.00202828 -0.00152825
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000116 -0.00000005 -0.01429494 -0.00503890  0.04743386  0.00018747 -0.00049605
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000018 -0.00000005  0.04756316  0.00223427  0.01457132 -0.00060902 -0.00022248
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000012  0.00000511  0.00065590 -0.00247567  0.00019100  0.03317774  0.03704907
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000003  0.00000000 -0.00000001  0.00000000  0.00000021  0.00000016
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.74470995     -0.04813095   -10563.52      0.00000000        0.00      0.0000
     2   1   -192.71256291     -0.01598391    -3508.06      0.03214704     7055.46      0.8748
     3   1   -192.71256291     -0.01598391    -3508.06      0.03214704     7055.46      0.8748
     4   1   -192.71256290     -0.01598391    -3508.06      0.03214704     7055.46      0.8748
     5   1   -192.69915710     -0.00257810     -565.83      0.04555285     9997.69      1.2396
     6   1   -192.69915698     -0.00257798     -565.80      0.04555297     9997.72      1.2396
     7   1   -192.69915626     -0.00257727     -565.64      0.04555368     9997.88      1.2396
     8   1   -192.69915625     -0.00257725     -565.64      0.04555370     9997.88      1.2396
     9   1   -192.69915623     -0.00257723     -565.64      0.04555371     9997.88      1.2396
    10   1   -192.65403978      0.04253922     9336.28      0.09067017    19899.80      2.4673
    11   1   -192.65403975      0.04253925     9336.29      0.09067020    19899.81      2.4673
    12   1   -192.65403975      0.04253925     9336.29      0.09067020    19899.81      2.4673
    13   1   -192.65403905      0.04253995     9336.44      0.09067089    19899.96      2.4673
    14   1   -192.65403890      0.04254010     9336.47      0.09067105    19900.00      2.4673
    15   1   -192.61594874      0.08063026    17696.30      0.12876121    28259.82      3.5038
    16   1   -192.54473796      0.15184104    33325.26      0.19997199    43888.78      5.4415
    17   1   -192.54473792      0.15184108    33325.26      0.19997202    43888.79      5.4415
    18   1   -192.54473778      0.15184122    33325.30      0.19997217    43888.82      5.4415
    19   1   -192.52884398      0.16773502    36813.58      0.21586597    47377.10      5.8740
    20   1   -192.52719197      0.16938703    37176.16      0.21751797    47739.68      5.9190
    21   1   -192.52719196      0.16938704    37176.16      0.21751799    47739.68      5.9190
    22   1   -192.52719196      0.16938704    37176.16      0.21751799    47739.68      5.9190
    23   1   -192.52719166      0.16938734    37176.22      0.21751829    47739.75      5.9190
    24   1   -192.52719143      0.16938757    37176.27      0.21751852    47739.80      5.9190
    25   1   -192.51517866      0.18140034    39812.77      0.22953128    50376.29      6.2459
    26   1   -192.51517865      0.18140035    39812.77      0.22953130    50376.30      6.2459
    27   1   -192.51517863      0.18140037    39812.78      0.22953131    50376.30      6.2459
    28   1   -192.49322509      0.20335391    44631.02      0.25148486    55194.55      6.8433
    29   1   -192.49322509      0.20335391    44631.03      0.25148486    55194.55      6.8433
    30   1   -192.49322484      0.20335416    44631.08      0.25148511    55194.60      6.8433
    31   1   -192.49322477      0.20335423    44631.09      0.25148517    55194.62      6.8433
    32   1   -192.49322471      0.20335429    44631.11      0.25148523    55194.63      6.8433
    33   1   -192.49322471      0.20335429    44631.11      0.25148524    55194.63      6.8433
    34   1   -192.49322461      0.20335439    44631.13      0.25148534    55194.65      6.8433
    35   1   -192.49250599      0.20407301    44788.85      0.25220396    55352.37      6.8628
    36   1   -192.49250598      0.20407302    44788.85      0.25220396    55352.37      6.8628
    37   1   -192.49250598      0.20407302    44788.85      0.25220397    55352.37      6.8628
    38   1   -192.49250593      0.20407307    44788.86      0.25220401    55352.38      6.8628
    39   1   -192.49250591      0.20407309    44788.87      0.25220404    55352.39      6.8628

 E0 =   -192.69657900 is the energy of the lowest zeroth-order state
 E1 =   -192.74470995 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.01112675  0.04600876  0.70468184  0.02164173  0.01180119  0.00584818 -0.54735072 -0.01015529
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.03463629  0.00932571 -0.02319323  0.70475963  0.03643804  0.01788849 -0.00943074  0.54633828
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.53771736 -0.00155274 -0.01308770 -0.04584392  0.56687269  0.27679218  0.01206875 -0.03492832
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.01746688  0.00111926  0.00023284  0.00002282 -0.00003169 -0.00016615 -0.00019253
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000001  0.00829759 -0.00070136 -0.00017605  0.00000159  0.00002851 -0.00059537 -0.00046496
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00000002 -0.00116331 -0.01672659 -0.00079718  0.00017668 -0.00034731 -0.03068322 -0.00004407
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000000 -0.00018881  0.00081190 -0.01676569 -0.00019561  0.00039482 -0.00005079  0.03068799
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000012  0.00002045  0.00011215 -0.00011415  0.02692953 -0.05515066  0.00018766  0.00022768
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00276044 -0.00080504 -0.01240420 -0.00006723  0.00060637  0.00029685 -0.00504951 -0.00022119
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00274223 -0.00017518  0.00024378 -0.01242804  0.00060102  0.00029433 -0.00015445  0.00505262
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.02374496 -0.00011382 -0.00141390 -0.00144309 -0.00521018 -0.00254364 -0.00060616  0.00055730
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00889106  0.70503405 -0.04638801  0.00374088 -0.00060511 -0.01033237 -0.00287315 -0.01662327

 13  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.53777060  0.01123056 -0.00287256  0.04519509  0.04373166  0.62938268  0.00017607 -0.03532787

 14  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.03445574 -0.00664696 -0.03286376  0.70442081 -0.00272694 -0.04038427  0.00120277 -0.54617848

 15  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000002 -0.00102830 -0.01591332 -0.00074168  0.00013172 -0.00000112 -0.03481520 -0.00005155

 16  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00055346 -0.01096947 -0.00052694  0.00014174 -0.00002156  0.05054621  0.00009508

 17  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.01675795 -0.00096904 -0.00014398  0.00002011 -0.00000590 -0.00030541  0.00049427

 18  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000012 -0.00000450  0.00006570 -0.00011614  0.06122770 -0.00425364 -0.00004281 -0.00020892

 19  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00009822 -0.00079337  0.01676752  0.00043031 -0.00002697 -0.00002149  0.03068397

 20  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00099722 -0.01240976  0.00087217 -0.00124337 -0.00001575 -0.00024229 -0.00002550 -0.00063276

 21  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.02389520 -0.00037071  0.00009135 -0.00141889  0.00040481  0.00582070  0.00000179 -0.00058177

 22  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00264365 -0.00133034 -0.00049689  0.01235594  0.00004420  0.00064459 -0.00001362  0.00501489

 23  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.53875863  0.01258526  0.01378795  0.00050869  0.52415750 -0.35321143  0.01134116  0.00022243

 24  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00815942 -0.70059477  0.09087092  0.01295054  0.00804985 -0.00528271  0.03230081 -0.00523630

 25  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01167387  0.09114038  0.69983858  0.03252830 -0.01143482  0.00752735  0.54650185  0.00145912

 26  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00001668 -0.00008241  0.00153858  0.00003833  0.00003769  0.00014871 -0.06117972

 27  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00027654  0.00093672 -0.01929710  0.00033838  0.00050064 -0.00000082 -0.00487563

 28  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00001201 -0.00011602  0.00018368  0.03429640  0.05089606  0.00021261  0.00010154

 29  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.01674111  0.00120239  0.00030650 -0.00002072 -0.00002521 -0.00005594  0.00043648

 30  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00121567 -0.01672344 -0.00079831 -0.00022413 -0.00033355  0.03068760  0.00010274

 31  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.02388197 -0.00061123 -0.00139734 -0.00005970  0.00483589 -0.00325891  0.00058473  0.00000429

 32  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00068080  0.01230581 -0.00222514 -0.00025772  0.00013886 -0.00009234  0.00055317 -0.00004795

 33  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00285499  0.00217851  0.01221943  0.00056077  0.00057892 -0.00038833 -0.00502418 -0.00001562

 34  1     1    1  |0 0>        0.00000036  0.00000001  0.00000001 -0.00000001  0.62681473 -0.04155018  0.00025564  0.00028051
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 35  1     2    1  |0 0>       -0.00000001 -0.00000005 -0.00000090 -0.00000004 -0.00035921 -0.00137337  0.62817428 -0.00266352
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 36  1     3    1  |0 0>        0.00000000 -0.00000003 -0.00000000 -0.00000014 -0.00026074 -0.00001148  0.00269555  0.62815784
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 37  1     4    1  |0 0>       -0.00000000  0.00000109 -0.00000008 -0.00000002 -0.00220093  0.00281425 -0.00343541  0.00586598
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     5    1  |0 0>       -0.00000170  0.00000001 -0.00000000  0.00000001 -0.04155946 -0.62680943 -0.00140878  0.00000207
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 39  1     6    1  |0 0>        0.35619163 -0.00000000 -0.00000000  0.00000000 -0.00000030 -0.00000163  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.00299653  0.44604873  0.00837533  0.00181364 -0.00908725  0.00553516  0.00426142 -0.00061823
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00525009  0.00793937 -0.44073151 -0.06314028 -0.02808251  0.01758236  0.01326531  0.00020982
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00043372 -0.00974316  0.02827818  0.00374509 -0.43537191  0.27337317  0.20593974 -0.00000072
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.02636643 -0.00002729 -0.00159189  0.01130782  0.00000330  0.00001733  0.00000000  0.53015926
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.05541770 -0.00016399 -0.00337188  0.02376389 -0.00001741 -0.00000235 -0.00000000 -0.25238760
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00073131 -0.01328956  0.00000823 -0.00026604  0.00009319  0.00014810  0.00000002 -0.01812721
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00010916 -0.00002977  0.01316788  0.00180357 -0.00009923 -0.00015915  0.00000000  0.00671741
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00001143  0.00009372  0.00009064  0.00001730  0.01413452  0.02251084  0.00000022 -0.00027076
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00002901  0.02243817  0.00098261  0.00017024 -0.00254042  0.00158659  0.00199357  0.01041351
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00004817  0.00069940 -0.02222427 -0.00318421 -0.00252179  0.00158078  0.00198042 -0.00337417
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00000366  0.00268937 -0.00245558 -0.00033338  0.02181822 -0.01370098 -0.01714844  0.00082097
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                                0.54723970  0.00058686  0.07237109 -0.44025402 -0.00008978 -0.00860803  0.00340514  0.01551081

 13  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00785310  0.00007713  0.02933363 -0.00274570  0.01906549  0.51378187 -0.20595832  0.00024895

 14  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.01715758 -0.00120626  0.43933856  0.07270334 -0.00118886 -0.03289182  0.01319604 -0.00011688

 15  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00021122 -0.01507800 -0.00002670 -0.00003639  0.00005789  0.00000205  0.00000002 -0.01960964

 16  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00003398  0.02189018  0.00006690 -0.00009215  0.00006052 -0.00000841  0.00000001 -0.01820220

 17  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.03068531 -0.00018431  0.00196847 -0.01314395  0.00001827 -0.00000377  0.00000000 -0.50830255

 18  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000196 -0.00001706 -0.00009832  0.00000521  0.02656243 -0.00098558  0.00000007  0.00033344

 19  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00049503 -0.00001634  0.01314370  0.00196902  0.00018961 -0.00000625  0.00000000 -0.00392761

 20  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00504426  0.00002369  0.00574971 -0.02184596 -0.00002861 -0.00108684  0.00072018 -0.25929416

 21  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00013745  0.00000129  0.00264083 -0.00027417  0.00096182  0.02590863 -0.01725681 -0.00780046

 22  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00065231  0.00006381 -0.02170624 -0.00582000  0.00010584  0.00286450 -0.00190921 -0.02730326

 23  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00903500 -0.00936878 -0.00099212  0.00711210 -0.45531570 -0.24082050 -0.20633855  0.00024321

 24  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.54653227 -0.02806692  0.06306674 -0.44080475 -0.00666645 -0.00375331 -0.00312497 -0.01551762

 25  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.03210386 -0.44524220 -0.00513171  0.02746889  0.00993009  0.00534723  0.00447096  0.00037827

 26  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00065766  0.00007899 -0.02622563 -0.00378445  0.00000856 -0.00002182 -0.00000001  0.00038318

 27  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00012185  0.00000059 -0.00208607 -0.00033120  0.00012222 -0.00023147  0.00000000  0.00952398

 28  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00002543  0.00008094  0.00004296  0.00001283  0.01242749 -0.02349603 -0.00000026  0.00001047

 29  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.03068557 -0.00007625  0.00194375 -0.01314759  0.00000156  0.00000636 -0.00000000  0.50854038

 30  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00005447  0.01329034  0.00006191 -0.00006803 -0.00008209  0.00014717 -0.00000001 -0.01653885

 31  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00020832 -0.00260249 -0.00013545  0.00091507 -0.02290546 -0.01211434 -0.01724735 -0.00962367

 32  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00505556 -0.00254605  0.00317761 -0.02223107 -0.00064120 -0.00035041 -0.00049167  0.26019555

 33  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00053226  0.02231443  0.00040706 -0.00242118 -0.00274093 -0.00145509 -0.00206185  0.01845468

 34  1     1    1  |0 0>        0.00238118  0.00036694 -0.00029889  0.00347799  0.77375335 -0.03115950  0.00000019 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 35  1     2    1  |0 0>        0.00346535  0.77438424 -0.00296432  0.00086168 -0.00031842  0.00133677 -0.00000000 -0.00000002
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 36  1     3    1  |0 0>       -0.00585223  0.00283563  0.76851474  0.09518165 -0.00012623  0.00015097 -0.00000000  0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 37  1     4    1  |0 0>        0.62814375 -0.00121606 -0.09517615  0.76850624 -0.00360490 -0.00283881 -0.00000000 -0.00000051
                                0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     5    1  |0 0>        0.00265490 -0.00132810 -0.00050606  0.00293955  0.03114698  0.77375662 -0.00000037 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     6    1  |0 0>        0.00000001  0.00000000  0.00000000  0.00000000 -0.00000025 -0.00000015  0.93342321 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.01550766 -0.00025051 -0.00033584 -0.00344738 -0.00109059  0.03176041 -0.00085384 -0.00025999
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00023797  0.01549004 -0.00104561 -0.00154303  0.03185563  0.00087271 -0.00222166 -0.00099843
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00033622 -0.00099259 -0.01623315  0.00024321 -0.00209505 -0.00085154 -0.03362982 -0.01501763
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.02145501 -0.00644609 -0.00000008  0.31285441  0.01348674  0.03412564  0.00024765  0.00057723
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00498992  0.00480395 -0.00000004  0.65788235  0.02911213  0.06881890  0.00104919  0.00005380
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.50853456  0.00037555 -0.00000118  0.03310221  0.00598469 -0.36511970 -0.00010776  0.00371871
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00012813  0.50882710 -0.00000035  0.01491954 -0.36627789 -0.00467878  0.00272331 -0.00438989
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00328112  0.00361695  0.00000981  0.00030743 -0.00241386 -0.00019366 -0.29892891  0.66950849
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.25889466  0.01072454 -0.06614857  0.03241745  0.01813042 -0.30235946  0.03860308  0.01608021
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00743230 -0.25921985 -0.06571196  0.01514206 -0.30410702 -0.01230111  0.03741272  0.01675251
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.03095527 -0.02868971  0.56899668  0.00622075 -0.03365035 -0.03791264 -0.31899653 -0.14257146
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00061470  0.00010101 -0.00026841 -0.03170985 -0.00210419 -0.00350143  0.00044998 -0.00037191

 13  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000951  0.00099434  0.01623490 -0.00033244 -0.00209744 -0.00025668 -0.02982481  0.02162494

 14  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001021  0.01549326 -0.00104021  0.00217933 -0.03183240 -0.00031322  0.00196465 -0.00135331

 15  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.48353748 -0.00014521 -0.00000128  0.04489208  0.00707123 -0.41342759  0.00295915  0.00058046

 16  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.33283447  0.00038358  0.00000096 -0.06921342 -0.01064493  0.59977737 -0.00196100  0.00238508

 17  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.02385259  0.00392830  0.00000000 -0.36329919 -0.01882618 -0.04567302 -0.00028904  0.00007857

 18  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00179968  0.00360960  0.00000293 -0.00096726  0.00385654  0.00057045  0.43034258  0.59364086

 19  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00014504 -0.50885421 -0.00000034  0.01945051 -0.36606371 -0.00381223  0.00365970  0.00458108

 20  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.01026706 -0.02628162 -0.02389613  0.30075542  0.04891610  0.03367821 -0.01152412  0.00872638

 21  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00029799 -0.02964420  0.57259550  0.00648567  0.03553648  0.00308604  0.28480325 -0.20653345

 22  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00117503  0.25803032  0.06334914  0.05028080 -0.30074343  0.00036969  0.03206391 -0.02252755

 23  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00033042 -0.00000351  0.01626405  0.00061579 -0.00000703 -0.00055802 -0.00381543 -0.03671167

 24  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00038349  0.00021944  0.00024632 -0.03145808 -0.00140704 -0.00553152 -0.00009181 -0.00057426

 25  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01551749 -0.00000846 -0.00035247  0.00549633  0.00065461 -0.03148580  0.00024398  0.00074627

 26  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                                0.00035787 -0.04670846  0.00000063 -0.03503410  0.73003192  0.00932595 -0.00057552 -0.00079397

 27  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00002628  0.58565414 -0.00000022 -0.00361056  0.05816279  0.00053163  0.00708405 -0.00080590

 28  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00327143 -0.00572707 -0.00000120 -0.00178343 -0.00024204  0.00593141  0.72924008 -0.07586532

 29  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.01654134 -0.00851841  0.00000024 -0.36367258 -0.01818480 -0.04270738 -0.00079413 -0.00014378

 30  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.50860312  0.00041111  0.00000096 -0.04239240 -0.00702282  0.36405510 -0.00650405  0.00106270

 31  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.03035366  0.00014247  0.57228489 -0.01664336 -0.00078990  0.03320642  0.03619566  0.34979042

 32  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01946070 -0.00367687  0.01631402  0.29873705  0.01317247  0.06806659  0.00128556  0.01016867

 33  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.25854708 -0.00031302  0.06841362  0.06635078  0.00689901 -0.29728509  0.00590039  0.04134966

 34  1     1    1  |0 0>       -0.00000001 -0.00000000 -0.00000047 -0.00014105 -0.00008684 -0.00012942 -0.03341750 -0.04579102
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 35  1     2    1  |0 0>        0.00000061  0.00000000 -0.00000010  0.00616158  0.00064054 -0.05634758  0.00038356 -0.00014085
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 36  1     3    1  |0 0>        0.00000001 -0.00000015  0.00000003 -0.00154438  0.05666569  0.00047489 -0.00007522 -0.00004914
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 37  1     4    1  |0 0>       -0.00000003 -0.00000000  0.00000002 -0.05633042 -0.00148338 -0.00617821 -0.00013401  0.00029158
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     5    1  |0 0>       -0.00000000  0.00000001 -0.00000043 -0.00032194  0.00002001  0.00036025  0.04579021 -0.03341624
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     6    1  |0 0>       -0.00000000 -0.00000000  0.04299569  0.00000002 -0.00000002 -0.00000008  0.00000037 -0.00000068
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00070762  0.01960460  0.00046025  0.00000000  0.00000025 -0.00000000 -0.00000001  0.00000010
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00100365 -0.00044893  0.01955536  0.00000002  0.00000000  0.00000014 -0.00000004 -0.00000125
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00005000 -0.00037674 -0.00126915  0.00000000  0.00000001  0.00000001  0.00000000  0.00000009
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.21009614  0.00799062 -0.01017721  0.73233522 -0.04359531 -0.00019030 -0.11210510  0.00144646
                                0.00000000  0.00000000  0.00000000 -0.00000012  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.09998838 -0.00175999  0.00561088 -0.04718822 -0.00591886  0.00097453  0.61625258 -0.01910174
                               -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00630222  0.20159262  0.00810630 -0.03995265 -0.68433616  0.00044340 -0.00211890 -0.02858182
                                0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.01026213 -0.00777628  0.20144780  0.00171935  0.00016964 -0.59923927  0.01601151  0.41412878
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000001

  8  1     8    1  |1 1>+      -0.00005906 -0.00135499  0.00138708 -0.00008220  0.00169637 -0.00013479 -0.00013255  0.00775802
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.02437276  0.65223945 -0.00113676 -0.00000133 -0.00003869  0.00000145  0.00000084 -0.00001436
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.03313350 -0.00627966  0.65188345 -0.00000171 -0.00000117 -0.00003391  0.00000478  0.00013885
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00099310  0.07510019  0.07515196 -0.00000013 -0.00000261 -0.00000200  0.00000066  0.00001501
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01960252  0.00071456 -0.00058388  0.00000019 -0.00000002 -0.00000001  0.00000063  0.00000000

 13  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00036188 -0.00003697  0.00124378  0.00000000  0.00000002 -0.00000002  0.00000002  0.00000009

 14  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00058973 -0.00076140  0.01956294 -0.00000002  0.00000000 -0.00000038  0.00000003  0.00000114

 15  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00694058  0.19169477  0.00754458  0.04297652  0.71315320 -0.00006944  0.00396994 -0.00725352

 16  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00663566  0.13195601  0.00545540  0.01548150  0.11899982  0.00085960  0.01843990 -0.07495570

 17  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000011 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.20147123 -0.00892773  0.00881589  0.66562465 -0.04214356  0.00420797  0.29687925 -0.00729972

 18  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00018315 -0.00076894  0.00139769 -0.00053931  0.00096931 -0.00593098  0.00023130 -0.00926584

 19  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000001
                               -0.00915700  0.00766576 -0.20151223 -0.00171449  0.00026903  0.25429814  0.02134320  0.67949686

 20  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.65475171  0.02139341  0.04237461 -0.00002969  0.00000287  0.00000395 -0.00007337 -0.00001372

 21  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.02243114 -0.00215917  0.07378905 -0.00000067 -0.00000192  0.00000252 -0.00000315 -0.00001683

 22  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.04423054  0.02758774 -0.65097312 -0.00000524  0.00000035 -0.00002913 -0.00000394  0.00013431

 23  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00030888  0.00041668 -0.00000013 -0.00000000 -0.00000001  0.00000001 -0.00000001 -0.00000001

 24  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01958981  0.00053090  0.00103677  0.00000025 -0.00000005 -0.00000001  0.00000056 -0.00000002

 25  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00056279  0.01960076  0.00071864 -0.00000003 -0.00000034  0.00000000 -0.00000003 -0.00000006

 26  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000001
                               -0.00054448  0.00084989 -0.01850178  0.00261607  0.00000994 -0.23064264  0.02126719  0.52692845

 27  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000
                                0.01252277 -0.00890518  0.23184650 -0.00051711  0.00055770  0.72317605  0.00850939  0.27250475

 28  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00007565  0.00138428 -0.00221943  0.00004184 -0.00318667 -0.00280090 -0.00044832  0.00203656

 29  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.20149139  0.00609926 -0.01074769 -0.12105155  0.00540165  0.00142406  0.71956672 -0.02522433

 30  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00567166  0.20161816  0.00809774 -0.00724970 -0.07197466 -0.00065368 -0.01242876  0.08470124

 31  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.02452266  0.07628400  0.00163813  0.00000121  0.00000411 -0.00000054  0.00000311  0.00000172

 32  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.65384705  0.05049774  0.03585513 -0.00002787  0.00000704  0.00000062 -0.00007178  0.00000385

 33  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.04921595 -0.65015761 -0.02225210 -0.00000403 -0.00003559 -0.00000010 -0.00000690 -0.00000876

 34  1     1    1  |0 0>        0.00000000  0.00000003  0.00000000 -0.00000002 -0.00000011 -0.00000011 -0.00000001  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 35  1     2    1  |0 0>       -0.00000000 -0.00000019 -0.00000001  0.00000007  0.00000269  0.00000001 -0.00000005  0.00000053
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 36  1     3    1  |0 0>       -0.00000002 -0.00000000  0.00000000 -0.00000015  0.00000004 -0.00000208  0.00000043  0.00001008
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 37  1     4    1  |0 0>        0.00000012  0.00000000  0.00000000 -0.00000204  0.00000021  0.00000001 -0.00000528  0.00000034
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     5    1  |0 0>        0.00000001  0.00000000 -0.00000001  0.00000000  0.00000018  0.00000006  0.00000002  0.00000010
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39

  1  1     1    1  |1 1>+       0.00000068  0.00000001  0.00031594 -0.00478994 -0.00029995 -0.00009095 -0.00017885
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000016  0.00000005  0.00130401  0.00036749 -0.00461066  0.00032914 -0.00003064
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000001  0.00000060 -0.00000156 -0.00011046  0.00027828  0.00542463 -0.00115952
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00092521 -0.00011490 -0.14547692 -0.00713530 -0.04196005  0.00184834 -0.00043673
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.01440732  0.00030956 -0.30574662 -0.01645702 -0.08797238  0.00395255 -0.00037279
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.25007418  0.00426514  0.01546350 -0.17503954 -0.01296457 -0.00796975 -0.00785909
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.04932345 -0.00243424  0.04858245  0.01662883 -0.16890604 -0.00010791  0.00415828
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00946027  0.57721092 -0.00035900  0.01559981 -0.00308598 -0.07333996 -0.34487097
                                0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00007271 -0.00000691 -0.03829918  0.63283320  0.02440579 -0.05579919  0.03812852
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00001871 -0.00000738 -0.17282463 -0.03878436  0.60773635 -0.07889089  0.01199187
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000982  0.00005961 -0.01251417  0.04423153  0.06969098  0.71234561 -0.14999525
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000001 -0.00464900 -0.00022761 -0.00122545 -0.00000055 -0.00007580

 13  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000076 -0.00010108 -0.00032039  0.00029081  0.00370997  0.00411102

 14  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000014 -0.00000005 -0.00119631 -0.00042846  0.00463063 -0.00022204 -0.00030985

 15  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.06076071  0.00307927  0.01414029 -0.19875401 -0.01569210 -0.00791918 -0.00689925

 16  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.63145722  0.00874321 -0.01859602  0.28861867  0.02321191  0.01289284  0.00873394

 17  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.01630405 -0.00051859  0.17001012  0.00561761  0.04714100 -0.00221968  0.00007228

 18  1     7    1  |1 0>        0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00598629 -0.57721254  0.00420301 -0.00343253 -0.00118944  0.26202718 -0.23635905

 19  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.07961148 -0.01022589  0.04646965  0.01678625 -0.16954187  0.00126504  0.00003461

 20  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000043  0.00000316  0.62683611  0.03457638  0.10348040  0.01217950  0.02420171

 21  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000062 -0.00008155  0.02996473  0.04555757 -0.06648151 -0.48855739 -0.54082584

 22  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00001629 -0.00000979 -0.09737024 -0.05140150  0.62266926 -0.05274347 -0.06587812

 23  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000002 -0.00000014  0.00010578  0.00020540 -0.00000965  0.00171804 -0.00528054

 24  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.00000000 -0.00463399  0.00008616 -0.00129450  0.00009935 -0.00007692

 25  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000056  0.00000000 -0.00004007  0.00478152  0.00046012  0.00016196  0.00026871

 26  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.06153463 -0.00119568 -0.09433500 -0.03296355  0.33714875  0.00152405 -0.00330013

 27  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.03109055 -0.00121785 -0.00707749 -0.00285248  0.02695632  0.00338981  0.00079613

 28  1     6    1  |1 1>-      -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.01319772  0.57724399  0.00532230 -0.01618771 -0.00083383  0.33528309  0.10852809

 29  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.01468996  0.00050242  0.16983407  0.00701995  0.04757896 -0.00241117  0.00017238

 30  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.72147026 -0.01498144 -0.01107927  0.17550012  0.01391637  0.00529203  0.00495929

 31  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001001  0.00001583 -0.02503388 -0.08728680 -0.00779421 -0.22794519  0.69149111

 32  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000724 -0.00000008  0.61214262 -0.04313820  0.16798387 -0.01742346  0.01835267

 33  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00007979  0.00000289  0.02280452  0.62556080  0.06884430 -0.00124533  0.10316554

 34  1     1    1  |0 0>       -0.00000001 -0.00000188 -0.00046193  0.00042654  0.00040023 -0.03707692  0.03323750
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 35  1     2    1  |0 0>        0.00000525 -0.00000000  0.00357030 -0.04942970 -0.00418291 -0.00202828 -0.00152825
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 36  1     3    1  |0 0>       -0.00000116 -0.00000005 -0.01429494 -0.00503890  0.04743386  0.00018747 -0.00049605
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 37  1     4    1  |0 0>       -0.00000018 -0.00000005  0.04756316  0.00223427  0.01457132 -0.00060902 -0.00022248
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     5    1  |0 0>        0.00000012  0.00000511  0.00065590 -0.00247567  0.00019100  0.03317774  0.03704907
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 39  1     6    1  |0 0>       -0.00000000 -0.00000003  0.00000000 -0.00000001  0.00000000  0.00000021  0.00000016
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.01%    0.21%   49.66%    0.05%    0.01%    0.00%   29.96%    0.01%
  2  1     2    1  |1 1>+         0.12%    0.01%    0.05%   49.67%    0.13%    0.03%    0.01%   29.85%
  3  1     3    1  |1 1>+        28.91%    0.00%    0.02%    0.21%   32.13%    7.66%    0.01%    0.12%
  4  1     4    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.09%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.09%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.07%    0.30%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     1    1  |1 0>          0.01%   49.71%    0.22%    0.00%    0.00%    0.01%    0.00%    0.03%
 13  1     2    1  |1 0>         28.92%    0.01%    0.00%    0.20%    0.19%   39.61%    0.00%    0.12%
 14  1     3    1  |1 0>          0.12%    0.00%    0.11%   49.62%    0.00%    0.16%    0.00%   29.83%
 15  1     4    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.12%    0.00%
 16  1     5    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.26%    0.00%
 17  1     6    1  |1 0>          0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%
 19  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.09%
 20  1     9    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    10    1  |1 0>          0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 23  1     1    1  |1 1>-        29.03%    0.02%    0.02%    0.00%   27.47%   12.48%    0.01%    0.00%
 24  1     2    1  |1 1>-         0.01%   49.08%    0.83%    0.02%    0.01%    0.00%    0.10%    0.00%
 25  1     3    1  |1 1>-         0.01%    0.83%   48.98%    0.11%    0.01%    0.01%   29.87%    0.00%
 26  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.37%
 27  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 28  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.12%    0.26%    0.00%    0.00%
 29  1     7    1  |1 1>-         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     8    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.09%    0.00%
 31  1     9    1  |1 1>-         0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1    10    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    11    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   39.29%    0.17%    0.00%    0.00%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.46%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.46%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.17%   39.29%    0.00%    0.00%
 39  1     6    1  |0 0>         12.69%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.00%   19.90%    0.01%    0.00%    0.01%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.01%   19.42%    0.40%    0.08%    0.03%    0.02%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.01%    0.08%    0.00%   18.95%    7.47%    4.24%    0.00%
  4  1     4    1  |1 1>+         0.07%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   28.11%
  5  1     5    1  |1 1>+         0.31%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    6.37%
  6  1     6    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.05%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.05%    0.02%    0.03%    0.00%
 12  1     1    1  |1 0>         29.95%    0.00%    0.52%   19.38%    0.00%    0.01%    0.00%    0.02%
 13  1     2    1  |1 0>          0.01%    0.00%    0.09%    0.00%    0.04%   26.40%    4.24%    0.00%
 14  1     3    1  |1 0>          0.03%    0.00%   19.30%    0.53%    0.00%    0.11%    0.02%    0.00%
 15  1     4    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
 16  1     5    1  |1 0>          0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 17  1     6    1  |1 0>          0.09%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%   25.84%
 18  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%
 19  1     8    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    6.72%
 21  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.03%    0.01%
 22  1    11    1  |1 0>          0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.07%
 23  1     1    1  |1 1>-         0.01%    0.01%    0.00%    0.01%   20.73%    5.80%    4.26%    0.00%
 24  1     2    1  |1 1>-        29.87%    0.08%    0.40%   19.43%    0.00%    0.00%    0.00%    0.02%
 25  1     3    1  |1 1>-         0.10%   19.82%    0.00%    0.08%    0.01%    0.00%    0.00%    0.00%
 26  1     4    1  |1 1>-         0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 28  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.06%    0.00%    0.00%
 29  1     7    1  |1 1>-         0.09%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%   25.86%
 30  1     8    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 31  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.05%    0.01%    0.03%    0.01%
 32  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    6.77%
 33  1    11    1  |1 1>-         0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   59.87%    0.10%    0.00%    0.00%
 35  1     2    1  |0 0>          0.00%   59.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%   59.06%    0.91%    0.00%    0.00%    0.00%    0.00%
 37  1     4    1  |0 0>         39.46%    0.00%    0.91%   59.06%    0.00%    0.00%    0.00%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.10%   59.87%    0.00%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   87.13%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.02%    0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.11%    0.02%
  4  1     4    1  |1 1>+         0.05%    0.00%    0.00%    9.79%    0.02%    0.12%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%   43.28%    0.08%    0.47%    0.00%    0.00%
  6  1     6    1  |1 1>+        25.86%    0.00%    0.00%    0.11%    0.00%   13.33%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%   25.89%    0.00%    0.02%   13.42%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.94%   44.82%
  9  1     9    1  |1 1>+         6.70%    0.01%    0.44%    0.11%    0.03%    9.14%    0.15%    0.03%
 10  1    10    1  |1 1>+         0.01%    6.72%    0.43%    0.02%    9.25%    0.02%    0.14%    0.03%
 11  1    11    1  |1 1>+         0.10%    0.08%   32.38%    0.00%    0.11%    0.14%   10.18%    2.03%
 12  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%
 13  1     2    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.09%    0.05%
 14  1     3    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%
 15  1     4    1  |1 0>         23.38%    0.00%    0.00%    0.20%    0.01%   17.09%    0.00%    0.00%
 16  1     5    1  |1 0>         11.08%    0.00%    0.00%    0.48%    0.01%   35.97%    0.00%    0.00%
 17  1     6    1  |1 0>          0.06%    0.00%    0.00%   13.20%    0.04%    0.21%    0.00%    0.00%
 18  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   18.52%   35.24%
 19  1     8    1  |1 0>          0.00%   25.89%    0.00%    0.04%   13.40%    0.00%    0.00%    0.00%
 20  1     9    1  |1 0>          0.01%    0.07%    0.06%    9.05%    0.24%    0.11%    0.01%    0.01%
 21  1    10    1  |1 0>          0.00%    0.09%   32.79%    0.00%    0.13%    0.00%    8.11%    4.27%
 22  1    11    1  |1 0>          0.00%    6.66%    0.40%    0.25%    9.04%    0.00%    0.10%    0.05%
 23  1     1    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.13%
 24  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%
 25  1     3    1  |1 1>-         0.02%    0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%
 26  1     4    1  |1 1>-         0.00%    0.22%    0.00%    0.12%   53.29%    0.01%    0.00%    0.00%
 27  1     5    1  |1 1>-         0.00%   34.30%    0.00%    0.00%    0.34%    0.00%    0.01%    0.00%
 28  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   53.18%    0.58%
 29  1     7    1  |1 1>-         0.03%    0.01%    0.00%   13.23%    0.03%    0.18%    0.00%    0.00%
 30  1     8    1  |1 1>-        25.87%    0.00%    0.00%    0.18%    0.00%   13.25%    0.00%    0.00%
 31  1     9    1  |1 1>-         0.09%    0.00%   32.75%    0.03%    0.00%    0.11%    0.13%   12.24%
 32  1    10    1  |1 1>-         0.04%    0.00%    0.03%    8.92%    0.02%    0.46%    0.00%    0.01%
 33  1    11    1  |1 1>-         6.68%    0.00%    0.47%    0.44%    0.00%    8.84%    0.00%    0.17%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.11%    0.21%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.32%    0.00%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.32%    0.00%    0.00%    0.00%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.32%    0.00%    0.00%    0.00%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.21%    0.11%
 39  1     6    1  |0 0>          0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         4.41%    0.01%    0.01%   53.63%    0.19%    0.00%    1.26%    0.00%
  5  1     5    1  |1 1>+         1.00%    0.00%    0.00%    0.22%    0.00%    0.00%   37.98%    0.04%
  6  1     6    1  |1 1>+         0.00%    4.06%    0.01%    0.16%   46.83%    0.00%    0.00%    0.08%
  7  1     7    1  |1 1>+         0.01%    0.01%    4.06%    0.00%    0.00%   35.91%    0.03%   17.15%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  9  1     9    1  |1 1>+         0.06%   42.54%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.11%    0.00%   42.50%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.56%    0.56%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     1    1  |1 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     3    1  |1 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     4    1  |1 0>          0.00%    3.67%    0.01%    0.18%   50.86%    0.00%    0.00%    0.01%
 16  1     5    1  |1 0>          0.00%    1.74%    0.00%    0.02%    1.42%    0.00%    0.03%    0.56%
 17  1     6    1  |1 0>          4.06%    0.01%    0.01%   44.31%    0.18%    0.00%    8.81%    0.01%
 18  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 19  1     8    1  |1 0>          0.01%    0.01%    4.06%    0.00%    0.00%    6.47%    0.05%   46.17%
 20  1     9    1  |1 0>         42.87%    0.05%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    10    1  |1 0>          0.05%    0.00%    0.54%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    11    1  |1 0>          0.20%    0.08%   42.38%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     2    1  |1 1>-         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     3    1  |1 1>-         0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     4    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    5.32%    0.05%   27.77%
 27  1     5    1  |1 1>-         0.02%    0.01%    5.38%    0.00%    0.00%   52.30%    0.01%    7.43%
 28  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     7    1  |1 1>-         4.06%    0.00%    0.01%    1.47%    0.00%    0.00%   51.78%    0.06%
 30  1     8    1  |1 1>-         0.00%    4.06%    0.01%    0.01%    0.52%    0.00%    0.02%    0.72%
 31  1     9    1  |1 1>-         0.06%    0.58%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1    10    1  |1 1>-        42.75%    0.26%    0.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    11    1  |1 1>-         0.24%   42.27%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    2.12%    0.01%    0.18%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.02%    0.00%    9.35%    0.03%    0.77%    0.00%    0.00%
  6  1     6    1  |1 1>+         6.25%    0.00%    0.02%    3.06%    0.02%    0.01%    0.01%
  7  1     7    1  |1 1>+         0.24%    0.00%    0.24%    0.03%    2.85%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.01%   33.32%    0.00%    0.02%    0.00%    0.54%   11.89%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.15%   40.05%    0.06%    0.31%    0.15%
 10  1    10    1  |1 1>+         0.00%    0.00%    2.99%    0.15%   36.93%    0.62%    0.01%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.02%    0.20%    0.49%   50.74%    2.25%
 12  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     4    1  |1 0>          0.37%    0.00%    0.02%    3.95%    0.02%    0.01%    0.00%
 16  1     5    1  |1 0>         39.87%    0.01%    0.03%    8.33%    0.05%    0.02%    0.01%
 17  1     6    1  |1 0>          0.03%    0.00%    2.89%    0.00%    0.22%    0.00%    0.00%
 18  1     7    1  |1 0>          0.00%   33.32%    0.00%    0.00%    0.00%    6.87%    5.59%
 19  1     8    1  |1 0>          0.63%    0.01%    0.22%    0.03%    2.87%    0.00%    0.00%
 20  1     9    1  |1 0>          0.00%    0.00%   39.29%    0.12%    1.07%    0.01%    0.06%
 21  1    10    1  |1 0>          0.00%    0.00%    0.09%    0.21%    0.44%   23.87%   29.25%
 22  1    11    1  |1 0>          0.00%    0.00%    0.95%    0.26%   38.77%    0.28%    0.43%
 23  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     4    1  |1 1>-         0.38%    0.00%    0.89%    0.11%   11.37%    0.00%    0.00%
 27  1     5    1  |1 1>-         0.10%    0.00%    0.01%    0.00%    0.07%    0.00%    0.00%
 28  1     6    1  |1 1>-         0.02%   33.32%    0.00%    0.03%    0.00%   11.24%    1.18%
 29  1     7    1  |1 1>-         0.02%    0.00%    2.88%    0.00%    0.23%    0.00%    0.00%
 30  1     8    1  |1 1>-        52.05%    0.02%    0.01%    3.08%    0.02%    0.00%    0.00%
 31  1     9    1  |1 1>-         0.00%    0.00%    0.06%    0.76%    0.01%    5.20%   47.82%
 32  1    10    1  |1 1>-         0.00%    0.00%   37.47%    0.19%    2.82%    0.03%    0.03%
 33  1    11    1  |1 1>-         0.00%    0.00%    0.05%   39.13%    0.47%    0.00%    1.06%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.14%    0.11%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%    0.02%    0.00%    0.22%    0.00%    0.00%
 37  1     4    1  |0 0>          0.00%    0.00%    0.23%    0.00%    0.02%    0.00%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.11%    0.14%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     5042.77       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    101049.66  73912.18   4054.19  23051.74     12.01      4.30     15.01
 REAL TIME  *    102580.72 SEC
 DISK USED  *         5.01 GB (local),       41.16 GB (total)
 SF USED    *        37.69 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -192.492505906542

              CI              CI           MULTI         RHF-SCF
   -192.55813561   -192.44018584   -191.76864256   -191.86439724
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
