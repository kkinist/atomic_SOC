
 Working directory              : /wrk/irikura/molpro.rz3TVhAFMJ/
 Global scratch directory       : /wrk/irikura/molpro.rz3TVhAFMJ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.rz3TVhAFMJ/

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
 
 NTRIP=12
 NSING=9
 
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
  (32 PROC) 64 bit mpp version                                                           DATE: 27-Nov-24          TIME: 16:41:02  
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

     560.988 MB (compressed) written to integral file ( 13.7%)

     Node minimum: 59.507 MB, node maximum: 84.148 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   39102068.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   3  SEGMENT LENGTH:   15998580      RECORD LENGTH: 524288

 Memory used in sort:      16.56 MW

 SORT1 READ   511790813. AND WROTE     6708865. INTEGRALS IN     21 RECORDS. CPU TIME:     1.83 SEC, REAL TIME:     1.92 SEC
 SORT2 READ    53582235. AND WROTE   312900871. INTEGRALS IN   2104 RECORDS. CPU TIME:     0.70 SEC, REAL TIME:     0.78 SEC

 Node minimum:    39095432.  Node maximum:    39129437. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.10      8.91
 REAL TIME  *        10.27 SEC
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
   1     -140.99982922    -140.99982922     0.00D+00     0.17D+00     0     0       0.18      0.34    start
   2     -179.13724883     -38.13741961     0.12D+00     0.20D+00     1     0       0.20      0.54    diag2
   3     -187.65821793      -8.52096910     0.12D+00     0.69D-01     2     0       0.20      0.74    diag2
   4     -191.43589977      -3.77768184     0.56D-01     0.52D-01     3     0       0.19      0.93    diag2
   5     -191.76236040      -0.32646063     0.11D-01     0.20D-01     4     0       0.20      1.13    diag2
   6     -191.85259294      -0.09023254     0.35D-02     0.59D-02     5     0       0.19      1.32    diag2
   7     -191.86165799      -0.00906506     0.11D-02     0.19D-02     6     0       0.19      1.51    diag2
   8     -191.86377777      -0.00211978     0.51D-03     0.75D-03     7     0       0.20      1.71    fixocc
   9     -191.86430757      -0.00052980     0.17D-03     0.68D-03     8     0       0.19      1.90    diag2
  10     -191.86437455      -0.00006697     0.11D-03     0.20D-03     9     0       0.19      2.09    diag2/orth
  11     -191.86439091      -0.00001636     0.22D-04     0.95D-04     9     0       0.21      2.30    diag2
  12     -191.86439559      -0.00000469     0.11D-04     0.40D-04     9     0       0.19      2.49    diag2
  13     -191.86439698      -0.00000139     0.46D-05     0.33D-04     9     0       0.21      2.70    diag2
  14     -191.86439720      -0.00000022     0.18D-05     0.15D-04     9     0       0.19      2.89    diag2
  15     -191.86439723      -0.00000003     0.71D-06     0.54D-05     9     0       0.20      3.09    diag2
  16     -191.86439724      -0.00000001     0.30D-06     0.32D-05     9     0       0.19      3.28    diag2
  17     -191.86439724      -0.00000000     0.10D-06     0.35D-06     0     0       0.20      3.48    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864397240740
  RHF One-electron energy            -340.681776747350
  RHF Two-electron energy             148.817379506610
  RHF Kinetic energy                   62.712671790019
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059419918883

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94945     1  1  s    1.00000
    2.1     2.00000    -0.84962     1  1  d0  -0.51226    1  1  d2+  0.85799
    3.1     2.00000    -0.84962     1  1  d1+  0.99935
    4.1     2.00000    -0.84962     1  1  d2-  0.99921
    5.1     2.00000    -0.84962     1  1  d1-  0.99935
    6.1     2.00000    -0.84962     1  1  d0   0.85814    1  1  d2+  0.51212
    7.1     2.00000    -0.35280     1  1  s   -0.38141    1  5  s    0.52245    1  6  s    0.42682    1 11  s   -0.25488
    1.2     2.00000    -3.63192     1  1  px   1.00018
    2.2     2.00000    -3.63191     1  1  pz   1.00025
    3.2     2.00000    -3.63191     1  1  py   1.00018
    4.2     1.00000    -0.05163     1  5  py   0.35609    1  6  py   0.37649    1  7  py   0.25408
    5.2     1.00000    -0.05163     1  5  pz   0.35611    1  6  pz   0.37651    1  7  pz   0.25410
    6.2     1.00000    -0.05163     1  5  px   0.35609    1  6  px   0.37647    1  7  px   0.25412


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
 CPU TIMES  *        12.66      3.56      8.91
 REAL TIME  *        14.50 SEC
 DISK USED  *        36.95 MB (local),        1.38 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =         9.00000000                                  

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
 Number of states:             9
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.383D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.154D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.234D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.165D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.381D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 4 3 6 2 1 1 5 4   3 2 6 1 5 3 4 2 6 7  11 8141015 91312 1 2   6 4 3 510 91315 714
                                        81211 6 2 4 3 5 110   91315 7 8141211 5 4   3 6 2 110 91315 7 8  14121116282220211824
                                       261917232527 5 4 3 6   210 91315 714 81211   1 5 4 3 6 210 91315   714 81211 1 5 4 3 6
                                        2 1 5 4 3 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.128D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.165D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.112D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.116D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.217D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.125D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.112D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.183D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.125D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 2 3 1 2   3 1 710 9 4 8 5 6 3   2 1 5 6 4 810 9 7 7  10 9 8 4 6 5 3 2 120
                                       13181511171614211912   710 9 8 4 6 5 1 3 2  20131815111617142119  12 710 9 8 4 6 52013
                                       181511171621141912 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 511131815  20171621141912 1 3 2
                                        710 9 8 4 5 6 1 3 2   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762   0.04762   0.04762   0.04762
 Weight factors for state symmetry  2:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762
 
 Number of orbital rotations:  2021  ( 24 closed/active, 1113 closed/virtual, 0 active/active, 884 active/virtual )
 Total number of variables:    5990
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   18    0   -191.69204363    -191.72818770   -0.03614407    0.15987576 0.00145158 0.00000000  0.88E+00      2.13
   2    6   10    0   -191.72775416    -191.72954779   -0.00179363    0.10294231 0.00005542 0.00000000  0.11E+00      4.05
   3    5   10    0   -191.72955312    -191.72955318   -0.00000006    0.00055659 0.00000011 0.00000000  0.40E-03      5.81
   4    3    6    0   -191.72955318    -191.72955318    0.00000000    0.00000003 0.00000000 0.00000000  0.44E-07      7.35

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.37E-08)
                       Final energy:   -191.72955318
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.835571489786
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.87772632
 One electron energy                          -336.36499954
 Two electron energy                           144.52942805
 Virial ratio                                    4.05093048
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.835571489285
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.87772633
 One electron energy                          -336.36499957
 Two electron energy                           144.52942808
 Virial ratio                                    4.05093048
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.835571489163
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.87772634
 One electron energy                          -336.36499958
 Two electron energy                           144.52942809
 Virial ratio                                    4.05093048
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -191.670651208683
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41197353
 One electron energy                          -331.84232831
 Two electron energy                           140.17167710
 Virial ratio                                    4.07105577
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -191.670651208639
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41197353
 One electron energy                          -331.84232831
 Two electron energy                           140.17167710
 Virial ratio                                    4.07105577
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -191.670651208602
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41197353
 One electron energy                          -331.84232830
 Two electron energy                           140.17167709
 Virial ratio                                    4.07105577
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -191.670651208441
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41197352
 One electron energy                          -331.84232829
 Two electron energy                           140.17167708
 Virial ratio                                    4.07105577
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -191.670651208440
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41197352
 One electron energy                          -331.84232829
 Two electron energy                           140.17167708
 Virial ratio                                    4.07105577
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -191.665517221985
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.49469710
 One electron energy                          -332.25088110
 Two electron energy                           140.58536387
 Virial ratio                                    4.06690849
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -191.665517221980
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.49469710
 One electron energy                          -332.25088109
 Two electron energy                           140.58536387
 Virial ratio                                    4.06690849
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -191.665517221881
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.49469709
 One electron energy                          -332.25088108
 Two electron energy                           140.58536385
 Virial ratio                                    4.06690849
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -191.664118623329
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41182777
 One electron energy                          -331.84117366
 Two electron energy                           140.17705503
 Virial ratio                                    4.07095827
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.801455859598
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.83252097
 One electron energy                          -336.10926318
 Two electron energy                           144.30780732
 Virial ratio                                    4.05258253
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.801455859589
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.83252097
 One electron energy                          -336.10926318
 Two electron energy                           144.30780732
 Virial ratio                                    4.05258253
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.801455859012
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.83252098
 One electron energy                          -336.10926321
 Two electron energy                           144.30780735
 Virial ratio                                    4.05258253
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.801455858874
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.83252098
 One electron energy                          -336.10926321
 Two electron energy                           144.30780735
 Virial ratio                                    4.05258253
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.801455858721
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.83252098
 One electron energy                          -336.10926322
 Two electron energy                           144.30780736
 Virial ratio                                    4.05258253
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -191.767671332878
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.76469807
 One electron energy                          -335.68354365
 Two electron energy                           143.91587231
 Virial ratio                                    4.05534285
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -191.675008450851
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41206606
 One electron energy                          -331.84306246
 Two electron energy                           140.16805401
 Virial ratio                                    4.07112103
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -191.675008450822
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41206606
 One electron energy                          -331.84306246
 Two electron energy                           140.16805401
 Virial ratio                                    4.07112103
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -191.675008450708
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41206606
 One electron energy                          -331.84306245
 Two electron energy                           140.16805400
 Virial ratio                                    4.07112103
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.284110249843
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999999986
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000000003394
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999998928145
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.715883371356
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>    -0.000000000000
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.999999999898
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.701389687800
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.298610550833
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999999987
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     1.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999973
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000000020
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     2.685836303903
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000017
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.999999996779
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.000001189811
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     1.314171793678
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.000000000117
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.999999999986
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.332032047445
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000032
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999999999
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.667967656781
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.000000000015
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999999999998
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000027
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999980
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.030053446253
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.999999999997
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.999999999828
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     3.999999882044
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     3.969944834966
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.999999999985
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.000000000014
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.966578264755
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999999968
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000001
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.033421792386
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999999999998
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.000000000002
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 5 2 4 1 1 6 3   5 2 4 1 6 5 3 2 411  13101415 812 7 9 1 6   5 3 2 41113101415 8
                                       12 7 9 6 5 3 2 4 111  13101415 812 7 9 6 3   5 2 4 11113101514 8  12 7 927221620182419
                                       232617212528 6 3 5 2   4111013151412 8 7 9   1 6 2 3 5 411101314  1512 8 7 9 1 2 3 5 6
                                        4 1 2 5 3 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 1 3 2 2   3 1 5 9 7 810 6 4 2   3 1 5 9 7 810 6 4 5   9 7 810 6 4 2 3 112
                                       18201517141621131911   5 9 710 8 6 4 2 3 1  12201815171614211319  11 5 9 7 810 6 41220
                                       181517161421131911 5   9 7 810 6 4 2 3 1 5   9 710 8 6 412182015  17141621131911 2 3 1
                                        5 9 710 8 6 4 2 1 3   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.26979     1  1  s    0.99854
    2.1     2.00000    -1.17022     1  1  d1-  1.00137
    3.1     2.00000    -1.17022     1  1  d2-  1.00137
    4.1     2.00000    -1.17022     1  1  d2+  1.00137
    5.1     2.00000    -1.17022     1  1  d0   1.00137
    6.1     2.00000    -1.17022     1  1  d1+  1.00137
    7.1     1.97261    -0.63924     1  1  s   -0.40408    1  5  s    0.62307    1  6  s    0.43577    1 11  s   -0.26986
    1.2     2.00000    -3.95250     1  1  py   0.99973
    2.2     2.00000    -3.95250     1  1  pz   0.99973
    3.2     2.00000    -3.95250     1  1  px   0.99973
    4.2     0.48290    -0.10713     1  1  px  -0.26090    1  5  px   0.47921    1  6  px   0.38053
    5.2     0.48290    -0.10713     1  1  pz  -0.26090    1  5  pz   0.47921    1  6  pz   0.38053
    6.2     0.48290    -0.10713     1  1  py  -0.26090    1  5  py   0.47921    1  6  py   0.38053
    7.2     0.19290     0.02930     1  5  px  -0.26094    1 12  px   0.99166
    8.2     0.19290     0.02930     1  5  pz  -0.26094    1 12  pz   0.99166
    9.2     0.19290     0.02930     1  5  py  -0.26094    1 12  py   0.99166
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 0aa000      -0.00000002      0.00000001      0.99497976      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 aa0000      -0.00000518      0.99497976     -0.00000001     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2 a0a000       0.99497976      0.00000518      0.00000002     -0.00000000     -0.00000000      0.00000000      0.00000000
 2 0a00a0       0.00000000     -0.00000000     -0.00000000      0.80726342      0.00000397      0.00001960      0.00013882
 2 a00a00      -0.00000000     -0.00000000      0.00000000     -0.34280408     -0.00000205     -0.00000137     -0.00140441
 2 0a0a00       0.00000002     -0.00379725      0.00000000     -0.00001764     -0.00000107      0.70175184     -0.00000718
 2 0a000a      -0.00000000      0.00000000      0.00379725     -0.00000342      0.70175184      0.00000107      0.00000015
 2 00a0a0       0.00000000     -0.00000000     -0.00379725     -0.00000342      0.70175184      0.00000107      0.00000015
 2 a000a0      -0.00000002      0.00379725     -0.00000000     -0.00001764     -0.00000107      0.70175184     -0.00000718
 2 00aa00      -0.00379725     -0.00000002     -0.00000000     -0.00000406     -0.00000015      0.00000719      0.70175056
 2 a0000a       0.00379725      0.00000002      0.00000000     -0.00000406     -0.00000015      0.00000719      0.70175056
 2 00a00a       0.00000000     -0.00000000      0.00000000     -0.46445928     -0.00000192     -0.00001823      0.00126559
 2 0000aa       0.00000000     -0.00000000     -0.01668039      0.00000000     -0.00000000      0.00000000      0.00000000
 2 000aa0       0.00000009     -0.01668039      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 2 000a0a      -0.01668039     -0.00000009     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 0 a2a000      -0.08932750     -0.00000047     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0 aa2000       0.00000047     -0.08932750      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 0 2aa000       0.00000000     -0.00000000     -0.08932750     -0.00000000      0.00000000      0.00000000     -0.00000000
 0 2a00a0      -0.00000000      0.00000000     -0.00000000     -0.06681894     -0.00000033     -0.00000163     -0.00001076
 0 0a20a0      -0.00000000     -0.00000000      0.00000000     -0.06675265     -0.00000033     -0.00000162     -0.00001221
 0 a20a00      -0.00000000      0.00000000     -0.00000000      0.02801408      0.00000017      0.00000010      0.00011650
 0 a02a00       0.00000000     -0.00000000     -0.00000000      0.02870704      0.00000017      0.00000012      0.00011588
 0 0a2a00       0.00000001     -0.00132723      0.00000000      0.00000146      0.00000009     -0.05824790      0.00000060
 0 2a000a      -0.00000000      0.00000000      0.00132723      0.00000028     -0.05824790     -0.00000009     -0.00000001
 0 20a0a0       0.00000000     -0.00000000     -0.00132723      0.00000028     -0.05824790     -0.00000009     -0.00000001
 0 a020a0      -0.00000001      0.00132723     -0.00000000      0.00000146      0.00000009     -0.05824790      0.00000060
 0 02aa00      -0.00132723     -0.00000001     -0.00000000      0.00000034      0.00000001     -0.00000060     -0.05824779
 0 a2000a       0.00132723      0.00000001      0.00000000      0.00000034      0.00000001     -0.00000060     -0.05824779
 0 02a0a0      -0.00000000      0.00000000      0.01945652      0.00000028     -0.05786551     -0.00000009     -0.00000001
 0 a200a0       0.00000010     -0.01945652      0.00000000      0.00000145      0.00000009     -0.05786551      0.00000059
 0 0a200a       0.00000000     -0.00000000     -0.01945652      0.00000028     -0.05786551     -0.00000009     -0.00000001
 0 2a0a00      -0.00000010      0.01945652     -0.00000000      0.00000145      0.00000009     -0.05786551      0.00000059
 0 20aa00       0.01945652      0.00000010      0.00000000      0.00000033      0.00000001     -0.00000059     -0.05786541
 0 a0200a      -0.01945652     -0.00000010     -0.00000000      0.00000033      0.00000001     -0.00000059     -0.05786541
 0 02a00a      -0.00000000      0.00000000     -0.00000000      0.03811189      0.00000016      0.00000150     -0.00010512
 0 20a00a      -0.00000000      0.00000000      0.00000000      0.03873857      0.00000016      0.00000151     -0.00010428
 
 Energy:     -191.83557149   -191.83557149   -191.83557149   -191.67065121   -191.67065121   -191.67065121   -191.67065121

 State:              8               9              10              11              12
 2 0aa000      -0.00000000     -0.00925343     -0.00000000      0.00000000      0.00000000
 2 aa0000      -0.00000000      0.00000000     -0.00925343      0.00000004      0.00000000
 2 a0a000       0.00000000     -0.00000000     -0.00000004     -0.00925343     -0.00000000
 2 0a00a0      -0.07023753     -0.00000000     -0.00000000      0.00000000      0.57289890
 2 a00a00       0.73422810      0.00000000     -0.00000000      0.00000000      0.57289895
 2 0a0a00      -0.00000694      0.00000000     -0.69575150      0.00000272     -0.00000000
 2 0a000a       0.00000036      0.69575150      0.00000000     -0.00000000     -0.00000000
 2 00a0a0       0.00000036     -0.69575150     -0.00000000     -0.00000000     -0.00000000
 2 a000a0      -0.00000694     -0.00000000      0.69575151     -0.00000272      0.00000000
 2 00aa00       0.00134039      0.00000000     -0.00000272     -0.69575150      0.00000000
 2 a0000a       0.00134039      0.00000000      0.00000272      0.69575151     -0.00000000
 2 00a00a      -0.66399058     -0.00000000     -0.00000000     -0.00000000      0.57289894
 2 0000aa       0.00000000     -0.13152206     -0.00000000     -0.00000000      0.00000000
 2 000aa0      -0.00000000      0.00000000     -0.13152206      0.00000051     -0.00000000
 2 000a0a       0.00000000      0.00000000     -0.00000051     -0.13152206      0.00000000
 0 a2a000      -0.00000000      0.00000000      0.00000002      0.00444561     -0.00000000
 0 aa2000       0.00000000     -0.00000000      0.00444561     -0.00000002      0.00000000
 0 2aa000      -0.00000000      0.00444561      0.00000000     -0.00000000      0.00000000
 0 2a00a0       0.00542988      0.00000000      0.00000000     -0.00000000     -0.04783718
 0 0a20a0       0.00619178      0.00000000      0.00000000     -0.00000000     -0.04783718
 0 a20a00      -0.06090527     -0.00000000      0.00000000     -0.00000000     -0.04783718
 0 a02a00      -0.06058173     -0.00000000      0.00000000     -0.00000000     -0.04783718
 0 0a2a00       0.00000058     -0.00000000      0.05817793     -0.00000023      0.00000000
 0 2a000a      -0.00000003     -0.05817793     -0.00000000      0.00000000      0.00000000
 0 20a0a0      -0.00000003      0.05817793      0.00000000      0.00000000      0.00000000
 0 a020a0       0.00000058      0.00000000     -0.05817793      0.00000023     -0.00000000
 0 02aa00      -0.00011126     -0.00000000      0.00000023      0.05817793     -0.00000000
 0 a2000a      -0.00011126     -0.00000000     -0.00000023     -0.05817793      0.00000000
 0 02a0a0      -0.00000003      0.05629180      0.00000000      0.00000000      0.00000000
 0 a200a0       0.00000057      0.00000000     -0.05629180      0.00000022     -0.00000000
 0 0a200a      -0.00000003     -0.05629180     -0.00000000      0.00000000      0.00000000
 0 2a0a00       0.00000057     -0.00000000      0.05629180     -0.00000022      0.00000000
 0 20aa00      -0.00011053     -0.00000000      0.00000022      0.05629180     -0.00000000
 0 a0200a      -0.00011053     -0.00000000     -0.00000022     -0.05629180      0.00000000
 0 02a00a       0.05515185      0.00000000      0.00000000      0.00000000     -0.04783718
 0 20a00a       0.05471350      0.00000000      0.00000000      0.00000000     -0.04783718
 
 Energy:     -191.67065121   -191.66551722   -191.66551722   -191.66551722   -191.66411862
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 020000      -0.07403271     -0.00000094      0.00000014     -0.00000000      0.80652378      0.56117586      0.00000000
 2 200000       0.73548645     -0.00000046     -0.00000000      0.00000001     -0.33914769      0.56117584      0.00000000
 2 b0a000      -0.00000085     -0.70140651      0.00000200      0.00000004     -0.00000090      0.00000000     -0.00000000
 2 a0b000       0.00000085      0.70140651     -0.00000200     -0.00000004      0.00000090     -0.00000000      0.00000000
 2 ba0000       0.00000006     -0.00000200     -0.70140651     -0.00000003      0.00000013     -0.00000000      0.00000000
 2 ab0000      -0.00000006      0.00000200      0.70140651      0.00000003     -0.00000013      0.00000000     -0.00000000
 2 0ba000       0.00000001     -0.00000004      0.00000003     -0.70140651     -0.00000000     -0.00000000      0.00000000
 2 0ab000      -0.00000001      0.00000004     -0.00000003      0.70140651      0.00000000      0.00000000     -0.00000000
 2 002000      -0.66145373      0.00000140     -0.00000014     -0.00000001     -0.46737611      0.56117584      0.00000000
 2 00b0a0       0.00000000     -0.00000000      0.00000000     -0.03589885      0.00000000     -0.00000000      0.49625702
 2 00a0b0      -0.00000000      0.00000000     -0.00000000      0.03589885     -0.00000000      0.00000000     -0.49625702
 2 a000b0      -0.00000000      0.00000010      0.03589885      0.00000000     -0.00000001      0.00000000     -0.00000000
 2 b000a0       0.00000000     -0.00000010     -0.03589885     -0.00000000      0.00000001     -0.00000000      0.00000000
 2 00ba00      -0.00000004     -0.03589885      0.00000010      0.00000000     -0.00000005      0.00000000     -0.00000000
 2 00ab00       0.00000004      0.03589885     -0.00000010     -0.00000000      0.00000005     -0.00000000      0.00000000
 2 a0000b       0.00000004      0.03589885     -0.00000010     -0.00000000      0.00000005     -0.00000000      0.00000000
 2 b0000a      -0.00000004     -0.03589885      0.00000010      0.00000000     -0.00000005      0.00000000     -0.00000000
 2 0a0b00      -0.00000000      0.00000010      0.03589885      0.00000000     -0.00000001     -0.00000000      0.00000000
 2 0b0a00       0.00000000     -0.00000010     -0.03589885     -0.00000000      0.00000001      0.00000000     -0.00000000
 2 0b000a       0.00000000     -0.00000000      0.00000000     -0.03589885      0.00000000      0.00000000     -0.49625702
 2 0a000b      -0.00000000      0.00000000     -0.00000000      0.03589885     -0.00000000     -0.00000000      0.49625702
 0 022000       0.06586436     -0.00000004     -0.00000000      0.00000000     -0.03037139     -0.09802206     -0.00000000
 0 220000      -0.05923457      0.00000013     -0.00000001     -0.00000000     -0.04185451     -0.09802206     -0.00000000
 0 202000      -0.00662979     -0.00000008      0.00000001     -0.00000000      0.07222590     -0.09802206     -0.00000000
 0 a2b000      -0.00000008     -0.06281243      0.00000018      0.00000000     -0.00000008      0.00000000     -0.00000000
 0 b2a000       0.00000008      0.06281243     -0.00000018     -0.00000000      0.00000008     -0.00000000      0.00000000
 0 ab2000       0.00000001     -0.00000018     -0.06281243     -0.00000000      0.00000001     -0.00000000      0.00000000
 0 ba2000      -0.00000001      0.00000018      0.06281243      0.00000000     -0.00000001      0.00000000     -0.00000000
 0 2ab000       0.00000000     -0.00000000      0.00000000     -0.06281243      0.00000000      0.00000000      0.00000000
 0 2ba000      -0.00000000      0.00000000     -0.00000000      0.06281243     -0.00000000     -0.00000000     -0.00000000
 2 0a00b0      -0.00378909     -0.00000005      0.00000001     -0.00000000      0.04127888      0.06253366      0.00000000
 2 0b00a0       0.00378909      0.00000005     -0.00000001      0.00000000     -0.04127888     -0.06253366     -0.00000000
 2 00a00b      -0.03385402      0.00000007     -0.00000001     -0.00000000     -0.02392089      0.06253365      0.00000000
 2 00b00a       0.03385402     -0.00000007      0.00000001      0.00000000      0.02392089     -0.06253365     -0.00000000
 2 a00b00       0.03764310     -0.00000002     -0.00000000      0.00000000     -0.01735800      0.06253365      0.00000000
 2 b00a00      -0.03764310      0.00000002      0.00000000     -0.00000000      0.01735800     -0.06253365     -0.00000000
 
 Energy:     -191.80145586   -191.80145586   -191.80145586   -191.80145586   -191.80145586   -191.76767133   -191.67500845

 State:              8               9
 2 020000      -0.00000000      0.00000000
 2 200000      -0.00000000     -0.00000000
 2 b0a000       0.00000000     -0.00000000
 2 a0b000      -0.00000000      0.00000000
 2 ba0000      -0.00000000      0.00000000
 2 ab0000       0.00000000     -0.00000000
 2 0ba000      -0.00000000      0.00000000
 2 0ab000       0.00000000     -0.00000000
 2 002000      -0.00000000     -0.00000000
 2 00b0a0       0.00000000      0.00000000
 2 00a0b0      -0.00000000     -0.00000000
 2 a000b0       0.49625702      0.00000071
 2 b000a0      -0.49625702     -0.00000071
 2 00ba00      -0.00000071      0.49625702
 2 00ab00       0.00000071     -0.49625702
 2 a0000b      -0.00000071      0.49625702
 2 b0000a       0.00000071     -0.49625702
 2 0a0b00      -0.49625702     -0.00000071
 2 0b0a00       0.49625702      0.00000071
 2 0b000a      -0.00000000      0.00000000
 2 0a000b       0.00000000     -0.00000000
 0 022000       0.00000000     -0.00000000
 0 220000       0.00000000     -0.00000000
 0 202000       0.00000000      0.00000000
 0 a2b000       0.00000000     -0.00000000
 0 b2a000      -0.00000000      0.00000000
 0 ab2000      -0.00000000      0.00000000
 0 ba2000       0.00000000     -0.00000000
 0 2ab000      -0.00000000      0.00000000
 0 2ba000       0.00000000     -0.00000000
 2 0a00b0      -0.00000000     -0.00000000
 2 0b00a0       0.00000000      0.00000000
 2 00a00b       0.00000000      0.00000000
 2 00b00a      -0.00000000     -0.00000000
 2 a00b00      -0.00000000      0.00000000
 2 b00a00       0.00000000     -0.00000000
 
 Energy:     -191.67500845   -191.67500845
 


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
 CPU TIMES  *        20.38      7.72      3.56      8.91
 REAL TIME  *        23.38 SEC
 DISK USED  *        89.89 MB (local),        1.79 GB (total)
 SF USED    *       148.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8355715   2.0
    -191.8355715   2.0
    -191.8355715   2.0
    -191.6706512   6.0
    -191.6706512   6.0
    -191.6706512   6.0
    -191.6706512   6.0
    -191.6706512   6.0
    -191.6655172   2.0
    -191.6655172   2.0
    -191.6655172   2.0
    -191.6641186  -0.0
    -191.8014559   6.0
    -191.8014559   6.0
    -191.8014559   6.0
    -191.8014559   6.0
    -191.8014559   6.0
    -191.7676713  -0.0
    -191.6750085   2.0
    -191.6750085   2.0
    -191.6750085   2.0
                                                  


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
     1      -191.83557149
     2      -191.83557149
     3      -191.83557149
     4      -191.67065121
     5      -191.67065121
     6      -191.67065121
     7      -191.67065121
     8      -191.67065121
     9      -191.66551722
    10      -191.66551722
    11      -191.66551722
    12      -191.66411862

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1270D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 Number of blocks in overlap matrix:  1156   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2456
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:      11024685
 Number of doubly external configurations:      38078420
 Total number of contracted configurations:     49141511
 Total number of uncontracted configurations:  731368774

 Diagonal Coupling coefficients finished.               Storage:  25480930 words, CPU-Time:    101.29 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3839182 words, CPU-time:      5.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.83557149     0.00000000    -0.95876397  0.50D-01  0.12D+00   128.74
    1     2     2     1.00000000     0.00000000  -191.83557149    -0.00000000    -0.95904401  0.50D-01  0.12D+00   128.74
    1     3     3     1.00000000     0.00000000  -191.83557149     0.00000000    -0.95869235  0.50D-01  0.12D+00   128.74
    1     4     4     1.00000000     0.00000000  -191.67065121     0.00000000    -0.91813628  0.40D-01  0.10D+00   128.74
    1     5     5     1.00000000     0.00000000  -191.67065121     0.00000000    -0.91777731  0.40D-01  0.10D+00   128.74
    1     6     6     1.00000000     0.00000000  -191.67065121     0.00000000    -0.91782445  0.40D-01  0.10D+00   128.74
    1     7     7     1.00000000     0.00000000  -191.67065121    -0.00000000    -0.91777653  0.40D-01  0.10D+00   128.74
    1     8     8     1.00000000     0.00000000  -191.67065121    -0.00000000    -0.91811200  0.40D-01  0.10D+00   128.74
    1     9     9     1.00000000     0.00000000  -191.66551722    -0.00000000    -0.92366391  0.43D-01  0.11D+00   128.74
    1    10    10     1.00000000     0.00000000  -191.66551722     0.00000000    -0.92372762  0.43D-01  0.11D+00   128.74
    1    11    11     1.00000000     0.00000000  -191.66551722    -0.00000000    -0.92372444  0.43D-01  0.11D+00   128.74
    1    12    12     1.00000000     0.00000000  -191.66411862     0.00000000    -0.91899013  0.41D-01  0.11D+00   128.74
    2     1     1     1.10467795    -0.76313920  -192.59871069    -0.76313920    -0.02703669  0.45D-02  0.20D-02  4089.74
    2     2     2     1.10476599    -0.76304699  -192.59861848    -0.76304699    -0.02713368  0.45D-02  0.20D-02  4089.74
    2     3     3     1.10483324    -0.76298974  -192.59856123    -0.76298974    -0.02721539  0.46D-02  0.20D-02  4089.74
    2     4     4     1.09634445    -0.75319855  -192.42384976    -0.75319855    -0.02145363  0.29D-02  0.15D-02  4089.74
    2     5     5     1.09642553    -0.75318756  -192.42383877    -0.75318756    -0.02145860  0.28D-02  0.15D-02  4089.74
    2     6     6     1.09635907    -0.75318482  -192.42383603    -0.75318482    -0.02146536  0.29D-02  0.15D-02  4089.74
    2     7     7     1.09637575    -0.75316555  -192.42381676    -0.75316555    -0.02149091  0.29D-02  0.15D-02  4089.74
    2     8     8     1.09645668    -0.75315088  -192.42380209    -0.75315088    -0.02149878  0.29D-02  0.15D-02  4089.74
    2     9     9     1.09809148    -0.75368592  -192.41920315    -0.75368592    -0.02266705  0.36D-02  0.16D-02  4089.74
    2    10    10     1.09811897    -0.75367159  -192.41918881    -0.75367159    -0.02268050  0.36D-02  0.16D-02  4089.74
    2    11    11     1.09812007    -0.75365506  -192.41917228    -0.75365506    -0.02270352  0.36D-02  0.16D-02  4089.74
    2    12    12     1.09705511    -0.75329122  -192.41740985    -0.75329122    -0.02181050  0.31D-02  0.15D-02  4089.74
    3     1     1     1.09028466    -0.78848059  -192.62405208    -0.02534139    -0.00048800  0.75D-04  0.54D-04  8057.47
    3     2     2     1.09028743    -0.78847982  -192.62405131    -0.02543282    -0.00049051  0.75D-04  0.54D-04  8057.47
    3     3     3     1.09028264    -0.78847589  -192.62404738    -0.02548614    -0.00049224  0.76D-04  0.54D-04  8057.47
    3     4     4     1.08644066    -0.77328906  -192.44394027    -0.02009051    -0.00029718  0.35D-04  0.29D-04  8057.47
    3     5     5     1.08644010    -0.77328847  -192.44393968    -0.02010091    -0.00029803  0.35D-04  0.29D-04  8057.47
    3     6     6     1.08643932    -0.77328822  -192.44393943    -0.02010339    -0.00029791  0.35D-04  0.29D-04  8057.47
    3     7     7     1.08645952    -0.77328717  -192.44393838    -0.02012162    -0.00029980  0.35D-04  0.30D-04  8057.47
    3     8     8     1.08645612    -0.77328606  -192.44393727    -0.02013518    -0.00030055  0.35D-04  0.30D-04  8057.47
    3     9     9     1.08674601    -0.77493720  -192.44045442    -0.02125127    -0.00034296  0.50D-04  0.33D-04  8057.47
    3    10    10     1.08674562    -0.77493676  -192.44045398    -0.02126517    -0.00034371  0.50D-04  0.33D-04  8057.47
    3    11    11     1.08674876    -0.77493602  -192.44045324    -0.02128095    -0.00034394  0.50D-04  0.34D-04  8057.47
    3    12    12     1.08672068    -0.77373415  -192.43785277    -0.02044292    -0.00031131  0.39D-04  0.31D-04  8057.47
    4     1     1     1.08979354    -0.78899148  -192.62456297    -0.00051089    -0.00002254  0.34D-05  0.26D-05 12043.17
    4     2     2     1.08979139    -0.78899104  -192.62456253    -0.00051123    -0.00002283  0.33D-05  0.27D-05 12043.17
    4     3     3     1.08978896    -0.78899079  -192.62456228    -0.00051490    -0.00002304  0.33D-05  0.27D-05 12043.17
    4     4     4     1.08657572    -0.77359557  -192.44424678    -0.00030650    -0.00001134  0.22D-05  0.11D-05 12043.17
    4     5     5     1.08657338    -0.77359556  -192.44424677    -0.00030709    -0.00001157  0.23D-05  0.11D-05 12043.17
    4     6     6     1.08657540    -0.77359541  -192.44424662    -0.00030719    -0.00001141  0.22D-05  0.11D-05 12043.17
    4     7     7     1.08657340    -0.77359535  -192.44424656    -0.00030818    -0.00001162  0.23D-05  0.11D-05 12043.17
    4     8     8     1.08657639    -0.77359534  -192.44424655    -0.00030928    -0.00001135  0.22D-05  0.11D-05 12043.17
    4     9     9     1.08678012    -0.77529289  -192.44081012    -0.00035570    -0.00001445  0.30D-05  0.14D-05 12043.17
    4    10    10     1.08678018    -0.77529277  -192.44080999    -0.00035601    -0.00001446  0.30D-05  0.14D-05 12043.17
    4    11    11     1.08677915    -0.77529268  -192.44080990    -0.00035666    -0.00001455  0.30D-05  0.14D-05 12043.17
    4    12    12     1.08685960    -0.77405487  -192.43817350    -0.00032072    -0.00001223  0.24D-05  0.13D-05 12043.17
    5     1     1     1.08990431    -0.78901650  -192.62458798    -0.00002502    -0.00000091  0.63D-07  0.12D-06 16013.14
    5     2     2     1.08990450    -0.78901645  -192.62458794    -0.00002541    -0.00000094  0.64D-07  0.12D-06 16013.14
    5     3     3     1.08990396    -0.78901644  -192.62458793    -0.00002565    -0.00000095  0.64D-07  0.13D-06 16013.14
    5     4     4     1.08668561    -0.77360861  -192.44425981    -0.00001304    -0.00000043  0.37D-07  0.60D-07 16013.14
    5     5     5     1.08668574    -0.77360846  -192.44425966    -0.00001289    -0.00000044  0.37D-07  0.61D-07 16013.14
    5     6     6     1.08668546    -0.77360839  -192.44425960    -0.00001298    -0.00000042  0.37D-07  0.58D-07 16013.14
    5     7     7     1.08668554    -0.77360832  -192.44425952    -0.00001297    -0.00000043  0.37D-07  0.59D-07 16013.14
    5     8     8     1.08668557    -0.77360817  -192.44425938    -0.00001284    -0.00000043  0.37D-07  0.58D-07 16013.14
    5     9     9     1.08687308    -0.77530888  -192.44082610    -0.00001598    -0.00000061  0.70D-07  0.80D-07 16013.14
    5    10    10     1.08687292    -0.77530879  -192.44082601    -0.00001601    -0.00000062  0.70D-07  0.81D-07 16013.14
    5    11    11     1.08687312    -0.77530878  -192.44082600    -0.00001610    -0.00000062  0.70D-07  0.80D-07 16013.14
    5    12    12     1.08698784    -0.77406872  -192.43818734    -0.00001385    -0.00000048  0.40D-07  0.75D-07 16013.14
    6     1     1     1.08990971    -0.78901750  -192.62458899    -0.00000101    -0.00000005  0.47D-08  0.63D-08 19988.71
    6     2     2     1.08990966    -0.78901750  -192.62458899    -0.00000104    -0.00000005  0.50D-08  0.66D-08 19988.71
    6     3     3     1.08990958    -0.78901750  -192.62458899    -0.00000106    -0.00000005  0.51D-08  0.67D-08 19988.71
    6     4     4     1.08670032    -0.77360909  -192.44426030    -0.00000048    -0.00000002  0.17D-08  0.32D-08 19988.71
    6     5     5     1.08670030    -0.77360894  -192.44426015    -0.00000049    -0.00000002  0.18D-08  0.32D-08 19988.71
    6     6     6     1.08670065    -0.77360887  -192.44426007    -0.00000047    -0.00000002  0.18D-08  0.32D-08 19988.71
    6     7     7     1.08670063    -0.77360880  -192.44426001    -0.00000048    -0.00000002  0.18D-08  0.32D-08 19988.71
    6     8     8     1.08670053    -0.77360865  -192.44425986    -0.00000048    -0.00000002  0.18D-08  0.32D-08 19988.71
    6     9     9     1.08688454    -0.77530954  -192.44082676    -0.00000066    -0.00000003  0.35D-08  0.59D-08 19988.71
    6    10    10     1.08688442    -0.77530946  -192.44082668    -0.00000067    -0.00000004  0.36D-08  0.60D-08 19988.71
    6    11    11     1.08688449    -0.77530944  -192.44082667    -0.00000066    -0.00000003  0.35D-08  0.59D-08 19988.71
    6    12    12     1.08700541    -0.77406927  -192.43818789    -0.00000055    -0.00000002  0.21D-08  0.43D-08 19988.71
    7     1     1     1.08991578    -0.78901756  -192.62458904    -0.00000005    -0.00000000  0.21D-09  0.47D-09 21140.36
    7     2     2     1.08991582    -0.78901755  -192.62458904    -0.00000006    -0.00000000  0.24D-09  0.51D-09 21140.36
    7     3     3     1.08991580    -0.78901755  -192.62458904    -0.00000006    -0.00000000  0.23D-09  0.50D-09 21140.36
    7     4     4     1.08670032    -0.77360909  -192.44426030    -0.00000000    -0.00000002  0.17D-08  0.32D-08 21140.36
    7     5     5     1.08670030    -0.77360894  -192.44426015    -0.00000000    -0.00000002  0.18D-08  0.32D-08 21140.36
    7     6     6     1.08670065    -0.77360887  -192.44426007    -0.00000000    -0.00000002  0.18D-08  0.32D-08 21140.36
    7     7     7     1.08670063    -0.77360880  -192.44426001    -0.00000000    -0.00000002  0.18D-08  0.32D-08 21140.36
    7     8     8     1.08670053    -0.77360865  -192.44425986    -0.00000000    -0.00000002  0.18D-08  0.32D-08 21140.36
    7     9     9     1.08688472    -0.77530954  -192.44082676    -0.00000000    -0.00000003  0.34D-08  0.57D-08 21140.36
    7    10    10     1.08688463    -0.77530946  -192.44082668    -0.00000000    -0.00000003  0.35D-08  0.58D-08 21140.36
    7    11    11     1.08688469    -0.77530945  -192.44082667    -0.00000000    -0.00000003  0.34D-08  0.57D-08 21140.36
    7    12    12     1.08700541    -0.77406927  -192.43818789    -0.00000000    -0.00000002  0.21D-08  0.43D-08 21140.36


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%  21.5%
 P   0.2%  24.9%  42.4%

 Initialization:   0.5%
 Other:           10.1%

 Total CPU:    21140.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0/000           0.0153502   0.9530207   0.0164668   0.0000000  -0.0000000  -0.0000000   0.0000001   0.0000000
                           -0.0010244  -0.0316267   0.0060419   0.0000000
 2222222222//0000           0.9529047  -0.0157271   0.0219219  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                           -0.0321928   0.0011213   0.0004116   0.0000000
 22222222220//000          -0.0221875  -0.0161072   0.9528922   0.0000000   0.0000000   0.0000000   0.0000000   0.0000001
                            0.0006144   0.0060247   0.0316406   0.0000000
 222222222200/00/          -0.0000000  -0.0000000  -0.0000000  -0.1146483   0.7696224  -0.0074350   0.0043593  -0.0008368
                           -0.0000000  -0.0000003  -0.0000004   0.5501125
 2222222222/00/00          -0.0000000   0.0000000   0.0000000   0.7238844  -0.2855517   0.0020109  -0.0013522   0.0015051
                           -0.0000000   0.0000002  -0.0000007   0.5500956
 22222222220/000/           0.0005617   0.0004078  -0.0241239  -0.0011772   0.0006013   0.0023169  -0.0037823   0.6739024
                            0.0127230   0.1247576   0.6552033   0.0000004
 222222222200/0/0          -0.0005617  -0.0004078   0.0241239  -0.0011776   0.0006011   0.0023166  -0.0037827   0.6738999
                           -0.0127234  -0.1247579  -0.6552056  -0.0000006
 2222222222/0000/          -0.0003886  -0.0241272  -0.0004169  -0.0002692  -0.0038560  -0.0002780   0.6738983   0.0037865
                           -0.0212117  -0.6549135   0.1251140   0.0000001
 222222222200//00           0.0003886   0.0241272   0.0004169  -0.0002695  -0.0038556  -0.0002778   0.6738921   0.0037863
                            0.0212123   0.6549195  -0.1251157   0.0000001
 22222222220/0/00           0.0241242  -0.0003982   0.0005550   0.0007439   0.0066168   0.6738810   0.0003289  -0.0023193
                            0.6666379  -0.0232202  -0.0085240  -0.0000004
 2222222222/000/0          -0.0241242   0.0003982  -0.0005550   0.0007432   0.0066163   0.6738789   0.0003293  -0.0023196
                           -0.6666400   0.0232200   0.0085238   0.0000001
 22222222220/00/0          -0.0000000  -0.0000000  -0.0000000  -0.6092386  -0.4840992   0.0054247  -0.0030075  -0.0006680
                            0.0000007  -0.0000000  -0.0000002   0.5500902
 2222222222000//0          -0.0108406   0.0001789  -0.0002494   0.0000001   0.0000000   0.0000003  -0.0000000   0.0000000
                            0.1321385  -0.0046026  -0.0016896  -0.0000001
 22222222220000//           0.0002524   0.0001832  -0.0108405  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                           -0.0025219  -0.0247291  -0.1298727  -0.0000001
 2222222222000/0/          -0.0001746  -0.0108420  -0.0001873  -0.0000000   0.0000000   0.0000000   0.0000001  -0.0000000
                            0.0042045   0.1298155  -0.0247999  -0.0000000
 2222220222/2/000          -0.0012071  -0.0749405  -0.0012949   0.0000000  -0.0000000  -0.0000000  -0.0000006  -0.0000000
                           -0.0000228  -0.0007032   0.0001343   0.0000000
 2222220222//2000          -0.0749313   0.0012367  -0.0017238  -0.0000000  -0.0000000  -0.0000002   0.0000000   0.0000000
                           -0.0007158   0.0000249   0.0000091  -0.0000000
 22222202222//000           0.0017447   0.0012666  -0.0749304  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000001
                            0.0000137   0.0001339   0.0007034  -0.0000000
 222222022220/00/          -0.0000000   0.0000000  -0.0000000   0.0078740  -0.0555104   0.0005367  -0.0003147   0.0000597
                            0.0000000   0.0000000  -0.0000000  -0.0400950
 222222022202/00/          -0.0000000   0.0000000  -0.0000000   0.0086462  -0.0553937   0.0005347  -0.0003136   0.0000609
                            0.0000000   0.0000000   0.0000000  -0.0400955
 2222220222/02/00          -0.0000000   0.0000000   0.0000000  -0.0522975   0.0202073  -0.0001411   0.0000952  -0.0001084
                            0.0000000  -0.0000000   0.0000000  -0.0400928
 2222220222/20/00          -0.0000000  -0.0000000  -0.0000000  -0.0520105   0.0209370  -0.0001485   0.0000995  -0.0001085
                            0.0000000  -0.0000000   0.0000000  -0.0400925

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.015403    0.956155   -0.022263    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000933    0.040074
             0.000646   -0.000000
 2           0.956271   -0.015781   -0.016162   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000677   -0.000661
             0.040079   -0.000000
 3           0.016523    0.021997    0.956142   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.040074    0.000922
             0.000693   -0.000000
 4           0.000000   -0.000000    0.000000   -0.695651   -0.001675    0.001058   -0.000383    0.659340    0.000000    0.000000
            -0.000000   -0.000001
 5          -0.000000   -0.000000    0.000000   -0.659291    0.000855    0.009410   -0.005484   -0.695615    0.000000    0.000000
             0.000000   -0.000016
 6          -0.000000   -0.000000    0.000000    0.007241    0.003295    0.958417   -0.000395    0.006110    0.000000    0.000002
             0.000000    0.000000
 7           0.000000    0.000000    0.000000   -0.004044   -0.005380    0.000468    0.958438   -0.003724    0.000000   -0.000000
            -0.000004   -0.000000
 8           0.000000   -0.000000    0.000000   -0.000675    0.958447   -0.003299    0.005385    0.001731    0.000002    0.000000
            -0.000000    0.000000
 9          -0.001307   -0.041071    0.000784    0.000001   -0.000000   -0.000001    0.000000   -0.000000    0.018262    0.956858
             0.030447    0.000000
 10         -0.040349    0.001431    0.007686    0.000000   -0.000000   -0.000000    0.000004    0.000000    0.179071   -0.033329
             0.940033   -0.000000
 11          0.007708    0.000525    0.040367    0.000000   -0.000002   -0.000000   -0.000001   -0.000000    0.940446   -0.012235
            -0.179583   -0.000001
 12          0.000000    0.000000    0.000000   -0.000012   -0.000000   -0.000000    0.000000   -0.000011    0.000001   -0.000000
            -0.000000    0.958333

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957377   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000483    0.000007
            -0.000003    0.000000
 2          -0.000000    0.957377   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000008   -0.000476
             0.000083    0.000000
 3           0.000000   -0.000000    0.957377    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000002    0.000083
             0.000476    0.000000
 4          -0.000000    0.000000    0.000000    0.958469    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.958469   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958469   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.958469    0.000000    0.000000    0.000000
            -0.000000    0.000000
 8          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.958469    0.000000    0.000000
             0.000000   -0.000000
 9          -0.000483   -0.000008   -0.000002   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.958398   -0.000000
            -0.000000   -0.000000
 10          0.000007   -0.000476    0.000083    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.958398
            -0.000000    0.000000
 11         -0.000003    0.000083    0.000476   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.958398    0.000000
 12          0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.958333


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95615459 (fixed)   0.95745306 (relaxed)   0.95737739 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101532   -0.00196262   -0.67055540
 Singles      0.01593528   -0.05822770   -0.06489151
 Pairs        0.07407180    0.00000000   -0.05357064
 Total        1.09102240   -0.06019032   -0.78901756
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83526607
 Nuclear energy                         0.00000000
 Kinetic energy                        63.26117705
 One electron energy                 -335.73022713
 Two electron energy                  143.10563808
 Virial quotient                       -3.04490998
 Correlation energy                    -0.78932297
 !MRCI STATE 1.1 Energy              -192.624589044896

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69643511 (Davidson, fixed reference)
 Cluster corrected energies          -192.69629900 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69643511 (Davidson, rotated reference)

 Cluster corrected energies          -192.69426843 (Pople, fixed reference)
 Cluster corrected energies          -192.69412631 (Pople, relaxed reference)
 Cluster corrected energies          -192.69426843 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95627099 (fixed)   0.95745304 (relaxed)   0.95737737 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101532   -0.00196262   -0.67055518
 Singles      0.01593540   -0.05822791   -0.06489162
 Pairs        0.07407172    0.00000000   -0.05357075
 Total        1.09102244   -0.06019053   -0.78901755
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83526607
 Nuclear energy                         0.00000000
 Kinetic energy                        63.26117815
 One electron energy                 -335.73022737
 Two electron energy                  143.10563832
 Virial quotient                       -3.04490992
 Correlation energy                    -0.78932297
 !MRCI STATE 2.1 Energy              -192.624589043687

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69643515 (Davidson, fixed reference)
 Cluster corrected energies          -192.69629903 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69643515 (Davidson, rotated reference)

 Cluster corrected energies          -192.69426846 (Pople, fixed reference)
 Cluster corrected energies          -192.69412635 (Pople, relaxed reference)
 Cluster corrected energies          -192.69426846 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95614204 (fixed)   0.95745305 (relaxed)   0.95737738 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101532   -0.00196262   -0.67055527
 Singles      0.01593534   -0.05822784   -0.06489157
 Pairs        0.07407175    0.00000000   -0.05357071
 Total        1.09102241   -0.06019045   -0.78901755
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83526607
 Nuclear energy                         0.00000000
 Kinetic energy                        63.26117849
 One electron energy                 -335.73022750
 Two electron energy                  143.10563846
 Virial quotient                       -3.04490991
 Correlation energy                    -0.78932297
 !MRCI STATE 3.1 Energy              -192.624589042734

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69643512 (Davidson, fixed reference)
 Cluster corrected energies          -192.69629901 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69643512 (Davidson, rotated reference)

 Cluster corrected energies          -192.69426844 (Pople, fixed reference)
 Cluster corrected energies          -192.69412632 (Pople, relaxed reference)
 Cluster corrected energies          -192.69426844 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.69565053 (fixed)   0.95858798 (relaxed)   0.95846941 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00169081   -0.00332062   -0.65534292
 Singles      0.01701849   -0.06155263   -0.06864615
 Pairs        0.06982843    0.00000101   -0.04962002
 Total        1.08853772   -0.06487224   -0.77360909
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67065121
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00979929
 One electron energy                 -331.61359405
 Two electron energy                  139.16933375
 Virial quotient                       -3.05419574
 Correlation energy                    -0.77360909
 !MRCI STATE 4.1 Energy              -192.444260296783

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51275388 (Davidson, fixed reference)
 Cluster corrected energies          -192.51254557 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51275388 (Davidson, rotated reference)

 Cluster corrected energies          -192.51054951 (Pople, fixed reference)
 Cluster corrected energies          -192.51033294 (Pople, relaxed reference)
 Cluster corrected energies          -192.51054951 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.69561450 (fixed)   0.95858799 (relaxed)   0.95846943 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00169079   -0.00332061   -0.65535317
 Singles      0.01701847   -0.06155250   -0.06864601
 Pairs        0.06982843    0.00001217   -0.04960976
 Total        1.08853768   -0.06486094   -0.77360894
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67065121
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00979916
 One electron energy                 -331.61359700
 Two electron energy                  139.16933685
 Virial quotient                       -3.05419574
 Correlation energy                    -0.77360894
 !MRCI STATE 5.1 Energy              -192.444260151675

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51275369 (Davidson, fixed reference)
 Cluster corrected energies          -192.51254540 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51275369 (Davidson, rotated reference)

 Cluster corrected energies          -192.51054932 (Pople, fixed reference)
 Cluster corrected energies          -192.51033276 (Pople, relaxed reference)
 Cluster corrected energies          -192.51054932 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95841672 (fixed)   0.95858784 (relaxed)   0.95846929 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00169077   -0.00332060   -0.65534130
 Singles      0.01701863   -0.06155270   -0.06864600
 Pairs        0.06982861   -0.00000024   -0.04962156
 Total        1.08853801   -0.06487354   -0.77360887
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67065121
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00982142
 One electron energy                 -331.61362242
 Two electron energy                  139.16936234
 Virial quotient                       -3.05419466
 Correlation energy                    -0.77360887
 !MRCI STATE 6.1 Energy              -192.444260074312

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51275386 (Davidson, fixed reference)
 Cluster corrected energies          -192.51254558 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51275386 (Davidson, rotated reference)

 Cluster corrected energies          -192.51054950 (Pople, fixed reference)
 Cluster corrected energies          -192.51033296 (Pople, relaxed reference)
 Cluster corrected energies          -192.51054950 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95843831 (fixed)   0.95858785 (relaxed)   0.95846928 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00169080   -0.00332060   -0.65534174
 Singles      0.01701861   -0.06155259   -0.06864591
 Pairs        0.06982861    0.00000017   -0.04962116
 Total        1.08853802   -0.06487302   -0.77360880
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67065121
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00982052
 One electron energy                 -331.61362552
 Two electron energy                  139.16936551
 Virial quotient                       -3.05419470
 Correlation energy                    -0.77360880
 !MRCI STATE 7.1 Energy              -192.444260005413

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51275379 (Davidson, fixed reference)
 Cluster corrected energies          -192.51254549 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51275379 (Davidson, rotated reference)

 Cluster corrected energies          -192.51054943 (Pople, fixed reference)
 Cluster corrected energies          -192.51033286 (Pople, relaxed reference)
 Cluster corrected energies          -192.51054943 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95844672 (fixed)   0.95858790 (relaxed)   0.95846933 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00169079   -0.00332059   -0.65534146
 Singles      0.01701852   -0.06155252   -0.06864578
 Pairs        0.06982860   -0.00000012   -0.04962142
 Total        1.08853791   -0.06487323   -0.77360865
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67065121
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00982013
 One electron energy                 -331.61362307
 Two electron energy                  139.16936321
 Virial quotient                       -3.05419472
 Correlation energy                    -0.77360865
 !MRCI STATE 8.1 Energy              -192.444259859161

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51275356 (Davidson, fixed reference)
 Cluster corrected energies          -192.51254525 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51275356 (Davidson, rotated reference)

 Cluster corrected energies          -192.51054919 (Pople, fixed reference)
 Cluster corrected energies          -192.51033262 (Pople, relaxed reference)
 Cluster corrected energies          -192.51054919 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95685844 (fixed)   0.95852987 (relaxed)   0.95839840 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00166929   -0.00322099   -0.65690540
 Singles      0.01695580   -0.06143122   -0.06850708
 Pairs        0.07007396   -0.00000026   -0.04989706
 Total        1.08869904   -0.06465246   -0.77530954
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66582264
 Nuclear energy                         0.00000000
 Kinetic energy                        63.03956875
 One electron energy                 -331.80273198
 Two electron energy                  139.36190522
 Virial quotient                       -3.05269897
 Correlation energy                    -0.77500412
 !MRCI STATE 9.1 Energy              -192.440826763615

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50956889 (Davidson, fixed reference)
 Cluster corrected energies          -192.50933746 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50956889 (Davidson, rotated reference)

 Cluster corrected energies          -192.50736555 (Pople, fixed reference)
 Cluster corrected energies          -192.50712487 (Pople, relaxed reference)
 Cluster corrected energies          -192.50736555 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.94003272 (fixed)   0.95852991 (relaxed)   0.95839844 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00166929   -0.00322099   -0.65690586
 Singles      0.01695576   -0.06143103   -0.06850691
 Pairs        0.07007391    0.00000008   -0.04989669
 Total        1.08869895   -0.06465194   -0.77530946
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66582264
 Nuclear energy                         0.00000000
 Kinetic energy                        63.03956843
 One electron energy                 -331.80273791
 Two electron energy                  139.36191123
 Virial quotient                       -3.05269899
 Correlation energy                    -0.77500404
 !MRCI STATE 10.1 Energy             -192.440826679691

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50956873 (Davidson, fixed reference)
 Cluster corrected energies          -192.50933730 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50956873 (Davidson, rotated reference)

 Cluster corrected energies          -192.50736538 (Pople, fixed reference)
 Cluster corrected energies          -192.50712471 (Pople, relaxed reference)
 Cluster corrected energies          -192.50736538 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.94044604 (fixed)   0.95852988 (relaxed)   0.95839841 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00166929   -0.00322099   -0.65690621
 Singles      0.01695575   -0.06143108   -0.06850690
 Pairs        0.07007398    0.00000056   -0.04989633
 Total        1.08869902   -0.06465151   -0.77530945
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66582264
 Nuclear energy                         0.00000000
 Kinetic energy                        63.03956904
 One electron energy                 -331.80273692
 Two electron energy                  139.36191026
 Virial quotient                       -3.05269896
 Correlation energy                    -0.77500403
 !MRCI STATE 11.1 Energy             -192.440826667341

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50956876 (Davidson, fixed reference)
 Cluster corrected energies          -192.50933733 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50956876 (Davidson, rotated reference)

 Cluster corrected energies          -192.50736542 (Pople, fixed reference)
 Cluster corrected energies          -192.50712475 (Pople, relaxed reference)
 Cluster corrected energies          -192.50736542 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95833311 (fixed)   0.95845009 (relaxed)   0.95833311 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00169454   -0.00332463   -0.00425800
 Singles      0.01703623   -0.06160512   -0.06869485
 Pairs        0.07011661   -0.70913952   -0.70111641
 Total        1.08884738   -0.77406927   -0.77406927
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66411862
 Nuclear energy                         0.00000000
 Kinetic energy                        63.01053395
 One electron energy                 -331.61133725
 Two electron energy                  139.17314936
 Virial quotient                       -3.05406375
 Correlation energy                    -0.77406927
 !MRCI STATE 12.1 Energy             -192.438187890751

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50696192 (Davidson, fixed reference)
 Cluster corrected energies          -192.50675620 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50696192 (Davidson, rotated reference)

 Cluster corrected energies          -192.50476586 (Pople, fixed reference)
 Cluster corrected energies          -192.50455187 (Pople, relaxed reference)
 Cluster corrected energies          -192.50476586 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     4525.32       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     23414.74  23394.35      7.72      3.56      8.91
 REAL TIME  *     23831.74 SEC
 DISK USED  *         4.50 GB (local),       37.12 GB (total)
 SF USED    *        43.59 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.69643511  AU                              
 SETTING HLSDIAG(2)     =      -192.69643515  AU                              
 SETTING HLSDIAG(3)     =      -192.69643512  AU                              
 SETTING HLSDIAG(4)     =      -192.51275388  AU                              
 SETTING HLSDIAG(5)     =      -192.51275369  AU                              
 SETTING HLSDIAG(6)     =      -192.51275386  AU                              
 SETTING HLSDIAG(7)     =      -192.51275379  AU                              
 SETTING HLSDIAG(8)     =      -192.51275356  AU                              
 SETTING HLSDIAG(9)     =      -192.50956889  AU                              
 SETTING HLSDIAG(10)    =      -192.50956873  AU                              
 SETTING HLSDIAG(11)    =      -192.50956876  AU                              
 SETTING HLSDIAG(12)    =      -192.50696192  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

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
     1      -191.80145586
     2      -191.80145586
     3      -191.80145586
     4      -191.80145586
     5      -191.80145586
     6      -191.76767133
     7      -191.67500845
     8      -191.67500845
     9      -191.67500845

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2380D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2137D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2704D-06

 Number of blocks in overlap matrix:   903   Smallest eigenvalue:  0.21D-06
 Number of N-2 electron functions:    1804
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       6415270
 Number of doubly external configurations:      27972607
 Total number of contracted configurations:     34412027
 Total number of uncontracted configurations:  427217996

 Diagonal Coupling coefficients finished.               Storage:  15938984 words, CPU-Time:     34.74 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3496749 words, CPU-time:      3.70 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.80145586    -0.00000000    -0.96413998  0.57D-01  0.12D+00    49.53
    1     2     2     1.00000000     0.00000000  -191.80145586    -0.00000000    -0.96516388  0.58D-01  0.12D+00    49.53
    1     3     3     1.00000000     0.00000000  -191.80145586    -0.00000000    -0.96539422  0.58D-01  0.12D+00    49.53
    1     4     4     1.00000000     0.00000000  -191.80145586     0.00000000    -0.96551869  0.58D-01  0.12D+00    49.53
    1     5     5     1.00000000     0.00000000  -191.80145586    -0.00000000    -0.96421211  0.57D-01  0.12D+00    49.53
    1     6     6     1.00000000     0.00000000  -191.76767133    -0.00000000    -0.94505961  0.37D-01  0.12D+00    49.53
    1     7     7     1.00000000     0.00000000  -191.67500845    -0.00000000    -0.91758466  0.39D-01  0.10D+00    49.53
    1     8     8     1.00000000     0.00000000  -191.67500845    -0.00000000    -0.91762415  0.39D-01  0.10D+00    49.53
    1     9     9     1.00000000     0.00000000  -191.67500845    -0.00000000    -0.91753702  0.39D-01  0.10D+00    49.53
    2     1     1     1.10858185    -0.76740760  -192.56886346    -0.76740760    -0.02797524  0.50D-02  0.20D-02  1426.54
    2     2     2     1.10859907    -0.76737392  -192.56882978    -0.76737392    -0.02801740  0.50D-02  0.20D-02  1426.54
    2     3     3     1.10906946    -0.76706867  -192.56852453    -0.76706867    -0.02831870  0.51D-02  0.20D-02  1426.54
    2     4     4     1.10915207    -0.76700346  -192.56845932    -0.76700346    -0.02839950  0.52D-02  0.20D-02  1426.54
    2     5     5     1.10923735    -0.76693584  -192.56839170    -0.76693584    -0.02847515  0.52D-02  0.20D-02  1426.54
    2     6     6     1.10177545    -0.76657858  -192.53424992    -0.76657858    -0.02412858  0.42D-02  0.18D-02  1426.54
    2     7     7     1.09591428    -0.75318004  -192.42818849    -0.75318004    -0.02110854  0.27D-02  0.15D-02  1426.54
    2     8     8     1.09591103    -0.75318003  -192.42818848    -0.75318003    -0.02110538  0.27D-02  0.15D-02  1426.54
    2     9     9     1.09593958    -0.75315764  -192.42816609    -0.75315764    -0.02113318  0.27D-02  0.15D-02  1426.54
    3     1     1     1.09337608    -0.79352715  -192.59498301    -0.02611955    -0.00056093  0.97D-04  0.64D-04  2798.20
    3     2     2     1.09338242    -0.79352217  -192.59497803    -0.02614825    -0.00056392  0.97D-04  0.65D-04  2798.20
    3     3     3     1.09343257    -0.79350956  -192.59496542    -0.02644089    -0.00057776  0.10D-03  0.68D-04  2798.20
    3     4     4     1.09342638    -0.79350907  -192.59496492    -0.02650561    -0.00057735  0.10D-03  0.68D-04  2798.20
    3     5     5     1.09343541    -0.79350691  -192.59496277    -0.02657107    -0.00058046  0.10D-03  0.68D-04  2798.20
    3     6     6     1.09137040    -0.78934778  -192.55701911    -0.02276920    -0.00046718  0.64D-04  0.65D-04  2798.20
    3     7     7     1.08622712    -0.77294261  -192.44795106    -0.01976257    -0.00028125  0.28D-04  0.28D-04  2798.20
    3     8     8     1.08622703    -0.77294209  -192.44795055    -0.01976207    -0.00028169  0.28D-04  0.29D-04  2798.20
    3     9     9     1.08622463    -0.77294195  -192.44795040    -0.01978430    -0.00028150  0.28D-04  0.29D-04  2798.20
    4     1     1     1.09276353    -0.79412323  -192.59557909    -0.00059609    -0.00003039  0.47D-05  0.40D-05  4174.40
    4     2     2     1.09276087    -0.79412273  -192.59557859    -0.00060056    -0.00003078  0.47D-05  0.41D-05  4174.40
    4     3     3     1.09275878    -0.79412239  -192.59557824    -0.00061283    -0.00003115  0.49D-05  0.42D-05  4174.40
    4     4     4     1.09275757    -0.79412219  -192.59557805    -0.00061313    -0.00003133  0.48D-05  0.42D-05  4174.40
    4     5     5     1.09275961    -0.79412219  -192.59557805    -0.00061528    -0.00003129  0.49D-05  0.42D-05  4174.40
    4     6     6     1.09154744    -0.78984568  -192.55751701    -0.00049790    -0.00002730  0.34D-05  0.45D-05  4174.40
    4     7     7     1.08634641    -0.77323204  -192.44824049    -0.00028943    -0.00001088  0.22D-05  0.11D-05  4174.40
    4     8     8     1.08634631    -0.77323194  -192.44824039    -0.00028984    -0.00001089  0.22D-05  0.11D-05  4174.40
    4     9     9     1.08634578    -0.77323188  -192.44824033    -0.00028993    -0.00001093  0.22D-05  0.11D-05  4174.40
    5     1     1     1.09285418    -0.79415802  -192.59561388    -0.00003479    -0.00000141  0.78D-07  0.26D-06  5555.38
    5     2     2     1.09285132    -0.79415788  -192.59561374    -0.00003515    -0.00000144  0.83D-07  0.26D-06  5555.38
    5     3     3     1.09285126    -0.79415786  -192.59561372    -0.00003548    -0.00000143  0.83D-07  0.26D-06  5555.38
    5     4     4     1.09285383    -0.79415786  -192.59561372    -0.00003566    -0.00000142  0.81D-07  0.26D-06  5555.38
    5     5     5     1.09285089    -0.79415781  -192.59561367    -0.00003562    -0.00000144  0.86D-07  0.27D-06  5555.38
    5     6     6     1.09189884    -0.78987722  -192.55754855    -0.00003154    -0.00000152  0.75D-07  0.31D-06  5555.38
    5     7     7     1.08644270    -0.77324450  -192.44825295    -0.00001246    -0.00000048  0.37D-07  0.80D-07  5555.38
    5     8     8     1.08644259    -0.77324442  -192.44825287    -0.00001248    -0.00000048  0.37D-07  0.80D-07  5555.38
    5     9     9     1.08644256    -0.77324441  -192.44825287    -0.00001254    -0.00000048  0.37D-07  0.80D-07  5555.38
    6     1     1     1.09286678    -0.79415965  -192.59561551    -0.00000163    -0.00000011  0.91D-08  0.24D-07  6935.83
    6     2     2     1.09286612    -0.79415953  -192.59561539    -0.00000165    -0.00000011  0.97D-08  0.24D-07  6935.83
    6     3     3     1.09286612    -0.79415951  -192.59561537    -0.00000164    -0.00000011  0.96D-08  0.24D-07  6935.83
    6     4     4     1.09286665    -0.79415949  -192.59561535    -0.00000163    -0.00000011  0.92D-08  0.24D-07  6935.83
    6     5     5     1.09286597    -0.79415947  -192.59561533    -0.00000166    -0.00000012  0.98D-08  0.25D-07  6935.83
    6     6     6     1.09194001    -0.78987906  -192.55755040    -0.00000184    -0.00000014  0.13D-07  0.27D-07  6935.83
    6     7     7     1.08645603    -0.77324507  -192.44825352    -0.00000057    -0.00000003  0.27D-08  0.70D-08  6935.83
    6     8     8     1.08645594    -0.77324499  -192.44825344    -0.00000057    -0.00000003  0.27D-08  0.70D-08  6935.83
    6     9     9     1.08645593    -0.77324498  -192.44825344    -0.00000057    -0.00000003  0.27D-08  0.70D-08  6935.83
    7     1     1     1.09288212    -0.79415979  -192.59561565    -0.00000014    -0.00000001  0.11D-08  0.22D-08  7890.62
    7     2     2     1.09288199    -0.79415968  -192.59561554    -0.00000014    -0.00000001  0.11D-08  0.23D-08  7890.62
    7     3     3     1.09288198    -0.79415965  -192.59561551    -0.00000014    -0.00000001  0.11D-08  0.22D-08  7890.62
    7     4     4     1.09288188    -0.79415963  -192.59561549    -0.00000014    -0.00000001  0.11D-08  0.22D-08  7890.62
    7     5     5     1.09288194    -0.79415961  -192.59561547    -0.00000014    -0.00000001  0.11D-08  0.23D-08  7890.62
    7     6     6     1.09195800    -0.78987924  -192.55755057    -0.00000017    -0.00000002  0.15D-08  0.25D-08  7890.62
    7     7     7     1.08645602    -0.77324507  -192.44825352    -0.00000000    -0.00000003  0.27D-08  0.70D-08  7890.62
    7     8     8     1.08645594    -0.77324499  -192.44825344    -0.00000000    -0.00000003  0.27D-08  0.70D-08  7890.62
    7     9     9     1.08645593    -0.77324498  -192.44825344    -0.00000000    -0.00000003  0.27D-08  0.70D-08  7890.62


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.2%  25.9%
 P   0.3%  23.6%  33.4%

 Initialization:   0.5%
 Other:           15.8%

 Total CPU:     7890.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\000          -0.0000000  -0.0000350   0.0018083  -0.0001467   0.9504120  -0.0000000   0.0000001  -0.0000000
                            0.0000000
 2222222222/\0000          -0.0000552   0.0000001   0.9504120  -0.0001071  -0.0018083  -0.0000000   0.0000000   0.0000000
                           -0.0000000
 2222222222/0\000           0.0011338   0.9504108  -0.0000002  -0.0020664   0.0000347  -0.0000000   0.0000000   0.0000000
                           -0.0000000
 2222222222002000          -0.0749648   0.0017688   0.0000829   0.7723783   0.0001192   0.5397989  -0.0000000   0.0000000
                            0.0000000
 2222222222200000           0.7063831  -0.0015412   0.0000047  -0.3212657  -0.0000496   0.5397989  -0.0000000  -0.0000000
                            0.0000000
 222222222200/\00           0.0000462   0.0387351  -0.0000000  -0.0000842   0.0000014  -0.0000000   0.0000801   0.6740505
                           -0.0000000
 222222222200/0\0          -0.0000000  -0.0000014   0.0000737  -0.0000060   0.0387348   0.0000000   0.6740504  -0.0000801
                            0.0005261
 22222222220/0\00          -0.0000022   0.0000000   0.0387350  -0.0000044  -0.0000737   0.0000000  -0.0005261   0.0000001
                            0.6740502
 2222222222/0000\           0.0000462   0.0387351  -0.0000000  -0.0000842   0.0000014  -0.0000000  -0.0000801  -0.6740500
                            0.0000000
 2222222222/000\0          -0.0000022   0.0000000   0.0387349  -0.0000044  -0.0000737   0.0000000   0.0005261  -0.0000001
                           -0.6740499
 22222222220/000\          -0.0000000  -0.0000014   0.0000737  -0.0000060   0.0387350   0.0000000  -0.6740497   0.0000801
                           -0.0005261
 2222222222020000          -0.6314175  -0.0002276  -0.0000876  -0.4511122  -0.0000695   0.5397995  -0.0000000   0.0000000
                            0.0000000
 2222220222022000           0.0553600  -0.0001208   0.0000004  -0.0251781  -0.0000039  -0.0828193   0.0000000  -0.0000000
                           -0.0000000
 2222220222220000          -0.0058751   0.0001386   0.0000065   0.0605321   0.0000093  -0.0828192   0.0000000   0.0000000
                            0.0000000
 2222220222202000          -0.0494850  -0.0000178  -0.0000069  -0.0353543  -0.0000054  -0.0828192  -0.0000000   0.0000000
                            0.0000000
 222222222200/00\          -0.0043208   0.0001019   0.0000048   0.0445182   0.0000069   0.0766333  -0.0000000   0.0000000
                           -0.0000000
 22222222220/00\0          -0.0363939  -0.0000131  -0.0000051  -0.0260011  -0.0000040   0.0766332  -0.0000000  -0.0000000
                           -0.0000000
 2222222222/00\00           0.0407149  -0.0000888   0.0000003  -0.0185169  -0.0000029   0.0766332   0.0000000  -0.0000000
                            0.0000000
 22222202222/\000           0.0000000   0.0000027  -0.0001417   0.0000115  -0.0744850  -0.0000000   0.0000001   0.0000000
                           -0.0000000
 2222220222/\2000           0.0000043  -0.0000000  -0.0744849   0.0000084   0.0001417   0.0000000   0.0000000   0.0000000
                           -0.0000001
 2222220222/2\000          -0.0000889  -0.0744848   0.0000000   0.0001619  -0.0000027   0.0000000  -0.0000000   0.0000001
                            0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.624409    0.001140   -0.000055   -0.000000   -0.723663    0.000000   -0.000000   -0.000000    0.000000
 2          -0.002318    0.955809    0.000000   -0.000035   -0.000494    0.000000   -0.000000    0.000000    0.000000
 3          -0.000046   -0.000000    0.955810    0.001819   -0.000113    0.000000   -0.000000    0.000000   -0.000000
 4          -0.723661   -0.002078   -0.000108   -0.000148   -0.624410    0.000000    0.000000    0.000000   -0.000000
 5          -0.000112    0.000035   -0.001819    0.955810   -0.000096    0.000000   -0.000000    0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956148    0.000000   -0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.958581   -0.000748    0.000114
 8          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000114    0.000000    0.958581
 9           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000748    0.958581   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955812   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.955812   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.955812   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.955812    0.000000    0.000000   -0.000000    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.955812    0.000000    0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.956148   -0.000000    0.000000    0.000000
 7          -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.958581    0.000000    0.000000
 8          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.958581    0.000000
 9           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.958581


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.72366330 (fixed)   0.95599881 (relaxed)   0.95581176 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157146   -0.00267680   -0.66991703
 Singles      0.01809876   -0.06211690   -0.06987481
 Pairs        0.07492932   -0.00000000   -0.05436795
 Total        1.09459954   -0.06479369   -0.79415979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80145586
 Nuclear energy                         0.00000000
 Kinetic energy                        63.22267682
 One electron energy                 -335.43089097
 Two electron energy                  142.83527532
 Virial quotient                       -3.04630594
 Correlation energy                    -0.79415979
 !MRCI STATE 1.1 Energy              -192.595615647180

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67074280 (Davidson, fixed reference)
 Cluster corrected energies          -192.67040267 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67074280 (Davidson, rotated reference)

 Cluster corrected energies          -192.66957852 (Pople, fixed reference)
 Cluster corrected energies          -192.66921632 (Pople, relaxed reference)
 Cluster corrected energies          -192.66957852 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95580887 (fixed)   0.95599886 (relaxed)   0.95581181 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157148   -0.00267680   -0.66991700
 Singles      0.01809873   -0.06211690   -0.06987469
 Pairs        0.07492922   -0.00000001   -0.05436798
 Total        1.09459943   -0.06479371   -0.79415968
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80145586
 Nuclear energy                         0.00000000
 Kinetic energy                        63.22267298
 One electron energy                 -335.43088467
 Two electron energy                  142.83526914
 Virial quotient                       -3.04630612
 Correlation energy                    -0.79415968
 !MRCI STATE 2.1 Energy              -192.595615536281

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67074259 (Davidson, fixed reference)
 Cluster corrected energies          -192.67040244 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67074259 (Davidson, rotated reference)

 Cluster corrected energies          -192.66957830 (Pople, fixed reference)
 Cluster corrected energies          -192.66921609 (Pople, relaxed reference)
 Cluster corrected energies          -192.66957830 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95581007 (fixed)   0.95599887 (relaxed)   0.95581181 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157148   -0.00267680   -0.66991704
 Singles      0.01809870   -0.06211684   -0.06987463
 Pairs        0.07492925    0.00000000   -0.05436797
 Total        1.09459943   -0.06479364   -0.79415965
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80145586
 Nuclear energy                         0.00000000
 Kinetic energy                        63.22267158
 One electron energy                 -335.43088425
 Two electron energy                  142.83526874
 Virial quotient                       -3.04630619
 Correlation energy                    -0.79415965
 !MRCI STATE 3.1 Energy              -192.595615508831

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67074256 (Davidson, fixed reference)
 Cluster corrected energies          -192.67040241 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67074256 (Davidson, rotated reference)

 Cluster corrected energies          -192.66957827 (Pople, fixed reference)
 Cluster corrected energies          -192.66921606 (Pople, relaxed reference)
 Cluster corrected energies          -192.66957827 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.72366057 (fixed)   0.95599891 (relaxed)   0.95581186 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157147   -0.00267680   -0.66991725
 Singles      0.01809857   -0.06211666   -0.06987449
 Pairs        0.07492928    0.00000000   -0.05436788
 Total        1.09459932   -0.06479346   -0.79415963
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80145586
 Nuclear energy                         0.00000000
 Kinetic energy                        63.22267699
 One electron energy                 -335.43089359
 Two electron energy                  142.83527810
 Virial quotient                       -3.04630592
 Correlation energy                    -0.79415963
 !MRCI STATE 4.1 Energy              -192.595615487504

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67074245 (Davidson, fixed reference)
 Cluster corrected energies          -192.67040230 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67074245 (Davidson, rotated reference)

 Cluster corrected energies          -192.66957815 (Pople, fixed reference)
 Cluster corrected energies          -192.66921594 (Pople, relaxed reference)
 Cluster corrected energies          -192.66957815 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95581009 (fixed)   0.95599889 (relaxed)   0.95581183 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157148   -0.00267680   -0.66991704
 Singles      0.01809870   -0.06211684   -0.06987459
 Pairs        0.07492919   -0.00000000   -0.05436798
 Total        1.09459938   -0.06479364   -0.79415961
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80145586
 Nuclear energy                         0.00000000
 Kinetic energy                        63.22267236
 One electron energy                 -335.43088628
 Two electron energy                  142.83527081
 Virial quotient                       -3.04630615
 Correlation energy                    -0.79415961
 !MRCI STATE 5.1 Energy              -192.595615469133

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67074248 (Davidson, fixed reference)
 Cluster corrected energies          -192.67040232 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67074248 (Davidson, rotated reference)

 Cluster corrected energies          -192.66957819 (Pople, fixed reference)
 Cluster corrected energies          -192.66921597 (Pople, relaxed reference)
 Cluster corrected energies          -192.66957819 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95614778 (fixed)   0.95645326 (relaxed)   0.95614778 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00171463   -0.00246023   -0.67711855
 Singles      0.01271223   -0.05058080   -0.05541813
 Pairs        0.07940345    0.00000000   -0.05734255
 Total        1.09383031   -0.05304102   -0.78987924
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.76767133
 Nuclear energy                         0.00000000
 Kinetic energy                        63.19071154
 One electron energy                 -335.08532070
 Two electron energy                  142.52777013
 Virial quotient                       -3.04724454
 Correlation energy                    -0.78987924
 !MRCI STATE 6.1 Energy              -192.557550570369

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.63166519 (Davidson, fixed reference)
 Cluster corrected energies          -192.63111339 (Davidson, relaxed reference)
 Cluster corrected energies          -192.63166519 (Davidson, rotated reference)

 Cluster corrected energies          -192.63046796 (Pople, fixed reference)
 Cluster corrected energies          -192.62988129 (Pople, relaxed reference)
 Cluster corrected energies          -192.63046796 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95858080 (fixed)   0.95870027 (relaxed)   0.95858109 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00168260   -0.00331231   -0.65515635
 Singles      0.01696946   -0.06146568   -0.06854149
 Pairs        0.06963203   -0.00008421   -0.04954722
 Total        1.08828409   -0.06486220   -0.77324507
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67500845
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00884868
 One electron energy                 -331.61455432
 Two electron energy                  139.16630081
 Virial quotient                       -3.05430519
 Correlation energy                    -0.77324507
 !MRCI STATE 7.1 Energy              -192.448253518374

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51651876 (Davidson, fixed reference)
 Cluster corrected energies          -192.51630955 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51651876 (Davidson, rotated reference)

 Cluster corrected energies          -192.51509455 (Pople, fixed reference)
 Cluster corrected energies          -192.51487413 (Pople, relaxed reference)
 Cluster corrected energies          -192.51509455 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95858113 (fixed)   0.95870031 (relaxed)   0.95858113 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00168260   -0.00331231   -0.00423913
 Singles      0.01696941   -0.06146555   -0.06854134
 Pairs        0.06963200   -0.70846712   -0.70046452
 Total        1.08828401   -0.77324498   -0.77324499
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67500845
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00885037
 One electron energy                 -331.61455787
 Two electron energy                  139.16630444
 Virial quotient                       -3.05430511
 Correlation energy                    -0.77324499
 !MRCI STATE 8.1 Energy              -192.448253436489

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51651860 (Davidson, fixed reference)
 Cluster corrected energies          -192.51630939 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51651860 (Davidson, rotated reference)

 Cluster corrected energies          -192.51509439 (Pople, fixed reference)
 Cluster corrected energies          -192.51487397 (Pople, relaxed reference)
 Cluster corrected energies          -192.51509439 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95858084 (fixed)   0.95870031 (relaxed)   0.95858113 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00168260   -0.00331231   -0.65523382
 Singles      0.01696938   -0.06146556   -0.06854135
 Pairs        0.06963202    0.00000000   -0.04946982
 Total        1.08828401   -0.06477788   -0.77324498
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67500845
 Nuclear energy                         0.00000000
 Kinetic energy                        63.00884727
 One electron energy                 -331.61455208
 Two electron energy                  139.16629865
 Virial quotient                       -3.05430526
 Correlation energy                    -0.77324498
 !MRCI STATE 9.1 Energy              -192.448253435206

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.51651860 (Davidson, fixed reference)
 Cluster corrected energies          -192.51630939 (Davidson, relaxed reference)
 Cluster corrected energies          -192.51651860 (Davidson, rotated reference)

 Cluster corrected energies          -192.51509438 (Pople, fixed reference)
 Cluster corrected energies          -192.51487397 (Pople, relaxed reference)
 Cluster corrected energies          -192.51509438 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     6898.47       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     31812.11   8397.36  23394.35      7.72      3.56      8.91
 REAL TIME  *     32407.30 SEC
 DISK USED  *         6.82 GB (local),       55.66 GB (total)
 SF USED    *        43.59 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -192.67074280  AU                              
 SETTING HLSDIAG(14)    =      -192.67074259  AU                              
 SETTING HLSDIAG(15)    =      -192.67074256  AU                              
 SETTING HLSDIAG(16)    =      -192.67074245  AU                              
 SETTING HLSDIAG(17)    =      -192.67074248  AU                              
 SETTING HLSDIAG(18)    =      -192.63166519  AU                              
 SETTING HLSDIAG(19)    =      -192.51651876  AU                              
 SETTING HLSDIAG(20)    =      -192.51651860  AU                              
 SETTING HLSDIAG(21)    =      -192.51651860  AU                              


         HLSDIAG
    -192.6964351
    -192.6964351
    -192.6964351
    -192.5127539
    -192.5127537
    -192.5127539
    -192.5127538
    -192.5127536
    -192.5095689
    -192.5095687
    -192.5095688
    -192.5069619
    -192.6707428
    -192.6707426
    -192.6707426
    -192.6707424
    -192.6707425
    -192.6316652
    -192.5165188
    -192.5165186
    -192.5165186
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -192.624589   -192.624589   -192.624589   -192.444260   -192.444260   -192.444260   -192.444260   -192.444260
                      -192.440827   -192.440827   -192.440827   -192.438188
 Replaced energies:   -192.696435   -192.696435   -192.696435   -192.512754   -192.512754   -192.512754   -192.512754   -192.512754
                      -192.509569   -192.509569   -192.509569   -192.506962

 Wavefunction restored from record  5203.2  Symmetry=1  S= 0.0  NSTATE=   9

 Original energies:   -192.595616   -192.595616   -192.595616   -192.595615   -192.595615   -192.557551   -192.448254   -192.448253
                      -192.448253
 Replaced energies:   -192.670743   -192.670743   -192.670743   -192.670742   -192.670742   -192.631665   -192.516519   -192.516519
                      -192.516519



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.69643515

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -60.42    3497.01     -11.97     -11.45      18.69       5.19    -935.75       3.47    -155.37

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           60.42       0.00     -56.33    -845.99    -672.00      23.40      -4.25      14.46      14.23       2.07

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3497.01      56.33      -0.00     -15.61     -20.82    -935.56      -0.41     -18.32    -826.99      25.23

    4   4.1  1.0  1.0       0.00       0.00       0.00   40313.38       0.00       0.00       0.00       0.00       0.00       0.00
                           11.97     845.99      15.61      -0.00      16.34      -2.63   -2631.82     -17.11     -46.58   -1532.12

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   40313.42       0.00       0.00       0.00       0.00       0.00
                           11.45     672.00      20.82     -16.34       0.00       0.28    3312.02      -2.21     -40.65   -1214.30

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   40313.38       0.00       0.00       0.00       0.00
                          -18.69     -23.40     935.56       2.63      -0.28       0.00     -17.76   -2115.27      27.44     336.73

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   40313.40       0.00       0.00       0.00
                           -5.19       4.25       0.41    2631.82   -3312.02      17.76       0.00       6.46       9.46      -7.74

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40313.45       0.00       0.00
                          935.75     -14.46      18.32      17.11       2.21    2115.27      -6.46      -0.00   -1725.51      57.30

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41012.40       0.00
                           -3.47     -14.23     826.99      46.58      40.65     -27.44      -9.46    1725.51      -0.00    -418.09

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41012.44
                          155.37      -2.07     -25.23    1532.12    1214.30    -336.73       7.74     -57.30     418.09       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          812.71     -13.23       8.12    -294.58    -249.26   -1693.16      -2.15     -16.54    2188.49     -70.88

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           24.43    1516.88      26.21       0.00      -0.00      -0.00       0.07       0.00     -90.10   -2781.98

   13   1.1  1.0  0.0      -0.00     -56.88     -40.81    -112.53     755.69      -7.33     -11.06     -11.57      -0.25     -11.61
                           -0.00    2472.43      41.79      16.82      -2.64      10.98    -661.63      -3.72       9.18     574.57

   14   2.1  1.0  0.0      56.88      -0.00   -2472.46       3.02     -13.00      -2.15      -7.54    -661.74      10.84      99.70
                        -2472.43       0.00     -57.57      12.74       1.70     661.70      11.22      -2.19    -584.90      10.88

   15   3.1  1.0  0.0      40.81    2472.46       0.00      -2.83      13.59      -0.48     661.75      -7.73      18.79     576.13
                          -41.79      57.57      -0.00    -710.66     280.51       9.47     -13.89      -1.60      -9.67      13.56

   16   4.1  1.0  0.0     112.53      -3.02       2.83       0.00     -28.55   -2958.59      -4.06      10.77    -207.47       9.41
                          -16.82     -12.74     710.66      -0.00      -5.84      -3.13       7.78   -1097.66      25.54     246.56

   17   5.1  1.0  0.0    -755.69      13.00     -13.59      28.55       0.00    -440.68       1.11      10.13    1393.44     -48.30
                            2.64      -1.70    -280.51       5.84       0.00      -1.04      30.32   -2782.41      -2.50     -85.21

   18   6.1  1.0  0.0       7.33       2.15       0.48    2958.59     440.68       0.00       8.82       5.44     -13.59      -3.56
                          -10.98    -661.70      -9.47       3.13       1.04      -0.00    1495.46      36.94      39.39    1199.18

   19   7.1  1.0  0.0      11.06       7.54    -661.75       4.06      -1.11      -8.82       0.00   -1495.66     -15.17    -221.86
                          661.63     -11.22      13.89      -7.78     -30.32   -1495.46      -0.00     -11.20   -1220.01      42.62

   20   8.1  1.0  0.0      11.57     661.74       7.73     -10.77     -10.13      -5.44    1495.66      -0.00     -40.47   -1199.77
                            3.72       2.19       1.60    1097.66    2782.41     -36.94      11.20       0.00      -6.94      -3.38

   21   9.1  1.0  0.0       0.25     -10.84     -18.79     207.47   -1393.44      13.59      15.17      40.47       0.00     -20.14
                           -9.18     584.90       9.67     -25.54       2.50     -39.39    1220.01       6.94      -0.00    1548.17

   22  10.1  1.0  0.0      11.61     -99.70    -576.13      -9.41      48.30       3.56     221.86    1199.77      20.14      -0.00
                         -574.57     -10.88     -13.56    -246.56      85.21   -1199.18     -42.62       3.38   -1548.17      -0.00

   23  11.1  1.0  0.0     -11.81    -576.42      99.78      -2.73      10.75      -1.45    1200.45    -222.25     -54.86   -1575.18
                          109.58      -9.29       2.40   -1287.76     510.36     225.39     -13.08      -3.55     294.79     -30.06

   24  12.1  1.0  0.0    1072.45     -17.70      24.67      -0.00      -0.00      -0.02       0.00      -0.00   -2002.32      69.74
                           24.97      18.13   -1072.45      -0.00      -0.00      -0.00      -0.00      -0.05     -38.22    -374.73

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

   37   1.1  0.0  0.0    -267.98       4.37      -3.30       1.80      15.25    1551.45       0.75      -4.41     -47.47       1.56
                           55.91      42.58   -2524.55      -1.13       0.58       3.15      -3.58     645.34       8.03      83.69

   38   2.1  0.0  0.0     -49.60     -40.61    2401.82      -1.36       0.68       1.16      -4.35     779.40      -7.00     -79.65
                        -2401.83      39.55     -49.74       0.88       7.71     779.38       0.37      -0.37    -425.52      14.64

   39   3.1  0.0  0.0       0.22      -4.57      -0.07   -1541.79    -229.62       4.06      -3.40      -2.52       0.03      -0.80
                           38.69    2402.00      41.49      -0.78       1.70       0.35    -779.41      -4.18      13.54     418.01

   40   4.1  0.0  0.0    2760.50     -45.10      58.29       0.34       1.50     150.58       0.20      -2.21     489.03     -16.80
                          -21.52     -19.76    1148.26      -2.39       1.47       3.18      -7.88    1418.93      -2.96     -38.14

   41   5.1  0.0  0.0     -38.26   -2402.01     -41.41       3.25       4.90       0.34    -779.38      -4.35     -13.46    -418.02
                           -0.17      -4.57       0.10    -572.01   -1449.97      14.90      -7.04       0.42      -0.04      -0.80

   42   6.1  0.0  0.0   -3855.72      63.64     -88.70      -0.00      -0.00      -0.00       0.00      -0.00    -485.57      16.91
                          -89.78     -65.17    3855.67      -0.00      -0.00      -0.00      -0.00      -0.00      -9.27     -90.87

   43   7.1  0.0  0.0      10.73     665.99      11.43      -0.40      -9.88      -0.60    1493.26       8.21     -38.67   -1193.93
                           -0.09      -0.52      -0.01   -1604.03     632.67      -4.28       4.16      -3.33       0.18       0.93

   44   8.1  0.0  0.0      15.50      11.18    -665.90       2.61      -1.33      -5.13       8.20   -1493.28     -23.19    -227.29
                         -665.90      10.99     -15.32       1.84      14.59    1493.23       0.73      -5.14    1215.28     -42.33

   45   9.1  0.0  0.0       0.01       0.52       0.01    -254.04    1705.43     -16.48      10.83      -1.85      -0.03      -0.93
                           10.73     665.98      11.51      -0.65       9.04       0.61   -1493.26      -8.39     -38.67   -1193.92


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00      -0.00      56.88      40.81     112.53    -755.69       7.33      11.06      11.57
                         -812.71     -24.43       0.00    2472.43      41.79      16.82      -2.64      10.98    -661.63      -3.72

    2   2.1  1.0  1.0       0.00       0.00     -56.88      -0.00    2472.46      -3.02      13.00       2.15       7.54     661.74
                           13.23   -1516.88   -2472.43      -0.00     -57.57      12.74       1.70     661.70      11.22      -2.19

    3   3.1  1.0  1.0       0.00       0.00     -40.81   -2472.46       0.00       2.83     -13.59       0.48    -661.75       7.73
                           -8.12     -26.21     -41.79      57.57       0.00    -710.66     280.51       9.47     -13.89      -1.60

    4   4.1  1.0  1.0       0.00       0.00    -112.53       3.02      -2.83       0.00      28.55    2958.59       4.06     -10.77
                          294.58      -0.00     -16.82     -12.74     710.66       0.00      -5.84      -3.13       7.78   -1097.66

    5   5.1  1.0  1.0       0.00       0.00     755.69     -13.00      13.59     -28.55       0.00     440.68      -1.11     -10.13
                          249.26       0.00       2.64      -1.70    -280.51       5.84      -0.00      -1.04      30.32   -2782.41

    6   6.1  1.0  1.0       0.00       0.00      -7.33      -2.15      -0.48   -2958.59    -440.68       0.00      -8.82      -5.44
                         1693.16       0.00     -10.98    -661.70      -9.47       3.13       1.04       0.00    1495.46      36.94

    7   7.1  1.0  1.0       0.00       0.00     -11.06      -7.54     661.75      -4.06       1.11       8.82       0.00    1495.66
                            2.15      -0.07     661.63     -11.22      13.89      -7.78     -30.32   -1495.46       0.00     -11.20

    8   8.1  1.0  1.0       0.00       0.00     -11.57    -661.74      -7.73      10.77      10.13       5.44   -1495.66      -0.00
                           16.54      -0.00       3.72       2.19       1.60    1097.66    2782.41     -36.94      11.20      -0.00

    9   9.1  1.0  1.0       0.00       0.00      -0.25      10.84      18.79    -207.47    1393.44     -13.59     -15.17     -40.47
                        -2188.49      90.10      -9.18     584.90       9.67     -25.54       2.50     -39.39    1220.01       6.94

   10  10.1  1.0  1.0       0.00       0.00     -11.61      99.70     576.13       9.41     -48.30      -3.56    -221.86   -1199.77
                           70.88    2781.98    -574.57     -10.88     -13.56    -246.56      85.21   -1199.18     -42.62       3.38

   11  11.1  1.0  1.0   41012.43       0.00      11.81     576.42     -99.78       2.73     -10.75       1.45   -1200.45     222.25
                           -0.00    -531.47     109.58      -9.29       2.40   -1287.76     510.36     225.39     -13.08      -3.55

   12  12.1  1.0  1.0       0.00   41584.57   -1072.45      17.70     -24.67       0.00       0.00       0.02      -0.00       0.00
                          531.47      -0.00      24.97      18.13   -1072.45      -0.00      -0.00      -0.00      -0.00      -0.05

   13   1.1  1.0  0.0      11.81   -1072.45       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -109.58     -24.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0     576.42      17.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.29     -18.13      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0     -99.78     -24.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.40    1072.45      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0       2.73       0.00       0.00       0.00       0.00   40313.38       0.00       0.00       0.00       0.00
                         1287.76       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0     -10.75       0.00       0.00       0.00       0.00       0.00   40313.42       0.00       0.00       0.00
                         -510.36       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0       1.45       0.02       0.00       0.00       0.00       0.00       0.00   40313.38       0.00       0.00
                         -225.39       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0   -1200.45      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   40313.40       0.00
                           13.08       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0     222.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40313.45
                            3.55       0.05      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0      54.86    2002.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -294.79      38.22      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0    1575.18     -69.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           30.06     374.73      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0       0.00     -25.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1968.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0      25.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1968.01       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00      -0.00     -56.88     -40.81    -112.53     755.69      -7.33     -11.06     -11.57
                           -0.00      -0.00      -0.00    2472.43      41.79      16.82      -2.64      10.98    -661.63      -3.72

   26   2.1  1.0 -1.0       0.00       0.00      56.88      -0.00   -2472.46       3.02     -13.00      -2.15      -7.54    -661.74
                           -0.00      -0.00   -2472.43       0.00     -57.57      12.74       1.70     661.70      11.22      -2.19

   27   3.1  1.0 -1.0       0.00       0.00      40.81    2472.46       0.00      -2.83      13.59      -0.48     661.75      -7.73
                           -0.00      -0.00     -41.79      57.57      -0.00    -710.66     280.51       9.47     -13.89      -1.60

   28   4.1  1.0 -1.0       0.00       0.00     112.53      -3.02       2.83       0.00     -28.55   -2958.59      -4.06      10.77
                           -0.00      -0.00     -16.82     -12.74     710.66      -0.00      -5.84      -3.13       7.78   -1097.66

   29   5.1  1.0 -1.0       0.00       0.00    -755.69      13.00     -13.59      28.55       0.00    -440.68       1.11      10.13
                           -0.00      -0.00       2.64      -1.70    -280.51       5.84       0.00      -1.04      30.32   -2782.41

   30   6.1  1.0 -1.0       0.00       0.00       7.33       2.15       0.48    2958.59     440.68       0.00       8.82       5.44
                           -0.00      -0.00     -10.98    -661.70      -9.47       3.13       1.04      -0.00    1495.46      36.94

   31   7.1  1.0 -1.0       0.00       0.00      11.06       7.54    -661.75       4.06      -1.11      -8.82       0.00   -1495.66
                           -0.00      -0.00     661.63     -11.22      13.89      -7.78     -30.32   -1495.46      -0.00     -11.20

   32   8.1  1.0 -1.0       0.00       0.00      11.57     661.74       7.73     -10.77     -10.13      -5.44    1495.66      -0.00
                           -0.00      -0.00       3.72       2.19       1.60    1097.66    2782.41     -36.94      11.20       0.00

   33   9.1  1.0 -1.0       0.00       0.00       0.25     -10.84     -18.79     207.47   -1393.44      13.59      15.17      40.47
                           -0.00      -0.00      -9.18     584.90       9.67     -25.54       2.50     -39.39    1220.01       6.94

   34  10.1  1.0 -1.0       0.00       0.00      11.61     -99.70    -576.13      -9.41      48.30       3.56     221.86    1199.77
                           -0.00      -0.00    -574.57     -10.88     -13.56    -246.56      85.21   -1199.18     -42.62       3.38

   35  11.1  1.0 -1.0       0.00       0.00     -11.81    -576.42      99.78      -2.73      10.75      -1.45    1200.45    -222.25
                           -0.00      -0.00     109.58      -9.29       2.40   -1287.76     510.36     225.39     -13.08      -3.55

   36  12.1  1.0 -1.0       0.00       0.00    1072.45     -17.70      24.67      -0.00      -0.00      -0.02       0.00      -0.00
                           -0.00      -0.00      24.97      18.13   -1072.45      -0.00      -0.00      -0.00      -0.00      -0.05

   37   1.1  0.0  0.0       0.11      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          439.56       0.00      51.41    3191.71      54.95       2.15       5.27       0.55   -1281.51      -7.13

   38   2.1  0.0  0.0    -418.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.48       0.00      -0.11       1.15       0.02    1371.48   -1725.85      15.41      -3.91       3.86

   39   3.1  0.0  0.0       0.15      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -79.85      -0.00     -72.62     -57.08    3396.63       1.93      -0.96      -1.69       6.32   -1102.24

   40   4.1  0.0  0.0      -5.36      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -199.92      -0.00      36.21    2280.31      39.01      -3.70      -6.51      -0.94    1793.71      10.19

   41   5.1  0.0  0.0      79.84      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.12      -0.02    3396.68     -55.60      71.68       1.26      10.76    1102.20       0.80      -1.69

   42   6.1  0.0  0.0       6.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -477.24      -0.00      87.84    5453.48      94.23      -0.00       0.00       0.00      -0.00      -0.00

   43   7.1  0.0  0.0     227.94       1.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.18    2444.27     941.71     -15.56      22.40       2.56      20.91    2111.73       1.04      -8.92

   44   8.1  0.0  0.0   -1194.46      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.54      -0.29      -0.11       0.00      -0.00    1909.16    1516.93     -17.25       9.42       2.10

   45   9.1  0.0  0.0       0.18   -2444.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          228.09       1.91      22.66      15.91    -941.70      -3.69       1.90       8.91     -11.85    2111.80


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       0.25      11.61     -11.81    1072.45       0.00       0.00       0.00       0.00       0.00       0.00
                            9.18     574.57    -109.58     -24.97       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0     -10.84     -99.70    -576.42     -17.70       0.00       0.00       0.00       0.00       0.00       0.00
                         -584.90      10.88       9.29     -18.13       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0     -18.79    -576.13      99.78      24.67       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.67      13.56      -2.40    1072.45       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0     207.47      -9.41      -2.73      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           25.54     246.56    1287.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0   -1393.44      48.30      10.75      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.50     -85.21    -510.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0      13.59       3.56      -1.45      -0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           39.39    1199.18    -225.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0      15.17     221.86    1200.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1220.01      42.62      13.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0      40.47    1199.77    -222.25      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.94      -3.38       3.55       0.05       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0       0.00      20.14     -54.86   -2002.32       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1548.17    -294.79      38.22       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0     -20.14      -0.00   -1575.18      69.74       0.00       0.00       0.00       0.00       0.00       0.00
                        -1548.17       0.00      30.06     374.73       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0      54.86    1575.18       0.00      25.60       0.00       0.00       0.00       0.00       0.00       0.00
                          294.79     -30.06      -0.00    1968.01       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0    2002.32     -69.74     -25.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -38.22    -374.73   -1968.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      56.88      40.81     112.53    -755.69       7.33
                            0.00       0.00       0.00       0.00       0.00    2472.43      41.79      16.82      -2.64      10.98

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00     -56.88      -0.00    2472.46      -3.02      13.00       2.15
                            0.00       0.00       0.00       0.00   -2472.43      -0.00     -57.57      12.74       1.70     661.70

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00     -40.81   -2472.46       0.00       2.83     -13.59       0.48
                            0.00       0.00       0.00       0.00     -41.79      57.57       0.00    -710.66     280.51       9.47

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00    -112.53       3.02      -2.83       0.00      28.55    2958.59
                            0.00       0.00       0.00       0.00     -16.82     -12.74     710.66       0.00      -5.84      -3.13

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00     755.69     -13.00      13.59     -28.55       0.00     440.68
                            0.00       0.00       0.00       0.00       2.64      -1.70    -280.51       5.84      -0.00      -1.04

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00      -7.33      -2.15      -0.48   -2958.59    -440.68       0.00
                            0.00       0.00       0.00       0.00     -10.98    -661.70      -9.47       3.13       1.04       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00     -11.06      -7.54     661.75      -4.06       1.11       8.82
                            0.00       0.00       0.00       0.00     661.63     -11.22      13.89      -7.78     -30.32   -1495.46

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00     -11.57    -661.74      -7.73      10.77      10.13       5.44
                            0.00       0.00       0.00       0.00       3.72       2.19       1.60    1097.66    2782.41     -36.94

   21   9.1  1.0  0.0   41012.40       0.00       0.00       0.00      -0.25      10.84      18.79    -207.47    1393.44     -13.59
                            0.00       0.00       0.00       0.00      -9.18     584.90       9.67     -25.54       2.50     -39.39

   22  10.1  1.0  0.0       0.00   41012.44       0.00       0.00     -11.61      99.70     576.13       9.41     -48.30      -3.56
                           -0.00       0.00       0.00       0.00    -574.57     -10.88     -13.56    -246.56      85.21   -1199.18

   23  11.1  1.0  0.0       0.00       0.00   41012.43       0.00      11.81     576.42     -99.78       2.73     -10.75       1.45
                           -0.00      -0.00       0.00       0.00     109.58      -9.29       2.40   -1287.76     510.36     225.39

   24  12.1  1.0  0.0       0.00       0.00       0.00   41584.57   -1072.45      17.70     -24.67       0.00       0.00       0.02
                           -0.00      -0.00      -0.00       0.00      24.97      18.13   -1072.45      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0      -0.25     -11.61      11.81   -1072.45       0.01       0.00       0.00       0.00       0.00       0.00
                            9.18     574.57    -109.58     -24.97      -0.00      60.42   -3497.01      11.97      11.45     -18.69

   26   2.1  1.0 -1.0      10.84      99.70     576.42      17.70       0.00       0.00       0.00       0.00       0.00       0.00
                         -584.90      10.88       9.29     -18.13     -60.42      -0.00      56.33     845.99     672.00     -23.40

   27   3.1  1.0 -1.0      18.79     576.13     -99.78     -24.67       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.67      13.56      -2.40    1072.45    3497.01     -56.33       0.00      15.61      20.82     935.56

   28   4.1  1.0 -1.0    -207.47       9.41       2.73       0.00       0.00       0.00       0.00   40313.38       0.00       0.00
                           25.54     246.56    1287.76       0.00     -11.97    -845.99     -15.61       0.00     -16.34       2.63

   29   5.1  1.0 -1.0    1393.44     -48.30     -10.75       0.00       0.00       0.00       0.00       0.00   40313.42       0.00
                           -2.50     -85.21    -510.36       0.00     -11.45    -672.00     -20.82      16.34      -0.00      -0.28

   30   6.1  1.0 -1.0     -13.59      -3.56       1.45       0.02       0.00       0.00       0.00       0.00       0.00   40313.38
                           39.39    1199.18    -225.39       0.00      18.69      23.40    -935.56      -2.63       0.28      -0.00

   31   7.1  1.0 -1.0     -15.17    -221.86   -1200.45      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1220.01      42.62      13.08       0.00       5.19      -4.25      -0.41   -2631.82    3312.02     -17.76

   32   8.1  1.0 -1.0     -40.47   -1199.77     222.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.94      -3.38       3.55       0.05    -935.75      14.46     -18.32     -17.11      -2.21   -2115.27

   33   9.1  1.0 -1.0       0.00     -20.14      54.86    2002.32       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1548.17    -294.79      38.22       3.47      14.23    -826.99     -46.58     -40.65      27.44

   34  10.1  1.0 -1.0      20.14      -0.00    1575.18     -69.74       0.00       0.00       0.00       0.00       0.00       0.00
                        -1548.17      -0.00      30.06     374.73    -155.37       2.07      25.23   -1532.12   -1214.30     336.73

   35  11.1  1.0 -1.0     -54.86   -1575.18       0.00     -25.60       0.00       0.00       0.00       0.00       0.00       0.00
                          294.79     -30.06       0.00    1968.01    -812.71      13.23      -8.12     294.58     249.26    1693.16

   36  12.1  1.0 -1.0   -2002.32      69.74      25.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -38.22    -374.73   -1968.01       0.00     -24.43   -1516.88     -26.21      -0.00       0.00       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00    -267.98       4.37      -3.30       1.80      15.25    1551.45
                           17.99     555.41    -106.07      -0.00     -55.91     -42.58    2524.55       1.13      -0.58      -3.15

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00     -49.60     -40.61    2401.82      -1.36       0.68       1.16
                           -0.02       0.20      -0.04      -0.02    2401.83     -39.55      49.74      -0.88      -7.71    -779.38

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.22      -4.57      -0.07   -1541.79    -229.62       4.06
                          -10.34    -112.58    -591.45      -0.00     -38.69   -2402.00     -41.49       0.78      -1.70      -0.35

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00    2760.50     -45.10      58.29       0.34       1.50     150.58
                           12.76     396.83     -75.74       0.00      21.52      19.76   -1148.26       2.39      -1.47      -3.18

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00     -38.26   -2402.01     -41.41       3.25       4.90       0.34
                          601.77     -20.68      -6.58      -0.00       0.17       4.57      -0.10     572.01    1449.97     -14.90

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00   -3855.72      63.64     -88.70      -0.00      -0.00      -0.00
                           21.85     674.62    -128.88      -0.00      89.78      65.17   -3855.67       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00      10.73     665.99      11.43      -0.40      -9.88      -0.60
                        -1718.64      60.11      23.29       0.41       0.09       0.52       0.01    1604.03    -632.67       4.28

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00      15.50      11.18    -665.90       2.61      -1.33      -5.13
                            0.20      -0.01      -0.01    3456.74     665.90     -10.99      15.32      -1.84     -14.59   -1493.23

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.01       0.52       0.01    -254.04    1705.43     -16.48
                          -34.14    -321.59   -1689.17      -0.00     -10.73    -665.98     -11.51       0.65      -9.04      -0.61


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -267.98     -49.60       0.22    2760.50
                            0.00       0.00       0.00       0.00       0.00       0.00     -55.91    2401.83     -38.69      21.52

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       4.37     -40.61      -4.57     -45.10
                            0.00       0.00       0.00       0.00       0.00       0.00     -42.58     -39.55   -2402.00      19.76

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -3.30    2401.82      -0.07      58.29
                            0.00       0.00       0.00       0.00       0.00       0.00    2524.55      49.74     -41.49   -1148.26

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.80      -1.36   -1541.79       0.34
                            0.00       0.00       0.00       0.00       0.00       0.00       1.13      -0.88       0.78       2.39

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      15.25       0.68    -229.62       1.50
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.58      -7.71      -1.70      -1.47

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    1551.45       1.16       4.06     150.58
                            0.00       0.00       0.00       0.00       0.00       0.00      -3.15    -779.38      -0.35      -3.18

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.75      -4.35      -3.40       0.20
                            0.00       0.00       0.00       0.00       0.00       0.00       3.58      -0.37     779.41       7.88

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.41     779.40      -2.52      -2.21
                            0.00       0.00       0.00       0.00       0.00       0.00    -645.34       0.37       4.18   -1418.93

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -47.47      -7.00       0.03     489.03
                            0.00       0.00       0.00       0.00       0.00       0.00      -8.03     425.52     -13.54       2.96

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.56     -79.65      -0.80     -16.80
                            0.00       0.00       0.00       0.00       0.00       0.00     -83.69     -14.64    -418.01      38.14

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.11    -418.22       0.15      -5.36
                            0.00       0.00       0.00       0.00       0.00       0.00    -439.56      -4.48      79.85     199.92

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   13   1.1  1.0  0.0      11.06      11.57       0.25      11.61     -11.81    1072.45       0.00       0.00       0.00       0.00
                         -661.63      -3.72       9.18     574.57    -109.58     -24.97     -51.41       0.11      72.62     -36.21

   14   2.1  1.0  0.0       7.54     661.74     -10.84     -99.70    -576.42     -17.70       0.00       0.00       0.00       0.00
                           11.22      -2.19    -584.90      10.88       9.29     -18.13   -3191.71      -1.15      57.08   -2280.31

   15   3.1  1.0  0.0    -661.75       7.73     -18.79    -576.13      99.78      24.67       0.00       0.00       0.00       0.00
                          -13.89      -1.60      -9.67      13.56      -2.40    1072.45     -54.95      -0.02   -3396.63     -39.01

   16   4.1  1.0  0.0       4.06     -10.77     207.47      -9.41      -2.73      -0.00       0.00       0.00       0.00       0.00
                            7.78   -1097.66      25.54     246.56    1287.76       0.00      -2.15   -1371.48      -1.93       3.70

   17   5.1  1.0  0.0      -1.11     -10.13   -1393.44      48.30      10.75      -0.00       0.00       0.00       0.00       0.00
                           30.32   -2782.41      -2.50     -85.21    -510.36       0.00      -5.27    1725.85       0.96       6.51

   18   6.1  1.0  0.0      -8.82      -5.44      13.59       3.56      -1.45      -0.02       0.00       0.00       0.00       0.00
                         1495.46      36.94      39.39    1199.18    -225.39       0.00      -0.55     -15.41       1.69       0.94

   19   7.1  1.0  0.0       0.00    1495.66      15.17     221.86    1200.45       0.00       0.00       0.00       0.00       0.00
                            0.00     -11.20   -1220.01      42.62      13.08       0.00    1281.51       3.91      -6.32   -1793.71

   20   8.1  1.0  0.0   -1495.66      -0.00      40.47    1199.77    -222.25      -0.00       0.00       0.00       0.00       0.00
                           11.20      -0.00      -6.94      -3.38       3.55       0.05       7.13      -3.86    1102.24     -10.19

   21   9.1  1.0  0.0     -15.17     -40.47       0.00      20.14     -54.86   -2002.32       0.00       0.00       0.00       0.00
                         1220.01       6.94       0.00    1548.17    -294.79      38.22     -17.99       0.02      10.34     -12.76

   22  10.1  1.0  0.0    -221.86   -1199.77     -20.14      -0.00   -1575.18      69.74       0.00       0.00       0.00       0.00
                          -42.62       3.38   -1548.17       0.00      30.06     374.73    -555.41      -0.20     112.58    -396.83

   23  11.1  1.0  0.0   -1200.45     222.25      54.86    1575.18       0.00      25.60       0.00       0.00       0.00       0.00
                          -13.08      -3.55     294.79     -30.06      -0.00    1968.01     106.07       0.04     591.45      75.74

   24  12.1  1.0  0.0      -0.00       0.00    2002.32     -69.74     -25.60       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.05     -38.22    -374.73   -1968.01      -0.00       0.00       0.02       0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -267.98     -49.60       0.22    2760.50
                           -5.19     935.75      -3.47     155.37     812.71      24.43      55.91   -2401.83      38.69     -21.52

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       4.37     -40.61      -4.57     -45.10
                            4.25     -14.46     -14.23      -2.07     -13.23    1516.88      42.58      39.55    2402.00     -19.76

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -3.30    2401.82      -0.07      58.29
                            0.41      18.32     826.99     -25.23       8.12      26.21   -2524.55     -49.74      41.49    1148.26

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.80      -1.36   -1541.79       0.34
                         2631.82      17.11      46.58    1532.12    -294.58       0.00      -1.13       0.88      -0.78      -2.39

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      15.25       0.68    -229.62       1.50
                        -3312.02       2.21      40.65    1214.30    -249.26      -0.00       0.58       7.71       1.70       1.47

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    1551.45       1.16       4.06     150.58
                           17.76    2115.27     -27.44    -336.73   -1693.16      -0.00       3.15     779.38       0.35       3.18

   31   7.1  1.0 -1.0   40313.40       0.00       0.00       0.00       0.00       0.00       0.75      -4.35      -3.40       0.20
                           -0.00      -6.46      -9.46       7.74      -2.15       0.07      -3.58       0.37    -779.41      -7.88

   32   8.1  1.0 -1.0       0.00   40313.45       0.00       0.00       0.00       0.00      -4.41     779.40      -2.52      -2.21
                            6.46       0.00    1725.51     -57.30     -16.54       0.00     645.34      -0.37      -4.18    1418.93

   33   9.1  1.0 -1.0       0.00       0.00   41012.40       0.00       0.00       0.00     -47.47      -7.00       0.03     489.03
                            9.46   -1725.51       0.00     418.09    2188.49     -90.10       8.03    -425.52      13.54      -2.96

   34  10.1  1.0 -1.0       0.00       0.00       0.00   41012.44       0.00       0.00       1.56     -79.65      -0.80     -16.80
                           -7.74      57.30    -418.09      -0.00     -70.88   -2781.98      83.69      14.64     418.01     -38.14

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   41012.43       0.00       0.11    -418.22       0.15      -5.36
                            2.15      16.54   -2188.49      70.88       0.00     531.47     439.56       4.48     -79.85    -199.92

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   41584.57      -0.00      -0.00      -0.01      -0.00
                           -0.07      -0.00      90.10    2781.98    -531.47       0.00       0.00       0.00      -0.00      -0.00

   37   1.1  0.0  0.0       0.75      -4.41     -47.47       1.56       0.11      -0.00    5638.82       0.00       0.00       0.00
                            3.58    -645.34      -8.03     -83.69    -439.56      -0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0      -4.35     779.40      -7.00     -79.65    -418.22      -0.00       0.00    5638.86       0.00       0.00
                           -0.37       0.37     425.52     -14.64      -4.48      -0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0      -3.40      -2.52       0.03      -0.80       0.15      -0.01       0.00       0.00    5638.87       0.00
                          779.41       4.18     -13.54    -418.01      79.85       0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0       0.20      -2.21     489.03     -16.80      -5.36      -0.00       0.00       0.00       0.00    5638.90
                            7.88   -1418.93       2.96      38.14     199.92       0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0    -779.38      -4.35     -13.46    -418.02      79.84      -0.00       0.00       0.00       0.00       0.00
                            7.04      -0.42       0.04       0.80      -0.12       0.02      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0       0.00      -0.00    -485.57      16.91       6.21       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       9.27      90.87     477.24       0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0    1493.26       8.21     -38.67   -1193.93     227.94       1.91       0.00       0.00       0.00       0.00
                           -4.16       3.33      -0.18      -0.93       0.18   -2444.27      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0       8.20   -1493.28     -23.19    -227.29   -1194.46      -0.00       0.00       0.00       0.00       0.00
                           -0.73       5.14   -1215.28      42.33      15.54       0.29      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0      10.83      -1.85      -0.03      -0.93       0.18   -2444.23       0.00       0.00       0.00       0.00
                         1493.26       8.39      38.67    1193.92    -228.09      -1.91      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45

    1   1.1  1.0  1.0     -38.26   -3855.72      10.73      15.50       0.01
                            0.17      89.78       0.09     665.90     -10.73

    2   2.1  1.0  1.0   -2402.01      63.64     665.99      11.18       0.52
                            4.57      65.17       0.52     -10.99    -665.98

    3   3.1  1.0  1.0     -41.41     -88.70      11.43    -665.90       0.01
                           -0.10   -3855.67       0.01      15.32     -11.51

    4   4.1  1.0  1.0       3.25      -0.00      -0.40       2.61    -254.04
                          572.01       0.00    1604.03      -1.84       0.65

    5   5.1  1.0  1.0       4.90      -0.00      -9.88      -1.33    1705.43
                         1449.97       0.00    -632.67     -14.59      -9.04

    6   6.1  1.0  1.0       0.34      -0.00      -0.60      -5.13     -16.48
                          -14.90       0.00       4.28   -1493.23      -0.61

    7   7.1  1.0  1.0    -779.38       0.00    1493.26       8.20      10.83
                            7.04       0.00      -4.16      -0.73    1493.26

    8   8.1  1.0  1.0      -4.35      -0.00       8.21   -1493.28      -1.85
                           -0.42       0.00       3.33       5.14       8.39

    9   9.1  1.0  1.0     -13.46    -485.57     -38.67     -23.19      -0.03
                            0.04       9.27      -0.18   -1215.28      38.67

   10  10.1  1.0  1.0    -418.02      16.91   -1193.93    -227.29      -0.93
                            0.80      90.87      -0.93      42.33    1193.92

   11  11.1  1.0  1.0      79.84       6.21     227.94   -1194.46       0.18
                           -0.12     477.24       0.18      15.54    -228.09

   12  12.1  1.0  1.0      -0.00       0.00       1.91      -0.00   -2444.23
                            0.02       0.00   -2444.27       0.29      -1.91

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                        -3396.68     -87.84    -941.71       0.11     -22.66

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           55.60   -5453.48      15.56      -0.00     -15.91

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          -71.68     -94.23     -22.40       0.00     941.70

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -1.26       0.00      -2.56   -1909.16       3.69

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          -10.76      -0.00     -20.91   -1516.93      -1.90

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                        -1102.20      -0.00   -2111.73      17.25      -8.91

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.80       0.00      -1.04      -9.42      11.85

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            1.69       0.00       8.92      -2.10   -2111.80

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         -601.77     -21.85    1718.64      -0.20      34.14

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           20.68    -674.62     -60.11       0.01     321.59

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            6.58     128.88     -23.29       0.01    1689.17

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.41   -3456.74       0.00

   25   1.1  1.0 -1.0     -38.26   -3855.72      10.73      15.50       0.01
                           -0.17     -89.78      -0.09    -665.90      10.73

   26   2.1  1.0 -1.0   -2402.01      63.64     665.99      11.18       0.52
                           -4.57     -65.17      -0.52      10.99     665.98

   27   3.1  1.0 -1.0     -41.41     -88.70      11.43    -665.90       0.01
                            0.10    3855.67      -0.01     -15.32      11.51

   28   4.1  1.0 -1.0       3.25      -0.00      -0.40       2.61    -254.04
                         -572.01      -0.00   -1604.03       1.84      -0.65

   29   5.1  1.0 -1.0       4.90      -0.00      -9.88      -1.33    1705.43
                        -1449.97      -0.00     632.67      14.59       9.04

   30   6.1  1.0 -1.0       0.34      -0.00      -0.60      -5.13     -16.48
                           14.90      -0.00      -4.28    1493.23       0.61

   31   7.1  1.0 -1.0    -779.38       0.00    1493.26       8.20      10.83
                           -7.04      -0.00       4.16       0.73   -1493.26

   32   8.1  1.0 -1.0      -4.35      -0.00       8.21   -1493.28      -1.85
                            0.42      -0.00      -3.33      -5.14      -8.39

   33   9.1  1.0 -1.0     -13.46    -485.57     -38.67     -23.19      -0.03
                           -0.04      -9.27       0.18    1215.28     -38.67

   34  10.1  1.0 -1.0    -418.02      16.91   -1193.93    -227.29      -0.93
                           -0.80     -90.87       0.93     -42.33   -1193.92

   35  11.1  1.0 -1.0      79.84       6.21     227.94   -1194.46       0.18
                            0.12    -477.24      -0.18     -15.54     228.09

   36  12.1  1.0 -1.0      -0.00       0.00       1.91      -0.00   -2444.23
                           -0.02      -0.00    2444.27      -0.29       1.91

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5638.89       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14215.36       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   39487.08       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   39487.12       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   39487.12
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 45)

    The diagonal matrixelements are shifted by   -192.69643515 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.007       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.005       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   40313.377       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   40313.419       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   40313.382       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   40313.397       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40313.449
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000    3496.542      59.104      23.792      -3.729      15.523    -935.687      -5.260

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                            -3496.542       0.000     -81.415      18.015       2.398     935.779      15.868      -3.099

    3    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                              -59.104      81.415       0.000   -1005.019     396.700      13.386     -19.640      -2.266

    4    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                              -23.792     -18.015    1005.019       0.000      -8.265      -4.421      11.008   -1552.332

    5    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                3.729      -2.398    -396.700       8.265       0.000      -1.471      42.880   -3934.923

    6    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                              -15.523    -935.779     -13.386       4.421       1.471       0.000    2114.905      52.241

    7    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                              935.687     -15.868      19.640     -11.008     -42.880   -2114.905       0.000     -15.833

    8    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                5.260       3.099       2.266    1552.332    3934.923     -52.241      15.833       0.000

    9    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                              -12.986     827.180      13.679     -36.123       3.540     -55.708    1725.350       9.811

   10    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -812.567     -15.393     -19.180    -348.685     120.503   -1695.895     -60.275       4.776

   11    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                              154.973     -13.131       3.387   -1821.165     721.761     318.755     -18.501      -5.024

   12    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               35.315      25.637   -1516.667      -0.002      -0.000      -0.001      -0.002      -0.075

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -60.423    3497.012     -11.968     -11.448      18.690       5.195    -935.746

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               60.423       0.000     -56.326    -845.989    -672.003      23.400      -4.255      14.460

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3497.012      56.326      -0.000     -15.612     -20.820    -935.559      -0.408     -18.321

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.968     845.989      15.612      -0.000      16.343      -2.631   -2631.815     -17.110

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.448     672.003      20.820     -16.343       0.000       0.280    3312.022      -2.207

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -18.690     -23.400     935.559       2.631      -0.280       0.000     -17.764   -2115.266

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.195       4.255       0.408    2631.815   -3312.022      17.764       0.000       6.458

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              935.746     -14.460      18.321      17.110       2.207    2115.266      -6.458      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.471     -14.233     826.995      46.581      40.649     -27.439      -9.456    1725.509

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              155.372      -2.067     -25.234    1532.117    1214.296    -336.726       7.741     -57.304

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              812.708     -13.232       8.121    -294.575    -249.261   -1693.161      -2.149     -16.545

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               24.433    1516.880      26.209       0.001      -0.002      -0.002       0.066       0.000

    1    1  |0 0>            -378.986       6.185      -4.665       2.545      21.563    2194.088       1.064      -6.237
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>             -70.143     -57.435    3396.683      -1.929       0.962       1.635      -6.147    1102.234
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.315      -6.470      -0.103   -2180.424    -324.725       5.736      -4.804      -3.567
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>            3903.936     -63.780      82.432       0.485       2.125     212.949       0.288      -3.128
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>             -54.115   -3396.952     -58.556       4.589       6.925       0.477   -1102.212      -6.146
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>           -5452.817      89.995    -125.444      -0.000      -0.000      -0.003       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              15.173     941.847      16.162      -0.563     -13.966      -0.854    2111.787      11.617
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>              21.926      15.806    -941.721       3.689      -1.883      -7.260      11.602   -2111.814
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.012       0.735       0.013    -359.264    2411.844     -23.301      15.310      -2.614
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    3496.542      59.104      23.792

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000   -3496.542       0.000     -81.415      18.015

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     -59.104      81.415       0.000   -1005.019

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000     -23.792     -18.015    1005.019       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       3.729      -2.398    -396.700       8.265

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000     -15.523    -935.779     -13.386       4.421

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     935.687     -15.868      19.640     -11.008

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       5.260       3.099       2.266    1552.332

    9    1  |1 1>+          41012.403       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000     -12.986     827.180      13.679     -36.123

   10    1  |1 1>+              0.000   41012.438       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000    -812.567     -15.393     -19.180    -348.685

   11    1  |1 1>+              0.000       0.000   41012.430       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     154.973     -13.131       3.387   -1821.165

   12    1  |1 1>+              0.000       0.000       0.000   41584.567       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      35.315      25.637   -1516.667      -0.002

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.007       0.000       0.000       0.000
                               12.986     812.567    -154.973     -35.315       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             -827.180      15.393      13.131     -25.637      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.005       0.000
                              -13.679      19.180      -3.387    1516.667      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000   40313.377
                               36.123     348.685    1821.165       0.002      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -3.540    -120.503    -721.761       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               55.708    1695.895    -318.755       0.001      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                            -1725.350      60.275      18.501       0.002      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -9.811      -4.776       5.024       0.075      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    2189.448    -416.896      54.046      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                            -2189.448       0.000      42.517     529.948      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              416.896     -42.517       0.000    2783.183      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -54.046    -529.948   -2783.183       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      80.440      57.709     159.143
                                3.471    -155.372    -812.708     -24.433       0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     -80.440       0.000    3496.588      -4.269
                               14.233       2.067      13.232   -1516.880       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     -57.709   -3496.588       0.000       4.008
                             -826.995      25.234      -8.121     -26.209       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000    -159.143       4.269      -4.008       0.000
                              -46.581   -1532.117     294.575      -0.001      -0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000    1068.710     -18.381      19.216     -40.373
                              -40.649   -1214.296     249.261       0.002       0.000      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000     -10.367      -3.040      -0.679   -4184.078
                               27.439     336.726    1693.161       0.002       0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000     -15.648     -10.663     935.862      -5.737
                                9.456      -7.741       2.149      -0.066       0.000      -0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000     -16.357    -935.838     -10.939      15.233
                            -1725.509      57.304      16.545      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -0.359      15.335      26.576    -293.402
                               -0.000    -418.087   -2188.490      90.103       0.000      -0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000     -16.417     140.993     814.774      13.314
                              418.087       0.000      70.879    2781.976       0.000      -0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      16.702     815.187    -141.104       3.865
                             2188.490     -70.879      -0.000    -531.467      -0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000   -1516.667      25.032     -34.891       0.002
                              -90.103   -2781.976     531.467      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |0 0>             -67.138       2.203       0.152      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      51.413    3191.709      54.951       2.148

    2    1  |0 0>              -9.900    -112.646    -591.447      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.107       1.152       0.017    1371.482

    3    1  |0 0>               0.039      -1.128       0.215      -0.009       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -72.615     -57.076    3396.634       1.928

    4    1  |0 0>             691.593     -23.752      -7.574      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      36.213    2280.309      39.005      -3.699

    5    1  |0 0>             -19.041    -591.173     112.913      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    3396.680     -55.597      71.682       1.263

    6    1  |0 0>            -686.697      23.919       8.780       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      87.838    5453.477      94.228      -0.000

    7    1  |0 0>             -54.690   -1688.472     322.356       2.698       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     941.715     -15.555      22.400       2.559

    8    1  |0 0>             -32.795    -321.437   -1689.221      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.112       0.002      -0.003    1909.163

    9    1  |0 0>              -0.045      -1.318       0.254   -3456.666       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      22.662      15.906    -941.704      -3.688

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -3.729      15.523    -935.687      -5.260      12.986     812.567    -154.973     -35.315

    2    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                                2.398     935.779      15.868      -3.099    -827.180      15.393      13.131     -25.637

    3    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                              396.700      13.386     -19.640      -2.266     -13.679      19.180      -3.387    1516.667

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -8.265      -4.421      11.008   -1552.332      36.123     348.685    1821.165       0.002

    5    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -1.471      42.880   -3934.923      -3.540    -120.503    -721.761       0.000

    6    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                1.471       0.000    2114.905      52.241      55.708    1695.895    -318.755       0.001

    7    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                              -42.880   -2114.905       0.000     -15.833   -1725.350      60.275      18.501       0.002

    8    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                             3934.923     -52.241      15.833       0.000      -9.811      -4.776       5.024       0.075

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                3.540     -55.708    1725.350       9.811       0.000    2189.448    -416.896      54.046

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                              120.503   -1695.895     -60.275       4.776   -2189.448       0.000      42.517     529.948

   11    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                              721.761     318.755     -18.501      -5.024     416.896     -42.517       0.000    2783.183

   12    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.001      -0.002      -0.075     -54.046    -529.948   -2783.183       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           40313.419       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   40313.382       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   40313.397       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   40313.449       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   41012.403       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   41012.438       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   41012.430       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   41584.567
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-          -1068.710      10.367      15.648      16.357       0.359      16.417     -16.702    1516.667
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-             18.381       3.040      10.663     935.838     -15.335    -140.993    -815.187     -25.032
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-            -19.216       0.679    -935.862      10.939     -26.576    -814.774     141.104      34.891
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 1>-             40.373    4184.078       5.737     -15.233     293.402     -13.314      -3.865      -0.002
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000     623.212      -1.565     -14.325   -1970.620      68.300      15.203      -0.001
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    6    1  |1 1>-           -623.212       0.000     -12.467      -7.697      19.214       5.031      -2.055      -0.021
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    7    1  |1 1>-              1.565      12.467       0.000    2115.178      21.458     313.762    1697.695       0.002
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>-             14.325       7.697   -2115.178       0.000      57.226    1696.733    -314.309      -0.001
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 1>-           1970.620     -19.214     -21.458     -57.226       0.000      28.483     -77.589   -2831.709
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

   10    1  |1 1>-            -68.300      -5.031    -313.762   -1696.733     -28.483       0.000   -2227.639      98.631
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   11    1  |1 1>-            -15.203       2.055   -1697.695     314.309      77.589    2227.639       0.000      36.207
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.001       0.021      -0.002       0.001    2831.709     -98.631     -36.207       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.274       0.547   -1281.506      -7.132      17.989     555.412    -106.069      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1725.846      15.407      -3.913       3.861      -0.016       0.202      -0.038      -0.024

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.963      -1.692       6.316   -1102.235     -10.337    -112.575    -591.449      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.512      -0.943    1793.708      10.195      12.761     396.834     -75.741       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               10.759    1102.204       0.803      -1.695     601.766     -20.684      -6.581      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.001      -0.000      21.850     674.617    -128.878      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               20.912    2111.734       1.042      -8.917   -1718.641      60.114      23.294       0.411

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1516.931     -17.248       9.423       2.095       0.204      -0.008      -0.006    3456.742

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.900       8.908     -11.853    2111.804     -34.144    -321.593   -1689.174      -0.002

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -60.423    3497.012     -11.968     -11.448      18.690       5.195    -935.746

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               60.423       0.000     -56.326    -845.989    -672.003      23.400      -4.255      14.460

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3497.012      56.326      -0.000     -15.612     -20.820    -935.559      -0.408     -18.321

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.968     845.989      15.612      -0.000      16.343      -2.631   -2631.815     -17.110

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.448     672.003      20.820     -16.343       0.000       0.280    3312.022      -2.207

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -18.690     -23.400     935.559       2.631      -0.280       0.000     -17.764   -2115.266

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.195       4.255       0.408    2631.815   -3312.022      17.764       0.000       6.458

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              935.746     -14.460      18.321      17.110       2.207    2115.266      -6.458      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.471     -14.233     826.995      46.581      40.649     -27.439      -9.456    1725.509

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              155.372      -2.067     -25.234    1532.117    1214.296    -336.726       7.741     -57.304

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              812.708     -13.232       8.121    -294.575    -249.261   -1693.161      -2.149     -16.545

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               24.433    1516.880      26.209       0.001      -0.002      -0.002       0.066       0.000

    1    1  |1 0>               0.000     -80.440     -57.709    -159.143    1068.710     -10.367     -15.648     -16.357
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 0>              80.440       0.000   -3496.588       4.269     -18.381      -3.040     -10.663    -935.838
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>              57.709    3496.588       0.000      -4.008      19.216      -0.679     935.862     -10.939
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    4    1  |1 0>             159.143      -4.269       4.008       0.000     -40.373   -4184.078      -5.737      15.233
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 0>           -1068.710      18.381     -19.216      40.373       0.000    -623.212       1.565      14.325
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              10.367       3.040       0.679    4184.078     623.212       0.000      12.467       7.697
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 0>              15.648      10.663    -935.862       5.737      -1.565     -12.467       0.000   -2115.178
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>              16.357     935.838      10.939     -15.233     -14.325      -7.697    2115.178       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    9    1  |1 0>               0.359     -15.335     -26.576     293.402   -1970.620      19.214      21.458      57.226
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   10    1  |1 0>              16.417    -140.993    -814.774     -13.314      68.300       5.031     313.762    1696.733
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>             -16.702    -815.187     141.104      -3.865      15.203      -2.055    1697.695    -314.309
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   12    1  |1 0>            1516.667     -25.032      34.891      -0.002      -0.001      -0.021       0.002      -0.001
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.007       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.005       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   40313.377       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   40313.419       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   40313.382       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   40313.397       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40313.449
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
                               79.074      60.218   -3570.251      -1.593       0.827       4.452      -5.058     912.645

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3396.701      55.926     -70.349       1.240      10.900    1102.204       0.521      -0.520

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               54.715    3396.939      58.670      -1.099       2.406       0.495   -1102.246      -5.913

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -30.429     -27.951    1623.889      -3.384       2.083       4.499     -11.138    2006.677

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.234      -6.465       0.136    -808.941   -2050.568      21.073      -9.953       0.597

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -126.964     -92.170    5452.744      -0.000      -0.000      -0.000      -0.000      -0.002

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.124      -0.733      -0.015   -2268.445     894.736      -6.049       5.884      -4.707

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -941.728      15.543     -21.665       2.601      20.629    2111.746       1.030      -7.267

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.170     941.842      16.274      -0.926      12.781       0.866   -2111.782     -11.869

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000    -378.986     -70.143       0.315    3903.936
                                3.471    -155.372    -812.708     -24.433       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       6.185     -57.435      -6.470     -63.780
                               14.233       2.067      13.232   -1516.880       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -4.665    3396.683      -0.103      82.432
                             -826.995      25.234      -8.121     -26.209       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       2.545      -1.929   -2180.424       0.485
                              -46.581   -1532.117     294.575      -0.001       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      21.563       0.962    -324.725       2.125
                              -40.649   -1214.296     249.261       0.002       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000    2194.088       1.635       5.736     212.949
                               27.439     336.726    1693.161       0.002       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       1.064      -6.147      -4.804       0.288
                                9.456      -7.741       2.149      -0.066       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -6.237    1102.234      -3.567      -3.128
                            -1725.509      57.304      16.545      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000     -67.138      -9.900       0.039     691.593
                               -0.000    -418.087   -2188.490      90.103       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       2.203    -112.646      -1.128     -23.752
                              418.087       0.000      70.879    2781.976       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.152    -591.447       0.215      -7.574
                             2188.490     -70.879      -0.000    -531.467       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.001      -0.009      -0.000
                              -90.103   -2781.976     531.467      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.359     -16.417      16.702   -1516.667       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000     -51.413       0.107      72.615     -36.213

    2    1  |1 0>              15.335     140.993     815.187      25.032       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -3191.709      -1.152      57.076   -2280.309

    3    1  |1 0>              26.576     814.774    -141.104     -34.891       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     -54.951      -0.017   -3396.634     -39.005

    4    1  |1 0>            -293.402      13.314       3.865       0.002       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -2.148   -1371.482      -1.928       3.699

    5    1  |1 0>            1970.620     -68.300     -15.203       0.001       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -5.274    1725.846       0.963       6.512

    6    1  |1 0>             -19.214      -5.031       2.055       0.021       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.547     -15.407       1.692       0.943

    7    1  |1 0>             -21.458    -313.762   -1697.695      -0.002       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000    1281.506       3.913      -6.316   -1793.708

    8    1  |1 0>             -57.226   -1696.733     314.309       0.001       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       7.132      -3.861    1102.235     -10.195

    9    1  |1 0>               0.000     -28.483      77.589    2831.709       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000     -17.989       0.016      10.337     -12.761

   10    1  |1 0>              28.483       0.000    2227.639     -98.631       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000    -555.412      -0.202     112.575    -396.834

   11    1  |1 0>             -77.589   -2227.639       0.000     -36.207       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     106.069       0.038     591.449      75.741

   12    1  |1 0>           -2831.709      98.631      36.207       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.024       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -79.074    3396.701     -54.715      30.429

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -60.218     -55.926   -3396.939      27.951

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    3570.251      70.349     -58.670   -1623.889

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       1.593      -1.240       1.099       3.384

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.827     -10.900      -2.406      -2.083

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -4.452   -1102.204      -0.495      -4.499

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       5.058      -0.521    1102.246      11.138

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -912.645       0.520       5.913   -2006.677

    9    1  |1 1>-          41012.403       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -11.352     601.771     -19.147       4.184

   10    1  |1 1>-              0.000   41012.438       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -118.354     -20.701    -591.157      53.945

   11    1  |1 1>-              0.000       0.000   41012.430       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -621.638      -6.338     112.930     282.726

   12    1  |1 1>-              0.000       0.000       0.000   41584.567       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.001

    1    1  |0 0>               0.000       0.000       0.000       0.000    5638.818       0.000       0.000       0.000
                               11.352     118.354     621.638       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5638.864       0.000       0.000
                             -601.771      20.701       6.338       0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5638.871       0.000
                               19.147     591.157    -112.930      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5638.896
                               -4.184     -53.945    -282.726      -0.001      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.058      -1.132       0.172      -0.034      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.106    -128.511    -674.916      -0.001      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.249       1.310      -0.256    3456.722      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1718.660     -59.864     -21.976      -0.412      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -54.688   -1688.454     322.562       2.698      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45

    1    1  |1 1>+            -54.115   -5452.817      15.173      21.926       0.012
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          -3396.952      89.995     941.847      15.806       0.735
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+            -58.556    -125.444      16.162    -941.721       0.013
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              4.589      -0.000      -0.563       3.689    -359.264
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              6.925      -0.000     -13.966      -1.883    2411.844
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.477      -0.003      -0.854      -7.260     -23.301
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+          -1102.212       0.000    2111.787      11.602      15.310
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -6.146      -0.000      11.617   -2111.814      -2.614
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            -19.041    -686.697     -54.690     -32.795      -0.045
                                0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+           -591.173      23.919   -1688.472    -321.437      -1.318
                                0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+            112.913       8.780     322.356   -1689.221       0.254
                                0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000       0.000       2.698      -0.001   -3456.666
                                0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                            -3396.680     -87.838    -941.715       0.112     -22.662

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                               55.597   -5453.477      15.555      -0.002     -15.906

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                              -71.682     -94.228     -22.400       0.003     941.704

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                               -1.263       0.000      -2.559   -1909.163       3.688

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                              -10.759      -0.000     -20.912   -1516.931      -1.900

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                            -1102.204      -0.000   -2111.734      17.248      -8.908

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                               -0.803       0.001      -1.042      -9.423      11.853

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                                1.695       0.000       8.917      -2.095   -2111.804

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                             -601.766     -21.850    1718.641      -0.204      34.144

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                               20.684    -674.617     -60.114       0.008     321.593

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                                6.581     128.878     -23.294       0.006    1689.174

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.411   -3456.742       0.002

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.234     126.964       0.124     941.728     -15.170

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                6.465      92.170       0.733     -15.543    -941.842

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                               -0.136   -5452.744       0.015      21.665     -16.274

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                              808.941       0.000    2268.445      -2.601       0.926

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                             2050.568       0.000    -894.736     -20.629     -12.781

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                              -21.073       0.000       6.049   -2111.746      -0.866

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                9.953       0.000      -5.884      -1.030    2111.782

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                               -0.597       0.002       4.707       7.267      11.869

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.058      13.106      -0.249   -1718.660      54.688

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                1.132     128.511      -1.310      59.864    1688.454

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                               -0.172     674.916       0.256      21.976    -322.562

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.034       0.001   -3456.722       0.412      -2.698

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5638.889       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14215.363       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   39487.083       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   39487.117       0.000
                               -0.000      -0.000      -0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   39487.118
                               -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.74508057    -0.04864542   -10676.44      0.00000000        0.00      0.0000
    2  -192.71324071    -0.01680557    -3688.40      0.03183985     6988.04      0.8664
    3  -192.71324071    -0.01680556    -3688.39      0.03183986     6988.04      0.8664
    4  -192.71324069    -0.01680554    -3688.39      0.03183988     6988.04      0.8664
    5  -192.69909186    -0.00265672     -583.08      0.04598870    10093.35      1.2514
    6  -192.69909173    -0.00265658     -583.05      0.04598884    10093.38      1.2514
    7  -192.69909103    -0.00265588     -582.90      0.04598954    10093.54      1.2514
    8  -192.69909102    -0.00265587     -582.90      0.04598955    10093.54      1.2514
    9  -192.69909099    -0.00265585     -582.89      0.04598957    10093.54      1.2514
   10  -192.65352817     0.04290698     9416.99      0.09155240    20093.43      2.4913
   11  -192.65352815     0.04290699     9417.00      0.09155241    20093.43      2.4913
   12  -192.65352810     0.04290705     9417.01      0.09155247    20093.44      2.4913
   13  -192.65352756     0.04290759     9417.13      0.09155301    20093.56      2.4913
   14  -192.65352733     0.04290781     9417.18      0.09155323    20093.61      2.4913
   15  -192.61533638     0.08109876    17799.12      0.12974418    28475.56      3.5305
   16  -192.55197432     0.14446083    31705.49      0.19310624    42381.92      5.2547
   17  -192.55197421     0.14446093    31705.51      0.19310635    42381.95      5.2547
   18  -192.55197421     0.14446094    31705.51      0.19310636    42381.95      5.2547
   19  -192.54333966     0.15309548    33600.57      0.20174090    44277.01      5.4896
   20  -192.54333966     0.15309549    33600.58      0.20174091    44277.01      5.4896
   21  -192.54333957     0.15309557    33600.59      0.20174099    44277.03      5.4897
   22  -192.52944201     0.16699313    36650.76      0.21563855    47327.19      5.8678
   23  -192.52778612     0.16864903    37014.18      0.21729445    47690.62      5.9129
   24  -192.52778610     0.16864904    37014.19      0.21729446    47690.62      5.9129
   25  -192.52778606     0.16864909    37014.20      0.21729451    47690.63      5.9129
   26  -192.52778606     0.16864909    37014.20      0.21729451    47690.63      5.9129
   27  -192.52778598     0.16864917    37014.21      0.21729459    47690.65      5.9129
   28  -192.49749158     0.19894357    43663.07      0.24758899    54339.50      6.7372
   29  -192.49749150     0.19894364    43663.08      0.24758906    54339.52      6.7372
   30  -192.49749143     0.19894371    43663.10      0.24758913    54339.53      6.7372
   31  -192.49347841     0.20295673    44543.85      0.25160215    55220.29      6.8464
   32  -192.49347841     0.20295673    44543.85      0.25160215    55220.29      6.8464
   33  -192.49347830     0.20295685    44543.88      0.25160227    55220.32      6.8464
   34  -192.49347826     0.20295688    44543.89      0.25160230    55220.32      6.8464
   35  -192.49347824     0.20295691    44543.89      0.25160232    55220.33      6.8464
   36  -192.49347814     0.20295701    44543.91      0.25160243    55220.35      6.8465
   37  -192.49347812     0.20295702    44543.92      0.25160244    55220.35      6.8465
   38  -192.49263784     0.20379731    44728.34      0.25244273    55404.77      6.8693
   39  -192.49263783     0.20379732    44728.34      0.25244274    55404.78      6.8693
   40  -192.49263783     0.20379732    44728.34      0.25244274    55404.78      6.8693
   41  -192.49263780     0.20379734    44728.35      0.25244276    55404.78      6.8693
   42  -192.49263779     0.20379735    44728.35      0.25244277    55404.78      6.8693
   43  -192.49120034     0.20523481    45043.83      0.25388023    55720.27      6.9084
   44  -192.49120032     0.20523483    45043.84      0.25388025    55720.27      6.9084
   45  -192.49120032     0.20523483    45043.84      0.25388025    55720.27      6.9084

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.53870533 -0.00012697 -0.01152490  0.01630775  0.07044641 -0.62712203  0.01290304 -0.00027568
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00889100 -0.01937834 -0.70521049  0.00492309 -0.00126507  0.01040263  0.01066449  0.00288977
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.01239312 -0.00838336 -0.00496144 -0.70533554  0.00156620 -0.01457025 -0.54640369  0.00956617
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000001  0.00261758 -0.00007803 -0.00005757 -0.00006852 -0.00001765  0.00113280  0.06195747
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000001 -0.01757642  0.00039616  0.00021833 -0.00061123 -0.00007017  0.00013223  0.00922715
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000003  0.00017020 -0.00001157  0.00005088 -0.06225783 -0.00699361 -0.00010268 -0.00015800
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000001  0.00032539  0.01539274  0.00006749 -0.00003631 -0.00000052  0.00025912  0.00024860
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000001  0.00019714 -0.00007170  0.01539471  0.00021123  0.00001583 -0.03131862  0.00064742
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.02405275 -0.00000543 -0.00026160  0.00015342 -0.00069267  0.00616713 -0.00010454  0.00000182
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00083779 -0.00020471 -0.00804327  0.00145003  0.00002504 -0.00021556 -0.00101938 -0.00001197
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00030755  0.00013414  0.00145132  0.00804892  0.00000817 -0.00008015 -0.00527863  0.00009756
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000001 -0.04865626  0.00134099  0.00056888  0.00000001 -0.00000000  0.00000000  0.00000019
                           0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00867792  0.00309693  0.70545377  0.00718856  0.00807809  0.00608586  0.00120657 -0.00967364

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.53877139 -0.01223868 -0.01130719  0.00002386  0.50794527  0.37461814 -0.00033067 -0.00922517

   3    1  |1 0>           0.00000000 -0.00000017  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                           0.00930917  0.70542991 -0.00321076 -0.00808153  0.00877565  0.00638624  0.00953844  0.54649739

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00013143 -0.00015875  0.01391720  0.00001862 -0.00000990  0.03897336 -0.00062377

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.00013573 -0.00026472  0.01105745  0.00020798 -0.00030137 -0.04904059  0.00082775

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00037442 -0.01538896 -0.00027727  0.00000946 -0.00001780  0.00051912  0.00005941

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000007 -0.00008580 -0.00000584  0.00006965 -0.03718642  0.05042104 -0.00027192  0.00018881

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.01539062 -0.00037131 -0.00016414 -0.00020899  0.00028835 -0.00043648 -0.03132286

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00076534  0.00007020  0.00817571  0.00008289 -0.00015792 -0.00011769 -0.00001224  0.00007257

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.02362973 -0.00153709 -0.00024247  0.00001506 -0.00490686 -0.00361872  0.00001942  0.00100607

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00451421 -0.00803401  0.00011686  0.00009290  0.00093741  0.00069043  0.00009180  0.00528186

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00055533  0.00049840 -0.04867191 -0.00000000  0.00000001 -0.00000066  0.00000002

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01254324 -0.00331029 -0.00690853  0.70535643  0.01341320 -0.00602575 -0.54628596  0.01831743

   2    1  |1 1>-         -0.00000000  0.00000017 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                          -0.00910588 -0.70520992  0.01955142 -0.00339568  0.00977801 -0.00435436  0.01852812  0.54634082

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.53869841 -0.01199757  0.00016963  0.01636638 -0.57832267  0.25254557 -0.01241708  0.00970319

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00046386  0.01653036  0.00018097 -0.00003946 -0.00010241 -0.00002536 -0.00011634

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00009072 -0.00652552  0.00008540  0.00003341  0.00004596  0.00015810 -0.00015122

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00018325 -0.00011187  0.01539401  0.00008910  0.00020568  0.03132166 -0.00052914

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.01538956  0.00039316  0.00018713 -0.00014075 -0.00031726 -0.00053049 -0.03132243

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00008612  0.00003730 -0.00005163  0.02507297  0.05741532 -0.00012821 -0.00016461

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00045906 -0.00016675 -0.00007652  0.00817698 -0.00010803  0.00004883  0.00537051 -0.00026456

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00450133 -0.00803086  0.00022416 -0.00019086 -0.00106438  0.00046558 -0.00027905 -0.00527577

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.02364013  0.00153240 -0.00004124 -0.00012245 -0.00558976  0.00244074 -0.00005126  0.00101013

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000002  0.00134664  0.04865672  0.00048288 -0.00000001 -0.00000001 -0.00000001 -0.00000001

   1    1  |0 0>           0.00000031 -0.00000001 -0.00000001 -0.00000000  0.62937516  0.00951095  0.00068729 -0.00004805
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000001  0.00000002 -0.00071082  0.00152273  0.62934331 -0.01095961
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000059  0.00000002 -0.00000000  0.00003696 -0.00002926  0.01095373  0.62934303
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002

   4    1  |0 0>           0.00000035  0.00000000 -0.00000001  0.00000001 -0.00950926  0.62937083 -0.00153295  0.00005593
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000001 -0.00000059 -0.00000000 -0.00012047  0.00015474  0.00164944  0.00231329
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.35630483  0.00000000 -0.00000000 -0.00000000 -0.00000027 -0.00000032  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00089675  0.03151353  0.00030872  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.00035978  0.00031906 -0.03152407 -0.00000000  0.00000000 -0.00000002 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.03151295  0.00089313  0.00036869 -0.00000000  0.00000000 -0.00000000 -0.00000012
                           0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.00884235 -0.01031877  0.00000142 -0.00715103 -0.03923589  0.51470283 -0.20635316  0.00000571
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.54655542 -0.00815739 -0.00079892 -0.44707876  0.00056974 -0.00846768  0.00340573  0.00035406
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.01082274  0.44701193 -0.00290731 -0.00831814 -0.00109267  0.01174030 -0.00474723  0.00000595
                          -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00036111  0.00019931  0.02712163 -0.00005723 -0.00002956  0.00000045  0.00000001  0.00048334
                           0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00023116  0.00001367  0.00403926 -0.00008608 -0.00026837 -0.00002006  0.00000001  0.00065497
                           0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00002290 -0.00005958 -0.00006824 -0.00000060 -0.02734123 -0.00208446  0.00000007  0.00021154
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.03132398  0.00009556  0.00005920  0.01371043 -0.00001090 -0.00000180 -0.00000001 -0.46425377
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00025440 -0.01370998  0.00013304  0.00009515  0.00009991  0.00001027  0.00000000 -0.00239178
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00017143  0.00042710  0.00000120  0.00071643  0.00198290 -0.02601044  0.01597361  0.00011753
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00527709  0.00425765  0.00001469  0.02218832 -0.00006682  0.00090376 -0.00055639  0.00363228
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00102193  0.02219757 -0.00015171 -0.00426939 -0.00003548  0.00032780 -0.00020424 -0.00069201
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000002  0.00000012  0.00000000  0.00000000  0.00000001 -0.00000001  0.00066818
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.54658732 -0.00053614  0.00956067 -0.44705277 -0.00694520 -0.00466655 -0.00332411 -0.00035423

   2    1  |1 0>           0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00890612 -0.00018652  0.00761132  0.00742456 -0.42617632 -0.29136679 -0.20637800  0.00000582

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000084 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00950090 -0.00290836 -0.44703828 -0.00943073 -0.00737574 -0.00507946 -0.00356591 -0.00000681

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00006395  0.01705978 -0.00008637 -0.00000757 -0.00000101 -0.00001291 -0.00000000  0.00070307

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00043136 -0.02146688  0.00012689  0.00016315  0.00009764 -0.00012467  0.00000001  0.00471369

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.03132363  0.00021025 -0.00002236  0.01371029  0.00000879 -0.00001016  0.00000000  0.46423595

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000333 -0.00011711  0.00007577  0.00001080 -0.01547613  0.02263677 -0.00000000  0.00021785

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00006798 -0.00004108 -0.01371088 -0.00002108 -0.00008730  0.00012578 -0.00000000  0.00015487

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00537491  0.00002790 -0.00038834  0.02259187  0.00068928  0.00046714  0.00050827 -0.00370036

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00018094 -0.00001621 -0.00423125 -0.00078185  0.02115507  0.01446319  0.01569254  0.00012619

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00003913 -0.00014628 -0.02220330 -0.00024594 -0.00404205 -0.00276537 -0.00299789  0.00003350

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000030 -0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00008172

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00133061  0.44697604 -0.01009280 -0.00057796 -0.01102431  0.00509918  0.00480474  0.00000014

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000084 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00309382 -0.01027106 -0.44703224  0.00086396 -0.00787322  0.00373167  0.00348804 -0.00000134

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00015395  0.01037983 -0.00778028 -0.00009621  0.46535411 -0.22336875 -0.20635038 -0.00000002

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.02299021  0.00000164 -0.00001372 -0.01006246 -0.00002256 -0.00004263 -0.00000001 -0.49867911

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.05827850  0.00010092  0.00002916 -0.02550731  0.00000591  0.00002348 -0.00000000  0.19671581

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00051876  0.01371050 -0.00008254  0.00024340  0.00003506  0.00008187 -0.00000000 -0.00116991

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00016633 -0.00008221 -0.01371081 -0.00012374 -0.00006693 -0.00014016 -0.00000001 -0.00082102

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000860 -0.00003712 -0.00007959  0.00000289  0.01186588  0.02472139 -0.00000004 -0.00104734

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00001257 -0.02258594  0.00086495  0.00002857  0.00045838 -0.00021026 -0.00030487  0.00000150

  10    1  |1 1>-          0.00000000  0.00000000  0.00000004  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00002993  0.00093174  0.02218835 -0.00004428  0.00440123 -0.00211037 -0.00298935 -0.00001395

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000677  0.00026868 -0.00424111  0.00000287  0.02311334 -0.01109477 -0.01569950  0.00000259

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000087  0.00000000 -0.00000000 -0.00000044  0.00000002 -0.00000001 -0.00000001  0.17702846

   1    1  |0 0>           0.00011650  0.00124425 -0.00006911 -0.00014262  0.77303638 -0.01597761  0.00000009 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00160943  0.77318674 -0.00500133 -0.00105557 -0.00121361  0.00152512 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00234164  0.00500113  0.77319016 -0.00000326  0.00006449  0.00016531  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000145 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00015273 -0.00150087 -0.00015691 -0.00007603  0.01598012  0.77303818  0.00000007 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.62943564  0.00105565 -0.00000360  0.77320612  0.00014251  0.00007515  0.00000000 -0.00000015
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000002  0.93348077 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000008 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.50017068
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000006 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00017162
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000010 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00227851
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00000004  0.00000824  0.00012051  0.00073458  0.00000591 -0.01676527  0.00128217  0.01681135
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000129  0.00000583  0.02356960  0.01166600 -0.00014644  0.00027673 -0.00009896  0.00002705
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000264 -0.00035390  0.01167075 -0.02356124 -0.00036172 -0.00038572 -0.00005953 -0.00000156
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.07897150 -0.00139601 -0.00053589  0.00055153 -0.03041125 -0.00000041  0.72443584 -0.03546201
                           0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.53018843  0.00433886  0.00140861 -0.00259474  0.20416120  0.00000006  0.10816389  0.00105505
                          -0.00000009 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00513307  0.00155796  0.00017474 -0.00056737 -0.00198010 -0.00000503  0.02641045  0.65396020
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00126838 -0.00238198  0.16113011  0.07748400  0.00013312 -0.00000052  0.00180660 -0.00312486
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00402312  0.46423180  0.07747510 -0.16110862 -0.00266951  0.00000046  0.00208223  0.00212903
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000029  0.00007040  0.01030774  0.01546632  0.00003829  0.57623930  0.01212222  0.15916716
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000846  0.00069024  0.40451488  0.29551479 -0.00157389 -0.02007093 -0.00100449 -0.00207445
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00002939  0.00363340 -0.29580222  0.40456891  0.00726881 -0.00736778  0.00080090  0.00109575
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.17701553 -0.00131080  0.00559797 -0.00497487  0.50470003 -0.00000022  0.00000376 -0.00000044
                           0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000691  0.00000022 -0.02376414 -0.01125718 -0.00045964 -0.00027006  0.00068250  0.00058925

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000601  0.00000004  0.00038717  0.00019027 -0.00044689 -0.01676886  0.00115299  0.02040680

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00035433 -0.00000262 -0.00025495 -0.00051827  0.02629263 -0.00028971 -0.03228869  0.00197294

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00229392  0.41969857  0.06904879 -0.14613038 -0.00189418 -0.00000053 -0.00060981 -0.00582692

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00286564  0.33346978  0.05341980 -0.11680173 -0.00190353  0.00000062  0.00103239  0.00345739

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00018571 -0.00395004 -0.16216798 -0.07528078  0.00044185 -0.00000024 -0.00038870 -0.00362632

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00259120  0.00209085  0.00027418 -0.00076823  0.00099289  0.00000758  0.03798890  0.61253674

   8    1  |1 0>          -0.00000008 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.46424025 -0.00297652 -0.00135115  0.00186578 -0.17877757  0.00000034 -0.36599439  0.02172578

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00005678  0.00000191 -0.45273043 -0.21449184 -0.00665415  0.01833537  0.00526719  0.00868163

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00069327  0.00000503  0.01472590  0.00839833 -0.09383575  0.56609042  0.06287584  0.18710023

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00363879  0.00002661  0.00032725  0.00759621 -0.49231408 -0.10814596  0.29942457 -0.05135093

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00131047  0.17702749 -0.21617304  0.45606495  0.00689326 -0.00000003  0.00000034  0.00000015

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000309  0.00035417 -0.01126509  0.02376046 -0.00006440  0.00039036 -0.00056398  0.00049980

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00035441 -0.00000322 -0.00010579 -0.00013289 -0.02629833  0.00028344 -0.03226841  0.00224903

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000606  0.00000819 -0.00026409  0.00055100 -0.00044604 -0.01676605 -0.00244723 -0.03721446

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00207351  0.00072729  0.17361490  0.08209280 -0.00118786  0.00000003 -0.00052776  0.00253637

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00194671  0.00445297 -0.06772105 -0.03403295 -0.00060759  0.00000051  0.00041986  0.00609217

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00363332  0.46422305  0.07704918 -0.16130712 -0.00251862 -0.00000039 -0.00079911 -0.00467094

   7    1  |1 1>-          0.00000008  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.46423120  0.00366380  0.00169616 -0.00199507  0.17877452  0.00000005 -0.36623731  0.01855375

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00261626 -0.00157804  0.00010847  0.00071731  0.00101058  0.00001519  0.00560782 -0.04114222

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00009062  0.00369861 -0.21471080  0.45276407 -0.00909587 -0.01099794 -0.01021718  0.00349137

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00363975 -0.00010194  0.00201459 -0.01091430 -0.49229710 -0.10783755 -0.29699122  0.08109204

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00069496 -0.00005251  0.00378532 -0.00671403  0.09391516 -0.56634499  0.07494896  0.34360289

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00066892 -0.00007692  0.45608335  0.21622611 -0.00292733 -0.00000046 -0.00000005  0.00000039

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000036  0.00244263  0.05448278
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000038  0.00000001 -0.00000003 -0.00000000  0.00000005  0.00015181  0.00060042
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000021  0.00000000  0.00000000 -0.00000000  0.00000019  0.00000005 -0.05844830  0.00292071
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000118 -0.00177473 -0.02116324
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000015 -0.00000007  0.00000000  0.00000005 -0.00003254  0.00052976
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04074943 -0.00000003  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00227973 -0.00015475  0.33166259  0.15729178 -0.00241479 -0.00000005  0.00000001  0.00000003
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00370295  0.50016098 -0.15725084  0.33165333  0.00501363 -0.00000001  0.00000005  0.00000002
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.50015830 -0.00370369  0.00433004 -0.00349542  0.36703276 -0.00000001 -0.00000053 -0.00000005
                           0.00000009  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.00032628  0.00046338  0.03332930  0.00048787  0.00073723  0.00001107  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.03195362  0.00505128 -0.00056551  0.03121198  0.00117456 -0.00005114 -0.00000014  0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00505810 -0.03195268  0.00063844  0.00118525 -0.03120353 -0.00051802 -0.00000001 -0.00000003
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00251857 -0.00179975 -0.00999388 -0.00018534  0.00102791 -0.03844908  0.00111773  0.00072724
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00232265  0.00036703 -0.00468083 -0.00070590 -0.00449242  0.25816859  0.00157885  0.00056048
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00516465 -0.00623312 -0.33071016 -0.00008297 -0.00073779 -0.00250664 -0.00085857  0.00154536
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.36280434 -0.05310422  0.00001820  0.22601244  0.00592762  0.00105005 -0.05668259 -0.00059136
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.05311571  0.36281055  0.00257460  0.00594465 -0.22596744 -0.00402625  0.00123526 -0.01366131
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00802972  0.00378271  0.31548195 -0.01340003 -0.00841859 -0.00010878  0.00000088 -0.00000020
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.28986333  0.09872882 -0.01092541 -0.41726169 -0.08847020 -0.00051823  0.00001606 -0.00000246
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.09881436  0.28997528 -0.00281178  0.08869807 -0.41738796 -0.00709415 -0.00000381 -0.00000567
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000006  0.00000013 -0.00000006  0.00019552 -0.00142864  0.08648157  0.00000002 -0.00000002
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.03202380  0.00449987 -0.00053100 -0.03122071 -0.00063483 -0.00066709  0.00000042 -0.00000003

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00071085 -0.00022881 -0.03125924  0.00051406  0.00001939 -0.00052873 -0.00000000  0.00000001

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00063146  0.00015345 -0.00011121 -0.00064765 -0.00053052  0.03122241  0.00000001  0.00000001

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000022
                           0.06318268 -0.45182282 -0.00197380  0.00397873 -0.20432806 -0.00298846 -0.03539665 -0.69673981

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003
                          -0.08354894  0.56804420 -0.00001902  0.00113928 -0.16239981 -0.00288627  0.00002870 -0.09215536

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000003
                          -0.36236699 -0.05614292  0.00003077 -0.22606159 -0.00285095 -0.00031339  0.68993691 -0.03498681

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00461057 -0.00673810  0.40139312 -0.00008669 -0.00103163  0.00125268  0.00114658 -0.00241908

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00024726 -0.00054568  0.00711588  0.00027190  0.00352541 -0.22604746 -0.00052700  0.00000245

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.30311189  0.04257582 -0.00965722  0.42644129  0.00870123  0.00732150  0.00000816 -0.00000034

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01209002 -0.00300708 -0.29137564 -0.01467214 -0.00162580  0.07983639  0.00000013  0.00000042

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00259921 -0.00076045  0.05152893 -0.00450515 -0.00703515  0.41914913  0.00000030 -0.00000046

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000135  0.00000943  0.00000009 -0.00178902  0.08646542  0.00143228 -0.00000015 -0.00000184

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00449880 -0.03203368 -0.00007268 -0.00064691  0.03122340  0.00001406  0.00000001  0.00000005

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00018103  0.00057243  0.00046647 -0.00005991  0.00000052 -0.03123377 -0.00000001  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00037062 -0.00022738 -0.00207248 -0.00001608  0.00072703 -0.00052763 -0.00000001 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000003
                           0.26653655  0.03707816 -0.00142955  0.24280513  0.00478254 -0.00056029  0.71763293 -0.03506106

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.67600307  0.09142400  0.00023911 -0.09573604 -0.00418239 -0.00114629  0.05758654  0.00103815

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000023
                           0.04417071 -0.36404261  0.00106818  0.00534970 -0.22598191 -0.00383768  0.03462260  0.70951327

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00283022  0.00098904  0.00075375  0.00005971 -0.00385287  0.22604687  0.00127552  0.00080809

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00085312 -0.00104125  0.73218751  0.00049188  0.00076723  0.00128166  0.00021724 -0.00089797

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.04258169 -0.30320915 -0.00070655  0.00885093 -0.42658789  0.00650786  0.00000010  0.00000356

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00291152  0.01014634  0.00771621  0.00063951  0.00793146  0.41919385 -0.00000035  0.00000049

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00286373 -0.00094682  0.01859291 -0.00029374  0.00677336 -0.07994576  0.00000066  0.00000027

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00001320  0.00000209 -0.00000017  0.08646949  0.00179162 -0.00016579 -0.00000644  0.00000030

   1    1  |0 0>          -0.00043028 -0.00058079 -0.02122647 -0.00000002  0.00000001  0.00000004 -0.00000005 -0.00000005
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00815700  0.05795162  0.00013830 -0.00000001 -0.00000032  0.00000001  0.00000004  0.00000015
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00007451  0.00011053  0.00076925  0.00000001  0.00000001  0.00000023  0.00000005 -0.00000005
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00010132  0.00036833 -0.05453650 -0.00000003 -0.00000002  0.00000001  0.00000002 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.05795341  0.00815196 -0.00004180 -0.00000053 -0.00000003 -0.00000001 -0.00000127  0.00000010
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000003  0.00000003  0.00000088 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000284  0.00000046 -0.00000008  0.67502501  0.01407527 -0.00182006  0.00000156 -0.00000010
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000048  0.00000361 -0.00000000 -0.01404309  0.67493190  0.01117890 -0.00000005 -0.00000041
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000002 -0.00000002  0.00000005  0.00205246 -0.01113859  0.67508013  0.00000002  0.00000007
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+          0.00000001 -0.00000001 -0.00000043  0.00000001  0.00000001  0.00398548  0.00154070  0.00026329
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000001 -0.00000033 -0.00000000  0.00000001  0.00000000  0.00146744 -0.00352168 -0.00311237
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000032  0.00056057 -0.00309364  0.00375032
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.54075279 -0.00134259 -0.00146206  0.21612243  0.00053250 -0.01737321 -0.00850408  0.02650239
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.34696373 -0.00081476 -0.00509333  0.68830198  0.00347531 -0.00504399 -0.00116846  0.00429909
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00191605  0.00110760 -0.57733531 -0.00696111 -0.00049967 -0.22400138 -0.05155979 -0.04298780
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00065156  0.72808933  0.00163546  0.00182499 -0.00181450  0.05485123 -0.12626924 -0.10948409
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

   8    1  |1 1>+          0.00022230  0.00191714 -0.00181588 -0.00373960  0.73014856  0.01688179 -0.11024969  0.13525033
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

   9    1  |1 1>+          0.00000083  0.00000020 -0.00004482  0.00000067  0.00000073  0.51825449  0.19018140  0.02990203
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000003  0.00001384  0.00000123  0.00000044  0.00000342  0.16689780 -0.38295090 -0.47945820
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002

  11    1  |1 1>+          0.00000053 -0.00000257  0.00000073 -0.00000012  0.00002121 -0.10009713  0.47294540 -0.40858407
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002

  12    1  |1 1>+          0.00000569 -0.00000005 -0.00000005 -0.00001373  0.00000002 -0.00000053 -0.00000053 -0.00000039
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000058  0.00000001  0.00000002 -0.00000001  0.00156396 -0.00354473 -0.00304260

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000001  0.00000047  0.00000001 -0.00000001  0.00112638  0.00001404  0.00045081

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000034  0.00000000 -0.00000000 -0.00000086  0.00000000 -0.00018613 -0.00020525  0.00031514

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                           0.00031462 -0.00288021 -0.00159620  0.00022229 -0.10037908 -0.01951704  0.13637360 -0.16886689

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.00121894  0.00376140 -0.00017491  0.00390241 -0.65424483  0.02718657 -0.17234897  0.21154438

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00086451  0.23678732 -0.00081293 -0.00001332  0.00508656  0.05501004 -0.12524866 -0.11066195

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00044499 -0.00133235  0.57734901 -0.00390340 -0.00082533 -0.32491441 -0.10851366 -0.04203265

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.23960801  0.00061299  0.00291320  0.68984418  0.00408368  0.00656138  0.00460659 -0.01386067

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                          -0.00000059 -0.00000014  0.00000118 -0.00000007 -0.00000037  0.20428192 -0.45819570 -0.39211951

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000096  0.00000020  0.00004818 -0.00000650 -0.00000048  0.14454793  0.01301991  0.05619545

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000366 -0.00000059 -0.00000934 -0.00003284  0.00000003  0.00028330  0.02258709 -0.05284849

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000007 -0.00000019  0.00000001  0.00000003  0.00000351 -0.00000211  0.00001416 -0.00001893

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00000001 -0.00000001  0.00000002 -0.00000002  0.00055780 -0.00303423  0.00381759

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000025  0.00000001  0.00000001  0.00000121 -0.00000000 -0.00016219 -0.00004721  0.00032914

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000000 -0.00000002  0.00000001  0.00000000 -0.00511243 -0.00155250 -0.00071379

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00174457 -0.21873908 -0.00070381 -0.00092217 -0.00303900 -0.04027037  0.09333307  0.07967365

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00226550  0.60492564  0.00092111 -0.00174364 -0.00010929 -0.10275578  0.23701039  0.20105261

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00067979 -0.00171928  0.00079838 -0.00008732 -0.16939964 -0.01512710  0.10707141 -0.13772428

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.72784964  0.00081953  0.00210687 -0.05955001  0.00067384  0.00858918  0.00614814 -0.01239860

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00319203  0.00053600 -0.57732127 -0.00028503 -0.00239850 -0.10086114 -0.05664220  0.00059165

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003
                           0.00000003 -0.00000039  0.00000038 -0.00000004 -0.00002536  0.06880569 -0.39311435  0.49361386

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00001363 -0.00000008 -0.00000013  0.00000634  0.00000112  0.09112368  0.03399046  0.05043864

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000220 -0.00000015  0.00000170 -0.00000045  0.00000015  0.65504639  0.19594894  0.08710972

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000005 -0.00000587 -0.00000012  0.00000005 -0.00000007  0.00000933 -0.00002207 -0.00001962

   1    1  |0 0>          -0.00000002 -0.00000000 -0.00000143 -0.00000002  0.00000003 -0.03521547 -0.00862144 -0.00646525
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000005 -0.00000003  0.00000000 -0.00000002 -0.00000157  0.00462932 -0.03127102  0.03873234
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000013 -0.00000003  0.00000002 -0.00000120 -0.00000001  0.00243558  0.00132368 -0.00379996
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000006 -0.00000004 -0.00000313  0.00000007  0.00000004  0.03184108  0.01278582  0.00283736
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000003 -0.00000064  0.00000004 -0.00000005  0.00000005 -0.01571985  0.03620841  0.03104836
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000003  0.00000842  0.00000014 -0.00000002  0.00000017 -0.00000690  0.00001706  0.00001506
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000008  0.00000010 -0.00000001  0.00000001 -0.00001439  0.00000156 -0.00000970  0.00001328
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000522 -0.00000004 -0.00000009  0.00000462 -0.00000004  0.00000016  0.00000054  0.00000028
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45

   1    1  |1 1>+         -0.00367354  0.00074509  0.00034214 -0.00004259  0.00051222
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00002506  0.00022986  0.02179971 -0.00020430  0.00074566
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00052529 -0.00026693  0.00076755  0.00170474 -0.02173006
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.04913503  0.34343437  0.00005300  0.00573909  0.00039250
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00478898  0.05135253 -0.00006431 -0.03847663 -0.00299395
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.26203857  0.02769180  0.00001422  0.00036188  0.00014514
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00331315  0.00897437 -0.03378769  0.00006871 -0.00079251
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.01473438 -0.00978803 -0.00079502 -0.00260363  0.03368759
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.47501520  0.09658359 -0.00810929  0.00045121 -0.00504438
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.01534783  0.03374187 -0.25226523  0.00581317 -0.05246203
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.06407572  0.02959406  0.05289581  0.01944595 -0.25161829
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000211 -0.00000678  0.00558760  0.83646346  0.06581862
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002084  0.00011163 -0.02180746 -0.00033079 -0.00041804

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00549348 -0.00085346  0.00035740 -0.00037036 -0.00002267

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00079117  0.00484625 -0.00035639  0.02174394  0.00170195

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01954432  0.01313336 -0.00051062 -0.00245170  0.03045225

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.02501033 -0.01604650 -0.00010312 -0.00187514  0.02422140

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00322728  0.00803459  0.03380469 -0.00013468  0.00032395

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.06652907 -0.02419571  0.00001216 -0.00020123  0.00013562

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.02453379 -0.17375049  0.00010829  0.03371160  0.00268405

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00885424  0.01550215  0.25763656  0.00283010  0.00485353

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.68199023 -0.21583150 -0.00865232  0.04814585  0.00362701

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.22194179 -0.59816415 -0.00160731  0.25249352  0.01980807

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000208  0.00000078 -0.01503576 -0.06570972  0.83635586

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00038521 -0.00021041 -0.00039311 -0.00205804  0.02170967

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00073639  0.00485905 -0.00013879 -0.02171461 -0.00206964

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00181890  0.00011011 -0.00001150 -0.00041498  0.00047051

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00190077 -0.00604698 -0.03629645  0.00030246 -0.00059135

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00679294 -0.01472471  0.01432868  0.00005175  0.00059501

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01677185  0.01034390 -0.00070663 -0.00263193  0.03368984

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.02677008 -0.17338195 -0.00015771 -0.03371308 -0.00263501

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.32831415 -0.05472625 -0.00007518 -0.00017940 -0.00013231

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.04934608 -0.01732034  0.00467218  0.02835072 -0.25617761

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.13462268  0.61660875  0.00152508  0.25166669  0.02880392

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.21499641 -0.12139489 -0.00038126 -0.04846939 -0.00050968

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000053  0.00000117  0.83891544 -0.00674900  0.01455153

   1    1  |0 0>          -0.03406422  0.00343715  0.00000000 -0.00000009 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00451793 -0.00292774 -0.00000000 -0.00000020  0.00000165
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00713169 -0.04955292 -0.00000001 -0.00000053 -0.00000005
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.03599856  0.00686992  0.00000008 -0.00000002  0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00095959 -0.00232448  0.00000220 -0.00000001  0.00000010
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000007 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000042 -0.00000086 -0.39769716  0.00351263 -0.00692102
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000150 -0.00000070  0.00717541  0.03115096 -0.39649368
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000210  0.00000739 -0.00295931 -0.39653576 -0.03120768
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.74508057     -0.04864542   -10676.44      0.00000000        0.00      0.0000
     2   1   -192.71324071     -0.01680557    -3688.40      0.03183985     6988.04      0.8664
     3   1   -192.71324071     -0.01680556    -3688.39      0.03183986     6988.04      0.8664
     4   1   -192.71324069     -0.01680554    -3688.39      0.03183988     6988.04      0.8664
     5   1   -192.69909186     -0.00265672     -583.08      0.04598870    10093.35      1.2514
     6   1   -192.69909173     -0.00265658     -583.05      0.04598884    10093.38      1.2514
     7   1   -192.69909103     -0.00265588     -582.90      0.04598954    10093.54      1.2514
     8   1   -192.69909102     -0.00265587     -582.90      0.04598955    10093.54      1.2514
     9   1   -192.69909099     -0.00265585     -582.89      0.04598957    10093.54      1.2514
    10   1   -192.65352817      0.04290698     9416.99      0.09155240    20093.43      2.4913
    11   1   -192.65352815      0.04290699     9417.00      0.09155241    20093.43      2.4913
    12   1   -192.65352810      0.04290705     9417.01      0.09155247    20093.44      2.4913
    13   1   -192.65352756      0.04290759     9417.13      0.09155301    20093.56      2.4913
    14   1   -192.65352733      0.04290781     9417.18      0.09155323    20093.61      2.4913
    15   1   -192.61533638      0.08109876    17799.12      0.12974418    28475.56      3.5305
    16   1   -192.55197432      0.14446083    31705.49      0.19310624    42381.92      5.2547
    17   1   -192.55197421      0.14446093    31705.51      0.19310635    42381.95      5.2547
    18   1   -192.55197421      0.14446094    31705.51      0.19310636    42381.95      5.2547
    19   1   -192.54333966      0.15309548    33600.57      0.20174090    44277.01      5.4896
    20   1   -192.54333966      0.15309549    33600.58      0.20174091    44277.01      5.4896
    21   1   -192.54333957      0.15309557    33600.59      0.20174099    44277.03      5.4897
    22   1   -192.52944201      0.16699313    36650.76      0.21563855    47327.19      5.8678
    23   1   -192.52778612      0.16864903    37014.18      0.21729445    47690.62      5.9129
    24   1   -192.52778610      0.16864904    37014.19      0.21729446    47690.62      5.9129
    25   1   -192.52778606      0.16864909    37014.20      0.21729451    47690.63      5.9129
    26   1   -192.52778606      0.16864909    37014.20      0.21729451    47690.63      5.9129
    27   1   -192.52778598      0.16864917    37014.21      0.21729459    47690.65      5.9129
    28   1   -192.49749158      0.19894357    43663.07      0.24758899    54339.50      6.7372
    29   1   -192.49749150      0.19894364    43663.08      0.24758906    54339.52      6.7372
    30   1   -192.49749143      0.19894371    43663.10      0.24758913    54339.53      6.7372
    31   1   -192.49347841      0.20295673    44543.85      0.25160215    55220.29      6.8464
    32   1   -192.49347841      0.20295673    44543.85      0.25160215    55220.29      6.8464
    33   1   -192.49347830      0.20295685    44543.88      0.25160227    55220.32      6.8464
    34   1   -192.49347826      0.20295688    44543.89      0.25160230    55220.32      6.8464
    35   1   -192.49347824      0.20295691    44543.89      0.25160232    55220.33      6.8464
    36   1   -192.49347814      0.20295701    44543.91      0.25160243    55220.35      6.8465
    37   1   -192.49347812      0.20295702    44543.92      0.25160244    55220.35      6.8465
    38   1   -192.49263784      0.20379731    44728.34      0.25244273    55404.77      6.8693
    39   1   -192.49263783      0.20379732    44728.34      0.25244274    55404.78      6.8693
    40   1   -192.49263783      0.20379732    44728.34      0.25244274    55404.78      6.8693
    41   1   -192.49263780      0.20379734    44728.35      0.25244276    55404.78      6.8693
    42   1   -192.49263779      0.20379735    44728.35      0.25244277    55404.78      6.8693
    43   1   -192.49120034      0.20523481    45043.83      0.25388023    55720.27      6.9084
    44   1   -192.49120032      0.20523483    45043.84      0.25388025    55720.27      6.9084
    45   1   -192.49120032      0.20523483    45043.84      0.25388025    55720.27      6.9084

 E0 =   -192.69643515 is the energy of the lowest zeroth-order state
 E1 =   -192.74508057 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.53870533 -0.00012697 -0.01152490  0.01630775  0.07044641 -0.62712203  0.01290304 -0.00027568
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00889100 -0.01937834 -0.70521049  0.00492309 -0.00126507  0.01040263  0.01066449  0.00288977
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.01239312 -0.00838336 -0.00496144 -0.70533554  0.00156620 -0.01457025 -0.54640369  0.00956617
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00000001  0.00261758 -0.00007803 -0.00005757 -0.00006852 -0.00001765  0.00113280  0.06195747
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000001 -0.01757642  0.00039616  0.00021833 -0.00061123 -0.00007017  0.00013223  0.00922715
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00000003  0.00017020 -0.00001157  0.00005088 -0.06225783 -0.00699361 -0.00010268 -0.00015800
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00000001  0.00032539  0.01539274  0.00006749 -0.00003631 -0.00000052  0.00025912  0.00024860
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000001  0.00019714 -0.00007170  0.01539471  0.00021123  0.00001583 -0.03131862  0.00064742
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.02405275 -0.00000543 -0.00026160  0.00015342 -0.00069267  0.00616713 -0.00010454  0.00000182
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00083779 -0.00020471 -0.00804327  0.00145003  0.00002504 -0.00021556 -0.00101938 -0.00001197
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00030755  0.00013414  0.00145132  0.00804892  0.00000817 -0.00008015 -0.00527863  0.00009756
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000001 -0.04865626  0.00134099  0.00056888  0.00000001 -0.00000000  0.00000000  0.00000019
                                0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00867792  0.00309693  0.70545377  0.00718856  0.00807809  0.00608586  0.00120657 -0.00967364

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.53877139 -0.01223868 -0.01130719  0.00002386  0.50794527  0.37461814 -0.00033067 -0.00922517

 15  1     3    1  |1 0>        0.00000000 -0.00000017  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                                0.00930917  0.70542991 -0.00321076 -0.00808153  0.00877565  0.00638624  0.00953844  0.54649739

 16  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00013143 -0.00015875  0.01391720  0.00001862 -0.00000990  0.03897336 -0.00062377

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.00013573 -0.00026472  0.01105745  0.00020798 -0.00030137 -0.04904059  0.00082775

 18  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00037442 -0.01538896 -0.00027727  0.00000946 -0.00001780  0.00051912  0.00005941

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000007 -0.00008580 -0.00000584  0.00006965 -0.03718642  0.05042104 -0.00027192  0.00018881

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.01539062 -0.00037131 -0.00016414 -0.00020899  0.00028835 -0.00043648 -0.03132286

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00076534  0.00007020  0.00817571  0.00008289 -0.00015792 -0.00011769 -0.00001224  0.00007257

 22  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.02362973 -0.00153709 -0.00024247  0.00001506 -0.00490686 -0.00361872  0.00001942  0.00100607

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00451421 -0.00803401  0.00011686  0.00009290  0.00093741  0.00069043  0.00009180  0.00528186

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00055533  0.00049840 -0.04867191 -0.00000000  0.00000001 -0.00000066  0.00000002

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01254324 -0.00331029 -0.00690853  0.70535643  0.01341320 -0.00602575 -0.54628596  0.01831743

 26  1     2    1  |1 1>-      -0.00000000  0.00000017 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                               -0.00910588 -0.70520992  0.01955142 -0.00339568  0.00977801 -0.00435436  0.01852812  0.54634082

 27  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.53869841 -0.01199757  0.00016963  0.01636638 -0.57832267  0.25254557 -0.01241708  0.00970319

 28  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00046386  0.01653036  0.00018097 -0.00003946 -0.00010241 -0.00002536 -0.00011634

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00009072 -0.00652552  0.00008540  0.00003341  0.00004596  0.00015810 -0.00015122

 30  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00018325 -0.00011187  0.01539401  0.00008910  0.00020568  0.03132166 -0.00052914

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.01538956  0.00039316  0.00018713 -0.00014075 -0.00031726 -0.00053049 -0.03132243

 32  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00008612  0.00003730 -0.00005163  0.02507297  0.05741532 -0.00012821 -0.00016461

 33  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00045906 -0.00016675 -0.00007652  0.00817698 -0.00010803  0.00004883  0.00537051 -0.00026456

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00450133 -0.00803086  0.00022416 -0.00019086 -0.00106438  0.00046558 -0.00027905 -0.00527577

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.02364013  0.00153240 -0.00004124 -0.00012245 -0.00558976  0.00244074 -0.00005126  0.00101013

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000002  0.00134664  0.04865672  0.00048288 -0.00000001 -0.00000001 -0.00000001 -0.00000001

 37  1     1    1  |0 0>        0.00000031 -0.00000001 -0.00000001 -0.00000000  0.62937516  0.00951095  0.00068729 -0.00004805
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000001  0.00000002 -0.00071082  0.00152273  0.62934331 -0.01095961
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000000 -0.00000059  0.00000002 -0.00000000  0.00003696 -0.00002926  0.01095373  0.62934303
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002

 40  1     4    1  |0 0>        0.00000035  0.00000000 -0.00000001  0.00000001 -0.00950926  0.62937083 -0.00153295  0.00005593
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000000 -0.00000001 -0.00000059 -0.00000000 -0.00012047  0.00015474  0.00164944  0.00231329
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>        0.35630483  0.00000000 -0.00000000 -0.00000000 -0.00000027 -0.00000032  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000000  0.00089675  0.03151353  0.00030872  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000000 -0.00035978  0.00031906 -0.03152407 -0.00000000  0.00000000 -0.00000002 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000 -0.03151295  0.00089313  0.00036869 -0.00000000  0.00000000 -0.00000000 -0.00000012
                                0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.00884235 -0.01031877  0.00000142 -0.00715103 -0.03923589  0.51470283 -0.20635316  0.00000571
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.54655542 -0.00815739 -0.00079892 -0.44707876  0.00056974 -0.00846768  0.00340573  0.00035406
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.01082274  0.44701193 -0.00290731 -0.00831814 -0.00109267  0.01174030 -0.00474723  0.00000595
                               -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00036111  0.00019931  0.02712163 -0.00005723 -0.00002956  0.00000045  0.00000001  0.00048334
                                0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00023116  0.00001367  0.00403926 -0.00008608 -0.00026837 -0.00002006  0.00000001  0.00065497
                                0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00002290 -0.00005958 -0.00006824 -0.00000060 -0.02734123 -0.00208446  0.00000007  0.00021154
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.03132398  0.00009556  0.00005920  0.01371043 -0.00001090 -0.00000180 -0.00000001 -0.46425377
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00025440 -0.01370998  0.00013304  0.00009515  0.00009991  0.00001027  0.00000000 -0.00239178
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00017143  0.00042710  0.00000120  0.00071643  0.00198290 -0.02601044  0.01597361  0.00011753
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00527709  0.00425765  0.00001469  0.02218832 -0.00006682  0.00090376 -0.00055639  0.00363228
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00102193  0.02219757 -0.00015171 -0.00426939 -0.00003548  0.00032780 -0.00020424 -0.00069201
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000  0.00000002  0.00000012  0.00000000  0.00000000  0.00000001 -0.00000001  0.00066818
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.54658732 -0.00053614  0.00956067 -0.44705277 -0.00694520 -0.00466655 -0.00332411 -0.00035423

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00890612 -0.00018652  0.00761132  0.00742456 -0.42617632 -0.29136679 -0.20637800  0.00000582

 15  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000084 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00950090 -0.00290836 -0.44703828 -0.00943073 -0.00737574 -0.00507946 -0.00356591 -0.00000681

 16  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00006395  0.01705978 -0.00008637 -0.00000757 -0.00000101 -0.00001291 -0.00000000  0.00070307

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00043136 -0.02146688  0.00012689  0.00016315  0.00009764 -0.00012467  0.00000001  0.00471369

 18  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.03132363  0.00021025 -0.00002236  0.01371029  0.00000879 -0.00001016  0.00000000  0.46423595

 19  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000333 -0.00011711  0.00007577  0.00001080 -0.01547613  0.02263677 -0.00000000  0.00021785

 20  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00006798 -0.00004108 -0.01371088 -0.00002108 -0.00008730  0.00012578 -0.00000000  0.00015487

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00537491  0.00002790 -0.00038834  0.02259187  0.00068928  0.00046714  0.00050827 -0.00370036

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00018094 -0.00001621 -0.00423125 -0.00078185  0.02115507  0.01446319  0.01569254  0.00012619

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00003913 -0.00014628 -0.02220330 -0.00024594 -0.00404205 -0.00276537 -0.00299789  0.00003350

 24  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000030 -0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00008172

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00133061  0.44697604 -0.01009280 -0.00057796 -0.01102431  0.00509918  0.00480474  0.00000014

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000084 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00309382 -0.01027106 -0.44703224  0.00086396 -0.00787322  0.00373167  0.00348804 -0.00000134

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00015395  0.01037983 -0.00778028 -0.00009621  0.46535411 -0.22336875 -0.20635038 -0.00000002

 28  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.02299021  0.00000164 -0.00001372 -0.01006246 -0.00002256 -0.00004263 -0.00000001 -0.49867911

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.05827850  0.00010092  0.00002916 -0.02550731  0.00000591  0.00002348 -0.00000000  0.19671581

 30  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00051876  0.01371050 -0.00008254  0.00024340  0.00003506  0.00008187 -0.00000000 -0.00116991

 31  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00016633 -0.00008221 -0.01371081 -0.00012374 -0.00006693 -0.00014016 -0.00000001 -0.00082102

 32  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000860 -0.00003712 -0.00007959  0.00000289  0.01186588  0.02472139 -0.00000004 -0.00104734

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00001257 -0.02258594  0.00086495  0.00002857  0.00045838 -0.00021026 -0.00030487  0.00000150

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000004  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00002993  0.00093174  0.02218835 -0.00004428  0.00440123 -0.00211037 -0.00298935 -0.00001395

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000677  0.00026868 -0.00424111  0.00000287  0.02311334 -0.01109477 -0.01569950  0.00000259

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000087  0.00000000 -0.00000000 -0.00000044  0.00000002 -0.00000001 -0.00000001  0.17702846

 37  1     1    1  |0 0>        0.00011650  0.00124425 -0.00006911 -0.00014262  0.77303638 -0.01597761  0.00000009 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00160943  0.77318674 -0.00500133 -0.00105557 -0.00121361  0.00152512 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00234164  0.00500113  0.77319016 -0.00000326  0.00006449  0.00016531  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000145 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00015273 -0.00150087 -0.00015691 -0.00007603  0.01598012  0.77303818  0.00000007 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>        0.62943564  0.00105565 -0.00000360  0.77320612  0.00014251  0.00007515  0.00000000 -0.00000015
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000002  0.93348077 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000008 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.50017068
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000000  0.00000006 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00017162
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000000  0.00000010 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00227851
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00000004  0.00000824  0.00012051  0.00073458  0.00000591 -0.01676527  0.00128217  0.01681135
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000129  0.00000583  0.02356960  0.01166600 -0.00014644  0.00027673 -0.00009896  0.00002705
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000264 -0.00035390  0.01167075 -0.02356124 -0.00036172 -0.00038572 -0.00005953 -0.00000156
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.07897150 -0.00139601 -0.00053589  0.00055153 -0.03041125 -0.00000041  0.72443584 -0.03546201
                                0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.53018843  0.00433886  0.00140861 -0.00259474  0.20416120  0.00000006  0.10816389  0.00105505
                               -0.00000009 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00513307  0.00155796  0.00017474 -0.00056737 -0.00198010 -0.00000503  0.02641045  0.65396020
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00126838 -0.00238198  0.16113011  0.07748400  0.00013312 -0.00000052  0.00180660 -0.00312486
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00402312  0.46423180  0.07747510 -0.16110862 -0.00266951  0.00000046  0.00208223  0.00212903
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00000029  0.00007040  0.01030774  0.01546632  0.00003829  0.57623930  0.01212222  0.15916716
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00000846  0.00069024  0.40451488  0.29551479 -0.00157389 -0.02007093 -0.00100449 -0.00207445
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.00002939  0.00363340 -0.29580222  0.40456891  0.00726881 -0.00736778  0.00080090  0.00109575
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.17701553 -0.00131080  0.00559797 -0.00497487  0.50470003 -0.00000022  0.00000376 -0.00000044
                                0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000691  0.00000022 -0.02376414 -0.01125718 -0.00045964 -0.00027006  0.00068250  0.00058925

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000601  0.00000004  0.00038717  0.00019027 -0.00044689 -0.01676886  0.00115299  0.02040680

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00035433 -0.00000262 -0.00025495 -0.00051827  0.02629263 -0.00028971 -0.03228869  0.00197294

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00229392  0.41969857  0.06904879 -0.14613038 -0.00189418 -0.00000053 -0.00060981 -0.00582692

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00286564  0.33346978  0.05341980 -0.11680173 -0.00190353  0.00000062  0.00103239  0.00345739

 18  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00018571 -0.00395004 -0.16216798 -0.07528078  0.00044185 -0.00000024 -0.00038870 -0.00362632

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00259120  0.00209085  0.00027418 -0.00076823  0.00099289  0.00000758  0.03798890  0.61253674

 20  1     8    1  |1 0>       -0.00000008 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.46424025 -0.00297652 -0.00135115  0.00186578 -0.17877757  0.00000034 -0.36599439  0.02172578

 21  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00005678  0.00000191 -0.45273043 -0.21449184 -0.00665415  0.01833537  0.00526719  0.00868163

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00069327  0.00000503  0.01472590  0.00839833 -0.09383575  0.56609042  0.06287584  0.18710023

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00363879  0.00002661  0.00032725  0.00759621 -0.49231408 -0.10814596  0.29942457 -0.05135093

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00131047  0.17702749 -0.21617304  0.45606495  0.00689326 -0.00000003  0.00000034  0.00000015

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000309  0.00035417 -0.01126509  0.02376046 -0.00006440  0.00039036 -0.00056398  0.00049980

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00035441 -0.00000322 -0.00010579 -0.00013289 -0.02629833  0.00028344 -0.03226841  0.00224903

 27  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000606  0.00000819 -0.00026409  0.00055100 -0.00044604 -0.01676605 -0.00244723 -0.03721446

 28  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00207351  0.00072729  0.17361490  0.08209280 -0.00118786  0.00000003 -0.00052776  0.00253637

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00194671  0.00445297 -0.06772105 -0.03403295 -0.00060759  0.00000051  0.00041986  0.00609217

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00363332  0.46422305  0.07704918 -0.16130712 -0.00251862 -0.00000039 -0.00079911 -0.00467094

 31  1     7    1  |1 1>-       0.00000008  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.46423120  0.00366380  0.00169616 -0.00199507  0.17877452  0.00000005 -0.36623731  0.01855375

 32  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00261626 -0.00157804  0.00010847  0.00071731  0.00101058  0.00001519  0.00560782 -0.04114222

 33  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00009062  0.00369861 -0.21471080  0.45276407 -0.00909587 -0.01099794 -0.01021718  0.00349137

 34  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00363975 -0.00010194  0.00201459 -0.01091430 -0.49229710 -0.10783755 -0.29699122  0.08109204

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00069496 -0.00005251  0.00378532 -0.00671403  0.09391516 -0.56634499  0.07494896  0.34360289

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00066892 -0.00007692  0.45608335  0.21622611 -0.00292733 -0.00000046 -0.00000005  0.00000039

 37  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000036  0.00244263  0.05448278
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000000 -0.00000038  0.00000001 -0.00000003 -0.00000000  0.00000005  0.00015181  0.00060042
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000021  0.00000000  0.00000000 -0.00000000  0.00000019  0.00000005 -0.05844830  0.00292071
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000118 -0.00177473 -0.02116324
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000015 -0.00000007  0.00000000  0.00000005 -0.00003254  0.00052976
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04074943 -0.00000003  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00227973 -0.00015475  0.33166259  0.15729178 -0.00241479 -0.00000005  0.00000001  0.00000003
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00370295  0.50016098 -0.15725084  0.33165333  0.00501363 -0.00000001  0.00000005  0.00000002
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.50015830 -0.00370369  0.00433004 -0.00349542  0.36703276 -0.00000001 -0.00000053 -0.00000005
                                0.00000009  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.00032628  0.00046338  0.03332930  0.00048787  0.00073723  0.00001107  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.03195362  0.00505128 -0.00056551  0.03121198  0.00117456 -0.00005114 -0.00000014  0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00505810 -0.03195268  0.00063844  0.00118525 -0.03120353 -0.00051802 -0.00000001 -0.00000003
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00251857 -0.00179975 -0.00999388 -0.00018534  0.00102791 -0.03844908  0.00111773  0.00072724
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00232265  0.00036703 -0.00468083 -0.00070590 -0.00449242  0.25816859  0.00157885  0.00056048
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00516465 -0.00623312 -0.33071016 -0.00008297 -0.00073779 -0.00250664 -0.00085857  0.00154536
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.36280434 -0.05310422  0.00001820  0.22601244  0.00592762  0.00105005 -0.05668259 -0.00059136
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.05311571  0.36281055  0.00257460  0.00594465 -0.22596744 -0.00402625  0.00123526 -0.01366131
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00802972  0.00378271  0.31548195 -0.01340003 -0.00841859 -0.00010878  0.00000088 -0.00000020
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.28986333  0.09872882 -0.01092541 -0.41726169 -0.08847020 -0.00051823  0.00001606 -0.00000246
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.09881436  0.28997528 -0.00281178  0.08869807 -0.41738796 -0.00709415 -0.00000381 -0.00000567
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.00000006  0.00000013 -0.00000006  0.00019552 -0.00142864  0.08648157  0.00000002 -0.00000002
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.03202380  0.00449987 -0.00053100 -0.03122071 -0.00063483 -0.00066709  0.00000042 -0.00000003

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00071085 -0.00022881 -0.03125924  0.00051406  0.00001939 -0.00052873 -0.00000000  0.00000001

 15  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00063146  0.00015345 -0.00011121 -0.00064765 -0.00053052  0.03122241  0.00000001  0.00000001

 16  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000022
                                0.06318268 -0.45182282 -0.00197380  0.00397873 -0.20432806 -0.00298846 -0.03539665 -0.69673981

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003
                               -0.08354894  0.56804420 -0.00001902  0.00113928 -0.16239981 -0.00288627  0.00002870 -0.09215536

 18  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000003
                               -0.36236699 -0.05614292  0.00003077 -0.22606159 -0.00285095 -0.00031339  0.68993691 -0.03498681

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00461057 -0.00673810  0.40139312 -0.00008669 -0.00103163  0.00125268  0.00114658 -0.00241908

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00024726 -0.00054568  0.00711588  0.00027190  0.00352541 -0.22604746 -0.00052700  0.00000245

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.30311189  0.04257582 -0.00965722  0.42644129  0.00870123  0.00732150  0.00000816 -0.00000034

 22  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01209002 -0.00300708 -0.29137564 -0.01467214 -0.00162580  0.07983639  0.00000013  0.00000042

 23  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00259921 -0.00076045  0.05152893 -0.00450515 -0.00703515  0.41914913  0.00000030 -0.00000046

 24  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000135  0.00000943  0.00000009 -0.00178902  0.08646542  0.00143228 -0.00000015 -0.00000184

 25  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00449880 -0.03203368 -0.00007268 -0.00064691  0.03122340  0.00001406  0.00000001  0.00000005

 26  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00018103  0.00057243  0.00046647 -0.00005991  0.00000052 -0.03123377 -0.00000001  0.00000000

 27  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00037062 -0.00022738 -0.00207248 -0.00001608  0.00072703 -0.00052763 -0.00000001 -0.00000000

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000003
                                0.26653655  0.03707816 -0.00142955  0.24280513  0.00478254 -0.00056029  0.71763293 -0.03506106

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.67600307  0.09142400  0.00023911 -0.09573604 -0.00418239 -0.00114629  0.05758654  0.00103815

 30  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000023
                                0.04417071 -0.36404261  0.00106818  0.00534970 -0.22598191 -0.00383768  0.03462260  0.70951327

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00283022  0.00098904  0.00075375  0.00005971 -0.00385287  0.22604687  0.00127552  0.00080809

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00085312 -0.00104125  0.73218751  0.00049188  0.00076723  0.00128166  0.00021724 -0.00089797

 33  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.04258169 -0.30320915 -0.00070655  0.00885093 -0.42658789  0.00650786  0.00000010  0.00000356

 34  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00291152  0.01014634  0.00771621  0.00063951  0.00793146  0.41919385 -0.00000035  0.00000049

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00286373 -0.00094682  0.01859291 -0.00029374  0.00677336 -0.07994576  0.00000066  0.00000027

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00001320  0.00000209 -0.00000017  0.08646949  0.00179162 -0.00016579 -0.00000644  0.00000030

 37  1     1    1  |0 0>       -0.00043028 -0.00058079 -0.02122647 -0.00000002  0.00000001  0.00000004 -0.00000005 -0.00000005
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00815700  0.05795162  0.00013830 -0.00000001 -0.00000032  0.00000001  0.00000004  0.00000015
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00007451  0.00011053  0.00076925  0.00000001  0.00000001  0.00000023  0.00000005 -0.00000005
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00010132  0.00036833 -0.05453650 -0.00000003 -0.00000002  0.00000001  0.00000002 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.05795341  0.00815196 -0.00004180 -0.00000053 -0.00000003 -0.00000001 -0.00000127  0.00000010
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000003  0.00000003  0.00000088 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000284  0.00000046 -0.00000008  0.67502501  0.01407527 -0.00182006  0.00000156 -0.00000010
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000048  0.00000361 -0.00000000 -0.01404309  0.67493190  0.01117890 -0.00000005 -0.00000041
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000002 -0.00000002  0.00000005  0.00205246 -0.01113859  0.67508013  0.00000002  0.00000007
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+       0.00000001 -0.00000001 -0.00000043  0.00000001  0.00000001  0.00398548  0.00154070  0.00026329
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000001 -0.00000033 -0.00000000  0.00000001  0.00000000  0.00146744 -0.00352168 -0.00311237
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000032  0.00056057 -0.00309364  0.00375032
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.54075279 -0.00134259 -0.00146206  0.21612243  0.00053250 -0.01737321 -0.00850408  0.02650239
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.34696373 -0.00081476 -0.00509333  0.68830198  0.00347531 -0.00504399 -0.00116846  0.00429909
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00191605  0.00110760 -0.57733531 -0.00696111 -0.00049967 -0.22400138 -0.05155979 -0.04298780
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00065156  0.72808933  0.00163546  0.00182499 -0.00181450  0.05485123 -0.12626924 -0.10948409
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

  8  1     8    1  |1 1>+       0.00022230  0.00191714 -0.00181588 -0.00373960  0.73014856  0.01688179 -0.11024969  0.13525033
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

  9  1     9    1  |1 1>+       0.00000083  0.00000020 -0.00004482  0.00000067  0.00000073  0.51825449  0.19018140  0.02990203
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00000003  0.00001384  0.00000123  0.00000044  0.00000342  0.16689780 -0.38295090 -0.47945820
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002

 11  1    11    1  |1 1>+       0.00000053 -0.00000257  0.00000073 -0.00000012  0.00002121 -0.10009713  0.47294540 -0.40858407
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002

 12  1    12    1  |1 1>+       0.00000569 -0.00000005 -0.00000005 -0.00001373  0.00000002 -0.00000053 -0.00000053 -0.00000039
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000058  0.00000001  0.00000002 -0.00000001  0.00156396 -0.00354473 -0.00304260

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000001  0.00000047  0.00000001 -0.00000001  0.00112638  0.00001404  0.00045081

 15  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000034  0.00000000 -0.00000000 -0.00000086  0.00000000 -0.00018613 -0.00020525  0.00031514

 16  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                                0.00031462 -0.00288021 -0.00159620  0.00022229 -0.10037908 -0.01951704  0.13637360 -0.16886689

 17  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.00121894  0.00376140 -0.00017491  0.00390241 -0.65424483  0.02718657 -0.17234897  0.21154438

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00086451  0.23678732 -0.00081293 -0.00001332  0.00508656  0.05501004 -0.12524866 -0.11066195

 19  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00044499 -0.00133235  0.57734901 -0.00390340 -0.00082533 -0.32491441 -0.10851366 -0.04203265

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.23960801  0.00061299  0.00291320  0.68984418  0.00408368  0.00656138  0.00460659 -0.01386067

 21  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                               -0.00000059 -0.00000014  0.00000118 -0.00000007 -0.00000037  0.20428192 -0.45819570 -0.39211951

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000096  0.00000020  0.00004818 -0.00000650 -0.00000048  0.14454793  0.01301991  0.05619545

 23  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000366 -0.00000059 -0.00000934 -0.00003284  0.00000003  0.00028330  0.02258709 -0.05284849

 24  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000007 -0.00000019  0.00000001  0.00000003  0.00000351 -0.00000211  0.00001416 -0.00001893

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00000001 -0.00000001  0.00000002 -0.00000002  0.00055780 -0.00303423  0.00381759

 26  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000025  0.00000001  0.00000001  0.00000121 -0.00000000 -0.00016219 -0.00004721  0.00032914

 27  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000000 -0.00000002  0.00000001  0.00000000 -0.00511243 -0.00155250 -0.00071379

 28  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00174457 -0.21873908 -0.00070381 -0.00092217 -0.00303900 -0.04027037  0.09333307  0.07967365

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00226550  0.60492564  0.00092111 -0.00174364 -0.00010929 -0.10275578  0.23701039  0.20105261

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00067979 -0.00171928  0.00079838 -0.00008732 -0.16939964 -0.01512710  0.10707141 -0.13772428

 31  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.72784964  0.00081953  0.00210687 -0.05955001  0.00067384  0.00858918  0.00614814 -0.01239860

 32  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00319203  0.00053600 -0.57732127 -0.00028503 -0.00239850 -0.10086114 -0.05664220  0.00059165

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003
                                0.00000003 -0.00000039  0.00000038 -0.00000004 -0.00002536  0.06880569 -0.39311435  0.49361386

 34  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00001363 -0.00000008 -0.00000013  0.00000634  0.00000112  0.09112368  0.03399046  0.05043864

 35  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000220 -0.00000015  0.00000170 -0.00000045  0.00000015  0.65504639  0.19594894  0.08710972

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000005 -0.00000587 -0.00000012  0.00000005 -0.00000007  0.00000933 -0.00002207 -0.00001962

 37  1     1    1  |0 0>       -0.00000002 -0.00000000 -0.00000143 -0.00000002  0.00000003 -0.03521547 -0.00862144 -0.00646525
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000005 -0.00000003  0.00000000 -0.00000002 -0.00000157  0.00462932 -0.03127102  0.03873234
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000013 -0.00000003  0.00000002 -0.00000120 -0.00000001  0.00243558  0.00132368 -0.00379996
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000006 -0.00000004 -0.00000313  0.00000007  0.00000004  0.03184108  0.01278582  0.00283736
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000003 -0.00000064  0.00000004 -0.00000005  0.00000005 -0.01571985  0.03620841  0.03104836
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000003  0.00000842  0.00000014 -0.00000002  0.00000017 -0.00000690  0.00001706  0.00001506
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000008  0.00000010 -0.00000001  0.00000001 -0.00001439  0.00000156 -0.00000970  0.00001328
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.00000522 -0.00000004 -0.00000009  0.00000462 -0.00000004  0.00000016  0.00000054  0.00000028
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45

  1  1     1    1  |1 1>+      -0.00367354  0.00074509  0.00034214 -0.00004259  0.00051222
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00002506  0.00022986  0.02179971 -0.00020430  0.00074566
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00052529 -0.00026693  0.00076755  0.00170474 -0.02173006
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.04913503  0.34343437  0.00005300  0.00573909  0.00039250
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00478898  0.05135253 -0.00006431 -0.03847663 -0.00299395
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.26203857  0.02769180  0.00001422  0.00036188  0.00014514
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00331315  0.00897437 -0.03378769  0.00006871 -0.00079251
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.01473438 -0.00978803 -0.00079502 -0.00260363  0.03368759
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.47501520  0.09658359 -0.00810929  0.00045121 -0.00504438
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.01534783  0.03374187 -0.25226523  0.00581317 -0.05246203
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.06407572  0.02959406  0.05289581  0.01944595 -0.25161829
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.00000211 -0.00000678  0.00558760  0.83646346  0.06581862
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002084  0.00011163 -0.02180746 -0.00033079 -0.00041804

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00549348 -0.00085346  0.00035740 -0.00037036 -0.00002267

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00079117  0.00484625 -0.00035639  0.02174394  0.00170195

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01954432  0.01313336 -0.00051062 -0.00245170  0.03045225

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.02501033 -0.01604650 -0.00010312 -0.00187514  0.02422140

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00322728  0.00803459  0.03380469 -0.00013468  0.00032395

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.06652907 -0.02419571  0.00001216 -0.00020123  0.00013562

 20  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.02453379 -0.17375049  0.00010829  0.03371160  0.00268405

 21  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00885424  0.01550215  0.25763656  0.00283010  0.00485353

 22  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.68199023 -0.21583150 -0.00865232  0.04814585  0.00362701

 23  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.22194179 -0.59816415 -0.00160731  0.25249352  0.01980807

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000208  0.00000078 -0.01503576 -0.06570972  0.83635586

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00038521 -0.00021041 -0.00039311 -0.00205804  0.02170967

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00073639  0.00485905 -0.00013879 -0.02171461 -0.00206964

 27  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00181890  0.00011011 -0.00001150 -0.00041498  0.00047051

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00190077 -0.00604698 -0.03629645  0.00030246 -0.00059135

 29  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00679294 -0.01472471  0.01432868  0.00005175  0.00059501

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01677185  0.01034390 -0.00070663 -0.00263193  0.03368984

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.02677008 -0.17338195 -0.00015771 -0.03371308 -0.00263501

 32  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.32831415 -0.05472625 -0.00007518 -0.00017940 -0.00013231

 33  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.04934608 -0.01732034  0.00467218  0.02835072 -0.25617761

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.13462268  0.61660875  0.00152508  0.25166669  0.02880392

 35  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.21499641 -0.12139489 -0.00038126 -0.04846939 -0.00050968

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000053  0.00000117  0.83891544 -0.00674900  0.01455153

 37  1     1    1  |0 0>       -0.03406422  0.00343715  0.00000000 -0.00000009 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00451793 -0.00292774 -0.00000000 -0.00000020  0.00000165
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00713169 -0.04955292 -0.00000001 -0.00000053 -0.00000005
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.03599856  0.00686992  0.00000008 -0.00000002  0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00095959 -0.00232448  0.00000220 -0.00000001  0.00000010
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000007 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000042 -0.00000086 -0.39769716  0.00351263 -0.00692102
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000150 -0.00000070  0.00717541  0.03115096 -0.39649368
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000210  0.00000739 -0.00295931 -0.39653576 -0.03120768
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        29.02%    0.00%    0.01%    0.03%    0.50%   39.33%    0.02%    0.00%
  2  1     2    1  |1 1>+         0.01%    0.04%   49.73%    0.00%    0.00%    0.01%    0.01%    0.00%
  3  1     3    1  |1 1>+         0.02%    0.01%    0.00%   49.75%    0.00%    0.02%   29.86%    0.01%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.38%
  5  1     5    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.39%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.10%    0.00%
  9  1     9    1  |1 1>+         0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.24%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.01%    0.00%   49.77%    0.01%    0.01%    0.00%    0.00%    0.01%
 14  1     2    1  |1 0>         29.03%    0.01%    0.01%    0.00%   25.80%   14.03%    0.00%    0.01%
 15  1     3    1  |1 0>          0.01%   49.76%    0.00%    0.01%    0.01%    0.00%    0.01%   29.87%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.15%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.24%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.14%    0.25%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.10%
 21  1     9    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.02%    0.00%    0.00%   49.75%    0.02%    0.00%   29.84%    0.03%
 26  1     2    1  |1 1>-         0.01%   49.73%    0.04%    0.00%    0.01%    0.00%    0.03%   29.85%
 27  1     3    1  |1 1>-        29.02%    0.01%    0.00%    0.03%   33.45%    6.38%    0.02%    0.01%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.10%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.10%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.06%    0.33%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.24%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   39.61%    0.01%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.61%    0.01%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   39.61%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%   39.61%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>         12.70%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.01%    0.01%    0.00%    0.01%    0.15%   26.49%    4.26%    0.00%
  2  1     2    1  |1 1>+        29.87%    0.01%    0.00%   19.99%    0.00%    0.01%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.01%   19.98%    0.00%    0.01%    0.00%    0.01%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.10%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%   21.55%
  8  1     8    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.03%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>         29.88%    0.00%    0.01%   19.99%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.01%    0.00%    0.01%    0.01%   18.16%    8.49%    4.26%    0.00%
 15  1     3    1  |1 0>          0.01%    0.00%   19.98%    0.01%    0.01%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.10%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%   21.55%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.05%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.04%    0.02%    0.02%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%   19.98%    0.01%    0.00%    0.01%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.01%   19.98%    0.00%    0.01%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.01%    0.01%    0.00%   21.66%    4.99%    4.26%    0.00%
 28  1     4    1  |1 1>-         0.05%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   24.87%
 29  1     5    1  |1 1>-         0.34%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    3.87%
 30  1     6    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.06%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.05%    0.01%    0.02%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.13%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   59.76%    0.03%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%   59.78%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%   59.78%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%   59.76%    0.00%    0.00%
 41  1     5    1  |0 0>         39.62%    0.00%    0.00%   59.78%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   87.14%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.02%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.03%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.06%    0.01%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.01%    0.06%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.62%    0.00%    0.00%    0.00%    0.09%    0.00%   52.48%    0.13%
  5  1     5    1  |1 1>+        28.11%    0.00%    0.00%    0.00%    4.17%    0.00%    1.17%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%   42.77%
  7  1     7    1  |1 1>+         0.00%    0.00%    2.60%    0.60%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%   21.55%    0.60%    2.60%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.01%    0.02%    0.00%   33.21%    0.01%    2.53%
 10  1    10    1  |1 1>+         0.00%    0.00%   16.36%    8.73%    0.00%    0.04%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    8.75%   16.37%    0.01%    0.01%    0.00%    0.00%
 12  1    12    1  |1 1>+         3.13%    0.00%    0.00%    0.00%   25.47%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.06%    0.01%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.04%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.10%    0.00%
 16  1     4    1  |1 0>          0.00%   17.61%    0.48%    2.14%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%   11.12%    0.29%    1.36%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    2.63%    0.57%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.14%   37.52%
 20  1     8    1  |1 0>         21.55%    0.00%    0.00%    0.00%    3.20%    0.00%   13.40%    0.05%
 21  1     9    1  |1 0>          0.00%    0.00%   20.50%    4.60%    0.00%    0.03%    0.00%    0.01%
 22  1    10    1  |1 0>          0.00%    0.00%    0.02%    0.01%    0.88%   32.05%    0.40%    3.50%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.01%   24.24%    1.17%    8.97%    0.26%
 24  1    12    1  |1 0>          0.00%    3.13%    4.67%   20.80%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.01%    0.06%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.10%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.14%
 28  1     4    1  |1 1>-         0.00%    0.00%    3.01%    0.67%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.46%    0.12%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%   21.55%    0.59%    2.60%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-        21.55%    0.00%    0.00%    0.00%    3.20%    0.00%   13.41%    0.03%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.17%
 33  1     9    1  |1 1>-         0.00%    0.00%    4.61%   20.50%    0.01%    0.01%    0.01%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.01%   24.24%    1.16%    8.82%    0.66%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.88%   32.07%    0.56%   11.81%
 36  1    12    1  |1 1>-         0.00%    0.00%   20.80%    4.68%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.30%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.34%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.17%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%   11.00%    2.47%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%   25.02%    2.47%   11.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>         25.02%    0.00%    0.00%    0.00%   13.47%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.11%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.10%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.10%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.15%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    6.67%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%   10.94%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+        13.16%    0.28%    0.00%    5.11%    0.00%    0.00%    0.32%    0.00%
  8  1     8    1  |1 1>+         0.28%   13.16%    0.00%    0.00%    5.11%    0.00%    0.00%    0.02%
  9  1     9    1  |1 1>+         0.01%    0.00%    9.95%    0.02%    0.01%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         8.40%    0.97%    0.01%   17.41%    0.78%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.98%    8.41%    0.00%    0.79%   17.42%    0.01%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.75%    0.00%    0.00%
 13  1     1    1  |1 0>          0.10%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%
 16  1     4    1  |1 0>          0.40%   20.41%    0.00%    0.00%    4.17%    0.00%    0.13%   48.54%
 17  1     5    1  |1 0>          0.70%   32.27%    0.00%    0.00%    2.64%    0.00%    0.00%    0.85%
 18  1     6    1  |1 0>         13.13%    0.32%    0.00%    5.11%    0.00%    0.00%   47.60%    0.12%
 19  1     7    1  |1 0>          0.00%    0.00%   16.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    5.11%    0.00%    0.00%
 21  1     9    1  |1 0>          9.19%    0.18%    0.01%   18.19%    0.01%    0.01%    0.00%    0.00%
 22  1    10    1  |1 0>          0.01%    0.00%    8.49%    0.02%    0.00%    0.64%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.27%    0.00%    0.00%   17.57%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.75%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.10%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         7.10%    0.14%    0.00%    5.90%    0.00%    0.00%   51.50%    0.12%
 29  1     5    1  |1 1>-        45.70%    0.84%    0.00%    0.92%    0.00%    0.00%    0.33%    0.00%
 30  1     6    1  |1 1>-         0.20%   13.25%    0.00%    0.00%    5.11%    0.00%    0.12%   50.34%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    5.11%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%   53.61%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.18%    9.19%    0.00%    0.01%   18.20%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.01%    0.01%    0.00%    0.01%   17.57%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.64%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.75%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.01%    0.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.30%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.34%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   45.57%    0.02%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.02%   45.55%    0.01%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%   45.57%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+        29.24%    0.00%    0.00%    4.67%    0.00%    0.03%    0.01%    0.07%
  5  1     5    1  |1 1>+        12.04%    0.00%    0.00%   47.38%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%   33.33%    0.00%    0.00%    5.02%    0.27%    0.18%
  7  1     7    1  |1 1>+         0.00%   53.01%    0.00%    0.00%    0.00%    0.30%    1.59%    1.20%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   53.31%    0.03%    1.22%    1.83%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   26.86%    3.62%    0.09%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    2.79%   14.67%   22.99%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    1.00%   22.37%   16.69%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.01%    0.04%    1.86%    2.85%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%   42.80%    0.07%    2.97%    4.48%
 18  1     6    1  |1 0>          0.00%    5.61%    0.00%    0.00%    0.00%    0.30%    1.57%    1.22%
 19  1     7    1  |1 0>          0.00%    0.00%   33.33%    0.00%    0.00%   10.56%    1.18%    0.18%
 20  1     8    1  |1 0>          5.74%    0.00%    0.00%   47.59%    0.00%    0.00%    0.00%    0.02%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    4.17%   20.99%   15.38%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    2.09%    0.02%    0.32%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.28%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    4.78%    0.00%    0.00%    0.00%    0.16%    0.87%    0.63%
 29  1     5    1  |1 1>-         0.00%   36.59%    0.00%    0.00%    0.00%    1.06%    5.62%    4.04%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    2.87%    0.02%    1.15%    1.90%
 31  1     7    1  |1 1>-        52.98%    0.00%    0.00%    0.35%    0.00%    0.01%    0.00%    0.02%
 32  1     8    1  |1 1>-         0.00%    0.00%   33.33%    0.00%    0.00%    1.02%    0.32%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.47%   15.45%   24.37%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.83%    0.12%    0.25%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   42.91%    3.84%    0.76%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.12%    0.01%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    0.15%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    0.02%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.13%    0.10%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.05%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.05%
  4  1     4    1  |1 1>+         0.24%   11.79%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.26%    0.00%    0.15%    0.00%
  6  1     6    1  |1 1>+         6.87%    0.08%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.01%    0.11%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.02%    0.01%    0.00%    0.00%    0.11%
  9  1     9    1  |1 1>+        22.56%    0.93%    0.01%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.02%    0.11%    6.36%    0.00%    0.28%
 11  1    11    1  |1 1>+         0.41%    0.09%    0.28%    0.04%    6.33%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%   69.97%    0.43%
 13  1     1    1  |1 0>          0.00%    0.00%    0.05%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.05%    0.00%
 16  1     4    1  |1 0>          0.04%    0.02%    0.00%    0.00%    0.09%
 17  1     5    1  |1 0>          0.06%    0.03%    0.00%    0.00%    0.06%
 18  1     6    1  |1 0>          0.00%    0.01%    0.11%    0.00%    0.00%
 19  1     7    1  |1 0>          0.44%    0.06%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.06%    3.02%    0.00%    0.11%    0.00%
 21  1     9    1  |1 0>          0.01%    0.02%    6.64%    0.00%    0.00%
 22  1    10    1  |1 0>         46.51%    4.66%    0.01%    0.23%    0.00%
 23  1    11    1  |1 0>          4.93%   35.78%    0.00%    6.38%    0.04%
 24  1    12    1  |1 0>          0.00%    0.00%    0.02%    0.43%   69.95%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.05%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.13%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.02%    0.02%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.03%    0.01%    0.00%    0.00%    0.11%
 31  1     7    1  |1 1>-         0.07%    3.01%    0.00%    0.11%    0.00%
 32  1     8    1  |1 1>-        10.78%    0.30%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.24%    0.03%    0.00%    0.08%    6.56%
 34  1    10    1  |1 1>-         1.81%   38.02%    0.00%    6.33%    0.08%
 35  1    11    1  |1 1>-         4.62%    1.47%    0.00%    0.23%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%   70.38%    0.00%    0.02%
 37  1     1    1  |0 0>          0.12%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.01%    0.25%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.13%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%   15.82%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.01%    0.10%   15.72%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%   15.72%    0.10%


 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     6898.47       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    144077.05 112264.94   8397.36  23394.35      7.72      3.56      8.91
 REAL TIME  *    146264.75 SEC
 DISK USED  *         6.82 GB (local),       55.66 GB (total)
 SF USED    *        43.59 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -192.491200315076

              CI              CI           MULTI         RHF-SCF
   -192.44825344   -192.43818789   -191.67500845   -191.86439724
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
