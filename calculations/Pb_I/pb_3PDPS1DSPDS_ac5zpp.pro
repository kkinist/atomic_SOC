
 Working directory              : /wrk/irikura/molpro.piwP4odSij/
 Global scratch directory       : /wrk/irikura/molpro.piwP4odSij/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.piwP4odSij/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Pb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Pb};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,charge=-1,sym=2,spin=3}
 
 NTRIP=12
 NSING=15
 
                                                                                 ! add 7p to active space
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
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5101.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 07-Jun-24          TIME: 13:29:29  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  24000 MW

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

     561.512 MB (compressed) written to integral file ( 13.7%)

     Node minimum: 25.952 MB, node maximum: 44.040 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   19555458.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15983448      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   511790813. AND WROTE     3352297. INTEGRALS IN     10 RECORDS. CPU TIME:     2.34 SEC, REAL TIME:     2.41 SEC
 SORT2 READ    53582235. AND WROTE   312900871. INTEGRALS IN   2160 RECORDS. CPU TIME:     0.40 SEC, REAL TIME:     0.45 SEC

 Node minimum:    19543292.  Node maximum:    19581721. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.08      7.70
 REAL TIME  *         9.32 SEC
 DISK USED  *        30.87 MB (local),        1.54 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -191.86191657    -191.86191657     0.00D+00     0.48D-01     0     0       0.13      0.29    start
   2     -191.86409280      -0.00217623     0.73D-03     0.11D-02     1     0       0.12      0.41    diag2
   3     -191.86432821      -0.00023541     0.41D-03     0.25D-03     2     0       0.12      0.53    diag2
   4     -191.86438882      -0.00006061     0.99D-04     0.18D-03     3     0       0.12      0.65    diag2
   5     -191.86439562      -0.00000680     0.26D-04     0.56D-04     4     0       0.13      0.78    diag2
   6     -191.86439685      -0.00000123     0.64D-05     0.33D-04     5     0       0.12      0.90    diag2
   7     -191.86439720      -0.00000034     0.26D-05     0.26D-04     6     0       0.12      1.02    diag2
   8     -191.86439724      -0.00000004     0.90D-06     0.83D-05     7     0       0.13      1.15    fixocc
   9     -191.86439724      -0.00000000     0.28D-06     0.14D-05     8     0       0.12      1.27    diag2
  10     -191.86439724      -0.00000000     0.58D-07     0.26D-06     0     0       0.12      1.39    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864397240964
  RHF One-electron energy            -340.681921331122
  RHF Two-electron energy             148.817524090158
  RHF Kinetic energy                   62.712681310564
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059419454429

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94944     1  1  s    1.00000
    2.1     2.00000    -0.84961     1  1  d1+ -0.65073    1  1  d2+  0.68239
    3.1     2.00000    -0.84961     1  1  d2- -0.29890    1  1  d1+  0.75316    1  1  d2+  0.53157
    4.1     2.00000    -0.84961     1  1  d2-  0.90873    1  1  d2+  0.28577    1  1  d1- -0.28696
    5.1     2.00000    -0.84961     1  1  d2+  0.40589    1  1  d1-  0.89778
    6.1     2.00000    -0.84961     1  1  d0   0.99535
    7.1     2.00000    -0.35279     1  1  s   -0.38141    1  5  s    0.52245    1  6  s    0.42681    1 11  s   -0.25488
    1.2     2.00000    -3.63191     1  1  px   0.99440
    2.2     2.00000    -3.63191     1  1  pz   0.99691
    3.2     2.00000    -3.63191     1  1  py   0.99108
    4.2     1.00000    -0.05163     1  5  px   0.35286    1  6  px   0.37307    1  7  px   0.25182
    5.2     1.00000    -0.05163     1  5  pz   0.28353    1  6  pz   0.29977
    6.2     1.00000    -0.05163     1  5  py   0.28095    1  6  py   0.29704


 HOMO      6.2    -0.051629 =      -1.4049eV
 LUMO      7.2     0.120362 =       3.2752eV
 LUMO-HOMO         0.171991 =       4.6801eV

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
 CPU TIMES  *         9.49      1.41      7.70
 REAL TIME  *        10.79 SEC
 DISK USED  *        36.68 MB (local),        1.63 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =        15.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     249 (  122  127)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            12
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            15
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.627D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.590D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.438D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.425D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.126D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 4 3 6 2 1 1 6 4   2 3 5 1 2 6 4 5 314  15 8121310 711 9 1 6   4 2 5 31310 71514 8
                                       1211 9 6 4 2 5 3 1 7  1310 81211 91415 2 6   4 3 5 1 71310 81215  14 91125182017212423
                                       261927282216 6 4 3 5   2 7 8121310151411 9   1 3 5 6 4 2 7 81512  14131011 9 1 3 5 6 4
                                        2 1 3 5 6 4 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.105D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.757D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.160D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.160D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.432D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.482D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.168D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.199D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.199D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 2 3 1   2 3 6 5 4 9 7 810 3   2 1 6 5 4 9 710 8 6   810 9 7 4 5 3 1 214
                                       16191517211312111820   810 6 4 5 9 7 3 2 1  16142113151718201112  19 810 6 4 5 7 91416
                                       211315172018191112 8  10 6 4 5 7 9 3 2 110   8 6 4 7 5 915172113  20181614191112 3 2 1
                                        4 6 5 810 7 9 2 1 3   2 1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704
 Weight factors for state symmetry  2:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
 
 Number of orbital rotations:  2021  ( 24 closed/active, 1113 closed/virtual, 0 active/active, 884 active/virtual )
 Total number of variables:    7556
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   20    0   -191.67385619    -191.71233738   -0.03848119    0.16902131 0.00155350 0.00000000  0.80E+00      2.64
   2    6   10    0   -191.71111451    -191.71315591   -0.00204140    0.11252863 0.00001583 0.00000000  0.81E-01      5.06
   3    5   10    0   -191.71316247    -191.71316254   -0.00000007    0.00066706 0.00000005 0.00000000  0.41E-03      7.01
   4    5   10    0   -191.71316254    -191.71316254    0.00000000    0.00000004 0.00000000 0.00000000  0.46E-07      8.81

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.35E-08)
                       Final energy:   -191.71316254
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.834105702086
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.91937145
 One electron energy                          -336.51167743
 Two electron energy                           144.67757173
 Virial ratio                                    4.04888783
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.834105701763
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.91937145
 One electron energy                          -336.51167744
 Two electron energy                           144.67757174
 Virial ratio                                    4.04888783
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.834105700911
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.91937147
 One electron energy                          -336.51167750
 Two electron energy                           144.67757180
 Virial ratio                                    4.04888783
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -191.670797135278
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.40825702
 One electron energy                          -331.69453329
 Two electron energy                           140.02373615
 Virial ratio                                    4.07124099
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -191.670797135233
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.40825702
 One electron energy                          -331.69453328
 Two electron energy                           140.02373614
 Virial ratio                                    4.07124099
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -191.670797135143
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.40825701
 One electron energy                          -331.69453328
 Two electron energy                           140.02373614
 Virial ratio                                    4.07124099
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -191.670797134945
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.40825701
 One electron energy                          -331.69453324
 Two electron energy                           140.02373610
 Virial ratio                                    4.07124099
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -191.670797134937
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.40825700
 One electron energy                          -331.69453324
 Two electron energy                           140.02373610
 Virial ratio                                    4.07124099
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -191.667621983845
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.46995558
 One electron energy                          -332.00855738
 Two electron energy                           140.34093540
 Virial ratio                                    4.06815685
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -191.667621983780
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.46995557
 One electron energy                          -332.00855733
 Two electron energy                           140.34093534
 Virial ratio                                    4.06815685
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -191.667621983634
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.46995558
 One electron energy                          -332.00855739
 Two electron energy                           140.34093540
 Virial ratio                                    4.06815685
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -191.665163041101
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.40812784
 One electron energy                          -331.69354245
 Two electron energy                           140.02837941
 Virial ratio                                    4.07115707
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.799359628252
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88252282
 One electron energy                          -336.29658988
 Two electron energy                           144.49723025
 Virial ratio                                    4.05012189
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.799359627976
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88252283
 One electron energy                          -336.29658990
 Two electron energy                           144.49723027
 Virial ratio                                    4.05012189
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.799359627672
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88252283
 One electron energy                          -336.29658990
 Two electron energy                           144.49723027
 Virial ratio                                    4.05012189
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.799359626598
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88252284
 One electron energy                          -336.29658996
 Two electron energy                           144.49723033
 Virial ratio                                    4.05012189
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.799359626580
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88252284
 One electron energy                          -336.29658996
 Two electron energy                           144.49723033
 Virial ratio                                    4.05012189
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -191.765029855937
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.81879597
 One electron energy                          -335.88479419
 Two electron energy                           144.11976434
 Virial ratio                                    4.05266962
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -191.674554765899
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.40833966
 One electron energy                          -331.69516777
 Two electron energy                           140.02061300
 Virial ratio                                    4.07129713
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -191.674554765887
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.40833966
 One electron energy                          -331.69516777
 Two electron energy                           140.02061300
 Virial ratio                                    4.07129713
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -191.674554765643
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.40833965
 One electron energy                          -331.69516773
 Two electron energy                           140.02061296
 Virial ratio                                    4.07129713
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -191.659501341039
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.50879940
 One electron energy                          -332.23195817
 Two electron energy                           140.57245683
 Virial ratio                                    4.06612034
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -191.659501340903
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.50879940
 One electron energy                          -332.23195815
 Two electron energy                           140.57245681
 Virial ratio                                    4.06612034
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -191.659501340886
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.50879941
 One electron energy                          -332.23195822
 Two electron energy                           140.57245688
 Virial ratio                                    4.06612034
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -191.659501340458
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.50879941
 One electron energy                          -332.23195822
 Two electron energy                           140.57245688
 Virial ratio                                    4.06612034
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -191.659501340456
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.50879941
 One electron energy                          -332.23195822
 Two electron energy                           140.57245688
 Virial ratio                                    4.06612034
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -191.648057875013
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.56173653
 One electron energy                          -332.54969843
 Two electron energy                           140.90164055
 Virial ratio                                    4.06334300
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     2.417194923591
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000001096
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999999998283
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     1.582793942971
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999932
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.000000000044
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.614106106195
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999996
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000166
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.385892868035
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000014407
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999999939
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     0.001044877434
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     0.999999999987
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     0.999999999924
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     3.999999999799
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     3.998955004591
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.097454105047
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999999547
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000000618
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.902549405291
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>    -0.000000000000
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.341326535391
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000003
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999999858
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.658674264113
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>    -0.000000000000
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     3.055458033082
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     3.999999999913
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     1.000000000278
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     0.999999992805
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     0.944538902163
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.485350971362
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999999999357
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.000000001099
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.514656651738
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000000000068
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.999999999956
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.044567358415
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000001
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999999976
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.955432867852
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999999985594
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.000000000061
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     2.943497089484
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     1.000000000100
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     3.999999999798
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     1.000000007396
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     1.056506093246
 !MCSCF expec    <15.1 Singlet|LZLZ|15.1 Singlet>    -0.000000000000
 
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
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     6.000000000000
 !MCSCF expec    <13.1 Singlet|L**2|13.1 Singlet>     6.000000000000
 !MCSCF expec    <14.1 Singlet|L**2|14.1 Singlet>     6.000000000000
 !MCSCF expec    <15.1 Singlet|L**2|15.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 4 3 5 1 1 6 2   4 3 5 1 6 2 4 3 511   7 812 915141310 1 6   2 4 5 311 7 812 915
                                       141310 6 2 4 5 3 111   7 812 915141310 6 2   4 3 5 111 7 812 915  14131027251721282326
                                       241920182216 2 6 4 3   511 7 812 915141013   1 2 6 4 3 511 712 8   915141013 1 2 6 4 3
                                        5 1 2 5 3 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 2   3 1 5 6 4 810 9 7 3   2 1 5 6 4 810 9 7 5   6 4 810 7 9 3 2 112
                                       19211311161415171820   5 6 4 810 7 9 3 2 1  12192113111614151718  20 5 6 4 810 7 91219
                                       211311161415172018 5   6 4 810 7 9 3 2 1 5   6 410 8 7 912192113  11141615171820 3 2 1
                                        5 6 410 8 9 7 2 1 3   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.28573     1  1  s    0.99856
    2.1     2.00000    -1.18613     1  1  d1-  1.00154
    3.1     2.00000    -1.18613     1  1  d0   1.00154
    4.1     2.00000    -1.18613     1  1  d1+  1.00154
    5.1     2.00000    -1.18613     1  1  d2-  1.00154
    6.1     2.00000    -1.18613     1  1  d2+  1.00154
    7.1     1.97230    -0.65323     1  1  s   -0.40506    1  5  s    0.62870    1  6  s    0.43427    1 11  s   -0.27089
    1.2     2.00000    -3.96844     1  1  pz   0.99972
    2.2     2.00000    -3.96844     1  1  py   0.99972
    3.2     2.00000    -3.96844     1  1  px   0.99972
    4.2     0.45354    -0.11349     1  1  px  -0.27102    1  5  px   0.50589    1  6  px   0.39636
    5.2     0.45354    -0.11349     1  1  py  -0.27102    1  5  py   0.50589    1  6  py   0.39636
    6.2     0.45354    -0.11349     1  1  pz  -0.27102    1  5  pz   0.50589    1  6  pz   0.39636
    7.2     0.22236     0.01673     1 12  px   1.12459
    8.2     0.22236     0.01673     1 12  py   1.12459
    9.2     0.22236     0.01673     1 12  pz   1.12459
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a0a000       0.98591397      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2 0aa000      -0.00000000      0.98591397      0.00000037      0.00000000      0.00000000      0.00000003      0.00000000
 2 aa0000       0.00000000     -0.00000037      0.98591397     -0.00000000     -0.00000002      0.00000000      0.00000000
 2 0a00a0      -0.00000000     -0.00000000      0.00000000      0.80046763     -0.00002837     -0.00001049      0.00000009
 2 00a00a       0.00000000     -0.00000000      0.00000000     -0.29068680      0.00000460      0.00001573     -0.00000003
 2 0a000a      -0.00000000      0.09616181      0.00000004      0.00000734      0.00000967      0.70182754     -0.00000104
 2 a0000a       0.09616181      0.00000000      0.00000000     -0.00000008     -0.00000058      0.00000104      0.70182753
 2 0a0a00      -0.00000000      0.00000004     -0.09616182      0.00002576      0.70182752     -0.00000967      0.00000059
 2 a000a0      -0.00000000     -0.00000004      0.09616186      0.00002576      0.70182748     -0.00000967      0.00000058
 2 00aa00      -0.09616182      0.00000000      0.00000000     -0.00000008     -0.00000059      0.00000104      0.70182748
 2 00a0a0      -0.00000000     -0.09616186     -0.00000004      0.00000734      0.00000967      0.70182746     -0.00000104
 2 a00a00       0.00000000     -0.00000000      0.00000000     -0.50978078      0.00002377     -0.00000524     -0.00000006
 0 a2a000      -0.09258422      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 0 2aa000       0.00000000     -0.09258422     -0.00000003     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 aa2000      -0.00000000      0.00000003     -0.09258422      0.00000000      0.00000000     -0.00000000     -0.00000000
 0 0a20a0       0.00000000      0.00000000     -0.00000000     -0.06878756      0.00000244      0.00000090     -0.00000001
 0 2a00a0       0.00000000      0.00000000     -0.00000000     -0.06868314      0.00000243      0.00000091     -0.00000001
 0 02a00a      -0.00000000      0.00000000     -0.00000000      0.02464874     -0.00000038     -0.00000135      0.00000000
 0 20a00a      -0.00000000      0.00000000     -0.00000000      0.02527323     -0.00000041     -0.00000135      0.00000000
 0 2a000a       0.00000000     -0.00749199     -0.00000000     -0.00000063     -0.00000083     -0.06043248      0.00000009
 0 a2000a      -0.00749199      0.00000000     -0.00000000      0.00000001      0.00000005     -0.00000009     -0.06043248
 0 0a2a00       0.00000000     -0.00000000      0.00749199     -0.00000222     -0.06043247      0.00000083     -0.00000005
 0 02aa00       0.00749199      0.00000000     -0.00000000      0.00000001      0.00000005     -0.00000009     -0.06043247
 0 a020a0       0.00000000      0.00000000     -0.00749199     -0.00000222     -0.06043247      0.00000083     -0.00000005
 0 20a0a0       0.00000000      0.00749200      0.00000000     -0.00000063     -0.00000083     -0.06043247      0.00000009
 0 0a200a       0.00000000     -0.01705010     -0.00000001     -0.00000063     -0.00000083     -0.06009797      0.00000009
 0 2a0a00       0.00000000     -0.00000001      0.01705010     -0.00000221     -0.06009797      0.00000083     -0.00000005
 0 a0200a      -0.01705010     -0.00000000      0.00000000      0.00000001      0.00000005     -0.00000009     -0.06009797
 0 a200a0      -0.00000000      0.00000001     -0.01705010     -0.00000221     -0.06009797      0.00000083     -0.00000005
 0 20aa00       0.01705010      0.00000000     -0.00000000      0.00000001      0.00000005     -0.00000009     -0.06009797
 0 02a0a0      -0.00000000      0.01705010      0.00000001     -0.00000063     -0.00000083     -0.06009797      0.00000009
 0 a20a00      -0.00000000      0.00000000     -0.00000000      0.04351433     -0.00000203      0.00000046      0.00000000
 0 a02a00      -0.00000000      0.00000000     -0.00000000      0.04403439     -0.00000205      0.00000044      0.00000000
 
 Energy:     -191.83410570   -191.83410570   -191.83410570   -191.67079714   -191.67079714   -191.67079714   -191.67079713

 State:              8               9              10              11              12
 2 a0a000      -0.00000000     -0.00000001     -0.13707387      0.00000000     -0.00000000
 2 0aa000      -0.00000000     -0.00000113     -0.00000000     -0.13707390     -0.00000000
 2 aa0000      -0.00000000     -0.13707391      0.00000001      0.00000113     -0.00000000
 2 0a00a0      -0.12649399     -0.00000000      0.00000000     -0.00000000      0.57297331
 2 00a00a       0.75647226      0.00000000      0.00000000     -0.00000000      0.57297337
 2 0a000a      -0.00001177      0.00000573      0.00000000      0.69522848      0.00000000
 2 a0000a      -0.00000000      0.00000005      0.69522850     -0.00000000     -0.00000000
 2 0a0a00       0.00000563     -0.69522850      0.00000004      0.00000573      0.00000000
 2 a000a0       0.00000563      0.69522853     -0.00000005     -0.00000573      0.00000000
 2 00aa00      -0.00000000     -0.00000004     -0.69522854      0.00000000      0.00000000
 2 00a0a0      -0.00001177     -0.00000573     -0.00000000     -0.69522855     -0.00000000
 2 a00a00      -0.62997832     -0.00000000      0.00000000     -0.00000000      0.57297334
 0 a2a000      -0.00000000      0.00000000      0.01525602     -0.00000000     -0.00000000
 0 2aa000       0.00000000      0.00000013      0.00000000      0.01525602      0.00000000
 0 aa2000       0.00000000      0.01525602     -0.00000000     -0.00000013      0.00000000
 0 0a20a0       0.01053151      0.00000000     -0.00000000      0.00000000     -0.04958601
 0 2a00a0       0.01119232      0.00000000     -0.00000000      0.00000000     -0.04958601
 0 02a00a      -0.06507750     -0.00000000     -0.00000000      0.00000000     -0.04958602
 0 20a00a      -0.06483753     -0.00000000     -0.00000000      0.00000000     -0.04958602
 0 2a000a       0.00000101     -0.00000049     -0.00000000     -0.05999512     -0.00000000
 0 a2000a       0.00000000     -0.00000000     -0.05999512      0.00000000      0.00000000
 0 0a2a00      -0.00000049      0.05999512     -0.00000000     -0.00000049     -0.00000000
 0 02aa00       0.00000000      0.00000000      0.05999512     -0.00000000     -0.00000000
 0 a020a0      -0.00000049     -0.05999512      0.00000000      0.00000049     -0.00000000
 0 20a0a0       0.00000101      0.00000049      0.00000000      0.05999512      0.00000000
 0 0a200a       0.00000101     -0.00000047     -0.00000000     -0.05758031     -0.00000000
 0 2a0a00      -0.00000048      0.05758031     -0.00000000     -0.00000047     -0.00000000
 0 a0200a       0.00000000     -0.00000000     -0.05758031      0.00000000      0.00000000
 0 a200a0      -0.00000048     -0.05758032      0.00000000      0.00000047     -0.00000000
 0 20aa00       0.00000000      0.00000000      0.05758032     -0.00000000     -0.00000000
 0 02a0a0       0.00000101      0.00000047      0.00000000      0.05758032      0.00000000
 0 a20a00       0.05430602      0.00000000     -0.00000000      0.00000000     -0.04958602
 0 a02a00       0.05388518      0.00000000     -0.00000000      0.00000000     -0.04958602
 
 Energy:     -191.67079713   -191.66762198   -191.66762198   -191.66762198   -191.66516304
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 002000       0.79165885     -0.00000001     -0.00000095     -0.00000178     -0.08403294      0.54505940      0.00000000
 2 020000      -0.32305474      0.00000000      0.00000037      0.00001347      0.72761310      0.54505943     -0.00000000
 2 b0a000      -0.00000001     -0.68944828     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2 a0b000       0.00000001      0.68944828      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2 0ab000       0.00000083     -0.00000000      0.68944827      0.00000060      0.00000002      0.00000000      0.00000002
 2 0ba000      -0.00000083      0.00000000     -0.68944827     -0.00000060     -0.00000002     -0.00000000     -0.00000002
 2 ab0000       0.00000020      0.00000000     -0.00000060      0.68944827     -0.00001268     -0.00000000     -0.00000000
 2 ba0000      -0.00000020     -0.00000000      0.00000060     -0.68944827      0.00001268      0.00000000      0.00000000
 2 200000      -0.46860405      0.00000000      0.00000058     -0.00001170     -0.64358019      0.54505943      0.00000000
 2 a00b00      -0.06762017      0.00000000      0.00000008     -0.00000169     -0.09286945      0.11443456      0.00000000
 2 b00a00       0.06762017     -0.00000000     -0.00000008      0.00000169      0.09286945     -0.11443456     -0.00000000
 2 0a0b00       0.00000003      0.00000000     -0.00000009      0.09948827     -0.00000183      0.00000000     -0.00005957
 2 0b0a00      -0.00000003     -0.00000000      0.00000009     -0.09948827      0.00000183     -0.00000000      0.00005957
 2 0a000b       0.00000012     -0.00000000      0.09948827      0.00000009      0.00000000      0.00000000      0.49630382
 2 0b000a      -0.00000012      0.00000000     -0.09948827     -0.00000009     -0.00000000     -0.00000000     -0.49630382
 2 00ab00       0.00000000      0.09948827     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000025
 2 00ba00      -0.00000000     -0.09948827      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000025
 2 b0000a      -0.00000000     -0.09948827     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000025
 2 a0000b       0.00000000      0.09948827      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000025
 2 00a0b0       0.00000012     -0.00000000      0.09948830      0.00000009      0.00000000     -0.00000000     -0.49630381
 2 00b0a0      -0.00000012      0.00000000     -0.09948830     -0.00000009     -0.00000000      0.00000000      0.49630381
 2 a000b0       0.00000003     -0.00000000     -0.00000009      0.09948830     -0.00000183      0.00000000      0.00005957
 2 b000a0      -0.00000003      0.00000000      0.00000009     -0.09948830      0.00000183     -0.00000000     -0.00005957
 2 0a00b0      -0.04661723      0.00000000      0.00000005      0.00000194      0.10499554      0.11443459     -0.00000000
 2 0b00a0       0.04661723     -0.00000000     -0.00000005     -0.00000194     -0.10499554     -0.11443459      0.00000000
 2 00b00a      -0.11423738      0.00000000      0.00000014      0.00000026      0.01212606     -0.11443455      0.00000000
 2 00a00b       0.11423738     -0.00000000     -0.00000014     -0.00000026     -0.01212606      0.11443455     -0.00000000
 0 220000       0.07423243     -0.00000000     -0.00000009     -0.00000017     -0.00787962     -0.09962833      0.00000000
 0 022000      -0.04394017      0.00000000      0.00000005     -0.00000110     -0.06034736     -0.09962833      0.00000000
 0 202000      -0.03029227      0.00000000      0.00000003      0.00000126      0.06822698     -0.09962833     -0.00000000
 0 b2a000       0.00000000      0.06464833     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0 a2b000      -0.00000000     -0.06464833      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0 2ab000      -0.00000008      0.00000000     -0.06464833     -0.00000006     -0.00000000     -0.00000000     -0.00000000
 0 2ba000       0.00000008     -0.00000000      0.06464833      0.00000006      0.00000000      0.00000000      0.00000000
 0 ba2000       0.00000002      0.00000000     -0.00000006      0.06464833     -0.00000119     -0.00000000     -0.00000000
 0 ab2000      -0.00000002     -0.00000000      0.00000006     -0.06464833      0.00000119      0.00000000      0.00000000
 
 Energy:     -191.79935963   -191.79935963   -191.79935963   -191.79935963   -191.79935963   -191.76502986   -191.67455477

 State:              8               9              10              11              12              13              14
 2 002000       0.00000000     -0.00000000      0.08403676     -0.00000009     -0.00000036      0.00005884      0.14027032
 2 020000      -0.00000000     -0.00000000      0.07945931     -0.00000008      0.00000010     -0.00005921     -0.14291319
 2 b0a000      -0.00000000     -0.00000000      0.00000015      0.14161024     -0.00000070      0.00000000      0.00000000
 2 a0b000       0.00000000      0.00000000     -0.00000015     -0.14161024      0.00000070     -0.00000000     -0.00000000
 2 0ab000      -0.00000000     -0.00000000      0.00000063      0.00000000      0.00000039     -0.14161025      0.00005902
 2 0ba000       0.00000000      0.00000000     -0.00000063     -0.00000000     -0.00000039      0.14161025     -0.00005902
 2 ab0000      -0.00000002      0.00000000     -0.00000023     -0.00000070     -0.14161027     -0.00000039     -0.00000022
 2 ba0000       0.00000002     -0.00000000      0.00000023      0.00000070      0.14161027      0.00000039      0.00000022
 2 200000      -0.00000000     -0.00000000     -0.16349607      0.00000017      0.00000026      0.00000037      0.00264281
 2 a00b00       0.00000000      0.00000000      0.56133355     -0.00000058     -0.00000090     -0.00000127     -0.00907362
 2 b00a00      -0.00000000     -0.00000000     -0.56133355      0.00000058      0.00000090      0.00000127      0.00907362
 2 0a0b00      -0.49630382      0.00000004      0.00000079      0.00000241      0.48619259      0.00000133      0.00000077
 2 0b0a00       0.49630382     -0.00000004     -0.00000079     -0.00000241     -0.48619259     -0.00000133     -0.00000077
 2 0a000b      -0.00005957     -0.00000025     -0.00000217     -0.00000001     -0.00000132      0.48619255     -0.00020264
 2 0b000a       0.00005957      0.00000025      0.00000217      0.00000001      0.00000132     -0.48619255      0.00020264
 2 00ab00      -0.00000004     -0.49630382      0.00000050      0.48619260     -0.00000241      0.00000001      0.00000000
 2 00ba00       0.00000004      0.49630382     -0.00000050     -0.48619260      0.00000241     -0.00000001     -0.00000000
 2 b0000a      -0.00000004     -0.49630382     -0.00000050     -0.48619260      0.00000241     -0.00000001     -0.00000000
 2 a0000b       0.00000004      0.49630382      0.00000050      0.48619260     -0.00000241      0.00000001      0.00000000
 2 00a0b0       0.00005957      0.00000025     -0.00000217     -0.00000001     -0.00000132      0.48619256     -0.00020264
 2 00b0a0      -0.00005957     -0.00000025      0.00000217      0.00000001      0.00000132     -0.48619256      0.00020264
 2 a000b0       0.49630381     -0.00000004      0.00000079      0.00000241      0.48619260      0.00000133      0.00000077
 2 b000a0      -0.49630381      0.00000004     -0.00000079     -0.00000241     -0.48619260     -0.00000133     -0.00000077
 2 0a00b0       0.00000000     -0.00000000     -0.27280876      0.00000028     -0.00000033      0.00020328      0.49066585
 2 0b00a0      -0.00000000      0.00000000      0.27280876     -0.00000028      0.00000033     -0.00020328     -0.49066585
 2 00b00a      -0.00000000     -0.00000000      0.28852473     -0.00000030     -0.00000123      0.00020201      0.48159225
 2 00a00b       0.00000000      0.00000000     -0.28852473      0.00000030      0.00000123     -0.00020201     -0.48159225
 0 220000       0.00000000      0.00000000      0.00886513     -0.00000001     -0.00000004      0.00000621      0.01479727
 0 022000      -0.00000000      0.00000000     -0.01724737      0.00000002      0.00000003      0.00000004      0.00027880
 0 202000       0.00000000      0.00000000      0.00838224     -0.00000001      0.00000001     -0.00000625     -0.01507605
 0 b2a000       0.00000000      0.00000000     -0.00000002     -0.01493861      0.00000007     -0.00000000     -0.00000000
 0 a2b000      -0.00000000     -0.00000000      0.00000002      0.01493861     -0.00000007      0.00000000      0.00000000
 0 2ab000       0.00000000      0.00000000     -0.00000007     -0.00000000     -0.00000004      0.01493861     -0.00000623
 0 2ba000      -0.00000000     -0.00000000      0.00000007      0.00000000      0.00000004     -0.01493861      0.00000623
 0 ba2000      -0.00000000      0.00000000     -0.00000002     -0.00000007     -0.01493861     -0.00000004     -0.00000002
 0 ab2000       0.00000000     -0.00000000      0.00000002      0.00000007      0.01493861      0.00000004      0.00000002
 
 Energy:     -191.67455477   -191.67455477   -191.65950134   -191.65950134   -191.65950134   -191.65950134   -191.65950134

 State:             15
 2 002000      -0.15875068
 2 020000      -0.15875073
 2 b0a000      -0.00000000
 2 a0b000       0.00000000
 2 0ab000      -0.00000000
 2 0ba000       0.00000000
 2 ab0000      -0.00000000
 2 ba0000       0.00000000
 2 200000      -0.15875068
 2 a00b00       0.38855296
 2 b00a00      -0.38855296
 2 0a0b00      -0.00000000
 2 0b0a00       0.00000000
 2 0a000b       0.00000000
 2 0b000a      -0.00000000
 2 00ab00       0.00000000
 2 00ba00      -0.00000000
 2 b0000a       0.00000000
 2 a0000b      -0.00000000
 2 00a0b0      -0.00000000
 2 00b0a0       0.00000000
 2 a000b0      -0.00000000
 2 b000a0       0.00000000
 2 0a00b0       0.38855299
 2 0b00a0      -0.38855299
 2 00b00a      -0.38855300
 2 00a00b       0.38855300
 0 220000       0.03083882
 0 022000       0.03083882
 0 202000       0.03083882
 0 b2a000       0.00000000
 0 a2b000      -0.00000000
 0 2ab000       0.00000000
 0 2ba000      -0.00000000
 0 ba2000       0.00000000
 0 ab2000      -0.00000000
 
 Energy:     -191.64805788
 


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
 CPU TIMES  *        19.05      9.57      1.41      7.70
 REAL TIME  *        21.56 SEC
 DISK USED  *        89.89 MB (local),        2.46 GB (total)
 SF USED    *       148.91 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8341057   2.0
    -191.8341057   2.0
    -191.8341057   2.0
    -191.6707971   6.0
    -191.6707971   6.0
    -191.6707971   6.0
    -191.6707971   6.0
    -191.6707971   6.0
    -191.6676220   2.0
    -191.6676220   2.0
    -191.6676220   2.0
    -191.6651630  -0.0
    -191.7993596   6.0
    -191.7993596   6.0
    -191.7993596   6.0
    -191.7993596   6.0
    -191.7993596   6.0
    -191.7650299  -0.0
    -191.6745548   2.0
    -191.6745548   2.0
    -191.6745548   2.0
    -191.6595013   6.0
    -191.6595013   6.0
    -191.6595013   6.0
    -191.6595013   6.0
    -191.6595013   6.0
    -191.6480579  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

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
     1      -191.83410570
     2      -191.83410570
     3      -191.83410570
     4      -191.67079714
     5      -191.67079714
     6      -191.67079714
     7      -191.67079713
     8      -191.67079713
     9      -191.66762198
    10      -191.66762198
    11      -191.66762198
    12      -191.66516304

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2271D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9556D-07

 Number of blocks in overlap matrix:  1180   Smallest eigenvalue:  0.96D-07
 Number of N-2 electron functions:    2329
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:      11024685
 Number of doubly external configurations:      36110269
 Total number of contracted configurations:     47173360
 Total number of uncontracted configurations:  731368774

 Diagonal Coupling coefficients finished.               Storage:  25397771 words, CPU-Time:     66.28 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3788890 words, CPU-time:      6.86 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.83410570     0.00000000    -0.96437043  0.52D-01  0.12D+00    87.57
    1     2     2     1.00000000     0.00000000  -191.83410570     0.00000000    -0.96424987  0.52D-01  0.12D+00    87.57
    1     3     3     1.00000000     0.00000000  -191.83410570     0.00000000    -0.96451629  0.53D-01  0.12D+00    87.57
    1     4     4     1.00000000     0.00000000  -191.67079714    -0.00000000    -0.91837254  0.40D-01  0.10D+00    87.57
    1     5     5     1.00000000     0.00000000  -191.67079714    -0.00000000    -0.91804243  0.40D-01  0.10D+00    87.57
    1     6     6     1.00000000     0.00000000  -191.67079714     0.00000000    -0.91803802  0.40D-01  0.10D+00    87.57
    1     7     7     1.00000000     0.00000000  -191.67079713    -0.00000000    -0.91804806  0.40D-01  0.10D+00    87.57
    1     8     8     1.00000000     0.00000000  -191.67079713     0.00000000    -0.91832927  0.40D-01  0.10D+00    87.57
    1     9     9     1.00000000     0.00000000  -191.66762198     0.00000000    -0.92198046  0.40D-01  0.11D+00    87.57
    1    10    10     1.00000000     0.00000000  -191.66762198     0.00000000    -0.92204787  0.40D-01  0.11D+00    87.57
    1    11    11     1.00000000     0.00000000  -191.66762198     0.00000000    -0.92203299  0.40D-01  0.11D+00    87.57
    1    12    12     1.00000000     0.00000000  -191.66516304    -0.00000000    -0.91876720  0.40D-01  0.11D+00    87.57
    2     1     1     1.10602361    -0.76316338  -192.59726908    -0.76316338    -0.02808725  0.49D-02  0.20D-02  2259.58
    2     2     2     1.10611445    -0.76306888  -192.59717458    -0.76306888    -0.02819189  0.49D-02  0.20D-02  2259.58
    2     3     3     1.10622837    -0.76295739  -192.59706309    -0.76295739    -0.02831311  0.50D-02  0.20D-02  2259.58
    2     4     4     1.09617229    -0.75270948  -192.42350662    -0.75270948    -0.02159341  0.28D-02  0.15D-02  2259.58
    2     5     5     1.09611351    -0.75270279  -192.42349992    -0.75270279    -0.02160996  0.28D-02  0.15D-02  2259.58
    2     6     6     1.09612518    -0.75268978  -192.42348691    -0.75268978    -0.02162334  0.28D-02  0.15D-02  2259.58
    2     7     7     1.09613354    -0.75267771  -192.42347484    -0.75267771    -0.02163849  0.29D-02  0.15D-02  2259.58
    2     8     8     1.09622241    -0.75266802  -192.42346515    -0.75266802    -0.02163798  0.28D-02  0.15D-02  2259.58
    2     9     9     1.09637243    -0.75314938  -192.42077136    -0.75314938    -0.02226393  0.31D-02  0.16D-02  2259.58
    2    10    10     1.09638812    -0.75313283  -192.42075481    -0.75313283    -0.02228208  0.31D-02  0.16D-02  2259.58
    2    11    11     1.09638032    -0.75311612  -192.42073811    -0.75311612    -0.02230252  0.31D-02  0.16D-02  2259.58
    2    12    12     1.09621905    -0.75285753  -192.41802057    -0.75285753    -0.02178468  0.29D-02  0.15D-02  2259.58
    3     1     1     1.09066214    -0.78943711  -192.62354282    -0.02627373    -0.00050427  0.84D-04  0.56D-04  4437.04
    3     2     2     1.09066297    -0.78943347  -192.62353917    -0.02636459    -0.00050801  0.85D-04  0.56D-04  4437.04
    3     3     3     1.09066303    -0.78942957  -192.62353527    -0.02647218    -0.00051190  0.86D-04  0.57D-04  4437.04
    3     4     4     1.08628279    -0.77289186  -192.44368899    -0.02018237    -0.00029859  0.34D-04  0.29D-04  4437.04
    3     5     5     1.08628089    -0.77289146  -192.44368859    -0.02018867    -0.00029889  0.34D-04  0.29D-04  4437.04
    3     6     6     1.08628245    -0.77289135  -192.44368848    -0.02020157    -0.00029898  0.35D-04  0.29D-04  4437.04
    3     7     7     1.08629811    -0.77288970  -192.44368684    -0.02021199    -0.00030108  0.34D-04  0.30D-04  4437.04
    3     8     8     1.08629727    -0.77288872  -192.44368585    -0.02022070    -0.00030182  0.34D-04  0.30D-04  4437.04
    3     9     9     1.08618621    -0.77390216  -192.44152414    -0.02075278    -0.00031401  0.35D-04  0.32D-04  4437.04
    3    10    10     1.08617964    -0.77390126  -192.44152324    -0.02076843    -0.00031458  0.35D-04  0.32D-04  4437.04
    3    11    11     1.08618596    -0.77390103  -192.44152302    -0.02078491    -0.00031474  0.35D-04  0.32D-04  4437.04
    3    12    12     1.08635275    -0.77320364  -192.43836668    -0.02034611    -0.00030358  0.32D-04  0.32D-04  4437.04
    4     1     1     1.09006780    -0.78995715  -192.62406285    -0.00052003    -0.00002200  0.38D-05  0.26D-05  6614.99
    4     2     2     1.09006731    -0.78995703  -192.62406273    -0.00052356    -0.00002212  0.38D-05  0.26D-05  6614.99
    4     3     3     1.09006635    -0.78995693  -192.62406263    -0.00052736    -0.00002221  0.38D-05  0.26D-05  6614.99
    4     4     4     1.08641031    -0.77319882  -192.44399596    -0.00030696    -0.00001143  0.21D-05  0.12D-05  6614.99
    4     5     5     1.08641061    -0.77319876  -192.44399590    -0.00030731    -0.00001141  0.21D-05  0.12D-05  6614.99
    4     6     6     1.08641022    -0.77319873  -192.44399586    -0.00030738    -0.00001144  0.21D-05  0.12D-05  6614.99
    4     7     7     1.08640699    -0.77319869  -192.44399583    -0.00030899    -0.00001169  0.22D-05  0.13D-05  6614.99
    4     8     8     1.08640666    -0.77319843  -192.44399556    -0.00030971    -0.00001170  0.22D-05  0.13D-05  6614.99
    4     9     9     1.08630176    -0.77422417  -192.44184615    -0.00032201    -0.00001227  0.23D-05  0.13D-05  6614.99
    4    10    10     1.08630140    -0.77422384  -192.44184583    -0.00032259    -0.00001225  0.23D-05  0.13D-05  6614.99
    4    11    11     1.08630092    -0.77422375  -192.44184574    -0.00032272    -0.00001230  0.23D-05  0.13D-05  6614.99
    4    12    12     1.08654542    -0.77351467  -192.43867771    -0.00031103    -0.00001210  0.20D-05  0.16D-05  6614.99
    5     1     1     1.09015992    -0.78998119  -192.62408689    -0.00002404    -0.00000083  0.66D-07  0.12D-06  8793.83
    5     2     2     1.09015969    -0.78998119  -192.62408689    -0.00002416    -0.00000083  0.66D-07  0.12D-06  8793.83
    5     3     3     1.09015930    -0.78998119  -192.62408689    -0.00002426    -0.00000083  0.67D-07  0.12D-06  8793.83
    5     4     4     1.08652399    -0.77321202  -192.44400915    -0.00001319    -0.00000050  0.31D-07  0.94D-07  8793.83
    5     5     5     1.08652395    -0.77321189  -192.44400902    -0.00001312    -0.00000049  0.32D-07  0.92D-07  8793.83
    5     6     6     1.08652379    -0.77321181  -192.44400894    -0.00001308    -0.00000049  0.32D-07  0.91D-07  8793.83
    5     7     7     1.08652383    -0.77321180  -192.44400893    -0.00001311    -0.00000049  0.32D-07  0.91D-07  8793.83
    5     8     8     1.08652356    -0.77321175  -192.44400889    -0.00001332    -0.00000050  0.31D-07  0.94D-07  8793.83
    5     9     9     1.08641643    -0.77423804  -192.44186002    -0.00001387    -0.00000054  0.44D-07  0.93D-07  8793.83
    5    10    10     1.08641594    -0.77423768  -192.44185967    -0.00001384    -0.00000054  0.44D-07  0.93D-07  8793.83
    5    11    11     1.08641589    -0.77423766  -192.44185964    -0.00001390    -0.00000054  0.44D-07  0.93D-07  8793.83
    5    12    12     1.08669927    -0.77352869  -192.43869173    -0.00001403    -0.00000062  0.32D-07  0.13D-06  8793.83
    6     1     1     1.09016663    -0.78998210  -192.62408780    -0.00000090    -0.00000004  0.38D-08  0.70D-08 10970.82
    6     2     2     1.09016661    -0.78998209  -192.62408780    -0.00000091    -0.00000004  0.38D-08  0.70D-08 10970.82
    6     3     3     1.09016656    -0.78998209  -192.62408780    -0.00000091    -0.00000004  0.39D-08  0.71D-08 10970.82
    6     4     4     1.08654225    -0.77321261  -192.44400975    -0.00000059    -0.00000003  0.27D-08  0.79D-08 10970.82
    6     5     5     1.08654274    -0.77321247  -192.44400961    -0.00000059    -0.00000003  0.29D-08  0.77D-08 10970.82
    6     6     6     1.08654266    -0.77321239  -192.44400953    -0.00000058    -0.00000003  0.29D-08  0.77D-08 10970.82
    6     7     7     1.08654260    -0.77321238  -192.44400952    -0.00000058    -0.00000003  0.28D-08  0.77D-08 10970.82
    6     8     8     1.08654199    -0.77321235  -192.44400948    -0.00000060    -0.00000003  0.28D-08  0.79D-08 10970.82
    6     9     9     1.08643277    -0.77423867  -192.44186065    -0.00000063    -0.00000004  0.38D-08  0.88D-08 10970.82
    6    10    10     1.08643240    -0.77423831  -192.44186029    -0.00000063    -0.00000004  0.38D-08  0.87D-08 10970.82
    6    11    11     1.08643225    -0.77423828  -192.44186027    -0.00000063    -0.00000004  0.38D-08  0.87D-08 10970.82
    6    12    12     1.08672586    -0.77352945  -192.43869249    -0.00000076    -0.00000005  0.44D-08  0.11D-07 10970.82
    7     1     1     1.09017369    -0.78998214  -192.62408785    -0.00000005    -0.00000000  0.20D-09  0.54D-09 13146.07
    7     2     2     1.09017369    -0.78998214  -192.62408784    -0.00000005    -0.00000000  0.20D-09  0.54D-09 13146.07
    7     3     3     1.09017371    -0.78998214  -192.62408784    -0.00000005    -0.00000000  0.20D-09  0.54D-09 13146.07
    7     4     4     1.08654703    -0.77321265  -192.44400979    -0.00000004    -0.00000000  0.28D-09  0.63D-09 13146.07
    7     5     5     1.08654679    -0.77321252  -192.44400965    -0.00000004    -0.00000000  0.28D-09  0.64D-09 13146.07
    7     6     6     1.08654667    -0.77321243  -192.44400957    -0.00000004    -0.00000000  0.27D-09  0.63D-09 13146.07
    7     7     7     1.08654666    -0.77321242  -192.44400956    -0.00000004    -0.00000000  0.27D-09  0.63D-09 13146.07
    7     8     8     1.08654676    -0.77321239  -192.44400953    -0.00000004    -0.00000000  0.28D-09  0.63D-09 13146.07
    7     9     9     1.08643682    -0.77423872  -192.44186070    -0.00000005    -0.00000000  0.37D-09  0.86D-09 13146.07
    7    10    10     1.08643634    -0.77423836  -192.44186034    -0.00000005    -0.00000000  0.36D-09  0.86D-09 13146.07
    7    11    11     1.08643630    -0.77423833  -192.44186032    -0.00000005    -0.00000000  0.37D-09  0.86D-09 13146.07
    7    12    12     1.08673096    -0.77352951  -192.43869256    -0.00000006    -0.00000000  0.41D-09  0.77D-09 13146.07


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%  32.4%
 P   0.2%  24.9%  26.4%

 Initialization:   0.6%
 Other:           15.1%

 Total CPU:    13146.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//000           0.9490486  -0.0000000  -0.0000000  -0.0000000  -0.0000001   0.0000000   0.0000000  -0.0000000
                            0.0964061  -0.0000000  -0.0000007   0.0000000
 2222222222/0/000           0.0000000   0.9490415   0.0036797  -0.0000000  -0.0000000  -0.0000000  -0.0000012   0.0000000
                           -0.0000007  -0.0000330  -0.0964058   0.0000000
 2222222222//0000           0.0000000  -0.0036797   0.9490415   0.0000000   0.0000000  -0.0000035  -0.0000000  -0.0000000
                            0.0000000  -0.0964059   0.0000330   0.0000000
 2222222222/00/00          -0.0000000   0.0000000  -0.0000000  -0.0201654   0.0000007  -0.0001424  -0.0000000   0.7780224
                            0.0000000   0.0000000   0.0000000   0.5502591
 222222222200/00/           0.0000000   0.0000000  -0.0000000   0.6838800  -0.0000263   0.0000954   0.0000000  -0.3715784
                           -0.0000000   0.0000000  -0.0000000   0.5502256
 2222222222/000/0           0.0000000  -0.0002643   0.0681568  -0.0000274   0.0000000   0.6740537   0.0000000   0.0001227
                           -0.0000000   0.6706845  -0.0002293  -0.0000000
 2222222222/0000/          -0.0000000   0.0681567   0.0002643   0.0000000   0.0000000   0.0000000   0.6740377   0.0000000
                            0.0000048   0.0002293   0.6707007  -0.0000000
 22222222220/000/           0.0681574  -0.0000000  -0.0000000   0.0000260   0.6740298  -0.0000000  -0.0000000   0.0000001
                           -0.6707082  -0.0000000   0.0000048   0.0000000
 222222222200/0/0          -0.0681575   0.0000000   0.0000000   0.0000260   0.6740286  -0.0000000   0.0000000   0.0000001
                            0.6707096  -0.0000000  -0.0000048   0.0000000
 222222222200//00          -0.0000000  -0.0681567  -0.0002643  -0.0000000  -0.0000000  -0.0000000   0.6740209   0.0000000
                           -0.0000048  -0.0002293  -0.6707176   0.0000000
 22222222220/0/00          -0.0000000   0.0002643  -0.0681568  -0.0000274   0.0000000   0.6740048  -0.0000000   0.0001227
                            0.0000000  -0.6707337   0.0002293  -0.0000000
 22222222220/00/0          -0.0000000   0.0000000  -0.0000000  -0.6637260   0.0000256   0.0000470   0.0000000  -0.4064992
                           -0.0000000  -0.0000000   0.0000000   0.5502152
 22222202222//000          -0.0778984   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                           -0.0100718   0.0000000   0.0000001   0.0000000
 2222220222//2000           0.0000000   0.0003020  -0.0778978  -0.0000000  -0.0000000   0.0000006   0.0000000   0.0000000
                           -0.0000000   0.0100723  -0.0000034   0.0000000
 2222220222/2/000          -0.0000000  -0.0778977  -0.0003020   0.0000000  -0.0000000   0.0000000   0.0000003  -0.0000000
                            0.0000001   0.0000034   0.0100729  -0.0000000
 2222220222/02/00           0.0000000  -0.0000000   0.0000000   0.0011672  -0.0000000   0.0000106   0.0000000  -0.0582103
                           -0.0000000  -0.0000000  -0.0000000  -0.0415685
 2222220222/20/00           0.0000000  -0.0000000  -0.0000000   0.0018492  -0.0000001   0.0000107   0.0000000  -0.0581913
                           -0.0000000  -0.0000000  -0.0000000  -0.0415682
 222222022220/00/           0.0000000  -0.0000000  -0.0000000  -0.0513201   0.0000020  -0.0000071  -0.0000000   0.0274948
                            0.0000000  -0.0000000   0.0000000  -0.0415654
 222222022202/00/           0.0000000  -0.0000000  -0.0000000  -0.0509943   0.0000020  -0.0000072  -0.0000000   0.0280947
                            0.0000000  -0.0000000   0.0000000  -0.0415630
 2222220222/020/0          -0.0000000   0.0000171  -0.0044088   0.0000021  -0.0000000  -0.0505926  -0.0000000  -0.0000092
                            0.0000000  -0.0504211   0.0000172   0.0000000
 2222220222/2000/          -0.0000000  -0.0044088  -0.0000171  -0.0000000  -0.0000000  -0.0000000  -0.0505915  -0.0000000
                           -0.0000004  -0.0000172  -0.0504227   0.0000000
 22222202222/000/          -0.0044086   0.0000000   0.0000000  -0.0000020  -0.0505913   0.0000000  -0.0000000  -0.0000000
                            0.0504240   0.0000000  -0.0000004  -0.0000000
 222222022220/0/0           0.0044086  -0.0000000  -0.0000000  -0.0000020  -0.0505910   0.0000000  -0.0000000  -0.0000000
                           -0.0504238   0.0000000   0.0000004  -0.0000000
 222222022202//00           0.0000000   0.0044089   0.0000171   0.0000000   0.0000000   0.0000000  -0.0505903  -0.0000000
                            0.0000004   0.0000172   0.0504236  -0.0000000
 22222202220/2/00           0.0000000  -0.0000171   0.0044087   0.0000021  -0.0000000  -0.0505894   0.0000000  -0.0000092
                           -0.0000000   0.0504256  -0.0000172   0.0000000
 2222220222/200/0           0.0000000   0.0000475  -0.0122434   0.0000020  -0.0000000  -0.0502524  -0.0000000  -0.0000091
                            0.0000000  -0.0485954   0.0000166   0.0000000
 2222220222/0200/          -0.0000000  -0.0122435  -0.0000475  -0.0000000   0.0000000  -0.0000000  -0.0502514  -0.0000000
                           -0.0000003  -0.0000166  -0.0485964  -0.0000000
 22222202220/200/          -0.0122435   0.0000000   0.0000000  -0.0000019  -0.0502508  -0.0000000   0.0000000  -0.0000000
                            0.0485976   0.0000000  -0.0000003  -0.0000000
 222222022202/0/0           0.0122436   0.0000000  -0.0000000  -0.0000019  -0.0502508   0.0000000  -0.0000000  -0.0000000
                           -0.0485977  -0.0000000   0.0000003  -0.0000000
 222222022220//00          -0.0000000   0.0122435   0.0000475   0.0000000  -0.0000000   0.0000000  -0.0502501  -0.0000000
                            0.0000003   0.0000166   0.0485976  -0.0000000
 22222202222/0/00           0.0000000  -0.0000475   0.0122435   0.0000020  -0.0000000  -0.0502491   0.0000000  -0.0000091
                           -0.0000000   0.0485992  -0.0000166   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.956663    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.034602   -0.000000
 2           0.956656   -0.000000   -0.003709    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000134   -0.034602
             0.000000    0.000000
 3           0.003709   -0.000000    0.956656   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.034602   -0.000134
             0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000   -0.729200   -0.000039    0.000037   -0.000000    0.622171   -0.000000    0.000000
            -0.000000   -0.000006
 5          -0.000000    0.000000    0.000000    0.000028    0.000000    0.958556    0.000000   -0.000024    0.000000    0.000000
            -0.000001   -0.000000
 6           0.000000    0.000000    0.000001    0.000084    0.958556   -0.000000    0.000000    0.000158    0.000035    0.000000
             0.000000    0.000000
 7           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.958556    0.000000    0.000000    0.000012
             0.000000   -0.000000
 8          -0.000000    0.000000    0.000000   -0.622171    0.000174    0.000000    0.000000   -0.729200    0.000000   -0.000000
            -0.000000   -0.000032
 9           0.000000   -0.035431   -0.000000   -0.000000   -0.000000    0.000001   -0.000000   -0.000000   -0.000000    0.000007
             0.957957    0.000000
 10          0.000012   -0.000000    0.035431   -0.000000   -0.000035   -0.000000   -0.000000    0.000000    0.957957    0.000327
            -0.000000    0.000000
 11          0.035431    0.000000   -0.000012    0.000000    0.000000   -0.000000   -0.000012   -0.000000   -0.000327    0.957957
            -0.000007    0.000000
 12         -0.000000    0.000000    0.000000   -0.000026   -0.000000    0.000000    0.000000   -0.000020   -0.000000   -0.000000
            -0.000000    0.958473

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957288   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000390    0.000000
             0.000000    0.000000
 2          -0.000000    0.957288    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000001
             0.000390   -0.000000
 3          -0.000000    0.000000    0.957288    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000390
             0.000001    0.000000
 4          -0.000000    0.000000    0.000000    0.958555    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.958556   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958556    0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958556   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958556    0.000000   -0.000000
             0.000000    0.000000
 9          -0.000390    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.958612   -0.000000
             0.000000    0.000000
 10          0.000000   -0.000001    0.000390    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958612
            -0.000000   -0.000000
 11          0.000000    0.000390    0.000001    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.958612   -0.000000
 12          0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.958473


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95666284 (fixed)   0.95736158 (relaxed)   0.95728832 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00096476   -0.00183476   -0.67205496
 Singles      0.01584816   -0.05738081   -0.06405453
 Pairs        0.07441252    0.00000000   -0.05387266
 Total        1.09122544   -0.05921558   -0.78998214
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83388326
 Nuclear energy                         0.00000000
 Kinetic energy                        63.27535848
 One electron energy                 -335.79430171
 Two electron energy                  143.17021387
 Virial quotient                       -3.04421962
 Correlation energy                    -0.79020459
 !MRCI STATE 1.1 Energy              -192.624087845217

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69617461 (Davidson, fixed reference)
 Cluster corrected energies          -192.69604263 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69617461 (Davidson, rotated reference)

 Cluster corrected energies          -192.69401262 (Pople, fixed reference)
 Cluster corrected energies          -192.69387478 (Pople, relaxed reference)
 Cluster corrected energies          -192.69401262 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95665564 (fixed)   0.95736158 (relaxed)   0.95728832 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00096476   -0.00183476   -0.67205495
 Singles      0.01584817   -0.05738081   -0.06405453
 Pairs        0.07441252   -0.00000000   -0.05387266
 Total        1.09122545   -0.05921558   -0.78998214
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83388325
 Nuclear energy                         0.00000000
 Kinetic energy                        63.27535775
 One electron energy                 -335.79430166
 Two electron energy                  143.17021382
 Virial quotient                       -3.04421966
 Correlation energy                    -0.79020459
 !MRCI STATE 2.1 Energy              -192.624087844159

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69617461 (Davidson, fixed reference)
 Cluster corrected energies          -192.69604263 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69617461 (Davidson, rotated reference)

 Cluster corrected energies          -192.69401262 (Pople, fixed reference)
 Cluster corrected energies          -192.69387479 (Pople, relaxed reference)
 Cluster corrected energies          -192.69401262 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95665563 (fixed)   0.95736158 (relaxed)   0.95728831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00096476   -0.00183476   -0.67205492
 Singles      0.01584820   -0.05738084   -0.06405455
 Pairs        0.07441250    0.00000000   -0.05387267
 Total        1.09122546   -0.05921561   -0.78998214
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83388325
 Nuclear energy                         0.00000000
 Kinetic energy                        63.27535723
 One electron energy                 -335.79430137
 Two electron energy                  143.17021352
 Virial quotient                       -3.04421968
 Correlation energy                    -0.79020459
 !MRCI STATE 3.1 Energy              -192.624087843250

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69617462 (Davidson, fixed reference)
 Cluster corrected energies          -192.69604264 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69617462 (Davidson, rotated reference)

 Cluster corrected energies          -192.69401263 (Pople, fixed reference)
 Cluster corrected energies          -192.69387479 (Pople, relaxed reference)
 Cluster corrected energies          -192.69401263 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.72919980 (fixed)   0.95867193 (relaxed)   0.95855546 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165228   -0.00322601   -0.65596009
 Singles      0.01677832   -0.06058592   -0.06758516
 Pairs        0.06991171    0.00000482   -0.04966740
 Total        1.08834231   -0.06380712   -0.77321265
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67079714
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00179115
 One electron energy                 -331.46920729
 Two electron energy                  139.02519750
 Virial quotient                       -3.05457998
 Correlation energy                    -0.77321265
 !MRCI STATE 4.1 Energy              -192.444009788771

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51231718 (Davidson, fixed reference)
 Cluster corrected energies          -192.51211270 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51231718 (Davidson, rotated reference)

 Cluster corrected energies          -192.51010793 (Pople, fixed reference)
 Cluster corrected energies          -192.50989542 (Pople, relaxed reference)
 Cluster corrected energies          -192.51010793 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95855556 (fixed)   0.95867204 (relaxed)   0.95855556 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165228   -0.00322602   -0.65595587
 Singles      0.01677817   -0.06058571   -0.06758503
 Pairs        0.06991162    0.00000000   -0.04967161
 Total        1.08834207   -0.06381173   -0.77321252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67079714
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00177557
 One electron energy                 -331.46918512
 Two electron energy                  139.02517547
 Virial quotient                       -3.05458073
 Correlation energy                    -0.77321252
 !MRCI STATE 5.1 Energy              -192.444009652621

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51231684 (Davidson, fixed reference)
 Cluster corrected energies          -192.51211238 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51231684 (Davidson, rotated reference)

 Cluster corrected energies          -192.51010759 (Pople, fixed reference)
 Cluster corrected energies          -192.50989509 (Pople, relaxed reference)
 Cluster corrected energies          -192.51010759 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95855559 (fixed)   0.95867209 (relaxed)   0.95855561 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165229   -0.00322602   -0.65595598
 Singles      0.01677806   -0.06058558   -0.06758486
 Pairs        0.06991161   -0.00000001   -0.04967159
 Total        1.08834196   -0.06381160   -0.77321243
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67079714
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00177458
 One electron energy                 -331.46918494
 Two electron energy                  139.02517537
 Virial quotient                       -3.05458078
 Correlation energy                    -0.77321243
 !MRCI STATE 6.1 Energy              -192.444009568461

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51231667 (Davidson, fixed reference)
 Cluster corrected energies          -192.51211220 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51231667 (Davidson, rotated reference)

 Cluster corrected energies          -192.51010741 (Pople, fixed reference)
 Cluster corrected energies          -192.50989490 (Pople, relaxed reference)
 Cluster corrected energies          -192.51010741 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95855562 (fixed)   0.95867209 (relaxed)   0.95855562 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165229   -0.00322602   -0.65595600
 Singles      0.01677804   -0.06058556   -0.06758483
 Pairs        0.06991162    0.00000000   -0.04967159
 Total        1.08834195   -0.06381158   -0.77321242
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67079713
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00177554
 One electron energy                 -331.46918635
 Two electron energy                  139.02517680
 Virial quotient                       -3.05458073
 Correlation energy                    -0.77321242
 !MRCI STATE 7.1 Energy              -192.444009559320

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51231665 (Davidson, fixed reference)
 Cluster corrected energies          -192.51211218 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51231665 (Davidson, rotated reference)

 Cluster corrected energies          -192.51010740 (Pople, fixed reference)
 Cluster corrected energies          -192.50989488 (Pople, relaxed reference)
 Cluster corrected energies          -192.51010740 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.72919988 (fixed)   0.95867205 (relaxed)   0.95855557 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165229   -0.00322601   -0.65597754
 Singles      0.01677812   -0.06058569   -0.06758481
 Pairs        0.06991165    0.00002367   -0.04965004
 Total        1.08834205   -0.06378803   -0.77321239
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67079714
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00179069
 One electron energy                 -331.46920759
 Two electron energy                  139.02519806
 Virial quotient                       -3.05458000
 Correlation energy                    -0.77321239
 !MRCI STATE 8.1 Energy              -192.444009526606

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51231670 (Davidson, fixed reference)
 Cluster corrected energies          -192.51211221 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51231670 (Davidson, rotated reference)

 Cluster corrected energies          -192.51010744 (Pople, fixed reference)
 Cluster corrected energies          -192.50989492 (Pople, relaxed reference)
 Cluster corrected energies          -192.51010744 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95795731 (fixed)   0.95873825 (relaxed)   0.95861222 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00163526   -0.00315049   -0.65728182
 Singles      0.01649345   -0.06024190   -0.06709048
 Pairs        0.07008471   -0.00000000   -0.04986641
 Total        1.08821343   -0.06339239   -0.77423872
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66784443
 Nuclear energy                         0.00000000
 Kinetic energy                        63.02501503
 One electron energy                 -331.61893109
 Two electron energy                  139.17707039
 Virial quotient                       -3.05342031
 Correlation energy                    -0.77401627
 !MRCI STATE 9.1 Energy              -192.441860700312

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51013933 (Davidson, fixed reference)
 Cluster corrected energies          -192.50991789 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51013933 (Davidson, rotated reference)

 Cluster corrected energies          -192.50792385 (Pople, fixed reference)
 Cluster corrected energies          -192.50769376 (Pople, relaxed reference)
 Cluster corrected energies          -192.50792385 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95795742 (fixed)   0.95873846 (relaxed)   0.95861239 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00163534   -0.00315049   -0.65728224
 Singles      0.01649301   -0.06024140   -0.06708977
 Pairs        0.07008468   -0.00000000   -0.04986635
 Total        1.08821303   -0.06339189   -0.77423836
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66784443
 Nuclear energy                         0.00000000
 Kinetic energy                        63.02501381
 One electron energy                 -331.61893674
 Two electron energy                  139.17707639
 Virial quotient                       -3.05342036
 Correlation energy                    -0.77401591
 !MRCI STATE 10.1 Energy             -192.441860343828

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51013863 (Davidson, fixed reference)
 Cluster corrected energies          -192.50991713 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51013863 (Davidson, rotated reference)

 Cluster corrected energies          -192.50792314 (Pople, fixed reference)
 Cluster corrected energies          -192.50769299 (Pople, relaxed reference)
 Cluster corrected energies          -192.50792314 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95795743 (fixed)   0.95873848 (relaxed)   0.95861240 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00163535   -0.00315049   -0.65728227
 Singles      0.01649297   -0.06024137   -0.06708969
 Pairs        0.07008469   -0.00000000   -0.04986637
 Total        1.08821301   -0.06339186   -0.77423833
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66784443
 Nuclear energy                         0.00000000
 Kinetic energy                        63.02501526
 One electron energy                 -331.61894006
 Two electron energy                  139.17707974
 Virial quotient                       -3.05342029
 Correlation energy                    -0.77401589
 !MRCI STATE 11.1 Energy             -192.441860318370

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51013859 (Davidson, fixed reference)
 Cluster corrected energies          -192.50991708 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51013859 (Davidson, rotated reference)

 Cluster corrected energies          -192.50792310 (Pople, fixed reference)
 Cluster corrected energies          -192.50769293 (Pople, relaxed reference)
 Cluster corrected energies          -192.50792310 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95847298 (fixed)   0.95858807 (relaxed)   0.95847298 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165512   -0.00322934   -0.00414286
 Singles      0.01670993   -0.06055519   -0.06750090
 Pairs        0.07016458   -0.70974498   -0.70188576
 Total        1.08852963   -0.77352951   -0.77352951
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66516304
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00270772
 One electron energy                 -331.46825296
 Two electron energy                  139.02956041
 Virial quotient                       -3.05445114
 Correlation energy                    -0.77352951
 !MRCI STATE 12.1 Energy             -192.438692555975

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50717284 (Davidson, fixed reference)
 Cluster corrected energies          -192.50697065 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50717284 (Davidson, rotated reference)

 Cluster corrected energies          -192.50496844 (Pople, fixed reference)
 Cluster corrected energies          -192.50475824 (Pople, relaxed reference)
 Cluster corrected energies          -192.50496844 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     4344.95       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     14682.47  14663.41      9.57      1.41      7.70
 REAL TIME  *     15066.21 SEC
 DISK USED  *         4.33 GB (local),       70.30 GB (total)
 SF USED    *        41.91 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.69617461  AU                              
 SETTING HLSDIAG(2)     =      -192.69617461  AU                              
 SETTING HLSDIAG(3)     =      -192.69617462  AU                              
 SETTING HLSDIAG(4)     =      -192.51231718  AU                              
 SETTING HLSDIAG(5)     =      -192.51231684  AU                              
 SETTING HLSDIAG(6)     =      -192.51231667  AU                              
 SETTING HLSDIAG(7)     =      -192.51231665  AU                              
 SETTING HLSDIAG(8)     =      -192.51231670  AU                              
 SETTING HLSDIAG(9)     =      -192.51013933  AU                              
 SETTING HLSDIAG(10)    =      -192.51013863  AU                              
 SETTING HLSDIAG(11)    =      -192.51013859  AU                              
 SETTING HLSDIAG(12)    =      -192.50717284  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

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
     1      -191.79935963
     2      -191.79935963
     3      -191.79935963
     4      -191.79935963
     5      -191.79935963
     6      -191.76502986
     7      -191.67455477
     8      -191.67455477
     9      -191.67455477
    10      -191.65950134
    11      -191.65950134
    12      -191.65950134
    13      -191.65950134
    14      -191.65950134
    15      -191.64805788

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1125D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1234D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1320D-06

 Number of blocks in overlap matrix:  1403   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    2650
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       6415270
 Number of doubly external configurations:      41092579
 Total number of contracted configurations:     47531999
 Total number of uncontracted configurations:  427217996

 Diagonal Coupling coefficients finished.               Storage:  21821666 words, CPU-Time:     50.41 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3831765 words, CPU-time:      7.80 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.79935963     0.00000000    -0.96844552  0.61D-01  0.12D+00    73.21
    1     2     2     1.00000000     0.00000000  -191.79935963    -0.00000000    -0.96918137  0.62D-01  0.12D+00    73.21
    1     3     3     1.00000000     0.00000000  -191.79935963    -0.00000000    -0.96897607  0.62D-01  0.12D+00    73.21
    1     4     4     1.00000000     0.00000000  -191.79935963    -0.00000000    -0.96901479  0.62D-01  0.12D+00    73.21
    1     5     5     1.00000000     0.00000000  -191.79935963     0.00000000    -0.96850983  0.61D-01  0.12D+00    73.21
    1     6     6     1.00000000     0.00000000  -191.76502986     0.00000000    -0.94859572  0.41D-01  0.12D+00    73.21
    1     7     7     1.00000000     0.00000000  -191.67455477    -0.00000000    -0.91733054  0.40D-01  0.10D+00    73.21
    1     8     8     1.00000000     0.00000000  -191.67455477    -0.00000000    -0.91738484  0.40D-01  0.10D+00    73.21
    1     9     9     1.00000000     0.00000000  -191.67455477    -0.00000000    -0.91738231  0.40D-01  0.10D+00    73.21
    1    10    10     1.00000000     0.00000000  -191.65950134    -0.00000000    -0.92615381  0.44D-01  0.11D+00    73.21
    1    11    11     1.00000000     0.00000000  -191.65950134    -0.00000000    -0.92655450  0.44D-01  0.11D+00    73.21
    1    12    12     1.00000000     0.00000000  -191.65950134    -0.00000000    -0.92653615  0.44D-01  0.11D+00    73.21
    1    13    13     1.00000000     0.00000000  -191.65950134    -0.00000000    -0.92650509  0.44D-01  0.11D+00    73.21
    1    14    14     1.00000000     0.00000000  -191.65950134    -0.00000000    -0.92622288  0.44D-01  0.11D+00    73.21
    1    15    15     1.00000000     0.00000000  -191.64805788    -0.00000000    -0.92902399  0.50D-01  0.11D+00    73.21
    2     1     1     1.11084214    -0.76774434  -192.56710397    -0.76774434    -0.02946603  0.56D-02  0.21D-02  1896.14
    2     2     2     1.11089843    -0.76771955  -192.56707918    -0.76771955    -0.02949397  0.56D-02  0.21D-02  1896.14
    2     3     3     1.11129356    -0.76734929  -192.56670892    -0.76734929    -0.02986036  0.59D-02  0.21D-02  1896.14
    2     4     4     1.11140680    -0.76724282  -192.56660244    -0.76724282    -0.02997827  0.59D-02  0.21D-02  1896.14
    2     5     5     1.11138835    -0.76724058  -192.56660020    -0.76724058    -0.02997590  0.59D-02  0.21D-02  1896.14
    2     6     6     1.10477190    -0.76638761  -192.53141746    -0.76638761    -0.02613891  0.55D-02  0.20D-02  1896.14
    2     7     7     1.09603190    -0.75262980  -192.42718456    -0.75262980    -0.02144955  0.28D-02  0.15D-02  1896.14
    2     8     8     1.09604768    -0.75261757  -192.42717234    -0.75261757    -0.02146473  0.28D-02  0.15D-02  1896.14
    2     9     9     1.09605286    -0.75261490  -192.42716967    -0.75261490    -0.02146746  0.28D-02  0.15D-02  1896.14
    2    10    10     1.09799677    -0.75436947  -192.41387081    -0.75436947    -0.02306086  0.36D-02  0.16D-02  1896.14
    2    11    11     1.09802171    -0.75432787  -192.41382921    -0.75432787    -0.02311084  0.36D-02  0.16D-02  1896.14
    2    12    12     1.09831730    -0.75410428  -192.41360562    -0.75410428    -0.02335545  0.38D-02  0.16D-02  1896.14
    2    13    13     1.09832324    -0.75409758  -192.41359892    -0.75409758    -0.02336088  0.38D-02  0.16D-02  1896.14
    2    14    14     1.09833245    -0.75408885  -192.41359019    -0.75408885    -0.02337289  0.38D-02  0.16D-02  1896.14
    2    15    15     1.10253177    -0.75373440  -192.40179228    -0.75373440    -0.02501894  0.57D-02  0.16D-02  1896.14
    3     1     1     1.09426233    -0.79536938  -192.59472901    -0.02762504    -0.00066543  0.12D-03  0.80D-04  3729.63
    3     2     2     1.09425949    -0.79536713  -192.59472676    -0.02764757    -0.00066673  0.12D-03  0.81D-04  3729.63
    3     3     3     1.09426838    -0.79535645  -192.59471608    -0.02800716    -0.00067826  0.12D-03  0.82D-04  3729.63
    3     4     4     1.09427338    -0.79535029  -192.59470992    -0.02810748    -0.00068445  0.12D-03  0.83D-04  3729.63
    3     5     5     1.09426467    -0.79534804  -192.59470767    -0.02810747    -0.00068559  0.12D-03  0.83D-04  3729.63
    3     6     6     1.09223975    -0.79128289  -192.55631274    -0.02489528    -0.00061698  0.86D-04  0.91D-04  3729.63
    3     7     7     1.08622568    -0.77269371  -192.44724848    -0.02006392    -0.00029516  0.33D-04  0.29D-04  3729.63
    3     8     8     1.08622554    -0.77269348  -192.44724825    -0.02007591    -0.00029535  0.33D-04  0.29D-04  3729.63
    3     9     9     1.08622410    -0.77269330  -192.44724806    -0.02007840    -0.00029533  0.33D-04  0.29D-04  3729.63
    3    10    10     1.08693732    -0.77586696  -192.43536830    -0.02149749    -0.00037473  0.50D-04  0.42D-04  3729.63
    3    11    11     1.08694107    -0.77586588  -192.43536722    -0.02153801    -0.00037557  0.50D-04  0.43D-04  3729.63
    3    12    12     1.08695692    -0.77585624  -192.43535758    -0.02175196    -0.00038547  0.52D-04  0.45D-04  3729.63
    3    13    13     1.08695566    -0.77585580  -192.43535714    -0.02175822    -0.00038562  0.52D-04  0.44D-04  3729.63
    3    14    14     1.08695428    -0.77585523  -192.43535658    -0.02176638    -0.00038580  0.52D-04  0.44D-04  3729.63
    3    15    15     1.08796435    -0.77733532  -192.42539319    -0.02360092    -0.00051289  0.89D-04  0.67D-04  3729.63
    4     1     1     1.09343625    -0.79608798  -192.59544761    -0.00071860    -0.00003970  0.52D-05  0.55D-05  5565.70
    4     2     2     1.09343454    -0.79608785  -192.59544748    -0.00072072    -0.00003992  0.52D-05  0.56D-05  5565.70
    4     3     3     1.09343544    -0.79608762  -192.59544724    -0.00073117    -0.00003998  0.52D-05  0.56D-05  5565.70
    4     4     4     1.09343387    -0.79608739  -192.59544701    -0.00073709    -0.00004031  0.53D-05  0.56D-05  5565.70
    4     5     5     1.09343365    -0.79608716  -192.59544679    -0.00073912    -0.00004047  0.53D-05  0.57D-05  5565.70
    4     6     6     1.09231854    -0.79194876  -192.55697862    -0.00066588    -0.00004021  0.39D-05  0.68D-05  5565.70
    4     7     7     1.08633970    -0.77300020  -192.44755497    -0.00030649    -0.00001207  0.22D-05  0.13D-05  5565.70
    4     8     8     1.08633933    -0.77300018  -192.44755495    -0.00030670    -0.00001210  0.22D-05  0.13D-05  5565.70
    4     9     9     1.08633897    -0.77300010  -192.44755486    -0.00030680    -0.00001214  0.22D-05  0.13D-05  5565.70
    4    10    10     1.08701420    -0.77626319  -192.43576453    -0.00039623    -0.00002044  0.35D-05  0.30D-05  5565.70
    4    11    11     1.08701238    -0.77626300  -192.43576434    -0.00039712    -0.00002096  0.37D-05  0.31D-05  5565.70
    4    12    12     1.08701202    -0.77626300  -192.43576434    -0.00040676    -0.00002099  0.37D-05  0.31D-05  5565.70
    4    13    13     1.08701257    -0.77626297  -192.43576431    -0.00040717    -0.00002054  0.35D-05  0.30D-05  5565.70
    4    14    14     1.08701136    -0.77626282  -192.43576416    -0.00040758    -0.00002105  0.37D-05  0.31D-05  5565.70
    4    15    15     1.08778665    -0.77789588  -192.42595376    -0.00056057    -0.00003375  0.58D-05  0.54D-05  5565.70
    5     1     1     1.09356465    -0.79613364  -192.59549327    -0.00004566    -0.00000192  0.94D-07  0.35D-06  7407.23
    5     2     2     1.09356377    -0.79613363  -192.59549326    -0.00004578    -0.00000193  0.96D-07  0.35D-06  7407.23
    5     3     3     1.09356482    -0.79613362  -192.59549325    -0.00004600    -0.00000194  0.96D-07  0.35D-06  7407.23
    5     4     4     1.09356332    -0.79613360  -192.59549323    -0.00004622    -0.00000196  0.99D-07  0.35D-06  7407.23
    5     5     5     1.09356294    -0.79613358  -192.59549321    -0.00004642    -0.00000197  0.10D-06  0.35D-06  7407.23
    5     6     6     1.09277170    -0.79199533  -192.55702519    -0.00004657    -0.00000232  0.12D-06  0.42D-06  7407.23
    5     7     7     1.08643833    -0.77301421  -192.44756897    -0.00001401    -0.00000057  0.37D-07  0.10D-06  7407.23
    5     8     8     1.08643840    -0.77301418  -192.44756895    -0.00001400    -0.00000057  0.37D-07  0.99D-07  7407.23
    5     9     9     1.08643836    -0.77301417  -192.44756894    -0.00001408    -0.00000058  0.37D-07  0.10D-06  7407.23
    5    10    10     1.08717827    -0.77628861  -192.43578995    -0.00002542    -0.00000163  0.87D-07  0.36D-06  7407.23
    5    11    11     1.08717848    -0.77628857  -192.43578991    -0.00002557    -0.00000162  0.86D-07  0.36D-06  7407.23
    5    12    12     1.08717816    -0.77628852  -192.43578986    -0.00002552    -0.00000164  0.87D-07  0.36D-06  7407.23
    5    13    13     1.08717905    -0.77628822  -192.43578956    -0.00002525    -0.00000158  0.83D-07  0.35D-06  7407.23
    5    14    14     1.08717857    -0.77628813  -192.43578947    -0.00002531    -0.00000158  0.83D-07  0.35D-06  7407.23
    5    15    15     1.08797099    -0.77793670  -192.42599458    -0.00004082    -0.00000266  0.15D-06  0.57D-06  7407.23
    6     1     1     1.09358175    -0.79613589  -192.59549552    -0.00000225    -0.00000015  0.13D-07  0.27D-07  9244.11
    6     2     2     1.09358177    -0.79613589  -192.59549552    -0.00000226    -0.00000015  0.14D-07  0.28D-07  9244.11
    6     3     3     1.09358172    -0.79613589  -192.59549551    -0.00000227    -0.00000015  0.13D-07  0.27D-07  9244.11
    6     4     4     1.09358157    -0.79613589  -192.59549551    -0.00000229    -0.00000016  0.14D-07  0.28D-07  9244.11
    6     5     5     1.09358153    -0.79613588  -192.59549551    -0.00000230    -0.00000016  0.14D-07  0.28D-07  9244.11
    6     6     6     1.09281529    -0.79199813  -192.55702799    -0.00000280    -0.00000017  0.17D-07  0.28D-07  9244.11
    6     7     7     1.08645033    -0.77301490  -192.44756967    -0.00000069    -0.00000005  0.38D-08  0.10D-07  9244.11
    6     8     8     1.08645028    -0.77301487  -192.44756964    -0.00000069    -0.00000005  0.39D-08  0.10D-07  9244.11
    6     9     9     1.08645034    -0.77301487  -192.44756964    -0.00000070    -0.00000005  0.38D-08  0.10D-07  9244.11
    6    10    10     1.08720111    -0.77629078  -192.43579212    -0.00000217    -0.00000020  0.22D-07  0.34D-07  9244.11
    6    11    11     1.08720093    -0.77629072  -192.43579207    -0.00000216    -0.00000020  0.22D-07  0.34D-07  9244.11
    6    12    12     1.08720094    -0.77629069  -192.43579203    -0.00000218    -0.00000020  0.22D-07  0.34D-07  9244.11
    6    13    13     1.08720100    -0.77629035  -192.43579169    -0.00000212    -0.00000019  0.20D-07  0.32D-07  9244.11
    6    14    14     1.08720086    -0.77629024  -192.43579158    -0.00000212    -0.00000019  0.20D-07  0.32D-07  9244.11
    6    15    15     1.08798828    -0.77794014  -192.42599802    -0.00000344    -0.00000030  0.31D-07  0.54D-07  9244.11
    7     1     1     1.09359839    -0.79613607  -192.59549570    -0.00000018    -0.00000002  0.13D-08  0.26D-08 11081.07
    7     2     2     1.09359837    -0.79613607  -192.59549570    -0.00000018    -0.00000002  0.13D-08  0.25D-08 11081.07
    7     3     3     1.09359835    -0.79613607  -192.59549570    -0.00000018    -0.00000002  0.14D-08  0.26D-08 11081.07
    7     4     4     1.09359843    -0.79613607  -192.59549570    -0.00000018    -0.00000001  0.13D-08  0.25D-08 11081.07
    7     5     5     1.09359841    -0.79613607  -192.59549570    -0.00000019    -0.00000001  0.13D-08  0.25D-08 11081.07
    7     6     6     1.09282927    -0.79199833  -192.55702819    -0.00000020    -0.00000002  0.15D-08  0.26D-08 11081.07
    7     7     7     1.08645345    -0.77301496  -192.44756973    -0.00000006    -0.00000001  0.48D-09  0.97D-09 11081.07
    7     8     8     1.08645343    -0.77301493  -192.44756970    -0.00000006    -0.00000001  0.49D-09  0.97D-09 11081.07
    7     9     9     1.08645342    -0.77301493  -192.44756970    -0.00000006    -0.00000001  0.47D-09  0.96D-09 11081.07
    7    10    10     1.08720825    -0.77629102  -192.43579236    -0.00000024    -0.00000002  0.20D-08  0.34D-08 11081.07
    7    11    11     1.08720822    -0.77629097  -192.43579231    -0.00000024    -0.00000002  0.20D-08  0.34D-08 11081.07
    7    12    12     1.08720812    -0.77629094  -192.43579228    -0.00000025    -0.00000002  0.20D-08  0.35D-08 11081.07
    7    13    13     1.08720781    -0.77629058  -192.43579192    -0.00000023    -0.00000002  0.19D-08  0.32D-08 11081.07
    7    14    14     1.08720765    -0.77629048  -192.43579182    -0.00000023    -0.00000002  0.19D-08  0.32D-08 11081.07
    7    15    15     1.08800190    -0.77794051  -192.42599839    -0.00000037    -0.00000004  0.33D-08  0.65D-08 11081.07


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.2%   4.3%
 P   0.3%  24.5%  44.3%

 Initialization:   0.5%
 Other:           25.6%

 Total CPU:    11081.1 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\000           0.9428573   0.0001449   0.0059468  -0.0048794   0.0014956   0.0000000   0.0000001   0.0000000
                            0.0000000  -0.1324474  -0.0000138  -0.0000000   0.0000032   0.0000011   0.0000000
 22222222220/\000          -0.0059362   0.0143653   0.9427364   0.0001983  -0.0069090  -0.0000000  -0.0000000  -0.0000000
                           -0.0000000  -0.0000000   0.0000526  -0.1324473   0.0000008   0.0000000   0.0000000
 2222222222/\0000          -0.0000047   0.9427332  -0.0143711   0.0094084  -0.0005250   0.0000000  -0.0000000   0.0000000
                           -0.0000006   0.0000138  -0.1324473  -0.0000526   0.0000001  -0.0000000  -0.0000000
 2222222222020000          -0.0013327   0.0006614   0.0056255  -0.0147306   0.7697034   0.5328587  -0.0000000   0.0000000
                           -0.0000000  -0.0000004   0.0000000   0.0000001   0.0210227  -0.1060803  -0.1129954
 22222222220/00\0          -0.0001880   0.0000933   0.0007936  -0.0020781   0.1085845   0.1157808   0.0000000  -0.0000000
                           -0.0000000   0.0000028  -0.0000001  -0.0000008  -0.1498045   0.7559185   0.5376479
 2222222222/00\00           0.0005779  -0.0009839  -0.0003861   0.0950727  -0.0524911   0.1157806  -0.0000000   0.0000000
                            0.0000000   0.0000156   0.0000003   0.0000042   0.7295416  -0.2482234   0.5376558
 2222222222/000\0          -0.0000005   0.0940414  -0.0014336   0.0009385  -0.0000524   0.0000000   0.0000601  -0.0011228
                            0.6741086  -0.0000695   0.6673710   0.0002652  -0.0000003   0.0000000   0.0000000
 2222222222/0000\           0.0940537   0.0000145   0.0005932  -0.0004867   0.0001492  -0.0000000  -0.6741075   0.0000000
                            0.0000601   0.6673731   0.0000695   0.0000000  -0.0000162  -0.0000057  -0.0000000
 222222222200/\00           0.0940537   0.0000145   0.0005932  -0.0004867   0.0001492  -0.0000000   0.6741068  -0.0000000
                           -0.0000601   0.6673739   0.0000695   0.0000000  -0.0000162  -0.0000057  -0.0000000
 222222222200/0\0          -0.0005922   0.0014330   0.0940417   0.0000198  -0.0006892  -0.0000000   0.0000001   0.6741063
                            0.0011228   0.0000000  -0.0002652   0.6673734  -0.0000039  -0.0000001  -0.0000000
 22222222220/000\          -0.0005922   0.0014330   0.0940416   0.0000198  -0.0006892  -0.0000000  -0.0000001  -0.6741061
                           -0.0011228   0.0000000  -0.0002652   0.6673736  -0.0000039  -0.0000001  -0.0000000
 22222222220/0\00          -0.0000005   0.0940413  -0.0014336   0.0009385  -0.0000524  -0.0000000  -0.0000601   0.0011228
                           -0.6741038  -0.0000695   0.6673760   0.0002652  -0.0000003   0.0000000   0.0000000
 2222222222200000           0.0040962  -0.0069747  -0.0027366   0.6739249  -0.3720840   0.5328587   0.0000000  -0.0000000
                           -0.0000000  -0.0000022  -0.0000000  -0.0000006  -0.1023784   0.0348336  -0.1129964
 2222222222002000          -0.0027634   0.0063132  -0.0028889  -0.6591943  -0.3976194   0.5328587   0.0000000   0.0000000
                            0.0000000   0.0000026   0.0000000   0.0000005   0.0813572   0.0712451  -0.1129958
 222222222200/00\          -0.0003898   0.0008906  -0.0004075  -0.0929946  -0.0560934   0.1157807  -0.0000000   0.0000000
                           -0.0000000  -0.0000184  -0.0000002  -0.0000034  -0.5797438  -0.5076886   0.5376514
 2222220222022000           0.0003361  -0.0005723  -0.0002245   0.0552963  -0.0305299  -0.0855670   0.0000000   0.0000000
                           -0.0000000  -0.0000002  -0.0000000  -0.0000001  -0.0100227   0.0034103   0.0198430
 2222220222202000          -0.0001094   0.0000543   0.0004616  -0.0012086   0.0631550  -0.0855670   0.0000000   0.0000000
                            0.0000000  -0.0000000   0.0000000   0.0000000   0.0020580  -0.0103848   0.0198431
 2222220222220000          -0.0002267   0.0005180  -0.0002370  -0.0540876  -0.0326252  -0.0855670   0.0000000  -0.0000000
                           -0.0000000   0.0000003   0.0000000   0.0000000   0.0079645   0.0069748   0.0198430
 2222220222/2\000          -0.0773623  -0.0000119  -0.0004879   0.0004004  -0.0001227  -0.0000000  -0.0000000  -0.0000000
                            0.0000000   0.0129662   0.0000014   0.0000000  -0.0000003  -0.0000001  -0.0000000
 22222202222/\000           0.0004871  -0.0011787  -0.0773524  -0.0000163   0.0005669   0.0000000   0.0000000  -0.0000000
                           -0.0000000   0.0000000  -0.0000052   0.0129662  -0.0000001  -0.0000000   0.0000000
 2222220222/\2000           0.0000004  -0.0773522   0.0011792  -0.0007720   0.0000431  -0.0000000   0.0000000   0.0000000
                            0.0000001  -0.0000014   0.0129663   0.0000052  -0.0000000   0.0000000   0.0000000
 22222202222/00\0           0.0000615  -0.0000895  -0.0000863   0.0081749  -0.0117776  -0.0019655  -0.0000000   0.0000000
                            0.0000000  -0.0000002   0.0000000   0.0000000   0.0096553  -0.0562924  -0.0420062
 22222202220/20\0          -0.0000202   0.0000690  -0.0000881  -0.0077183  -0.0120821  -0.0019655   0.0000000  -0.0000000
                            0.0000000  -0.0000002   0.0000000   0.0000001   0.0125430  -0.0557202  -0.0420063
 2222220222/20\00          -0.0000550   0.0000744   0.0000932  -0.0066038   0.0127254  -0.0019655  -0.0000000  -0.0000000
                            0.0000000  -0.0000012  -0.0000000  -0.0000003  -0.0545262   0.0169977  -0.0420067
 2222220222/02\00          -0.0000720   0.0001418  -0.0000083  -0.0142870  -0.0011913  -0.0019655  -0.0000000   0.0000000
                           -0.0000000  -0.0000011  -0.0000000  -0.0000003  -0.0535782   0.0197843  -0.0420067
 2222220222/020\0           0.0000000  -0.0063584   0.0000969  -0.0000635   0.0000035   0.0000000  -0.0000045   0.0000843
                           -0.0506126   0.0000052  -0.0501820  -0.0000199   0.0000000  -0.0000000  -0.0000000
 2222220222/2000\          -0.0063592  -0.0000010  -0.0000401   0.0000329  -0.0000101  -0.0000000   0.0506125  -0.0000000
                           -0.0000045  -0.0501821  -0.0000052  -0.0000000   0.0000012   0.0000004   0.0000000
 222222022202/\00          -0.0063593  -0.0000010  -0.0000401   0.0000329  -0.0000101  -0.0000000  -0.0506125   0.0000000
                            0.0000045  -0.0501822  -0.0000052  -0.0000000   0.0000012   0.0000004   0.0000000
 222222022220/0\0           0.0000400  -0.0000969  -0.0063585  -0.0000013   0.0000466   0.0000000  -0.0000000  -0.0506124
                           -0.0000843  -0.0000000   0.0000199  -0.0501822   0.0000003   0.0000000  -0.0000000
 22222202222/000\           0.0000400  -0.0000969  -0.0063584  -0.0000013   0.0000466   0.0000000   0.0000000   0.0506124
                            0.0000843  -0.0000000   0.0000199  -0.0501822   0.0000003   0.0000000   0.0000000
 22222202220/2\00           0.0000000  -0.0063584   0.0000969  -0.0000635   0.0000035   0.0000000   0.0000045  -0.0000843
                            0.0506123   0.0000052  -0.0501824  -0.0000199   0.0000000  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.003814    0.953796   -0.006005   -0.000005   -0.003500   -0.000000   -0.000000   -0.000000    0.000000   -0.000314
            -0.058768    0.000000    0.000370   -0.000058   -0.000000
 2           0.008354    0.000147    0.014532    0.953671    0.004606   -0.000000    0.000000    0.000000    0.000000    0.000536
            -0.000009   -0.058760   -0.000895    0.000240    0.000000
 3          -0.002928    0.006016    0.953674   -0.014538    0.006326    0.000000    0.000000   -0.000000    0.000000    0.000203
            -0.000371    0.000896   -0.058760   -0.000379   -0.000000
 4          -0.864124   -0.004936    0.000201    0.009518   -0.403688    0.000000    0.000000    0.000000   -0.000000   -0.051898
             0.000304   -0.000586   -0.000012   -0.027568   -0.000000
 5          -0.403715    0.001513   -0.006989   -0.000531    0.864148    0.000000   -0.000000    0.000000    0.000000    0.027568
            -0.000093    0.000033    0.000431   -0.051901    0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.953316   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.070101
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000085    0.958598   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958596   -0.001597   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 9          -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.001597    0.958596   -0.000085    0.000000
            -0.000000    0.000003    0.000000    0.000000    0.000000
 10         -0.000002    0.060669    0.000000   -0.000006   -0.000000    0.000000    0.000000    0.000000    0.000001    0.000020
             0.956339   -0.000100    0.000000    0.000015    0.000000
 11         -0.000000    0.000006   -0.000024    0.060669   -0.000000   -0.000000   -0.000000   -0.000004    0.000000    0.000000
             0.000100    0.956339   -0.000380    0.000000   -0.000000
 12         -0.000000    0.000000    0.060669    0.000024   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000005
             0.000000    0.000380    0.956339    0.000002    0.000000
 13         -0.049604   -0.000001   -0.000000   -0.000000   -0.034931   -0.000000   -0.000000   -0.000000    0.000000    0.910231
            -0.000023   -0.000000   -0.000006    0.293368   -0.000004
 14         -0.034931   -0.000001   -0.000000    0.000000    0.049604    0.000000    0.000000    0.000000   -0.000000   -0.293368
            -0.000008    0.000000   -0.000000    0.910231    0.000004
 15         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.072084    0.000000   -0.000000    0.000000    0.000005
            -0.000000    0.000000   -0.000000   -0.000003    0.955198

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955637   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000870
             0.000000   -0.000005    0.000005   -0.000001    0.000000
 2          -0.000000    0.955637    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000870    0.000014   -0.000009   -0.000001    0.000000
 3          -0.000000    0.000000    0.955637    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000005
            -0.000014    0.000870   -0.000001    0.000006   -0.000000
 4           0.000000    0.000000    0.000000    0.955637    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000004
             0.000009    0.000000    0.000856    0.000153   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.955637   -0.000000    0.000000   -0.000000    0.000000    0.000001
            -0.000000   -0.000006   -0.000153    0.000856   -0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.955889    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000919
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.958598    0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000000
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.958598   -0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.958598    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 10          0.000870    0.000000    0.000005   -0.000004    0.000001    0.000000    0.000000   -0.000000    0.000000    0.958261
             0.000000   -0.000000   -0.000000   -0.000000    0.000000
 11          0.000000    0.000870   -0.000014    0.000009   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.958261   -0.000000    0.000000    0.000000    0.000000
 12         -0.000005    0.000014    0.000870    0.000000   -0.000006    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.958261   -0.000000    0.000000   -0.000000
 13          0.000005   -0.000009   -0.000001    0.000856   -0.000153   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.958262    0.000000    0.000000
 14         -0.000001   -0.000001    0.000006    0.000153    0.000856   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000    0.958262   -0.000000
 15          0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000919    0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.957914


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95379598 (fixed)   0.95571113 (relaxed)   0.95563735 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128085   -0.00252268   -0.67198857
 Singles      0.01816441   -0.06132891   -0.06920909
 Pairs        0.07555386    0.00000000   -0.05493841
 Total        1.09499912   -0.06385158   -0.79613607
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79881495
 Nuclear energy                         0.00000000
 Kinetic energy                        63.26147545
 One electron energy                 -335.67874588
 Two electron energy                  143.08325018
 Virial quotient                       -3.04443572
 Correlation energy                    -0.79668075
 !MRCI STATE 1.1 Energy              -192.595495700844

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67117968 (Davidson, fixed reference)
 Cluster corrected energies          -192.67104499 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67117968 (Davidson, rotated reference)

 Cluster corrected energies          -192.67003258 (Pople, fixed reference)
 Cluster corrected energies          -192.66988903 (Pople, relaxed reference)
 Cluster corrected energies          -192.67003258 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95367050 (fixed)   0.95571114 (relaxed)   0.95563736 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128085   -0.00252268   -0.67198866
 Singles      0.01816433   -0.06132882   -0.06920904
 Pairs        0.07555392   -0.00000000   -0.05493837
 Total        1.09499910   -0.06385150   -0.79613607
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79881495
 Nuclear energy                         0.00000000
 Kinetic energy                        63.26147601
 One electron energy                 -335.67874636
 Two electron energy                  143.08325066
 Virial quotient                       -3.04443570
 Correlation energy                    -0.79668075
 !MRCI STATE 2.1 Energy              -192.595495699579

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67117965 (Davidson, fixed reference)
 Cluster corrected energies          -192.67104496 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67117965 (Davidson, rotated reference)

 Cluster corrected energies          -192.67003256 (Pople, fixed reference)
 Cluster corrected energies          -192.66988900 (Pople, relaxed reference)
 Cluster corrected energies          -192.67003256 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95367370 (fixed)   0.95571115 (relaxed)   0.95563737 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128085   -0.00252268   -0.67198859
 Singles      0.01816443   -0.06132891   -0.06920910
 Pairs        0.07555381    0.00000000   -0.05493837
 Total        1.09499908   -0.06385158   -0.79613607
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79881495
 Nuclear energy                         0.00000000
 Kinetic energy                        63.26147450
 One electron energy                 -335.67874450
 Two electron energy                  143.08324880
 Virial quotient                       -3.04443577
 Correlation energy                    -0.79668075
 !MRCI STATE 3.1 Energy              -192.595495699198

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67117964 (Davidson, fixed reference)
 Cluster corrected energies          -192.67104495 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67117964 (Davidson, rotated reference)

 Cluster corrected energies          -192.67003254 (Pople, fixed reference)
 Cluster corrected energies          -192.66988899 (Pople, relaxed reference)
 Cluster corrected energies          -192.67003254 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.86412412 (fixed)   0.95571111 (relaxed)   0.95563733 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128084   -0.00252267   -0.67198861
 Singles      0.01816430   -0.06132885   -0.06920903
 Pairs        0.07555401    0.00000003   -0.05493843
 Total        1.09499915   -0.06385150   -0.79613607
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79881494
 Nuclear energy                         0.00000000
 Kinetic energy                        63.26148567
 One electron energy                 -335.67876146
 Two electron energy                  143.08326576
 Virial quotient                       -3.04443523
 Correlation energy                    -0.79668075
 !MRCI STATE 4.1 Energy              -192.595495698845

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67117970 (Davidson, fixed reference)
 Cluster corrected energies          -192.67104501 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67117970 (Davidson, rotated reference)

 Cluster corrected energies          -192.67003261 (Pople, fixed reference)
 Cluster corrected energies          -192.66988905 (Pople, relaxed reference)
 Cluster corrected energies          -192.67003261 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.86414813 (fixed)   0.95571112 (relaxed)   0.95563734 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128084   -0.00252267   -0.67198869
 Singles      0.01816427   -0.06132879   -0.06920900
 Pairs        0.07555403    0.00000003   -0.05493839
 Total        1.09499913   -0.06385143   -0.79613607
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79881494
 Nuclear energy                         0.00000000
 Kinetic energy                        63.26148528
 One electron energy                 -335.67876133
 Two electron energy                  143.08326563
 Virial quotient                       -3.04443525
 Correlation energy                    -0.79668075
 !MRCI STATE 5.1 Energy              -192.595495696923

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67117968 (Davidson, fixed reference)
 Cluster corrected energies          -192.67104499 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67117968 (Davidson, rotated reference)

 Cluster corrected energies          -192.67003259 (Pople, fixed reference)
 Cluster corrected energies          -192.66988903 (Pople, relaxed reference)
 Cluster corrected energies          -192.67003259 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95331562 (fixed)   0.95610711 (relaxed)   0.95588907 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00145789   -0.00225663   -0.74282023
 Singles      0.01253877   -0.04876426   -0.05362689
 Pairs        0.08042584    0.06857044    0.00444879
 Total        1.09442250    0.01754956   -0.79199833
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.76438421
 Nuclear energy                         0.00000000
 Kinetic energy                        63.23674339
 One electron energy                 -335.40268017
 Two electron energy                  142.84565198
 Virial quotient                       -3.04501810
 Correlation energy                    -0.79264398
 !MRCI STATE 6.1 Energy              -192.557028190894

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.63187162 (Davidson, fixed reference)
 Cluster corrected energies          -192.63147600 (Davidson, relaxed reference)
 Cluster corrected energies          -192.63187162 (Davidson, rotated reference)

 Cluster corrected energies          -192.63070042 (Pople, fixed reference)
 Cluster corrected energies          -192.63027930 (Pople, relaxed reference)
 Cluster corrected energies          -192.63070042 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95859762 (fixed)   0.95871499 (relaxed)   0.95859763 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165042   -0.00322363   -0.65580977
 Singles      0.01683709   -0.06060804   -0.06764954
 Pairs        0.06975905    0.00000000   -0.04955565
 Total        1.08824656   -0.06383167   -0.77301496
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67455477
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00122060
 One electron energy                 -331.47040598
 Two electron energy                  139.02283625
 Virial quotient                       -3.05466415
 Correlation energy                    -0.77301496
 !MRCI STATE 7.1 Energy              -192.447569728532

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51578564 (Davidson, fixed reference)
 Cluster corrected energies          -192.51557968 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51578564 (Davidson, rotated reference)

 Cluster corrected energies          -192.51436029 (Pople, fixed reference)
 Cluster corrected energies          -192.51414332 (Pople, relaxed reference)
 Cluster corrected energies          -192.51436029 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95859631 (fixed)   0.95871500 (relaxed)   0.95859764 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165042   -0.00322363   -0.65580974
 Singles      0.01683708   -0.06060805   -0.06764953
 Pairs        0.06975903    0.00000000   -0.04955566
 Total        1.08824653   -0.06383168   -0.77301493
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67455477
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00122074
 One electron energy                 -331.47040543
 Two electron energy                  139.02283573
 Virial quotient                       -3.05466414
 Correlation energy                    -0.77301493
 !MRCI STATE 8.1 Energy              -192.447569700522

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51578559 (Davidson, fixed reference)
 Cluster corrected energies          -192.51557963 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51578559 (Davidson, rotated reference)

 Cluster corrected energies          -192.51436024 (Pople, fixed reference)
 Cluster corrected energies          -192.51414327 (Pople, relaxed reference)
 Cluster corrected energies          -192.51436024 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95859631 (fixed)   0.95871501 (relaxed)   0.95859764 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165042   -0.00322363   -0.65580982
 Singles      0.01683704   -0.06060798   -0.06764948
 Pairs        0.06975906   -0.00000000   -0.04955563
 Total        1.08824652   -0.06383160   -0.77301493
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67455477
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00122001
 One electron energy                 -331.47040524
 Two electron energy                  139.02283555
 Virial quotient                       -3.05466417
 Correlation energy                    -0.77301493
 !MRCI STATE 9.1 Energy              -192.447569698430

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51578558 (Davidson, fixed reference)
 Cluster corrected energies          -192.51557962 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51578558 (Davidson, rotated reference)

 Cluster corrected energies          -192.51436023 (Pople, fixed reference)
 Cluster corrected energies          -192.51414326 (Pople, relaxed reference)
 Cluster corrected energies          -192.51436023 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95633930 (fixed)   0.95838482 (relaxed)   0.95826138 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165760   -0.00321024   -0.65834842
 Singles      0.01675704   -0.06062952   -0.06761247
 Pairs        0.07059576   -0.00000000   -0.05033013
 Total        1.08901040   -0.06383976   -0.77629102
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66004602
 Nuclear energy                         0.00000000
 Kinetic energy                        63.03821188
 One electron energy                 -331.70794806
 Two electron energy                  139.27215570
 Virial quotient                       -3.05268482
 Correlation energy                    -0.77574634
 !MRCI STATE 10.1 Energy             -192.435792360487

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50484186 (Davidson, fixed reference)
 Cluster corrected energies          -192.50462425 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50484186 (Davidson, rotated reference)

 Cluster corrected energies          -192.50344371 (Pople, fixed reference)
 Cluster corrected energies          -192.50321417 (Pople, relaxed reference)
 Cluster corrected energies          -192.50344371 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95633923 (fixed)   0.95838483 (relaxed)   0.95826138 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165761   -0.00321024   -0.65834844
 Singles      0.01675699   -0.06062946   -0.06761235
 Pairs        0.07059579    0.00000000   -0.05033017
 Total        1.08901039   -0.06383970   -0.77629097
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66004602
 Nuclear energy                         0.00000000
 Kinetic energy                        63.03821236
 One electron energy                 -331.70795055
 Two electron energy                  139.27215825
 Virial quotient                       -3.05268479
 Correlation energy                    -0.77574628
 !MRCI STATE 11.1 Energy             -192.435792307086

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50484179 (Davidson, fixed reference)
 Cluster corrected energies          -192.50462417 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50484179 (Davidson, rotated reference)

 Cluster corrected energies          -192.50344365 (Pople, fixed reference)
 Cluster corrected energies          -192.50321409 (Pople, relaxed reference)
 Cluster corrected energies          -192.50344365 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95633927 (fixed)   0.95838488 (relaxed)   0.95826143 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165762   -0.00321024   -0.65834850
 Singles      0.01675694   -0.06062944   -0.06761232
 Pairs        0.07059573   -0.00000000   -0.05033012
 Total        1.08901029   -0.06383968   -0.77629094
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66004602
 Nuclear energy                         0.00000000
 Kinetic energy                        63.03821160
 One electron energy                 -331.70794884
 Two electron energy                  139.27215656
 Virial quotient                       -3.05268483
 Correlation energy                    -0.77574626
 !MRCI STATE 12.1 Energy             -192.435792279090

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50484168 (Davidson, fixed reference)
 Cluster corrected energies          -192.50462406 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50484168 (Davidson, rotated reference)

 Cluster corrected energies          -192.50344353 (Pople, fixed reference)
 Cluster corrected energies          -192.50321397 (Pople, relaxed reference)
 Cluster corrected energies          -192.50344353 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.91023105 (fixed)   0.95838501 (relaxed)   0.95826155 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165764   -0.00321025   -0.65835143
 Singles      0.01675663   -0.06062908   -0.06761176
 Pairs        0.07059574    0.00000298   -0.05032739
 Total        1.08901001   -0.06383634   -0.77629058
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66004602
 Nuclear energy                         0.00000000
 Kinetic energy                        63.03819837
 One electron energy                 -331.70794428
 Two electron energy                  139.27215236
 Virial quotient                       -3.05268547
 Correlation energy                    -0.77574589
 !MRCI STATE 13.1 Energy             -192.435791919135

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50484107 (Davidson, fixed reference)
 Cluster corrected energies          -192.50462343 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50484107 (Davidson, rotated reference)

 Cluster corrected energies          -192.50344291 (Pople, fixed reference)
 Cluster corrected energies          -192.50321333 (Pople, relaxed reference)
 Cluster corrected energies          -192.50344291 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.91023110 (fixed)   0.95838508 (relaxed)   0.95826161 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165767   -0.00321025   -0.65834618
 Singles      0.01675646   -0.06062891   -0.06761153
 Pairs        0.07059575   -0.00000291   -0.05033277
 Total        1.08900988   -0.06384206   -0.77629048
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66004603
 Nuclear energy                         0.00000000
 Kinetic energy                        63.03819809
 One electron energy                 -331.70794512
 Two electron energy                  139.27215330
 Virial quotient                       -3.05268548
 Correlation energy                    -0.77574579
 !MRCI STATE 14.1 Energy             -192.435791817128

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50484085 (Davidson, fixed reference)
 Cluster corrected energies          -192.50462319 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50484085 (Davidson, rotated reference)

 Cluster corrected energies          -192.50344269 (Pople, fixed reference)
 Cluster corrected energies          -192.50321309 (Pople, relaxed reference)
 Cluster corrected energies          -192.50344269 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95519839 (fixed)   0.95805562 (relaxed)   0.95791399 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00165304   -0.00310456   -0.00547272
 Singles      0.01626414   -0.05875380   -0.06551473
 Pairs        0.07188323   -0.71450852   -0.70695307
 Total        1.08980041   -0.77636687   -0.77794051
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.64870352
 Nuclear energy                         0.00000000
 Kinetic energy                        63.06316398
 One electron energy                 -331.88801025
 Two electron energy                  139.46201186
 Virial quotient                       -3.05132166
 Correlation energy                    -0.77729487
 !MRCI STATE 15.1 Energy             -192.425998386430

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.49579979 (Davidson, fixed reference)
 Cluster corrected energies          -192.49554935 (Davidson, relaxed reference)
 Cluster corrected energies          -192.49579979 (Davidson, rotated reference)

 Cluster corrected energies          -192.49443313 (Pople, fixed reference)
 Cluster corrected energies          -192.49416861 (Pople, relaxed reference)
 Cluster corrected energies          -192.49443313 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     9806.69       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     27630.63  12948.14  14663.41      9.57      1.41      7.70
 REAL TIME  *     28486.43 SEC
 DISK USED  *         9.66 GB (local),      155.64 GB (total)
 SF USED    *        51.93 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -192.67117968  AU                              
 SETTING HLSDIAG(14)    =      -192.67117965  AU                              
 SETTING HLSDIAG(15)    =      -192.67117964  AU                              
 SETTING HLSDIAG(16)    =      -192.67117970  AU                              
 SETTING HLSDIAG(17)    =      -192.67117968  AU                              
 SETTING HLSDIAG(18)    =      -192.63187162  AU                              
 SETTING HLSDIAG(19)    =      -192.51578564  AU                              
 SETTING HLSDIAG(20)    =      -192.51578559  AU                              
 SETTING HLSDIAG(21)    =      -192.51578558  AU                              
 SETTING HLSDIAG(22)    =      -192.50484186  AU                              
 SETTING HLSDIAG(23)    =      -192.50484179  AU                              
 SETTING HLSDIAG(24)    =      -192.50484168  AU                              
 SETTING HLSDIAG(25)    =      -192.50484107  AU                              
 SETTING HLSDIAG(26)    =      -192.50484085  AU                              
 SETTING HLSDIAG(27)    =      -192.49579979  AU                              


         HLSDIAG
    -192.6961746
    -192.6961746
    -192.6961746
    -192.5123172
    -192.5123168
    -192.5123167
    -192.5123167
    -192.5123167
    -192.5101393
    -192.5101386
    -192.5101386
    -192.5071728
    -192.6711797
    -192.6711797
    -192.6711796
    -192.6711797
    -192.6711797
    -192.6318716
    -192.5157856
    -192.5157856
    -192.5157856
    -192.5048419
    -192.5048418
    -192.5048417
    -192.5048411
    -192.5048409
    -192.4957998
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -192.624088   -192.624088   -192.624088   -192.444010   -192.444010   -192.444010   -192.444010   -192.444010
                      -192.441861   -192.441860   -192.441860   -192.438693
 Replaced energies:   -192.696175   -192.696175   -192.696175   -192.512317   -192.512317   -192.512317   -192.512317   -192.512317
                      -192.510139   -192.510139   -192.510139   -192.507173

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies:   -192.595496   -192.595496   -192.595496   -192.595496   -192.595496   -192.557028   -192.447570   -192.447570
                      -192.447570   -192.435792   -192.435792   -192.435792   -192.435792   -192.435792   -192.425998
 Replaced energies:   -192.671180   -192.671180   -192.671180   -192.671180   -192.671180   -192.631872   -192.515786   -192.515786
                      -192.515786   -192.504842   -192.504842   -192.504842   -192.504841   -192.504841   -192.495800



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.69617462

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    3536.44      13.71      -0.00      -0.00      -0.00     792.88       0.00      -0.00      -0.24

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3536.44       0.00      -0.00      -3.15    -792.89      -0.00      -0.00       1.69    -699.84      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -13.71       0.00       0.00     804.49      -3.11       0.11       0.00    -437.04      -2.71       0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00   40352.04       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       3.15    -804.49      -0.00      -0.00   -1978.46       0.08      -0.51       0.00   -1825.50

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   40352.12       0.00       0.00       0.00       0.00       0.00
                            0.00     792.89       3.11       0.00       0.00       0.08    2072.07       0.00       0.01       0.69

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   40352.16       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.11    1978.46      -0.08       0.00      -0.00    3641.34       0.00      -0.25

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   40352.16       0.00       0.00       0.00
                         -792.88       0.00      -0.00      -0.08   -2072.07       0.00       0.00      -0.00    1799.27      -0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40352.15       0.00       0.00
                           -0.00      -1.69     437.04       0.51      -0.00   -3641.34       0.00      -0.00       0.00     991.87

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40830.03       0.00
                            0.00     699.84       2.71      -0.00      -0.01      -0.00   -1799.27      -0.00       0.00      -0.74

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40830.18
                            0.24       0.00      -0.00    1825.50      -0.69       0.25       0.00    -991.87       0.74      -0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          699.86      -0.00      -0.00      -0.69   -1799.22      -0.00       0.01       0.34    2157.60       0.00

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -4.98    1285.10      -0.00      -0.00      -0.03       0.00      -0.00      -0.00    2950.23

   13   1.1  1.0  0.0       0.00       9.70   -2500.64       0.02      -0.00    -560.64       0.00      -0.10      -0.00     494.89
                            0.00       0.00       0.00     -16.76       0.00      -0.12      -0.00     647.21       0.00      -0.00

   14   2.1  1.0  0.0      -9.70       0.00       0.00    -552.08       2.20       0.04       0.00    -338.08      -1.92      -0.00
                           -0.00      -0.00    2500.66       0.02      -0.00    -560.67      -2.17      -0.10      -0.00    -494.84

   15   3.1  1.0  0.0    2500.64      -0.00      -0.00      -2.16    -560.66       0.00      -0.00      -1.31     494.86       0.00
                           -0.00   -2500.66       0.00       0.00       0.00      -2.17     560.66      -0.00       0.00      -1.75

   16   4.1  1.0  0.0      -0.02     552.08       2.16      -0.00       0.06       0.06    1530.43       0.00       0.06       0.48
                           16.76      -0.02      -0.00      -0.00    2929.34      -0.00       0.06      -0.00     -38.04      -0.00

   17   5.1  1.0  0.0       0.00      -2.20     560.66      -0.06       0.00    1465.21      -0.06       0.27      -0.00    1272.20
                           -0.00       0.00      -0.00   -2929.34       0.00      -0.11      -0.00     -75.91       0.00      -0.00

   18   6.1  1.0  0.0     560.64      -0.04      -0.00      -0.06   -1465.21       0.00       0.52      -0.00   -1272.31      -0.00
                            0.12     560.67       2.17       0.00       0.11      -0.00   -1465.10      -0.00      -0.26       0.43

   19   7.1  1.0  0.0      -0.00      -0.00       0.00   -1530.43       0.06      -0.52       0.00    2498.92       0.00      -0.00
                            0.00       2.17    -560.66      -0.06       0.00    1465.10      -0.00       0.27       0.00   -1272.29

   20   8.1  1.0  0.0       0.10     338.08       1.31      -0.00      -0.27       0.00   -2498.92       0.00      -0.23       0.26
                         -647.21       0.10       0.00       0.00      75.91       0.00      -0.27       0.00    1468.65       0.00

   21   9.1  1.0  0.0       0.00       1.92    -494.86      -0.06       0.00    1272.31      -0.00       0.23      -0.00    1525.63
                           -0.00       0.00      -0.00      38.04      -0.00       0.26      -0.00   -1468.65       0.00       0.01

   22  10.1  1.0  0.0    -494.89       0.00      -0.00      -0.48   -1272.20       0.00       0.00      -0.26   -1525.63      -0.00
                            0.00     494.84       1.75       0.00       0.00      -0.43    1272.29      -0.00      -0.01       0.00

   23  11.1  1.0  0.0       0.17      -0.00       0.00   -1252.77       0.48       0.08      -0.00    -767.21       0.52      -0.01
                            0.00       1.75    -494.86       0.05      -0.00   -1272.22      -0.43      -0.22      -0.00    1525.74

   24  12.1  1.0  0.0       0.00     908.71       3.52       0.00       0.00       0.00      -0.05       0.00       0.01       0.71
                          908.68      -0.00       0.00       0.00       0.03       0.00       0.00       0.00   -2086.06      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0       0.01      -5.00      15.55     640.21      -0.03       4.08       6.31   -1045.37       0.00      -2.70
                           15.20      -9.58    2473.46      -7.69       1.32    -612.93      -0.00      -0.31       2.64    -429.13

   38   2.1  0.0  0.0   -2473.15       2.60     -37.68       0.12     612.84      -9.34     -12.22      -0.16    -429.09       6.54
                          -25.88   -2473.14      -9.21      18.67      -5.20      -0.09     612.84       0.48      -4.49       0.08

   39   3.1  0.0  0.0      37.70      30.46   -2473.06       4.06      -9.34    -612.82       0.14      -6.70       6.54     429.12
                          -10.15      37.64      15.75    1225.26       7.78      -3.82      -9.34      31.75      -1.76      -2.71

   40   4.1  0.0  0.0     -24.68     -54.65      -0.73      -3.31       6.12      -0.13    1225.57       5.41      -4.28       0.09
                         2500.37     -24.63     -12.90       0.28     592.47       3.17       6.12       0.01     433.81       2.22

   41   5.1  0.0  0.0       1.38    2855.63      29.20       1.02      -0.34       4.49      23.47      -1.66       0.24      -3.31
                        -1380.49       1.36       3.93      -8.94    1073.15      -0.97      -0.34      -0.23    -239.51      -0.68

   42   6.1  0.0  0.0      -0.00   -4013.58     -15.56       0.00       0.00       0.00       0.01      -0.00       0.00       0.18
                        -4013.61       0.00       0.00      -0.00       0.00       0.00       0.00       0.00    -529.07      -0.00

   43   7.1  0.0  0.0      -0.05       0.00      -0.00   -1440.81       0.19       0.10       0.00    -882.32       0.11      -0.00
                           -0.00      -2.14     564.52       0.06      -0.00   -1463.15      -0.13      -0.27      -0.00    1268.62

   44   8.1  0.0  0.0       0.94       2.19    -564.52       0.06      -2.44   -1463.25      -0.00      -0.27      -2.11   -1268.51
                           -0.00      -0.94      -0.00     -43.75       0.00      -0.31       2.44    1689.07      -0.00      -0.00

   45   9.1  0.0  0.0    -564.52       0.00      -0.94       0.19    1463.20      -2.44       0.00       0.08    1268.57      -2.11
                            0.00     564.52       2.14      -0.07       0.00       0.13   -1463.18       2.81       0.01       0.32

   46  10.1  0.0  0.0      -0.06      -0.00      -0.00    1310.47      -0.18       0.44       0.06   -2139.80      -0.16      -0.00
                           -0.01       2.19    -579.44       0.05       0.04   -1254.54      -0.13      -0.23      -0.04    1543.78

   47  11.1  0.0  0.0     579.44       0.00      -0.23       0.18    1254.59       0.50       0.00      -0.22    1543.73       0.61
                           -0.00     579.43       2.19      -1.00       0.00      -0.13    1254.59      -0.03      -0.01      -0.37

   48  12.1  0.0  0.0       0.23      -2.25     579.44       0.05       0.50   -1254.66       0.01      -0.23       0.61   -1543.69
                           -0.00       0.23       0.00    2508.36      -0.09       0.09       0.50      65.00      -0.01      -0.00

   49  13.1  0.0  0.0      -0.00     130.06       0.50      -0.03      -0.00       0.01    2461.32       0.05      -0.00      -0.11
                         -633.43      -0.00       0.01       0.02     808.24       0.03      -0.00      -0.00   -1687.55      -0.04

   50  14.1  0.0  0.0       0.00    -656.31      -2.54      -0.01       0.00       0.00     487.79       0.02       0.01       0.60
                          215.53       0.00       0.00       0.09    2375.46       0.01       0.00       0.00     574.19      -0.01

   51  15.1  0.0  0.0       0.00    1221.97       4.74      -0.00       0.00      -0.00      -0.02       0.00      -0.02      -0.88
                         1221.97      -0.00       0.00      -0.00      -0.01       0.00       0.00      -0.00    2571.09      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00       0.00      -9.70    2500.64      -0.02       0.00     560.64      -0.00       0.10
                         -699.86       0.00      -0.00       0.00       0.00     -16.76       0.00      -0.12      -0.00     647.21

    2   2.1  1.0  1.0       0.00       0.00       9.70       0.00      -0.00     552.08      -2.20      -0.04      -0.00     338.08
                            0.00       4.98      -0.00       0.00    2500.66       0.02      -0.00    -560.67      -2.17      -0.10

    3   3.1  1.0  1.0       0.00       0.00   -2500.64       0.00      -0.00       2.16     560.66      -0.00       0.00       1.31
                            0.00   -1285.10      -0.00   -2500.66      -0.00       0.00       0.00      -2.17     560.66      -0.00

    4   4.1  1.0  1.0       0.00       0.00       0.02    -552.08      -2.16      -0.00      -0.06      -0.06   -1530.43      -0.00
                            0.69       0.00      16.76      -0.02      -0.00       0.00    2929.34      -0.00       0.06      -0.00

    5   5.1  1.0  1.0       0.00       0.00      -0.00       2.20    -560.66       0.06       0.00   -1465.21       0.06      -0.27
                         1799.22       0.00      -0.00       0.00      -0.00   -2929.34      -0.00      -0.11      -0.00     -75.91

    6   6.1  1.0  1.0       0.00       0.00    -560.64       0.04       0.00       0.06    1465.21       0.00      -0.52       0.00
                            0.00       0.03       0.12     560.67       2.17       0.00       0.11       0.00   -1465.10      -0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00    1530.43      -0.06       0.52       0.00   -2498.92
                           -0.01      -0.00       0.00       2.17    -560.66      -0.06       0.00    1465.10       0.00       0.27

    8   8.1  1.0  1.0       0.00       0.00      -0.10    -338.08      -1.31       0.00       0.27      -0.00    2498.92       0.00
                           -0.34       0.00    -647.21       0.10       0.00       0.00      75.91       0.00      -0.27      -0.00

    9   9.1  1.0  1.0       0.00       0.00      -0.00      -1.92     494.86       0.06      -0.00   -1272.31       0.00      -0.23
                        -2157.60       0.00      -0.00       0.00      -0.00      38.04      -0.00       0.26      -0.00   -1468.65

   10  10.1  1.0  1.0       0.00       0.00     494.89      -0.00       0.00       0.48    1272.20      -0.00      -0.00       0.26
                           -0.00   -2950.23       0.00     494.84       1.75       0.00       0.00      -0.43    1272.29      -0.00

   11  11.1  1.0  1.0   40830.19       0.00      -0.17       0.00      -0.00    1252.77      -0.48      -0.08       0.00     767.21
                           -0.00       1.01       0.00       1.75    -494.86       0.05      -0.00   -1272.22      -0.43      -0.22

   12  12.1  1.0  1.0       0.00   41481.10      -0.00    -908.71      -3.52      -0.00      -0.00      -0.00       0.05      -0.00
                           -1.01       0.00     908.68      -0.00       0.00       0.00       0.03       0.00       0.00       0.00

   13   1.1  1.0  0.0      -0.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -908.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0       0.00    -908.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.75       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0      -0.00      -3.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          494.86      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0    1252.77      -0.00       0.00       0.00       0.00   40352.04       0.00       0.00       0.00       0.00
                           -0.05      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0      -0.48      -0.00       0.00       0.00       0.00       0.00   40352.12       0.00       0.00       0.00
                            0.00      -0.03      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0      -0.08      -0.00       0.00       0.00       0.00       0.00       0.00   40352.16       0.00       0.00
                         1272.22      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0       0.00       0.05       0.00       0.00       0.00       0.00       0.00       0.00   40352.16       0.00
                            0.43      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0     767.21      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40352.15
                            0.22      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0      -0.52      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    2086.06      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0       0.01      -0.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1525.74       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.00   -2086.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0    2086.15      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       9.70   -2500.64       0.02      -0.00    -560.64       0.00      -0.10
                           -0.00      -0.00       0.00       0.00       0.00     -16.76       0.00      -0.12      -0.00     647.21

   26   2.1  1.0 -1.0       0.00       0.00      -9.70       0.00       0.00    -552.08       2.20       0.04       0.00    -338.08
                           -0.00      -0.00      -0.00      -0.00    2500.66       0.02      -0.00    -560.67      -2.17      -0.10

   27   3.1  1.0 -1.0       0.00       0.00    2500.64      -0.00      -0.00      -2.16    -560.66       0.00      -0.00      -1.31
                           -0.00      -0.00      -0.00   -2500.66       0.00       0.00       0.00      -2.17     560.66      -0.00

   28   4.1  1.0 -1.0       0.00       0.00      -0.02     552.08       2.16      -0.00       0.06       0.06    1530.43       0.00
                           -0.00      -0.00      16.76      -0.02      -0.00      -0.00    2929.34      -0.00       0.06      -0.00

   29   5.1  1.0 -1.0       0.00       0.00       0.00      -2.20     560.66      -0.06       0.00    1465.21      -0.06       0.27
                           -0.00      -0.00      -0.00       0.00      -0.00   -2929.34       0.00      -0.11      -0.00     -75.91

   30   6.1  1.0 -1.0       0.00       0.00     560.64      -0.04      -0.00      -0.06   -1465.21       0.00       0.52      -0.00
                           -0.00      -0.00       0.12     560.67       2.17       0.00       0.11      -0.00   -1465.10      -0.00

   31   7.1  1.0 -1.0       0.00       0.00      -0.00      -0.00       0.00   -1530.43       0.06      -0.52       0.00    2498.92
                           -0.00      -0.00       0.00       2.17    -560.66      -0.06       0.00    1465.10      -0.00       0.27

   32   8.1  1.0 -1.0       0.00       0.00       0.10     338.08       1.31      -0.00      -0.27       0.00   -2498.92       0.00
                           -0.00      -0.00    -647.21       0.10       0.00       0.00      75.91       0.00      -0.27       0.00

   33   9.1  1.0 -1.0       0.00       0.00       0.00       1.92    -494.86      -0.06       0.00    1272.31      -0.00       0.23
                           -0.00      -0.00      -0.00       0.00      -0.00      38.04      -0.00       0.26      -0.00   -1468.65

   34  10.1  1.0 -1.0       0.00       0.00    -494.89       0.00      -0.00      -0.48   -1272.20       0.00       0.00      -0.26
                           -0.00      -0.00       0.00     494.84       1.75       0.00       0.00      -0.43    1272.29      -0.00

   35  11.1  1.0 -1.0       0.00       0.00       0.17      -0.00       0.00   -1252.77       0.48       0.08      -0.00    -767.21
                           -0.00      -0.00       0.00       1.75    -494.86       0.05      -0.00   -1272.22      -0.43      -0.22

   36  12.1  1.0 -1.0       0.00       0.00       0.00     908.71       3.52       0.00       0.00       0.00      -0.05       0.00
                           -0.00      -0.00     908.68      -0.00       0.00       0.00       0.03       0.00       0.00       0.00

   37   1.1  0.0  0.0       0.86      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.14      -0.00   -3498.03     -22.08      14.41      -0.04    -866.80      -7.06      -5.46      -0.01

   38   2.1  0.0  0.0      -0.42      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          429.09       0.00      -0.54      53.42     -32.92     827.50      -0.17       9.68      13.21    1523.08

   39   3.1  0.0  0.0      -3.77      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.54       0.01     -22.06    3497.50      28.72     -12.62      -5.47      10.88     866.68     -23.22

   40   4.1  0.0  0.0       9.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.28       0.00      18.10     -12.67    3458.74       8.30       4.49    -895.36       0.18      15.04

   41   5.1  0.0  0.0    -495.46      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.24      -0.00      -5.55     -33.72    2086.18      -0.52      -1.37    1484.45      -6.35      -0.58

   42   6.1  0.0  0.0     529.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     -22.01    5676.06       0.00       0.00      -0.03      -0.00      -0.00

   43   7.1  0.0  0.0      -0.00   -2394.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.32      -0.00     798.36      -0.00      -0.00       0.27    2069.28       0.00      -0.00      -0.10

   44   8.1  0.0  0.0       0.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.11   -2394.69      -0.00    -798.35      -3.10      -3.50       0.00      -0.00   -2069.30       1.90

   45   9.1  0.0  0.0      -0.01       0.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1268.57      -3.99      -0.07      -1.33      -0.01    2099.56      -0.27       0.29      -3.45   -1140.57

   46  10.1  0.0  0.0       0.01      -0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.37       0.00     819.45       0.00      -0.02      -0.24   -1774.27      -0.03       0.00      -0.33

   47  11.1  0.0  0.0      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1543.76      -0.00       0.09       0.33       0.00    1694.06      -0.25      -0.50      -0.71    3118.06

   48  12.1  0.0  0.0       0.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.61       0.02       0.00    -819.44      -3.18       0.67      -0.00      -0.01    1774.30       1.24

   49  13.1  0.0  0.0    -346.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00      -0.02       2.76    -711.85       0.09       0.04   -2337.74      -0.01      -0.43

   50  14.1  0.0  0.0    1748.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.01       2.42    -623.39      -0.11       0.02    2669.66      -0.00       0.49

   51  15.1  0.0  0.0   -2571.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02      -0.00      -0.00       6.70   -1728.12      -0.00       0.00       0.11      -0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       0.00    -494.89       0.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -908.68       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       1.92       0.00      -0.00     908.71       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -494.84      -1.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0    -494.86      -0.00       0.00       3.52       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.75     494.86      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0      -0.06      -0.48   -1252.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -38.04      -0.00      -0.05      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0       0.00   -1272.20       0.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.03       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0    1272.31       0.00       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.26       0.43    1272.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0      -0.00       0.00      -0.00      -0.05       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1272.29       0.43      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0       0.23      -0.26    -767.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1468.65       0.00       0.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00   -1525.63       0.52       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00    2086.06       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0    1525.63      -0.00      -0.01       0.71       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00   -1525.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0      -0.52       0.01      -0.00    2086.15       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1525.74       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0      -0.01      -0.71   -2086.15      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2086.06      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -9.70    2500.64      -0.02       0.00     560.64
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00     -16.76       0.00      -0.12

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       9.70       0.00      -0.00     552.08      -2.20      -0.04
                            0.00       0.00       0.00       0.00      -0.00       0.00    2500.66       0.02      -0.00    -560.67

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00   -2500.64       0.00      -0.00       2.16     560.66      -0.00
                            0.00       0.00       0.00       0.00      -0.00   -2500.66      -0.00       0.00       0.00      -2.17

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.02    -552.08      -2.16      -0.00      -0.06      -0.06
                            0.00       0.00       0.00       0.00      16.76      -0.02      -0.00       0.00    2929.34      -0.00

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       2.20    -560.66       0.06       0.00   -1465.21
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00   -2929.34      -0.00      -0.11

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00    -560.64       0.04       0.00       0.06    1465.21       0.00
                            0.00       0.00       0.00       0.00       0.12     560.67       2.17       0.00       0.11       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    1530.43      -0.06       0.52
                            0.00       0.00       0.00       0.00       0.00       2.17    -560.66      -0.06       0.00    1465.10

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.10    -338.08      -1.31       0.00       0.27      -0.00
                            0.00       0.00       0.00       0.00    -647.21       0.10       0.00       0.00      75.91       0.00

   21   9.1  1.0  0.0   40830.03       0.00       0.00       0.00      -0.00      -1.92     494.86       0.06      -0.00   -1272.31
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      38.04      -0.00       0.26

   22  10.1  1.0  0.0       0.00   40830.18       0.00       0.00     494.89      -0.00       0.00       0.48    1272.20      -0.00
                           -0.00       0.00       0.00       0.00       0.00     494.84       1.75       0.00       0.00      -0.43

   23  11.1  1.0  0.0       0.00       0.00   40830.19       0.00      -0.17       0.00      -0.00    1252.77      -0.48      -0.08
                           -0.00      -0.00       0.00       0.00       0.00       1.75    -494.86       0.05      -0.00   -1272.22

   24  12.1  1.0  0.0       0.00       0.00       0.00   41481.10      -0.00    -908.71      -3.52      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     908.68      -0.00       0.00       0.00       0.03       0.00

   25   1.1  1.0 -1.0      -0.00     494.89      -0.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -908.68      -0.00   -3536.44     -13.71       0.00       0.00       0.00

   26   2.1  1.0 -1.0      -1.92      -0.00       0.00    -908.71       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -494.84      -1.75       0.00    3536.44      -0.00       0.00       3.15     792.89       0.00

   27   3.1  1.0 -1.0     494.86       0.00      -0.00      -3.52       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.75     494.86      -0.00      13.71      -0.00      -0.00    -804.49       3.11      -0.11

   28   4.1  1.0 -1.0       0.06       0.48    1252.77      -0.00       0.00       0.00       0.00   40352.04       0.00       0.00
                          -38.04      -0.00      -0.05      -0.00      -0.00      -3.15     804.49       0.00       0.00    1978.46

   29   5.1  1.0 -1.0      -0.00    1272.20      -0.48      -0.00       0.00       0.00       0.00       0.00   40352.12       0.00
                            0.00      -0.00       0.00      -0.03      -0.00    -792.89      -3.11      -0.00      -0.00      -0.08

   30   6.1  1.0 -1.0   -1272.31      -0.00      -0.08      -0.00       0.00       0.00       0.00       0.00       0.00   40352.16
                           -0.26       0.43    1272.22      -0.00      -0.00      -0.00       0.11   -1978.46       0.08      -0.00

   31   7.1  1.0 -1.0       0.00      -0.00       0.00       0.05       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1272.29       0.43      -0.00     792.88      -0.00       0.00       0.08    2072.07      -0.00

   32   8.1  1.0 -1.0      -0.23       0.26     767.21      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1468.65       0.00       0.22      -0.00       0.00       1.69    -437.04      -0.51       0.00    3641.34

   33   9.1  1.0 -1.0      -0.00    1525.63      -0.52      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01       0.00    2086.06      -0.00    -699.84      -2.71       0.00       0.01       0.00

   34  10.1  1.0 -1.0   -1525.63      -0.00       0.01      -0.71       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00   -1525.74       0.00      -0.24      -0.00       0.00   -1825.50       0.69      -0.25

   35  11.1  1.0 -1.0       0.52      -0.01      -0.00   -2086.15       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1525.74      -0.00      -0.01    -699.86       0.00       0.00       0.69    1799.22       0.00

   36  12.1  1.0 -1.0       0.01       0.71    2086.15      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2086.06      -0.00       0.01      -0.00       0.00       4.98   -1285.10       0.00       0.00       0.03

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.01      -5.00      15.55     640.21      -0.03       4.08
                         -606.91      -2.51       3.83      -0.00     -15.20       9.58   -2473.46       7.69      -1.32     612.93

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00   -2473.15       2.60     -37.68       0.12     612.84      -9.34
                           -0.09       5.74      -9.25       0.06      25.88    2473.14       9.21     -18.67       5.20       0.09

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00      37.70      30.46   -2473.06       4.06      -9.34    -612.82
                           -3.83      -2.84    -606.84      -0.00      10.15     -37.64     -15.75   -1225.26      -7.78       3.82

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00     -24.68     -54.65      -0.73      -3.31       6.12      -0.13
                            3.14    -600.05       0.08       0.00   -2500.37      24.63      12.90      -0.28    -592.47      -3.17

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00       1.38    2855.63      29.20       1.02      -0.34       4.49
                           -0.96    -362.02       4.57      -0.00    1380.49      -1.36      -3.93       8.94   -1073.15       0.97

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00   -4013.58     -15.56       0.00       0.00       0.00
                            0.00    -748.22       0.26       0.00    4013.61      -0.00      -0.00       0.00      -0.00      -0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.05       0.00      -0.00   -1440.81       0.19       0.10
                        -1794.02      -0.00       0.01      -0.30       0.00       2.14    -564.52      -0.06       0.00    1463.15

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.94       2.19    -564.52       0.06      -2.44   -1463.25
                           -0.01      -0.61   -1793.99       5.64       0.00       0.94       0.00      43.75      -0.00       0.31

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00    -564.52       0.00      -0.94       0.19    1463.20      -2.44
                            0.16      -0.00      -2.99   -3386.69      -0.00    -564.52      -2.14       0.07      -0.00      -0.13

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.06      -0.00      -0.00    1310.47      -0.18       0.44
                         2183.16       0.06      -0.02      -0.00       0.01      -2.19     579.44      -0.05      -0.04    1254.54

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00     579.44       0.00      -0.23       0.18    1254.59       0.50
                            0.23       0.00      -0.87       0.13       0.00    -579.43      -2.19       1.00      -0.00       0.13

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.23      -2.25     579.44       0.05       0.50   -1254.66
                            0.02       0.76    2183.15       0.00       0.00      -0.23      -0.00   -2508.36       0.09      -0.09

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     130.06       0.50      -0.03      -0.00       0.01
                           -0.05    1896.57      -0.66       0.00     633.43       0.00      -0.01      -0.02    -808.24      -0.03

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00    -656.31      -2.54      -0.01       0.00       0.00
                           -0.02    1660.72      -0.57      -0.00    -215.53      -0.00      -0.00      -0.09   -2375.46      -0.01

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00    1221.97       4.74      -0.00       0.00      -0.00
                           -0.00    3636.08      -1.24      -0.00   -1221.97       0.00      -0.00       0.00       0.01      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.01   -2473.15      37.70     -24.68
                            0.00       0.00       0.00       0.00       0.00       0.00     -15.20      25.88      10.15   -2500.37

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -5.00       2.60      30.46     -54.65
                            0.00       0.00       0.00       0.00       0.00       0.00       9.58    2473.14     -37.64      24.63

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      15.55     -37.68   -2473.06      -0.73
                            0.00       0.00       0.00       0.00       0.00       0.00   -2473.46       9.21     -15.75      12.90

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     640.21       0.12       4.06      -3.31
                            0.00       0.00       0.00       0.00       0.00       0.00       7.69     -18.67   -1225.26      -0.28

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.03     612.84      -9.34       6.12
                            0.00       0.00       0.00       0.00       0.00       0.00      -1.32       5.20      -7.78    -592.47

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       4.08      -9.34    -612.82      -0.13
                            0.00       0.00       0.00       0.00       0.00       0.00     612.93       0.09       3.82      -3.17

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       6.31     -12.22       0.14    1225.57
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00    -612.84       9.34      -6.12

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   -1045.37      -0.16      -6.70       5.41
                            0.00       0.00       0.00       0.00       0.00       0.00       0.31      -0.48     -31.75      -0.01

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -429.09       6.54      -4.28
                            0.00       0.00       0.00       0.00       0.00       0.00      -2.64       4.49       1.76    -433.81

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -2.70       6.54     429.12       0.09
                            0.00       0.00       0.00       0.00       0.00       0.00     429.13      -0.08       2.71      -2.22

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.86      -0.42      -3.77       9.47
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.14    -429.09       6.54      -4.28

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.03      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01      -0.00

   13   1.1  1.0  0.0      -0.00       0.10       0.00    -494.89       0.17       0.00       0.00       0.00       0.00       0.00
                           -0.00     647.21       0.00      -0.00      -0.00    -908.68    3498.03       0.54      22.06     -18.10

   14   2.1  1.0  0.0      -0.00     338.08       1.92       0.00      -0.00     908.71       0.00       0.00       0.00       0.00
                           -2.17      -0.10      -0.00    -494.84      -1.75       0.00      22.08     -53.42   -3497.50      12.67

   15   3.1  1.0  0.0       0.00       1.31    -494.86      -0.00       0.00       3.52       0.00       0.00       0.00       0.00
                          560.66      -0.00       0.00      -1.75     494.86      -0.00     -14.41      32.92     -28.72   -3458.74

   16   4.1  1.0  0.0   -1530.43      -0.00      -0.06      -0.48   -1252.77       0.00       0.00       0.00       0.00       0.00
                            0.06      -0.00     -38.04      -0.00      -0.05      -0.00       0.04    -827.50      12.62      -8.30

   17   5.1  1.0  0.0       0.06      -0.27       0.00   -1272.20       0.48       0.00       0.00       0.00       0.00       0.00
                           -0.00     -75.91       0.00      -0.00       0.00      -0.03     866.80       0.17       5.47      -4.49

   18   6.1  1.0  0.0      -0.52       0.00    1272.31       0.00       0.08       0.00       0.00       0.00       0.00       0.00
                        -1465.10      -0.00      -0.26       0.43    1272.22      -0.00       7.06      -9.68     -10.88     895.36

   19   7.1  1.0  0.0       0.00   -2498.92      -0.00       0.00      -0.00      -0.05       0.00       0.00       0.00       0.00
                            0.00       0.27       0.00   -1272.29       0.43      -0.00       5.46     -13.21    -866.68      -0.18

   20   8.1  1.0  0.0    2498.92       0.00       0.23      -0.26    -767.21       0.00       0.00       0.00       0.00       0.00
                           -0.27      -0.00    1468.65       0.00       0.22      -0.00       0.01   -1523.08      23.22     -15.04

   21   9.1  1.0  0.0       0.00      -0.23      -0.00   -1525.63       0.52       0.01       0.00       0.00       0.00       0.00
                           -0.00   -1468.65      -0.00       0.01       0.00    2086.06     606.91       0.09       3.83      -3.14

   22  10.1  1.0  0.0      -0.00       0.26    1525.63      -0.00      -0.01       0.71       0.00       0.00       0.00       0.00
                         1272.29      -0.00      -0.01      -0.00   -1525.74       0.00       2.51      -5.74       2.84     600.05

   23  11.1  1.0  0.0       0.00     767.21      -0.52       0.01      -0.00    2086.15       0.00       0.00       0.00       0.00
                           -0.43      -0.22      -0.00    1525.74       0.00      -0.01      -3.83       9.25     606.84      -0.08

   24  12.1  1.0  0.0       0.05      -0.00      -0.01      -0.71   -2086.15      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00   -2086.06      -0.00       0.01       0.00       0.00      -0.06       0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.01   -2473.15      37.70     -24.68
                         -792.88      -0.00       0.00       0.24     699.86      -0.00      15.20     -25.88     -10.15    2500.37

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -5.00       2.60      30.46     -54.65
                            0.00      -1.69     699.84       0.00      -0.00      -4.98      -9.58   -2473.14      37.64     -24.63

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      15.55     -37.68   -2473.06      -0.73
                           -0.00     437.04       2.71      -0.00      -0.00    1285.10    2473.46      -9.21      15.75     -12.90

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     640.21       0.12       4.06      -3.31
                           -0.08       0.51      -0.00    1825.50      -0.69      -0.00      -7.69      18.67    1225.26       0.28

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.03     612.84      -9.34       6.12
                        -2072.07      -0.00      -0.01      -0.69   -1799.22      -0.00       1.32      -5.20       7.78     592.47

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       4.08      -9.34    -612.82      -0.13
                            0.00   -3641.34      -0.00       0.25      -0.00      -0.03    -612.93      -0.09      -3.82       3.17

   31   7.1  1.0 -1.0   40352.16       0.00       0.00       0.00       0.00       0.00       6.31     -12.22       0.14    1225.57
                           -0.00       0.00   -1799.27       0.00       0.01       0.00      -0.00     612.84      -9.34       6.12

   32   8.1  1.0 -1.0       0.00   40352.15       0.00       0.00       0.00       0.00   -1045.37      -0.16      -6.70       5.41
                           -0.00       0.00      -0.00    -991.87       0.34      -0.00      -0.31       0.48      31.75       0.01

   33   9.1  1.0 -1.0       0.00       0.00   40830.03       0.00       0.00       0.00       0.00    -429.09       6.54      -4.28
                         1799.27       0.00      -0.00       0.74    2157.60      -0.00       2.64      -4.49      -1.76     433.81

   34  10.1  1.0 -1.0       0.00       0.00       0.00   40830.18       0.00       0.00      -2.70       6.54     429.12       0.09
                           -0.00     991.87      -0.74       0.00       0.00    2950.23    -429.13       0.08      -2.71       2.22

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   40830.19       0.00       0.86      -0.42      -3.77       9.47
                           -0.01      -0.34   -2157.60      -0.00       0.00      -1.01       0.14     429.09      -6.54       4.28

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   41481.10      -0.03      -0.00      -0.00       0.00
                           -0.00       0.00       0.00   -2950.23       1.01      -0.00      -0.00       0.00       0.01       0.00

   37   1.1  0.0  0.0       6.31   -1045.37       0.00      -2.70       0.86      -0.03    5485.76       0.00       0.00       0.00
                            0.00       0.31      -2.64     429.13      -0.14       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0     -12.22      -0.16    -429.09       6.54      -0.42      -0.00       0.00    5485.76       0.00       0.00
                         -612.84      -0.48       4.49      -0.08    -429.09      -0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.14      -6.70       6.54     429.12      -3.77      -0.00       0.00       0.00    5485.76       0.00
                            9.34     -31.75       1.76       2.71       6.54      -0.01      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0    1225.57       5.41      -4.28       0.09       9.47       0.00       0.00       0.00       0.00    5485.75
                           -6.12      -0.01    -433.81      -2.22      -4.28      -0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0      23.47      -1.66       0.24      -3.31    -495.46      -0.00       0.00       0.00       0.00       0.00
                            0.34       0.23     239.51       0.68       0.24       0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0       0.01      -0.00       0.00       0.18     529.07      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     529.07       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0       0.00    -882.32       0.11      -0.00      -0.00   -2394.78       0.00       0.00       0.00       0.00
                            0.13       0.27       0.00   -1268.62       0.32       0.00      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0      -0.00      -0.27      -2.11   -1268.51       0.43       0.00       0.00       0.00       0.00       0.00
                           -2.44   -1689.07       0.00       0.00       2.11    2394.69      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0       0.00       0.08    1268.57      -2.11      -0.01       0.21       0.00       0.00       0.00       0.00
                         1463.18      -2.81      -0.01      -0.32   -1268.57       3.99      -0.00      -0.00      -0.00      -0.00

   46  10.1  0.0  0.0       0.06   -2139.80      -0.16      -0.00       0.01      -0.06       0.00       0.00       0.00       0.00
                            0.13       0.23       0.04   -1543.78       0.37      -0.00      -0.00      -0.00      -0.00      -0.00

   47  11.1  0.0  0.0       0.00      -0.22    1543.73       0.61      -0.01      -0.00       0.00       0.00       0.00       0.00
                        -1254.59       0.03       0.01       0.37    1543.76       0.00      -0.00      -0.00      -0.00      -0.00

   48  12.1  0.0  0.0       0.01      -0.23       0.61   -1543.69       0.53       0.00       0.00       0.00       0.00       0.00
                           -0.50     -65.00       0.01       0.00       0.61      -0.02      -0.00      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0    2461.32       0.05      -0.00      -0.11    -346.54       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    1687.55       0.04      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00

   50  14.1  0.0  0.0     487.79       0.02       0.01       0.60    1748.53       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -574.19       0.01       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   51  15.1  0.0  0.0      -0.02       0.00      -0.02      -0.88   -2571.10       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00   -2571.09       0.00       0.02       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.0  1.0       1.38      -0.00      -0.05       0.94    -564.52      -0.06     579.44       0.23      -0.00       0.00
                         1380.49    4013.61       0.00       0.00      -0.00       0.01       0.00       0.00     633.43    -215.53

    2   2.1  1.0  1.0    2855.63   -4013.58       0.00       2.19       0.00      -0.00       0.00      -2.25     130.06    -656.31
                           -1.36      -0.00       2.14       0.94    -564.52      -2.19    -579.43      -0.23       0.00      -0.00

    3   3.1  1.0  1.0      29.20     -15.56      -0.00    -564.52      -0.94      -0.00      -0.23     579.44       0.50      -2.54
                           -3.93      -0.00    -564.52       0.00      -2.14     579.44      -2.19      -0.00      -0.01      -0.00

    4   4.1  1.0  1.0       1.02       0.00   -1440.81       0.06       0.19    1310.47       0.18       0.05      -0.03      -0.01
                            8.94       0.00      -0.06      43.75       0.07      -0.05       1.00   -2508.36      -0.02      -0.09

    5   5.1  1.0  1.0      -0.34       0.00       0.19      -2.44    1463.20      -0.18    1254.59       0.50      -0.00       0.00
                        -1073.15      -0.00       0.00      -0.00      -0.00      -0.04      -0.00       0.09    -808.24   -2375.46

    6   6.1  1.0  1.0       4.49       0.00       0.10   -1463.25      -2.44       0.44       0.50   -1254.66       0.01       0.00
                            0.97      -0.00    1463.15       0.31      -0.13    1254.54       0.13      -0.09      -0.03      -0.01

    7   7.1  1.0  1.0      23.47       0.01       0.00      -0.00       0.00       0.06       0.00       0.01    2461.32     487.79
                            0.34      -0.00       0.13      -2.44    1463.18       0.13   -1254.59      -0.50       0.00      -0.00

    8   8.1  1.0  1.0      -1.66      -0.00    -882.32      -0.27       0.08   -2139.80      -0.22      -0.23       0.05       0.02
                            0.23      -0.00       0.27   -1689.07      -2.81       0.23       0.03     -65.00       0.00      -0.00

    9   9.1  1.0  1.0       0.24       0.00       0.11      -2.11    1268.57      -0.16    1543.73       0.61      -0.00       0.01
                          239.51     529.07       0.00       0.00      -0.01       0.04       0.01       0.01    1687.55    -574.19

   10  10.1  1.0  1.0      -3.31       0.18      -0.00   -1268.51      -2.11      -0.00       0.61   -1543.69      -0.11       0.60
                            0.68       0.00   -1268.62       0.00      -0.32   -1543.78       0.37       0.00       0.04       0.01

   11  11.1  1.0  1.0    -495.46     529.07      -0.00       0.43      -0.01       0.01      -0.01       0.53    -346.54    1748.53
                            0.24      -0.00       0.32       2.11   -1268.57       0.37    1543.76       0.61      -0.01       0.00

   12  12.1  1.0  1.0      -0.00      -0.00   -2394.78       0.00       0.21      -0.06      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    2394.69       3.99      -0.00       0.00      -0.02      -0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.55       0.00    -798.36       0.00       0.07    -819.45      -0.09      -0.00       0.02       0.01

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           33.72      22.01       0.00     798.35       1.33      -0.00      -0.33     819.44      -2.76      -2.42

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2086.18   -5676.06       0.00       3.10       0.01       0.02      -0.00       3.18     711.85     623.39

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.52      -0.00      -0.27       3.50   -2099.56       0.24   -1694.06      -0.67      -0.09       0.11

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.37      -0.00   -2069.28      -0.00       0.27    1774.27       0.25       0.00      -0.04      -0.02

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1484.45       0.03      -0.00       0.00      -0.29       0.03       0.50       0.01    2337.74   -2669.66

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.35       0.00       0.00    2069.30       3.45      -0.00       0.71   -1774.30       0.01       0.00

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.58       0.00       0.10      -1.90    1140.57       0.33   -3118.06      -1.24       0.43      -0.49

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.96      -0.00    1794.02       0.01      -0.16   -2183.16      -0.23      -0.02       0.05       0.02

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          362.02     748.22       0.00       0.61       0.00      -0.06      -0.00      -0.76   -1896.57   -1660.72

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.57      -0.26      -0.01    1793.99       2.99       0.02       0.87   -2183.15       0.66       0.57

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.30      -5.64    3386.69       0.00      -0.13      -0.00      -0.00       0.00

   25   1.1  1.0 -1.0       1.38      -0.00      -0.05       0.94    -564.52      -0.06     579.44       0.23      -0.00       0.00
                        -1380.49   -4013.61      -0.00      -0.00       0.00      -0.01      -0.00      -0.00    -633.43     215.53

   26   2.1  1.0 -1.0    2855.63   -4013.58       0.00       2.19       0.00      -0.00       0.00      -2.25     130.06    -656.31
                            1.36       0.00      -2.14      -0.94     564.52       2.19     579.43       0.23      -0.00       0.00

   27   3.1  1.0 -1.0      29.20     -15.56      -0.00    -564.52      -0.94      -0.00      -0.23     579.44       0.50      -2.54
                            3.93       0.00     564.52      -0.00       2.14    -579.44       2.19       0.00       0.01       0.00

   28   4.1  1.0 -1.0       1.02       0.00   -1440.81       0.06       0.19    1310.47       0.18       0.05      -0.03      -0.01
                           -8.94      -0.00       0.06     -43.75      -0.07       0.05      -1.00    2508.36       0.02       0.09

   29   5.1  1.0 -1.0      -0.34       0.00       0.19      -2.44    1463.20      -0.18    1254.59       0.50      -0.00       0.00
                         1073.15       0.00      -0.00       0.00       0.00       0.04       0.00      -0.09     808.24    2375.46

   30   6.1  1.0 -1.0       4.49       0.00       0.10   -1463.25      -2.44       0.44       0.50   -1254.66       0.01       0.00
                           -0.97       0.00   -1463.15      -0.31       0.13   -1254.54      -0.13       0.09       0.03       0.01

   31   7.1  1.0 -1.0      23.47       0.01       0.00      -0.00       0.00       0.06       0.00       0.01    2461.32     487.79
                           -0.34       0.00      -0.13       2.44   -1463.18      -0.13    1254.59       0.50      -0.00       0.00

   32   8.1  1.0 -1.0      -1.66      -0.00    -882.32      -0.27       0.08   -2139.80      -0.22      -0.23       0.05       0.02
                           -0.23       0.00      -0.27    1689.07       2.81      -0.23      -0.03      65.00      -0.00       0.00

   33   9.1  1.0 -1.0       0.24       0.00       0.11      -2.11    1268.57      -0.16    1543.73       0.61      -0.00       0.01
                         -239.51    -529.07      -0.00      -0.00       0.01      -0.04      -0.01      -0.01   -1687.55     574.19

   34  10.1  1.0 -1.0      -3.31       0.18      -0.00   -1268.51      -2.11      -0.00       0.61   -1543.69      -0.11       0.60
                           -0.68      -0.00    1268.62      -0.00       0.32    1543.78      -0.37      -0.00      -0.04      -0.01

   35  11.1  1.0 -1.0    -495.46     529.07      -0.00       0.43      -0.01       0.01      -0.01       0.53    -346.54    1748.53
                           -0.24       0.00      -0.32      -2.11    1268.57      -0.37   -1543.76      -0.61       0.01      -0.00

   36  12.1  1.0 -1.0      -0.00      -0.00   -2394.78       0.00       0.21      -0.06      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00   -2394.69      -3.99       0.00      -0.00       0.02       0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5485.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14112.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   39590.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   39590.82       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   39590.82       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   41992.69       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   41992.70       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41992.73       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41992.86       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41992.91
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51

    1   1.1  1.0  1.0       0.00
                        -1221.97

    2   2.1  1.0  1.0    1221.97
                            0.00

    3   3.1  1.0  1.0       4.74
                           -0.00

    4   4.1  1.0  1.0      -0.00
                            0.00

    5   5.1  1.0  1.0       0.00
                            0.01

    6   6.1  1.0  1.0      -0.00
                           -0.00

    7   7.1  1.0  1.0      -0.02
                           -0.00

    8   8.1  1.0  1.0       0.00
                            0.00

    9   9.1  1.0  1.0      -0.02
                        -2571.09

   10  10.1  1.0  1.0      -0.88
                            0.00

   11  11.1  1.0  1.0   -2571.10
                            0.02

   12  12.1  1.0  1.0       0.00
                            0.00

   13   1.1  1.0  0.0       0.00
                            0.00

   14   2.1  1.0  0.0       0.00
                           -6.70

   15   3.1  1.0  0.0       0.00
                         1728.12

   16   4.1  1.0  0.0       0.00
                            0.00

   17   5.1  1.0  0.0       0.00
                           -0.00

   18   6.1  1.0  0.0       0.00
                           -0.11

   19   7.1  1.0  0.0       0.00
                            0.00

   20   8.1  1.0  0.0       0.00
                           -0.00

   21   9.1  1.0  0.0       0.00
                            0.00

   22  10.1  1.0  0.0       0.00
                        -3636.08

   23  11.1  1.0  0.0       0.00
                            1.24

   24  12.1  1.0  0.0       0.00
                            0.00

   25   1.1  1.0 -1.0       0.00
                         1221.97

   26   2.1  1.0 -1.0    1221.97
                           -0.00

   27   3.1  1.0 -1.0       4.74
                            0.00

   28   4.1  1.0 -1.0      -0.00
                           -0.00

   29   5.1  1.0 -1.0       0.00
                           -0.01

   30   6.1  1.0 -1.0      -0.00
                            0.00

   31   7.1  1.0 -1.0      -0.02
                            0.00

   32   8.1  1.0 -1.0       0.00
                           -0.00

   33   9.1  1.0 -1.0      -0.02
                         2571.09

   34  10.1  1.0 -1.0      -0.88
                           -0.00

   35  11.1  1.0 -1.0   -2571.10
                           -0.02

   36  12.1  1.0 -1.0       0.00
                           -0.00

   37   1.1  0.0  0.0       0.00
                            0.00

   38   2.1  0.0  0.0       0.00
                            0.00

   39   3.1  0.0  0.0       0.00
                            0.00

   40   4.1  0.0  0.0       0.00
                            0.00

   41   5.1  0.0  0.0       0.00
                            0.00

   42   6.1  0.0  0.0       0.00
                            0.00

   43   7.1  0.0  0.0       0.00
                            0.00

   44   8.1  0.0  0.0       0.00
                            0.00

   45   9.1  0.0  0.0       0.00
                            0.00

   46  10.1  0.0  0.0       0.00
                            0.00

   47  11.1  0.0  0.0       0.00
                            0.00

   48  12.1  0.0  0.0       0.00
                            0.00

   49  13.1  0.0  0.0       0.00
                            0.00

   50  14.1  0.0  0.0       0.00
                            0.00

   51  15.1  0.0  0.0   43977.19
                            0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 51)

    The diagonal matrixelements are shifted by   -192.69617462 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.002       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.002       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   40352.043       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   40352.117       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   40352.156       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   40352.159       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40352.149
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000     -23.708       0.001      -0.168      -0.000     915.296

    2    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000    3536.472       0.032      -0.000    -792.912      -3.074      -0.144

    3    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000   -3536.472       0.000       0.000       0.000      -3.074     792.895      -0.001

    4    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               23.708      -0.032      -0.000       0.000    4142.719      -0.000       0.084      -0.004

    5    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000      -0.000   -4142.719       0.000      -0.149      -0.000    -107.351

    6    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.168     792.912       3.074       0.000       0.149       0.000   -2071.959      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       3.074    -792.895      -0.084       0.000    2071.959       0.000       0.377

    8    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -915.296       0.144       0.001       0.004     107.351       0.000      -0.377       0.000

    9    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.005      53.793      -0.002       0.367      -0.000   -2076.987

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000     699.814       2.474       0.000       0.000      -0.615    1799.291      -0.000

   11    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       2.474    -699.833       0.073      -0.000   -1799.189      -0.615      -0.313

   12    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                             1285.070      -0.000       0.000       0.000       0.035       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    3536.445      13.712      -0.000      -0.000      -0.000     792.884       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3536.445       0.000      -0.000      -3.150    -792.885      -0.000      -0.000       1.694

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.712       0.000       0.000     804.493      -3.105       0.112       0.000    -437.040

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       3.150    -804.493      -0.000      -0.000   -1978.457       0.080      -0.508

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     792.885       3.105       0.000       0.000       0.077    2072.073       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.112    1978.457      -0.077       0.000      -0.000    3641.339

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -792.884       0.000      -0.000      -0.080   -2072.073       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -1.694     437.040       0.508      -0.000   -3641.339       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.005     699.845       2.714      -0.000      -0.013      -0.000   -1799.268      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.239       0.000      -0.000    1825.496      -0.685       0.255       0.000    -991.867

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              699.856      -0.005      -0.000      -0.693   -1799.218      -0.000       0.013       0.339

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.983    1285.099      -0.000      -0.000      -0.026       0.000      -0.000

    1    1  |0 0>               0.017      -7.078      21.996     905.394      -0.039       5.763       8.918   -1478.372
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>           -3497.568       3.677     -53.282       0.173     866.684     -13.206     -17.276      -0.229
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              53.317      43.078   -3497.442       5.745     -13.212    -866.663       0.198      -9.482
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>             -34.906     -77.287      -1.036      -4.685       8.650      -0.184    1733.220       7.651
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               1.948    4038.474      41.291       1.436      -0.483       6.352      33.190      -2.344
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              -0.000   -5676.056     -22.008       0.000       0.000       0.000       0.009      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.071       0.000      -0.000   -2037.615       0.263       0.144       0.000   -1247.787
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               1.330       3.095    -798.353       0.084      -3.447   -2069.342      -0.000      -0.377
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>            -798.357       0.005      -1.330       0.262    2069.279      -3.447       0.000       0.111
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>              -0.085      -0.003      -0.000    1853.280      -0.256       0.626       0.090   -3026.130
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>             819.453       0.001      -0.326       0.262    1774.262       0.705       0.001      -0.315
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.326      -3.176     819.447       0.072       0.705   -1774.353       0.020      -0.323
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>              -0.000     183.934       0.708      -0.045      -0.001       0.010    3480.836       0.074
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |0 0>               0.000    -928.169      -3.599      -0.016       0.000       0.000     689.842       0.026
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |0 0>               0.000    1728.120       6.700      -0.000       0.000      -0.000      -0.032       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -23.708

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000    3536.472       0.032

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000   -3536.472       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      23.708      -0.032      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.001       0.000      -0.000   -4142.719

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.168     792.912       3.074       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       3.074    -792.895      -0.084

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000    -915.296       0.144       0.001       0.004

    9    1  |1 1>+          40830.026       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.005      53.793

   10    1  |1 1>+              0.000   40830.179       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     699.814       2.474       0.000

   11    1  |1 1>+              0.000       0.000   40830.189       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       2.474    -699.833       0.073

   12    1  |1 1>+              0.000       0.000       0.000   41481.096       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000    1285.070      -0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.000       0.002       0.000       0.000       0.000
                                0.000      -0.000      -0.000   -1285.070       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.002       0.000       0.000
                               -0.000    -699.814      -2.474       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.005      -2.474     699.833      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000   40352.043
                              -53.793      -0.000      -0.073      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.002      -0.000       0.000      -0.035      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.367       0.615    1799.189      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1799.291       0.615      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             2076.987       0.000       0.313      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.015       0.000    2950.141      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.015       0.000   -2157.718       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000    2157.718       0.000      -0.021      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                            -2950.141      -0.000       0.021       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     -13.712    3536.445      -0.032
                               -0.005      -0.239    -699.856       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000      13.712       0.000      -0.000     780.758
                             -699.845      -0.000       0.005       4.983       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000   -3536.445       0.000       0.000       3.058
                               -2.714       0.000       0.000   -1285.099       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.032    -780.758      -3.058       0.000
                                0.000   -1825.496       0.693       0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       3.104    -792.887       0.084
                                0.013       0.685    1799.218       0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000    -792.868       0.055       0.000       0.080
                                0.000      -0.255       0.000       0.026       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000    2164.349
                             1799.268      -0.000      -0.013      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -0.144    -478.118      -1.854       0.000
                                0.000     991.867      -0.339       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -2.713     699.843       0.086
                                0.000      -0.738   -2157.600       0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000     699.875      -0.000       0.000       0.675
                                0.738      -0.000      -0.000   -2950.231      -0.000       0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      -0.239       0.000      -0.005    1771.681
                             2157.600       0.000      -0.000       1.009       0.000      -0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000   -1285.112      -4.983      -0.000
                               -0.000    2950.231      -1.009       0.000      -0.000      -0.000      -0.000       0.000

    1    1  |0 0>               0.003      -3.821       1.214      -0.044       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -3498.027     -22.080      14.414      -0.037

    2    1  |0 0>            -606.832       9.247      -0.601      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.538      53.424     -32.918     827.503

    3    1  |0 0>               9.251     606.862      -5.329      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -22.063    3497.495      28.719     -12.615

    4    1  |0 0>              -6.056       0.132      13.388       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      18.103     -12.675    3458.743       8.295

    5    1  |0 0>               0.333      -4.687    -700.680      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -5.549     -33.721    2086.178      -0.521

    6    1  |0 0>               0.005       0.256     748.221      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -22.008    5676.055       0.000

    7    1  |0 0>               0.160      -0.000      -0.000   -3386.728       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     798.361      -0.000      -0.000       0.267

    8    1  |0 0>              -2.988   -1793.946       0.613       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -798.352      -3.095      -3.497

    9    1  |0 0>            1794.028      -2.988      -0.012       0.302       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.071      -1.330      -0.005    2099.561

   10    1  |0 0>              -0.227      -0.000       0.009      -0.092       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     819.451       0.000      -0.023      -0.245

   11    1  |0 0>            2183.159       0.867      -0.016      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.085       0.326       0.001    1694.058

   12    1  |0 0>               0.868   -2183.107       0.744       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -819.444      -3.181       0.673

   13    1  |0 0>              -0.004      -0.155    -490.075       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.020       2.765    -711.849       0.094

   14    1  |0 0>               0.018       0.846    2472.796       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.007       2.417    -623.392      -0.108

   15    1  |0 0>              -0.026      -1.243   -3636.087       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       6.700   -1728.115      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.001      -0.168      -0.000     915.296       0.000      -0.000      -0.000   -1285.070

    2    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000    -792.912      -3.074      -0.144      -0.000    -699.814      -2.474       0.000

    3    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000      -3.074     792.895      -0.001       0.005      -2.474     699.833      -0.000

    4    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                             4142.719      -0.000       0.084      -0.004     -53.793      -0.000      -0.073      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.149      -0.000    -107.351       0.002      -0.000       0.000      -0.035

    6    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.149       0.000   -2071.959      -0.000      -0.367       0.615    1799.189      -0.000

    7    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    2071.959       0.000       0.377       0.000   -1799.291       0.615      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                              107.351       0.000      -0.377       0.000    2076.987       0.000       0.313      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.002       0.367      -0.000   -2076.987       0.000       0.015       0.000    2950.141

   10    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.615    1799.291      -0.000      -0.015       0.000   -2157.718       0.000

   11    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000   -1799.189      -0.615      -0.313      -0.000    2157.718       0.000      -0.021

   12    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.035       0.000       0.000       0.000   -2950.141      -0.000       0.021       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           40352.117       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   40352.156       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   40352.159       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   40352.149       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   40830.026       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   40830.179       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   40830.189       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   41481.096
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000     792.868      -0.000       0.144       0.000    -699.875       0.239       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 1>-             -3.104      -0.055      -0.000     478.118       2.713       0.000      -0.000    1285.112
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 1>-            792.887      -0.000       0.000       1.854    -699.843      -0.000       0.005       4.983
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 1>-             -0.084      -0.080   -2164.349      -0.000      -0.086      -0.675   -1771.681       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000   -2072.113       0.083      -0.377       0.000   -1799.167       0.683       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 1>-           2072.113       0.000      -0.731       0.000    1799.324       0.000       0.113       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-             -0.083       0.731       0.000   -3534.010      -0.000       0.000      -0.000      -0.064
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.377      -0.000    3534.010       0.000       0.320      -0.371   -1084.992       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 1>-             -0.000   -1799.324       0.000      -0.320       0.000   -2157.562       0.738       0.021
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

   10    1  |1 1>-           1799.167      -0.000      -0.000       0.371    2157.562       0.000      -0.015       1.009
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   11    1  |1 1>-             -0.683      -0.113       0.000    1084.992      -0.738       0.015       0.000    2950.262
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-             -0.000      -0.000       0.064      -0.000      -0.021      -1.009   -2950.262       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -866.796      -7.058      -5.457      -0.009    -606.913      -2.514       3.826      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.165       9.684      13.206    1523.083      -0.093       5.744      -9.249       0.057

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.467      10.875     866.679     -23.216      -3.832      -2.838    -606.841      -0.001

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.485    -895.362       0.182      15.037       3.141    -600.051       0.077       0.001

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.375    1484.452      -6.352      -0.578      -0.963    -362.016       4.571      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.027      -0.000      -0.000       0.000    -748.219       0.256       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             2069.280       0.000      -0.000      -0.101   -1794.020      -0.000       0.012      -0.302

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -2069.297       1.900      -0.013      -0.613   -1793.991       5.641

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.265       0.293      -3.447   -1140.571       0.160      -0.001      -2.988   -3386.693

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1774.270      -0.034       0.000      -0.325    2183.161       0.060      -0.016      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.251      -0.500      -0.705    3118.060       0.227       0.000      -0.868       0.131

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.013    1774.302       1.239       0.016       0.758    2183.151       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.043   -2337.742      -0.010      -0.427      -0.053    1896.567      -0.661       0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.015    2669.657      -0.000       0.486      -0.019    1660.717      -0.568      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.110      -0.000       0.000      -0.000    3636.080      -1.243      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    3536.445      13.712      -0.000      -0.000      -0.000     792.884       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3536.445       0.000      -0.000      -3.150    -792.885      -0.000      -0.000       1.694

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.712       0.000       0.000     804.493      -3.105       0.112       0.000    -437.040

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       3.150    -804.493      -0.000      -0.000   -1978.457       0.080      -0.508

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     792.885       3.105       0.000       0.000       0.077    2072.073       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.112    1978.457      -0.077       0.000      -0.000    3641.339

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -792.884       0.000      -0.000      -0.080   -2072.073       0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -1.694     437.040       0.508      -0.000   -3641.339       0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.005     699.845       2.714      -0.000      -0.013      -0.000   -1799.268      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.239       0.000      -0.000    1825.496      -0.685       0.255       0.000    -991.867

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              699.856      -0.005      -0.000      -0.693   -1799.218      -0.000       0.013       0.339

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.983    1285.099      -0.000      -0.000      -0.026       0.000      -0.000

    1    1  |1 0>               0.000      13.712   -3536.445       0.032      -0.000    -792.868       0.000      -0.144
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 0>             -13.712       0.000       0.000    -780.758       3.104       0.055       0.000    -478.118
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>            3536.445      -0.000       0.000      -3.058    -792.887       0.000      -0.000      -1.854
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.032     780.758       3.058       0.000       0.084       0.080    2164.349       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000      -3.104     792.887      -0.084       0.000    2072.113      -0.083       0.377
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>             792.868      -0.055      -0.000      -0.080   -2072.113       0.000       0.731      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>              -0.000      -0.000       0.000   -2164.349       0.083      -0.731       0.000    3534.010
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    8    1  |1 0>               0.144     478.118       1.854      -0.000      -0.377       0.000   -3534.010       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 0>               0.000       2.713    -699.843      -0.086       0.000    1799.324      -0.000       0.320
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   10    1  |1 0>            -699.875       0.000      -0.000      -0.675   -1799.167       0.000       0.000      -0.371
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.239      -0.000       0.005   -1771.681       0.683       0.113      -0.000   -1084.992
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   12    1  |1 0>               0.000    1285.112       4.983       0.000       0.000       0.000      -0.064       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.002       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.002       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   40352.043       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   40352.117       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   40352.156       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   40352.159       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40352.149
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               21.492     -13.545    3498.004     -10.876       1.861    -866.820      -0.004      -0.441

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -36.596   -3497.544     -13.023      26.404      -7.349      -0.132     866.691       0.684

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.359      53.231      22.269    1732.784      11.003      -5.405     -13.212      44.901

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             3536.056     -34.835     -18.238       0.397     837.881       4.486       8.650       0.010

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1952.310       1.926       5.556     -12.640    1517.663      -1.375      -0.483      -0.329

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -5676.098       0.000       0.000      -0.000       0.001       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -3.024     798.356       0.084      -0.000   -2069.211      -0.185      -0.376

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -1.330      -0.005     -61.872       0.002      -0.437       3.447    2388.709

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     798.356       3.024      -0.103       0.000       0.184   -2069.247       3.979

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.019       3.092    -819.447       0.072       0.056   -1774.191      -0.185      -0.323

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     819.444       3.092      -1.410       0.000      -0.185    1774.252      -0.037

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.005       0.326       0.001    3547.350      -0.130       0.127       0.705      91.922

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -895.809      -0.000       0.020       0.023    1143.029       0.043      -0.001      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              304.802       0.000       0.007       0.129    3359.402       0.015       0.000       0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1728.123      -0.000       0.000      -0.000      -0.012       0.000       0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.017   -3497.568      53.317     -34.906
                               -0.005      -0.239    -699.856       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -7.078       3.677      43.078     -77.287
                             -699.845      -0.000       0.005       4.983       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      21.996     -53.282   -3497.442      -1.036
                               -2.714       0.000       0.000   -1285.099       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000     905.394       0.173       5.745      -4.685
                                0.000   -1825.496       0.693       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.039     866.684     -13.212       8.650
                                0.013       0.685    1799.218       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       5.763     -13.206    -866.663      -0.184
                                0.000      -0.255       0.000       0.026       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       8.918     -17.276       0.198    1733.220
                             1799.268      -0.000      -0.013      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000   -1478.372      -0.229      -9.482       7.651
                                0.000     991.867      -0.339       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.003    -606.832       9.251      -6.056
                                0.000      -0.738   -2157.600       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -3.821       9.247     606.862       0.132
                                0.738      -0.000      -0.000   -2950.231       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       1.214      -0.601      -5.329      13.388
                             2157.600       0.000      -0.000       1.009       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.044      -0.000      -0.000       0.000
                               -0.000    2950.231      -1.009       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000     699.875      -0.239      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000    3498.027       0.538      22.063     -18.103

    2    1  |1 0>              -2.713      -0.000       0.000   -1285.112       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      22.080     -53.424   -3497.495      12.675

    3    1  |1 0>             699.843       0.000      -0.005      -4.983       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     -14.414      32.918     -28.719   -3458.743

    4    1  |1 0>               0.086       0.675    1771.681      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.037    -827.503      12.615      -8.295

    5    1  |1 0>              -0.000    1799.167      -0.683      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     866.796       0.165       5.467      -4.485

    6    1  |1 0>           -1799.324      -0.000      -0.113      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       7.058      -9.684     -10.875     895.362

    7    1  |1 0>               0.000      -0.000       0.000       0.064       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       5.457     -13.206    -866.679      -0.182

    8    1  |1 0>              -0.320       0.371    1084.992      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.009   -1523.083      23.216     -15.037

    9    1  |1 0>               0.000    2157.562      -0.738      -0.021       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     606.913       0.093       3.832      -3.141

   10    1  |1 0>           -2157.562       0.000       0.015      -1.009       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       2.514      -5.744       2.838     600.051

   11    1  |1 0>               0.738      -0.015       0.000   -2950.262       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -3.826       9.249     606.841      -0.077

   12    1  |1 0>               0.021       1.009    2950.262       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.057       0.001      -0.001

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -21.492      36.596      14.359   -3536.056

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      13.545    3497.544     -53.231      34.835

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -3498.004      13.023     -22.269      18.238

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      10.876     -26.404   -1732.784      -0.397

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.861       7.349     -11.003    -837.881

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     866.820       0.132       5.405      -4.486

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.004    -866.691      13.212      -8.650

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.441      -0.684     -44.901      -0.010

    9    1  |1 1>-          40830.026       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -3.729       6.345       2.491    -613.496

   10    1  |1 1>-              0.000   40830.179       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     606.879      -0.114       3.831      -3.143

   11    1  |1 1>-              0.000       0.000   40830.189       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.204    -606.818       9.249      -6.051

   12    1  |1 1>-              0.000       0.000       0.000   41481.096       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.012      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5485.756       0.000       0.000       0.000
                                3.729    -606.879       0.204      -0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5485.761       0.000       0.000
                               -6.345       0.114     606.818       0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5485.764       0.000
                               -2.491      -3.831      -9.249       0.012      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5485.751
                              613.496       3.143       6.051       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -338.718      -0.963      -0.335      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -748.219      -0.000       0.005       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1794.096      -0.453      -0.001      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.001      -2.988   -3386.599      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.013       0.453    1794.035      -5.641      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.051    2183.235      -0.519       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.017      -0.519   -2183.202      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.014      -0.000      -0.868       0.027      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -2386.550      -0.053       0.018       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              812.032      -0.019      -0.006      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             3636.067      -0.000      -0.026      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |1 1>+              1.948      -0.000      -0.071       1.330    -798.357      -0.085     819.453       0.326
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+           4038.474   -5676.056       0.000       3.095       0.005      -0.003       0.001      -3.176
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             41.291     -22.008      -0.000    -798.353      -1.330      -0.000      -0.326     819.447
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              1.436       0.000   -2037.615       0.084       0.262    1853.280       0.262       0.072
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.483       0.000       0.263      -3.447    2069.279      -0.256    1774.262       0.705
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              6.352       0.000       0.144   -2069.342      -3.447       0.626       0.705   -1774.353
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             33.190       0.009       0.000      -0.000       0.000       0.090       0.001       0.020
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -2.344      -0.000   -1247.787      -0.377       0.111   -3026.130      -0.315      -0.323
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.333       0.005       0.160      -2.988    1794.028      -0.227    2183.159       0.868
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -4.687       0.256      -0.000   -1793.946      -2.988      -0.000       0.867   -2183.107
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+           -700.680     748.221      -0.000       0.613      -0.012       0.009      -0.016       0.744
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000   -3386.728       0.000       0.302      -0.092      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.549       0.000    -798.361       0.000       0.071    -819.451      -0.085      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               33.721      22.008       0.000     798.352       1.330      -0.000      -0.326     819.444

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -2086.178   -5676.055       0.000       3.095       0.005       0.023      -0.001       3.181

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.521      -0.000      -0.267       3.497   -2099.561       0.245   -1694.058      -0.673

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.375      -0.000   -2069.280      -0.000       0.265    1774.270       0.251       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1484.452       0.027      -0.000       0.000      -0.293       0.034       0.500       0.013

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                6.352       0.000       0.000    2069.297       3.447      -0.000       0.705   -1774.302

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.578       0.000       0.101      -1.900    1140.571       0.325   -3118.060      -1.239

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.963      -0.000    1794.020       0.013      -0.160   -2183.161      -0.227      -0.016

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              362.016     748.219       0.000       0.613       0.001      -0.060      -0.000      -0.758

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.571      -0.256      -0.012    1793.991       2.988       0.016       0.868   -2183.151

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.302      -5.641    3386.693       0.000      -0.131      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1952.310    5676.098       0.000       0.000      -0.000       0.019       0.000       0.005

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.926      -0.000       3.024       1.330    -798.356      -3.092    -819.444      -0.326

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.556      -0.000    -798.356       0.005      -3.024     819.447      -3.092      -0.001

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.640       0.000      -0.084      61.872       0.103      -0.072       1.410   -3547.350

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1517.663      -0.001       0.000      -0.002      -0.000      -0.056      -0.000       0.130

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.375      -0.000    2069.211       0.437      -0.184    1774.191       0.185      -0.127

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.483      -0.000       0.185      -3.447    2069.247       0.185   -1774.252      -0.705

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.329      -0.000       0.376   -2388.709      -3.979       0.323       0.037     -91.922

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              338.718     748.219       0.000       0.000      -0.013       0.051       0.017       0.014

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.963       0.000   -1794.096       0.001      -0.453   -2183.235       0.519       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.335      -0.005       0.453       2.988   -1794.035       0.519    2183.202       0.868

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.001    3386.599       5.641      -0.000       0.000      -0.027

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5485.755       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14112.878       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   39590.805       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   39590.816       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   39590.818       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000   41992.687       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   41992.702       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   41992.726
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       49          50          51

    1    1  |1 1>+             -0.000       0.000       0.000
                                0.000       0.000       0.000

    2    1  |1 1>+            183.934    -928.169    1728.120
                                0.000       0.000       0.000

    3    1  |1 1>+              0.708      -3.599       6.700
                                0.000       0.000       0.000

    4    1  |1 1>+             -0.045      -0.016      -0.000
                                0.000       0.000       0.000

    5    1  |1 1>+             -0.001       0.000       0.000
                                0.000       0.000       0.000

    6    1  |1 1>+              0.010       0.000      -0.000
                                0.000       0.000       0.000

    7    1  |1 1>+           3480.836     689.842      -0.032
                                0.000       0.000       0.000

    8    1  |1 1>+              0.074       0.026       0.000
                                0.000       0.000       0.000

    9    1  |1 1>+             -0.004       0.018      -0.026
                                0.000       0.000       0.000

   10    1  |1 1>+             -0.155       0.846      -1.243
                                0.000       0.000       0.000

   11    1  |1 1>+           -490.075    2472.796   -3636.087
                                0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000
                                0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000
                                0.020       0.007       0.000

    2    1  |1 0>               0.000       0.000       0.000
                               -2.765      -2.417      -6.700

    3    1  |1 0>               0.000       0.000       0.000
                              711.849     623.392    1728.115

    4    1  |1 0>               0.000       0.000       0.000
                               -0.094       0.108       0.000

    5    1  |1 0>               0.000       0.000       0.000
                               -0.043      -0.015      -0.000

    6    1  |1 0>               0.000       0.000       0.000
                             2337.742   -2669.657      -0.110

    7    1  |1 0>               0.000       0.000       0.000
                                0.010       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000
                                0.427      -0.486      -0.000

    9    1  |1 0>               0.000       0.000       0.000
                                0.053       0.019       0.000

   10    1  |1 0>               0.000       0.000       0.000
                            -1896.567   -1660.717   -3636.080

   11    1  |1 0>               0.000       0.000       0.000
                                0.661       0.568       1.243

   12    1  |1 0>               0.000       0.000       0.000
                               -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000
                              895.809    -304.802   -1728.123

    2    1  |1 1>-              0.000       0.000       0.000
                                0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000
                               -0.020      -0.007      -0.000

    4    1  |1 1>-              0.000       0.000       0.000
                               -0.023      -0.129       0.000

    5    1  |1 1>-              0.000       0.000       0.000
                            -1143.029   -3359.402       0.012

    6    1  |1 1>-              0.000       0.000       0.000
                               -0.043      -0.015      -0.000

    7    1  |1 1>-              0.000       0.000       0.000
                                0.001      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000
                                0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000
                             2386.550    -812.032   -3636.067

   10    1  |1 1>-              0.000       0.000       0.000
                                0.053       0.019       0.000

   11    1  |1 1>-              0.000       0.000       0.000
                               -0.018       0.006       0.026

   12    1  |1 1>-              0.000       0.000       0.000
                               -0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   13    1  |0 0>           41992.860       0.000       0.000
                                0.000       0.000       0.000

   14    1  |0 0>               0.000   41992.907       0.000
                               -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000   43977.192
                               -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.74705247    -0.05087786   -11166.40      0.00000000        0.00      0.0000
    2  -192.71290940    -0.01673478    -3672.86      0.03414308     7493.54      0.9291
    3  -192.71290939    -0.01673478    -3672.86      0.03414308     7493.54      0.9291
    4  -192.71290939    -0.01673477    -3672.86      0.03414308     7493.54      0.9291
    5  -192.69931882    -0.00314421     -690.07      0.04773365    10476.32      1.2989
    6  -192.69931882    -0.00314420     -690.07      0.04773366    10476.33      1.2989
    7  -192.69931804    -0.00314342     -689.90      0.04773443    10476.50      1.2989
    8  -192.69931803    -0.00314342     -689.90      0.04773444    10476.50      1.2989
    9  -192.69931803    -0.00314341     -689.90      0.04773445    10476.50      1.2989
   10  -192.65296269     0.04321193     9483.92      0.09408979    20650.32      2.5603
   11  -192.65296268     0.04321194     9483.92      0.09408980    20650.32      2.5603
   12  -192.65296266     0.04321196     9483.93      0.09408981    20650.33      2.5603
   13  -192.65296192     0.04321269     9484.09      0.09409055    20650.49      2.5603
   14  -192.65296191     0.04321271     9484.09      0.09409056    20650.49      2.5603
   15  -192.61454586     0.08162876    17915.44      0.13250662    29081.84      3.6057
   16  -192.55070317     0.14547145    31927.29      0.19634930    43093.69      5.3429
   17  -192.55070317     0.14547145    31927.29      0.19634931    43093.69      5.3429
   18  -192.55070309     0.14547153    31927.31      0.19634938    43093.71      5.3429
   19  -192.54527138     0.15090324    33119.43      0.20178110    44285.83      5.4907
   20  -192.54432716     0.15184745    33326.66      0.20272531    44493.06      5.5164
   21  -192.54432712     0.15184750    33326.67      0.20272535    44493.07      5.5164
   22  -192.54432687     0.15184775    33326.73      0.20272561    44493.13      5.5164
   23  -192.54346409     0.15271053    33516.09      0.20358839    44682.49      5.5399
   24  -192.54346401     0.15271060    33516.10      0.20358846    44682.50      5.5399
   25  -192.54346401     0.15271060    33516.10      0.20358846    44682.50      5.5399
   26  -192.54346369     0.15271093    33516.17      0.20358878    44682.57      5.5399
   27  -192.54346369     0.15271093    33516.18      0.20358879    44682.57      5.5399
   28  -192.49668629     0.19948833    43782.63      0.25036618    54949.03      6.8128
   29  -192.49668626     0.19948836    43782.63      0.25036621    54949.03      6.8128
   30  -192.49668615     0.19948847    43782.66      0.25036633    54949.06      6.8128
   31  -192.49465973     0.20151489    44227.41      0.25239275    55393.81      6.8680
   32  -192.49465970     0.20151491    44227.41      0.25239277    55393.81      6.8680
   33  -192.49465959     0.20151502    44227.44      0.25239288    55393.83      6.8680
   34  -192.49465955     0.20151506    44227.44      0.25239292    55393.84      6.8680
   35  -192.49465935     0.20151527    44227.49      0.25239313    55393.89      6.8680
   36  -192.49343506     0.20273955    44496.19      0.25361741    55662.59      6.9013
   37  -192.49343506     0.20273956    44496.19      0.25361741    55662.59      6.9013
   38  -192.49343491     0.20273971    44496.22      0.25361757    55662.62      6.9013
   39  -192.49343483     0.20273979    44496.24      0.25361765    55662.64      6.9013
   40  -192.49343475     0.20273986    44496.26      0.25361772    55662.66      6.9013
   41  -192.49343475     0.20273987    44496.26      0.25361773    55662.66      6.9013
   42  -192.49343472     0.20273990    44496.26      0.25361776    55662.66      6.9013
   43  -192.49123006     0.20494456    44980.13      0.25582241    56146.53      6.9613
   44  -192.49123004     0.20494458    44980.14      0.25582244    56146.53      6.9613
   45  -192.49122997     0.20494465    44980.15      0.25582250    56146.55      6.9613
   46  -192.48774422     0.20843040    45745.19      0.25930825    56911.58      7.0561
   47  -192.48774416     0.20843046    45745.20      0.25930832    56911.60      7.0561
   48  -192.48774393     0.20843069    45745.25      0.25930855    56911.65      7.0561
   49  -192.48774385     0.20843076    45745.27      0.25930862    56911.66      7.0561
   50  -192.48774351     0.20843111    45745.34      0.25930896    56911.74      7.0562
   51  -192.47900360     0.21717102    47663.53      0.26804887    58829.93      7.2940

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.00040010 -0.00005196  0.70601923  0.00010984 -0.00013465 -0.00160157  0.00662202
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.53627720  0.00000188 -0.00273740 -0.00000020 -0.27637456 -0.56371759  0.00004602 -0.00223061
                           0.00000008  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00207929 -0.00048503  0.70601427  0.00005224 -0.00104550 -0.00231624 -0.01022386  0.54357399
                           0.00000000 -0.00000000  0.00000022  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.01282773 -0.00000828  0.00000777  0.00000089 -0.00000061 -0.02575041 -0.00048620
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000788 -0.00000096  0.01302650 -0.00000498  0.00000611  0.00007362 -0.00030028
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000986 -0.01302672 -0.00000096  0.00000118 -0.00000592 -0.00047235  0.02465073
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000032 -0.00000000  0.00000000 -0.00000000 -0.04427846  0.02170839 -0.00000223  0.00000747
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00785724 -0.00000777  0.00000445 -0.00000146  0.00000100  0.04204644  0.00079672
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000018  0.00000382 -0.00000050  0.00673899 -0.00000045  0.00000053  0.00000646 -0.00002670
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000878  0.00000463 -0.00673847 -0.00000050 -0.00000028 -0.00000130 -0.00004121  0.00219090
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.02567929 -0.00000000  0.00000230 -0.00000005 -0.00111376 -0.00227307  0.00000004 -0.00000124
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.04130542  0.00002838 -0.00002341 -0.00000000 -0.00000000  0.00000116  0.00000002
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.70601879  0.00048506 -0.00040006  0.00001884 -0.00001294 -0.54361768 -0.01024277

   2    1  |1 0>           0.00000000 -0.00000000  0.00000022  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00207929  0.00048502 -0.70601367 -0.00005224 -0.00240257 -0.00029539 -0.01022398  0.54357541

   3    1  |1 0>          -0.00000008 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000
                          -0.53627728  0.00000188 -0.00273740 -0.00000020  0.62638141  0.04251143 -0.00001823  0.00208674

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000799  0.00000097 -0.01321676  0.00000489 -0.00000783 -0.00007030  0.00028671

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.01302654 -0.00000895  0.00000789  0.00000085 -0.00000059 -0.02465253 -0.00046451

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000094 -0.00000000  0.00000000 -0.00000184 -0.00333909  0.04920047 -0.00000153  0.00001202

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000895  0.01302659  0.00000096  0.00000118 -0.00000592 -0.00046365  0.02465081

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000407 -0.00000053  0.00718237  0.00000815 -0.00000178 -0.00012764  0.00052775

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00673896  0.00000468 -0.00000382 -0.00000008  0.00000005  0.00219191  0.00004132

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.02567929 -0.00000000  0.00000230  0.00000000  0.00252556  0.00016965  0.00000007  0.00000066

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000878 -0.00000468  0.00673877  0.00000050 -0.00000076 -0.00000058 -0.00004123  0.00219148

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00002341  0.00000304 -0.04130564  0.00000000 -0.00000000 -0.00000000  0.00000002

   1    1  |1 1>-          0.00000008  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000
                           0.53628117  0.00000000  0.00000000  0.00000000  0.35000963 -0.52121018  0.00002779 -0.00014387

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00233731 -0.00005384  0.70601566 -0.00010977  0.00013459 -0.00050617 -0.00666168

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.70601578  0.00048485  0.00233734 -0.00001927  0.00001346  0.54361876  0.01021700

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000080  0.00038998  0.00000003  0.00000394 -0.00001078 -0.00092598  0.04928520

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000003  0.00000000 -0.00000001  0.00000000  0.04093927  0.02749206  0.00000072  0.00000273

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.01302625  0.00001170 -0.00000738  0.00000085 -0.00000059 -0.02465250 -0.00046273

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000738 -0.00000096  0.01302643  0.00000498 -0.00000611 -0.00007263  0.00030030

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00001270 -0.01503530 -0.00000111  0.00000007 -0.00000030 -0.00002851  0.00127706

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.02567941 -0.00000000 -0.00000000 -0.00000005 -0.00141112  0.00210144 -0.00000011  0.00000058

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00673939 -0.00000463  0.00000152 -0.00000008  0.00000005  0.00219280  0.00004131

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000018 -0.00000152  0.00000050 -0.00673908 -0.00000043  0.00000053  0.00000571 -0.00002672

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00002838 -0.04130625 -0.00000306 -0.00000000  0.00000000 -0.00000001  0.00000039

   1    1  |0 0>          -0.00000000  0.00000053 -0.00000000 -0.00000000  0.00243195 -0.00241388  0.63623913  0.00798074
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000001 -0.00000014 -0.00532371  0.00312228 -0.00195880  0.01744308
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000043  0.00000000  0.00214047  0.00399253 -0.00792205  0.63599530
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000007 -0.00000000 -0.00000000 -0.00000000  0.56583439 -0.29097240 -0.00328454  0.00005036
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000001  0.00000000 -0.00000000  0.00000000  0.29098916  0.56584940  0.00109188 -0.00452378
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.36352290  0.00000000 -0.00000000  0.00000000 -0.00000007  0.00000001  0.00000000 -0.00000000
                           0.00000005 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.02665456  0.00001832 -0.00001273 -0.00000000 -0.00000000 -0.00000002 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.00001834  0.02665450 -0.00004242  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00001270  0.00004243  0.02665452 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000015 -0.00000023 -0.01450063 -0.00027320
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000293  0.00000359  0.00004110 -0.00017090
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000000 -0.00000004 -0.00000000 -0.00000077  0.00000353  0.00027273 -0.01449964
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |0 0>          -0.00000022  0.00000000 -0.00000000 -0.00000000 -0.01153303  0.00879428 -0.00000032  0.00000280
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>           0.00000025  0.00000000  0.00000000  0.00000000 -0.00879425 -0.01153300  0.00000014 -0.00000236
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.05549881  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000009  0.00000000  0.00000000
                          -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.54367317 -0.00017535 -0.45097093  0.00338239  0.00012096  0.00006206 -0.00000000 -0.00040909
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00005647 -0.00000511  0.00006731  0.00164508 -0.06044923  0.51722922 -0.20975601 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000003 -0.00000000

   3    1  |1 1>+         -0.00665129  0.00209104 -0.00338295 -0.45096311 -0.00027533  0.00191082 -0.00081328 -0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00007089 -0.01141600  0.00000362 -0.00005341 -0.00000121 -0.00000009 -0.00000000 -0.00051171
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.02465508 -0.00000381 -0.01092928  0.00008197  0.00000293  0.00000150 -0.00000000 -0.46384469
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00030164 -0.00005453  0.00008199  0.01092839  0.00000099  0.00000229  0.00000000  0.00001235
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00001422  0.00000230 -0.00000615  0.00000256 -0.02171103 -0.00253711 -0.00000019 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00011416  0.01864054 -0.00000659  0.00008847  0.00000197  0.00000014 -0.00000000 -0.00030246
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00219219  0.00000780  0.02004806 -0.00015037 -0.00000540 -0.00000260 -0.00000010 -0.00592499
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00002681  0.00009296 -0.00015040 -0.02004805 -0.00000274  0.00000365 -0.00000502  0.00000015
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000031  0.00000010  0.00000232  0.00000226 -0.00268701  0.02299368 -0.01469810  0.00000004
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000058  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00019549
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00147665  0.45097887 -0.00015965  0.00209229  0.00004773  0.00000340  0.00000000  0.00000044

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00665054  0.00209085 -0.00338256 -0.45096303  0.00157862  0.00111108  0.00081328  0.00000001

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000003  0.00000000
                          -0.00014150  0.00005412 -0.00016719 -0.00164396 -0.41770888 -0.31096549 -0.20975593  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.02354063  0.00000364  0.01043510 -0.00007827 -0.00000227 -0.00000215  0.00000000  0.47063052

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00006788 -0.01092939  0.00000346 -0.00005070 -0.00000116 -0.00000008  0.00000000 -0.00051961

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000578  0.00000126 -0.00000418 -0.00000246 -0.01305363  0.01753308 -0.00000055  0.00006567

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00030162 -0.00005067  0.00008199  0.01092887  0.00000099  0.00000229 -0.00000000 -0.00001231

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.04332819  0.00000747  0.01920648 -0.00014405 -0.00000753  0.00000055 -0.00000000 -0.25567797

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000595 -0.02004841  0.00000710 -0.00009316 -0.00000212 -0.00000015 -0.00000000  0.00000640

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000048  0.00000208 -0.00000690 -0.00000221 -0.01856899 -0.01382478 -0.01469802  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002681  0.00009310 -0.00015040 -0.02004775  0.00000453  0.00000052  0.00000502 -0.00000016

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000156 -0.00000000  0.00000074 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.18081925

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000003 -0.00000000
                          -0.00019797  0.00004902 -0.00009988  0.00000112 -0.47816175  0.20626531  0.20975751 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.54367455  0.00192390  0.45096696 -0.00337425 -0.00012077 -0.00006205 -0.00000000 -0.00040861

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00063130 -0.45097490  0.00190817 -0.00210539 -0.00004820 -0.00000364 -0.00000000 -0.00000114

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00060303 -0.00010087  0.00016393  0.02185069  0.00000232  0.00000536  0.00000000 -0.00000039

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000149 -0.00000104  0.00000504 -0.00000588  0.00865801  0.02007100  0.00000002 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00006699 -0.01093014  0.00000388 -0.00004992 -0.00000116 -0.00000008  0.00000000  0.00050147

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.02465504  0.00000425  0.01092946 -0.00008197 -0.00000293 -0.00000150  0.00000000 -0.46383417

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00001564 -0.00000462  0.00000425  0.00056623  0.00000005  0.00000012  0.00000000  0.00001430

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000078 -0.00000218  0.00000458 -0.00000005  0.02125699 -0.00916965 -0.01469805  0.00000004

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000521 -0.02004781  0.00001395 -0.00009306 -0.00000212 -0.00000015 -0.00000000 -0.00000438

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00219246  0.00001465  0.02004766 -0.00015033 -0.00000553 -0.00000269  0.00000010  0.00592119

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000014  0.00000000 -0.00000000  0.00000000 -0.00000480

   1    1  |0 0>           0.00177278  0.76884901 -0.00031135 -0.00127364  0.00416393 -0.00085807  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.63602862  0.00036355  0.76879835  0.00594922 -0.00789172 -0.00033660 -0.00000000 -0.00000081
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.01746824  0.00128026 -0.00595249  0.76881633 -0.00049146  0.00575330  0.00000000  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00615302 -0.00405761  0.00788921 -0.00000140  0.76517913  0.07461550  0.00000003 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00021469  0.00124835 -0.00038669 -0.00577909 -0.07460775  0.76520851 -0.00000003  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000006  0.93064047 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000012 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00049605
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00081964
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000003  0.00000000  0.00000006 -0.00000000  0.00000000 -0.00000000  0.00000000  0.50007372
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00003788  0.02362202 -0.00001082  0.00010961  0.00000309  0.00000033 -0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.01450216  0.00001169  0.02362152 -0.00018654 -0.00000633 -0.00000326 -0.00000000  0.00000638
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00017165 -0.00010952  0.00018660  0.02362128  0.00000228  0.00000495  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>           0.00000448 -0.00000304  0.00000604 -0.00000194  0.02354842 -0.00187119 -0.00000014  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |0 0>          -0.00000105 -0.00000055  0.00000371 -0.00000514  0.00187118  0.02354837  0.00000017 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000012 -0.00000012  0.03557450 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00000044  0.00000001 -0.00000000 -0.00000478  0.02229605 -0.00000010  0.00000269 -0.01151289
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000159  0.03447302 -0.00000000 -0.00000000 -0.00008644  0.00004503 -0.00000013
                           0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000018 -0.00040958  0.00013366  0.00000110  0.00000010  0.02229449 -0.01151963 -0.00000287
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.45675435  0.00017694 -0.00000000 -0.17642401 -0.00004473  0.00000143 -0.00019439  0.00850220
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00051914  0.00001209  0.00000000  0.00004523 -0.17915777  0.00000084  0.00007011 -0.30021772
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00023116  0.46383599  0.00000000  0.00002137  0.00000084  0.17918592  0.30032570  0.00007768
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00004358 -0.00000000 -0.00000000  0.00000000 -0.00002251 -0.00000774
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.27970987  0.00020434  0.00000000 -0.10814910 -0.00002320  0.00003796  0.00035212 -0.01390078
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000641  0.00000015  0.00000357 -0.00010790  0.50339198 -0.00000235  0.00006893 -0.29519101
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000253  0.00591672  0.00017173 -0.00002487 -0.00000236 -0.50336138  0.29534249  0.00007356
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000202  0.50237821  0.00000001 -0.00000357  0.00017206 -0.00011044  0.00000560
                           0.00000000 -0.00000000 -0.00000050 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.18082371  0.00007752  0.00000000  0.50629710  0.00010853 -0.00002502  0.00000004 -0.00000221
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00040898 -0.00000018  0.00000000 -0.02229581 -0.00000478  0.00000110  0.00000669 -0.00031259

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000018  0.00040953 -0.00013366 -0.00000110 -0.00000010 -0.02229367 -0.01152113 -0.00000287

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000159  0.03447262 -0.00000000 -0.00000000 -0.00008644 -0.00004529 -0.00000009

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00052672 -0.00001227 -0.00000000 -0.00004588  0.18177644 -0.00000085 -0.00006694  0.28664982

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.46384540  0.00019884 -0.00000000 -0.17916043 -0.00004540  0.00000885 -0.00017441  0.00813967

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000007 -0.00000000  0.00006507 -0.00000001  0.00002539  0.00000002  0.00000322 -0.00009361

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00019882 -0.46383492  0.00000000 -0.00000885 -0.00000084 -0.17921821  0.30030768  0.00007480

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00027637  0.00000667  0.00000001  0.00002117 -0.09887901  0.00000046 -0.00012318  0.52755182

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00592180 -0.00000258  0.00000000 -0.50338612 -0.00010790  0.00002845  0.00017361 -0.00801468

  10    1  |1 0>           0.00000000 -0.00000000  0.00000050  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000202  0.50238764  0.00000001  0.00000000  0.00017206  0.00011678  0.00000207

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000258 -0.00592674 -0.00017173  0.00002845  0.00000236  0.50333747  0.29538327  0.00007363

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00019549  0.00000471 -0.00000000 -0.00010853  0.50629934 -0.00000237 -0.00000002  0.00009667

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.03447117  0.00000000 -0.00000000  0.00000000 -0.00000025 -0.00000022

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000114  0.00000001 -0.00000000  0.00008165  0.02229223 -0.00000011 -0.00000266  0.01151819

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00040850 -0.00000018 -0.00000000 -0.02229251  0.00008165  0.00000110 -0.00000670  0.00035740

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00002481 -0.01387214  0.00000001 -0.00000754 -0.00000003 -0.00538428  0.60042214  0.00014922

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000047  0.00000856 -0.00000000 -0.00000000  0.00000020  0.00000254 -0.00000151

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.46383492 -0.00029686 -0.00000000  0.17925376  0.00003842 -0.00004673 -0.00015281  0.00814969

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00050148  0.00001210  0.00000000  0.00003842 -0.17924956  0.00000084 -0.00007009  0.30017737

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00031394  0.53541851 -0.00000000  0.00004285  0.00000098  0.20685084  0.01556464  0.00000536

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000050 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.50243055 -0.00000000 -0.00000358  0.00000000 -0.00000634 -0.00000767

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00592989  0.00000255  0.00000000  0.50330001 -0.00006416 -0.00002487  0.00017159 -0.00811931

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000437 -0.00000015 -0.00000357 -0.00006416 -0.50329818  0.00000236  0.00006890 -0.29533717

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00007751 -0.18081152  0.00000001  0.00002502  0.00000237  0.50630446  0.00002169  0.00000001

   1    1  |0 0>           0.00000076  0.00000000  0.00000002  0.00000481  0.00000000 -0.00000001  0.00022891  0.00108731
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000559  0.00000002 -0.00060090 -0.04003360
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000008 -0.00000001  0.00000003 -0.00000009  0.00000134 -0.04004911  0.00060716
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000238 -0.00000003  0.00000006  0.00000000 -0.00000969 -0.00040568
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000198  0.00000001 -0.00000000 -0.00000001  0.00029232  0.00002450
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.02844848 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.50007328  0.00021445  0.00000000  0.35903845  0.00004494 -0.00001780  0.00000002 -0.00000150
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00021527  0.50008371 -0.00000001 -0.00001788  0.00059632 -0.35902228 -0.00001275  0.00000010
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00049570  0.00081987  0.00000000  0.00004490 -0.35903528 -0.00059631 -0.00000001 -0.00006106
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000757 -0.00000000  0.00000001 -0.00006562 -0.00000001  0.00000001  0.00030871 -0.01448104
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00007519  0.00000000 -0.00033524  0.53133225
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000059  0.00000000  0.00000001 -0.00000003 -0.00001744  0.53152787  0.00034353
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |0 0>           0.00000000  0.00000000 -0.00004005  0.00000000  0.00000000 -0.00000001  0.00001358  0.00000791
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |0 0>          -0.00000000  0.00000000  0.00002339 -0.00000000 -0.00000000  0.00000001  0.00001827 -0.00000390
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |0 0>           0.00000000  0.00000000  0.48827442 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000049  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00031258 -0.00000010 -0.00000014  0.00000240 -0.02534498 -0.00000264 -0.00000253 -0.01240446
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000066 -0.00386620  0.01272616  0.00000001 -0.00000001  0.00009827 -0.00000034  0.00000017
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000662 -0.00001550  0.00004952 -0.00000170  0.00000264 -0.02534451  0.00000064  0.00000091
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.31358453  0.00000240  0.00001773 -0.22491968 -0.00001248  0.00002438 -0.27962837  0.00004670
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00813888 -0.00000274 -0.00000364 -0.00001292  0.22839149  0.00002380 -0.00004383 -0.26763275
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00027840  0.00001320 -0.00000470  0.00000061  0.00002380 -0.22842826 -0.00010830 -0.00001950
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00001408  0.57471754  0.17448876 -0.00000000  0.00000000  0.00000000 -0.00000961  0.00000119
                           0.00000000  0.00000006  0.00000005  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.51199978 -0.00000392 -0.00002896 -0.13777536 -0.00001301 -0.00003233  0.45646734 -0.00009311
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00801445 -0.00000198 -0.00000589 -0.00003855  0.40733380  0.00004244  0.00009019  0.44236498
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00016959  0.00004684 -0.00011619 -0.00002733  0.00004243 -0.40729827  0.00002288  0.00003227
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00001749  0.09905605 -0.32639458  0.00000001 -0.00000291  0.00013923 -0.00001192  0.00000311
                           0.00000000  0.00000001 -0.00000010  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00008173  0.00000000 -0.00000000  0.04108637  0.00000389 -0.00000276 -0.00002136  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.01151331 -0.00000009 -0.00000065 -0.02534517 -0.00000240  0.00000170  0.01240412 -0.00000253

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000662 -0.00005073  0.00001189  0.00000170 -0.00000264  0.02534456  0.00000064  0.00000091

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000005  0.01295397 -0.00301991  0.00000001 -0.00000001  0.00009827 -0.00000005 -0.00000006

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00777097 -0.00000292 -0.00002031  0.00001312 -0.23175481 -0.00002414  0.00004179  0.25559532

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.30021453  0.00000230  0.00001698 -0.22839131 -0.00001270  0.00001532 -0.26762550  0.00004464

   6    1  |1 0>           0.00000000 -0.00000001 -0.00000018  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00003158  0.13622973  0.58496869  0.00000000 -0.00003234 -0.00000000 -0.00001563 -0.00006894

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00017243  0.00001319 -0.00000470  0.00001532 -0.00002380  0.22841313 -0.00001384 -0.00001952

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.01432303  0.00002960  0.00011286 -0.00001195  0.12593392  0.00001312  0.00009587  0.47034725

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.29520075 -0.00000226 -0.00001670  0.40733599  0.00003855 -0.00002443 -0.44235739  0.00009019

  10    1  |1 0>           0.00000000  0.00000004 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000181 -0.33220420  0.07730867  0.00000001 -0.00000001  0.00013923 -0.00000198 -0.00000214

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00017171  0.00012654 -0.00003107  0.00002443 -0.00004244  0.40730279  0.00002603  0.00003227

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000263  0.00000000  0.00000000  0.00000389 -0.04109028 -0.00000428 -0.00000000 -0.00002643

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000061  0.00909259  0.00971364 -0.00000000  0.00000000  0.00000000 -0.00000039  0.00000012

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00035741  0.00000010  0.00000014  0.00010067 -0.02534511 -0.00000265  0.00005062  0.01240372

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01151774  0.00000009  0.00000065 -0.02534494 -0.00010067  0.00000169 -0.01240427  0.00005062

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00033255  0.00000947  0.00000643 -0.00000882 -0.00000071  0.00683481 -0.00001680 -0.00003905

   5    1  |1 1>-          0.00000000  0.00000005 -0.00000013  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00001981 -0.43847553  0.41047374  0.00000000 -0.00000000 -0.00000023 -0.00000600  0.00000509

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.30017342  0.00000230  0.00001698  0.22839325  0.00002161  0.00003295 -0.26768637  0.00005457

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00814983  0.00000273  0.00000363 -0.00002162  0.22840359  0.00002380  0.00005456  0.26766588

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00006358  0.00000063 -0.00000020  0.00002388  0.00002747 -0.26365318 -0.00004944 -0.00000100

   9    1  |1 1>-          0.00000000 -0.00000002 -0.00000008 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00001566  0.23306770  0.24895632  0.00000000 -0.00000290 -0.00000000  0.00001390 -0.00000097

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.29533383 -0.00000227 -0.00001670 -0.40729283 -0.00017778  0.00002731 -0.44235938  0.00024140

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00811945 -0.00000435 -0.00000534  0.00017777 -0.40728962 -0.00004245  0.00024141  0.44236088

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00000000 -0.00000001 -0.00000276  0.00000428 -0.04108610  0.00000000 -0.00000000

   1    1  |0 0>          -0.04003896  0.00017734  0.00012847  0.00000229 -0.00000000  0.00000000 -0.04755004  0.00000991
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00109273 -0.00037232 -0.00014936  0.00000000 -0.00000190 -0.00000000 -0.00001695 -0.04754373
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00021298  0.00008766 -0.00027808  0.00000001  0.00000003 -0.00000001 -0.00029729  0.00072829
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00019734  0.03809501  0.01236711 -0.00000001 -0.00000002  0.00000000  0.00024511 -0.00047442
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00006512  0.01236842 -0.03809627  0.00000000  0.00000000 -0.00000000 -0.00007434  0.00002589
                           0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000124 -0.00000201  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00005538  0.00000000 -0.00000000  0.70094227  0.00012887 -0.00004690  0.00004383 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000001 -0.00000000  0.00000001  0.00004713 -0.00124051  0.70094682  0.00000000  0.00000007
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000166 -0.00000000 -0.00000000 -0.00012878  0.70094156  0.00124053 -0.00000001 -0.00004284
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.53133255 -0.00001759 -0.00003215  0.00000249 -0.00000000  0.00000000 -0.41980383  0.00012934
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.01448122  0.00000465  0.00000630  0.00000000  0.00000089 -0.00000000 -0.00012934 -0.41980144
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00029946  0.00002059 -0.00000970 -0.00000000  0.00000000  0.00000094  0.00002167 -0.00013618
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |0 0>          -0.00003046 -0.46887942 -0.25034148 -0.00000000  0.00000000  0.00000000  0.00000090  0.00000209
                           0.00000000 -0.00000005 -0.00000008 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |0 0>           0.00001997 -0.25034056  0.46887802  0.00000000 -0.00000000 -0.00000000  0.00001170 -0.00000489
                          -0.00000000 -0.00000003  0.00000014  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |0 0>          -0.00000001 -0.00002375 -0.00003816 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+         -0.00000091 -0.00000009  0.00000012 -0.00000012 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00004861 -0.00640002  0.01281258 -0.00000000 -0.00000000  0.00000001 -0.00000080  0.00000000
                           0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.01240477 -0.00002567  0.00004975  0.00000000 -0.00000000 -0.00000158 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00002533  0.00000740 -0.00000358 -0.00042090  0.71667287 -0.00009824 -0.00000868  0.11664995
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000608 -0.00000000 -0.00000000  0.00000008

   5    1  |1 1>+         -0.00001953 -0.00000201  0.00000268  0.67821957  0.00039971 -0.00000698  0.00007088 -0.00014242
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.26754510  0.00001842 -0.00000158  0.00000551  0.00008441  0.57061773  0.00002205  0.00004832
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000958  0.00000000  0.00000000

   7    1  |1 1>+          0.00003155 -0.47887095 -0.23916677 -0.00003786  0.00000686  0.00001195  0.57737276  0.00000069
                           0.00000000  0.00000171  0.00000006  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000

   8    1  |1 1>+          0.00007231 -0.00001208  0.00000585 -0.00006478  0.06251140  0.00001537 -0.00000147  0.63417772
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000053  0.00000000  0.00000000  0.00000042

   9    1  |1 1>+          0.00003228  0.00000168 -0.00000116 -0.00001221 -0.00000002 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.44236733 -0.00010848  0.00015881  0.00000000 -0.00000000 -0.00008751 -0.00000001 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00016961 -0.22826969  0.45697188 -0.00000001 -0.00000001  0.00000003 -0.00003575  0.00000001
                           0.00000000  0.00000081 -0.00000012 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000380  0.00000000  0.00000000 -0.00001606
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000064 -0.00000033  0.00000016 -0.00000000  0.00000058 -0.00000000  0.00000000  0.00000113

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01240448  0.00002976  0.00004640 -0.00000000 -0.00000000 -0.00000185 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00004762 -0.00789576 -0.01194929  0.00000000  0.00000000 -0.00000001  0.00000095 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001865  0.00002006 -0.00001454  0.72638526  0.00041798 -0.00001329  0.00006062  0.00010491

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000588 -0.00000000 -0.00000000 -0.00000015
                          -0.00001384  0.00000709 -0.00000344  0.00038987 -0.69275079  0.00002735  0.00000800  0.23120032

   6    1  |1 0>          -0.00000000 -0.00000159  0.00000008  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000
                           0.00003248 -0.44661761  0.29505669  0.00007859 -0.00000685 -0.00001195 -0.57736550 -0.00000061

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000981  0.00000000  0.00000000
                           0.26756113  0.00001842 -0.00000158  0.00001291  0.00003029  0.58403556 -0.00004466 -0.00000417

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00003433 -0.00007778  0.00004901 -0.06152597 -0.00001763  0.00001013 -0.00004820 -0.00038528

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00002602  0.00001171 -0.00000568  0.00000002 -0.00002604  0.00000001  0.00000000 -0.00002033

  10    1  |1 0>          -0.00000000 -0.00000100 -0.00000012  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00013433 -0.28160155 -0.42617819 -0.00000000  0.00000000 -0.00000003  0.00005360 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.44235686  0.00006582  0.00014828 -0.00000000  0.00000000 -0.00007717 -0.00000002 -0.00000001

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000311 -0.00000001  0.00000000 -0.00000000  0.00000001

   1    1  |1 1>-         -0.00000000 -0.00000005  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000099 -0.01429544  0.00086338 -0.00000000 -0.00000000 -0.00000000  0.00000008  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000091  0.00000009 -0.00000012 -0.00000098  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000064  0.00000033 -0.00000016 -0.00000000 -0.00000080 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000969 -0.00000000 -0.00000000
                           0.53521193  0.00003809  0.00001747 -0.00000937 -0.00004969 -0.57730985  0.00003507 -0.00010335

   5    1  |1 1>-          0.00000000  0.00000011  0.00000014 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000
                          -0.00001973  0.03228123  0.53436434 -0.00003786  0.00000686  0.00003423  0.57731252  0.00000070

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000043  0.00000000 -0.00000000 -0.00000048
                           0.00000540  0.00000709 -0.00000344 -0.00006147  0.05067869 -0.00012277 -0.00000143  0.72853101

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00001953  0.00000200 -0.00000267  0.09271935  0.00003353 -0.00001209 -0.00006456  0.00044765

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000
                           0.01387421  0.00000096 -0.00000002  0.00000616 -0.00002350 -0.00333960 -0.00005739 -0.00001066

   9    1  |1 1>-          0.00000000  0.00000182 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00003528  0.50989150 -0.03079974  0.00000001  0.00000000 -0.00000000 -0.00000367 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00002286  0.00001172 -0.00000568  0.00000001 -0.00003175  0.00000000  0.00000000 -0.00003243

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00003228 -0.00000033 -0.00000419 -0.00003158 -0.00000002  0.00000000 -0.00000000  0.00000001

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000114 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000588  0.00000000  0.00000000

   1    1  |0 0>           0.00029693 -0.00025434 -0.00003629  0.00000000 -0.00000304  0.00000005  0.00000001 -0.00000145
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00072796  0.00044176  0.00017568  0.00000230  0.00000000 -0.00000011 -0.00000002 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.04754350  0.00014716 -0.00031300 -0.00000004 -0.00000002 -0.00000744  0.00000002 -0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000719 -0.04293602 -0.02043039  0.00000002  0.00000002 -0.00000000  0.00000195  0.00000001
                           0.00000000  0.00000015  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00034677  0.02043079 -0.04293737 -0.00000000 -0.00000000  0.00000005  0.00000273 -0.00000000
                          -0.00000000 -0.00000007  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000002  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00001606 -0.00000000  0.00000000  0.00002750
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000233  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000739  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000001  0.00000000 -0.00000000  0.00000918  0.00000000  0.00000001 -0.00000000  0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00002171  0.00000222 -0.00001152  0.00000001 -0.00002416  0.00000000  0.00000000 -0.00001602
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00013619 -0.00000330  0.00000416  0.00001582  0.00000001  0.00000002 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.41982015 -0.00003123  0.00000176  0.00000001 -0.00000000 -0.00005958 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.00002965 -0.40482851 -0.11101781 -0.00000000 -0.00000000 -0.00000000  0.00001239  0.00000000
                           0.00000000  0.00000144  0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |0 0>          -0.00000996  0.11100633 -0.40484805  0.00000000  0.00000000 -0.00000001  0.00002635 -0.00000000
                          -0.00000000 -0.00000040  0.00000011 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>           0.00000000 -0.00000646  0.00000061  0.00000000 -0.00000000  0.00000000  0.00000068  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |1 1>+          0.00000078 -0.00000000 -0.00000125  0.01992294  0.00000099  0.00000041  0.02646423  0.00000218
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00007725  0.00000079  0.00000002 -0.00010292
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000067  0.00000006 -0.00000099  0.01992422  0.00000003 -0.00000218  0.02646299
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00005850  0.00007008  0.01964540  0.00000200  0.00000075  0.06700537  0.00000143  0.00000254
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.27087046 -0.00000608 -0.00000201  0.01995323  0.00000099 -0.00000156  0.06415151  0.00000528
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000942 -0.45582402 -0.00000145  0.00000099 -0.01996585  0.00002258  0.00000528 -0.06416514
                           0.00000000  0.00000011  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00005631  0.00004289 -0.00000000  0.00000000 -0.00000000  0.00000864  0.00000026 -0.00000551
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00038652  0.00003660  0.01205742  0.00000076 -0.00000367 -0.10941684  0.00000172 -0.00001157
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00001456  0.00000000  0.00001779 -0.28399477 -0.00001408  0.00000730  0.46545313  0.00003829
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000610  0.00000091 -0.00001408  0.28401542 -0.00000047  0.00003829 -0.46547534
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000202 -0.00009709 -0.00001398 -0.00000360  0.00016474
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000001  0.00000000  0.84117283  0.00005270 -0.00000271  0.00001433  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.01992309 -0.00000125  0.00000006 -0.02646414  0.00000042  0.00000003

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000104 -0.00000006  0.00000099 -0.01992464  0.00000002 -0.00000218  0.02646274

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00007725  0.00000139  0.00000004  0.00010163

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.10752662 -0.00000555  0.00000204 -0.02023603 -0.00000101  0.00000151 -0.06124670 -0.00000504

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00016836  0.00001361  0.01994230  0.00000203 -0.00000007  0.06415130  0.00000136 -0.00000007

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00006179 -0.00004289 -0.00000000 -0.00000283 -0.00000000  0.00000721  0.00001822 -0.00000392

   7    1  |1 0>           0.00000000  0.00000011  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000749  0.43850022  0.00000006 -0.00000099  0.01996200 -0.00000006  0.00000528 -0.06415712

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.62476650 -0.00000101 -0.00000069  0.01102175  0.00000055 -0.00000176 -0.11274420 -0.00000928

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.28399933  0.00001779 -0.00000293 -0.46545581  0.00000730 -0.00000285

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000000  0.00000000  0.00000001 -0.00009709 -0.00002437 -0.00000080 -0.00014194

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00001029 -0.00000293  0.00001408 -0.28401659  0.00000285  0.00003829 -0.46548049

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00001026 -0.00000000 -0.00005270  0.84117225  0.00004171 -0.00000000  0.00001331  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000218  0.00000006 -0.00000130

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000024 -0.00000000  0.00007601  0.01992528  0.00000099 -0.00010302 -0.02646230 -0.00000218

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.01992514  0.00007601  0.00000007  0.02646235 -0.00010302 -0.00000003

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000835 -0.01141153  0.00000081 -0.00000003  0.00060141 -0.00000274  0.00001055 -0.12824978

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00005630  0.00004324 -0.00000000  0.00000000 -0.00000002 -0.00000143 -0.00000007  0.00000654

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00044469 -0.00000495 -0.01994270 -0.00000125  0.00000428  0.06414138 -0.00000101 -0.00000468

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.72438502  0.00000100 -0.00000125  0.01994671  0.00000099 -0.00000101 -0.06415118 -0.00000528

   8    1  |1 1>-          0.00000000  0.00000019 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000190  0.77447517 -0.00000371  0.00000114 -0.02301894  0.00001167  0.00000027 -0.00332533

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000202  0.00000000  0.00003835  0.00000441 -0.00002280

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000001 -0.28401532  0.00007930  0.00000092 -0.46548861  0.00016642  0.00000048

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000886 -0.00000000  0.00007929  0.28402060  0.00001408  0.00016642  0.46548676  0.00003829

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00001369  0.00000271 -0.00004171  0.84117103  0.00000000 -0.00000000  0.00000251

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000175  0.00000000  0.00000000 -0.01034529  0.00000021  0.00006515
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000068  0.00000001 -0.00000000 -0.00000222 -0.00000000 -0.00000174 -0.01034374 -0.00015849
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000001  0.00000037 -0.00000001  0.00000003 -0.00000023 -0.00006526  0.00015853 -0.01034476
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000001 -0.00000000  0.00000001 -0.00000002 -0.00000000  0.00005283 -0.00010325 -0.00000174
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001615  0.00000576  0.00007571
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000001  0.00000001 -0.35914796  0.00000953  0.00000122  0.00000326 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000004 -0.00001964  0.00000120 -0.00061600  0.35913699  0.00000000  0.00000000  0.00000092
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00002033 -0.00000003  0.00000954  0.35914788  0.00061599  0.00000000 -0.00000303  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00003384  0.00000000 -0.00000000  0.73516819 -0.00008813 -0.00000073
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000632 -0.00000000 -0.00000000 -0.00003926  0.00000000  0.00008813  0.73516972 -0.00023164
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000596 -0.00000000 -0.00000002 -0.00000580  0.00000076  0.00023165  0.73516020
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00003444  0.00000125 -0.00003673
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001537 -0.00000004  0.00000130
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     49          50          51

   1    1  |1 1>+         -0.00000006 -0.00000001  0.00000000
                           0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.01134465 -0.02837323  0.02343500
                          -0.00000003  0.00000023  0.00000000

   3    1  |1 1>+          0.00004514 -0.00010985  0.00009086
                          -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000484 -0.00000006 -0.00000000
                           0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000014 -0.00000002 -0.00000000
                           0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000281 -0.00000040  0.00000000
                           0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.11914948  0.04764181 -0.00000340
                          -0.00000030 -0.00000039 -0.00000000

   8    1  |1 1>+          0.00000790  0.00000009  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000240  0.00000342 -0.00000201
                           0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00008858  0.00016770 -0.00009672
                           0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.19953276  0.49905157 -0.28294264
                           0.00000050 -0.00000406 -0.00000004

  12    1  |1 1>+         -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000
                           0.00000191  0.00000002 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000
                          -0.00007212 -0.00009294 -0.00009086

   3    1  |1 0>           0.00000005  0.00000020 -0.00000000
                           0.01889934  0.02401168  0.02343489

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00000397  0.00000325  0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00000463 -0.00000006  0.00000000

   6    1  |1 0>           0.00000025 -0.00000065  0.00000000
                           0.10082653 -0.07937733 -0.00000870

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000
                          -0.00000281 -0.00000040 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000
                           0.00001859 -0.00001442 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                           0.00003361  0.00000040  0.00000000

  10    1  |1 0>          -0.00000083 -0.00000343  0.00000004
                          -0.33241809 -0.42233550 -0.28294194

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000
                           0.00009326  0.00014147  0.00009672

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000008 -0.00000004  0.00000000
                           0.03024558 -0.00436195 -0.02343447

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000
                           0.00000006  0.00000001  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                          -0.00000191 -0.00000002  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                          -0.00000632 -0.00000570  0.00000000

   5    1  |1 1>-         -0.00000005 -0.00000103 -0.00000000
                          -0.01831359 -0.12699767  0.00000062

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                          -0.00000463 -0.00000006  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                           0.00000013  0.00000002 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                          -0.00000015 -0.00000004  0.00000000

   9    1  |1 1>-          0.00000133 -0.00000062  0.00000004
                           0.53195431 -0.07671628 -0.28292613

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000
                           0.00003361  0.00000040 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                          -0.00000477  0.00000042  0.00000201

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000

   1    1  |0 0>          -0.00005531 -0.00000312 -0.00000000
                           0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00009903  0.00003002  0.00000000
                          -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00002651 -0.00007069  0.00000000
                          -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00967607 -0.00365626 -0.00000024
                           0.00000002  0.00000003 -0.00000000

   5    1  |0 0>           0.00365535 -0.00967727  0.00000009
                          -0.00000001  0.00000008  0.00000000

   6    1  |0 0>           0.00000043 -0.00000009 -0.03082365
                          -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00003667  0.00000878  0.00000000
                           0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000125 -0.00000019 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00003635  0.00000547  0.00000000
                          -0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.72268018  0.13503754  0.00000556
                          -0.00000181 -0.00000110  0.00000000

  14    1  |0 0>          -0.13504511  0.72267081 -0.00000151
                           0.00000034 -0.00000588 -0.00000000

  15    1  |0 0>          -0.00001206  0.00000159  0.87019678
                           0.00000000 -0.00000000  0.00000012


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.74705247     -0.05087786   -11166.40      0.00000000        0.00      0.0000
     2   1   -192.71290940     -0.01673478    -3672.86      0.03414308     7493.54      0.9291
     3   1   -192.71290939     -0.01673478    -3672.86      0.03414308     7493.54      0.9291
     4   1   -192.71290939     -0.01673477    -3672.86      0.03414308     7493.54      0.9291
     5   1   -192.69931882     -0.00314421     -690.07      0.04773365    10476.32      1.2989
     6   1   -192.69931882     -0.00314420     -690.07      0.04773366    10476.33      1.2989
     7   1   -192.69931804     -0.00314342     -689.90      0.04773443    10476.50      1.2989
     8   1   -192.69931803     -0.00314342     -689.90      0.04773444    10476.50      1.2989
     9   1   -192.69931803     -0.00314341     -689.90      0.04773445    10476.50      1.2989
    10   1   -192.65296269      0.04321193     9483.92      0.09408979    20650.32      2.5603
    11   1   -192.65296268      0.04321194     9483.92      0.09408980    20650.32      2.5603
    12   1   -192.65296266      0.04321196     9483.93      0.09408981    20650.33      2.5603
    13   1   -192.65296192      0.04321269     9484.09      0.09409055    20650.49      2.5603
    14   1   -192.65296191      0.04321271     9484.09      0.09409056    20650.49      2.5603
    15   1   -192.61454586      0.08162876    17915.44      0.13250662    29081.84      3.6057
    16   1   -192.55070317      0.14547145    31927.29      0.19634930    43093.69      5.3429
    17   1   -192.55070317      0.14547145    31927.29      0.19634931    43093.69      5.3429
    18   1   -192.55070309      0.14547153    31927.31      0.19634938    43093.71      5.3429
    19   1   -192.54527138      0.15090324    33119.43      0.20178110    44285.83      5.4907
    20   1   -192.54432716      0.15184745    33326.66      0.20272531    44493.06      5.5164
    21   1   -192.54432712      0.15184750    33326.67      0.20272535    44493.07      5.5164
    22   1   -192.54432687      0.15184775    33326.73      0.20272561    44493.13      5.5164
    23   1   -192.54346409      0.15271053    33516.09      0.20358839    44682.49      5.5399
    24   1   -192.54346401      0.15271060    33516.10      0.20358846    44682.50      5.5399
    25   1   -192.54346401      0.15271060    33516.10      0.20358846    44682.50      5.5399
    26   1   -192.54346369      0.15271093    33516.17      0.20358878    44682.57      5.5399
    27   1   -192.54346369      0.15271093    33516.18      0.20358879    44682.57      5.5399
    28   1   -192.49668629      0.19948833    43782.63      0.25036618    54949.03      6.8128
    29   1   -192.49668626      0.19948836    43782.63      0.25036621    54949.03      6.8128
    30   1   -192.49668615      0.19948847    43782.66      0.25036633    54949.06      6.8128
    31   1   -192.49465973      0.20151489    44227.41      0.25239275    55393.81      6.8680
    32   1   -192.49465970      0.20151491    44227.41      0.25239277    55393.81      6.8680
    33   1   -192.49465959      0.20151502    44227.44      0.25239288    55393.83      6.8680
    34   1   -192.49465955      0.20151506    44227.44      0.25239292    55393.84      6.8680
    35   1   -192.49465935      0.20151527    44227.49      0.25239313    55393.89      6.8680
    36   1   -192.49343506      0.20273955    44496.19      0.25361741    55662.59      6.9013
    37   1   -192.49343506      0.20273956    44496.19      0.25361741    55662.59      6.9013
    38   1   -192.49343491      0.20273971    44496.22      0.25361757    55662.62      6.9013
    39   1   -192.49343483      0.20273979    44496.24      0.25361765    55662.64      6.9013
    40   1   -192.49343475      0.20273986    44496.26      0.25361772    55662.66      6.9013
    41   1   -192.49343475      0.20273987    44496.26      0.25361773    55662.66      6.9013
    42   1   -192.49343472      0.20273990    44496.26      0.25361776    55662.66      6.9013
    43   1   -192.49123006      0.20494456    44980.13      0.25582241    56146.53      6.9613
    44   1   -192.49123004      0.20494458    44980.14      0.25582244    56146.53      6.9613
    45   1   -192.49122997      0.20494465    44980.15      0.25582250    56146.55      6.9613
    46   1   -192.48774422      0.20843040    45745.19      0.25930825    56911.58      7.0561
    47   1   -192.48774416      0.20843046    45745.20      0.25930832    56911.60      7.0561
    48   1   -192.48774393      0.20843069    45745.25      0.25930855    56911.65      7.0561
    49   1   -192.48774385      0.20843076    45745.27      0.25930862    56911.66      7.0561
    50   1   -192.48774351      0.20843111    45745.34      0.25930896    56911.74      7.0562
    51   1   -192.47900360      0.21717102    47663.53      0.26804887    58829.93      7.2940

 E0 =   -192.69617462 is the energy of the lowest zeroth-order state
 E1 =   -192.74705247 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.00040010 -0.00005196  0.70601923  0.00010984 -0.00013465 -0.00160157  0.00662202
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.53627720  0.00000188 -0.00273740 -0.00000020 -0.27637456 -0.56371759  0.00004602 -0.00223061
                                0.00000008  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00207929 -0.00048503  0.70601427  0.00005224 -0.00104550 -0.00231624 -0.01022386  0.54357399
                                0.00000000 -0.00000000  0.00000022  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000000 -0.01282773 -0.00000828  0.00000777  0.00000089 -0.00000061 -0.02575041 -0.00048620
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000000  0.00000788 -0.00000096  0.01302650 -0.00000498  0.00000611  0.00007362 -0.00030028
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000000  0.00000986 -0.01302672 -0.00000096  0.00000118 -0.00000592 -0.00047235  0.02465073
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000032 -0.00000000  0.00000000 -0.00000000 -0.04427846  0.02170839 -0.00000223  0.00000747
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000000 -0.00785724 -0.00000777  0.00000445 -0.00000146  0.00000100  0.04204644  0.00079672
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000018  0.00000382 -0.00000050  0.00673899 -0.00000045  0.00000053  0.00000646 -0.00002670
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00000878  0.00000463 -0.00673847 -0.00000050 -0.00000028 -0.00000130 -0.00004121  0.00219090
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.02567929 -0.00000000  0.00000230 -0.00000005 -0.00111376 -0.00227307  0.00000004 -0.00000124
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000000  0.04130542  0.00002838 -0.00002341 -0.00000000 -0.00000000  0.00000116  0.00000002
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.70601879  0.00048506 -0.00040006  0.00001884 -0.00001294 -0.54361768 -0.01024277

 14  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000022  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00207929  0.00048502 -0.70601367 -0.00005224 -0.00240257 -0.00029539 -0.01022398  0.54357541

 15  1     3    1  |1 0>       -0.00000008 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000
                               -0.53627728  0.00000188 -0.00273740 -0.00000020  0.62638141  0.04251143 -0.00001823  0.00208674

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000799  0.00000097 -0.01321676  0.00000489 -0.00000783 -0.00007030  0.00028671

 17  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.01302654 -0.00000895  0.00000789  0.00000085 -0.00000059 -0.02465253 -0.00046451

 18  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000094 -0.00000000  0.00000000 -0.00000184 -0.00333909  0.04920047 -0.00000153  0.00001202

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000895  0.01302659  0.00000096  0.00000118 -0.00000592 -0.00046365  0.02465081

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000407 -0.00000053  0.00718237  0.00000815 -0.00000178 -0.00012764  0.00052775

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00673896  0.00000468 -0.00000382 -0.00000008  0.00000005  0.00219191  0.00004132

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.02567929 -0.00000000  0.00000230  0.00000000  0.00252556  0.00016965  0.00000007  0.00000066

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000878 -0.00000468  0.00673877  0.00000050 -0.00000076 -0.00000058 -0.00004123  0.00219148

 24  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00002341  0.00000304 -0.04130564  0.00000000 -0.00000000 -0.00000000  0.00000002

 25  1     1    1  |1 1>-       0.00000008  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000
                                0.53628117  0.00000000  0.00000000  0.00000000  0.35000963 -0.52121018  0.00002779 -0.00014387

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00233731 -0.00005384  0.70601566 -0.00010977  0.00013459 -0.00050617 -0.00666168

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.70601578  0.00048485  0.00233734 -0.00001927  0.00001346  0.54361876  0.01021700

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000080  0.00038998  0.00000003  0.00000394 -0.00001078 -0.00092598  0.04928520

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000003  0.00000000 -0.00000001  0.00000000  0.04093927  0.02749206  0.00000072  0.00000273

 30  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.01302625  0.00001170 -0.00000738  0.00000085 -0.00000059 -0.02465250 -0.00046273

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000738 -0.00000096  0.01302643  0.00000498 -0.00000611 -0.00007263  0.00030030

 32  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00001270 -0.01503530 -0.00000111  0.00000007 -0.00000030 -0.00002851  0.00127706

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.02567941 -0.00000000 -0.00000000 -0.00000005 -0.00141112  0.00210144 -0.00000011  0.00000058

 34  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00673939 -0.00000463  0.00000152 -0.00000008  0.00000005  0.00219280  0.00004131

 35  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000018 -0.00000152  0.00000050 -0.00673908 -0.00000043  0.00000053  0.00000571 -0.00002672

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00002838 -0.04130625 -0.00000306 -0.00000000  0.00000000 -0.00000001  0.00000039

 37  1     1    1  |0 0>       -0.00000000  0.00000053 -0.00000000 -0.00000000  0.00243195 -0.00241388  0.63623913  0.00798074
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000001 -0.00000014 -0.00532371  0.00312228 -0.00195880  0.01744308
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000043  0.00000000  0.00214047  0.00399253 -0.00792205  0.63599530
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000007 -0.00000000 -0.00000000 -0.00000000  0.56583439 -0.29097240 -0.00328454  0.00005036
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000001  0.00000000 -0.00000000  0.00000000  0.29098916  0.56584940  0.00109188 -0.00452378
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.36352290  0.00000000 -0.00000000  0.00000000 -0.00000007  0.00000001  0.00000000 -0.00000000
                                0.00000005 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000  0.02665456  0.00001832 -0.00001273 -0.00000000 -0.00000000 -0.00000002 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000000 -0.00001834  0.02665450 -0.00004242  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00001270  0.00004243  0.02665452 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>        0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000015 -0.00000023 -0.01450063 -0.00027320
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000293  0.00000359  0.00004110 -0.00017090
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00000000  0.00000000 -0.00000004 -0.00000000 -0.00000077  0.00000353  0.00027273 -0.01449964
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.00000022  0.00000000 -0.00000000 -0.00000000 -0.01153303  0.00879428 -0.00000032  0.00000280
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00000025  0.00000000  0.00000000  0.00000000 -0.00879425 -0.01153300  0.00000014 -0.00000236
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.05549881  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000009  0.00000000  0.00000000
                               -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.54367317 -0.00017535 -0.45097093  0.00338239  0.00012096  0.00006206 -0.00000000 -0.00040909
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00005647 -0.00000511  0.00006731  0.00164508 -0.06044923  0.51722922 -0.20975601 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000003 -0.00000000

  3  1     3    1  |1 1>+      -0.00665129  0.00209104 -0.00338295 -0.45096311 -0.00027533  0.00191082 -0.00081328 -0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00007089 -0.01141600  0.00000362 -0.00005341 -0.00000121 -0.00000009 -0.00000000 -0.00051171
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.02465508 -0.00000381 -0.01092928  0.00008197  0.00000293  0.00000150 -0.00000000 -0.46384469
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00030164 -0.00005453  0.00008199  0.01092839  0.00000099  0.00000229  0.00000000  0.00001235
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00001422  0.00000230 -0.00000615  0.00000256 -0.02171103 -0.00253711 -0.00000019 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00011416  0.01864054 -0.00000659  0.00008847  0.00000197  0.00000014 -0.00000000 -0.00030246
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00219219  0.00000780  0.02004806 -0.00015037 -0.00000540 -0.00000260 -0.00000010 -0.00592499
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00002681  0.00009296 -0.00015040 -0.02004805 -0.00000274  0.00000365 -0.00000502  0.00000015
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000031  0.00000010  0.00000232  0.00000226 -0.00268701  0.02299368 -0.01469810  0.00000004
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000  0.00000058  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00019549
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00147665  0.45097887 -0.00015965  0.00209229  0.00004773  0.00000340  0.00000000  0.00000044

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00665054  0.00209085 -0.00338256 -0.45096303  0.00157862  0.00111108  0.00081328  0.00000001

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000003  0.00000000
                               -0.00014150  0.00005412 -0.00016719 -0.00164396 -0.41770888 -0.31096549 -0.20975593  0.00000000

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.02354063  0.00000364  0.01043510 -0.00007827 -0.00000227 -0.00000215  0.00000000  0.47063052

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00006788 -0.01092939  0.00000346 -0.00005070 -0.00000116 -0.00000008  0.00000000 -0.00051961

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000578  0.00000126 -0.00000418 -0.00000246 -0.01305363  0.01753308 -0.00000055  0.00006567

 19  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00030162 -0.00005067  0.00008199  0.01092887  0.00000099  0.00000229 -0.00000000 -0.00001231

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.04332819  0.00000747  0.01920648 -0.00014405 -0.00000753  0.00000055 -0.00000000 -0.25567797

 21  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000595 -0.02004841  0.00000710 -0.00009316 -0.00000212 -0.00000015 -0.00000000  0.00000640

 22  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000048  0.00000208 -0.00000690 -0.00000221 -0.01856899 -0.01382478 -0.01469802  0.00000000

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002681  0.00009310 -0.00015040 -0.02004775  0.00000453  0.00000052  0.00000502 -0.00000016

 24  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000156 -0.00000000  0.00000074 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.18081925

 25  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000003 -0.00000000
                               -0.00019797  0.00004902 -0.00009988  0.00000112 -0.47816175  0.20626531  0.20975751 -0.00000000

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.54367455  0.00192390  0.45096696 -0.00337425 -0.00012077 -0.00006205 -0.00000000 -0.00040861

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00063130 -0.45097490  0.00190817 -0.00210539 -0.00004820 -0.00000364 -0.00000000 -0.00000114

 28  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00060303 -0.00010087  0.00016393  0.02185069  0.00000232  0.00000536  0.00000000 -0.00000039

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000149 -0.00000104  0.00000504 -0.00000588  0.00865801  0.02007100  0.00000002 -0.00000000

 30  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00006699 -0.01093014  0.00000388 -0.00004992 -0.00000116 -0.00000008  0.00000000  0.00050147

 31  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.02465504  0.00000425  0.01092946 -0.00008197 -0.00000293 -0.00000150  0.00000000 -0.46383417

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00001564 -0.00000462  0.00000425  0.00056623  0.00000005  0.00000012  0.00000000  0.00001430

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000078 -0.00000218  0.00000458 -0.00000005  0.02125699 -0.00916965 -0.01469805  0.00000004

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000521 -0.02004781  0.00001395 -0.00009306 -0.00000212 -0.00000015 -0.00000000 -0.00000438

 35  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00219246  0.00001465  0.02004766 -0.00015033 -0.00000553 -0.00000269  0.00000010  0.00592119

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000014  0.00000000 -0.00000000  0.00000000 -0.00000480

 37  1     1    1  |0 0>        0.00177278  0.76884901 -0.00031135 -0.00127364  0.00416393 -0.00085807  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.63602862  0.00036355  0.76879835  0.00594922 -0.00789172 -0.00033660 -0.00000000 -0.00000081
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.01746824  0.00128026 -0.00595249  0.76881633 -0.00049146  0.00575330  0.00000000  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00615302 -0.00405761  0.00788921 -0.00000140  0.76517913  0.07461550  0.00000003 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00021469  0.00124835 -0.00038669 -0.00577909 -0.07460775  0.76520851 -0.00000003  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000006  0.93064047 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000012 -0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00049605
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00081964
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.00000003  0.00000000  0.00000006 -0.00000000  0.00000000 -0.00000000  0.00000000  0.50007372
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00003788  0.02362202 -0.00001082  0.00010961  0.00000309  0.00000033 -0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.01450216  0.00001169  0.02362152 -0.00018654 -0.00000633 -0.00000326 -0.00000000  0.00000638
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00017165 -0.00010952  0.00018660  0.02362128  0.00000228  0.00000495  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00000448 -0.00000304  0.00000604 -0.00000194  0.02354842 -0.00187119 -0.00000014  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000105 -0.00000055  0.00000371 -0.00000514  0.00187118  0.02354837  0.00000017 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000012 -0.00000012  0.03557450 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00000044  0.00000001 -0.00000000 -0.00000478  0.02229605 -0.00000010  0.00000269 -0.01151289
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000159  0.03447302 -0.00000000 -0.00000000 -0.00008644  0.00004503 -0.00000013
                                0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000018 -0.00040958  0.00013366  0.00000110  0.00000010  0.02229449 -0.01151963 -0.00000287
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.45675435  0.00017694 -0.00000000 -0.17642401 -0.00004473  0.00000143 -0.00019439  0.00850220
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00051914  0.00001209  0.00000000  0.00004523 -0.17915777  0.00000084  0.00007011 -0.30021772
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00023116  0.46383599  0.00000000  0.00002137  0.00000084  0.17918592  0.30032570  0.00007768
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00004358 -0.00000000 -0.00000000  0.00000000 -0.00002251 -0.00000774
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.27970987  0.00020434  0.00000000 -0.10814910 -0.00002320  0.00003796  0.00035212 -0.01390078
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000641  0.00000015  0.00000357 -0.00010790  0.50339198 -0.00000235  0.00006893 -0.29519101
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00000253  0.00591672  0.00017173 -0.00002487 -0.00000236 -0.50336138  0.29534249  0.00007356
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00000000 -0.00000202  0.50237821  0.00000001 -0.00000357  0.00017206 -0.00011044  0.00000560
                                0.00000000 -0.00000000 -0.00000050 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.18082371  0.00007752  0.00000000  0.50629710  0.00010853 -0.00002502  0.00000004 -0.00000221
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00040898 -0.00000018  0.00000000 -0.02229581 -0.00000478  0.00000110  0.00000669 -0.00031259

 14  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000018  0.00040953 -0.00013366 -0.00000110 -0.00000010 -0.02229367 -0.01152113 -0.00000287

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000159  0.03447262 -0.00000000 -0.00000000 -0.00008644 -0.00004529 -0.00000009

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00052672 -0.00001227 -0.00000000 -0.00004588  0.18177644 -0.00000085 -0.00006694  0.28664982

 17  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.46384540  0.00019884 -0.00000000 -0.17916043 -0.00004540  0.00000885 -0.00017441  0.00813967

 18  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000007 -0.00000000  0.00006507 -0.00000001  0.00002539  0.00000002  0.00000322 -0.00009361

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00019882 -0.46383492  0.00000000 -0.00000885 -0.00000084 -0.17921821  0.30030768  0.00007480

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00027637  0.00000667  0.00000001  0.00002117 -0.09887901  0.00000046 -0.00012318  0.52755182

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00592180 -0.00000258  0.00000000 -0.50338612 -0.00010790  0.00002845  0.00017361 -0.00801468

 22  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000050  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000202  0.50238764  0.00000001  0.00000000  0.00017206  0.00011678  0.00000207

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000258 -0.00592674 -0.00017173  0.00002845  0.00000236  0.50333747  0.29538327  0.00007363

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00019549  0.00000471 -0.00000000 -0.00010853  0.50629934 -0.00000237 -0.00000002  0.00009667

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.03447117  0.00000000 -0.00000000  0.00000000 -0.00000025 -0.00000022

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000114  0.00000001 -0.00000000  0.00008165  0.02229223 -0.00000011 -0.00000266  0.01151819

 27  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00040850 -0.00000018 -0.00000000 -0.02229251  0.00008165  0.00000110 -0.00000670  0.00035740

 28  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00002481 -0.01387214  0.00000001 -0.00000754 -0.00000003 -0.00538428  0.60042214  0.00014922

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000047  0.00000856 -0.00000000 -0.00000000  0.00000020  0.00000254 -0.00000151

 30  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.46383492 -0.00029686 -0.00000000  0.17925376  0.00003842 -0.00004673 -0.00015281  0.00814969

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00050148  0.00001210  0.00000000  0.00003842 -0.17924956  0.00000084 -0.00007009  0.30017737

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00031394  0.53541851 -0.00000000  0.00004285  0.00000098  0.20685084  0.01556464  0.00000536

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000050 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.50243055 -0.00000000 -0.00000358  0.00000000 -0.00000634 -0.00000767

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00592989  0.00000255  0.00000000  0.50330001 -0.00006416 -0.00002487  0.00017159 -0.00811931

 35  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000437 -0.00000015 -0.00000357 -0.00006416 -0.50329818  0.00000236  0.00006890 -0.29533717

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00007751 -0.18081152  0.00000001  0.00002502  0.00000237  0.50630446  0.00002169  0.00000001

 37  1     1    1  |0 0>        0.00000076  0.00000000  0.00000002  0.00000481  0.00000000 -0.00000001  0.00022891  0.00108731
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000559  0.00000002 -0.00060090 -0.04003360
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00000000 -0.00000008 -0.00000001  0.00000003 -0.00000009  0.00000134 -0.04004911  0.00060716
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000238 -0.00000003  0.00000006  0.00000000 -0.00000969 -0.00040568
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000198  0.00000001 -0.00000000 -0.00000001  0.00029232  0.00002450
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000000  0.02844848 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.50007328  0.00021445  0.00000000  0.35903845  0.00004494 -0.00001780  0.00000002 -0.00000150
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00021527  0.50008371 -0.00000001 -0.00001788  0.00059632 -0.35902228 -0.00001275  0.00000010
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00049570  0.00081987  0.00000000  0.00004490 -0.35903528 -0.00059631 -0.00000001 -0.00006106
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000757 -0.00000000  0.00000001 -0.00006562 -0.00000001  0.00000001  0.00030871 -0.01448104
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00007519  0.00000000 -0.00033524  0.53133225
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00000000  0.00000059  0.00000000  0.00000001 -0.00000003 -0.00001744  0.53152787  0.00034353
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00000000  0.00000000 -0.00004005  0.00000000  0.00000000 -0.00000001  0.00001358  0.00000791
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000000  0.00000000  0.00002339 -0.00000000 -0.00000000  0.00000001  0.00001827 -0.00000390
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.00000000  0.00000000  0.48827442 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000049  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00031258 -0.00000010 -0.00000014  0.00000240 -0.02534498 -0.00000264 -0.00000253 -0.01240446
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000066 -0.00386620  0.01272616  0.00000001 -0.00000001  0.00009827 -0.00000034  0.00000017
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000662 -0.00001550  0.00004952 -0.00000170  0.00000264 -0.02534451  0.00000064  0.00000091
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.31358453  0.00000240  0.00001773 -0.22491968 -0.00001248  0.00002438 -0.27962837  0.00004670
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00813888 -0.00000274 -0.00000364 -0.00001292  0.22839149  0.00002380 -0.00004383 -0.26763275
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00027840  0.00001320 -0.00000470  0.00000061  0.00002380 -0.22842826 -0.00010830 -0.00001950
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00001408  0.57471754  0.17448876 -0.00000000  0.00000000  0.00000000 -0.00000961  0.00000119
                                0.00000000  0.00000006  0.00000005  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.51199978 -0.00000392 -0.00002896 -0.13777536 -0.00001301 -0.00003233  0.45646734 -0.00009311
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00801445 -0.00000198 -0.00000589 -0.00003855  0.40733380  0.00004244  0.00009019  0.44236498
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00016959  0.00004684 -0.00011619 -0.00002733  0.00004243 -0.40729827  0.00002288  0.00003227
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.00001749  0.09905605 -0.32639458  0.00000001 -0.00000291  0.00013923 -0.00001192  0.00000311
                                0.00000000  0.00000001 -0.00000010  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00008173  0.00000000 -0.00000000  0.04108637  0.00000389 -0.00000276 -0.00002136  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.01151331 -0.00000009 -0.00000065 -0.02534517 -0.00000240  0.00000170  0.01240412 -0.00000253

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000662 -0.00005073  0.00001189  0.00000170 -0.00000264  0.02534456  0.00000064  0.00000091

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000005  0.01295397 -0.00301991  0.00000001 -0.00000001  0.00009827 -0.00000005 -0.00000006

 16  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00777097 -0.00000292 -0.00002031  0.00001312 -0.23175481 -0.00002414  0.00004179  0.25559532

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.30021453  0.00000230  0.00001698 -0.22839131 -0.00001270  0.00001532 -0.26762550  0.00004464

 18  1     6    1  |1 0>        0.00000000 -0.00000001 -0.00000018  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00003158  0.13622973  0.58496869  0.00000000 -0.00003234 -0.00000000 -0.00001563 -0.00006894

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00017243  0.00001319 -0.00000470  0.00001532 -0.00002380  0.22841313 -0.00001384 -0.00001952

 20  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.01432303  0.00002960  0.00011286 -0.00001195  0.12593392  0.00001312  0.00009587  0.47034725

 21  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.29520075 -0.00000226 -0.00001670  0.40733599  0.00003855 -0.00002443 -0.44235739  0.00009019

 22  1    10    1  |1 0>        0.00000000  0.00000004 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000181 -0.33220420  0.07730867  0.00000001 -0.00000001  0.00013923 -0.00000198 -0.00000214

 23  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00017171  0.00012654 -0.00003107  0.00002443 -0.00004244  0.40730279  0.00002603  0.00003227

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000263  0.00000000  0.00000000  0.00000389 -0.04109028 -0.00000428 -0.00000000 -0.00002643

 25  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000061  0.00909259  0.00971364 -0.00000000  0.00000000  0.00000000 -0.00000039  0.00000012

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00035741  0.00000010  0.00000014  0.00010067 -0.02534511 -0.00000265  0.00005062  0.01240372

 27  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01151774  0.00000009  0.00000065 -0.02534494 -0.00010067  0.00000169 -0.01240427  0.00005062

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00033255  0.00000947  0.00000643 -0.00000882 -0.00000071  0.00683481 -0.00001680 -0.00003905

 29  1     5    1  |1 1>-       0.00000000  0.00000005 -0.00000013  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00001981 -0.43847553  0.41047374  0.00000000 -0.00000000 -0.00000023 -0.00000600  0.00000509

 30  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.30017342  0.00000230  0.00001698  0.22839325  0.00002161  0.00003295 -0.26768637  0.00005457

 31  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00814983  0.00000273  0.00000363 -0.00002162  0.22840359  0.00002380  0.00005456  0.26766588

 32  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00006358  0.00000063 -0.00000020  0.00002388  0.00002747 -0.26365318 -0.00004944 -0.00000100

 33  1     9    1  |1 1>-       0.00000000 -0.00000002 -0.00000008 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00001566  0.23306770  0.24895632  0.00000000 -0.00000290 -0.00000000  0.00001390 -0.00000097

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.29533383 -0.00000227 -0.00001670 -0.40729283 -0.00017778  0.00002731 -0.44235938  0.00024140

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00811945 -0.00000435 -0.00000534  0.00017777 -0.40728962 -0.00004245  0.00024141  0.44236088

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00000000 -0.00000001 -0.00000276  0.00000428 -0.04108610  0.00000000 -0.00000000

 37  1     1    1  |0 0>       -0.04003896  0.00017734  0.00012847  0.00000229 -0.00000000  0.00000000 -0.04755004  0.00000991
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00109273 -0.00037232 -0.00014936  0.00000000 -0.00000190 -0.00000000 -0.00001695 -0.04754373
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00021298  0.00008766 -0.00027808  0.00000001  0.00000003 -0.00000001 -0.00029729  0.00072829
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00019734  0.03809501  0.01236711 -0.00000001 -0.00000002  0.00000000  0.00024511 -0.00047442
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00006512  0.01236842 -0.03809627  0.00000000  0.00000000 -0.00000000 -0.00007434  0.00002589
                                0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000124 -0.00000201  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00005538  0.00000000 -0.00000000  0.70094227  0.00012887 -0.00004690  0.00004383 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000001 -0.00000000  0.00000001  0.00004713 -0.00124051  0.70094682  0.00000000  0.00000007
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000166 -0.00000000 -0.00000000 -0.00012878  0.70094156  0.00124053 -0.00000001 -0.00004284
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>        0.53133255 -0.00001759 -0.00003215  0.00000249 -0.00000000  0.00000000 -0.41980383  0.00012934
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.01448122  0.00000465  0.00000630  0.00000000  0.00000089 -0.00000000 -0.00012934 -0.41980144
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00029946  0.00002059 -0.00000970 -0.00000000  0.00000000  0.00000094  0.00002167 -0.00013618
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.00003046 -0.46887942 -0.25034148 -0.00000000  0.00000000  0.00000000  0.00000090  0.00000209
                                0.00000000 -0.00000005 -0.00000008 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00001997 -0.25034056  0.46887802  0.00000000 -0.00000000 -0.00000000  0.00001170 -0.00000489
                               -0.00000000 -0.00000003  0.00000014  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00000001 -0.00002375 -0.00003816 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+      -0.00000091 -0.00000009  0.00000012 -0.00000012 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00004861 -0.00640002  0.01281258 -0.00000000 -0.00000000  0.00000001 -0.00000080  0.00000000
                                0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.01240477 -0.00002567  0.00004975  0.00000000 -0.00000000 -0.00000158 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00002533  0.00000740 -0.00000358 -0.00042090  0.71667287 -0.00009824 -0.00000868  0.11664995
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000608 -0.00000000 -0.00000000  0.00000008

  5  1     5    1  |1 1>+      -0.00001953 -0.00000201  0.00000268  0.67821957  0.00039971 -0.00000698  0.00007088 -0.00014242
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.26754510  0.00001842 -0.00000158  0.00000551  0.00008441  0.57061773  0.00002205  0.00004832
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000958  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00003155 -0.47887095 -0.23916677 -0.00003786  0.00000686  0.00001195  0.57737276  0.00000069
                                0.00000000  0.00000171  0.00000006  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000

  8  1     8    1  |1 1>+       0.00007231 -0.00001208  0.00000585 -0.00006478  0.06251140  0.00001537 -0.00000147  0.63417772
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000053  0.00000000  0.00000000  0.00000042

  9  1     9    1  |1 1>+       0.00003228  0.00000168 -0.00000116 -0.00001221 -0.00000002 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.44236733 -0.00010848  0.00015881  0.00000000 -0.00000000 -0.00008751 -0.00000001 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00016961 -0.22826969  0.45697188 -0.00000001 -0.00000001  0.00000003 -0.00003575  0.00000001
                                0.00000000  0.00000081 -0.00000012 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000380  0.00000000  0.00000000 -0.00001606
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000064 -0.00000033  0.00000016 -0.00000000  0.00000058 -0.00000000  0.00000000  0.00000113

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01240448  0.00002976  0.00004640 -0.00000000 -0.00000000 -0.00000185 -0.00000000 -0.00000000

 15  1     3    1  |1 0>       -0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00004762 -0.00789576 -0.01194929  0.00000000  0.00000000 -0.00000001  0.00000095 -0.00000000

 16  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001865  0.00002006 -0.00001454  0.72638526  0.00041798 -0.00001329  0.00006062  0.00010491

 17  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000588 -0.00000000 -0.00000000 -0.00000015
                               -0.00001384  0.00000709 -0.00000344  0.00038987 -0.69275079  0.00002735  0.00000800  0.23120032

 18  1     6    1  |1 0>       -0.00000000 -0.00000159  0.00000008  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000
                                0.00003248 -0.44661761  0.29505669  0.00007859 -0.00000685 -0.00001195 -0.57736550 -0.00000061

 19  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000981  0.00000000  0.00000000
                                0.26756113  0.00001842 -0.00000158  0.00001291  0.00003029  0.58403556 -0.00004466 -0.00000417

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00003433 -0.00007778  0.00004901 -0.06152597 -0.00001763  0.00001013 -0.00004820 -0.00038528

 21  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00002602  0.00001171 -0.00000568  0.00000002 -0.00002604  0.00000001  0.00000000 -0.00002033

 22  1    10    1  |1 0>       -0.00000000 -0.00000100 -0.00000012  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00013433 -0.28160155 -0.42617819 -0.00000000  0.00000000 -0.00000003  0.00005360 -0.00000000

 23  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.44235686  0.00006582  0.00014828 -0.00000000  0.00000000 -0.00007717 -0.00000002 -0.00000001

 24  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000311 -0.00000001  0.00000000 -0.00000000  0.00000001

 25  1     1    1  |1 1>-      -0.00000000 -0.00000005  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000099 -0.01429544  0.00086338 -0.00000000 -0.00000000 -0.00000000  0.00000008  0.00000000

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000091  0.00000009 -0.00000012 -0.00000098  0.00000000  0.00000000 -0.00000000  0.00000000

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000064  0.00000033 -0.00000016 -0.00000000 -0.00000080 -0.00000000  0.00000000  0.00000000

 28  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000969 -0.00000000 -0.00000000
                                0.53521193  0.00003809  0.00001747 -0.00000937 -0.00004969 -0.57730985  0.00003507 -0.00010335

 29  1     5    1  |1 1>-       0.00000000  0.00000011  0.00000014 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000
                               -0.00001973  0.03228123  0.53436434 -0.00003786  0.00000686  0.00003423  0.57731252  0.00000070

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000043  0.00000000 -0.00000000 -0.00000048
                                0.00000540  0.00000709 -0.00000344 -0.00006147  0.05067869 -0.00012277 -0.00000143  0.72853101

 31  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00001953  0.00000200 -0.00000267  0.09271935  0.00003353 -0.00001209 -0.00006456  0.00044765

 32  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000
                                0.01387421  0.00000096 -0.00000002  0.00000616 -0.00002350 -0.00333960 -0.00005739 -0.00001066

 33  1     9    1  |1 1>-       0.00000000  0.00000182 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00003528  0.50989150 -0.03079974  0.00000001  0.00000000 -0.00000000 -0.00000367 -0.00000000

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00002286  0.00001172 -0.00000568  0.00000001 -0.00003175  0.00000000  0.00000000 -0.00003243

 35  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00003228 -0.00000033 -0.00000419 -0.00003158 -0.00000002  0.00000000 -0.00000000  0.00000001

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000114 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000588  0.00000000  0.00000000

 37  1     1    1  |0 0>        0.00029693 -0.00025434 -0.00003629  0.00000000 -0.00000304  0.00000005  0.00000001 -0.00000145
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00072796  0.00044176  0.00017568  0.00000230  0.00000000 -0.00000011 -0.00000002 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.04754350  0.00014716 -0.00031300 -0.00000004 -0.00000002 -0.00000744  0.00000002 -0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000719 -0.04293602 -0.02043039  0.00000002  0.00000002 -0.00000000  0.00000195  0.00000001
                                0.00000000  0.00000015  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00034677  0.02043079 -0.04293737 -0.00000000 -0.00000000  0.00000005  0.00000273 -0.00000000
                               -0.00000000 -0.00000007  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000002  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00001606 -0.00000000  0.00000000  0.00002750
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000233  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000739  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000001  0.00000000 -0.00000000  0.00000918  0.00000000  0.00000001 -0.00000000  0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00002171  0.00000222 -0.00001152  0.00000001 -0.00002416  0.00000000  0.00000000 -0.00001602
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00013619 -0.00000330  0.00000416  0.00001582  0.00000001  0.00000002 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.41982015 -0.00003123  0.00000176  0.00000001 -0.00000000 -0.00005958 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00002965 -0.40482851 -0.11101781 -0.00000000 -0.00000000 -0.00000000  0.00001239  0.00000000
                                0.00000000  0.00000144  0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000996  0.11100633 -0.40484805  0.00000000  0.00000000 -0.00000001  0.00002635 -0.00000000
                               -0.00000000 -0.00000040  0.00000011 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.00000000 -0.00000646  0.00000061  0.00000000 -0.00000000  0.00000000  0.00000068  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |1 1>+       0.00000078 -0.00000000 -0.00000125  0.01992294  0.00000099  0.00000041  0.02646423  0.00000218
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00007725  0.00000079  0.00000002 -0.00010292
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000067  0.00000006 -0.00000099  0.01992422  0.00000003 -0.00000218  0.02646299
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00005850  0.00007008  0.01964540  0.00000200  0.00000075  0.06700537  0.00000143  0.00000254
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.27087046 -0.00000608 -0.00000201  0.01995323  0.00000099 -0.00000156  0.06415151  0.00000528
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00000942 -0.45582402 -0.00000145  0.00000099 -0.01996585  0.00002258  0.00000528 -0.06416514
                                0.00000000  0.00000011  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00005631  0.00004289 -0.00000000  0.00000000 -0.00000000  0.00000864  0.00000026 -0.00000551
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00038652  0.00003660  0.01205742  0.00000076 -0.00000367 -0.10941684  0.00000172 -0.00001157
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00001456  0.00000000  0.00001779 -0.28399477 -0.00001408  0.00000730  0.46545313  0.00003829
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00000000  0.00000610  0.00000091 -0.00001408  0.28401542 -0.00000047  0.00003829 -0.46547534
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000202 -0.00009709 -0.00001398 -0.00000360  0.00016474
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000001  0.00000000  0.84117283  0.00005270 -0.00000271  0.00001433  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.01992309 -0.00000125  0.00000006 -0.02646414  0.00000042  0.00000003

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000104 -0.00000006  0.00000099 -0.01992464  0.00000002 -0.00000218  0.02646274

 15  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00007725  0.00000139  0.00000004  0.00010163

 16  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.10752662 -0.00000555  0.00000204 -0.02023603 -0.00000101  0.00000151 -0.06124670 -0.00000504

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00016836  0.00001361  0.01994230  0.00000203 -0.00000007  0.06415130  0.00000136 -0.00000007

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00006179 -0.00004289 -0.00000000 -0.00000283 -0.00000000  0.00000721  0.00001822 -0.00000392

 19  1     7    1  |1 0>        0.00000000  0.00000011  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000749  0.43850022  0.00000006 -0.00000099  0.01996200 -0.00000006  0.00000528 -0.06415712

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.62476650 -0.00000101 -0.00000069  0.01102175  0.00000055 -0.00000176 -0.11274420 -0.00000928

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.28399933  0.00001779 -0.00000293 -0.46545581  0.00000730 -0.00000285

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000000  0.00000000  0.00000001 -0.00009709 -0.00002437 -0.00000080 -0.00014194

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00001029 -0.00000293  0.00001408 -0.28401659  0.00000285  0.00003829 -0.46548049

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00001026 -0.00000000 -0.00005270  0.84117225  0.00004171 -0.00000000  0.00001331  0.00000000

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000218  0.00000006 -0.00000130

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000024 -0.00000000  0.00007601  0.01992528  0.00000099 -0.00010302 -0.02646230 -0.00000218

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.01992514  0.00007601  0.00000007  0.02646235 -0.00010302 -0.00000003

 28  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000835 -0.01141153  0.00000081 -0.00000003  0.00060141 -0.00000274  0.00001055 -0.12824978

 29  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00005630  0.00004324 -0.00000000  0.00000000 -0.00000002 -0.00000143 -0.00000007  0.00000654

 30  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00044469 -0.00000495 -0.01994270 -0.00000125  0.00000428  0.06414138 -0.00000101 -0.00000468

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.72438502  0.00000100 -0.00000125  0.01994671  0.00000099 -0.00000101 -0.06415118 -0.00000528

 32  1     8    1  |1 1>-       0.00000000  0.00000019 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000190  0.77447517 -0.00000371  0.00000114 -0.02301894  0.00001167  0.00000027 -0.00332533

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000202  0.00000000  0.00003835  0.00000441 -0.00002280

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000001 -0.28401532  0.00007930  0.00000092 -0.46548861  0.00016642  0.00000048

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000886 -0.00000000  0.00007929  0.28402060  0.00001408  0.00016642  0.46548676  0.00003829

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00001369  0.00000271 -0.00004171  0.84117103  0.00000000 -0.00000000  0.00000251

 37  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000175  0.00000000  0.00000000 -0.01034529  0.00000021  0.00006515
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000068  0.00000001 -0.00000000 -0.00000222 -0.00000000 -0.00000174 -0.01034374 -0.00015849
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000001  0.00000037 -0.00000001  0.00000003 -0.00000023 -0.00006526  0.00015853 -0.01034476
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00000001 -0.00000000  0.00000001 -0.00000002 -0.00000000  0.00005283 -0.00010325 -0.00000174
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001615  0.00000576  0.00007571
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000001  0.00000001 -0.35914796  0.00000953  0.00000122  0.00000326 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000004 -0.00001964  0.00000120 -0.00061600  0.35913699  0.00000000  0.00000000  0.00000092
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00002033 -0.00000003  0.00000954  0.35914788  0.00061599  0.00000000 -0.00000303  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000000  0.00000000 -0.00003384  0.00000000 -0.00000000  0.73516819 -0.00008813 -0.00000073
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00000632 -0.00000000 -0.00000000 -0.00003926  0.00000000  0.00008813  0.73516972 -0.00023164
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00000000  0.00000596 -0.00000000 -0.00000002 -0.00000580  0.00000076  0.00023165  0.73516020
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00003444  0.00000125 -0.00003673
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001537 -0.00000004  0.00000130
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51

  1  1     1    1  |1 1>+      -0.00000006 -0.00000001  0.00000000
                                0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.01134465 -0.02837323  0.02343500
                               -0.00000003  0.00000023  0.00000000

  3  1     3    1  |1 1>+       0.00004514 -0.00010985  0.00009086
                               -0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000484 -0.00000006 -0.00000000
                                0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00000014 -0.00000002 -0.00000000
                                0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000281 -0.00000040  0.00000000
                                0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.11914948  0.04764181 -0.00000340
                               -0.00000030 -0.00000039 -0.00000000

  8  1     8    1  |1 1>+       0.00000790  0.00000009  0.00000000
                               -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000240  0.00000342 -0.00000201
                                0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00008858  0.00016770 -0.00009672
                                0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.19953276  0.49905157 -0.28294264
                                0.00000050 -0.00000406 -0.00000004

 12  1    12    1  |1 1>+      -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000
                                0.00000191  0.00000002 -0.00000000

 14  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000
                               -0.00007212 -0.00009294 -0.00009086

 15  1     3    1  |1 0>        0.00000005  0.00000020 -0.00000000
                                0.01889934  0.02401168  0.02343489

 16  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00000397  0.00000325  0.00000000

 17  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00000463 -0.00000006  0.00000000

 18  1     6    1  |1 0>        0.00000025 -0.00000065  0.00000000
                                0.10082653 -0.07937733 -0.00000870

 19  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000
                               -0.00000281 -0.00000040 -0.00000000

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000
                                0.00001859 -0.00001442 -0.00000000

 21  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                                0.00003361  0.00000040  0.00000000

 22  1    10    1  |1 0>       -0.00000083 -0.00000343  0.00000004
                               -0.33241809 -0.42233550 -0.28294194

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000
                                0.00009326  0.00014147  0.00009672

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000

 25  1     1    1  |1 1>-       0.00000008 -0.00000004  0.00000000
                                0.03024558 -0.00436195 -0.02343447

 26  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000
                                0.00000006  0.00000001  0.00000000

 27  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                               -0.00000191 -0.00000002  0.00000000

 28  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                               -0.00000632 -0.00000570  0.00000000

 29  1     5    1  |1 1>-      -0.00000005 -0.00000103 -0.00000000
                               -0.01831359 -0.12699767  0.00000062

 30  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                               -0.00000463 -0.00000006  0.00000000

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                                0.00000013  0.00000002 -0.00000000

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                               -0.00000015 -0.00000004  0.00000000

 33  1     9    1  |1 1>-       0.00000133 -0.00000062  0.00000004
                                0.53195431 -0.07671628 -0.28292613

 34  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000
                                0.00003361  0.00000040 -0.00000000

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                               -0.00000477  0.00000042  0.00000201

 36  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000

 37  1     1    1  |0 0>       -0.00005531 -0.00000312 -0.00000000
                                0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00009903  0.00003002  0.00000000
                               -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00002651 -0.00007069  0.00000000
                               -0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00967607 -0.00365626 -0.00000024
                                0.00000002  0.00000003 -0.00000000

 41  1     5    1  |0 0>        0.00365535 -0.00967727  0.00000009
                               -0.00000001  0.00000008  0.00000000

 42  1     6    1  |0 0>        0.00000043 -0.00000009 -0.03082365
                               -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00003667  0.00000878  0.00000000
                                0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00000125 -0.00000019 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00003635  0.00000547  0.00000000
                               -0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.72268018  0.13503754  0.00000556
                               -0.00000181 -0.00000110  0.00000000

 50  1    14    1  |0 0>       -0.13504511  0.72267081 -0.00000151
                                0.00000034 -0.00000588 -0.00000000

 51  1    15    1  |0 0>       -0.00001206  0.00000159  0.87019678
                                0.00000000 -0.00000000  0.00000012



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   49.85%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        28.76%    0.00%    0.00%    0.00%    7.64%   31.78%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   49.85%    0.00%    0.00%    0.00%    0.01%   29.55%
  4  1     4    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.06%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.20%    0.05%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.18%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%   49.85%    0.00%    0.00%    0.00%    0.00%   29.55%    0.01%
 14  1     2    1  |1 0>          0.00%    0.00%   49.85%    0.00%    0.00%    0.00%    0.01%   29.55%
 15  1     3    1  |1 0>         28.76%    0.00%    0.00%    0.00%   39.24%    0.18%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.06%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.17%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-        28.76%    0.00%    0.00%    0.00%   12.25%   27.17%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%   49.85%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%   49.85%    0.00%    0.00%    0.00%    0.00%   29.55%    0.01%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.24%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.17%    0.08%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   40.48%    0.01%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   40.45%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   32.02%    8.47%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    8.47%   32.02%    0.00%    0.00%
 42  1     6    1  |0 0>         13.21%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%
 51  1    15    1  |0 0>          0.31%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+        29.56%    0.00%   20.34%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.37%   26.75%    4.40%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   20.34%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.06%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   21.52%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.02%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%   20.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%   20.34%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   17.45%    9.67%    4.40%    0.00%
 16  1     4    1  |1 0>          0.06%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   22.15%
 17  1     5    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.03%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.19%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    6.54%
 21  1     9    1  |1 0>          0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.02%    0.02%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.27%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   22.86%    4.25%    4.40%    0.00%
 26  1     2    1  |1 1>-        29.56%    0.00%   20.34%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%   20.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.04%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.06%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   21.51%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.05%    0.01%    0.02%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%   59.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>         40.45%    0.00%   59.11%    0.00%    0.01%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.03%    0.00%    0.00%   59.11%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.01%    0.00%   58.55%    0.56%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.56%   58.55%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   86.61%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.01%
 46  1    10    1  |0 0>          0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.02%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.01%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.01%    0.00%
  4  1     4    1  |1 1>+        20.86%    0.00%    0.00%    3.11%    0.00%    0.00%    0.00%    0.01%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    3.21%    0.00%    0.00%    9.01%
  6  1     6    1  |1 1>+         0.00%   21.51%    0.00%    0.00%    0.00%    3.21%    9.02%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         7.82%    0.00%    0.00%    1.17%    0.00%    0.00%    0.00%    0.02%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   25.34%    0.00%    0.00%    8.71%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   25.34%    8.72%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%   25.24%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         3.27%    0.00%    0.00%   25.63%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.01%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    3.30%    0.00%    0.00%    8.22%
 17  1     5    1  |1 0>         21.52%    0.00%    0.00%    3.21%    0.00%    0.00%    0.00%    0.01%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%   21.51%    0.00%    0.00%    0.00%    3.21%    9.02%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.98%    0.00%    0.00%   27.83%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%   25.34%    0.00%    0.00%    0.00%    0.01%
 22  1    10    1  |1 0>          0.00%    0.00%   25.24%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   25.33%    8.73%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%   25.63%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.01%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%   36.05%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-        21.51%    0.00%    0.00%    3.21%    0.00%    0.00%    0.00%    0.01%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    3.21%    0.00%    0.00%    9.01%
 32  1     8    1  |1 1>-         0.00%   28.67%    0.00%    0.00%    0.00%    4.28%    0.02%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%   25.24%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%   25.33%    0.00%    0.00%    0.00%    0.01%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   25.33%    0.00%    0.00%    8.72%
 36  1    12    1  |1 1>-         0.00%    3.27%    0.00%    0.00%    0.00%   25.63%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.16%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.16%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>         25.01%    0.00%    0.00%   12.89%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%   25.01%    0.00%    0.00%    0.00%   12.89%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   12.89%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   28.23%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   28.25%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   23.84%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.02%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%
  4  1     4    1  |1 1>+         9.83%    0.00%    0.00%    5.06%    0.00%    0.00%    7.82%    0.00%
  5  1     5    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    5.22%    0.00%    0.00%    7.16%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    5.22%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%   33.03%    3.04%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+        26.21%    0.00%    0.00%    1.90%    0.00%    0.00%   20.84%    0.00%
  9  1     9    1  |1 1>+         0.01%    0.00%    0.00%    0.00%   16.59%    0.00%    0.00%   19.57%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   16.59%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.98%   10.65%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.17%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.01%    0.00%    0.00%    0.06%    0.00%    0.00%    0.02%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.01%    0.00%    0.00%    0.00%    5.37%    0.00%    0.00%    6.53%
 17  1     5    1  |1 0>          9.01%    0.00%    0.00%    5.22%    0.00%    0.00%    7.16%    0.00%
 18  1     6    1  |1 0>          0.00%    1.86%   34.22%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    5.22%    0.00%    0.00%
 20  1     8    1  |1 0>          0.02%    0.00%    0.00%    0.00%    1.59%    0.00%    0.00%   22.12%
 21  1     9    1  |1 0>          8.71%    0.00%    0.00%   16.59%    0.00%    0.00%   19.57%    0.00%
 22  1    10    1  |1 0>          0.00%   11.04%    0.60%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   16.59%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.17%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.02%
 27  1     3    1  |1 1>-         0.01%    0.00%    0.00%    0.06%    0.00%    0.00%    0.02%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%   19.23%   16.85%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         9.01%    0.00%    0.00%    5.22%    0.00%    0.00%    7.17%    0.00%
 31  1     7    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    5.22%    0.00%    0.00%    7.16%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    6.95%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    5.43%    6.20%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         8.72%    0.00%    0.00%   16.59%    0.00%    0.00%   19.57%    0.00%
 35  1    11    1  |1 1>-         0.01%    0.00%    0.00%    0.00%   16.59%    0.00%    0.00%   19.57%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.17%    0.00%    0.00%
 37  1     1    1  |0 0>          0.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.23%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.15%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.02%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   49.13%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   49.13%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   49.13%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>         28.23%    0.00%    0.00%    0.00%    0.00%    0.00%   17.62%    0.00%
 47  1    11    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   17.62%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%   21.98%    6.27%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    6.27%   21.98%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   51.36%    0.00%    0.00%    1.36%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%   46.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         7.16%    0.00%    0.00%    0.00%    0.00%   32.56%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%   22.93%    5.72%    0.00%    0.00%    0.00%   33.34%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.39%    0.00%    0.00%   40.22%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+        19.57%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    5.21%   20.88%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%   52.76%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%   47.99%    0.00%    0.00%    5.35%
 18  1     6    1  |1 0>          0.00%   19.95%    8.71%    0.00%    0.00%    0.00%   33.34%    0.00%
 19  1     7    1  |1 0>          7.16%    0.00%    0.00%    0.00%    0.00%   34.11%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.38%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    7.93%   18.16%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>         19.57%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-        28.65%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.10%   28.55%    0.00%    0.00%    0.00%   33.33%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.26%    0.00%    0.00%   53.08%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.86%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%   26.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.23%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.18%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.04%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>         17.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%   16.39%    1.23%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    1.23%   16.39%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.07%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.07%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.04%    0.00%    0.00%    0.45%    0.00%    0.00%
  5  1     5    1  |1 1>+         7.34%    0.00%    0.00%    0.04%    0.00%    0.00%    0.41%    0.00%
  6  1     6    1  |1 1>+         0.00%   20.78%    0.00%    0.00%    0.04%    0.00%    0.00%    0.41%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    1.20%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    8.07%    0.00%    0.00%   21.66%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    8.07%    0.00%    0.00%   21.67%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%   70.76%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.07%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.07%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          1.16%    0.00%    0.00%    0.04%    0.00%    0.00%    0.38%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.41%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%   19.23%    0.00%    0.00%    0.04%    0.00%    0.00%    0.41%
 20  1     8    1  |1 0>         39.03%    0.00%    0.00%    0.01%    0.00%    0.00%    1.27%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    8.07%    0.00%    0.00%   21.66%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    8.07%    0.00%    0.00%   21.67%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%   70.76%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.07%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.04%    0.00%    0.00%    0.07%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    1.64%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.04%    0.00%    0.00%    0.41%    0.00%    0.00%
 31  1     7    1  |1 1>-        52.47%    0.00%    0.00%    0.04%    0.00%    0.00%    0.41%    0.00%
 32  1     8    1  |1 1>-         0.00%   59.98%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    8.07%    0.00%    0.00%   21.67%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    8.07%    0.00%    0.00%   21.67%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   70.76%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%   12.90%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   12.90%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%   12.90%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   54.05%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   54.05%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   54.05%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.01%    0.08%    0.05%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         1.42%    0.23%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         3.98%   24.91%    8.01%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.04%    0.06%    0.05%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          1.02%    0.63%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%
 22  1    10    1  |1 0>         11.05%   17.84%    8.01%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.09%    0.00%    0.05%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.03%    1.61%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-        28.30%    0.59%    8.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.01%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.01%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.10%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%
 49  1    13    1  |0 0>         52.23%    1.82%    0.00%
 50  1    14    1  |0 0>          1.82%   52.23%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   75.72%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     9806.69       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    172289.59 144658.94  12948.14  14663.41      9.57      1.41      7.70
 REAL TIME  *    175203.00 SEC
 DISK USED  *         9.66 GB (local),      155.64 GB (total)
 SF USED    *        51.93 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -192.479003601985

              CI              CI           MULTI         RHF-SCF
   -192.42599839   -192.43869256   -191.65950134   -191.86439724
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
