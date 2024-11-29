
 Working directory              : /wrk/irikura/molpro.Jq3OKl4cZH/
 Global scratch directory       : /wrk/irikura/molpro.Jq3OKl4cZH/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Jq3OKl4cZH/

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
 
 NTRIP=3
 
 {multi
     closed,6,3
     occ,7,9
     wf,charge=0,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 25-Nov-24          TIME: 13:20:07  
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

     Node minimum: 59.245 MB, node maximum: 81.265 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   39102068.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   3  SEGMENT LENGTH:   15998580      RECORD LENGTH: 524288

 Memory used in sort:      16.56 MW

 SORT1 READ   511790813. AND WROTE     6708865. INTEGRALS IN     21 RECORDS. CPU TIME:     1.89 SEC, REAL TIME:     1.97 SEC
 SORT2 READ    53582235. AND WROTE   312900871. INTEGRALS IN   2480 RECORDS. CPU TIME:     0.73 SEC, REAL TIME:     0.80 SEC

 Node minimum:    39095432.  Node maximum:    39129437. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.20      9.04
 REAL TIME  *        10.38 SEC
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
   1     -140.99982923    -140.99982923     0.00D+00     0.17D+00     0     0       0.20      0.37    start
   2     -179.13739499     -38.13756575     0.12D+00     0.20D+00     1     0       0.20      0.57    diag2
   3     -187.65834626      -8.52095128     0.12D+00     0.69D-01     2     0       0.20      0.77    diag2
   4     -191.43584490      -3.77749863     0.56D-01     0.52D-01     3     0       0.21      0.98    diag2
   5     -191.76234553      -0.32650063     0.11D-01     0.20D-01     4     0       0.21      1.19    diag2
   6     -191.85259413      -0.09024861     0.35D-02     0.59D-02     5     0       0.20      1.39    diag2
   7     -191.86165815      -0.00906402     0.11D-02     0.18D-02     6     0       0.20      1.59    diag2
   8     -191.86377805      -0.00211991     0.51D-03     0.76D-03     7     0       0.21      1.80    fixocc
   9     -191.86430763      -0.00052957     0.17D-03     0.68D-03     8     0       0.21      2.01    diag2
  10     -191.86437456      -0.00006693     0.11D-03     0.20D-03     9     0       0.21      2.22    diag2/orth
  11     -191.86439091      -0.00001635     0.22D-04     0.95D-04     9     0       0.21      2.43    diag2
  12     -191.86439560      -0.00000468     0.11D-04     0.40D-04     9     0       0.20      2.63    diag2
  13     -191.86439698      -0.00000139     0.46D-05     0.33D-04     9     0       0.20      2.83    diag2
  14     -191.86439720      -0.00000022     0.18D-05     0.15D-04     9     0       0.20      3.03    diag2
  15     -191.86439723      -0.00000003     0.71D-06     0.54D-05     9     0       0.21      3.24    diag2
  16     -191.86439724      -0.00000001     0.30D-06     0.32D-05     9     0       0.20      3.44    diag2
  17     -191.86439724      -0.00000000     0.10D-06     0.35D-06     0     0       0.21      3.65    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864397240742
  RHF One-electron energy            -340.681776933356
  RHF Two-electron energy             148.817379692614
  RHF Kinetic energy                   62.712671780559
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059419919344

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94945     1  1  s    1.00000
    2.1     2.00000    -0.84962     1  1  d0  -0.51052    1  1  d2+  0.85914
    3.1     2.00000    -0.84962     1  1  d1+  0.99934
    4.1     2.00000    -0.84962     1  1  d2-  0.99927
    5.1     2.00000    -0.84962     1  1  d0   0.85914    1  1  d2+  0.51038
    6.1     2.00000    -0.84962     1  1  d1-  0.99934
    7.1     2.00000    -0.35280     1  1  s   -0.38141    1  5  s    0.52245    1  6  s    0.42682    1 11  s   -0.25488
    1.2     2.00000    -3.63192     1  1  px   1.00017
    2.2     2.00000    -3.63191     1  1  pz   1.00025
    3.2     2.00000    -3.63191     1  1  py   1.00017
    4.2     1.00000    -0.05163     1  5  py   0.35609    1  6  py   0.37649    1  7  py   0.25408
    5.2     1.00000    -0.05163     1  5  pz   0.35611    1  6  pz   0.37651    1  7  pz   0.25410
    6.2     1.00000    -0.05163     1  5  px   0.35608    1  6  px   0.37646    1  7  px   0.25412


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
 CPU TIMES  *        12.86      3.66      9.04
 REAL TIME  *        14.25 SEC
 DISK USED  *        36.95 MB (local),        1.38 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     249 (  122  127)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.378D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.161D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.241D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.382D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.178D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 4 3 2 6 1 1 5 4   3 2 6 1 5 4 3 2 6 7  11 8141015 91312 1 2   6 4 3 510 91315 714
                                        81211 2 6 4 3 5 110   91315 7 8141211 5 4   3 6 2 110 91315 7 8  14121116282220211824
                                       261917232527 5 4 3 6   210 91315 714 81211   1 5 4 3 6 210 91315   714 81211 1 5 4 3 6
                                        2 1 5 4 3 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.137D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.196D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.124D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.118D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.213D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.128D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.115D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.193D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 2 3 1 2   3 1 710 9 4 8 5 6 3   2 1 6 5 4 810 9 7 7  10 9 8 4 6 5 3 2 120
                                       13181511171614211912   710 9 8 4 6 5 1 3 2  20131815111617142119  12 710 9 8 4 6 52013
                                       181511171621141912 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 511131815  20171621141912 1 3 2
                                        710 9 8 4 6 5 1 3 2   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  2021  ( 24 closed/active, 1113 closed/virtual, 0 active/active, 884 active/virtual )
 Total number of variables:    2426
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   20   15    0   -191.82080677    -191.84203954   -0.02123277    0.10750895 0.00080997 0.00000000  0.17E+01      2.20
   2    8    7    0   -191.84358946    -191.84480833   -0.00121887    0.06971806 0.00025254 0.00000000  0.31E+00      4.14
   3    9    8    0   -191.84481467    -191.84481481   -0.00000015    0.00029229 0.00000024 0.00000000  0.53E-02      6.07

 CONVERGENCE REACHED!  Final gradient:    0.00000005 ( 0.48E-07)
                       Final energy:   -191.84481481
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -191.844814814470
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.67225831
 One electron energy                          -335.78352849
 Two electron energy                           143.93871367
 Virial ratio                                    4.06108029
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -191.844814814413
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.67225831
 One electron energy                          -335.78352849
 Two electron energy                           143.93871367
 Virial ratio                                    4.06108029
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -191.844814814299
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.67225831
 One electron energy                          -335.78352849
 Two electron energy                           143.93871367
 Virial ratio                                    4.06108029
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     1.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>    -0.000000000000
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.000000002210
 !MCSCF expec                      <2.1|LYLY|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LYLY|3.1>     0.999999997705
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.999999997790
 !MCSCF expec                      <2.1|LZLZ|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LZLZ|3.1>     0.000000002295
 
 !MCSCF expec                      <1.1|L**2|1.1>     2.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     2.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 6 3   5 4 2 1 5 3 2 6 413  101415 81211 7 9 1 6   4 5 3 2 7 9 8121114
                                       151310 4 2 6 5 3 1 7   9 8121115141310 2 4   6 3 5 1 7 911 81215  14131028251721272326
                                       241920182216 4 2 6 3   5 7 911 81215141013   1 4 6 3 5 210131415  1112 8 7 9 1 3 5 6 4
                                        2 1 5 3 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 2 1 3 2   1 3 6 7 9 4 5 810 2   1 3 6 4 5 810 9 7 3   1 2 6 4 5 810 9 718
                                       20151714161912211311   9 7 810 5 6 4 3 1 2  11161421131912151718  20 6 810 4 5 9 71119
                                       211312161415172018 6   4 810 5 7 9 3 1 210   8 5 4 6 7 918201517  12141621131911 3 2 1
                                        9 7 510 8 4 6 2 1 3   2 1 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.17377     1  1  s    0.99636
    2.1     2.00000    -1.07481     1  1  d2-  0.99995
    3.1     2.00000    -1.07481     1  1  d2+  0.99995
    4.1     2.00000    -1.07481     1  1  d1-  0.99995
    5.1     2.00000    -1.07481     1  1  d0   0.99995
    6.1     2.00000    -1.07481     1  1  d1+  0.99995
    7.1     1.97409    -0.56123     1  1  s   -0.40295    1  5  s    0.58623    1  6  s    0.44037    1 11  s   -0.26083
    1.2     2.00000    -3.85677     1  1  pz   0.99990
    2.2     2.00000    -3.85677     1  1  px   0.99990
    3.2     2.00000    -3.85677     1  1  py   0.99990
    4.2     0.67234    -0.06227     1  5  pz   0.43693    1  6  pz   0.41980
    5.2     0.67234    -0.06227     1  5  px   0.43693    1  6  px   0.41980
    6.2     0.67234    -0.06227     1  5  py   0.43693    1  6  py   0.41980
    7.2     0.00297     0.44700     1  1  py   0.42245    1  4  py  -1.11811    1  5  py  -0.32227    1  6  py   0.79597
                                    1  7  py   0.28281
    8.2     0.00297     0.44700     1  1  px   0.42245    1  4  px  -1.11811    1  5  px  -0.32227    1  6  px   0.79597
                                    1  7  px   0.28281
    9.2     0.00297     0.44700     1  1  pz   0.42245    1  4  pz  -1.11811    1  5  pz  -0.32227    1  6  pz   0.79597
                                    1  7  pz   0.28281
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 2 a0a000       0.00000032      0.99303519      0.00000000
 2 aa0000       0.99303518     -0.00000032     -0.00004668
 2 0aa000       0.00004668     -0.00000000      0.99303518
 0 a2a000      -0.00000003     -0.08499683     -0.00000000
 0 2aa000      -0.00000400      0.00000000     -0.08499683
 0 aa2000      -0.08499683      0.00000003      0.00000400
 
 Energy:     -191.84481481   -191.84481481   -191.84481481
 


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
 CPU TIMES  *        19.28      6.41      3.66      9.04
 REAL TIME  *        21.93 SEC
 DISK USED  *        89.89 MB (local),        1.79 GB (total)
 SF USED    *       148.87 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8448148   2.0
    -191.8448148   2.0
    -191.8448148   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

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


 Number of p-space configurations:  12

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.84481481
     2      -191.84481481
     3      -191.84481481

 Number of blocks in overlap matrix:   380   Smallest eigenvalue:  0.67D-05
 Number of N-2 electron functions:     683
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:      11024685
 Number of doubly external configurations:      10587386
 Total number of contracted configurations:     21650477
 Total number of uncontracted configurations:  731368774

 Diagonal Coupling coefficients finished.               Storage:  13037350 words, CPU-Time:      7.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3137074 words, CPU-time:      1.47 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.84481481     0.00000000    -0.94296554  0.58D-01  0.99D-01    13.50
    1     2     2     1.00000000     0.00000000  -191.84481481     0.00000000    -0.94287310  0.57D-01  0.99D-01    13.50
    1     3     3     1.00000000     0.00000000  -191.84481481     0.00000000    -0.94277874  0.57D-01  0.99D-01    13.50
    2     1     1     1.09910959    -0.75840930  -192.60322412    -0.75840930    -0.02557677  0.37D-02  0.15D-02   389.46
    2     2     2     1.09917143    -0.75834797  -192.60316279    -0.75834797    -0.02564528  0.38D-02  0.15D-02   389.46
    2     3     3     1.09924152    -0.75828046  -192.60309528    -0.75828046    -0.02571928  0.38D-02  0.15D-02   389.46
    3     1     1     1.08721649    -0.78191805  -192.62673286    -0.02350875    -0.00035085  0.43D-04  0.33D-04   765.30
    3     2     2     1.08721532    -0.78191635  -192.62673117    -0.02356838    -0.00035249  0.43D-04  0.33D-04   765.30
    3     3     3     1.08721467    -0.78191467  -192.62672949    -0.02363421    -0.00035408  0.43D-04  0.33D-04   765.30
    4     1     1     1.08692483    -0.78227174  -192.62708655    -0.00035369    -0.00001431  0.25D-05  0.20D-05  1139.11
    4     2     2     1.08692438    -0.78227168  -192.62708649    -0.00035532    -0.00001436  0.25D-05  0.20D-05  1139.11
    4     3     3     1.08692402    -0.78227164  -192.62708645    -0.00035697    -0.00001439  0.25D-05  0.20D-05  1139.11
    5     1     1     1.08702450    -0.78228932  -192.62710414    -0.00001759    -0.00000115  0.62D-07  0.23D-06  1513.71
    5     2     2     1.08702427    -0.78228932  -192.62710413    -0.00001764    -0.00000116  0.62D-07  0.23D-06  1513.71
    5     3     3     1.08702407    -0.78228931  -192.62710413    -0.00001767    -0.00000116  0.62D-07  0.23D-06  1513.71
    6     1     1     1.08703357    -0.78229084  -192.62710565    -0.00000152    -0.00000011  0.13D-07  0.17D-07  1887.43
    6     2     2     1.08703360    -0.78229084  -192.62710565    -0.00000152    -0.00000011  0.13D-07  0.17D-07  1887.43
    6     3     3     1.08703364    -0.78229084  -192.62710565    -0.00000152    -0.00000011  0.13D-07  0.17D-07  1887.43
    7     1     1     1.08704414    -0.78229097  -192.62710579    -0.00000013    -0.00000001  0.96D-09  0.16D-08  2262.65
    7     2     2     1.08704412    -0.78229097  -192.62710579    -0.00000014    -0.00000001  0.96D-09  0.15D-08  2262.65
    7     3     3     1.08704414    -0.78229097  -192.62710579    -0.00000014    -0.00000001  0.96D-09  0.16D-08  2262.65


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.4%  58.1%
 P   0.2%  24.0%   8.9%

 Initialization:   0.4%
 Other:            7.4%

 Total CPU:     2262.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//000          -0.4036638   0.8620492   0.0418472
 2222222222/0/000          -0.3876611  -0.2223752   0.8414824
 2222222222//0000           0.7711024   0.3394774   0.4449502
 22222202222//000           0.0303587  -0.0648329  -0.0031472
 2222220222/2/000           0.0291551   0.0167244  -0.0632860
 2222220222//2000          -0.0579929  -0.0255313  -0.0334637

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.775045   -0.389643   -0.405728
 2           0.341213   -0.223512    0.866457
 3           0.447225    0.845785    0.042061

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957670   -0.000000   -0.000000
 2          -0.000000    0.957670   -0.000000
 3          -0.000000   -0.000000    0.957670


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.77504481 (fixed)   0.95791761 (relaxed)   0.95766961 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00304728   -0.00795788   -0.88893326
 Singles      0.02221696   -0.10077926   -0.10836227
 Pairs        0.06509243    0.28535874    0.21500456
 Total        1.09035667    0.17662160   -0.78229097
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.84481481
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17330394
 One electron energy                 -335.36025198
 Two electron energy                  142.73314619
 Virial quotient                       -3.04918524
 Correlation energy                    -0.78229097
 !MRCI STATE 1.1 Energy              -192.627105786824

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69779099 (Davidson, fixed reference)
 Cluster corrected energies          -192.69734939 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69779099 (Davidson, rotated reference)

 Cluster corrected energies          -192.69562089 (Pople, fixed reference)
 Cluster corrected energies          -192.69516049 (Pople, relaxed reference)
 Cluster corrected energies          -192.69562089 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.86645663 (fixed)   0.95791762 (relaxed)   0.95766962 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00304728   -0.00795788   -0.06832093
 Singles      0.02221693   -0.10077925   -0.10836225
 Pairs        0.06509245   -0.60940140   -0.60560780
 Total        1.09035665   -0.71813853   -0.78229097
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.84481481
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17330547
 One electron energy                 -335.36025377
 Two electron energy                  142.73314798
 Virial quotient                       -3.04918516
 Correlation energy                    -0.78229097
 !MRCI STATE 2.1 Energy              -192.627105786810

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69779098 (Davidson, fixed reference)
 Cluster corrected energies          -192.69734937 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69779098 (Davidson, rotated reference)

 Cluster corrected energies          -192.69562087 (Pople, fixed reference)
 Cluster corrected energies          -192.69516048 (Pople, relaxed reference)
 Cluster corrected energies          -192.69562087 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.84578464 (fixed)   0.95791762 (relaxed)   0.95766962 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00304728   -0.00795788   -0.60009070
 Singles      0.02221695   -0.10077926   -0.10836226
 Pairs        0.06509244   -0.02958268   -0.07383800
 Total        1.09035666   -0.13831981   -0.78229097
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.84481481
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17330439
 One electron energy                 -335.36025249
 Two electron energy                  142.73314670
 Virial quotient                       -3.04918522
 Correlation energy                    -0.78229097
 !MRCI STATE 3.1 Energy              -192.627105786756

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69779099 (Davidson, fixed reference)
 Cluster corrected energies          -192.69734938 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69779099 (Davidson, rotated reference)

 Cluster corrected energies          -192.69562088 (Pople, fixed reference)
 Cluster corrected energies          -192.69516049 (Pople, relaxed reference)
 Cluster corrected energies          -192.69562088 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      502.34       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2311.94   2292.65      6.41      3.66      9.04
 REAL TIME  *      2346.73 SEC
 DISK USED  *       589.41 MB (local),        5.69 GB (total)
 SF USED    *         5.20 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.69779099  AU                              
 SETTING HLSDIAG(2)     =      -192.69779098  AU                              
 SETTING HLSDIAG(3)     =      -192.69779099  AU                              


         HLSDIAG
    -192.6977910
    -192.6977910
    -192.6977910
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -192.627106   -192.627106   -192.627106
 Replaced energies:   -192.697791   -192.697791   -192.697791



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.69779099

 Wigner-Eckart theorem used for  8 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00    1067.60    -814.53       0.00       0.00       0.00
                            0.00     142.00   -2925.12       0.00   -2019.03    -533.56       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00   -1067.60       0.00    1850.16       0.00       0.00       0.00
                         -142.00      -0.00   -1369.72    2019.03      -0.00     930.14       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00     814.53   -1850.16       0.00       0.00       0.00       0.00
                         2925.12    1369.72      -0.00     533.56    -930.14      -0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00   -1067.60     814.53       0.00       0.00       0.00      -0.00    1067.60    -814.53
                           -0.00   -2019.03    -533.56       0.00       0.00       0.00       0.00   -2019.03    -533.56

    5   2.1  1.0  0.0    1067.60       0.00   -1850.16       0.00       0.00       0.00   -1067.60       0.00    1850.16
                         2019.03       0.00     930.14      -0.00       0.00       0.00    2019.03      -0.00     930.14

    6   3.1  1.0  0.0    -814.53    1850.16       0.00       0.00       0.00       0.00     814.53   -1850.16       0.00
                          533.56    -930.14       0.00      -0.00      -0.00       0.00     533.56    -930.14      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00   -1067.60     814.53       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -2019.03    -533.56      -0.00    -142.00    2925.12

    8   2.1  1.0 -1.0       0.00       0.00       0.00    1067.60       0.00   -1850.16       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    2019.03       0.00     930.14     142.00       0.00    1369.72

    9   3.1  1.0 -1.0       0.00       0.00       0.00    -814.53    1850.16       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     533.56    -930.14       0.00   -2925.12   -1369.72       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  9)

    The diagonal matrixelements are shifted by   -192.69779099 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -2855.336    -754.568       0.000     141.997

    2    1  |1 1>+              0.000       0.003       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    2855.336       0.000    1315.420    -141.997      -0.000

    3    1  |1 1>+              0.000       0.000       0.001      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     754.568   -1315.420       0.000    2925.123    1369.720

    1    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000   -1509.814
                                0.000   -2855.336    -754.568       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.003       0.000    1509.814       0.000
                             2855.336       0.000    1315.420      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.001   -1151.922    2616.521
                              754.568   -1315.420       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000    1509.814   -1151.922       0.000       0.000
                                0.000     141.997   -2925.123       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000   -1509.814       0.000    2616.521       0.000       0.003
                             -141.997      -0.000   -1369.720       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000    1151.922   -2616.521       0.000       0.000       0.000
                             2925.123    1369.720      -0.000       0.000       0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.        9

    1    1  |1 1>+              0.000
                            -2925.123

    2    1  |1 1>+              0.000
                            -1369.720

    3    1  |1 1>+              0.000
                               -0.000

    1    1  |1 0>            1151.922
                               -0.000

    2    1  |1 0>           -2616.521
                                0.000

    3    1  |1 0>               0.000
                                0.000

    1    1  |1 1>-              0.000
                                0.000

    2    1  |1 1>-              0.000
                                0.000

    3    1  |1 1>-              0.001
                                0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.72725275    -0.02946176    -6466.11      0.00000000        0.00      0.0000
    2  -192.71252187    -0.01473088    -3233.05      0.01473088     3233.05      0.4008
    3  -192.71252187    -0.01473087    -3233.05      0.01473088     3233.05      0.4008
    4  -192.71252186    -0.01473087    -3233.05      0.01473088     3233.06      0.4008
    5  -192.68306011     0.01473088     3233.06      0.04419264     9699.16      1.2025
    6  -192.68306011     0.01473088     3233.06      0.04419264     9699.16      1.2025
    7  -192.68306010     0.01473089     3233.06      0.04419265     9699.16      1.2025
    8  -192.68306010     0.01473089     3233.06      0.04419265     9699.17      1.2025
    9  -192.68306010     0.01473089     3233.06      0.04419265     9699.17      1.2025

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.46725131 -0.31764070 -0.26755689  0.00566905  0.71133603 -0.14016724 -0.12874570  0.05204806
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.20570705  0.02848734  0.51381863  0.41437371  0.03343547 -0.01634704 -0.65249401 -0.23551813
                          -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.26961860  0.52873928  0.07165715 -0.32597348 -0.10886027 -0.66523622 -0.02636947 -0.19065656
                           0.00000000 -0.00000000  0.00000000  0.00000001  0.00000001  0.00000003 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                          -0.24460104  0.00836930  0.63288752  0.09817881  0.22136454  0.10136488  0.67733716 -0.10571072

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.52236061 -0.01501491  0.30028627  0.01765296  0.14451403  0.00904905 -0.16275388  0.06110939

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000000
                           0.02535739  0.39003780 -0.08095890  0.58339677  0.09690779 -0.21549582  0.10016877  0.65801758

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000003 -0.00000000 -0.00000000
                          -0.23490416  0.62310901 -0.12681183 -0.11350803  0.13291966  0.68216384 -0.11649433 -0.04375729

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.13474876 -0.10169477  0.37968140 -0.56414908 -0.01007016  0.06625297 -0.21841876  0.66038980

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.50989819  0.26018451  0.04191622 -0.20137732  0.61966591 -0.10495028 -0.01987064 -0.13980934

 State Sym Spin     / Nr.      9

   1    1  |1 1>+          0.25343936
                           0.00000000

   2    1  |1 1>+         -0.19635565
                           0.00000000

   3    1  |1 1>+          0.21192468
                          -0.00000000

   1    1  |1 0>           0.00000000
                           0.02602142

   2    1  |1 0>           0.00000000
                           0.76501052

   3    1  |1 0>           0.00000000
                          -0.03835222

   1    1  |1 1>-         -0.00000000
                           0.17055530

   2    1  |1 1>-         -0.00000000
                          -0.14410583

   3    1  |1 1>-         -0.00000000
                          -0.46374149


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.72725275     -0.02946176    -6466.11      0.00000000        0.00      0.0000
     2   1   -192.71252187     -0.01473088    -3233.05      0.01473088     3233.05      0.4008
     3   1   -192.71252187     -0.01473087    -3233.05      0.01473088     3233.05      0.4008
     4   1   -192.71252186     -0.01473087    -3233.05      0.01473088     3233.06      0.4008
     5   1   -192.68306011      0.01473088     3233.06      0.04419264     9699.16      1.2025
     6   1   -192.68306011      0.01473088     3233.06      0.04419264     9699.16      1.2025
     7   1   -192.68306010      0.01473089     3233.06      0.04419265     9699.16      1.2025
     8   1   -192.68306010      0.01473089     3233.06      0.04419265     9699.17      1.2025
     9   1   -192.68306010      0.01473089     3233.06      0.04419265     9699.17      1.2025

 E0 =   -192.69779099 is the energy of the lowest zeroth-order state
 E1 =   -192.72725275 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.46725131 -0.31764070 -0.26755689  0.00566905  0.71133603 -0.14016724 -0.12874570  0.05204806
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.20570705  0.02848734  0.51381863  0.41437371  0.03343547 -0.01634704 -0.65249401 -0.23551813
                               -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.26961860  0.52873928  0.07165715 -0.32597348 -0.10886027 -0.66523622 -0.02636947 -0.19065656
                                0.00000000 -0.00000000  0.00000000  0.00000001  0.00000001  0.00000003 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                               -0.24460104  0.00836930  0.63288752  0.09817881  0.22136454  0.10136488  0.67733716 -0.10571072

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.52236061 -0.01501491  0.30028627  0.01765296  0.14451403  0.00904905 -0.16275388  0.06110939

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000000
                                0.02535739  0.39003780 -0.08095890  0.58339677  0.09690779 -0.21549582  0.10016877  0.65801758

  7  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000003 -0.00000000 -0.00000000
                               -0.23490416  0.62310901 -0.12681183 -0.11350803  0.13291966  0.68216384 -0.11649433 -0.04375729

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.13474876 -0.10169477  0.37968140 -0.56414908 -0.01007016  0.06625297 -0.21841876  0.66038980

  9  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.50989819  0.26018451  0.04191622 -0.20137732  0.61966591 -0.10495028 -0.01987064 -0.13980934


   Total
 Nr Sym  State Sym Spin / Nr.        9

  1  1     1    1  |1 1>+       0.25343936
                                0.00000000

  2  1     2    1  |1 1>+      -0.19635565
                                0.00000000

  3  1     3    1  |1 1>+       0.21192468
                               -0.00000000

  4  1     1    1  |1 0>        0.00000000
                                0.02602142

  5  1     2    1  |1 0>        0.00000000
                                0.76501052

  6  1     3    1  |1 0>        0.00000000
                               -0.03835222

  7  1     1    1  |1 1>-      -0.00000000
                                0.17055530

  8  1     2    1  |1 1>-      -0.00000000
                               -0.14410583

  9  1     3    1  |1 1>-      -0.00000000
                               -0.46374149



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        21.83%   10.09%    7.16%    0.00%   50.60%    1.96%    1.66%    0.27%
  2  1     2    1  |1 1>+         4.23%    0.08%   26.40%   17.17%    0.11%    0.03%   42.57%    5.55%
  3  1     3    1  |1 1>+         7.27%   27.96%    0.51%   10.63%    1.19%   44.25%    0.07%    3.63%
  4  1     1    1  |1 0>          5.98%    0.01%   40.05%    0.96%    4.90%    1.03%   45.88%    1.12%
  5  1     2    1  |1 0>         27.29%    0.02%    9.02%    0.03%    2.09%    0.01%    2.65%    0.37%
  6  1     3    1  |1 0>          0.06%   15.21%    0.66%   34.04%    0.94%    4.64%    1.00%   43.30%
  7  1     1    1  |1 1>-         5.52%   38.83%    1.61%    1.29%    1.77%   46.53%    1.36%    0.19%
  8  1     2    1  |1 1>-         1.82%    1.03%   14.42%   31.83%    0.01%    0.44%    4.77%   43.61%
  9  1     3    1  |1 1>-        26.00%    6.77%    0.18%    4.06%   38.40%    1.10%    0.04%    1.95%

   Total
 Nr Sym  State Sym Spin / Nr.      9

  1  1     1    1  |1 1>+         6.42%
  2  1     2    1  |1 1>+         3.86%
  3  1     3    1  |1 1>+         4.49%
  4  1     1    1  |1 0>          0.07%
  5  1     2    1  |1 0>         58.52%
  6  1     3    1  |1 0>          0.15%
  7  1     1    1  |1 1>-         2.91%
  8  1     2    1  |1 1>-         2.08%
  9  1     3    1  |1 1>-        21.51%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      502.34       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3131.70    819.75   2292.65      6.41      3.66      9.04
 REAL TIME  *      3187.38 SEC
 DISK USED  *       589.41 MB (local),        5.69 GB (total)
 SF USED    *         5.20 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -192.683060099068

              CI           MULTI         RHF-SCF
   -192.62710579   -191.84481481   -191.86439724
 **********************************************************************************************************************************
 Molpro calculation terminated
