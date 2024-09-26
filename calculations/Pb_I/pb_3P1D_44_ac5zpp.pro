
 Working directory              : /wrk/irikura/molpro.MGBSpqiUwI/
 Global scratch directory       : /wrk/irikura/molpro.MGBSpqiUwI/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.MGBSpqiUwI/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    7
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.02 sec
 ***,Pb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Pb};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,charge=-1,sym=2,spin=3}
 
 NTRIP=3
 NSING=5
 
                                                                                 ! add 7p to active space
 {multi
     closed,6,3
     occ,7,6
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
 Commands initialized (847), CPU time= 0.03 sec, 718 directives.
 Default parameters read. Elapsed time= 0.26 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 29-Jul-24          TIME: 12:19:56  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  10500 MW

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

     560.464 MB (compressed) written to integral file ( 13.7%)

     Node minimum: 52.429 MB, node maximum: 95.945 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   44670976.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   3  SEGMENT LENGTH:   15998580      RECORD LENGTH: 524288

 Memory used in sort:      16.56 MW

 SORT1 READ   511790813. AND WROTE     7577710. INTEGRALS IN     23 RECORDS. CPU TIME:     4.13 SEC, REAL TIME:     4.35 SEC
 SORT2 READ    53582235. AND WROTE   312900871. INTEGRALS IN   2002 RECORDS. CPU TIME:     1.71 SEC, REAL TIME:     1.93 SEC

 Node minimum:    44670976.  Node maximum:    44711305. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        26.27     25.87
 REAL TIME  *        31.67 SEC
 DISK USED  *        30.87 MB (local),        1.29 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -191.86191657    -191.86191657     0.00D+00     0.48D-01     0     0       0.69      1.21    start
   2     -191.86409280      -0.00217623     0.73D-03     0.11D-02     1     0       0.55      1.76    diag2
   3     -191.86432821      -0.00023541     0.41D-03     0.25D-03     2     0       0.71      2.47    diag2
   4     -191.86438882      -0.00006061     0.99D-04     0.18D-03     3     0       0.71      3.18    diag2
   5     -191.86439562      -0.00000680     0.26D-04     0.56D-04     4     0       0.72      3.90    diag2
   6     -191.86439685      -0.00000123     0.64D-05     0.33D-04     5     0       0.73      4.63    diag2
   7     -191.86439720      -0.00000034     0.26D-05     0.26D-04     6     0       0.72      5.35    diag2
   8     -191.86439724      -0.00000004     0.90D-06     0.83D-05     7     0       0.71      6.06    fixocc
   9     -191.86439724      -0.00000000     0.28D-06     0.14D-05     8     0       0.63      6.69    diag2
  10     -191.86439724      -0.00000000     0.58D-07     0.26D-06     0     0       0.47      7.16    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864397240961
  RHF One-electron energy            -340.681921331115
  RHF Two-electron energy             148.817524090154
  RHF Kinetic energy                   62.712681310561
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059419454429

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94944     1  1  s    1.00000
    2.1     2.00000    -0.84961     1  1  d1+  0.79132    1  1  d2+  0.52664    1  1  d1- -0.27365
    3.1     2.00000    -0.84961     1  1  d2-  0.95230
    4.1     2.00000    -0.84961     1  1  d2-  0.26658    1  1  d2+  0.65439    1  1  d1-  0.69100
    5.1     2.00000    -0.84961     1  1  d0   0.99928
    6.1     2.00000    -0.84961     1  1  d1+  0.56652    1  1  d2+ -0.52913    1  1  d1-  0.63039
    7.1     2.00000    -0.35279     1  1  s   -0.38141    1  5  s    0.52245    1  6  s    0.42681    1 11  s   -0.25488
    1.2     2.00000    -3.63191     1  1  pz   0.98450
    2.2     2.00000    -3.63191     1  1  px  -0.65099    1  1  py   0.73936
    3.2     2.00000    -3.63191     1  1  px   0.75429    1  1  py   0.65601
    4.2     1.00000    -0.05163     1  5  pz   0.35607    1  6  pz   0.37646    1  7  pz   0.25411
    5.2     1.00000    -0.05163     1  5  py   0.35607    1  6  py   0.37646    1  7  py   0.25411
    6.2     1.00000    -0.05163     1  5  px   0.35611    1  6  px   0.37651    1  7  px   0.25414


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
 CPU TIMES  *        33.45      7.16     25.87
 REAL TIME  *        39.43 SEC
 DISK USED  *        36.68 MB (local),        1.33 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         5.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     252 (  122  130)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             5
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.545D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.353D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.609D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.274D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.699D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 6 2 5 1 1 4 6   2 3 5 1 2 4 6 5 315  14 8121310 711 9 1 6   4 2 5 31310 71514 8
                                       12 911 4 6 2 5 3 1 7  1310 812 9111514 2 4   6 3 5 1 71310 81215  1411 925201817212426
                                       231928272216 3 6 4 5   2 7 8121013151411 9   1 3 5 4 6 2 71215 8  14131011 9 1 3 5 4 6
                                        2 1 3 5 4 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.197D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.527D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.478D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.157D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.157D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 1   2 3 6 4 5 9 7 810 3   1 2 6 4 5 7 9 810 6   810 9 7 4 5 3 1 216
                                       14191517211311122018   810 6 4 5 9 7 3 1 2  16142113151720181112  19 810 6 4 5 9 71416
                                       132115172018191112 8  10 6 4 5 9 7 3 2 1 8  10 6 4 7 9 515172113  20181416191211 3 2 1
                                        4 6 5 810 7 9 2 1 3   2 1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  1649  ( 15 closed/active, 1122 closed/virtual, 0 active/active, 512 active/virtual )
 Total number of variables:    1757
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   16    0   -191.79834390    -191.81742271   -0.01907881    0.11193241 0.00053539 0.00000000  0.38E+00      5.52
   2    8   14    0   -191.81316299    -191.81545729   -0.00229430    0.11700021 0.00000448 0.00000000  0.36E-01     10.78
   3    7   12    0   -191.81547209    -191.81547236   -0.00000027    0.00097522 0.00000000 0.00000000  0.71E-03     16.78
   4    3    6    0   -191.81547236    -191.81547236   -0.00000000    0.00000013 0.00000001 0.00000000  0.15E-06     20.42

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.65E-08)
                       Final energy:   -191.81547236
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.836780509916
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65707874
 One electron energy                          -335.75353186
 Two electron energy                           143.91675135
 Virial ratio                                    4.06169366
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.836780509905
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65707874
 One electron energy                          -335.75353186
 Two electron energy                           143.91675135
 Virial ratio                                    4.06169366
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.836780509742
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65707876
 One electron energy                          -335.75353194
 Two electron energy                           143.91675143
 Virial ratio                                    4.06169366
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.802687476199
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65707873
 One electron energy                          -335.75353183
 Two electron energy                           143.95084436
 Virial ratio                                    4.06114954
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.802687476053
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65707874
 One electron energy                          -335.75353186
 Two electron energy                           143.95084438
 Virial ratio                                    4.06114954
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.802687476007
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65707874
 One electron energy                          -335.75353186
 Two electron energy                           143.95084439
 Virial ratio                                    4.06114954
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.802687475531
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65707876
 One electron energy                          -335.75353194
 Two electron energy                           143.95084447
 Virial ratio                                    4.06114953
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.802687475531
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65707876
 One electron energy                          -335.75353194
 Two electron energy                           143.95084447
 Virial ratio                                    4.06114953
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
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
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.133495553478
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.866502913125
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.006230544139
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.993769309066
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     4.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     2.860273902383
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.139727777809
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 6   4 3 5 1 2 6 4 5 311   7 9 81214151310 1 2   6 4 5 311 7 9 81214
                                       151310 2 6 4 5 3 111   7 812 915141310 2 6   4 3 5 111 7 812 915  14131027251721282326
                                       241920182216 6 2 4 3   511 712 8 915141013   1 6 2 4 3 511 712 8   915141013 1 6 4 3 5
                                        2 1 5 3 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 1 2 3   1 2 5 6 4 810 7 9 3   1 2 5 6 4 810 9 7 5   6 4 810 9 7 3 2 112
                                       19211311141615171820   5 6 4 810 9 7 3 2 1  12192113111614151718  20 5 6 4 810 7 91219
                                       211311161415171820 5   6 4 810 7 9 3 2 1 5   6 410 8 7 912192113  11161415171820 3 2 1
                                        5 6 410 8 9 7 2 1 3   2 1 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.17615     1  1  s    0.99886
    2.1     2.00000    -1.07667     1  1  d0   1.00013
    3.1     2.00000    -1.07667     1  1  d1-  1.00013
    4.1     2.00000    -1.07667     1  1  d1+  1.00013
    5.1     2.00000    -1.07667     1  1  d2-  1.00013
    6.1     2.00000    -1.07667     1  1  d2+ -1.00013
    7.1     1.98529    -0.56299     1  1  s   -0.39498    1  5  s    0.56946    1  6  s    0.44768    1 11  s   -0.26274
    1.2     2.00000    -3.85872     1  1  pz   0.99983
    2.2     2.00000    -3.85872     1  1  py   0.99983
    3.2     2.00000    -3.85872     1  1  px   0.99983
    4.2     0.67157    -0.06330     1  5  px   0.43297    1  6  px   0.41673
    5.2     0.67157    -0.06330     1  5  py   0.43297    1  6  py   0.41673
    6.2     0.67157    -0.06330     1  5  pz   0.43297    1  6  pz   0.41673
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a         -0.00000000     -0.00000000      0.99631500
 2 aa0          0.00000000      0.99631500     -0.00000000
 2 0aa          0.99631500     -0.00000000     -0.00000000
 0 2aa         -0.08576962      0.00000000     -0.00000000
 0 aa2         -0.00000000     -0.08576962     -0.00000000
 0 a2a          0.00000000      0.00000000     -0.08576962
 
 Energy:     -191.83678051   -191.83678051   -191.83678051
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.81285399     -0.00000000     -0.00000000     -0.03210584     -0.00000000
 2 200         -0.37862251     -0.00000000     -0.00000000      0.72000512     -0.00000000
 2 b0a         -0.00000000      0.00000000      0.00000000     -0.00000000     -0.70450109
 2 a0b          0.00000000     -0.00000000     -0.00000000      0.00000000      0.70450109
 2 ab0         -0.00000000     -0.00000000      0.70450109     -0.00000000     -0.00000000
 2 ba0          0.00000000      0.00000000     -0.70450109      0.00000000      0.00000000
 2 0ab         -0.00000000      0.70450109      0.00000000     -0.00000000     -0.00000000
 2 0ba          0.00000000     -0.70450109     -0.00000000      0.00000000      0.00000000
 2 002         -0.43423146     -0.00000000     -0.00000000     -0.68789928      0.00000000
 0 202          0.06997604     -0.00000000     -0.00000000     -0.00276389     -0.00000000
 0 022         -0.03259442     -0.00000000     -0.00000000      0.06198297      0.00000000
 0 2ab         -0.00000000     -0.06064828      0.00000000     -0.00000000     -0.00000000
 0 2ba          0.00000000      0.06064828     -0.00000000      0.00000000      0.00000000
 0 ab2         -0.00000000     -0.00000000     -0.06064828     -0.00000000     -0.00000000
 0 ba2          0.00000000      0.00000000      0.06064828      0.00000000      0.00000000
 0 a2b          0.00000000      0.00000000      0.00000000     -0.00000000     -0.06064828
 0 b2a         -0.00000000     -0.00000000     -0.00000000      0.00000000      0.06064828
 0 220         -0.03738162     -0.00000000     -0.00000000     -0.05921908     -0.00000000
 
 Energy:     -191.80268748   -191.80268748   -191.80268748   -191.80268748   -191.80268748
 


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
 CPU TIMES  *        54.90     21.44      7.16     25.87
 REAL TIME  *        63.38 SEC
 DISK USED  *        71.78 MB (local),        1.57 GB (total)
 SF USED    *        95.29 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8367805   2.0
    -191.8367805   2.0
    -191.8367805   2.0
    -191.8026875   6.0
    -191.8026875   6.0
    -191.8026875   6.0
    -191.8026875   6.0
    -191.8026875   6.0
                                                  


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
     1      -191.83678051
     2      -191.83678051
     3      -191.83678051

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.74D-02
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        370584
 Number of doubly external configurations:       7575450
 Total number of contracted configurations:      7946571
 Total number of uncontracted configurations:   43099315

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1990564 words, CPU-time:      2.42 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.83678051    -0.00000000    -0.95214351  0.40D-01  0.12D+00     3.36
    1     2     2     1.00000000     0.00000000  -191.83678051     0.00000000    -0.95237837  0.40D-01  0.12D+00     3.36
    1     3     3     1.00000000     0.00000000  -191.83678051    -0.00000000    -0.95225033  0.40D-01  0.12D+00     3.36
    2     1     1     1.10305411    -0.76391939  -192.60069990    -0.76391939    -0.02429497  0.33D-02  0.19D-02   104.10
    2     2     2     1.10313295    -0.76383769  -192.60061820    -0.76383769    -0.02438493  0.34D-02  0.19D-02   104.10
    2     3     3     1.10323547    -0.76373725  -192.60051776    -0.76373725    -0.02449318  0.34D-02  0.20D-02   104.10
    3     1     1     1.09064891    -0.78664408  -192.62342459    -0.02272469    -0.00032625  0.42D-04  0.35D-04   233.20
    3     2     2     1.09064718    -0.78664174  -192.62342225    -0.02280406    -0.00032866  0.42D-04  0.35D-04   233.20
    3     3     3     1.09064475    -0.78663913  -192.62341964    -0.02290189    -0.00033126  0.43D-04  0.35D-04   233.20
    4     1     1     1.09044628    -0.78697342  -192.62375393    -0.00032933    -0.00001092  0.22D-05  0.11D-05   346.29
    4     2     2     1.09044533    -0.78697336  -192.62375387    -0.00033161    -0.00001098  0.22D-05  0.11D-05   346.29
    4     3     3     1.09044419    -0.78697331  -192.62375382    -0.00033418    -0.00001102  0.22D-05  0.11D-05   346.29
    5     1     1     1.09051961    -0.78698513  -192.62376564    -0.00001171    -0.00000035  0.43D-07  0.43D-07   467.16
    5     2     2     1.09051935    -0.78698513  -192.62376564    -0.00001178    -0.00000035  0.44D-07  0.43D-07   467.16
    5     3     3     1.09051902    -0.78698513  -192.62376564    -0.00001182    -0.00000035  0.44D-07  0.44D-07   467.16
    6     1     1     1.09053409    -0.78698551  -192.62376602    -0.00000037    -0.00000001  0.13D-08  0.20D-08   557.35
    6     2     2     1.09053415    -0.78698551  -192.62376602    -0.00000037    -0.00000001  0.13D-08  0.20D-08   557.35
    6     3     3     1.09053405    -0.78698551  -192.62376601    -0.00000038    -0.00000001  0.13D-08  0.20D-08   557.35


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.1%   1.2%
 P   0.5%   7.9%  23.0%

 Initialization:   0.5%
 Other:           66.7%

 Total CPU:      557.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0          -0.0000000   0.0000000   0.9545683
 2222222222/0/           0.9545683   0.0000000   0.0000000
 22222222220//          -0.0000000   0.9545682  -0.0000000
 2222220222//2           0.0000000  -0.0000000  -0.0724198
 2222220222/2/          -0.0724197  -0.0000000  -0.0000000
 22222202222//           0.0000000  -0.0724197   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.957262
 2           0.957262    0.000000    0.000000
 3          -0.000000    0.957262    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957262   -0.000000   -0.000000
 2          -0.000000    0.957262   -0.000000
 3          -0.000000   -0.000000    0.957262


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95726208 (fixed)   0.95731143 (relaxed)   0.95726208 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00068880   -0.00129213   -0.00168078
 Singles      0.01424951   -0.04830560   -0.05454581
 Pairs        0.07634694   -0.73738778   -0.73075892
 Total        1.09128526   -0.78698550   -0.78698551
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83678051
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16269525
 One electron energy                 -335.34345879
 Two electron energy                  142.71969277
 Virial quotient                       -3.04964450
 Correlation energy                    -0.78698551
 !MRCI STATE 1.1 Energy              -192.623766015195

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69560619 (Davidson, fixed reference)
 Cluster corrected energies          -192.69551765 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69560619 (Davidson, rotated reference)

 Cluster corrected energies          -192.69345511 (Pople, fixed reference)
 Cluster corrected energies          -192.69336262 (Pople, relaxed reference)
 Cluster corrected energies          -192.69345511 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95726205 (fixed)   0.95731140 (relaxed)   0.95726205 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00068881   -0.00129213   -0.67738650
 Singles      0.01424957   -0.04830565   -0.05454585
 Pairs        0.07634694   -0.00000000   -0.05505316
 Total        1.09128532   -0.04959777   -0.78698551
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83678051
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16269553
 One electron energy                 -335.34345973
 Two electron energy                  142.71969372
 Virial quotient                       -3.04964448
 Correlation energy                    -0.78698551
 !MRCI STATE 2.1 Energy              -192.623766015139

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69560624 (Davidson, fixed reference)
 Cluster corrected energies          -192.69551770 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69560624 (Davidson, rotated reference)

 Cluster corrected energies          -192.69345516 (Pople, fixed reference)
 Cluster corrected energies          -192.69336267 (Pople, relaxed reference)
 Cluster corrected energies          -192.69345516 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95726210 (fixed)   0.95731145 (relaxed)   0.95726210 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00068880   -0.00129213   -0.67738667
 Singles      0.01424945   -0.04830553   -0.05454576
 Pairs        0.07634696   -0.00000000   -0.05505308
 Total        1.09128521   -0.04959766   -0.78698551
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83678051
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16269665
 One electron energy                 -335.34345983
 Two electron energy                  142.71969382
 Virial quotient                       -3.04964443
 Correlation energy                    -0.78698551
 !MRCI STATE 3.1 Energy              -192.623766014948

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69560615 (Davidson, fixed reference)
 Cluster corrected energies          -192.69551761 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69560615 (Davidson, rotated reference)

 Cluster corrected energies          -192.69345507 (Pople, fixed reference)
 Cluster corrected energies          -192.69336259 (Pople, relaxed reference)
 Cluster corrected energies          -192.69345507 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      187.97       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       622.91    567.95     21.44      7.16     25.87
 REAL TIME  *       662.28 SEC
 DISK USED  *       256.93 MB (local),        2.83 GB (total)
 SF USED    *         1.79 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.69560619  AU                              
 SETTING HLSDIAG(2)     =      -192.69560624  AU                              
 SETTING HLSDIAG(3)     =      -192.69560615  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      613 conf      866 CSFs
 N-1 el internal:      907 conf     2099 CSFs
 N-2 el internal:      694 conf     2086 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     252 ( 122 130 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.80268748
     2      -191.80268748
     3      -191.80268748
     4      -191.80268748
     5      -191.80268748

 Number of blocks in overlap matrix:   580   Smallest eigenvalue:  0.27D-01
 Number of N-2 electron functions:     654
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:        264542
 Number of doubly external configurations:      10389432
 Total number of contracted configurations:     10654424
 Total number of uncontracted configurations:   33375942

 Diagonal Coupling coefficients finished.               Storage:    643996 words, CPU-Time:      0.23 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2047152 words, CPU-time:      3.66 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.80268748    -0.00000000    -0.96541775  0.45D-01  0.13D+00     5.49
    1     2     2     1.00000000     0.00000000  -191.80268748     0.00000000    -0.96562746  0.46D-01  0.13D+00     5.49
    1     3     3     1.00000000     0.00000000  -191.80268748    -0.00000000    -0.96524784  0.46D-01  0.13D+00     5.49
    1     4     4     1.00000000     0.00000000  -191.80268748    -0.00000000    -0.96285868  0.45D-01  0.13D+00     5.49
    1     5     5     1.00000000     0.00000000  -191.80268748    -0.00000000    -0.96363623  0.46D-01  0.13D+00     5.49
    2     1     1     1.10866836    -0.76844253  -192.57113001    -0.76844253    -0.02606602  0.38D-02  0.23D-02   214.36
    2     2     2     1.10900684    -0.76809443  -192.57078190    -0.76809443    -0.02646010  0.40D-02  0.23D-02   214.36
    2     3     3     1.10891568    -0.76789715  -192.57058462    -0.76789715    -0.02676850  0.38D-02  0.25D-02   214.36
    2     4     4     1.10904635    -0.76779035  -192.57047782    -0.76779035    -0.02687003  0.39D-02  0.24D-02   214.36
    2     5     5     1.10919778    -0.76766973  -192.57035720    -0.76766973    -0.02700785  0.40D-02  0.25D-02   214.36
    3     1     1     1.09412712    -0.79279804  -192.59548551    -0.02435551    -0.00040099  0.53D-04  0.50D-04   416.92
    3     2     2     1.09409922    -0.79279517  -192.59548265    -0.02470075    -0.00040117  0.56D-04  0.50D-04   416.92
    3     3     3     1.09412931    -0.79279146  -192.59547894    -0.02489431    -0.00040717  0.55D-04  0.51D-04   416.92
    3     4     4     1.09413855    -0.79278786  -192.59547534    -0.02499752    -0.00041135  0.55D-04  0.52D-04   416.92
    3     5     5     1.09411219    -0.79278626  -192.59547374    -0.02511654    -0.00041136  0.57D-04  0.51D-04   416.92
    4     1     1     1.09358121    -0.79321000  -192.59589748    -0.00041196    -0.00001450  0.31D-05  0.16D-05   653.79
    4     2     2     1.09357782    -0.79320990  -192.59589737    -0.00041472    -0.00001460  0.31D-05  0.16D-05   653.79
    4     3     3     1.09358102    -0.79320981  -192.59589728    -0.00041835    -0.00001470  0.31D-05  0.16D-05   653.79
    4     4     4     1.09357035    -0.79320925  -192.59589673    -0.00042139    -0.00001513  0.31D-05  0.17D-05   653.79
    4     5     5     1.09357262    -0.79320912  -192.59589660    -0.00042286    -0.00001533  0.32D-05  0.17D-05   653.79
    5     1     1     1.09357798    -0.79322610  -192.59591358    -0.00001611    -0.00000044  0.58D-07  0.52D-07   932.42
    5     2     2     1.09357757    -0.79322610  -192.59591357    -0.00001620    -0.00000045  0.59D-07  0.54D-07   932.42
    5     3     3     1.09357882    -0.79322609  -192.59591357    -0.00001629    -0.00000045  0.57D-07  0.53D-07   932.42
    5     4     4     1.09357783    -0.79322609  -192.59591356    -0.00001684    -0.00000046  0.60D-07  0.54D-07   932.42
    5     5     5     1.09357863    -0.79322609  -192.59591356    -0.00001696    -0.00000046  0.59D-07  0.55D-07   932.42
    6     1     1     1.09358017    -0.79322657  -192.59591404    -0.00000046    -0.00000001  0.16D-08  0.16D-08  1192.05
    6     2     2     1.09358011    -0.79322657  -192.59591404    -0.00000047    -0.00000001  0.15D-08  0.17D-08  1192.05
    6     3     3     1.09357985    -0.79322657  -192.59591404    -0.00000047    -0.00000001  0.17D-08  0.16D-08  1192.05
    6     4     4     1.09357998    -0.79322657  -192.59591404    -0.00000048    -0.00000001  0.16D-08  0.17D-08  1192.05
    6     5     5     1.09357991    -0.79322657  -192.59591404    -0.00000048    -0.00000001  0.16D-08  0.17D-08  1192.05


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.6%
 P   0.6%   5.2%  24.7%

 Initialization:   0.3%
 Other:           68.5%

 Total CPU:     1192.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\           0.0000000   0.0000000  -0.0000000   0.9531198   0.0000000
 22222222220/\           0.0000000   0.9531197  -0.0000000  -0.0000000  -0.0000000
 2222222222/\0           0.9531197  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2222222222200           0.0000000   0.0000000   0.7651776   0.0000000  -0.1418736
 2222222222002          -0.0000000   0.0000000  -0.2597228  -0.0000000   0.7336001
 2222222222020           0.0000000  -0.0000000  -0.5054551  -0.0000000  -0.5917265
 2222220222/\2          -0.0722528   0.0000000   0.0000000   0.0000000  -0.0000000
 22222202222/\          -0.0000000  -0.0722527   0.0000000   0.0000000   0.0000000
 2222220222/2\          -0.0000000  -0.0000000   0.0000000  -0.0722525  -0.0000000
 2222220222022           0.0000000   0.0000000   0.0580052   0.0000000  -0.0107547
 2222220222220          -0.0000000   0.0000000  -0.0196886  -0.0000000   0.0556112

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.955805    0.000000    0.000000
 2          -0.000000    0.955805   -0.000000   -0.000000    0.000000
 3          -0.591605   -0.000000   -0.000000    0.750710   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.000000    0.955805
 5          -0.750710   -0.000000    0.000000   -0.591605    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955805    0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.955805    0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.955805    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.955805   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.955805


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95580455 (fixed)   0.95585440 (relaxed)   0.95580455 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00094725   -0.00184835   -0.67851660
 Singles      0.01591687   -0.05126278   -0.05837036
 Pairs        0.07775194   -0.00000000   -0.05633961
 Total        1.09461606   -0.05311113   -0.79322657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80268748
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16083374
 One electron energy                 -335.31246530
 Two electron energy                  142.71655125
 Virial quotient                       -3.04929341
 Correlation energy                    -0.79322657
 !MRCI STATE 1.1 Energy              -192.595914042459

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67096601 (Davidson, fixed reference)
 Cluster corrected energies          -192.67087545 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67096601 (Davidson, rotated reference)

 Cluster corrected energies          -192.66980395 (Pople, fixed reference)
 Cluster corrected energies          -192.66970748 (Pople, relaxed reference)
 Cluster corrected energies          -192.66980395 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95580457 (fixed)   0.95585443 (relaxed)   0.95580457 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00094725   -0.00184835   -0.67851665
 Singles      0.01591681   -0.05126277   -0.05837032
 Pairs        0.07775195   -0.00000000   -0.05633960
 Total        1.09461600   -0.05311112   -0.79322657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80268748
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16082820
 One electron energy                 -335.31245971
 Two electron energy                  142.71654566
 Virial quotient                       -3.04929368
 Correlation energy                    -0.79322657
 !MRCI STATE 2.1 Energy              -192.595914042191

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67096597 (Davidson, fixed reference)
 Cluster corrected energies          -192.67087540 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67096597 (Davidson, rotated reference)

 Cluster corrected energies          -192.66980390 (Pople, fixed reference)
 Cluster corrected energies          -192.66970743 (Pople, relaxed reference)
 Cluster corrected energies          -192.66980390 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.75071010 (fixed)   0.95585454 (relaxed)   0.95580468 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00094726   -0.00184835   -0.67851729
 Singles      0.01591648   -0.05126224   -0.05837005
 Pairs        0.07775202    0.00000000   -0.05633923
 Total        1.09461575   -0.05311059   -0.79322657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80268748
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16080166
 One electron energy                 -335.31240807
 Two electron energy                  142.71649403
 Virial quotient                       -3.04929496
 Correlation energy                    -0.79322657
 !MRCI STATE 3.1 Energy              -192.595914042188

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67096577 (Davidson, fixed reference)
 Cluster corrected energies          -192.67087520 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67096577 (Davidson, rotated reference)

 Cluster corrected energies          -192.66980370 (Pople, fixed reference)
 Cluster corrected energies          -192.66970722 (Pople, relaxed reference)
 Cluster corrected energies          -192.66980370 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95580463 (fixed)   0.95585448 (relaxed)   0.95580463 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00094725   -0.00184835   -0.00237502
 Singles      0.01591653   -0.05126217   -0.05837004
 Pairs        0.07775210   -0.74011605   -0.73248151
 Total        1.09461588   -0.79322657   -0.79322657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80268748
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16082336
 One electron energy                 -335.31244914
 Two electron energy                  142.71653509
 Virial quotient                       -3.04929391
 Correlation energy                    -0.79322657
 !MRCI STATE 4.1 Energy              -192.595914041955

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67096587 (Davidson, fixed reference)
 Cluster corrected energies          -192.67087530 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67096587 (Davidson, rotated reference)

 Cluster corrected energies          -192.66980380 (Pople, fixed reference)
 Cluster corrected energies          -192.66970733 (Pople, relaxed reference)
 Cluster corrected energies          -192.66980380 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.75071008 (fixed)   0.95585451 (relaxed)   0.95580465 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00094726   -0.00184835   -0.67851723
 Singles      0.01591648   -0.05126226   -0.05837009
 Pairs        0.07775208   -0.00000000   -0.05633924
 Total        1.09461582   -0.05311061   -0.79322657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80268748
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16079411
 One electron energy                 -335.31240027
 Two electron energy                  142.71648623
 Virial quotient                       -3.04929532
 Correlation energy                    -0.79322657
 !MRCI STATE 5.1 Energy              -192.595914041859

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67096582 (Davidson, fixed reference)
 Cluster corrected energies          -192.67087525 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67096582 (Davidson, rotated reference)

 Cluster corrected energies          -192.66980375 (Pople, fixed reference)
 Cluster corrected energies          -192.66970727 (Pople, relaxed reference)
 Cluster corrected energies          -192.66980375 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      597.63       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1849.82   1226.85    567.95     21.44      7.16     25.87
 REAL TIME  *      1957.61 SEC
 DISK USED  *       666.59 MB (local),        5.63 GB (total)
 SF USED    *         3.87 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -192.67096601  AU                              
 SETTING HLSDIAG(5)     =      -192.67096597  AU                              
 SETTING HLSDIAG(6)     =      -192.67096577  AU                              
 SETTING HLSDIAG(7)     =      -192.67096587  AU                              
 SETTING HLSDIAG(8)     =      -192.67096582  AU                              


         HLSDIAG
    -192.6956062
    -192.6956062
    -192.6956062
    -192.6709660
    -192.6709660
    -192.6709658
    -192.6709659
    -192.6709658
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -192.623766   -192.623766   -192.623766
 Replaced energies:   -192.695606   -192.695606   -192.695606

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies:   -192.595914   -192.595914   -192.595914   -192.595914   -192.595914
 Replaced energies:   -192.670966   -192.670966   -192.670966   -192.670966   -192.670966



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.69560624

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00   -3287.55       0.00       0.00       0.00    2324.65       0.00       0.00       0.00    2317.13

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00    2324.65       0.00       0.00       0.00   -2317.18
                         3287.55      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.02       0.00   -2324.65       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00   -2324.65      -0.00      -0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0      -0.00      -0.00       0.00       0.01       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00    2324.65       0.00       0.00       0.00       0.00       0.00    2324.65      -0.00

    5   2.1  1.0  0.0       0.00      -0.00   -2324.65       0.00       0.00       0.00      -0.00      -0.00    2324.65       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

    6   3.1  1.0  0.0      -0.00    2324.65       0.00       0.00       0.00       0.02       0.00   -2324.65       0.00       0.00
                        -2324.65      -0.00       0.00      -0.00      -0.00       0.00   -2324.65      -0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.01       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    2324.65       0.00    3287.55      -0.00   -2317.13

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00   -2324.65       0.00       0.00       0.00   -2317.18
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00   -3287.55       0.00      -0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00    2324.65       0.00       0.00       0.00       0.02      -0.00
                           -0.00      -0.00      -0.00   -2324.65      -0.00       0.00       0.00       0.00       0.00       0.00

   10   1.1  0.0  0.0       0.00   -2317.18      -0.00       0.00       0.00       0.00       0.00   -2317.18      -0.00    5407.90
                        -2317.13      -0.00       0.00       0.00      -0.00       0.00    2317.13       0.00      -0.00       0.00

   11   2.1  0.0  0.0      -0.00       0.00   -2317.18       0.00       0.00       0.00      -0.00       0.00   -2317.18       0.00
                            0.00       0.00       0.00    3276.91       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   12   3.1  0.0  0.0   -1737.84      -0.00       0.00       0.00       0.00       0.00   -1737.84      -0.00       0.00       0.00
                           -0.00    2630.86      -0.00      -0.00       0.00    1262.84       0.00   -2630.86       0.00      -0.00

   13   4.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00    2317.14       0.00   -3276.93       0.00      -0.00      -0.00   -2317.14      -0.00

   14   5.1  0.0  0.0   -2034.45      -0.00       0.00       0.00       0.00       0.00   -2034.45      -0.00       0.00       0.00
                           -0.00    -487.74       0.00      -0.00      -0.00   -3567.09       0.00     487.74      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0      -0.00   -1737.84      -0.00   -2034.45
                           -0.00       0.00      -0.00       0.00

    2   2.1  1.0  1.0       0.00      -0.00       0.00      -0.00
                           -0.00   -2630.86      -0.00     487.74

    3   3.1  1.0  1.0   -2317.18       0.00       0.00       0.00
                           -0.00       0.00   -2317.14      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                        -3276.91       0.00      -0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00    3276.93       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00   -1262.84      -0.00    3567.09

    7   1.1  1.0 -1.0      -0.00   -1737.84      -0.00   -2034.45
                            0.00      -0.00       0.00      -0.00

    8   2.1  1.0 -1.0       0.00      -0.00       0.00      -0.00
                            0.00    2630.86       0.00    -487.74

    9   3.1  1.0 -1.0   -2317.18       0.00       0.00       0.00
                            0.00      -0.00    2317.14       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5407.91       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5407.96       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5407.94       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5407.95
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by   -192.69560624 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.010       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    3287.549      -0.000   -3287.546

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000    3287.546      -0.000

    3    1  |1 1>+              0.000       0.000       0.018       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -3287.549      -0.000       0.000      -0.000      -0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.010       0.000       0.000       0.000      -0.000
                                0.000       0.000    3287.549       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.018      -0.000    3287.547
                            -3287.549      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.010       0.000
                               -0.000   -3287.546       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000    3287.547       0.000       0.000
                             3287.546      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000   -3287.547       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>               0.000   -3276.981      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000   -3276.919      -0.000

    2    1  |0 0>              -0.000       0.000   -3276.987       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    3276.911       0.000       0.000       0.000       0.000

    3    1  |0 0>           -2457.681      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    1262.837      -0.000    3720.603

    4    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -3276.931       0.000       0.000       0.000

    5    1  |0 0>           -2877.143      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000   -3567.087      -0.000    -689.772

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000       0.000      -0.000   -2457.681      -0.000   -2877.143
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000   -3276.981       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000   -3276.987       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000   -3276.911       0.000      -0.000       0.000

    2    1  |1 0>           -3287.547       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000    3276.931       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000   -1262.837      -0.000    3567.087

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    3276.919      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000   -3720.603      -0.000     689.772

    3    1  |1 1>-              0.018       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000   -3276.931      -0.000

    1    1  |0 0>               0.000    5407.904       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5407.914       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5407.957       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5407.935       0.000
                             3276.931      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5407.945
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.72556453    -0.02995829    -6575.09      0.00000000        0.00      0.0000
    2  -192.71058538    -0.01497914    -3287.54      0.01497915     3287.54      0.4076
    3  -192.71058536    -0.01497913    -3287.54      0.01497917     3287.55      0.4076
    4  -192.71058535    -0.01497911    -3287.53      0.01497918     3287.55      0.4076
    5  -192.69745792    -0.00185168     -406.40      0.02810661     6168.69      0.7648
    6  -192.69745783    -0.00185159     -406.38      0.02810670     6168.71      0.7648
    7  -192.69745747    -0.00185124     -406.30      0.02810706     6168.79      0.7648
    8  -192.69745742    -0.00185118     -406.29      0.02810711     6168.80      0.7648
    9  -192.69745728    -0.00185105     -406.26      0.02810725     6168.83      0.7648
   10  -192.65413561     0.04147062     9101.75      0.07142892    15676.84      1.9437
   11  -192.65413559     0.04147065     9101.75      0.07142894    15676.84      1.9437
   12  -192.65413555     0.04147069     9101.76      0.07142898    15676.85      1.9437
   13  -192.65413499     0.04147125     9101.89      0.07142954    15676.97      1.9437
   14  -192.65413491     0.04147133     9101.90      0.07142962    15676.99      1.9437

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57734605 -0.00000000  0.00000000 -0.00000000  0.63214841 -0.08980266 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.70711165 -0.00000001  0.00000000  0.00000000  0.00000001  0.55294016 -0.00000001
                           0.00000000  0.00003559 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00045128 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.70711097  0.00000000  0.00000001  0.00000001  0.55294060
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000368

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000368
                          -0.00000000  0.00000000 -0.00000000 -0.70710259  0.00000000  0.00000001  0.00000001  0.55295535

   2    1  |1 0>          -0.00000000  0.00000000  0.00000008  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000001  0.70710839 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.57735273 -0.00000000 -0.00000000 -0.00000000 -0.23829489  0.59234989 -0.00000000 -0.00000001

   1    1  |1 1>-          0.00000000 -0.00003559  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00045129 -0.00000000
                           0.00000000  0.70710191 -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.55295546  0.00000001

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.57735203  0.00000000  0.00000000  0.00000000  0.39383537  0.50255315 -0.00000001 -0.00000001

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000008  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000001  0.70710517 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |0 0>          -0.00000000  0.00000871 -0.00000000  0.00000000  0.00000000  0.00000001  0.62329510 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00050870 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000930  0.00000000  0.00000001  0.00000001  0.62329533
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000415

   3    1  |0 0>          -0.00000524 -0.00000000  0.00000000  0.00000000  0.46746325  0.41228026 -0.00000001 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000127  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000990  0.00000000  0.00000000  0.00000000  0.41228114 -0.46746381  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04655333 -0.50678219
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.44073806 -0.00000001  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00021763 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000001 -0.44073889  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00001783  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00001783 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001 -0.44073382  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000578 -0.00000284  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.55294704  0.44073494 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.46216705  0.21307885

   1    1  |1 1>-          0.00000000  0.00000000 -0.00021763 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.44073451  0.00000001 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.41561011 -0.29371227

   3    1  |1 1>-          0.00000578  0.00000284 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.55295068 -0.44073555  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |0 0>          -0.00000000  0.00000000  0.78198645  0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00038614  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000001  0.78198653 -0.00000001  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00003164 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.54563794  0.56016278
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.62329376  0.78198778 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000652  0.00000504 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.56016237  0.54563721
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.72556453     -0.02995829    -6575.09      0.00000000        0.00      0.0000
     2   1   -192.71058538     -0.01497914    -3287.54      0.01497915     3287.54      0.4076
     3   1   -192.71058536     -0.01497913    -3287.54      0.01497917     3287.55      0.4076
     4   1   -192.71058535     -0.01497911    -3287.53      0.01497918     3287.55      0.4076
     5   1   -192.69745792     -0.00185168     -406.40      0.02810661     6168.69      0.7648
     6   1   -192.69745783     -0.00185159     -406.38      0.02810670     6168.71      0.7648
     7   1   -192.69745747     -0.00185124     -406.30      0.02810706     6168.79      0.7648
     8   1   -192.69745742     -0.00185118     -406.29      0.02810711     6168.80      0.7648
     9   1   -192.69745728     -0.00185105     -406.26      0.02810725     6168.83      0.7648
    10   1   -192.65413561      0.04147062     9101.75      0.07142892    15676.84      1.9437
    11   1   -192.65413559      0.04147065     9101.75      0.07142894    15676.84      1.9437
    12   1   -192.65413555      0.04147069     9101.76      0.07142898    15676.85      1.9437
    13   1   -192.65413499      0.04147125     9101.89      0.07142954    15676.97      1.9437
    14   1   -192.65413491      0.04147133     9101.90      0.07142962    15676.99      1.9437

 E0 =   -192.69560624 is the energy of the lowest zeroth-order state
 E1 =   -192.72556453 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57734605 -0.00000000  0.00000000 -0.00000000  0.63214841 -0.08980266 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.70711165 -0.00000001  0.00000000  0.00000000  0.00000001  0.55294016 -0.00000001
                                0.00000000  0.00003559 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00045128 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.70711097  0.00000000  0.00000001  0.00000001  0.55294060
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000368

  4  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000368
                               -0.00000000  0.00000000 -0.00000000 -0.70710259  0.00000000  0.00000001  0.00000001  0.55295535

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000008  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000001  0.70710839 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.57735273 -0.00000000 -0.00000000 -0.00000000 -0.23829489  0.59234989 -0.00000000 -0.00000001

  7  1     1    1  |1 1>-       0.00000000 -0.00003559  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00045129 -0.00000000
                                0.00000000  0.70710191 -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.55295546  0.00000001

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.57735203  0.00000000  0.00000000  0.00000000  0.39383537  0.50255315 -0.00000001 -0.00000001

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000008  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000001  0.70710517 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.00000871 -0.00000000  0.00000000  0.00000000  0.00000001  0.62329510 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00050870 -0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000930  0.00000000  0.00000001  0.00000001  0.62329533
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000415

 12  1     3    1  |0 0>       -0.00000524 -0.00000000  0.00000000  0.00000000  0.46746325  0.41228026 -0.00000001 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000127  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000990  0.00000000  0.00000000  0.00000000  0.41228114 -0.46746381  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04655333 -0.50678219
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.44073806 -0.00000001  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00021763 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000001 -0.44073889  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00001783  0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00001783 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001 -0.44073382  0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000578 -0.00000284  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.55294704  0.44073494 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.46216705  0.21307885

  7  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00021763 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.44073451  0.00000001 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.41561011 -0.29371227

  9  1     3    1  |1 1>-       0.00000578  0.00000284 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.55295068 -0.44073555  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.00000000  0.78198645  0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00038614  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000001  0.78198653 -0.00000001  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00003164 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000001 -0.00000000 -0.54563794  0.56016278
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.62329376  0.78198778 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000652  0.00000504 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.56016237  0.54563721
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   39.96%    0.81%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   30.57%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   30.57%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   30.58%
  5  1     2    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         33.33%    0.00%    0.00%    0.00%    5.68%   35.09%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   30.58%    0.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   15.51%   25.26%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   38.85%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   38.85%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   21.85%   17.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   17.00%   21.85%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.22%   25.68%
  2  1     2    1  |1 1>+         0.00%    0.00%   19.43%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   19.43%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   19.42%    0.00%    0.00%
  5  1     2    1  |1 0>         30.58%   19.42%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   21.36%    4.54%
  7  1     1    1  |1 1>-         0.00%    0.00%   19.42%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   17.27%    8.63%
  9  1     3    1  |1 1>-        30.58%   19.42%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%   61.15%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   61.15%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   29.77%   31.38%
 13  1     4    1  |0 0>         38.85%   61.15%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   31.38%   29.77%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      597.63       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2448.46    598.58   1226.85    567.95     21.44      7.16     25.87
 REAL TIME  *      2613.65 SEC
 DISK USED  *       666.59 MB (local),        5.63 GB (total)
 SF USED    *         3.87 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -192.654134909317

              CI              CI           MULTI         RHF-SCF
   -192.59591404   -192.62376601   -191.80268748   -191.86439724
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
