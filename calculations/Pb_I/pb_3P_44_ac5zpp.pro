
 Working directory              : /wrk/irikura/molpro.FaK0BPNPMf/
 Global scratch directory       : /wrk/irikura/molpro.FaK0BPNPMf/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.FaK0BPNPMf/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    8
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.00 sec
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
     occ,7,6
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
  (32 PROC) 64 bit mpp version                                                           DATE: 25-Nov-24          TIME: 10:52:32  
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

     Node minimum: 52.167 MB, node maximum: 85.197 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   39102068.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   3  SEGMENT LENGTH:   15998580      RECORD LENGTH: 524288

 Memory used in sort:      16.56 MW

 SORT1 READ   511790813. AND WROTE     6708865. INTEGRALS IN     21 RECORDS. CPU TIME:     1.88 SEC, REAL TIME:     1.95 SEC
 SORT2 READ    53582235. AND WROTE   312900871. INTEGRALS IN   2600 RECORDS. CPU TIME:     0.73 SEC, REAL TIME:     0.80 SEC

 Node minimum:    39095432.  Node maximum:    39129437. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.23      9.05
 REAL TIME  *        10.40 SEC
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
   1     -140.99982925    -140.99982925     0.00D+00     0.17D+00     0     0       0.21      0.38    start
   2     -179.13716718     -38.13733793     0.12D+00     0.20D+00     1     0       0.21      0.59    diag2
   3     -187.65809037      -8.52092319     0.12D+00     0.69D-01     2     0       0.20      0.79    diag2
   4     -191.43571424      -3.77762387     0.56D-01     0.52D-01     3     0       0.21      1.00    diag2
   5     -191.76229755      -0.32658331     0.11D-01     0.20D-01     4     0       0.20      1.20    diag2
   6     -191.85258733      -0.09028978     0.35D-02     0.59D-02     5     0       0.20      1.40    diag2
   7     -191.86165638      -0.00906906     0.11D-02     0.19D-02     6     0       0.20      1.60    diag2
   8     -191.86377791      -0.00212153     0.51D-03     0.75D-03     7     0       0.21      1.81    fixocc
   9     -191.86430765      -0.00052974     0.17D-03     0.68D-03     8     0       0.20      2.01    diag2
  10     -191.86437457      -0.00006692     0.11D-03     0.20D-03     9     0       0.21      2.22    diag2/orth
  11     -191.86439092      -0.00001635     0.22D-04     0.95D-04     9     0       0.20      2.42    diag2
  12     -191.86439560      -0.00000468     0.11D-04     0.40D-04     9     0       0.21      2.63    diag2
  13     -191.86439698      -0.00000138     0.46D-05     0.33D-04     9     0       0.20      2.83    diag2
  14     -191.86439720      -0.00000022     0.18D-05     0.15D-04     9     0       0.21      3.04    diag2
  15     -191.86439723      -0.00000003     0.71D-06     0.54D-05     9     0       0.20      3.24    diag2
  16     -191.86439724      -0.00000001     0.30D-06     0.32D-05     9     0       0.21      3.45    diag2
  17     -191.86439724      -0.00000000     0.10D-06     0.35D-06     0     0       0.20      3.65    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864397240744
  RHF One-electron energy            -340.681777126329
  RHF Two-electron energy             148.817379885585
  RHF Kinetic energy                   62.712671772759
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059419919725

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94945     1  1  s    1.00000
    2.1     2.00000    -0.84962     1  1  d0  -0.50933    1  1  d2+  0.85989
    3.1     2.00000    -0.84962     1  1  d1+  0.99942
    4.1     2.00000    -0.84962     1  1  d2-  0.99941
    5.1     2.00000    -0.84962     1  1  d0   0.85990    1  1  d2+  0.50933
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
 CPU TIMES  *        12.89      3.67      9.05
 REAL TIME  *        14.25 SEC
 DISK USED  *        36.95 MB (local),        1.38 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     252 (  122  130)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.374D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.255D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.436D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.373D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.232D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 4 3 2 6 1 1 5 4   3 2 6 1 5 4 3 2 6 7  11 8141015 91312 1 2   6 4 3 510 91315 714
                                        81211 2 6 4 3 5 110   91315 7 8141211 5 4   3 2 6 110 91315 7 8  14121116282220211824
                                       261917232527 5 4 3 6   210 91315 714 81211   1 5 4 3 6 210 91315   714 81211 1 5 4 3 6
                                        2 1 5 4 3 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.166D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.626D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.147D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.141D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.487D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.169D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 2 3 1 2   3 1 710 9 4 8 5 6 3   2 1 6 5 4 810 9 7 7  10 9 8 4 6 5 3 2 120
                                       13181511171614211912   710 9 8 4 6 5 1 3 2  20131815111617142119  12 710 9 8 4 6 52013
                                       181511171621141912 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 520131815  11171621141912 1 3 2
                                        710 9 8 4 6 5 1 3 2   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  1649  ( 15 closed/active, 1122 closed/virtual, 0 active/active, 512 active/virtual )
 Total number of variables:    1667
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10    8    0   -191.81637298    -191.83922093   -0.02284795    0.11427880 0.00051375 0.00000000  0.41E+00      1.19
   2    8    7    0   -191.83457857    -191.83698715   -0.00240859    0.12055340 0.00000474 0.00000000  0.35E-01      2.43
   3    7    6    0   -191.83700236    -191.83700264   -0.00000027    0.00100777 0.00000000 0.00000000  0.67E-03      3.67

 CONVERGENCE REACHED!  Final gradient:    0.00000013 ( 0.13E-06)
                       Final energy:   -191.83700264
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -191.837002635604
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.67038144
 One electron energy                          -335.86297968
 Two electron energy                           144.02597704
 Virial ratio                                    4.06104731
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -191.837002635515
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.67038145
 One electron energy                          -335.86297970
 Two electron energy                           144.02597706
 Virial ratio                                    4.06104731
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -191.837002635419
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.67038145
 One electron energy                          -335.86297971
 Two electron energy                           144.02597708
 Virial ratio                                    4.06104731
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>     1.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>    -0.000000000000
 !MCSCF expec                      <3.1|LYLY|3.1>     1.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     1.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LZLZ|3.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>     2.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     2.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 4 6   3 5 2 1 2 6 4 5 313  101514 812 9 711 1 4   6 5 3 2 711 812 914
                                       151310 6 4 2 5 3 111   7 812 914151310 2 6   4 3 5 111 7 812 915  14131027251721282326
                                       241920182216 6 2 4 3   511 7 812 915141013   1 6 4 3 5 211 712 8   914151013 1 3 5 6 4
                                        2 1 3 5 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 1   2 3 9 7 4 6 810 5 1   2 3 6 5 4 7 9 810 6   5 810 4 9 7 1 3 219
                                       12141621131115171820   6 5 810 4 9 7 3 2 1  12192113161411151718  20 6 5 810 4 7 91219
                                       211311161415171820 5   6 810 4 7 9 3 2 1 5   610 8 4 9 712192113  11141615171820 3 2 1
                                        5 4 610 8 9 7 1 2 3   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.17061     1  1  s    0.99887
    2.1     2.00000    -1.07117     1  1  d0   0.99996
    3.1     2.00000    -1.07117     1  1  d1-  0.99996
    4.1     2.00000    -1.07117     1  1  d1+  0.99996
    5.1     2.00000    -1.07117     1  1  d2-  0.99996
    6.1     2.00000    -1.07117     1  1  d2+  0.99996
    7.1     1.98465    -0.55900     1  1  s   -0.39431    1  5  s    0.56576    1  6  s    0.45166    1 11  s   -0.26230
    1.2     2.00000    -3.85318     1  1  pz   0.99990
    2.2     2.00000    -3.85318     1  1  py   0.99990
    3.2     2.00000    -3.85318     1  1  px   0.99990
    4.2     0.67178    -0.05934     1  1  px  -0.25218    1  5  px   0.45356    1  6  px   0.41690
    5.2     0.67178    -0.05934     1  1  py  -0.25218    1  5  py   0.45356    1  6  py   0.41690
    6.2     0.67178    -0.05934     1  1  pz  -0.25218    1  5  pz   0.45356    1  6  pz   0.41690
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 2 aa0         -0.00000000      0.00000000      0.99615568
 2 a0a          0.00000000      0.99615568     -0.00000000
 2 0aa          0.99615568     -0.00000000      0.00000000
 0 2aa         -0.08760056     -0.00000000     -0.00000000
 0 a2a          0.00000000     -0.08760056     -0.00000000
 0 aa2          0.00000000     -0.00000000     -0.08760056
 
 Energy:     -191.83700264   -191.83700264   -191.83700264
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        16.86      3.97      3.67      9.05
 REAL TIME  *        18.99 SEC
 DISK USED  *        71.78 MB (local),        1.65 GB (total)
 SF USED    *        95.02 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8370026   2.0
    -191.8370026   2.0
    -191.8370026   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     252 ( 122 130 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.83700264
     2      -191.83700264
     3      -191.83700264

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.77D-02
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        370584
 Number of doubly external configurations:       7575450
 Total number of contracted configurations:      7946571
 Total number of uncontracted configurations:   43099315

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1990564 words, CPU-time:      0.71 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.83700264     0.00000000    -0.95263204  0.40D-01  0.12D+00     1.01
    1     2     2     1.00000000     0.00000000  -191.83700264     0.00000000    -0.95274259  0.40D-01  0.12D+00     1.01
    1     3     3     1.00000000     0.00000000  -191.83700264    -0.00000000    -0.95287525  0.41D-01  0.12D+00     1.01
    2     1     1     1.10301401    -0.76386485  -192.60086749    -0.76386485    -0.02447188  0.34D-02  0.19D-02    31.54
    2     2     2     1.10309504    -0.76378037  -192.60078300    -0.76378037    -0.02456513  0.35D-02  0.19D-02    31.54
    2     3     3     1.10320051    -0.76367661  -192.60067924    -0.76367661    -0.02467724  0.35D-02  0.19D-02    31.54
    3     1     1     1.09049342    -0.78675969  -192.62376233    -0.02289484    -0.00033334  0.45D-04  0.35D-04    62.25
    3     2     2     1.09049173    -0.78675723  -192.62375987    -0.02297686    -0.00033588  0.45D-04  0.35D-04    62.25
    3     3     3     1.09048938    -0.78675449  -192.62375712    -0.02307788    -0.00033861  0.46D-04  0.36D-04    62.25
    4     1     1     1.09028495    -0.78709695  -192.62409959    -0.00033726    -0.00001136  0.23D-05  0.11D-05    93.23
    4     2     2     1.09028401    -0.78709689  -192.62409952    -0.00033965    -0.00001143  0.23D-05  0.11D-05    93.23
    4     3     3     1.09028288    -0.78709683  -192.62409947    -0.00034235    -0.00001148  0.23D-05  0.12D-05    93.23
    5     1     1     1.09035935    -0.78710915  -192.62411179    -0.00001220    -0.00000036  0.47D-07  0.43D-07   124.18
    5     2     2     1.09035909    -0.78710915  -192.62411179    -0.00001226    -0.00000036  0.48D-07  0.43D-07   124.18
    5     3     3     1.09035876    -0.78710915  -192.62411179    -0.00001232    -0.00000037  0.48D-07  0.43D-07   124.18
    6     1     1     1.09037211    -0.78710954  -192.62411217    -0.00000038    -0.00000001  0.14D-08  0.19D-08   155.08
    6     2     2     1.09037205    -0.78710954  -192.62411217    -0.00000038    -0.00000001  0.14D-08  0.19D-08   155.08
    6     3     3     1.09037200    -0.78710954  -192.62411217    -0.00000039    -0.00000001  0.14D-08  0.19D-08   155.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.1%   1.8%
 P   0.6%   8.6%  28.6%

 Initialization:   0.5%
 Other:           59.9%

 Total CPU:      155.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0           0.0000000   0.0000000   0.9545185
 2222222222/0/           0.0000000   0.9545184  -0.0000000
 22222222220//           0.9545184  -0.0000000  -0.0000000
 2222220222//2          -0.0000000  -0.0000000  -0.0738763
 2222220222/2/          -0.0000000  -0.0738762   0.0000000
 22222202222//          -0.0738762   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957321    0.000000    0.000000
 2          -0.000000    0.957321    0.000000
 3          -0.000000   -0.000000    0.957321

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957321    0.000000   -0.000000
 2           0.000000    0.957321    0.000000
 3          -0.000000    0.000000    0.957321


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95732054 (fixed)   0.95737302 (relaxed)   0.95732054 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071523   -0.00133921   -0.67692257
 Singles      0.01429476   -0.04904710   -0.05526631
 Pairs        0.07614199   -0.00000000   -0.05492066
 Total        1.09115198   -0.05038630   -0.78710954
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83700264
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17255312
 One electron energy                 -335.42496911
 Two electron energy                  142.80085694
 Virial quotient                       -3.04917409
 Correlation energy                    -0.78710954
 !MRCI STATE 1.1 Energy              -192.624112171457

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69585877 (Davidson, fixed reference)
 Cluster corrected energies          -192.69576461 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69585877 (Davidson, rotated reference)

 Cluster corrected energies          -192.69370267 (Pople, fixed reference)
 Cluster corrected energies          -192.69360434 (Pople, relaxed reference)
 Cluster corrected energies          -192.69370267 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95732057 (fixed)   0.95737304 (relaxed)   0.95732057 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071523   -0.00133921   -0.67692266
 Singles      0.01429470   -0.04904704   -0.05526626
 Pairs        0.07614199   -0.00000000   -0.05492062
 Total        1.09115192   -0.05038625   -0.78710954
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83700264
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17255287
 One electron energy                 -335.42496801
 Two electron energy                  142.80085584
 Virial quotient                       -3.04917410
 Correlation energy                    -0.78710954
 !MRCI STATE 2.1 Energy              -192.624112171332

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69585872 (Davidson, fixed reference)
 Cluster corrected energies          -192.69576456 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69585872 (Davidson, rotated reference)

 Cluster corrected energies          -192.69370263 (Pople, fixed reference)
 Cluster corrected energies          -192.69360430 (Pople, relaxed reference)
 Cluster corrected energies          -192.69370263 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95732059 (fixed)   0.95737307 (relaxed)   0.95732059 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071523   -0.00133921   -0.00174327
 Singles      0.01429463   -0.04904698   -0.05526621
 Pairs        0.07614201   -0.73672335   -0.73010006
 Total        1.09115187   -0.78710953   -0.78710954
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83700264
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17255423
 One electron energy                 -335.42496894
 Two electron energy                  142.80085677
 Virial quotient                       -3.04917404
 Correlation energy                    -0.78710954
 !MRCI STATE 3.1 Energy              -192.624112171248

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69585868 (Davidson, fixed reference)
 Cluster corrected energies          -192.69576453 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69585868 (Davidson, rotated reference)

 Cluster corrected energies          -192.69370258 (Pople, fixed reference)
 Cluster corrected energies          -192.69360426 (Pople, relaxed reference)
 Cluster corrected energies          -192.69370258 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      187.29       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       174.59    157.73      3.97      3.67      9.05
 REAL TIME  *       185.82 SEC
 DISK USED  *       256.25 MB (local),        3.09 GB (total)
 SF USED    *         1.79 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.69585877  AU                              
 SETTING HLSDIAG(2)     =      -192.69585872  AU                              
 SETTING HLSDIAG(3)     =      -192.69585868  AU                              


         HLSDIAG
    -192.6958588
    -192.6958587
    -192.6958587
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -192.624112   -192.624112   -192.624112
 Replaced energies:   -192.695859   -192.695859   -192.695859



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.69585877

 Wigner-Eckart theorem used for  8 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00    2364.27       0.00       0.00       0.00
                            0.00    3343.59      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                        -3343.59      -0.00       0.00       0.00      -0.00    2364.28       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.02   -2364.27       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00   -2364.28       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00      -0.00   -2364.27       0.00       0.00       0.00      -0.00       0.00    2364.27
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.01       0.00      -0.00       0.00      -0.00
                            0.00       0.00    2364.28      -0.00       0.00       0.00       0.00      -0.00    2364.28

    6   3.1  1.0  0.0    2364.27      -0.00      -0.00       0.00       0.00       0.02   -2364.27       0.00      -0.00
                           -0.00   -2364.28      -0.00      -0.00      -0.00       0.00      -0.00   -2364.28       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00   -2364.27       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00   -3343.59       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00
                           -0.00      -0.00      -0.00       0.00       0.00    2364.28    3343.59       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00    2364.27      -0.00      -0.00       0.00       0.00       0.02
                           -0.00      -0.00      -0.00      -0.00   -2364.28      -0.00      -0.00       0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  9)

    The diagonal matrixelements are shifted by   -192.69585877 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000    3343.588

    2    1  |1 1>+              0.000       0.010       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    3343.590   -3343.588      -0.000

    3    1  |1 1>+              0.000       0.000       0.019       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -3343.590       0.000       0.000      -0.000

    1    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.010       0.000       0.000       0.000
                                0.000       0.000    3343.590      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.019    3343.589      -0.000
                               -0.000   -3343.590       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    3343.589       0.000       0.000
                                0.000    3343.588      -0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.010
                            -3343.588      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000   -3343.589       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9

    1    1  |1 1>+              0.000
                               -0.000

    2    1  |1 1>+              0.000
                                0.000

    3    1  |1 1>+              0.000
                               -0.000

    1    1  |1 0>           -3343.589
                                0.000

    2    1  |1 0>               0.000
                                0.000

    3    1  |1 0>               0.000
                               -0.000

    1    1  |1 1>-              0.000
                                0.000

    2    1  |1 1>-              0.000
                                0.000

    3    1  |1 1>-              0.019
                                0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.72632775    -0.03046898    -6687.17      0.00000000        0.00      0.0000
    2  -192.71109325    -0.01523448    -3343.58      0.01523450     3343.59      0.4146
    3  -192.71109323    -0.01523447    -3343.58      0.01523451     3343.59      0.4146
    4  -192.71109322    -0.01523445    -3343.58      0.01523453     3343.59      0.4146
    5  -192.68062424     0.01523452     3343.59      0.04570350    10030.76      1.2437
    6  -192.68062424     0.01523453     3343.59      0.04570351    10030.76      1.2437
    7  -192.68062421     0.01523455     3343.60      0.04570353    10030.77      1.2437
    8  -192.68062418     0.01523458     3343.60      0.04570356    10030.77      1.2437
    9  -192.68062418     0.01523459     3343.61      0.04570357    10030.77      1.2437

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.70710732 -0.00000002  0.00000002 -0.00000008 -0.70710624 -0.00000002  0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.57735025 -0.00000000  0.00000000 -0.00000000  0.56152394 -0.00000008  0.00000000  0.00000003
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00117932  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000002  0.00000007 -0.70710633 -0.00000001  0.00000001 -0.00000004  0.70710724
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000002  0.70710777  0.00000007  0.00000002  0.00000002 -0.70710579 -0.00000004

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000002 -0.00000007  0.70710724 -0.00000001  0.00000001 -0.00000004  0.70710633

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00048846  0.00000000  0.00000000  0.00000000
                          -0.57734981  0.00000000 -0.00000000 -0.00000000  0.23257675 -0.00000000  0.00000002 -0.00000003

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00166777 -0.00000000  0.00000000  0.00000000
                           0.57735075  0.00000000  0.00000000 -0.00000000  0.79409981 -0.00000008  0.00000002  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.70710624 -0.00000002  0.00000002  0.00000008  0.70710732  0.00000002 -0.00000001

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000002  0.70710579  0.00000007 -0.00000002 -0.00000002  0.70710777  0.00000004

 State Sym Spin     / Nr.      9

   1    1  |1 1>+          0.00000002
                           0.00000000

   2    1  |1 1>+         -0.59275173
                           0.00124579

   3    1  |1 1>+          0.00000003
                          -0.00000000

   1    1  |1 0>           0.00000000
                           0.00000002

   2    1  |1 0>           0.00000000
                           0.00000003

   3    1  |1 0>           0.00164494
                           0.78266999

   1    1  |1 1>-          0.00039915
                           0.18991750

   2    1  |1 1>-         -0.00000000
                          -0.00000002

   3    1  |1 1>-         -0.00000000
                          -0.00000002


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.72632775     -0.03046898    -6687.17      0.00000000        0.00      0.0000
     2   1   -192.71109325     -0.01523448    -3343.58      0.01523450     3343.59      0.4146
     3   1   -192.71109323     -0.01523447    -3343.58      0.01523451     3343.59      0.4146
     4   1   -192.71109322     -0.01523445    -3343.58      0.01523453     3343.59      0.4146
     5   1   -192.68062424      0.01523452     3343.59      0.04570350    10030.76      1.2437
     6   1   -192.68062424      0.01523453     3343.59      0.04570351    10030.76      1.2437
     7   1   -192.68062421      0.01523455     3343.60      0.04570353    10030.77      1.2437
     8   1   -192.68062418      0.01523458     3343.60      0.04570356    10030.77      1.2437
     9   1   -192.68062418      0.01523459     3343.61      0.04570357    10030.77      1.2437

 E0 =   -192.69585877 is the energy of the lowest zeroth-order state
 E1 =   -192.72632775 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.70710732 -0.00000002  0.00000002 -0.00000008 -0.70710624 -0.00000002  0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.57735025 -0.00000000  0.00000000 -0.00000000  0.56152394 -0.00000008  0.00000000  0.00000003
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00117932  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000002  0.00000007 -0.70710633 -0.00000001  0.00000001 -0.00000004  0.70710724
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000002  0.70710777  0.00000007  0.00000002  0.00000002 -0.70710579 -0.00000004

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000002 -0.00000007  0.70710724 -0.00000001  0.00000001 -0.00000004  0.70710633

  6  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00048846  0.00000000  0.00000000  0.00000000
                               -0.57734981  0.00000000 -0.00000000 -0.00000000  0.23257675 -0.00000000  0.00000002 -0.00000003

  7  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00166777 -0.00000000  0.00000000  0.00000000
                                0.57735075  0.00000000  0.00000000 -0.00000000  0.79409981 -0.00000008  0.00000002  0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.70710624 -0.00000002  0.00000002  0.00000008  0.70710732  0.00000002 -0.00000001

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000002  0.70710579  0.00000007 -0.00000002 -0.00000002  0.70710777  0.00000004


   Total
 Nr Sym  State Sym Spin / Nr.        9

  1  1     1    1  |1 1>+       0.00000002
                                0.00000000

  2  1     2    1  |1 1>+      -0.59275173
                                0.00124579

  3  1     3    1  |1 1>+       0.00000003
                               -0.00000000

  4  1     1    1  |1 0>        0.00000000
                                0.00000002

  5  1     2    1  |1 0>        0.00000000
                                0.00000003

  6  1     3    1  |1 0>        0.00164494
                                0.78266999

  7  1     1    1  |1 1>-       0.00039915
                                0.18991750

  8  1     2    1  |1 1>-      -0.00000000
                               -0.00000002

  9  1     3    1  |1 1>-      -0.00000000
                               -0.00000002



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   31.53%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  4  1     1    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  6  1     3    1  |1 0>         33.33%    0.00%    0.00%    0.00%    5.41%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   63.06%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9

  1  1     1    1  |1 1>+         0.00%
  2  1     2    1  |1 1>+        35.14%
  3  1     3    1  |1 1>+         0.00%
  4  1     1    1  |1 0>          0.00%
  5  1     2    1  |1 0>          0.00%
  6  1     3    1  |1 0>         61.26%
  7  1     1    1  |1 1>-         3.61%
  8  1     2    1  |1 1>-         0.00%
  9  1     3    1  |1 1>-         0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      187.29       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       229.03     54.43    157.73      3.97      3.67      9.05
 REAL TIME  *       247.52 SEC
 DISK USED  *       256.25 MB (local),        3.09 GB (total)
 SF USED    *         1.79 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -192.680624180172

              CI           MULTI         RHF-SCF
   -192.62411217   -191.83700264   -191.86439724
 **********************************************************************************************************************************
 Molpro calculation terminated
