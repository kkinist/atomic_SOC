
 Working directory              : /wrk/irikura/molpro.myFaRR26vc/
 Global scratch directory       : /wrk/irikura/molpro.myFaRR26vc/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.myFaRR26vc/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Tl SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Tl};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=20,sym=1,spin=0}
 
 {multi
     closed,6,3
     occ,8,9
     wf,nelec=21,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Tl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 20-Mar-24          TIME: 11:43:27  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Tl   ECP ECP60MDF                 selected for group  1
 Library entry TL     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TL     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TL     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TL     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TL     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TL     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TL     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  TL     21.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   21
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

         1 0.229E-04 0.247E-04 0.247E-04 0.247E-04 0.247E-04 0.247E-04 0.409E-04 0.361E-03
         2 0.222E-04 0.222E-04 0.222E-04 0.591E-03 0.591E-03 0.591E-03 0.347E-02 0.347E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     552.862 MB (compressed) written to integral file ( 13.5%)

     Node minimum: 81.265 MB, node maximum: 101.188 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   52130346.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   4  SEGMENT LENGTH:   15998580      RECORD LENGTH: 524288

 Memory used in sort:      16.56 MW

 SORT1 READ   511790813. AND WROTE     8566574. INTEGRALS IN     27 RECORDS. CPU TIME:     1.87 SEC, REAL TIME:     1.96 SEC
 SORT2 READ    53581973. AND WROTE   312900871. INTEGRALS IN   2316 RECORDS. CPU TIME:     0.96 SEC, REAL TIME:     1.05 SEC

 Node minimum:    52127397.  Node maximum:    52164354. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        10.47     10.31
 REAL TIME  *        11.65 SEC
 DISK USED  *        30.87 MB (local),        1.24 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial occupancy:   4   6

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -128.23848464    -128.23848464     0.00D+00     0.91D-01     0     0       0.22      0.42    start
   2     -164.29830361     -36.05981897     0.11D+00     0.14D+00     1     0       0.23      0.65    diag
   3     -169.77616264      -5.47785903     0.11D+00     0.71D-01     2     0       0.22      0.87    diag
   4     -171.27854004      -1.50237740     0.45D-01     0.37D-01     3     0       0.22      1.09    diag
   5     -171.32857577      -0.05003573     0.58D-02     0.81D-02     4     0       0.23      1.32    diag
   6     -171.33107589      -0.00250012     0.21D-02     0.14D-02     5     0       0.22      1.54    diag
   7     -171.33128887      -0.00021297     0.54D-03     0.27D-03     6     0       0.23      1.77    diag
   8     -171.33129115      -0.00000228     0.60D-04     0.44D-04     7     0       0.22      1.99    fixocc
   9     -171.33129124      -0.00000009     0.10D-04     0.98D-05     8     0       0.23      2.22    diag
  10     -171.33129124      -0.00000000     0.44D-06     0.94D-06     9     0       0.22      2.44    diag/orth
  11     -171.33129124      -0.00000000     0.18D-07     0.65D-07     0     0       0.22      2.66    diag

 Final occupancy:   7   3

 !RHF STATE 1.1 Energy               -171.331291236284
  RHF One-electron energy            -295.976710361851
  RHF Two-electron energy             124.645419125568
  RHF Kinetic energy                   56.458774825730
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.034626446733

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.91019     1  1  s    1.00007
    2.1     2.00000    -1.10793     1  1  d0   1.00273
    3.1     2.00000    -1.10793     1  1  d2-  0.96148    1  1  d2+  0.28461
    4.1     2.00000    -1.10793     1  1  d2+  0.81784    1  1  d1-  0.52457
    5.1     2.00000    -1.10793     1  1  d1+  0.98189
    6.1     2.00000    -1.10793     1  1  d2+ -0.50269    1  1  d1-  0.83208
    7.1     2.00000    -0.68792     1  1  s   -0.38277    1  5  s    0.64945    1  6  s    0.40725    1 11  s   -0.25974
    1.2     2.00000    -3.73506     1  1  px   0.99720
    2.2     2.00000    -3.73506     1  1  py  -0.49920    1  1  pz   0.86362
    3.2     2.00000    -3.73506     1  1  py   0.86467    1  1  pz   0.49858


 HOMO      7.1    -0.687919 =     -18.7192eV
 LUMO      4.2    -0.176433 =      -4.8010eV
 LUMO-HOMO         0.511485 =      13.9182eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.96       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        13.14      2.67     10.31
 REAL TIME  *        14.48 SEC
 DISK USED  *        33.98 MB (local),        1.26 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     248 (  121  127)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.671D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.233D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.501D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.218D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.505D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 5 4 6 1 1 2 3   5 6 4 1 3 2 5 4 6 1  1415 9111210 813 7 3   4 6 5 2 8 911121013
                                       1415 7 1 3 2 4 6 514  1511 912 81013 7 2 3   4 6 5 11514 911 812   7131027282225161726
                                       232418192120 2 3 4 6   5 1121415 811 9 713  10 5 6 4 3 2121514 8  11 9 71310 1 5 3 6 2
                                        4 1 3 5 6 2 4 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.473D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.385D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.377D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.645D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.474D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.519D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.138D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.259D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.271D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 3 1 2 3 1   2 310 8 5 4 6 9 7 1   2 3 810 7 9 6 4 5 2   1 310 7 9 8 6 5 413
                                       17152116141820191112  10 7 9 8 4 5 6 2 1 3  21171518201311121914  16 6 7 9 8 5 410 2 1
                                        3151713212018191112  1416 6 8 7 910 4 5 2   1 310 8 6 9 7 4 517  14161513182021191112
                                       10 6 9 7 8 4 5 2 1 3   2 1 3 2 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  2141  ( 30 closed/active, 1107 closed/virtual, 0 active/active, 1004 active/virtual )
 Total number of variables:    2861
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   11    1   -171.42030866    -171.45886057   -0.03855190    0.13135038 0.00007512 0.00000000  0.14E+01      2.20
   2    7    6    0   -171.45900603    -171.45915861   -0.00015258    0.08787997 0.00000701 0.00000000  0.69E-01      4.31
   3    6    6    0   -171.45915863    -171.45915863   -0.00000000    0.00000705 0.00000000 0.00000000  0.13E-03      6.18
   4    2    2    0   -171.45915863    -171.45915863    0.00000000    0.00000000 0.00000000 0.00000000  0.14E-08      7.79

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.34E-11)
                       Final energy:   -171.45915863
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -171.525868416388
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.65146992
 One electron energy                          -301.47942685
 Two electron energy                           129.95355844
 Virial ratio                                    4.02773906
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -171.524708766543
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67428298
 One electron energy                          -301.62588641
 Two electron energy                           130.10117764
 Virial ratio                                    4.02649985
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -171.523617910236
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.69913199
 One electron energy                          -301.81306095
 Two electron energy                           130.28944304
 Virial ratio                                    4.02515421
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -171.410602833036
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.44750936
 One electron energy                          -297.94247977
 Two electron energy                           126.53187694
 Virial ratio                                    4.03663713
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -171.410254515683
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.46283743
 One electron energy                          -298.10938777
 Two electron energy                           126.69913326
 Virial ratio                                    4.03580660
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -171.359899364389
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.54283563
 One electron energy                          -298.29351630
 Two electron energy                           126.93361694
 Virial ratio                                    4.03062090
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.001248206722
 !MCSCF expec                      <2.2|LXLX|2.2>     0.002270840013
 !MCSCF expec                      <3.2|LXLX|3.2>     1.001123732149
 !MCSCF expec                      <4.2|LXLX|4.2>     1.001787838020
 !MCSCF expec                      <5.2|LXLX|5.2>     0.002281925603
 !MCSCF expec                      <6.2|LXLX|6.2>     1.001445705816
 
 !MCSCF expec                      <1.2|LYLY|1.2>     1.000681893308
 !MCSCF expec                      <2.2|LYLY|2.2>     1.000649198616
 !MCSCF expec                      <3.2|LYLY|3.2>     0.001243061198
 !MCSCF expec                      <4.2|LYLY|4.2>     1.001224155531
 !MCSCF expec                      <5.2|LYLY|5.2>     1.001225925469
 !MCSCF expec                      <6.2|LYLY|6.2>     1.000585098771
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000968723367
 !MCSCF expec                      <2.2|LZLZ|2.2>     1.000495712221
 !MCSCF expec                      <3.2|LZLZ|3.2>     1.000472449955
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.000896059527
 !MCSCF expec                      <5.2|LZLZ|5.2>     1.000414957648
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.000906249856
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.002898823397
 !MCSCF expec                      <2.2|L**2|2.2>     2.003415750849
 !MCSCF expec                      <3.2|L**2|3.2>     2.002839243302
 !MCSCF expec                      <4.2|L**2|4.2>     2.003908053077
 !MCSCF expec                      <5.2|L**2|5.2>     2.003922808720
 !MCSCF expec                      <6.2|L**2|6.2>     2.002937054442
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 1 3   5 6 4 2 3 5 6 4 2 1  1310151411 812 7 9 3   5 6 2 413101415 812
                                       11 7 9 1 3 5 6 4 213  101514 81211 7 9 5 3   6 4 2 113101514 812  11 7 922162018241923
                                       262717212528 5 3 6 4   2 113101415 81211 7   9 5 3 6 4 213101415   81211 7 9 1 5 3 6 4
                                        2 1 5 3 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 3 2   1 2 9 7 810 5 6 4 3   1 2 7 9 810 5 6 4 2   1 3 7 9 810 5 6 420
                                       18151716141213211911   7 9 810 5 6 4 2 1 3  20181517161412211319  11 7 9 810 5 6 4 2 1
                                        3182015171416122113  1911 7 910 8 5 6 4 2   1 3 7 910 8 5 6 420  18151714161221131911
                                        7 910 8 5 6 4 2 1 3   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.71835     1  1  s    0.99858
    2.1     2.00000    -0.91642     1  1  d2-  1.00123
    3.1     2.00000    -0.91642     1  1  d2+  1.00123
    4.1     2.00000    -0.91612     1  1  d1-  1.00122
    5.1     2.00000    -0.91591     1  1  d1+  1.00125
    6.1     2.00000    -0.91587     1  1  d0   1.00124
    7.1     1.95078    -0.50402     1  1  s   -0.37330    1  5  s    0.57545    1  6  s    0.44771
    8.1     0.00385     0.29015     1  1  s    0.41467    1  3  s    0.43903    1  4  s   -1.33391    1  5  s   -1.13374
                                    1  6  s    1.22259    1  7  s    0.54800    1 11  s    0.36650
    1.2     2.00000    -3.54360     1  1  py   0.99914
    2.2     2.00000    -3.54342     1  1  px   0.99922
    3.2     2.00000    -3.54316     1  1  pz   0.99935
    4.2     0.18301    -0.00513     1  1  pz  -0.39476    1  4  pz   0.29379    1  5  pz   0.49977    1  6  pz   0.61012
                                    1  7  pz  -0.40009
    5.2     0.18175    -0.01804     1  1  px  -0.32829    1  5  px   0.52252    1  6  px   0.42114
    6.2     0.18083    -0.02664     1  1  py   0.31138    1  5  py  -0.50528    1  6  py  -0.37838
    7.2     0.16667     0.01229     1  6  pz   0.35941    1  7  pz  -0.86572    1 12  pz   1.40072
    8.2     0.16662     0.01204     1  6  px  -0.27099    1  7  px   0.40562    1 12  px   0.80615
    9.2     0.16650     0.05968     1  1  pz   0.34093    1  6  pz  -1.10220    1  7  pz   2.19662    1 12  pz  -0.74929
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 00a000     -0.00000000     -0.00000000      0.98781572     -0.00000000      0.00000000     -0.00000000
 20 0a0000      0.00000000      0.95253652      0.00000000     -0.00000000     -0.26168910     -0.00000000
 20 0000a0      0.00000000      0.26143489      0.00000000      0.00000000      0.95097053     -0.00000000
 20 a00000      0.91886132     -0.00000000     -0.00000000     -0.23379570      0.00000000     -0.27677985
 20 000a00      0.08971138     -0.00000000      0.00000000      0.87681508     -0.00000000     -0.44281164
 20 00000a      0.35100056     -0.00000000      0.00000000      0.38645974     -0.00000000      0.83635465
 00 20a000      0.00000000      0.00000000     -0.10434471      0.00000000     -0.00000000      0.00000000
 00 02a000      0.00000000      0.00000000     -0.10140867      0.00000000     -0.00000000      0.00000000
 00 2a0000     -0.00000000     -0.10089366     -0.00000000      0.00000000      0.02897020      0.00000000
 00 0a2000     -0.00000000     -0.09566762     -0.00000000      0.00000000      0.02776914     -0.00000000
 00 a20000     -0.09495941      0.00000000      0.00000000      0.02551601     -0.00000000      0.03120464
 00 a02000     -0.09263803      0.00000000      0.00000000      0.02499879     -0.00000000      0.03072222
 00 2000a0     -0.00000000     -0.02521088     -0.00000000     -0.00000000     -0.09152073      0.00000000
 00 0200a0     -0.00000000     -0.02330318     -0.00000000     -0.00000000     -0.08592994      0.00000000
 00 200a00     -0.00837247      0.00000000     -0.00000000     -0.08377146      0.00000000      0.04249011
 00 0020a0     -0.00000000     -0.02303707     -0.00000000     -0.00000000     -0.08325662      0.00000000
 00 020a00     -0.00821258      0.00000000     -0.00000000     -0.07987697      0.00000000      0.04017913
 00 20000a     -0.03279080      0.00000000     -0.00000000     -0.03655564      0.00000000     -0.07930685
 00 02000a     -0.03230017      0.00000000     -0.00000000     -0.03555169      0.00000000     -0.07671422
 00 002a00     -0.00789373      0.00000000     -0.00000000     -0.07656476      0.00000000      0.03850786
 00 00200a     -0.03103168      0.00000000     -0.00000000     -0.03410208      0.00000000     -0.07358153
 
 Energy:     -171.52586842   -171.52470877   -171.52361791   -171.41060283   -171.41025452   -171.35989936
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.42       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        21.26      8.12      2.67     10.31
 REAL TIME  *        23.88 SEC
 DISK USED  *        96.32 MB (local),        1.63 GB (total)
 SF USED    *       169.87 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY      LL
    -171.5258684   2.00289882
    -171.5247088   2.00341575
    -171.5236179   2.00283924
    -171.4106028   2.00390805
    -171.4102545   2.00392281
    -171.3598994   2.00293705
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 21
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     248 ( 121 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -171.52586842
     2      -171.52470877
     3      -171.52361791
     4      -171.41060283
     5      -171.41025452
     6      -171.35989936

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4133D-06

 Number of blocks in overlap matrix:   526   Smallest eigenvalue:  0.41D-06
 Number of N-2 electron functions:    1312
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       9607051
 Number of doubly external configurations:      20179432
 Total number of contracted configurations:     29839755
 Total number of uncontracted configurations:  378484749

 Diagonal Coupling coefficients finished.               Storage:  22135350 words, CPU-Time:     41.87 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3639227 words, CPU-time:      2.80 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -171.52586842     0.00000000    -0.91919210  0.51D-01  0.11D+00    66.56
    1     2     2     1.00000000     0.00000000  -171.52470877     0.00000000    -0.92243314  0.53D-01  0.11D+00    66.56
    1     3     3     1.00000000     0.00000000  -171.52361791     0.00000000    -0.92608259  0.54D-01  0.12D+00    66.56
    1     4     4     1.00000000     0.00000000  -171.41060283     0.00000000    -0.89428954  0.40D-01  0.11D+00    66.56
    1     5     5     1.00000000     0.00000000  -171.41025452    -0.00000000    -0.89679875  0.41D-01  0.11D+00    66.56
    1     6     6     1.00000000     0.00000000  -171.35989936    -0.00000000    -0.90084664  0.43D-01  0.11D+00    66.56
    2     1     1     1.10334978    -0.73514231  -172.26101073    -0.73514231    -0.02430104  0.34D-02  0.18D-02  1721.76
    2     2     2     1.10434008    -0.73517556  -172.25988433    -0.73517556    -0.02492113  0.37D-02  0.18D-02  1721.76
    2     3     3     1.10525131    -0.73526340  -172.25888131    -0.73526340    -0.02548733  0.39D-02  0.19D-02  1721.76
    2     4     4     1.09471204    -0.72671012  -172.13731295    -0.72671012    -0.02134938  0.24D-02  0.15D-02  1721.76
    2     5     5     1.09526948    -0.72648819  -172.13674270    -0.72648819    -0.02196423  0.26D-02  0.16D-02  1721.76
    2     6     6     1.09607479    -0.72688900  -172.08678836    -0.72688900    -0.02275272  0.28D-02  0.16D-02  1721.76
    3     1     1     1.09051050    -0.75766914  -172.28353756    -0.02252683    -0.00033954  0.46D-04  0.32D-04  3373.08
    3     2     2     1.09083927    -0.75825925  -172.28296802    -0.02308369    -0.00036537  0.55D-04  0.35D-04  3373.08
    3     3     3     1.09113361    -0.75884791  -172.28246582    -0.02358451    -0.00038649  0.63D-04  0.37D-04  3373.08
    3     4     4     1.08500494    -0.74648454  -172.15708737    -0.01977442    -0.00024069  0.25D-04  0.19D-04  3373.08
    3     5     5     1.08510068    -0.74676247  -172.15701698    -0.02027428    -0.00025715  0.28D-04  0.20D-04  3373.08
    3     6     6     1.08548500    -0.74780409  -172.10770345    -0.02091509    -0.00027453  0.31D-04  0.22D-04  3373.08
    4     1     1     1.09024482    -0.75800600  -172.28387442    -0.00033686    -0.00001231  0.29D-05  0.11D-05  5023.79
    4     2     2     1.09048129    -0.75862547  -172.28333423    -0.00036621    -0.00001486  0.39D-05  0.13D-05  5023.79
    4     3     3     1.09069470    -0.75923825  -172.28285616    -0.00039033    -0.00001729  0.50D-05  0.15D-05  5023.79
    4     4     4     1.08514758    -0.74671813  -172.15732097    -0.00023360    -0.00000681  0.14D-05  0.51D-06  5023.79
    4     5     5     1.08521258    -0.74701177  -172.15726629    -0.00024931    -0.00000770  0.18D-05  0.59D-06  5023.79
    4     6     6     1.08556428    -0.74806832  -172.10796768    -0.00026423    -0.00000806  0.18D-05  0.62D-06  5023.79
    5     1     1     1.09021301    -0.75801951  -172.28388793    -0.00001351    -0.00000047  0.58D-07  0.54D-07  6672.06
    5     2     2     1.09043332    -0.75864208  -172.28335085    -0.00001662    -0.00000062  0.84D-07  0.69D-07  6672.06
    5     3     3     1.09063182    -0.75925787  -172.28287578    -0.00001962    -0.00000079  0.11D-06  0.86D-07  6672.06
    5     4     4     1.08517405    -0.74672537  -172.15732820    -0.00000724    -0.00000024  0.32D-07  0.25D-07  6672.06
    5     5     5     1.08523795    -0.74702008  -172.15727459    -0.00000830    -0.00000030  0.48D-07  0.32D-07  6672.06
    5     6     6     1.08558896    -0.74807695  -172.10797631    -0.00000863    -0.00000032  0.49D-07  0.33D-07  6672.06
    6     1     1     1.09021145    -0.75802002  -172.28388843    -0.00000051    -0.00000002  0.24D-08  0.22D-08  8321.17
    6     2     2     1.09042844    -0.75864276  -172.28335152    -0.00000067    -0.00000002  0.36D-08  0.29D-08  8321.17
    6     3     3     1.09062375    -0.75925873  -172.28287664    -0.00000086    -0.00000003  0.50D-08  0.36D-08  8321.17
    6     4     4     1.08518089    -0.74672563  -172.15732846    -0.00000026    -0.00000001  0.12D-08  0.96D-09  8321.17
    6     5     5     1.08524397    -0.74702041  -172.15727493    -0.00000033    -0.00000001  0.21D-08  0.14D-08  8321.17
    6     6     6     1.08559569    -0.74807729  -172.10797666    -0.00000034    -0.00000001  0.22D-08  0.14D-08  8321.17


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.3%  50.6%
 P   0.2%  19.2%  20.9%

 Initialization:   0.5%
 Other:            7.6%

 Total CPU:     8321.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222022200/000          -0.0000000   0.0000000   0.9480914  -0.0000000  -0.0000000   0.0000000
 222222202220/0000          -0.0000001   0.9229805  -0.0000000   0.0000002  -0.2167983   0.0000000
 222222202220000/0          -0.0000000   0.2166584   0.0000000  -0.0000008   0.9216848   0.0000000
 22222220222/00000           0.8964671   0.0000001   0.0000000  -0.2069359  -0.0000002  -0.2286016
 22222220222000/00           0.0715702   0.0000000   0.0000000   0.8224696   0.0000007  -0.4640269
 2222222022200000/           0.3000238   0.0000000   0.0000000   0.4209750   0.0000004   0.7926501
 2222220022220/000           0.0000000  -0.0000000  -0.0873211   0.0000000   0.0000000   0.0000000
 222222002222/0000           0.0000000  -0.0852600   0.0000000  -0.0000000   0.0211789  -0.0000000
 2222220022202/000           0.0000000  -0.0000000  -0.0848415   0.0000000   0.0000000  -0.0000000
 222222002220/2000           0.0000000  -0.0808151   0.0000000  -0.0000000   0.0202943  -0.0000000
 22222200222/20000          -0.0808151  -0.0000000  -0.0000000   0.0199502   0.0000000   0.0228643
 22222200222/02000          -0.0788345  -0.0000000  -0.0000000   0.0195422   0.0000000   0.0225139
 222222002222000/0           0.0000000  -0.0181996  -0.0000000   0.0000001  -0.0772895  -0.0000000
 222222002220200/0           0.0000000  -0.0166470  -0.0000000   0.0000001  -0.0726320  -0.0000000
 222222002220020/0           0.0000000  -0.0167017  -0.0000000   0.0000001  -0.0705887  -0.0000000
 222222/\2220000/0           0.0000000  -0.0169290  -0.0000000   0.0000001  -0.0692505   0.0000000
 22222200222200/00          -0.0057722  -0.0000000   0.0000000  -0.0684160  -0.0000001   0.0388454
 22222200222020/00          -0.0057258  -0.0000000   0.0000000  -0.0654708  -0.0000001   0.0368229
 2222220022220000/          -0.0240569  -0.0000000  -0.0000000  -0.0345734  -0.0000000  -0.0653184
 2222220022202000/          -0.0240862  -0.0000000  -0.0000000  -0.0337684  -0.0000000  -0.0634495
 22222200222002/00          -0.0055125  -0.0000000   0.0000000  -0.0628573  -0.0000001   0.0353468
 222222/\222000/00          -0.0054125  -0.0000000   0.0000000  -0.0627239  -0.0000001   0.0357702
 2222220022200200/          -0.0231799  -0.0000000  -0.0000000  -0.0324429  -0.0000000  -0.0609517
 222222/\22200000/          -0.0235005  -0.0000000   0.0000000  -0.0302259  -0.0000000  -0.0575838

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955196   -0.000000   -0.000000   -0.030592    0.000000   -0.028359
 2           0.000000    0.955373   -0.000000   -0.000000   -0.035110   -0.000000
 3           0.000000    0.000000    0.955938    0.000000    0.000000   -0.000000
 4           0.033133   -0.000000   -0.000000    0.956306   -0.000001    0.046427
 5           0.000000    0.036393   -0.000000    0.000001    0.957288    0.000000
 6           0.028144    0.000000    0.000000   -0.048218    0.000000    0.956205

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956106    0.000000   -0.000000    0.000563    0.000000    0.000649
 2           0.000000    0.956018    0.000000   -0.000000    0.000606    0.000000
 3          -0.000000    0.000000    0.955938   -0.000000   -0.000000    0.000000
 4           0.000563   -0.000000   -0.000000    0.958005    0.000000   -0.000410
 5           0.000000    0.000606   -0.000000    0.000000    0.957980   -0.000000
 6           0.000649    0.000000    0.000000   -0.000410   -0.000000    0.957833


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95519639 (fixed)   0.95666407 (relaxed)   0.95610642 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00340623   -0.00483578   -0.65403937
 Singles      0.01884810   -0.07086294   -0.07784585
 Pairs        0.07167063    0.02573092   -0.02613480
 Total        1.09392496   -0.04996780   -0.75802002
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52559325
 Nuclear energy                         0.00000000
 Kinetic energy                        57.09511667
 One electron energy                 -301.06917261
 Two electron energy                  128.78528417
 Virial quotient                       -3.01748903
 Correlation energy                    -0.75829519
 !MRCI STATE 1.2 Energy              -172.283888433674

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.35511128 (Davidson, fixed reference)
 Cluster corrected energies          -172.35414449 (Davidson, relaxed reference)
 Cluster corrected energies          -172.35511128 (Davidson, rotated reference)

 Cluster corrected energies          -172.35313261 (Pople, fixed reference)
 Cluster corrected energies          -172.35211927 (Pople, relaxed reference)
 Cluster corrected energies          -172.35313261 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95537280 (fixed)   0.95657492 (relaxed)   0.95601752 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00339313   -0.00479752   -0.63114868
 Singles      0.01887704   -0.07065923   -0.07767716
 Pairs        0.07185823    0.00000000   -0.04981691
 Total        1.09412841   -0.07545674   -0.75864276
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52454903
 Nuclear energy                         0.00000000
 Kinetic energy                        57.10431030
 One electron energy                 -301.14866023
 Two electron energy                  128.86530870
 Virial quotient                       -3.01699382
 Correlation energy                    -0.75880249
 !MRCI STATE 2.2 Energy              -172.283351521621

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.35477639 (Davidson, fixed reference)
 Cluster corrected energies          -172.35380913 (Davidson, relaxed reference)
 Cluster corrected energies          -172.35477639 (Davidson, rotated reference)

 Cluster corrected energies          -172.35280403 (Pople, fixed reference)
 Cluster corrected energies          -172.35178985 (Pople, relaxed reference)
 Cluster corrected energies          -172.35280403 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95593804 (fixed)   0.95649639 (relaxed)   0.95593804 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00338029   -0.00475761   -0.63174931
 Singles      0.01890199   -0.07049542   -0.07754362
 Pairs        0.07202809    0.00000000   -0.04996580
 Total        1.09431037   -0.07525303   -0.75925873
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52361791
 Nuclear energy                         0.00000000
 Kinetic energy                        57.11373044
 One electron energy                 -301.24008147
 Two electron energy                  128.95720484
 Virial quotient                       -3.01648790
 Correlation energy                    -0.75925873
 !MRCI STATE 3.2 Energy              -172.282876635672

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.35448261 (Davidson, fixed reference)
 Cluster corrected energies          -172.35351286 (Davidson, relaxed reference)
 Cluster corrected energies          -172.35448261 (Davidson, rotated reference)

 Cluster corrected energies          -172.35251594 (Pople, fixed reference)
 Cluster corrected energies          -172.35149885 (Pople, relaxed reference)
 Cluster corrected energies          -172.35251594 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95630606 (fixed)   0.95860390 (relaxed)   0.95800523 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00406563   -0.00601780   -0.59260087
 Singles      0.01669186   -0.06936245   -0.07510334
 Pairs        0.06883534   -0.03470543   -0.07902142
 Total        1.08959284   -0.11008568   -0.74672563
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.41061489
 Nuclear energy                         0.00000000
 Kinetic energy                        56.95832460
 One electron energy                 -297.60338299
 Two electron energy                  125.44605453
 Virial quotient                       -3.02251391
 Correlation energy                    -0.74671357
 !MRCI STATE 4.2 Energy              -172.157328459916

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.22422865 (Davidson, fixed reference)
 Cluster corrected energies          -172.22321272 (Davidson, relaxed reference)
 Cluster corrected energies          -172.22422865 (Davidson, rotated reference)

 Cluster corrected energies          -172.22213306 (Pople, fixed reference)
 Cluster corrected energies          -172.22107594 (Pople, relaxed reference)
 Cluster corrected energies          -172.22213306 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.95728849 (fixed)   0.95857762 (relaxed)   0.95797983 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00406052   -0.00600877   -0.62468790
 Singles      0.01671435   -0.06936211   -0.07511972
 Pairs        0.06887576   -0.00000003   -0.04721280
 Total        1.08965062   -0.07537091   -0.74702041
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.41041425
 Nuclear energy                         0.00000000
 Kinetic energy                        56.96230544
 One electron energy                 -297.65919038
 Two electron energy                  125.50191545
 Virial quotient                       -3.02230174
 Correlation energy                    -0.74686068
 !MRCI STATE 5.2 Energy              -172.157274925041

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.22423145 (Davidson, fixed reference)
 Cluster corrected energies          -172.22321674 (Davidson, relaxed reference)
 Cluster corrected energies          -172.22423145 (Davidson, rotated reference)

 Cluster corrected energies          -172.22213726 (Pople, fixed reference)
 Cluster corrected energies          -172.22108131 (Pople, relaxed reference)
 Cluster corrected energies          -172.22213726 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95620511 (fixed)   0.95842849 (relaxed)   0.95783331 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00404232   -0.00596296   -0.00928756
 Singles      0.01687901   -0.06951696   -0.07536844
 Pairs        0.06906269   -0.67146100   -0.66342129
 Total        1.08998402   -0.74694092   -0.74807729
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.36016248
 Nuclear energy                         0.00000000
 Kinetic energy                        57.02772791
 One electron energy                 -297.75891859
 Two electron energy                  125.65094193
 Virial quotient                       -3.01797008
 Correlation energy                    -0.74781418
 !MRCI STATE 6.2 Energy              -172.107976656166

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.17526798 (Davidson, fixed reference)
 Cluster corrected energies          -172.17425594 (Davidson, relaxed reference)
 Cluster corrected energies          -172.17526798 (Davidson, rotated reference)

 Cluster corrected energies          -172.17318161 (Pople, fixed reference)
 Cluster corrected energies          -172.17212784 (Pople, relaxed reference)
 Cluster corrected energies          -172.17318161 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1378.39       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8640.87   8619.59      8.12      2.67     10.31
 REAL TIME  *      8749.07 SEC
 DISK USED  *         1.44 GB (local),        9.69 GB (total)
 SF USED    *        13.61 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -172.35511128  AU                              
 SETTING HLSDIAG(2)     =      -172.35477639  AU                              
 SETTING HLSDIAG(3)     =      -172.35448261  AU                              
 SETTING HLSDIAG(4)     =      -172.22422865  AU                              
 SETTING HLSDIAG(5)     =      -172.22423145  AU                              
 SETTING HLSDIAG(6)     =      -172.17526798  AU                              


         HLSDIAG
    -172.3551113
    -172.3547764
    -172.3544826
    -172.2242286
    -172.2242314
    -172.1752680
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -172.283888   -172.283352   -172.282877   -172.157328   -172.157275   -172.107977
 Replaced energies:   -172.355111   -172.354776   -172.354483   -172.224229   -172.224231   -172.175268



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -172.35511128

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -2503.83      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00   -2549.43       0.00

    2   2.2  0.5  0.5       0.00      73.50       0.00       0.00       0.00       0.00    2503.83       0.00       0.00    -901.15
                           -0.00       0.00    2600.11      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00     137.98       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00   -2600.11      -0.00      -0.00     952.88      -0.00    2549.43       0.00       0.00    -917.47

    4   4.2  0.5  0.5       0.00       0.00       0.00   28725.42       0.00       0.00       0.00     901.15       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     917.47      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   28724.80       0.00    -917.78       0.00      -0.00     329.73
                            0.00       0.00    -952.88       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   39471.04      -0.00    1173.60       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00    1194.78      -0.00

    7   1.2  0.5 -0.5       0.00    2503.83       0.00       0.00    -917.78      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00   -2549.43       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    8   2.2  0.5 -0.5   -2503.83       0.00      -0.00     901.15       0.00    1173.60       0.00      73.50       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00   -2600.11       0.00

    9   3.2  0.5 -0.5      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00     137.98       0.00
                         2549.43       0.00      -0.00    -917.47      -0.00   -1194.78      -0.00    2600.11       0.00       0.00

   10   4.2  0.5 -0.5      -0.00    -901.15      -0.00       0.00     329.73       0.00       0.00       0.00       0.00   28725.42
                           -0.00      -0.00     917.47       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   11   5.2  0.5 -0.5     917.78      -0.00       0.00    -329.73       0.00    -429.22       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     952.88      -0.00

   12   6.2  0.5 -0.5       0.00   -1173.60      -0.00      -0.00     429.22       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    1194.78      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5     917.78       0.00
                            0.00       0.00

    2   2.2  0.5  0.5      -0.00   -1173.60
                           -0.00      -0.00

    3   3.2  0.5  0.5       0.00      -0.00
                           -0.00   -1194.78

    4   4.2  0.5  0.5    -329.73      -0.00
                           -0.00       0.00

    5   5.2  0.5  0.5       0.00     429.22
                            0.00       0.00

    6   6.2  0.5  0.5    -429.22       0.00
                           -0.00       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            0.00       0.00

    8   2.2  0.5 -0.5       0.00       0.00
                            0.00      -0.00

    9   3.2  0.5 -0.5       0.00       0.00
                         -952.88       0.00

   10   4.2  0.5 -0.5       0.00       0.00
                            0.00      -0.00

   11   5.2  0.5 -0.5   28724.80       0.00
                            0.00       0.00

   12   6.2  0.5 -0.5       0.00   39471.04
                           -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -172.37854127    -0.02343000    -5142.29      0.00000000        0.00      0.0000
     2  -172.37854127    -0.02343000    -5142.29      0.00000000        0.00      0.0000
     3  -172.34383990     0.01127138     2473.78      0.03470137     7616.07      0.9443
     4  -172.34383990     0.01127138     2473.78      0.03470137     7616.07      0.9443
     5  -172.34280212     0.01230916     2701.55      0.03573915     7843.84      0.9725
     6  -172.34280212     0.01230916     2701.55      0.03573915     7843.84      0.9725
     7  -172.22539163     0.12971965    28470.17      0.15314965    33612.46      4.1674
     8  -172.22539163     0.12971965    28470.17      0.15314965    33612.46      4.1674
     9  -172.22263280     0.13247848    29075.66      0.15590847    34217.95      4.2425
    10  -172.22263280     0.13247848    29075.66      0.15590847    34217.95      4.2425
    11  -172.17489064     0.18022063    39553.86      0.20365063    44696.15      5.5416
    12  -172.17489064     0.18022063    39553.86      0.20365063    44696.15      5.5416


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.540636348   0.191913188  -0.094516314   0.788587119  -0.024153825   0.196464729   0.017425777   0.001151182
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.023029757   0.064876844   0.199344367   0.023892514  -0.566482304  -0.069644801  -0.001141866   0.017284755
                        -0.191484255  -0.539428006   0.522422055   0.062615031  -0.150742105  -0.018532582   0.000149913  -0.002269280

    3    3.2  0.5  0.5   0.192376046   0.541940261  -0.208135991  -0.024946193  -0.199574134  -0.024536104  -0.000380391   0.005758082
                         0.023137095   0.065178963   0.079419960   0.009518895   0.749990944   0.092205893  -0.002897384   0.043858430

    4    4.2  0.5  0.5   0.029541966  -0.010486700  -0.003205518   0.026744872  -0.000902063   0.007337415   0.697946430   0.046107259
                        -0.000000008  -0.000000022  -0.000000013  -0.000000001   0.000000004   0.000000000  -0.000000004   0.000000066

    5    5.2  0.5  0.5  -0.001299853  -0.003661866   0.006682284   0.000800928  -0.020963701  -0.002577326  -0.046569792   0.704947811
                         0.010807989   0.030447057   0.017512277   0.002098939  -0.005578484  -0.000685832   0.006114116  -0.092551128

    6    6.2  0.5  0.5   0.029205704  -0.010367339  -0.002962115   0.024714112  -0.000831249   0.006761272   0.021076731   0.001392375
                         0.000000002   0.000000005   0.000000002   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000

    7    1.2  0.5 -0.5  -0.022916198  -0.064556947   0.281135330   0.033695548   0.189857747   0.023341547   0.001141388  -0.017277511
                         0.190540073   0.536768163   0.736771722   0.088305966   0.050521535   0.006211233  -0.000149850   0.002268328

    8    2.2  0.5 -0.5  -0.543315358   0.192864174   0.067018612  -0.559162749  -0.072068404   0.586195687   0.017433083   0.001151665
                        -0.000000001  -0.000000003   0.000000040   0.000000005  -0.000000041  -0.000000005   0.000000000  -0.000000000

    9    3.2  0.5 -0.5  -0.000000030  -0.000000084  -0.000000005  -0.000000001   0.000000071   0.000000009   0.000000000  -0.000000001
                         0.545845714  -0.193762402  -0.026700597   0.222773698  -0.095414606   0.776090363  -0.044234798  -0.002922248

   10    4.2  0.5 -0.5   0.001252187   0.003527590   0.009534682   0.001142795   0.007090663   0.000871727   0.045714950  -0.692008006
                        -0.010411672  -0.029330596   0.024987557   0.002994890   0.001886839   0.000231972  -0.006001888   0.090852288

   11    5.2  0.5 -0.5   0.030666473  -0.010885874   0.002246559  -0.018743873  -0.002667016   0.021693230   0.710997277   0.046969437
                        -0.000000007  -0.000000021   0.000000019   0.000000002  -0.000000000  -0.000000000  -0.000000004   0.000000065

   12    6.2  0.5 -0.5   0.001237960   0.003487428   0.008810707   0.001056007   0.006533895   0.000803295   0.001380528  -0.020897402
                        -0.010293161  -0.028996741   0.023090231   0.002767486   0.001738683   0.000213758  -0.000181246   0.002743576


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.021700810  -0.010053456  -0.004462369   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.009709426  -0.020958207   0.000000027  -0.001901362
                         0.000371514  -0.000801929   0.000000000  -0.028195127

    3    3.2  0.5  0.5   0.000026820  -0.000057893   0.000000000   0.027852785
                        -0.000700943   0.001513015   0.000000027  -0.001878276

    4    4.2  0.5  0.5   0.647315034   0.299884721   0.005864269  -0.000000002
                         0.000000008  -0.000000017   0.000000000  -0.000000027

    5    5.2  0.5  0.5  -0.293723468   0.634015741  -0.000000031   0.002534927
                        -0.011238832   0.024259493  -0.000000000   0.037590211

    6    6.2  0.5  0.5  -0.028391029  -0.013152876   0.998473015   0.000000065
                         0.000000000  -0.000000000  -0.000000000   0.000000964

    7    1.2  0.5 -0.5   0.010046105  -0.021684942   0.000000000  -0.000300242
                         0.000384397  -0.000829736   0.000000000  -0.004452257

    8    2.2  0.5 -0.5   0.020973543   0.009716531   0.028259164   0.000000002
                        -0.000000000  -0.000000000  -0.000000000   0.000000027

    9    3.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000027
                         0.001514122   0.000701456  -0.027916044  -0.000000002

   10    4.2  0.5 -0.5  -0.299665434   0.646841695   0.000000027   0.000394566
                        -0.011466190   0.024750256   0.000000000   0.005850980

   11    5.2  0.5 -0.5  -0.634479695  -0.293938406  -0.037675586  -0.000000002
                        -0.000000008   0.000000018   0.000000000  -0.000000031

   12    6.2  0.5 -0.5   0.013143259  -0.028370268  -0.000000966   0.067180278
                         0.000502904  -0.001085539   0.000000000   0.996210406


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  29.229%   3.683%   0.893%  62.187%   0.058%   3.860%   0.030%   0.000%   0.047%   0.010%
    2    2.2  0.5  0.5   3.720%  29.519%  31.266%   0.449%  34.363%   0.519%   0.000%   0.030%   0.009%   0.044%
    3    3.2  0.5  0.5   3.754%  29.795%   4.963%   0.071%  60.232%   0.910%   0.001%   0.196%   0.000%   0.000%
    4    4.2  0.5  0.5   0.087%   0.011%   0.001%   0.072%   0.000%   0.005%  48.713%   0.213%  41.902%   8.993%
    5    5.2  0.5  0.5   0.012%   0.094%   0.035%   0.001%   0.047%   0.001%   0.221%  50.552%   8.640%  40.256%
    6    6.2  0.5  0.5   0.085%   0.011%   0.001%   0.061%   0.000%   0.005%   0.044%   0.000%   0.081%   0.017%
    7    1.2  0.5 -0.5   3.683%  29.229%  62.187%   0.893%   3.860%   0.058%   0.000%   0.030%   0.010%   0.047%
    8    2.2  0.5 -0.5  29.519%   3.720%   0.449%  31.266%   0.519%  34.363%   0.030%   0.000%   0.044%   0.009%
    9    3.2  0.5 -0.5  29.795%   3.754%   0.071%   4.963%   0.910%  60.232%   0.196%   0.001%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.011%   0.087%   0.072%   0.001%   0.005%   0.000%   0.213%  48.713%   8.993%  41.902%
   11    5.2  0.5 -0.5   0.094%   0.012%   0.001%   0.035%   0.001%   0.047%  50.552%   0.221%  40.256%   8.640%
   12    6.2  0.5 -0.5   0.011%   0.085%   0.061%   0.001%   0.005%   0.000%   0.000%   0.044%   0.017%   0.081%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.002%   0.000%
    2    2.2  0.5  0.5   0.000%   0.080%
    3    3.2  0.5  0.5   0.000%   0.078%
    4    4.2  0.5  0.5   0.003%   0.000%
    5    5.2  0.5  0.5   0.000%   0.142%
    6    6.2  0.5  0.5  99.695%   0.000%
    7    1.2  0.5 -0.5   0.000%   0.002%
    8    2.2  0.5 -0.5   0.080%   0.000%
    9    3.2  0.5 -0.5   0.078%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.003%
   11    5.2  0.5 -0.5   0.142%   0.000%
   12    6.2  0.5 -0.5   0.000%  99.695%


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
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1378.39       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15542.34   6901.48   8619.59      8.12      2.67     10.31
 REAL TIME  *     15788.40 SEC
 DISK USED  *         1.44 GB (local),        9.69 GB (total)
 SF USED    *        13.61 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -172.174890642817

              CI           MULTI         RHF-SCF
   -172.10797666   -171.35989936   -171.33129124
 **********************************************************************************************************************************
 Molpro calculation terminated
