
 Working directory              : /wrk/irikura/molpro.qCfqcsxoG8/
 Global scratch directory       : /wrk/irikura/molpro.qCfqcsxoG8/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.qCfqcsxoG8/

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
  (32 PROC) 64 bit mpp version                                                           DATE: 25-Nov-24          TIME: 17:48:12  
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

     Node minimum: 57.410 MB, node maximum: 80.216 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   39102068.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   3  SEGMENT LENGTH:   15998580      RECORD LENGTH: 524288

 Memory used in sort:      16.56 MW

 SORT1 READ   511790813. AND WROTE     6708865. INTEGRALS IN     21 RECORDS. CPU TIME:     1.91 SEC, REAL TIME:     1.99 SEC
 SORT2 READ    53582235. AND WROTE   312900871. INTEGRALS IN   1752 RECORDS. CPU TIME:     0.72 SEC, REAL TIME:     0.80 SEC

 Node minimum:    39095432.  Node maximum:    39129437. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.17      8.96
 REAL TIME  *        10.35 SEC
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
   1     -140.99982912    -140.99982912     0.00D+00     0.17D+00     0     0       0.19      0.35    start
   2     -179.13722481     -38.13739570     0.12D+00     0.20D+00     1     0       0.21      0.56    diag2
   3     -187.65819723      -8.52097242     0.12D+00     0.69D-01     2     0       0.20      0.76    diag2
   4     -191.43590805      -3.77771082     0.56D-01     0.52D-01     3     0       0.21      0.97    diag2
   5     -191.76236267      -0.32645462     0.11D-01     0.20D-01     4     0       0.21      1.18    diag2
   6     -191.85259386      -0.09023119     0.35D-02     0.59D-02     5     0       0.20      1.38    diag2
   7     -191.86165824      -0.00906438     0.11D-02     0.19D-02     6     0       0.21      1.59    diag2
   8     -191.86377787      -0.00211963     0.51D-03     0.75D-03     7     0       0.20      1.79    fixocc
   9     -191.86430759      -0.00052972     0.17D-03     0.68D-03     8     0       0.21      2.00    diag2
  10     -191.86437455      -0.00006696     0.11D-03     0.20D-03     9     0       0.20      2.20    diag2/orth
  11     -191.86439091      -0.00001636     0.22D-04     0.95D-04     9     0       0.20      2.40    diag2
  12     -191.86439559      -0.00000469     0.11D-04     0.40D-04     9     0       0.21      2.61    diag2
  13     -191.86439698      -0.00000139     0.46D-05     0.33D-04     9     0       0.21      2.82    diag2
  14     -191.86439720      -0.00000022     0.18D-05     0.15D-04     9     0       0.20      3.02    diag2
  15     -191.86439723      -0.00000003     0.71D-06     0.54D-05     9     0       0.21      3.23    diag2
  16     -191.86439724      -0.00000001     0.30D-06     0.32D-05     9     0       0.20      3.43    diag2
  17     -191.86439724      -0.00000000     0.10D-06     0.35D-06     0     0       0.21      3.64    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864397240739
  RHF One-electron energy            -340.681776829436
  RHF Two-electron energy             148.817379588696
  RHF Kinetic energy                   62.712671786661
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059419919047

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94945     1  1  s    1.00000
    2.1     2.00000    -0.84962     1  1  d0  -0.51139    1  1  d2+  0.85852
    3.1     2.00000    -0.84962     1  1  d1+  0.99939
    4.1     2.00000    -0.84962     1  1  d2-  0.99930
    5.1     2.00000    -0.84962     1  1  d0   0.85843    1  1  d2+  0.51136
    6.1     2.00000    -0.84962     1  1  d1-  0.99920
    7.1     2.00000    -0.35280     1  1  s   -0.38141    1  5  s    0.52245    1  6  s    0.42682    1 11  s   -0.25488
    1.2     2.00000    -3.63192     1  1  px   1.00024
    2.2     2.00000    -3.63191     1  1  pz   1.00024
    3.2     2.00000    -3.63191     1  1  py   1.00025
    4.2     1.00000    -0.05163     1  5  py   0.35611    1  6  py   0.37651    1  7  py   0.25410
    5.2     1.00000    -0.05163     1  5  pz   0.35611    1  6  pz   0.37651    1  7  pz   0.25409
    6.2     1.00000    -0.05163     1  5  px   0.35610    1  6  px   0.37648    1  7  px   0.25414


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
 CPU TIMES  *        12.84      3.67      8.96
 REAL TIME  *        14.23 SEC
 DISK USED  *        36.95 MB (local),        1.38 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     249 (  122  127)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.383D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.131D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.241D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.384D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.334D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 4 3 2 6 1 1 5 4   3 2 6 1 5 3 4 2 6 7  11 8141015 91312 1 2   6 4 3 510 91315 714
                                        81211 2 6 4 3 5 110   91315 7 8141211 5 4   3 6 2 110 91315 7 8  14121116282220211824
                                       261917232527 5 4 3 6   210 91315 714 81211   1 5 4 3 6 210 91315   714 81211 1 5 4 3 6
                                        2 1 5 4 3 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.602D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.399D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.228D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.360D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.433D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.659D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.329D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.393D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.668D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 2 3 1 2   3 1 710 9 4 8 5 6 3   2 1 6 5 4 810 9 7 7  10 9 8 4 6 5 3 2 120
                                       13181511171614211912   710 9 8 4 6 5 1 3 2  20131815111617142119  12 710 9 8 4 6 52013
                                       181511171621141912 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 511131815  20171621141912 1 3 2
                                        710 9 8 4 5 6 1 3 2   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  2021  ( 24 closed/active, 1113 closed/virtual, 0 active/active, 884 active/virtual )
 Total number of variables:    3992
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   25   38    0   -191.79707353    -191.82201759   -0.02494406    0.10528931 0.00070063 0.00000000  0.17E+01      2.73
   2    7   12    0   -191.81885597    -191.81936730   -0.00051133    0.05036676 0.00005734 0.00000000  0.14E+00      4.76
   3    6   12    0   -191.81936835    -191.81936836   -0.00000001    0.00013814 0.00000044 0.00000000  0.15E-02      6.57
   4    7   14    0   -191.81936836    -191.81936836    0.00000000    0.00000007 0.00000001 0.00000000  0.10E-05      8.46

 CONVERGENCE REACHED!  Final gradient:    0.00000016 ( 0.16E-06)
                       Final energy:   -191.81936836
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.844483916633
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.68155197
 One electron energy                          -335.73105357
 Two electron energy                           143.88656965
 Virial ratio                                    4.06062115
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.844483916521
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.68155197
 One electron energy                          -335.73105357
 Two electron energy                           143.88656965
 Virial ratio                                    4.06062115
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.844483916036
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.68155198
 One electron energy                          -335.73105357
 Two electron energy                           143.88656966
 Virial ratio                                    4.06062115
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.812430300719
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64744419
 One electron energy                          -335.58903340
 Two electron energy                           143.77660310
 Virial ratio                                    4.06177583
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.812430300576
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64744419
 One electron energy                          -335.58903340
 Two electron energy                           143.77660310
 Virial ratio                                    4.06177583
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.812430300501
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64744419
 One electron energy                          -335.58903340
 Two electron energy                           143.77660310
 Virial ratio                                    4.06177583
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.812430300009
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64744419
 One electron energy                          -335.58903341
 Two electron energy                           143.77660311
 Virial ratio                                    4.06177583
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.812430300008
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64744419
 One electron energy                          -335.58903341
 Two electron energy                           143.77660311
 Virial ratio                                    4.06177583
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -191.778712026085
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.63718437
 One electron energy                          -335.50011350
 Two electron energy                           143.72140148
 Virial ratio                                    4.06173903
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
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
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.015160543858
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000001
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.984839413100
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999237
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000000875
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.779560032490
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000004983
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999999366
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.220440290051
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000763
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999125
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.205279423652
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999995017
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000633
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.794720296849
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 3 5 4 1 1 3 5   6 4 2 1 3 5 4 6 213  101415 81211 7 9 1 5   3 4 6 213101415 812
                                       11 9 7 5 3 4 6 2 113  101415 812 911 7 3 5   4 6 2 11310151411 8  12 7 922162018241923
                                       262817212527 3 5 6 4   211 7 81215141013 9   1 6 3 5 2 411 712 8  1415 91013 1 6 3 5 4
                                        2 1 5 3 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 3 2 2   1 3 9 7 810 5 6 4 2   1 3 9 7 810 5 4 6 9   7 810 5 6 4 2 1 318
                                       20151714162113121911   7 9 810 5 6 4 1 2 3  18201517161421131119  12 7 9 810 5 6 41820
                                       151716142113111219 7   9 810 5 6 4 2 1 3 5   610 8 7 9 412192113  14161517111820 2 3 1
                                        5 610 8 4 9 7 2 1 3   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.18164     1  1  s    0.99682
    2.1     2.00000    -1.08251     1  1  d1-  1.00017
    3.1     2.00000    -1.08251     1  1  d0   1.00017
    4.1     2.00000    -1.08251     1  1  d2-  1.00017
    5.1     2.00000    -1.08251     1  1  d2+  1.00017
    6.1     2.00000    -1.08251     1  1  d1+  1.00017
    7.1     1.96915    -0.56587     1  1  s   -0.40223    1  5  s    0.59233    1  6  s    0.43601    1 11  s   -0.26089
    1.2     2.00000    -3.86456     1  1  px   0.99982
    2.2     2.00000    -3.86456     1  1  py   0.99982
    3.2     2.00000    -3.86456     1  1  pz   0.99982
    4.2     0.67281    -0.06749     1  5  pz   0.41070    1  6  pz   0.41222
    5.2     0.67281    -0.06749     1  5  px   0.41070    1  6  px   0.41222
    6.2     0.67281    -0.06749     1  5  py   0.41070    1  6  py   0.41222
    7.2     0.00415     0.39421     1  1  px   0.37165    1  4  px  -1.02133    1  5  px  -0.45824    1  6  px   0.77920
                                    1  7  px   0.34051
    8.2     0.00415     0.39421     1  1  pz   0.37165    1  4  pz  -1.02133    1  5  pz  -0.45824    1  6  pz   0.77920
                                    1  7  pz   0.34051
    9.2     0.00415     0.39421     1  1  py   0.37165    1  4  py  -1.02133    1  5  py  -0.45824    1  6  py   0.77920
                                    1  7  py   0.34051
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a000      -0.00000000     -0.00000002      0.99280062
 2 0aa000       0.99280062      0.00002742      0.00000000
 2 aa0000      -0.00002742      0.99280062      0.00000002
 0 a2a000       0.00000000      0.00000000     -0.08331113
 0 aa2000       0.00000230     -0.08331113     -0.00000000
 0 2aa000      -0.08331113     -0.00000230     -0.00000000
 
 Energy:     -191.84448392   -191.84448392   -191.84448392
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020000       0.80836536      0.00000050     -0.00000045     -0.00000002     -0.04986085      0.56664004
 2 200000      -0.36100190     -0.00000027     -0.00000017      0.00000001      0.72499535      0.56664006
 2 b0a000      -0.00000002      0.00000011     -0.00000008     -0.70139538     -0.00000000     -0.00000000
 2 a0b000       0.00000002     -0.00000011      0.00000008      0.70139538      0.00000000      0.00000000
 2 0ab000      -0.00000043      0.70139538      0.00002859      0.00000011      0.00000005     -0.00000000
 2 0ba000       0.00000043     -0.70139538     -0.00002859     -0.00000011     -0.00000005      0.00000000
 2 ba0000      -0.00000041      0.00002859     -0.70139538      0.00000008     -0.00000037     -0.00000000
 2 ab0000       0.00000041     -0.00002859      0.70139538     -0.00000008      0.00000037      0.00000000
 2 002000      -0.44736343     -0.00000023      0.00000062      0.00000001     -0.67513450      0.56664006
 0 202000       0.06774347      0.00000004     -0.00000004     -0.00000000     -0.00417849     -0.09306541
 0 220000      -0.03749042     -0.00000002      0.00000005      0.00000000     -0.05657832     -0.09306541
 0 022000      -0.03025306     -0.00000002     -0.00000001      0.00000000      0.06075681     -0.09306541
 0 a2b000      -0.00000000      0.00000001     -0.00000001     -0.05877906      0.00000000      0.00000000
 0 b2a000       0.00000000     -0.00000001      0.00000001      0.05877906     -0.00000000     -0.00000000
 0 ab2000      -0.00000003      0.00000240     -0.05877906      0.00000001     -0.00000003     -0.00000000
 0 ba2000       0.00000003     -0.00000240      0.05877906     -0.00000001      0.00000003      0.00000000
 0 2ba000      -0.00000004      0.05877906      0.00000240      0.00000001      0.00000000     -0.00000000
 0 2ab000       0.00000004     -0.05877906     -0.00000240     -0.00000001     -0.00000000      0.00000000
 
 Energy:     -191.81243030   -191.81243030   -191.81243030   -191.81243030   -191.81243030   -191.77871203
 


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
 CPU TIMES  *        21.75      8.90      3.67      8.96
 REAL TIME  *        24.53 SEC
 DISK USED  *        89.89 MB (local),        1.79 GB (total)
 SF USED    *       148.88 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8444839   2.0
    -191.8444839   2.0
    -191.8444839   2.0
    -191.8124303   6.0
    -191.8124303   6.0
    -191.8124303   6.0
    -191.8124303   6.0
    -191.8124303   6.0
    -191.7787120  -0.0
                                                  


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
     1      -191.84448392
     2      -191.84448392
     3      -191.84448392

 Number of blocks in overlap matrix:   380   Smallest eigenvalue:  0.47D-05
 Number of N-2 electron functions:     683
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:      11024685
 Number of doubly external configurations:      10587386
 Total number of contracted configurations:     21650477
 Total number of uncontracted configurations:  731368774

 Diagonal Coupling coefficients finished.               Storage:  13037350 words, CPU-Time:      7.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3137074 words, CPU-time:      1.46 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.84448392    -0.00000000    -0.94251436  0.56D-01  0.10D+00    13.51
    1     2     2     1.00000000     0.00000000  -191.84448392     0.00000000    -0.94268999  0.57D-01  0.10D+00    13.51
    1     3     3     1.00000000     0.00000000  -191.84448392     0.00000000    -0.94260227  0.56D-01  0.10D+00    13.51
    2     1     1     1.09924216    -0.75852653  -192.60301045    -0.75852653    -0.02524036  0.37D-02  0.15D-02   393.93
    2     2     2     1.09930032    -0.75846720  -192.60295112    -0.75846720    -0.02530665  0.37D-02  0.15D-02   393.93
    2     3     3     1.09936698    -0.75840255  -192.60288646    -0.75840255    -0.02537786  0.37D-02  0.15D-02   393.93
    3     1     1     1.08731588    -0.78178577  -192.62626969    -0.02325924    -0.00034115  0.42D-04  0.32D-04   792.93
    3     2     2     1.08731406    -0.78178430  -192.62626821    -0.02331710    -0.00034257  0.42D-04  0.32D-04   792.93
    3     3     3     1.08731348    -0.78178256  -192.62626648    -0.02338001    -0.00034423  0.43D-04  0.32D-04   792.93
    4     1     1     1.08701172    -0.78213031  -192.62661422    -0.00034454    -0.00001374  0.25D-05  0.19D-05  1270.03
    4     2     2     1.08701128    -0.78213025  -192.62661417    -0.00034596    -0.00001377  0.25D-05  0.19D-05  1270.03
    4     3     3     1.08701089    -0.78213020  -192.62661412    -0.00034764    -0.00001382  0.25D-05  0.19D-05  1270.03
    5     1     1     1.08709764    -0.78214703  -192.62663095    -0.00001673    -0.00000106  0.55D-07  0.21D-06  1673.22
    5     2     2     1.08709747    -0.78214703  -192.62663094    -0.00001677    -0.00000106  0.56D-07  0.21D-06  1673.22
    5     3     3     1.08709726    -0.78214702  -192.62663094    -0.00001682    -0.00000106  0.56D-07  0.21D-06  1673.22
    6     1     1     1.08710722    -0.78214842  -192.62663233    -0.00000138    -0.00000010  0.12D-07  0.16D-07  2074.34
    6     2     2     1.08710724    -0.78214842  -192.62663233    -0.00000139    -0.00000010  0.12D-07  0.16D-07  2074.34
    6     3     3     1.08710726    -0.78214842  -192.62663233    -0.00000139    -0.00000010  0.12D-07  0.16D-07  2074.34
    7     1     1     1.08711736    -0.78214854  -192.62663245    -0.00000012    -0.00000001  0.84D-09  0.14D-08  2476.63
    7     2     2     1.08711738    -0.78214854  -192.62663245    -0.00000012    -0.00000001  0.84D-09  0.14D-08  2476.63
    7     3     3     1.08711737    -0.78214854  -192.62663245    -0.00000012    -0.00000001  0.84D-09  0.14D-08  2476.63


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.4%  58.9%
 P   0.2%  23.4%   8.8%

 Initialization:   0.4%
 Other:            7.3%

 Total CPU:     2476.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//000           0.9523098  -0.0001233   0.0128868
 2222222222//0000          -0.0034852   0.9144045   0.2662936
 2222222222/0/000          -0.0124072  -0.2663164   0.9143203
 22222202222//000          -0.0702490   0.0000091  -0.0009506
 2222220222//2000           0.0002571  -0.0674528  -0.0196437
 2222220222/2/000           0.0009152   0.0196453  -0.0674466

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957548   -0.003504   -0.012475
 2          -0.000124    0.919434   -0.267781
 3           0.012958    0.267758    0.919349

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957635   -0.000000    0.000000
 2          -0.000000    0.957635   -0.000000
 3           0.000000   -0.000000    0.957635


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95754768 (fixed)   0.95793269 (relaxed)   0.95763536 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00305148   -0.00741983   -0.63842313
 Singles      0.02182700   -0.09720292   -0.10479234
 Pairs        0.06555619    0.00882638   -0.03893307
 Total        1.09043467   -0.09579637   -0.78214854
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.84448392
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17171539
 One electron energy                 -335.30316631
 Two electron energy                  142.67653385
 Virial quotient                       -3.04925442
 Correlation energy                    -0.78214854
 !MRCI STATE 1.1 Energy              -192.626632454369

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69736580 (Davidson, fixed reference)
 Cluster corrected energies          -192.69683643 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69736580 (Davidson, rotated reference)

 Cluster corrected energies          -192.69519872 (Pople, fixed reference)
 Cluster corrected energies          -192.69464681 (Pople, relaxed reference)
 Cluster corrected energies          -192.69519872 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.91943390 (fixed)   0.95793268 (relaxed)   0.95763535 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00305148   -0.00741983   -0.80407120
 Singles      0.02182705   -0.09720294   -0.10479238
 Pairs        0.06555617    0.18945483    0.12671504
 Total        1.09043470    0.08483206   -0.78214854
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.84448392
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17171351
 One electron energy                 -335.30316408
 Two electron energy                  142.67653162
 Virial quotient                       -3.04925451
 Correlation energy                    -0.78214854
 !MRCI STATE 2.1 Energy              -192.626632454239

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69736582 (Davidson, fixed reference)
 Cluster corrected energies          -192.69683645 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69736582 (Davidson, rotated reference)

 Cluster corrected energies          -192.69519874 (Pople, fixed reference)
 Cluster corrected energies          -192.69464683 (Pople, relaxed reference)
 Cluster corrected energies          -192.69519874 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.91934928 (fixed)   0.95793269 (relaxed)   0.95763536 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00305148   -0.00741983   -0.03383410
 Singles      0.02182702   -0.09720293   -0.10479236
 Pairs        0.06555618   -0.65043844   -0.64352207
 Total        1.09043468   -0.75506120   -0.78214854
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.84448392
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17171411
 One electron energy                 -335.30316474
 Two electron energy                  142.67653228
 Virial quotient                       -3.04925448
 Correlation energy                    -0.78214854
 !MRCI STATE 3.1 Energy              -192.626632454227

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69736581 (Davidson, fixed reference)
 Cluster corrected energies          -192.69683644 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69736581 (Davidson, rotated reference)

 Cluster corrected energies          -192.69519873 (Pople, fixed reference)
 Cluster corrected energies          -192.69464681 (Pople, relaxed reference)
 Cluster corrected energies          -192.69519873 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      503.16       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2531.27   2509.51      8.90      3.67      8.96
 REAL TIME  *      2571.94 SEC
 DISK USED  *       590.22 MB (local),        5.70 GB (total)
 SF USED    *         5.20 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.69736580  AU                              
 SETTING HLSDIAG(2)     =      -192.69736582  AU                              
 SETTING HLSDIAG(3)     =      -192.69736581  AU                              


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


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.81243030
     2      -191.81243030
     3      -191.81243030
     4      -191.81243030
     5      -191.81243030
     6      -191.77871203

 Number of blocks in overlap matrix:   658   Smallest eigenvalue:  0.21D-05
 Number of N-2 electron functions:    1291
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       6415270
 Number of doubly external configurations:      20017786
 Total number of contracted configurations:     26457206
 Total number of uncontracted configurations:  427217996

 Diagonal Coupling coefficients finished.               Storage:  12976333 words, CPU-Time:     18.45 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3293601 words, CPU-time:      2.88 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.81243030    -0.00000000    -0.94289713  0.61D-01  0.99D-01    28.92
    1     2     2     1.00000000     0.00000000  -191.81243030    -0.00000000    -0.94350356  0.61D-01  0.99D-01    28.92
    1     3     3     1.00000000     0.00000000  -191.81243030     0.00000000    -0.94378473  0.62D-01  0.99D-01    28.92
    1     4     4     1.00000000     0.00000000  -191.81243030    -0.00000000    -0.94367151  0.62D-01  0.99D-01    28.92
    1     5     5     1.00000000     0.00000000  -191.81243030     0.00000000    -0.94269255  0.61D-01  0.99D-01    28.92
    1     6     6     1.00000000     0.00000000  -191.77871203     0.00000000    -0.92759323  0.40D-01  0.10D+00    28.92
    2     1     1     1.10206057    -0.76290333  -192.57533363    -0.76290333    -0.02579741  0.40D-02  0.16D-02   837.62
    2     2     2     1.10201248    -0.76286918  -192.57529948    -0.76286918    -0.02584140  0.40D-02  0.16D-02   837.62
    2     3     3     1.10226665    -0.76259335  -192.57502365    -0.76259335    -0.02616149  0.41D-02  0.16D-02   837.62
    2     4     4     1.10240706    -0.76252650  -192.57495680    -0.76252650    -0.02623655  0.41D-02  0.16D-02   837.62
    2     5     5     1.10238971    -0.76250291  -192.57493321    -0.76250291    -0.02626117  0.41D-02  0.16D-02   837.62
    2     6     6     1.09406153    -0.76295025  -192.54166227    -0.76295025    -0.02257234  0.27D-02  0.16D-02   837.62
    3     1     1     1.09004998    -0.78667401  -192.59910431    -0.02377068    -0.00044468  0.55D-04  0.50D-04  1762.50
    3     2     2     1.09006158    -0.78667095  -192.59910125    -0.02380177    -0.00044758  0.55D-04  0.51D-04  1762.50
    3     3     3     1.09006431    -0.78666357  -192.59909387    -0.02407022    -0.00045491  0.57D-04  0.51D-04  1762.50
    3     4     4     1.09007380    -0.78665961  -192.59908991    -0.02413312    -0.00045863  0.57D-04  0.51D-04  1762.50
    3     5     5     1.09008719    -0.78665705  -192.59908735    -0.02415414    -0.00046080  0.57D-04  0.52D-04  1762.50
    3     6     6     1.08769077    -0.78375429  -192.56246631    -0.02080404    -0.00038847  0.25D-04  0.56D-04  1762.50
    4     1     1     1.08979204    -0.78713839  -192.59956869    -0.00046438    -0.00002518  0.41D-05  0.37D-05  2686.83
    4     2     2     1.08979059    -0.78713804  -192.59956834    -0.00046708    -0.00002545  0.41D-05  0.37D-05  2686.83
    4     3     3     1.08979138    -0.78713774  -192.59956804    -0.00047417    -0.00002567  0.42D-05  0.37D-05  2686.83
    4     4     4     1.08979254    -0.78713751  -192.59956781    -0.00047790    -0.00002586  0.42D-05  0.37D-05  2686.83
    4     5     5     1.08979027    -0.78713712  -192.59956742    -0.00048007    -0.00002614  0.43D-05  0.38D-05  2686.83
    4     6     6     1.08836047    -0.78416326  -192.56287528    -0.00040897    -0.00002694  0.29D-05  0.53D-05  2686.83
    5     1     1     1.08992705    -0.78716932  -192.59959962    -0.00003093    -0.00000175  0.11D-06  0.33D-06  3465.20
    5     2     2     1.08992580    -0.78716930  -192.59959960    -0.00003126    -0.00000177  0.11D-06  0.33D-06  3465.20
    5     3     3     1.08992444    -0.78716928  -192.59959958    -0.00003154    -0.00000178  0.11D-06  0.34D-06  3465.20
    5     4     4     1.08992424    -0.78716927  -192.59959957    -0.00003175    -0.00000179  0.11D-06  0.34D-06  3465.20
    5     5     5     1.08992255    -0.78716924  -192.59959954    -0.00003213    -0.00000181  0.11D-06  0.34D-06  3465.20
    5     6     6     1.08889323    -0.78419808  -192.56291011    -0.00003482    -0.00000228  0.15D-06  0.42D-06  3465.20
    6     1     1     1.08994046    -0.78717143  -192.59960173    -0.00000212    -0.00000016  0.16D-07  0.27D-07  4235.15
    6     2     2     1.08994006    -0.78717143  -192.59960173    -0.00000213    -0.00000016  0.16D-07  0.28D-07  4235.15
    6     3     3     1.08994040    -0.78717143  -192.59960173    -0.00000215    -0.00000016  0.16D-07  0.28D-07  4235.15
    6     4     4     1.08994023    -0.78717143  -192.59960173    -0.00000216    -0.00000016  0.16D-07  0.28D-07  4235.15
    6     5     5     1.08993979    -0.78717143  -192.59960173    -0.00000218    -0.00000016  0.17D-07  0.28D-07  4235.15
    6     6     6     1.08892846    -0.78420079  -192.56291281    -0.00000271    -0.00000020  0.22D-07  0.32D-07  4235.15
    7     1     1     1.08995749    -0.78717162  -192.59960192    -0.00000019    -0.00000002  0.13D-08  0.27D-08  5045.84
    7     2     2     1.08995750    -0.78717162  -192.59960192    -0.00000019    -0.00000002  0.13D-08  0.28D-08  5045.84
    7     3     3     1.08995747    -0.78717162  -192.59960192    -0.00000019    -0.00000002  0.13D-08  0.28D-08  5045.84
    7     4     4     1.08995752    -0.78717162  -192.59960192    -0.00000019    -0.00000002  0.13D-08  0.28D-08  5045.84
    7     5     5     1.08995752    -0.78717162  -192.59960192    -0.00000019    -0.00000002  0.14D-08  0.29D-08  5045.84
    7     6     6     1.08893818    -0.78420102  -192.56291304    -0.00000023    -0.00000002  0.15D-08  0.37D-08  5045.84


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.3%  35.4%
 P   0.3%  23.4%  25.5%

 Initialization:   0.4%
 Other:           14.2%

 Total CPU:     5045.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0000           0.0046412   0.0010022   0.0072639  -0.0183693   0.9504070   0.0000000
 2222222222/0\000           0.0443944   0.9070647   0.2809275   0.0042536  -0.0032382  -0.0000000
 22222222220/\000           0.1418847  -0.2844147   0.8958766  -0.0038556  -0.0073146  -0.0000000
 2222222222002000           0.7603863   0.0006095  -0.1206947  -0.0983892  -0.0046930   0.5443329
 2222222222020000          -0.2956906  -0.0039398   0.0487817   0.7158261   0.0149106   0.5443329
 2222222222200000          -0.4646958   0.0033303   0.0719129  -0.6174369  -0.0102176   0.5443329
 2222220222022000          -0.0342435   0.0002454   0.0052993  -0.0454987  -0.0007529  -0.0788728
 2222220222220000           0.0560327   0.0000449  -0.0088940  -0.0072503  -0.0003458  -0.0788728
 2222220222202000          -0.0217895  -0.0002903   0.0035947   0.0527490   0.0010988  -0.0788726
 2222220222/\2000          -0.0003420  -0.0000739  -0.0005353   0.0013536  -0.0700351  -0.0000000
 2222220222/2\000          -0.0032714  -0.0668414  -0.0207015  -0.0003134   0.0002386   0.0000000
 22222202222/\000          -0.0104554   0.0209584  -0.0660169   0.0002841   0.0005390   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.417185    0.142725    0.004669    0.044657   -0.847345    0.000000
 2          -0.004726   -0.286099    0.001008    0.912437    0.002230    0.000000
 3           0.068410    0.901183    0.007307    0.282591    0.133046   -0.000000
 4           0.857525   -0.003878   -0.018478    0.004279   -0.422727   -0.000000
 5           0.018093   -0.007358    0.956036   -0.003257   -0.005052   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.956787

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956254   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.956254   -0.000000    0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.956254    0.000000   -0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.956254    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.956254    0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.956787


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.84734455 (fixed)   0.95653346 (relaxed)   0.95625436 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00332951   -0.00808378   -0.63052802
 Singles      0.02362260   -0.10025551   -0.10867437
 Pairs        0.06663440   -0.00000007   -0.04796923
 Total        1.09358651   -0.10833936   -0.78717162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81243030
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15517328
 One electron energy                 -335.18471190
 Two electron energy                  142.58510997
 Virial quotient                       -3.04962510
 Correlation energy                    -0.78717162
 !MRCI STATE 1.1 Energy              -192.599601920885

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67327057 (Davidson, fixed reference)
 Cluster corrected energies          -192.67276828 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67327057 (Davidson, rotated reference)

 Cluster corrected energies          -192.67206524 (Pople, fixed reference)
 Cluster corrected energies          -192.67153140 (Pople, relaxed reference)
 Cluster corrected energies          -192.67206524 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.91243701 (fixed)   0.95653345 (relaxed)   0.95625435 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00332952   -0.00808378   -0.63052785
 Singles      0.02362276   -0.10025575   -0.10867453
 Pairs        0.06663426   -0.00000000   -0.04796923
 Total        1.09358653   -0.10833953   -0.78717162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81243030
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15517034
 One electron energy                 -335.18470929
 Two electron energy                  142.58510737
 Virial quotient                       -3.04962525
 Correlation energy                    -0.78717162
 !MRCI STATE 2.1 Energy              -192.599601920858

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67327058 (Davidson, fixed reference)
 Cluster corrected energies          -192.67276829 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67327058 (Davidson, rotated reference)

 Cluster corrected energies          -192.67206526 (Pople, fixed reference)
 Cluster corrected energies          -192.67153141 (Pople, relaxed reference)
 Cluster corrected energies          -192.67206526 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.90118257 (fixed)   0.95653347 (relaxed)   0.95625436 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00332952   -0.00808378   -0.63052792
 Singles      0.02362271   -0.10025571   -0.10867449
 Pairs        0.06663427    0.00000001   -0.04796921
 Total        1.09358650   -0.10833948   -0.78717162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81243030
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15517038
 One electron energy                 -335.18470956
 Two electron energy                  142.58510764
 Virial quotient                       -3.04962524
 Correlation energy                    -0.78717162
 !MRCI STATE 3.1 Energy              -192.599601920815

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67327056 (Davidson, fixed reference)
 Cluster corrected energies          -192.67276827 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67327056 (Davidson, rotated reference)

 Cluster corrected energies          -192.67206523 (Pople, fixed reference)
 Cluster corrected energies          -192.67153138 (Pople, relaxed reference)
 Cluster corrected energies          -192.67206523 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.85752534 (fixed)   0.95653345 (relaxed)   0.95625435 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00332951   -0.00808377   -0.63052799
 Singles      0.02362266   -0.10025559   -0.10867442
 Pairs        0.06663437   -0.00000000   -0.04796922
 Total        1.09358654   -0.10833937   -0.78717162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81243030
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15517523
 One electron energy                 -335.18471510
 Two electron energy                  142.58511318
 Virial quotient                       -3.04962501
 Correlation energy                    -0.78717162
 !MRCI STATE 4.1 Energy              -192.599601920058

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67327059 (Davidson, fixed reference)
 Cluster corrected energies          -192.67276830 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67327059 (Davidson, rotated reference)

 Cluster corrected energies          -192.67206526 (Pople, fixed reference)
 Cluster corrected energies          -192.67153142 (Pople, relaxed reference)
 Cluster corrected energies          -192.67206526 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95603594 (fixed)   0.95653345 (relaxed)   0.95625434 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00332951   -0.00808377   -0.63052773
 Singles      0.02362284   -0.10025587   -0.10867460
 Pairs        0.06663420    0.00000000   -0.04796929
 Total        1.09358655   -0.10833965   -0.78717162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81243030
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15517327
 One electron energy                 -335.18471346
 Two electron energy                  142.58511154
 Virial quotient                       -3.04962511
 Correlation energy                    -0.78717162
 !MRCI STATE 5.1 Energy              -192.599601919929

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67327060 (Davidson, fixed reference)
 Cluster corrected energies          -192.67276830 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67327060 (Davidson, rotated reference)

 Cluster corrected energies          -192.67206527 (Pople, fixed reference)
 Cluster corrected energies          -192.67153142 (Pople, relaxed reference)
 Cluster corrected energies          -192.67206527 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95678716 (fixed)   0.95704060 (relaxed)   0.95678716 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00315051   -0.00773393   -0.00934165
 Singles      0.01787352   -0.08844006   -0.09378879
 Pairs        0.07134486   -0.68802707   -0.68107058
 Total        1.09236890   -0.78420106   -0.78420102
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.77871203
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15138989
 One electron energy                 -335.07039217
 Two electron energy                  142.50747913
 Virial quotient                       -3.04922684
 Correlation energy                    -0.78420102
 !MRCI STATE 6.1 Energy              -192.562913042070

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.63534882 (Davidson, fixed reference)
 Cluster corrected energies          -192.63489517 (Davidson, relaxed reference)
 Cluster corrected energies          -192.63534882 (Davidson, rotated reference)

 Cluster corrected energies          -192.63408857 (Pople, fixed reference)
 Cluster corrected energies          -192.63360739 (Pople, relaxed reference)
 Cluster corrected energies          -192.63408857 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1719.95       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      7746.49   5215.21   2509.51      8.90      3.67      8.96
 REAL TIME  *      7896.10 SEC
 DISK USED  *         1.76 GB (local),       15.20 GB (total)
 SF USED    *        11.89 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -192.67327057  AU                              
 SETTING HLSDIAG(5)     =      -192.67327058  AU                              
 SETTING HLSDIAG(6)     =      -192.67327056  AU                              
 SETTING HLSDIAG(7)     =      -192.67327059  AU                              
 SETTING HLSDIAG(8)     =      -192.67327060  AU                              
 SETTING HLSDIAG(9)     =      -192.63534882  AU                              


         HLSDIAG
    -192.6973658
    -192.6973658
    -192.6973658
    -192.6732706
    -192.6732706
    -192.6732706
    -192.6732706
    -192.6732706
    -192.6353488
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -192.626632   -192.626632   -192.626632
 Replaced energies:   -192.697366   -192.697366   -192.697366

 Wavefunction restored from record  5203.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -192.599602   -192.599602   -192.599602   -192.599602   -192.599602   -192.562913
 Replaced energies:   -192.673271   -192.673271   -192.673271   -192.673271   -192.673271   -192.635349



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.69736582

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00    -636.58    2185.90       0.00       0.00       0.00     -99.69
                           -0.00     -43.57      -0.42       0.00    2185.70     636.63       0.00       0.00       0.00       3.13

    2   2.1  1.0  1.0       0.00       0.00       0.00     636.58      -0.00       8.33       0.00       0.00       0.00   -2526.67
                           43.57       0.00   -3219.48   -2185.70       0.00     -29.66       0.00       0.00       0.00     -45.46

    3   3.1  1.0  1.0       0.00       0.00       0.00   -2185.90      -8.33      -0.00       0.00       0.00       0.00    -389.01
                            0.42    3219.48       0.00    -636.63      29.66      -0.00       0.00       0.00       0.00   -1039.74

    4   1.1  1.0  0.0       0.00     636.58   -2185.90       0.00       0.00       0.00       0.00    -636.58    2185.90       0.00
                           -0.00    2185.70     636.63       0.00       0.00       0.00       0.00    2185.70     636.63   -2190.44

    5   2.1  1.0  0.0    -636.58      -0.00      -8.33       0.00       0.00       0.00     636.58      -0.00       8.33       0.00
                        -2185.70      -0.00     -29.66      -0.00       0.00       0.00   -2185.70       0.00     -29.66     146.66

    6   3.1  1.0  0.0    2185.90       8.33      -0.00       0.00       0.00       0.00   -2185.90      -8.33      -0.00       0.00
                         -636.63      29.66       0.00      -0.00      -0.00       0.00    -636.63      29.66      -0.00      -3.12

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00     636.58   -2185.90       0.00       0.00       0.00     -99.69
                           -0.00      -0.00      -0.00      -0.00    2185.70     636.63       0.00      43.57       0.42      -3.13

    8   2.1  1.0 -1.0       0.00       0.00       0.00    -636.58      -0.00      -8.33       0.00       0.00       0.00   -2526.67
                           -0.00      -0.00      -0.00   -2185.70      -0.00     -29.66     -43.57      -0.00    3219.48      45.46

    9   3.1  1.0 -1.0       0.00       0.00       0.00    2185.90       8.33      -0.00       0.00       0.00       0.00    -389.01
                           -0.00      -0.00      -0.00    -636.63      29.66       0.00      -0.42   -3219.48      -0.00    1039.74

   10   1.1  0.0  0.0     -99.69   -2526.67    -389.01       0.00       0.00       0.00     -99.69   -2526.67    -389.01    5288.30
                           -3.13      45.46    1039.74    2190.44    -146.66       3.12       3.13     -45.46   -1039.74       0.00

   11   2.1  0.0  0.0   -2128.68     185.75    -672.95       0.00       0.00       0.00   -2128.68     185.75    -672.95       0.00
                            4.64    -647.19    -174.77      -4.68   -2903.38    -842.26      -4.64     647.19     174.77      -0.00

   12   3.1  0.0  0.0    -690.96    -204.06    2130.35       0.00       0.00       0.00    -690.96    -204.06    2130.35       0.00
                           11.51    2072.48     434.46    -335.81    -905.64    -243.13     -11.51   -2072.48    -434.46      -0.00

   13   4.1  0.0  0.0     -11.10     317.38      82.83       0.00       0.00       0.00     -11.10     317.38      82.83       0.00
                          -12.17     658.41   -2293.51    2910.81       3.13     -23.36      12.17    -658.41    2293.51      -0.00

   14   5.1  0.0  0.0       7.80      19.84     -12.07       0.00       0.00       0.00       7.80      19.84     -12.07       0.00
                         2240.26      -2.94     -22.22       6.85    -875.36    3044.52   -2240.26       2.94      22.22      -0.00

   15   6.1  0.0  0.0     -13.50    3540.80    1031.16       0.00       0.00       0.00     -13.50    3540.80    1031.16       0.00
                          -48.04   -1031.24    3540.48    5215.03      -0.67      70.57      48.04    1031.24   -3540.48      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0   -2128.68    -690.96     -11.10       7.80     -13.50
                           -4.64     -11.51      12.17   -2240.26      48.04

    2   2.1  1.0  1.0     185.75    -204.06     317.38      19.84    3540.80
                          647.19   -2072.48    -658.41       2.94    1031.24

    3   3.1  1.0  1.0    -672.95    2130.35      82.83     -12.07    1031.16
                          174.77    -434.46    2293.51      22.22   -3540.48

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            4.68     335.81   -2910.81      -6.85   -5215.03

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         2903.38     905.64      -3.13     875.36       0.67

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          842.26     243.13      23.36   -3044.52     -70.57

    7   1.1  1.0 -1.0   -2128.68    -690.96     -11.10       7.80     -13.50
                            4.64      11.51     -12.17    2240.26     -48.04

    8   2.1  1.0 -1.0     185.75    -204.06     317.38      19.84    3540.80
                         -647.19    2072.48     658.41      -2.94   -1031.24

    9   3.1  1.0 -1.0    -672.95    2130.35      82.83     -12.07    1031.16
                         -174.77     434.46   -2293.51     -22.22    3540.48

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5288.29       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5288.30       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5288.29       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5288.29       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   13611.16
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -192.69736582 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.004       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    3091.047     900.337      -0.000     -43.567

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000   -3091.047       0.000     -41.945      43.567       0.000

    3    1  |1 1>+              0.000       0.000       0.003      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    -900.337      41.945       0.000       0.417    3219.478

    1    1  |1 0>               0.000      -0.000      -0.000       0.004       0.000       0.000       0.000     900.260
                                0.000    3091.047     900.337       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000    -900.260       0.000
                            -3091.047       0.000     -41.945      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.003    3091.332      11.782
                             -900.337      41.945       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000    -900.260    3091.332       0.004       0.000
                               -0.000     -43.567      -0.417       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000     900.260       0.000      11.782       0.000       0.000
                               43.567       0.000   -3219.478       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000   -3091.332     -11.782       0.000       0.000       0.000
                                0.417    3219.478       0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>            -140.988   -3573.248    -550.141       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    2190.441    -146.663       3.117      -4.420      64.284

    2    1  |0 0>           -3010.402     262.689    -951.700       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -4.677   -2903.375    -842.258       6.567    -915.269

    3    1  |0 0>            -977.159    -288.587    3012.774       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -335.813    -905.643    -243.129      16.276    2930.935

    4    1  |0 0>             -15.705     448.844     117.138       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    2910.814       3.132     -23.359     -17.214     931.129

    5    1  |0 0>              11.028      28.053     -17.072       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       6.852    -875.361    3044.520    3168.201      -4.163

    6    1  |0 0>             -19.086    5007.452    1458.274       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    5215.028      -0.675      70.571     -67.944   -1458.399

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000    -140.988   -3010.402    -977.159     -15.705      11.028     -19.086
                               -0.417       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000   -3573.248     262.689    -288.587     448.844      28.053    5007.452
                            -3219.478       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    -550.141    -951.700    3012.774     117.138     -17.072    1458.274
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>           -3091.332       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -2190.441       4.677     335.813   -2910.814      -6.852   -5215.028

    2    1  |1 0>             -11.782       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     146.663    2903.375     905.643      -3.132     875.361       0.675

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -3.117     842.258     243.129      23.359   -3044.520     -70.571

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       4.420      -6.567     -16.276      17.214   -3168.201      67.944

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -64.284     915.269   -2930.935    -931.129       4.163    1458.399

    3    1  |1 1>-              0.003       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1470.416     247.160    -614.418    3243.511      31.427   -5006.992

    1    1  |0 0>               0.000    5288.297       0.000       0.000       0.000       0.000       0.000
                             1470.416       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5288.293       0.000       0.000       0.000       0.000
                             -247.160      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5288.299       0.000       0.000       0.000
                              614.418      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5288.293       0.000       0.000
                            -3243.511      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5288.290       0.000
                              -31.427      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   13611.157
                             5006.992      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.74251494    -0.04514912    -9909.09      0.00000000        0.00      0.0000
    2  -192.71203618    -0.01467036    -3219.77      0.03047877     6689.32      0.8294
    3  -192.71203618    -0.01467036    -3219.77      0.03047877     6689.32      0.8294
    4  -192.71203617    -0.01467035    -3219.77      0.03047877     6689.32      0.8294
    5  -192.69893531    -0.00156949     -344.46      0.04357963     9564.62      1.1859
    6  -192.69893530    -0.00156948     -344.46      0.04357964     9564.63      1.1859
    7  -192.69893463    -0.00156881     -344.31      0.04358031     9564.77      1.1859
    8  -192.69893463    -0.00156881     -344.31      0.04358032     9564.77      1.1859
    9  -192.69893463    -0.00156881     -344.31      0.04358032     9564.77      1.1859
   10  -192.65703141     0.04033441     8852.38      0.08548354    18761.47      2.3261
   11  -192.65703140     0.04033442     8852.38      0.08548354    18761.47      2.3261
   12  -192.65703138     0.04033444     8852.39      0.08548356    18761.47      2.3261
   13  -192.65703072     0.04033510     8852.53      0.08548422    18761.62      2.3261
   14  -192.65703070     0.04033512     8852.53      0.08548424    18761.62      2.3261
   15  -192.61954042     0.07782540    17080.70      0.12297452    26989.79      3.3463

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00197228  0.01150865  0.66883086  0.22918498 -0.00199781 -0.00102493  0.46660809 -0.04777156
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.51746496 -0.19763690  0.00595045  0.00022425  0.54442765  0.28327445 -0.07508223  0.03769073
                          -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.15069652  0.67879988 -0.01167925  0.00222947  0.15823708  0.08133191  0.26524471 -0.13063389
                          -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.53891556  0.00000416  0.00053805 -0.00955313  0.02824398  0.63830223  0.00085057 -0.00748786

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00006975  0.02160821  0.70600603  0.03299968 -0.00005549 -0.00012880 -0.48269006 -0.10183751

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00729271 -0.00010086 -0.03300776  0.70627123  0.00029907  0.00865672 -0.02405428  0.52677237

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00702130  0.00355220  0.22917166 -0.66886675 -0.00708446  0.00450391  0.11284891  0.53373988

   2    1  |1 1>-          0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.15070946  0.67858161 -0.02075778 -0.00078526 -0.15035113  0.09716487 -0.25875680  0.12980948

   3    1  |1 1>-         -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.51741728  0.19770024 -0.00293633 -0.00930518  0.51726052 -0.32959043 -0.07406524  0.04524291

   1    1  |0 0>           0.00000002 -0.00000006 -0.00000000 -0.00000000  0.50507671  0.35091324 -0.01953588  0.02286035
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000003 -0.00000012  0.00000001  0.00196371 -0.00309585  0.59553238 -0.09808874
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000002  0.00000009 -0.00000004  0.00000000 -0.08060835 -0.05295350 -0.12857295  0.13162362
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000004  0.00000006 -0.00000000  0.00000000 -0.35477100  0.51138622  0.00156892 -0.01275589
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000006  0.00000002 -0.00878290  0.00861350  0.12635751  0.59992402
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

   6    1  |0 0>           0.35853903 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000002 -0.00000001  0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.29363465 -0.03093203 -0.41740133 -0.13633120 -0.00003460  0.00204122 -0.00075750
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.12891497  0.00247718  0.03663203 -0.11835712  0.01206795 -0.48765735  0.19874492
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.44174251 -0.00883385 -0.13101202  0.40146559  0.00303861 -0.14280639  0.05787866
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00112234  0.00555998 -0.00178351 -0.00138936 -0.43380634 -0.26481459 -0.20698363

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.25073695  0.15256949  0.39340156  0.12541024  0.00003301 -0.00012671  0.00002679

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.16764748 -0.41277699  0.14815852  0.03740506 -0.00580865 -0.00364530 -0.00280094

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.09253997 -0.43900216  0.03177305  0.00239729 -0.00574985  0.00315250  0.00269670

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.44537526  0.00845858  0.12539565 -0.40352500 -0.12435381  0.06876446  0.05788363

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.12878112 -0.00342355  0.03684741 -0.11748891  0.42856785 -0.23336129 -0.19872676

   1    1  |0 0>           0.09163327  0.00404123 -0.00026122  0.12382011  0.07947198  0.76863053  0.00000005
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.15246808  0.05815856  0.78042202 -0.00155195 -0.00401137  0.00062420 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.58684100  0.00758571  0.00101209  0.77269630 -0.01125284 -0.12335038 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00061835 -0.01466802  0.00515517 -0.00132782  0.77832102 -0.08018119 -0.00000004
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.10730313  0.78024882 -0.05808300 -0.00806287  0.01462856 -0.00433568 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000002  0.00000000  0.00000001 -0.00000002  0.00000006 -0.00000010  0.93351474
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.74251494     -0.04514912    -9909.09      0.00000000        0.00      0.0000
     2   1   -192.71203618     -0.01467036    -3219.77      0.03047877     6689.32      0.8294
     3   1   -192.71203618     -0.01467036    -3219.77      0.03047877     6689.32      0.8294
     4   1   -192.71203617     -0.01467035    -3219.77      0.03047877     6689.32      0.8294
     5   1   -192.69893531     -0.00156949     -344.46      0.04357963     9564.62      1.1859
     6   1   -192.69893530     -0.00156948     -344.46      0.04357964     9564.63      1.1859
     7   1   -192.69893463     -0.00156881     -344.31      0.04358031     9564.77      1.1859
     8   1   -192.69893463     -0.00156881     -344.31      0.04358032     9564.77      1.1859
     9   1   -192.69893463     -0.00156881     -344.31      0.04358032     9564.77      1.1859
    10   1   -192.65703141      0.04033441     8852.38      0.08548354    18761.47      2.3261
    11   1   -192.65703140      0.04033442     8852.38      0.08548354    18761.47      2.3261
    12   1   -192.65703138      0.04033444     8852.39      0.08548356    18761.47      2.3261
    13   1   -192.65703072      0.04033510     8852.53      0.08548422    18761.62      2.3261
    14   1   -192.65703070      0.04033512     8852.53      0.08548424    18761.62      2.3261
    15   1   -192.61954042      0.07782540    17080.70      0.12297452    26989.79      3.3463

 E0 =   -192.69736582 is the energy of the lowest zeroth-order state
 E1 =   -192.74251494 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00197228  0.01150865  0.66883086  0.22918498 -0.00199781 -0.00102493  0.46660809 -0.04777156
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.51746496 -0.19763690  0.00595045  0.00022425  0.54442765  0.28327445 -0.07508223  0.03769073
                               -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.15069652  0.67879988 -0.01167925  0.00222947  0.15823708  0.08133191  0.26524471 -0.13063389
                               -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.53891556  0.00000416  0.00053805 -0.00955313  0.02824398  0.63830223  0.00085057 -0.00748786

  5  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00006975  0.02160821  0.70600603  0.03299968 -0.00005549 -0.00012880 -0.48269006 -0.10183751

  6  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00729271 -0.00010086 -0.03300776  0.70627123  0.00029907  0.00865672 -0.02405428  0.52677237

  7  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00702130  0.00355220  0.22917166 -0.66886675 -0.00708446  0.00450391  0.11284891  0.53373988

  8  1     2    1  |1 1>-       0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.15070946  0.67858161 -0.02075778 -0.00078526 -0.15035113  0.09716487 -0.25875680  0.12980948

  9  1     3    1  |1 1>-      -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.51741728  0.19770024 -0.00293633 -0.00930518  0.51726052 -0.32959043 -0.07406524  0.04524291

 10  1     1    1  |0 0>        0.00000002 -0.00000006 -0.00000000 -0.00000000  0.50507671  0.35091324 -0.01953588  0.02286035
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000003 -0.00000012  0.00000001  0.00196371 -0.00309585  0.59553238 -0.09808874
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000002  0.00000009 -0.00000004  0.00000000 -0.08060835 -0.05295350 -0.12857295  0.13162362
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000004  0.00000006 -0.00000000  0.00000000 -0.35477100  0.51138622  0.00156892 -0.01275589
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000006  0.00000002 -0.00878290  0.00861350  0.12635751  0.59992402
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

 15  1     6    1  |0 0>        0.35853903 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000002 -0.00000001  0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.29363465 -0.03093203 -0.41740133 -0.13633120 -0.00003460  0.00204122 -0.00075750
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.12891497  0.00247718  0.03663203 -0.11835712  0.01206795 -0.48765735  0.19874492
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.44174251 -0.00883385 -0.13101202  0.40146559  0.00303861 -0.14280639  0.05787866
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00112234  0.00555998 -0.00178351 -0.00138936 -0.43380634 -0.26481459 -0.20698363

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.25073695  0.15256949  0.39340156  0.12541024  0.00003301 -0.00012671  0.00002679

  6  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.16764748 -0.41277699  0.14815852  0.03740506 -0.00580865 -0.00364530 -0.00280094

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.09253997 -0.43900216  0.03177305  0.00239729 -0.00574985  0.00315250  0.00269670

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.44537526  0.00845858  0.12539565 -0.40352500 -0.12435381  0.06876446  0.05788363

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.12878112 -0.00342355  0.03684741 -0.11748891  0.42856785 -0.23336129 -0.19872676

 10  1     1    1  |0 0>        0.09163327  0.00404123 -0.00026122  0.12382011  0.07947198  0.76863053  0.00000005
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.15246808  0.05815856  0.78042202 -0.00155195 -0.00401137  0.00062420 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.58684100  0.00758571  0.00101209  0.77269630 -0.01125284 -0.12335038 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00061835 -0.01466802  0.00515517 -0.00132782  0.77832102 -0.08018119 -0.00000004
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.10730313  0.78024882 -0.05808300 -0.00806287  0.01462856 -0.00433568 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000002  0.00000000  0.00000001 -0.00000002  0.00000006 -0.00000010  0.93351474
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.01%   44.73%    5.25%    0.00%    0.00%   21.77%    0.23%
  2  1     2    1  |1 1>+        26.78%    3.91%    0.00%    0.00%   29.64%    8.02%    0.56%    0.14%
  3  1     3    1  |1 1>+         2.27%   46.08%    0.01%    0.00%    2.50%    0.66%    7.04%    1.71%
  4  1     1    1  |1 0>         29.04%    0.00%    0.00%    0.01%    0.08%   40.74%    0.00%    0.01%
  5  1     2    1  |1 0>          0.00%    0.05%   49.84%    0.11%    0.00%    0.00%   23.30%    1.04%
  6  1     3    1  |1 0>          0.01%    0.00%    0.11%   49.88%    0.00%    0.01%    0.06%   27.75%
  7  1     1    1  |1 1>-         0.00%    0.00%    5.25%   44.74%    0.01%    0.00%    1.27%   28.49%
  8  1     2    1  |1 1>-         2.27%   46.05%    0.04%    0.00%    2.26%    0.94%    6.70%    1.69%
  9  1     3    1  |1 1>-        26.77%    3.91%    0.00%    0.01%   26.76%   10.86%    0.55%    0.20%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   25.51%   12.31%    0.04%    0.05%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   35.47%    0.96%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.65%    0.28%    1.65%    1.73%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   12.59%   26.15%    0.00%    0.02%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    1.60%   35.99%
 15  1     6    1  |0 0>         12.86%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         8.62%    0.10%   17.42%    1.86%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         1.66%    0.00%    0.13%    1.40%    0.01%   23.78%    3.95%
  3  1     3    1  |1 1>+        19.51%    0.01%    1.72%   16.12%    0.00%    2.04%    0.33%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   18.82%    7.01%    4.28%
  5  1     2    1  |1 0>          6.29%    2.33%   15.48%    1.57%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          2.81%   17.04%    2.20%    0.14%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.86%   19.27%    0.10%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        19.84%    0.01%    1.57%   16.28%    1.55%    0.47%    0.34%
  9  1     3    1  |1 1>-         1.66%    0.00%    0.14%    1.38%   18.37%    5.45%    3.95%
 10  1     1    1  |0 0>          0.84%    0.00%    0.00%    1.53%    0.63%   59.08%    0.00%
 11  1     2    1  |0 0>          2.32%    0.34%   60.91%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>         34.44%    0.01%    0.00%   59.71%    0.01%    1.52%    0.00%
 13  1     4    1  |0 0>          0.00%    0.02%    0.00%    0.00%   60.58%    0.64%    0.00%
 14  1     5    1  |0 0>          1.15%   60.88%    0.34%    0.01%    0.02%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   87.14%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1719.95       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     11097.31   3350.82   5215.21   2509.51      8.90      3.67      8.96
 REAL TIME  *     11343.15 SEC
 DISK USED  *         1.76 GB (local),       15.20 GB (total)
 SF USED    *        11.89 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -192.619540420768

              CI              CI           MULTI         RHF-SCF
   -192.56291304   -192.62663245   -191.77871203   -191.86439724
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
