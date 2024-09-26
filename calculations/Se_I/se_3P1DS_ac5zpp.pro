
 Working directory              : /wrk/irikura/molpro.VWRdlW9g8t/
 Global scratch directory       : /wrk/irikura/molpro.VWRdlW9g8t/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.VWRdlW9g8t/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Se SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Se};
 
 basis=AWCV5Z-PP
 
 NT=3
 NS=6
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,6,3
     occ,7,6
     wf,charge=0,sym=PAR,spin=2;state,NT;
     wf,charge=0,sym=PAR,spin=0;state,NS;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=PAR,spin=2;state,NT; save,5302.2}
 hlsdiag = energd4
                                                                                 !hlsdiag(1) = energd
 {ci;wf,sym=PAR,spin=0;state,NS; save,5102.2}
 hlsdiag(NT+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Se SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-Sep-24          TIME: 11:40:59  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AWCV5Z-PP
 SETTING NT             =         3.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Se   ECP ECP10MDF                 selected for group  1
 Library entry SE     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SE     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SE     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SE     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SE     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SE     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SE     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  SE     24.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   24
 NUMBER OF PRIMITIVE AOS:         465
 NUMBER OF SYMMETRY AOS:          332
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

         1 0.492E-04 0.216E-03 0.632E-03 0.127E-02 0.127E-02 0.127E-02 0.127E-02 0.127E-02
         2 0.181E-04 0.181E-04 0.181E-04 0.680E-03 0.680E-03 0.680E-03 0.386E-02 0.386E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     550.502 MB (compressed) written to integral file ( 13.5%)

     Node minimum: 32.506 MB, node maximum: 55.837 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   26065404.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15978249      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   511790813. AND WROTE     4291441. INTEGRALS IN     13 RECORDS. CPU TIME:     2.10 SEC, REAL TIME:     2.17 SEC
 SORT2 READ    53580863. AND WROTE   312900871. INTEGRALS IN   1488 RECORDS. CPU TIME:     0.64 SEC, REAL TIME:     0.70 SEC

 Node minimum:    26062456.  Node maximum:    26096463. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.51      8.19
 REAL TIME  *         9.72 SEC
 DISK USED  *        30.87 MB (local),        1.43 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   6   7
 Initial beta  occupancy:   4   6

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -214.50561373    -214.50561373     0.00D+00     0.17D+00     0     0       0.15      0.27    start
   2     -328.12591969    -113.62030596     0.39D+00     0.24D+00     1     0       0.15      0.42    diag2
   3     -358.18905553     -30.06313585     0.41D+00     0.10D+00     2     0       0.14      0.56    diag2
   4     -370.03179091     -11.84273537     0.19D+00     0.72D-01     3     0       0.15      0.71    diag2
   5     -371.45392803      -1.42213712     0.65D-01     0.17D-01     4     0       0.15      0.86    diag2
   6     -371.54836033      -0.09443230     0.70D-02     0.39D-02     5     0       0.15      1.01    diag2
   7     -371.54905984      -0.00069951     0.13D-02     0.52D-03     6     0       0.14      1.15    diag2
   8     -371.54911139      -0.00005155     0.20D-03     0.11D-03     7     0       0.14      1.29    fixocc
   9     -371.54911778      -0.00000639     0.88D-04     0.28D-04     8     0       0.15      1.44    diag2
  10     -371.54911795      -0.00000017     0.10D-04     0.53D-05     9     0       0.15      1.59    diag2/orth
  11     -371.54911796      -0.00000001     0.22D-05     0.11D-05     9     0       0.15      1.74    diag2
  12     -371.54911796      -0.00000000     0.12D-06     0.20D-06     0     0       0.14      1.88    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -371.549117958017
  RHF One-electron energy            -646.955424678733
  RHF Two-electron energy             275.406306720716
  RHF Kinetic energy                  263.618042754579
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.409422185506

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -9.29360     1  1  s    1.00023
    2.1     2.00000    -2.97810     1  1  d0   1.00040
    3.1     2.00000    -2.97810     1  1  d1-  0.99431
    4.1     2.00000    -2.97810     1  1  d1+  0.99431
    5.1     2.00000    -2.97810     1  1  d2- -0.69165    1  1  d2+  0.72278
    6.1     2.00000    -2.97810     1  1  d2-  0.72278    1  1  d2+  0.69165
    7.1     2.00000    -1.19197     1  1  s   -0.40789    1  5  s    0.57956    1  6  s    0.49070
    1.2     2.00000    -7.17184     1  1  pz   1.00002
    2.2     2.00000    -7.17184     1  1  px   1.00002
    3.2     2.00000    -7.17184     1  1  py   1.00002
    4.2     1.00000    -0.78655     1  1  px  -0.28939    1  4  px   0.31909    1  5  px   0.52815    1  6  px   0.27378
    5.2     1.00000    -0.78655     1  1  py  -0.28939    1  4  py   0.31909    1  5  py   0.52815    1  6  py   0.27378
    6.2     1.00000    -0.78655     1  1  pz  -0.28939    1  4  pz   0.31908    1  5  pz   0.52814    1  6  pz   0.27379


 HOMO      6.2    -0.786550 =     -21.4031eV
 LUMO      8.1    -0.123416 =      -3.3583eV
 LUMO-HOMO         0.663134 =      18.0448eV

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
 CPU TIMES  *        10.40      1.89      8.19
 REAL TIME  *        11.71 SEC
 DISK USED  *        36.95 MB (local),        1.50 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     252 (  122  130)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.277D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.999D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.489D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.489D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 5 3 1 1 2 6   4 3 5 1 2 4 6 5 313  101415 812 911 7 5 3   6 4 2 113101514 812
                                        911 7 5 3 6 4 2 1 7  11 9 81215141310 2 6   4 5 3 1 7 911 81215  141310 2 4 6 3 52527
                                       28172123262419201822  16 1 711 912 8141513  10 2 4 6 5 3 1 2 4 6   5 3 711 9 812151413
                                       10 1 2 6 4 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.147D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.141D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.133D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.109D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.139D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.149D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 1 2 3 1   2 3 9 710 8 4 5 6 1   2 3 6 4 5 810 9 7 2   1 3 7 9 810 5 4 618
                                       20151714162113121119   6 5 4 810 9 7 1 2 3  19121121131416171520  18 6 5 410 8 9 7 3 2
                                        1191211211314161715  2018 6 4 510 8 9 7 3   2 1 6 5 410 8 9 719  11122113141615171820
                                        3 2 1 6 5 4 810 9 7   3 2 1 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1649  ( 15 closed/active, 1122 closed/virtual, 0 active/active, 512 active/virtual )
 Total number of variables:    1718
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -371.77474458    -371.81725154   -0.04250695    0.27280730 0.00001545 0.00000000  0.20E+00      1.14
   2    6   10    0   -371.81877474    -371.81893860   -0.00016387    0.01636774 0.00000167 0.00000000  0.13E-01      2.42
   3    4    8    0   -371.81893904    -371.81893904   -0.00000000    0.00007011 0.00000001 0.00000000  0.49E-04      3.56

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.11E-07)
                       Final energy:   -371.81893904
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -371.856413202817
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82779943
 One electron energy                          -655.66593300
 Two electron energy                           283.80951980
 Virial ratio                                    2.40946638
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -371.856413202733
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82779943
 One electron energy                          -655.66593301
 Two electron energy                           283.80951981
 Virial ratio                                    2.40946638
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -371.856413202579
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82779943
 One electron energy                          -655.66593303
 Two electron energy                           283.80951982
 Virial ratio                                    2.40946638
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -371.807709724260
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82779942
 One electron energy                          -655.66593300
 Two electron energy                           283.85822328
 Virial ratio                                    2.40928178
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -371.807709724240
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82779943
 One electron energy                          -655.66593300
 Two electron energy                           283.85822328
 Virial ratio                                    2.40928178
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -371.807709724195
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82779943
 One electron energy                          -655.66593301
 Two electron energy                           283.85822329
 Virial ratio                                    2.40928178
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -371.807709724107
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82779943
 One electron energy                          -655.66593303
 Two electron energy                           283.85822330
 Virial ratio                                    2.40928178
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -371.807709724104
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82779943
 One electron energy                          -655.66593303
 Two electron energy                           283.85822330
 Virial ratio                                    2.40928178
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -371.762663134735
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82241128
 One electron energy                          -655.51502918
 Two electron energy                           283.75236605
 Virial ratio                                    2.40913981
 
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
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.525290785875
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.474705866927
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.357674210520
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.642330880939
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.117035003604
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.882963252133
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 5 6 1 1 4 2   3 5 6 1 4 2 3 5 6 9   7 8121415131011 4 2   5 3 6 1 9 7 8121415
                                       131011 4 2 3 5 6 1 9   7 8121415131011 4 2   5 3 6 1 9 7 8121415  131011 4 2 5 3 62825
                                       17212326241918202216  27 1 9 7 81215141310  11 4 2 5 3 6 1 4 2 5   3 6 9 7 81215141310
                                       11 1 4 2 5 3 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 1   3 2 4 6 810 7 9 5 1   3 2 4 6 810 7 9 5 1   3 2 4 6 810 7 9 511
                                       19211314161517201812   4 6 810 7 9 5 1 3 2  11192113141617152018  12 4 6 810 7 9 5 1 3
                                        2111921131416151720  1812 4 610 8 7 9 5 1   3 2 4 610 8 7 9 511  19211314161517121820
                                        1 3 2 4 610 8 7 9 5   1 3 2 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.92125     1  1  s    1.00117
    2.1     2.00000    -2.60675     1  1  d1+  1.00005
    3.1     2.00000    -2.60675     1  1  d0   1.00005
    4.1     2.00000    -2.60675     1  1  d2-  1.00005
    5.1     2.00000    -2.60675     1  1  d2+  1.00005
    6.1     2.00000    -2.60675     1  1  d1-  1.00005
    7.1     1.99363    -0.86314     1  1  s   -0.39055    1  5  s    0.51108    1  6  s    0.49585
    1.2     2.00000    -6.80074     1  1  px   0.99986
    2.2     2.00000    -6.80074     1  1  pz   0.99986
    3.2     2.00000    -6.80074     1  1  py   0.99986
    4.2     1.33546    -0.26688     1  1  py  -0.26545    1  4  py   0.27560    1  5  py   0.43701    1  6  py   0.34985
    5.2     1.33546    -0.26688     1  1  pz  -0.26545    1  4  pz   0.27560    1  5  pz   0.43701    1  6  pz   0.34985
    6.2     1.33546    -0.26688     1  1  px  -0.26545    1  4  px   0.27560    1  5  px   0.43701    1  6  px   0.34985
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa         -0.00000000      1.00000000     -0.00000000
 2 a2a          0.00000000      0.00000000      1.00000000
 2 aa2          1.00000000      0.00000000     -0.00000000
 
 Energy:     -371.85641320   -371.85641320   -371.85641320
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202          0.80446307      0.00000000      0.00000000      0.00000000     -0.13966329      0.56901264
 2 220         -0.28127958     -0.00000000      0.00000000      0.00000000      0.76651710      0.56901265
 2 2ab         -0.00000000      0.00000000      0.70710678     -0.00000000     -0.00000000      0.00000000
 2 2ba          0.00000000     -0.00000000     -0.70710678      0.00000000      0.00000000     -0.00000000
 2 a2b         -0.00000000     -0.00000000      0.00000000      0.70710678     -0.00000000     -0.00000000
 2 ab2         -0.00000000      0.70710678     -0.00000000      0.00000000      0.00000000     -0.00000000
 2 b2a          0.00000000      0.00000000     -0.00000000     -0.70710678      0.00000000      0.00000000
 2 ba2          0.00000000     -0.70710678      0.00000000     -0.00000000     -0.00000000      0.00000000
 2 022         -0.52318349     -0.00000000     -0.00000000     -0.00000000     -0.62685381      0.56901265
 0 222         -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.16933348
 
 Energy:     -371.80770972   -371.80770972   -371.80770972   -371.80770972   -371.80770972   -371.76266313
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        14.41      4.00      1.89      8.19
 REAL TIME  *        16.35 SEC
 DISK USED  *        71.78 MB (local),        1.91 GB (total)
 SF USED    *        94.48 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -371.8564132   2.0
    -371.8564132   2.0
    -371.8564132   2.0
    -371.8077097   6.0
    -371.8077097   6.0
    -371.8077097   6.0
    -371.8077097   6.0
    -371.8077097   6.0
    -371.7626631  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 24
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:       78 conf       78 CSFs
 N-1 el internal:      232 conf      564 CSFs
 N-2 el internal:      241 conf     1587 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     252 ( 122 130 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -371.85641320
     2      -371.85641320
     3      -371.85641320

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         71136
 Number of doubly external configurations:       7813824
 Total number of contracted configurations:      7884996
 Total number of uncontracted configurations:   25232430

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1981079 words, CPU-time:      0.93 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -371.85641320     0.00000000    -1.19158144  0.30D-01  0.89D-01     1.17
    1     2     2     1.00000000     0.00000000  -371.85641320     0.00000000    -1.19133786  0.29D-01  0.89D-01     1.17
    1     3     3     1.00000000     0.00000000  -371.85641320     0.00000000    -1.19154152  0.29D-01  0.89D-01     1.17
    2     1     1     1.08303742    -0.99893402  -372.85534722    -0.99893402    -0.02599474  0.29D-02  0.22D-02    25.69
    2     2     2     1.08318678    -0.99878268  -372.85519589    -0.99878268    -0.02615445  0.30D-02  0.22D-02    25.69
    2     3     3     1.08322845    -0.99875507  -372.85516827    -0.99875507    -0.02617274  0.30D-02  0.21D-02    25.69
    3     1     1     1.06463627    -1.02373405  -372.88014726    -0.02480004    -0.00041839  0.33D-04  0.42D-04    50.02
    3     2     2     1.06462504    -1.02373390  -372.88014711    -0.02495122    -0.00041844  0.33D-04  0.42D-04    50.02
    3     3     3     1.06463090    -1.02373314  -372.88014634    -0.02497807    -0.00041914  0.33D-04  0.42D-04    50.02
    4     1     1     1.06343216    -1.02414517  -372.88055838    -0.00041112    -0.00001421  0.17D-05  0.10D-05    74.43
    4     2     2     1.06343108    -1.02414515  -372.88055835    -0.00041125    -0.00001424  0.17D-05  0.10D-05    74.43
    4     3     3     1.06343280    -1.02414514  -372.88055834    -0.00041200    -0.00001424  0.17D-05  0.10D-05    74.43
    5     1     1     1.06342537    -1.02415898  -372.88057219    -0.00001381    -0.00000049  0.65D-07  0.38D-07    98.67
    5     2     2     1.06342544    -1.02415898  -372.88057219    -0.00001383    -0.00000049  0.65D-07  0.38D-07    98.67
    5     3     3     1.06342545    -1.02415898  -372.88057219    -0.00001384    -0.00000049  0.65D-07  0.38D-07    98.67
    6     1     1     1.06342719    -1.02415947  -372.88057267    -0.00000049    -0.00000002  0.13D-08  0.17D-08   123.00
    6     2     2     1.06342721    -1.02415947  -372.88057267    -0.00000049    -0.00000002  0.14D-08  0.17D-08   123.00
    6     3     3     1.06342716    -1.02415947  -372.88057267    -0.00000049    -0.00000002  0.14D-08  0.17D-08   123.00


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.2%
 P   0.5%   7.5%  22.9%

 Initialization:   0.8%
 Other:           68.0%

 Total CPU:      123.0 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/           0.0000000   0.0000000   0.9697176
 2222222222//2           0.9697175   0.0000000   0.0000000
 22222222222//           0.0000000   0.9697175   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969718    0.000000    0.000000
 2           0.000000    0.969718    0.000000
 3           0.000000    0.000000    0.969718

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969718    0.000000    0.000000
 2           0.000000    0.969718    0.000000
 3           0.000000    0.000000    0.969718


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96971754 (fixed)   0.96971754 (relaxed)   0.96971754 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000400   -0.00001856   -0.92760352
 Singles      0.01002672   -0.03772082   -0.04512714
 Pairs        0.05340072    0.00000000   -0.05142881
 Total        1.06343144   -0.03773938   -1.02415947
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.85641320
 Nuclear energy                         0.00000000
 Kinetic energy                       264.38961919
 One electron energy                 -654.85266309
 Two electron energy                  281.97209041
 Virial quotient                       -1.41034498
 Correlation energy                    -1.02415947
 !MRCI STATE 1.1 Energy              -372.880572674851

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.94553658 (Davidson, fixed reference)
 Cluster corrected energies          -372.94553658 (Davidson, relaxed reference)
 Cluster corrected energies          -372.94553658 (Davidson, rotated reference)

 Cluster corrected energies          -372.94284055 (Pople, fixed reference)
 Cluster corrected energies          -372.94284055 (Pople, relaxed reference)
 Cluster corrected energies          -372.94284055 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96971753 (fixed)   0.96971753 (relaxed)   0.96971753 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000400   -0.00001856   -0.92760340
 Singles      0.01002679   -0.03772093   -0.04512721
 Pairs        0.05340067   -0.00000000   -0.05142886
 Total        1.06343146   -0.03773948   -1.02415947
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.85641320
 Nuclear energy                         0.00000000
 Kinetic energy                       264.38962279
 One electron energy                 -654.85266432
 Two electron energy                  281.97209165
 Virial quotient                       -1.41034496
 Correlation energy                    -1.02415947
 !MRCI STATE 2.1 Energy              -372.880572674770

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.94553661 (Davidson, fixed reference)
 Cluster corrected energies          -372.94553661 (Davidson, relaxed reference)
 Cluster corrected energies          -372.94553661 (Davidson, rotated reference)

 Cluster corrected energies          -372.94284057 (Pople, fixed reference)
 Cluster corrected energies          -372.94284057 (Pople, relaxed reference)
 Cluster corrected energies          -372.94284057 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96971755 (fixed)   0.96971755 (relaxed)   0.96971755 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000400   -0.00001856   -0.00002130
 Singles      0.01002672   -0.03772082   -0.04512715
 Pairs        0.05340069   -0.98642009   -0.97901102
 Total        1.06343141   -1.02415947   -1.02415947
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.85641320
 Nuclear energy                         0.00000000
 Kinetic energy                       264.38961873
 One electron energy                 -654.85266221
 Two electron energy                  281.97208953
 Virial quotient                       -1.41034498
 Correlation energy                    -1.02415947
 !MRCI STATE 3.1 Energy              -372.880572674748

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.94553656 (Davidson, fixed reference)
 Cluster corrected energies          -372.94553656 (Davidson, relaxed reference)
 Cluster corrected energies          -372.94553656 (Davidson, rotated reference)

 Cluster corrected energies          -372.94284052 (Pople, fixed reference)
 Cluster corrected energies          -372.94284052 (Pople, relaxed reference)
 Cluster corrected energies          -372.94284052 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      186.71       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       139.66    125.23      4.00      1.89      8.19
 REAL TIME  *       150.30 SEC
 DISK USED  *       255.66 MB (local),        4.07 GB (total)
 SF USED    *         1.76 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -372.94553658  AU                              
 SETTING HLSDIAG(2)     =      -372.94553661  AU                              
 SETTING HLSDIAG(3)     =      -372.94553656  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 24
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       91 conf       91 CSFs
 N-1 el internal:      286 conf      488 CSFs
 N-2 el internal:      478 conf     1349 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     252 ( 122 130 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -371.80770972
     2      -371.80770972
     3      -371.80770972
     4      -371.80770972
     5      -371.80770972
     6      -371.76266313

 Number of blocks in overlap matrix:   684   Smallest eigenvalue:  0.20D-01
 Number of N-2 electron functions:     826
 Number of N-1 electron functions:     488

 Number of internal configurations:                   49
 Number of singly external configurations:         61520
 Number of doubly external configurations:      13121552
 Total number of contracted configurations:     13183121
 Total number of uncontracted configurations:   21475495

 Diagonal Coupling coefficients finished.               Storage:    441505 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2098431 words, CPU-time:      1.26 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -371.80770972    -0.00000000    -1.19404052  0.31D-01  0.86D-01     2.24
    1     2     2     1.00000000     0.00000000  -371.80770972     0.00000000    -1.19550618  0.31D-01  0.87D-01     2.24
    1     3     3     1.00000000     0.00000000  -371.80770972     0.00000000    -1.19643022  0.31D-01  0.87D-01     2.24
    1     4     4     1.00000000     0.00000000  -371.80770972    -0.00000000    -1.19552381  0.31D-01  0.87D-01     2.24
    1     5     5     1.00000000     0.00000000  -371.80770972    -0.00000000    -1.19453798  0.31D-01  0.86D-01     2.24
    1     6     6     1.00000000     0.00000000  -371.76266313    -0.00000000    -1.17450767  0.53D-02  0.98D-01     2.24
    2     1     1     1.08309900    -1.00757544  -372.81528517    -1.00757544    -0.02481346  0.28D-02  0.18D-02    95.49
    2     2     2     1.08294623    -1.00750627  -372.81521599    -1.00750627    -0.02497085  0.29D-02  0.17D-02    95.49
    2     3     3     1.08328417    -1.00738857  -372.81509830    -1.00738857    -0.02504668  0.28D-02  0.18D-02    95.49
    2     4     4     1.08334729    -1.00726402  -372.81497374    -1.00726402    -0.02520735  0.28D-02  0.18D-02    95.49
    2     5     5     1.08361937    -1.00694562  -372.81465534    -1.00694562    -0.02557325  0.29D-02  0.19D-02    95.49
    2     6     6     1.07531615    -1.00399943  -372.76666257    -1.00399943    -0.02041896  0.12D-02  0.20D-02    95.49
    3     1     1     1.06735638    -1.03085696  -372.83856668    -0.02328152    -0.00047839  0.34D-04  0.57D-04   188.29
    3     2     2     1.06732221    -1.03085694  -372.83856667    -0.02335068    -0.00047584  0.35D-04  0.57D-04   188.29
    3     3     3     1.06732195    -1.03085221  -372.83856194    -0.02346364    -0.00048172  0.35D-04  0.58D-04   188.29
    3     4     4     1.06736239    -1.03085071  -372.83856044    -0.02358670    -0.00048501  0.35D-04  0.58D-04   188.29
    3     5     5     1.06736867    -1.03084483  -372.83855455    -0.02389921    -0.00049161  0.35D-04  0.59D-04   188.29
    3     6     6     1.06413810    -1.02329446  -372.78595759    -0.01929502    -0.00038933  0.15D-04  0.57D-04   188.29
    4     1     1     1.06596161    -1.03133318  -372.83904290    -0.00047622    -0.00001608  0.16D-05  0.14D-05   281.38
    4     2     2     1.06596313    -1.03133310  -372.83904282    -0.00047615    -0.00001614  0.16D-05  0.14D-05   281.38
    4     3     3     1.06596616    -1.03133308  -372.83904281    -0.00048087    -0.00001629  0.16D-05  0.14D-05   281.38
    4     4     4     1.06596816    -1.03133300  -372.83904272    -0.00048228    -0.00001636  0.16D-05  0.14D-05   281.38
    4     5     5     1.06596924    -1.03133293  -372.83904266    -0.00048811    -0.00001642  0.16D-05  0.14D-05   281.38
    4     6     6     1.06292404    -1.02368771  -372.78635085    -0.00039325    -0.00001354  0.14D-05  0.12D-05   281.38
    5     1     1     1.06588571    -1.03134948  -372.83905921    -0.00001631    -0.00000052  0.49D-07  0.46D-07   374.42
    5     2     2     1.06588556    -1.03134948  -372.83905920    -0.00001638    -0.00000053  0.49D-07  0.46D-07   374.42
    5     3     3     1.06588728    -1.03134947  -372.83905919    -0.00001638    -0.00000055  0.53D-07  0.47D-07   374.42
    5     4     4     1.06588764    -1.03134946  -372.83905919    -0.00001647    -0.00000055  0.54D-07  0.47D-07   374.42
    5     5     5     1.06588705    -1.03134946  -372.83905919    -0.00001653    -0.00000055  0.53D-07  0.48D-07   374.42
    5     6     6     1.06288824    -1.02370138  -372.78636451    -0.00001367    -0.00000049  0.49D-07  0.40D-07   374.42
    6     1     1     1.06588343    -1.03135001  -372.83905973    -0.00000052    -0.00000002  0.13D-08  0.23D-08   467.69
    6     2     2     1.06588337    -1.03135000  -372.83905973    -0.00000052    -0.00000002  0.12D-08  0.24D-08   467.69
    6     3     3     1.06588369    -1.03135000  -372.83905973    -0.00000054    -0.00000002  0.13D-08  0.25D-08   467.69
    6     4     4     1.06588352    -1.03135000  -372.83905973    -0.00000054    -0.00000002  0.14D-08  0.25D-08   467.69
    6     5     5     1.06588357    -1.03135000  -372.83905973    -0.00000054    -0.00000002  0.14D-08  0.26D-08   467.69
    6     6     6     1.06289214    -1.02370185  -372.78636499    -0.00000047    -0.00000002  0.12D-08  0.16D-08   467.69


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.6%   6.3%  28.5%

 Initialization:   0.3%
 Other:           64.3%

 Total CPU:      467.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/\           0.0000000   0.0000000   0.0000000   0.9685706  -0.0000000   0.0000000
 2222222222/2\           0.0000000   0.0000000  -0.0000000   0.0000000   0.9685706  -0.0000000
 2222222222/\2           0.0000000  -0.0000000   0.9685706   0.0000000  -0.0000000  -0.0000000
 2222222222022          -0.1086778   0.7833318   0.0000000  -0.0000000   0.0000000   0.5525998
 2222222222202           0.7327241  -0.2975481   0.0000000  -0.0000000   0.0000000   0.5525998
 2222222222220          -0.6240462  -0.4857836   0.0000000  -0.0000000   0.0000000   0.5525997
 2222220222222          -0.0000001   0.0000004  -0.0000000   0.0000000  -0.0000000  -0.1571742

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.821832    0.000000    0.000000    0.000000   -0.512564    0.000000
 2          -0.512564   -0.000000    0.000000    0.000000   -0.821832    0.000000
 3           0.000000    0.968571    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.968571    0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.968571    0.000000    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.969924

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968571    0.000000    0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.968571   -0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.968571    0.000000   -0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.968571   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.968571    0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.969924


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.82183151 (fixed)   0.96857068 (relaxed)   0.96857068 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006367   -0.00024965   -0.92875022
 Singles      0.01150190   -0.04141308   -0.04998016
 Pairs        0.05438572   -0.00000009   -0.05261962
 Total        1.06595130   -0.04166282   -1.03135001
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80770972
 Nuclear energy                         0.00000000
 Kinetic energy                       264.39006811
 One electron energy                 -654.79802088
 Two electron energy                  281.95896115
 Virial quotient                       -1.41018557
 Correlation energy                    -1.03135001
 !MRCI STATE 1.1 Energy              -372.839059729355

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.90707860 (Davidson, fixed reference)
 Cluster corrected energies          -372.90707860 (Davidson, relaxed reference)
 Cluster corrected energies          -372.90707860 (Davidson, rotated reference)

 Cluster corrected energies          -372.90501187 (Pople, fixed reference)
 Cluster corrected energies          -372.90501187 (Pople, relaxed reference)
 Cluster corrected energies          -372.90501187 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.82183154 (fixed)   0.96857071 (relaxed)   0.96857071 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006367   -0.00024965   -0.92875029
 Singles      0.01150195   -0.04141312   -0.04998021
 Pairs        0.05438561   -0.00000003   -0.05261950
 Total        1.06595124   -0.04166281   -1.03135000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80770972
 Nuclear energy                         0.00000000
 Kinetic energy                       264.39005391
 One electron energy                 -654.79802190
 Two electron energy                  281.95896217
 Virial quotient                       -1.41018565
 Correlation energy                    -1.03135000
 !MRCI STATE 2.1 Energy              -372.839059729066

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.90707854 (Davidson, fixed reference)
 Cluster corrected energies          -372.90707854 (Davidson, relaxed reference)
 Cluster corrected energies          -372.90707854 (Davidson, rotated reference)

 Cluster corrected energies          -372.90501181 (Pople, fixed reference)
 Cluster corrected energies          -372.90501181 (Pople, relaxed reference)
 Cluster corrected energies          -372.90501181 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96857056 (fixed)   0.96857056 (relaxed)   0.96857056 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006367   -0.00024965   -0.92874980
 Singles      0.01150221   -0.04141338   -0.04998058
 Pairs        0.05438568   -0.00000000   -0.05261963
 Total        1.06595156   -0.04166303   -1.03135000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80770972
 Nuclear energy                         0.00000000
 Kinetic energy                       264.39004867
 One electron energy                 -654.79802943
 Two electron energy                  281.95896970
 Virial quotient                       -1.41018568
 Correlation energy                    -1.03135000
 !MRCI STATE 3.1 Energy              -372.839059728175

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.90707887 (Davidson, fixed reference)
 Cluster corrected energies          -372.90707887 (Davidson, relaxed reference)
 Cluster corrected energies          -372.90707887 (Davidson, rotated reference)

 Cluster corrected energies          -372.90501215 (Pople, fixed reference)
 Cluster corrected energies          -372.90501215 (Pople, relaxed reference)
 Cluster corrected energies          -372.90501215 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96857064 (fixed)   0.96857064 (relaxed)   0.96857064 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006367   -0.00024965   -0.92875006
 Singles      0.01150213   -0.04141327   -0.04998055
 Pairs        0.05438558    0.00000000   -0.05261940
 Total        1.06595138   -0.04166292   -1.03135000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80770972
 Nuclear energy                         0.00000000
 Kinetic energy                       264.39008404
 One electron energy                 -654.79805634
 Two electron energy                  281.95899661
 Virial quotient                       -1.41018549
 Correlation energy                    -1.03135000
 !MRCI STATE 4.1 Energy              -372.839059728115

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.90707869 (Davidson, fixed reference)
 Cluster corrected energies          -372.90707869 (Davidson, relaxed reference)
 Cluster corrected energies          -372.90707869 (Davidson, rotated reference)

 Cluster corrected energies          -372.90501196 (Pople, fixed reference)
 Cluster corrected energies          -372.90501196 (Pople, relaxed reference)
 Cluster corrected energies          -372.90501196 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96857062 (fixed)   0.96857062 (relaxed)   0.96857062 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006367   -0.00024965   -0.92874994
 Singles      0.01150220   -0.04141334   -0.04998058
 Pairs        0.05438556   -0.00000000   -0.05261949
 Total        1.06595144   -0.04166299   -1.03135000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80770972
 Nuclear energy                         0.00000000
 Kinetic energy                       264.39007159
 One electron energy                 -654.79804867
 Two electron energy                  281.95898895
 Virial quotient                       -1.41018555
 Correlation energy                    -1.03135000
 !MRCI STATE 5.1 Energy              -372.839059727886

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.90707874 (Davidson, fixed reference)
 Cluster corrected energies          -372.90707874 (Davidson, relaxed reference)
 Cluster corrected energies          -372.90707874 (Davidson, rotated reference)

 Cluster corrected energies          -372.90501202 (Pople, fixed reference)
 Cluster corrected energies          -372.90501202 (Pople, relaxed reference)
 Cluster corrected energies          -372.90501202 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96992365 (fixed)   0.96995015 (relaxed)   0.96992365 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008221   -0.00014338   -0.00021406
 Singles      0.00302838   -0.01880774   -0.02060952
 Pairs        0.05986894   -1.00475073   -1.00287827
 Total        1.06297953   -1.02370185   -1.02370185
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.76266313
 Nuclear energy                         0.00000000
 Kinetic energy                       264.40591132
 One electron energy                 -654.63173508
 Two electron energy                  281.84537009
 Virial quotient                       -1.40990178
 Correlation energy                    -1.02370185
 !MRCI STATE 6.1 Energy              -372.786364985656

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.85083724 (Davidson, fixed reference)
 Cluster corrected energies          -372.85077778 (Davidson, relaxed reference)
 Cluster corrected energies          -372.85083724 (Davidson, rotated reference)

 Cluster corrected energies          -372.84871704 (Pople, fixed reference)
 Cluster corrected energies          -372.84865640 (Pople, relaxed reference)
 Cluster corrected energies          -372.84871704 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      794.87       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       621.91    482.24    125.23      4.00      1.89      8.19
 REAL TIME  *       664.14 SEC
 DISK USED  *       863.83 MB (local),       11.19 GB (total)
 SF USED    *         5.68 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -372.90707860  AU                              
 SETTING HLSDIAG(5)     =      -372.90707854  AU                              
 SETTING HLSDIAG(6)     =      -372.90707887  AU                              
 SETTING HLSDIAG(7)     =      -372.90707869  AU                              
 SETTING HLSDIAG(8)     =      -372.90707874  AU                              
 SETTING HLSDIAG(9)     =      -372.85083724  AU                              


         HLSDIAG
    -372.9455366
    -372.9455366
    -372.9455366
    -372.9070786
    -372.9070785
    -372.9070789
    -372.9070787
    -372.9070787
    -372.8508372
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -372.880573   -372.880573   -372.880573
 Replaced energies:   -372.945537   -372.945537   -372.945537

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -372.839060   -372.839060   -372.839060   -372.839060   -372.839060   -372.786365
 Replaced energies:   -372.907079   -372.907079   -372.907079   -372.907079   -372.907079   -372.850837



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -372.94553661

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00      -0.00     651.24       0.00       0.00       0.00       0.00
                            0.00     920.99      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     596.59

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00     103.90
                         -920.99       0.00       0.00      -0.00       0.00    -651.24       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01    -651.24      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00     651.24       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00    -651.24       0.01       0.00       0.00       0.00      -0.00     651.24       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

    5   2.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00    -651.24      -0.00       0.00       0.00      -0.00       0.00    -651.24       0.00

    6   3.1  1.0  0.0     651.24       0.00      -0.00       0.00       0.00       0.01    -651.24      -0.00      -0.00       0.00
                            0.00     651.24      -0.00      -0.00      -0.00       0.00       0.00     651.24       0.00    -990.64

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00    -651.24       0.01       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -920.99       0.00    -596.59

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     103.90
                           -0.00      -0.00      -0.00      -0.00      -0.00    -651.24     920.99      -0.00      -0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00     651.24       0.00      -0.00       0.00       0.00       0.01       0.00
                           -0.00      -0.00      -0.00       0.00     651.24      -0.00      -0.00       0.00       0.00      -0.00

   10   1.1  0.0  0.0       0.00     103.90       0.00       0.00       0.00       0.00       0.00     103.90       0.00    8440.56
                         -596.59      -0.00      -0.00      -0.00      -0.00     990.64     596.59       0.00       0.00       0.00

   11   2.1  0.0  0.0       0.00    -748.87      -0.00       0.00       0.00       0.00       0.00    -748.87      -0.00       0.00
                         -464.41      -0.00      -0.00      -0.00       0.00    -402.28     464.41       0.00       0.00      -0.00

   12   3.1  0.0  0.0       0.00       0.00    -654.75       0.00       0.00       0.00       0.00       0.00    -654.75       0.00
                           -0.00      -0.00      -0.00      -0.00     925.96      -0.00       0.00       0.00       0.00      -0.00

   13   4.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00     654.76     925.96      -0.00       0.00      -0.00      -0.00    -654.76      -0.00

   14   5.1  0.0  0.0     654.75       0.00       0.00       0.00       0.00       0.00     654.75       0.00       0.00       0.00
                           -0.00    -654.76      -0.00      -0.00      -0.00      -0.00       0.00     654.76       0.00      -0.00

   15   6.1  0.0  0.0      -0.00    1061.17       0.00       0.00       0.00       0.00      -0.00    1061.17       0.00       0.00
                        -1061.17       0.00       0.00       0.00      -0.00   -1500.72    1061.17      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00       0.00      -0.00     654.75      -0.00
                          464.41       0.00      -0.00       0.00    1061.17

    2   2.1  1.0  1.0    -748.87       0.00      -0.00       0.00    1061.17
                            0.00       0.00      -0.00     654.76      -0.00

    3   3.1  1.0  1.0      -0.00    -654.75       0.00       0.00       0.00
                            0.00       0.00    -654.76       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -925.96       0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00    -925.96       0.00       0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          402.28       0.00      -0.00       0.00    1500.72

    7   1.1  1.0 -1.0       0.00       0.00      -0.00     654.75      -0.00
                         -464.41      -0.00       0.00      -0.00   -1061.17

    8   2.1  1.0 -1.0    -748.87       0.00      -0.00       0.00    1061.17
                           -0.00      -0.00       0.00    -654.76       0.00

    9   3.1  1.0 -1.0      -0.00    -654.75       0.00       0.00       0.00
                           -0.00      -0.00     654.76      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    8440.57       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    8440.50       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    8440.54       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    8440.53       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   20784.11
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -372.94553661 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.005       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000     920.989

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -920.989    -920.989       0.000

    3    1  |1 1>+              0.000       0.000       0.012       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     920.989       0.000       0.000      -0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.005       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000    -920.989      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.012     920.989       0.000
                                0.000     920.989       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000     920.989       0.005       0.000
                                0.000     920.989      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -920.989       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000    -920.989      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000     146.932       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     990.639    -843.708      -0.000

    2    1  |0 0>               0.000   -1059.063      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -402.284    -656.778      -0.000

    3    1  |0 0>               0.000       0.000    -925.962       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     925.964      -0.000      -0.000      -0.000

    4    1  |0 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     925.964      -0.000       0.000       0.000       0.000

    5    1  |0 0>             925.963       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000    -925.964

    6    1  |0 0>              -0.000    1500.724       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000   -1500.724   -1500.723       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000     925.963      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000     146.932   -1059.063       0.000      -0.000       0.000    1500.724
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      -0.000    -925.962       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            -920.989       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -925.964       0.000      -0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -925.964       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -990.639     402.284       0.000      -0.000       0.000    1500.724

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     843.708     656.778       0.000      -0.000       0.000    1500.723

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     925.964      -0.000

    3    1  |1 1>-              0.012       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -925.964       0.000      -0.000

    1    1  |0 0>               0.000    8440.557       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    8440.571       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    8440.498       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    8440.538       0.000       0.000
                              925.964      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    8440.526       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   20784.109
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -372.95055183    -0.00501522    -1100.71      0.00000000        0.00      0.0000
    2  -372.95055182    -0.00501521    -1100.71      0.00000001        0.00      0.0000
    3  -372.95055181    -0.00501520    -1100.71      0.00000001        0.00      0.0000
    4  -372.95055180    -0.00501519    -1100.71      0.00000003        0.01      0.0000
    5  -372.95055179    -0.00501518    -1100.70      0.00000004        0.01      0.0000
    6  -372.94134026     0.00419635      920.99      0.00921157     2021.71      0.2507
    7  -372.94134025     0.00419636      920.99      0.00921158     2021.71      0.2507
    8  -372.94134024     0.00419637      921.00      0.00921159     2021.71      0.2507
    9  -372.93873962     0.00679699     1491.77      0.01181221     2592.48      0.3214
   10  -372.90625997     0.03927663     8620.22      0.04429185     9720.94      1.2052
   11  -372.90625985     0.03927676     8620.25      0.04429198     9720.97      1.2052
   12  -372.90625979     0.03927682     8620.26      0.04429204     9720.98      1.2052
   13  -372.90625972     0.03927689     8620.28      0.04429211     9720.99      1.2052
   14  -372.90625965     0.03927696     8620.30      0.04429217     9721.01      1.2053
   15  -372.84924153     0.09629507    21134.33      0.10131029    22235.04      2.7568

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.70053862  0.00000000  0.00000000 -0.00000001 -0.00000000  0.70710774  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000001  0.77275025 -0.00000002 -0.00000000 -0.23916453  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000001  0.70053750  0.00000000 -0.00000000 -0.00000000  0.70710882  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000000 -0.00000000  0.70054069  0.00000000  0.00000000  0.00000000 -0.70710568

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000001  0.70054161  0.00000000 -0.00000000  0.00000000 -0.70710474 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.17925213  0.00000000 -0.00000000  0.78880184 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.59349596  0.00000001  0.00000000 -0.54963959  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.70054055  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.70710582 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000 -0.00000000  0.70053848  0.00000000 -0.00000000 -0.00000000  0.70710788

   1    1  |0 0>           0.00000000  0.02196993 -0.00000000 -0.00000000  0.13418500  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.13418493 -0.00000000 -0.00000000 -0.02197000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.13597305  0.00000000 -0.00000000  0.00000000  0.00000035  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.13597269  0.00000000 -0.00000000 -0.00000000  0.00000020
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.13597272 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000011 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000018 -0.00000000  0.00000000  0.00000013  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.00000000 -0.00000000  0.09614718 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.57217889  0.00000000  0.00000000  0.00000000  0.01453665 -0.11006455  0.07709197
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.09614743 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.09614722  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.09614750 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.57218145 -0.00000000 -0.00000000 -0.00000000 -0.10258706  0.04244323  0.07709201

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.57218021 -0.00000000  0.00000000  0.00000000  0.08805040  0.06762133  0.07709194

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.09614729 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.09614720  0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>           0.00000016 -0.00000000  0.00000000  0.00000000  0.99069151 -0.00648341 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000020 -0.00000000 -0.00000000 -0.00000000  0.00648342  0.99069152 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.99071254  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000001  0.99071259 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.99071258 -0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.13352721 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000001  0.99104515
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -372.95055183     -0.00501522    -1100.71      0.00000000        0.00      0.0000
     2   1   -372.95055182     -0.00501521    -1100.71      0.00000001        0.00      0.0000
     3   1   -372.95055181     -0.00501520    -1100.71      0.00000001        0.00      0.0000
     4   1   -372.95055180     -0.00501519    -1100.71      0.00000003        0.01      0.0000
     5   1   -372.95055179     -0.00501518    -1100.70      0.00000004        0.01      0.0000
     6   1   -372.94134026      0.00419635      920.99      0.00921157     2021.71      0.2507
     7   1   -372.94134025      0.00419636      920.99      0.00921158     2021.71      0.2507
     8   1   -372.94134024      0.00419637      921.00      0.00921159     2021.71      0.2507
     9   1   -372.93873962      0.00679699     1491.77      0.01181221     2592.48      0.3214
    10   1   -372.90625997      0.03927663     8620.22      0.04429185     9720.94      1.2052
    11   1   -372.90625985      0.03927676     8620.25      0.04429198     9720.97      1.2052
    12   1   -372.90625979      0.03927682     8620.26      0.04429204     9720.98      1.2052
    13   1   -372.90625972      0.03927689     8620.28      0.04429211     9720.99      1.2052
    14   1   -372.90625965      0.03927696     8620.30      0.04429217     9721.01      1.2053
    15   1   -372.84924153      0.09629507    21134.33      0.10131029    22235.04      2.7568

 E0 =   -372.94553661 is the energy of the lowest zeroth-order state
 E1 =   -372.95055183 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.70053862  0.00000000  0.00000000 -0.00000001 -0.00000000  0.70710774  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000001  0.77275025 -0.00000002 -0.00000000 -0.23916453  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000001  0.70053750  0.00000000 -0.00000000 -0.00000000  0.70710882  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000000 -0.00000000  0.70054069  0.00000000  0.00000000  0.00000000 -0.70710568

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000001  0.70054161  0.00000000 -0.00000000  0.00000000 -0.70710474 -0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.17925213  0.00000000 -0.00000000  0.78880184 -0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.59349596  0.00000001  0.00000000 -0.54963959  0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.70054055  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.70710582 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000 -0.00000000  0.70053848  0.00000000 -0.00000000 -0.00000000  0.70710788

 10  1     1    1  |0 0>        0.00000000  0.02196993 -0.00000000 -0.00000000  0.13418500  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.13418493 -0.00000000 -0.00000000 -0.02197000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000  0.13597305  0.00000000 -0.00000000  0.00000000  0.00000035  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.13597269  0.00000000 -0.00000000 -0.00000000  0.00000020
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.13597272 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000011 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000000 -0.00000018 -0.00000000  0.00000000  0.00000013  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.09614718 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.57217889  0.00000000  0.00000000  0.00000000  0.01453665 -0.11006455  0.07709197
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.09614743 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.09614722  0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.09614750 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.57218145 -0.00000000 -0.00000000 -0.00000000 -0.10258706  0.04244323  0.07709201

  7  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.57218021 -0.00000000  0.00000000  0.00000000  0.08805040  0.06762133  0.07709194

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.09614729 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.09614720  0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |0 0>        0.00000016 -0.00000000  0.00000000  0.00000000  0.99069151 -0.00648341 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000020 -0.00000000 -0.00000000 -0.00000000  0.00648342  0.99069152 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.99071254  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000000  0.00000001  0.99071259 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000  0.99071258 -0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.13352721 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000001  0.99104515
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        49.08%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   59.71%    0.00%    0.00%    5.72%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   49.08%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   49.08%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>          0.00%    0.00%   49.08%    0.00%    0.00%    0.00%   50.00%    0.00%
  6  1     3    1  |1 0>          0.00%    3.21%    0.00%    0.00%   62.22%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   35.22%    0.00%    0.00%   30.21%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        49.08%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.08%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.05%    0.00%    0.00%    1.80%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    1.80%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    1.85%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    1.85%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          1.85%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.92%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        32.74%    0.00%    0.00%    0.00%    0.02%    1.21%    0.59%
  3  1     3    1  |1 1>+         0.00%    0.92%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.92%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.92%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         32.74%    0.00%    0.00%    0.00%    1.05%    0.18%    0.59%
  7  1     1    1  |1 1>-        32.74%    0.00%    0.00%    0.00%    0.78%    0.46%    0.59%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.92%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.92%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.15%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   98.15%    0.00%
 12  1     3    1  |0 0>          0.00%   98.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%   98.15%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%   98.15%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          1.78%    0.00%    0.00%    0.00%    0.00%    0.00%   98.22%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      794.87       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       830.69    208.77    482.24    125.23      4.00      1.89      8.19
 REAL TIME  *       903.18 SEC
 DISK USED  *       863.83 MB (local),       11.19 GB (total)
 SF USED    *         5.68 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCV5Z-PP energy=   -372.849241534758

              CI              CI           MULTI         RHF-SCF
   -372.78636499   -372.88057267   -371.76266313   -371.54911796
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
