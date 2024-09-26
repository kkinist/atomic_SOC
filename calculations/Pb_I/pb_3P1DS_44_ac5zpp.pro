
 Working directory              : /wrk/irikura/molpro.ggeecFvkBW/
 Global scratch directory       : /wrk/irikura/molpro.ggeecFvkBW/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ggeecFvkBW/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    7
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
 
 NTRIP=3
 NSING=6
 
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.16 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 29-Jul-24          TIME: 13:48:17  
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

     560.726 MB (compressed) written to integral file ( 13.7%)

     Node minimum: 60.031 MB, node maximum: 99.353 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   44670976.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   3  SEGMENT LENGTH:   15998580      RECORD LENGTH: 524288

 Memory used in sort:      16.56 MW

 SORT1 READ   511790813. AND WROTE     7577710. INTEGRALS IN     23 RECORDS. CPU TIME:     3.00 SEC, REAL TIME:     3.18 SEC
 SORT2 READ    53582235. AND WROTE   312900871. INTEGRALS IN   2114 RECORDS. CPU TIME:     1.18 SEC, REAL TIME:     1.30 SEC

 Node minimum:    44670976.  Node maximum:    44711305. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        18.29     18.04
 REAL TIME  *        21.50 SEC
 DISK USED  *        30.87 MB (local),        1.28 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -191.86191657    -191.86191657     0.00D+00     0.48D-01     0     0       0.25      0.48    start
   2     -191.86409280      -0.00217623     0.73D-03     0.11D-02     1     0       0.30      0.78    diag2
   3     -191.86432821      -0.00023541     0.41D-03     0.25D-03     2     0       0.26      1.04    diag2
   4     -191.86438882      -0.00006061     0.99D-04     0.18D-03     3     0       0.26      1.30    diag2
   5     -191.86439562      -0.00000680     0.26D-04     0.56D-04     4     0       0.26      1.56    diag2
   6     -191.86439685      -0.00000123     0.64D-05     0.33D-04     5     0       0.25      1.81    diag2
   7     -191.86439720      -0.00000034     0.26D-05     0.26D-04     6     0       0.26      2.07    diag2
   8     -191.86439724      -0.00000004     0.90D-06     0.83D-05     7     0       0.25      2.32    fixocc
   9     -191.86439724      -0.00000000     0.28D-06     0.14D-05     8     0       0.27      2.59    diag2
  10     -191.86439724      -0.00000000     0.58D-07     0.26D-06     0     0       0.26      2.85    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864397240962
  RHF One-electron energy            -340.681921331067
  RHF Two-electron energy             148.817524090105
  RHF Kinetic energy                   62.712681310574
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059419454429

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94944     1  1  s    1.00000
    2.1     2.00000    -0.84961     1  1  d2-  0.82337    1  1  d2+  0.50125
    3.1     2.00000    -0.84961     1  1  d2- -0.52670    1  1  d2+  0.74983    1  1  d1-  0.31522
    4.1     2.00000    -0.84961     1  1  d1+  0.83512    1  1  d2+ -0.33215    1  1  d1-  0.40748
    5.1     2.00000    -0.84961     1  1  d1+ -0.48569    1  1  d2+ -0.27305    1  1  d1-  0.82054
    6.1     2.00000    -0.84961     1  1  d0   0.99744
    7.1     2.00000    -0.35279     1  1  s   -0.38141    1  5  s    0.52245    1  6  s    0.42681    1 11  s   -0.25488
    1.2     2.00000    -3.63191     1  1  px   0.70375    1  1  py   0.31849    1  1  pz   0.63545
    2.2     2.00000    -3.63191     1  1  px  -0.64816    1  1  pz   0.75768
    3.2     2.00000    -3.63191     1  1  px  -0.29176    1  1  py   0.94485
    4.2     1.00000    -0.05163     1  5  pz   0.35578    1  6  pz   0.37616    1  7  pz   0.25390
    5.2     1.00000    -0.05163     1  5  px   0.35611    1  6  px   0.37651    1  7  px   0.25414
    6.2     1.00000    -0.05163     1  5  py   0.35578    1  6  py   0.37616    1  7  py   0.25390


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
 CPU TIMES  *        21.16      2.85     18.04
 REAL TIME  *        24.60 SEC
 DISK USED  *        36.68 MB (local),        1.32 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

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
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.518D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.594D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.519D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.519D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.840D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 6 2 1 1 4 6   2 3 5 1 2 4 6 5 315  14 8121310 7 911 1 4   6 2 3 51310 71514 8
                                       12 911 4 6 2 5 3 1 7  1310 812 9111514 2 4   6 3 5 1 71013 81215  14 91125201817212423
                                       261928272216 4 6 3 5   2 7 8121013151411 9   1 3 4 6 5 2 712 815  14101311 9 1 3 5 4 6
                                        2 1 3 5 4 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.575D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.490D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.319D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.414D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.414D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 1 2 3 1   2 3 6 4 5 9 7 810 3   1 2 6 4 5 9 7 810 6   810 7 9 4 5 3 1 214
                                       16191517211311121820  10 8 6 4 5 7 9 3 2 1  14162113171520181112  19 810 6 4 5 7 91416
                                       211315171820191112 8  10 6 4 5 7 9 3 2 1 8  10 6 4 7 9 515172113  20181614191211 3 2 1
                                        4 6 5 810 7 9 1 2 3   2 1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1649  ( 15 closed/active, 1122 closed/virtual, 0 active/active, 512 active/virtual )
 Total number of variables:    1775
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   18    0   -191.79351342    -191.81066635   -0.01715293    0.11149059 0.00020362 0.00000000  0.37E+00      1.85
   2    9   16    0   -191.80792743    -191.81005474   -0.00212731    0.11325399 0.00000414 0.00000000  0.33E-01      3.82
   3    7   12    0   -191.81006764    -191.81006786   -0.00000022    0.00090081 0.00000001 0.00000000  0.63E-03      5.70
   4    3    6    0   -191.81006786    -191.81006786   -0.00000000    0.00000011 0.00000001 0.00000000  0.12E-06      7.40

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.88E-08)
                       Final energy:   -191.81006786
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.836687493964
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65659623
 One electron energy                          -335.73629033
 Two electron energy                           143.89960283
 Virial ratio                                    4.06171575
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.836687493788
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65659625
 One electron energy                          -335.73629042
 Two electron energy                           143.89960293
 Virial ratio                                    4.06171575
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.836687493744
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65659626
 One electron energy                          -335.73629045
 Two electron energy                           143.89960296
 Virial ratio                                    4.06171575
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.802727223161
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65659623
 One electron energy                          -335.73629032
 Two electron energy                           143.93356310
 Virial ratio                                    4.06117374
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.802727223151
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65659623
 One electron energy                          -335.73629033
 Two electron energy                           143.93356310
 Virial ratio                                    4.06117374
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.802727222605
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65659625
 One electron energy                          -335.73629042
 Two electron energy                           143.93356320
 Virial ratio                                    4.06117374
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.802727222452
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65659626
 One electron energy                          -335.73629045
 Two electron energy                           143.93356323
 Virial ratio                                    4.06117374
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.802727222313
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65659626
 One electron energy                          -335.73629047
 Two electron energy                           143.93356325
 Virial ratio                                    4.06117374
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -191.766912166831
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64271739
 One electron energy                          -335.63637890
 Two electron energy                           143.86946673
 Virial ratio                                    4.06128023
 
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
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.956351804946
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.043648195054
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.661941183978
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.338058816022
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.381707011076
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.618292988924
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 3 5 4 1 1 4 3   5 2 6 1 2 6 4 5 3 9  13101415 812 711 1 4   5 3 2 611 7 8121415
                                       1310 9 6 2 4 5 3 111   7 81215141310 9 6 2   3 5 4 111 7 8121514  1310 927251721232624
                                       192018221628 6 2 3 5   411 7 81215141013 9   1 6 3 5 4 211 712 8  14151013 9 1 3 5 6 4
                                        2 1 5 3 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 1 3 2 1   3 2 4 7 9 6 810 5 1   3 2 5 6 4 7 9 810 5   6 810 7 9 4 1 3 212
                                       19141621131517182011   5 6 810 7 9 4 2 3 1  12192113161415171820  11 5 6 810 9 7 41219
                                       211316141517201811 5   6 810 7 9 4 2 3 1 5   610 8 7 9 412192113  14161517182011 2 3 1
                                        5 610 8 4 9 7 2 1 3   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.17751     1  1  s    0.99884
    2.1     2.00000    -1.07802     1  1  d1-  1.00018
    3.1     2.00000    -1.07802     1  1  d0   1.00018
    4.1     2.00000    -1.07802     1  1  d2-  1.00018
    5.1     2.00000    -1.07802     1  1  d2+  1.00018
    6.1     2.00000    -1.07802     1  1  d1+  1.00018
    7.1     1.98088    -0.56322     1  1  s   -0.39481    1  5  s    0.56999    1  6  s    0.44742    1 11  s   -0.26238
    1.2     2.00000    -3.86011     1  1  py   0.99983
    2.2     2.00000    -3.86011     1  1  pz   0.99983
    3.2     2.00000    -3.86011     1  1  px   0.99983
    4.2     0.67304    -0.06425     1  5  px   0.42890    1  6  px   0.41474
    5.2     0.67304    -0.06425     1  5  pz   0.42890    1  6  pz   0.41474
    6.2     0.67304    -0.06425     1  5  py   0.42890    1  6  py   0.41474
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa0          0.00000000      0.00000000      0.99633326
 2 a0a          0.00000000      0.99633326     -0.00000000
 2 0aa          0.99633326      0.00000000     -0.00000000
 0 2aa         -0.08555715      0.00000000     -0.00000000
 0 a2a         -0.00000000     -0.08555715      0.00000000
 0 aa2          0.00000000      0.00000000     -0.08555715
 
 Energy:     -191.83668749   -191.83668749   -191.83668749
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 200         -0.08497910     -0.00000000     -0.00000000      0.00000000      0.80905203      0.56935921
 2 002          0.74314917     -0.00000000     -0.00000000      0.00000000     -0.33093197      0.56935919
 2 ab0         -0.00000000     -0.00000000     -0.00000000      0.70451401     -0.00000000     -0.00000000
 2 ba0          0.00000000      0.00000000      0.00000000     -0.70451401      0.00000000      0.00000000
 2 a0b         -0.00000000     -0.00000000      0.70451401     -0.00000000     -0.00000000     -0.00000000
 2 b0a          0.00000000      0.00000000     -0.70451401      0.00000000      0.00000000      0.00000000
 2 0ba          0.00000000     -0.70451401     -0.00000000      0.00000000      0.00000000      0.00000000
 2 0ab         -0.00000000      0.70451401      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 020         -0.65817006     -0.00000000     -0.00000000     -0.00000000     -0.47812009      0.56935919
 0 220          0.06381572     -0.00000000     -0.00000000      0.00000000     -0.02841779     -0.09572584
 0 202         -0.05651840     -0.00000000     -0.00000000      0.00000000     -0.04105714     -0.09572584
 0 022         -0.00729733     -0.00000000     -0.00000000     -0.00000000      0.06947494     -0.09572583
 0 2ba          0.00000000      0.06049804      0.00000000      0.00000000      0.00000000      0.00000000
 0 2ab         -0.00000000     -0.06049804     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 a2b          0.00000000      0.00000000     -0.06049804      0.00000000      0.00000000      0.00000000
 0 b2a         -0.00000000     -0.00000000      0.06049804     -0.00000000     -0.00000000     -0.00000000
 0 ab2          0.00000000     -0.00000000     -0.00000000     -0.06049804     -0.00000000     -0.00000000
 0 ba2         -0.00000000      0.00000000      0.00000000      0.06049804      0.00000000      0.00000000
 
 Energy:     -191.80272722   -191.80272722   -191.80272722   -191.80272722   -191.80272722   -191.76691217
 


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
 CPU TIMES  *        28.61      7.43      2.85     18.04
 REAL TIME  *        33.48 SEC
 DISK USED  *        71.78 MB (local),        1.56 GB (total)
 SF USED    *        95.29 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8366875   2.0
    -191.8366875   2.0
    -191.8366875   2.0
    -191.8027272   6.0
    -191.8027272   6.0
    -191.8027272   6.0
    -191.8027272   6.0
    -191.8027272   6.0
    -191.7669122  -0.0
                                                  


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
     1      -191.83668749
     2      -191.83668749
     3      -191.83668749

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.73D-02
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        370584
 Number of doubly external configurations:       7575450
 Total number of contracted configurations:      7946571
 Total number of uncontracted configurations:   43099315

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.06 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1990564 words, CPU-time:      1.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.83668749     0.00000000    -0.95212879  0.40D-01  0.12D+00     1.69
    1     2     2     1.00000000     0.00000000  -191.83668749    -0.00000000    -0.95223978  0.40D-01  0.12D+00     1.69
    1     3     3     1.00000000     0.00000000  -191.83668749     0.00000000    -0.95233056  0.40D-01  0.12D+00     1.69
    2     1     1     1.10312147    -0.76391787  -192.60060537    -0.76391787    -0.02428119  0.33D-02  0.19D-02    50.27
    2     2     2     1.10321064    -0.76382849  -192.60051598    -0.76382849    -0.02437822  0.34D-02  0.20D-02    50.27
    2     3     3     1.10326578    -0.76376946  -192.60045695    -0.76376946    -0.02444420  0.34D-02  0.20D-02    50.27
    3     1     1     1.09070648    -0.78663046  -192.62331795    -0.02271258    -0.00032583  0.42D-04  0.34D-04    99.04
    3     2     2     1.09070461    -0.78662815  -192.62331565    -0.02279966    -0.00032812  0.42D-04  0.35D-04    99.04
    3     3     3     1.09070363    -0.78662620  -192.62331369    -0.02285674    -0.00033020  0.42D-04  0.35D-04    99.04
    4     1     1     1.09049771    -0.78695924  -192.62364673    -0.00032878    -0.00001087  0.22D-05  0.11D-05   150.03
    4     2     2     1.09049679    -0.78695920  -192.62364670    -0.00033105    -0.00001091  0.22D-05  0.11D-05   150.03
    4     3     3     1.09049593    -0.78695913  -192.62364662    -0.00033293    -0.00001098  0.22D-05  0.11D-05   150.03
    5     1     1     1.09057035    -0.78697090  -192.62365840    -0.00001166    -0.00000035  0.43D-07  0.44D-07   195.97
    5     2     2     1.09057008    -0.78697090  -192.62365840    -0.00001170    -0.00000035  0.43D-07  0.44D-07   195.97
    5     3     3     1.09056985    -0.78697090  -192.62365839    -0.00001177    -0.00000035  0.43D-07  0.44D-07   195.97
    6     1     1     1.09058507    -0.78697128  -192.62365877    -0.00000037    -0.00000001  0.13D-08  0.21D-08   238.90
    6     2     2     1.09058500    -0.78697128  -192.62365877    -0.00000037    -0.00000001  0.13D-08  0.21D-08   238.90
    6     3     3     1.09058511    -0.78697128  -192.62365877    -0.00000038    -0.00000001  0.13D-08  0.20D-08   238.90


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.1%   1.6%
 P   0.7%   9.1%  24.7%

 Initialization:   0.5%
 Other:           63.3%

 Total CPU:      238.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0           0.0000000   0.9545608   0.0000000
 2222222222/0/           0.9545608  -0.0000000  -0.0000000
 22222222220//           0.0000000  -0.0000000   0.9545608
 2222220222//2          -0.0000000  -0.0722371  -0.0000000
 2222220222/2/          -0.0722370   0.0000000   0.0000000
 22222202222//          -0.0000000   0.0000000  -0.0722370

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.957241    0.000000
 2          -0.000000   -0.000000    0.957241
 3           0.957241   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957241   -0.000000    0.000000
 2          -0.000000    0.957241    0.000000
 3           0.000000    0.000000    0.957241


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95724107 (fixed)   0.95729019 (relaxed)   0.95724107 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00068596   -0.00128715   -0.67738197
 Singles      0.01427639   -0.04826170   -0.05452240
 Pairs        0.07637082   -0.00000000   -0.05506691
 Total        1.09133316   -0.04954885   -0.78697128
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83668749
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16147696
 One electron energy                 -335.32946548
 Two electron energy                  142.70580671
 Virial quotient                       -3.04970162
 Correlation energy                    -0.78697128
 !MRCI STATE 1.1 Energy              -192.623658768979

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69553534 (Davidson, fixed reference)
 Cluster corrected energies          -192.69544721 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69553534 (Davidson, rotated reference)

 Cluster corrected energies          -192.69338599 (Pople, fixed reference)
 Cluster corrected energies          -192.69329392 (Pople, relaxed reference)
 Cluster corrected energies          -192.69338599 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95724110 (fixed)   0.95729022 (relaxed)   0.95724110 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00068596   -0.00128715   -0.00167408
 Singles      0.01427634   -0.04826166   -0.05452237
 Pairs        0.07637080   -0.73742246   -0.73077483
 Total        1.09133309   -0.78697127   -0.78697128
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83668749
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16147515
 One electron energy                 -335.32946267
 Two electron energy                  142.70580390
 Virial quotient                       -3.04970171
 Correlation energy                    -0.78697128
 !MRCI STATE 2.1 Energy              -192.623658768881

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69553529 (Davidson, fixed reference)
 Cluster corrected energies          -192.69544716 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69553529 (Davidson, rotated reference)

 Cluster corrected energies          -192.69338593 (Pople, fixed reference)
 Cluster corrected energies          -192.69329386 (Pople, relaxed reference)
 Cluster corrected energies          -192.69338593 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95724105 (fixed)   0.95729017 (relaxed)   0.95724105 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00068596   -0.00128715   -0.67738189
 Singles      0.01427644   -0.04826175   -0.05452245
 Pairs        0.07637080    0.00000000   -0.05506694
 Total        1.09133320   -0.04954891   -0.78697128
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83668749
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16147558
 One electron energy                 -335.32946430
 Two electron energy                  142.70580553
 Virial quotient                       -3.04970169
 Correlation energy                    -0.78697127
 !MRCI STATE 3.1 Energy              -192.623658768823

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.69553538 (Davidson, fixed reference)
 Cluster corrected energies          -192.69544724 (Davidson, relaxed reference)
 Cluster corrected energies          -192.69553538 (Davidson, rotated reference)

 Cluster corrected energies          -192.69338602 (Pople, fixed reference)
 Cluster corrected energies          -192.69329395 (Pople, relaxed reference)
 Cluster corrected energies          -192.69338602 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      188.11       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       272.00    243.38      7.43      2.85     18.04
 REAL TIME  *       290.28 SEC
 DISK USED  *       257.06 MB (local),        2.83 GB (total)
 SF USED    *         1.79 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.69553534  AU                              
 SETTING HLSDIAG(2)     =      -192.69553529  AU                              
 SETTING HLSDIAG(3)     =      -192.69553538  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

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
     1      -191.80272722
     2      -191.80272722
     3      -191.80272722
     4      -191.80272722
     5      -191.80272722
     6      -191.76691217

 Number of blocks in overlap matrix:   643   Smallest eigenvalue:  0.16D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:        264542
 Number of doubly external configurations:      12835564
 Total number of contracted configurations:     13100556
 Total number of uncontracted configurations:   33375942

 Diagonal Coupling coefficients finished.               Storage:    700785 words, CPU-Time:      0.20 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2101206 words, CPU-time:      1.72 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.80272722     0.00000000    -0.96104460  0.45D-01  0.13D+00     3.13
    1     2     2     1.00000000     0.00000000  -191.80272722    -0.00000000    -0.96188380  0.46D-01  0.13D+00     3.13
    1     3     3     1.00000000     0.00000000  -191.80272722    -0.00000000    -0.96189325  0.46D-01  0.13D+00     3.13
    1     4     4     1.00000000     0.00000000  -191.80272722     0.00000000    -0.96210019  0.46D-01  0.13D+00     3.13
    1     5     5     1.00000000     0.00000000  -191.80272722     0.00000000    -0.96149969  0.45D-01  0.13D+00     3.13
    1     6     6     1.00000000     0.00000000  -191.76691217     0.00000000    -0.95152999  0.25D-01  0.14D+00     3.13
    2     1     1     1.10841415    -0.76864699  -192.57137421    -0.76864699    -0.02600025  0.38D-02  0.23D-02   189.87
    2     2     2     1.10850819    -0.76854505  -192.57127227    -0.76854505    -0.02612663  0.38D-02  0.23D-02   189.87
    2     3     3     1.10869079    -0.76833647  -192.57106370    -0.76833647    -0.02636273  0.39D-02  0.23D-02   189.87
    2     4     4     1.10877910    -0.76826291  -192.57099014    -0.76826291    -0.02644681  0.40D-02  0.23D-02   189.87
    2     5     5     1.10882018    -0.76824248  -192.57096970    -0.76824248    -0.02645969  0.40D-02  0.23D-02   189.87
    2     6     6     1.10652877    -0.76822089  -192.53513305    -0.76822089    -0.02341935  0.30D-02  0.27D-02   189.87
    3     1     1     1.09425014    -0.79283002  -192.59555725    -0.02418304    -0.00044807  0.57D-04  0.58D-04   368.57
    3     2     2     1.09425240    -0.79282742  -192.59555464    -0.02428237    -0.00045108  0.58D-04  0.59D-04   368.57
    3     3     3     1.09426308    -0.79282377  -192.59555099    -0.02448729    -0.00045549  0.58D-04  0.59D-04   368.57
    3     4     4     1.09426780    -0.79282001  -192.59554724    -0.02455710    -0.00045991  0.58D-04  0.61D-04   368.57
    3     5     5     1.09426710    -0.79281578  -192.59554300    -0.02457330    -0.00046354  0.59D-04  0.61D-04   368.57
    3     6     6     1.09373939    -0.79033860  -192.55725076    -0.02211771    -0.00042763  0.48D-04  0.76D-04   368.57
    4     1     1     1.09371823    -0.79328501  -192.59601223    -0.00045498    -0.00001887  0.40D-05  0.20D-05   546.04
    4     2     2     1.09371630    -0.79328493  -192.59601215    -0.00045751    -0.00001888  0.40D-05  0.20D-05   546.04
    4     3     3     1.09371817    -0.79328484  -192.59601206    -0.00046107    -0.00001906  0.40D-05  0.20D-05   546.04
    4     4     4     1.09371541    -0.79328466  -192.59601188    -0.00046465    -0.00001911  0.40D-05  0.20D-05   546.04
    4     5     5     1.09371714    -0.79328453  -192.59601175    -0.00046875    -0.00001932  0.40D-05  0.21D-05   546.04
    4     6     6     1.09312873    -0.79077645  -192.55768862    -0.00043786    -0.00002079  0.43D-05  0.30D-05   546.04
    5     1     1     1.09373405    -0.79330583  -192.59603306    -0.00002083    -0.00000062  0.81D-07  0.76D-07   723.76
    5     2     2     1.09373367    -0.79330583  -192.59603305    -0.00002090    -0.00000063  0.84D-07  0.76D-07   723.76
    5     3     3     1.09373475    -0.79330582  -192.59603304    -0.00002098    -0.00000063  0.81D-07  0.76D-07   723.76
    5     4     4     1.09373360    -0.79330582  -192.59603304    -0.00002116    -0.00000064  0.84D-07  0.78D-07   723.76
    5     5     5     1.09373440    -0.79330581  -192.59603303    -0.00002128    -0.00000064  0.83D-07  0.78D-07   723.76
    5     6     6     1.09320099    -0.79079959  -192.55771175    -0.00002314    -0.00000074  0.85D-07  0.10D-06   723.76
    6     1     1     1.09373575    -0.79330648  -192.59603370    -0.00000065    -0.00000002  0.24D-08  0.27D-08   906.77
    6     2     2     1.09373561    -0.79330648  -192.59603370    -0.00000065    -0.00000002  0.24D-08  0.27D-08   906.77
    6     3     3     1.09373545    -0.79330648  -192.59603370    -0.00000066    -0.00000002  0.26D-08  0.26D-08   906.77
    6     4     4     1.09373554    -0.79330648  -192.59603370    -0.00000066    -0.00000002  0.25D-08  0.28D-08   906.77
    6     5     5     1.09373552    -0.79330648  -192.59603370    -0.00000067    -0.00000002  0.27D-08  0.27D-08   906.77
    6     6     6     1.09319558    -0.79080038  -192.55771254    -0.00000079    -0.00000003  0.42D-08  0.30D-08   906.77


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.6%
 P   0.6%   6.0%  28.5%

 Initialization:   0.2%
 Other:           64.1%

 Total CPU:      906.8 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\           0.0000000   0.0000000   0.0000000   0.9530745   0.0000000   0.0000000
 2222222222/\0          -0.0000000   0.9530744  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222222222/0\           0.9530744   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 2222222222200          -0.0000000   0.0000000   0.7734030   0.0000000  -0.0861114   0.5460300
 2222222222020          -0.0000000   0.0000000  -0.3121268  -0.0000000   0.7128424   0.5460300
 2222222222002          -0.0000000  -0.0000000  -0.4612761   0.0000000  -0.6267309   0.5460299
 2222220222220           0.0000000  -0.0000000  -0.0348171   0.0000000  -0.0473054  -0.0809539
 2222220222022           0.0000000  -0.0000000   0.0583761   0.0000000  -0.0064996  -0.0809538
 2222220222202           0.0000000  -0.0000000  -0.0235592  -0.0000000   0.0538050  -0.0809536
 2222220222/2\          -0.0719381  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2222220222/\2           0.0000000  -0.0719380   0.0000000   0.0000000   0.0000000   0.0000000
 22222202222/\          -0.0000000  -0.0000000  -0.0000000  -0.0719379  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.955735   -0.000000    0.000000   -0.000000
 2          -0.000000    0.000000    0.000000    0.955735    0.000000    0.000000
 3          -0.204439    0.000000   -0.000000   -0.000000    0.933613    0.000000
 4           0.000000    0.955735   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.933613    0.000000    0.000000   -0.000000   -0.204439    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.955910

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955735    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.955735   -0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.955735   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.955735   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.955735    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.955910


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95573452 (fixed)   0.95578546 (relaxed)   0.95573452 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00095153   -0.00184656   -0.67846970
 Singles      0.01600683   -0.05128867   -0.05845316
 Pairs        0.07781812    0.00000000   -0.05638362
 Total        1.09477648   -0.05313523   -0.79330648
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80272722
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16001417
 One electron energy                 -335.29893898
 Two electron energy                  142.70290528
 Virial quotient                       -3.04933487
 Correlation energy                    -0.79330648
 !MRCI STATE 1.1 Energy              -192.596033702150

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67122049 (Davidson, fixed reference)
 Cluster corrected energies          -192.67112792 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67122049 (Davidson, rotated reference)

 Cluster corrected energies          -192.67006664 (Pople, fixed reference)
 Cluster corrected energies          -192.66996801 (Pople, relaxed reference)
 Cluster corrected energies          -192.67006664 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95573458 (fixed)   0.95578552 (relaxed)   0.95573458 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00095154   -0.00184656   -0.67846985
 Singles      0.01600674   -0.05128860   -0.05845312
 Pairs        0.07781807   -0.00000000   -0.05638352
 Total        1.09477634   -0.05313516   -0.79330648
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80272722
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16000968
 One electron energy                 -335.29893028
 Two electron energy                  142.70289658
 Virial quotient                       -3.04933509
 Correlation energy                    -0.79330648
 !MRCI STATE 2.1 Energy              -192.596033701964

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67122039 (Davidson, fixed reference)
 Cluster corrected energies          -192.67112781 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67122039 (Davidson, rotated reference)

 Cluster corrected energies          -192.67006653 (Pople, fixed reference)
 Cluster corrected energies          -192.66996789 (Pople, relaxed reference)
 Cluster corrected energies          -192.67006653 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.93361319 (fixed)   0.95578559 (relaxed)   0.95573464 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00095154   -0.00184656   -0.67847019
 Singles      0.01600654   -0.05128838   -0.05845295
 Pairs        0.07781811    0.00000005   -0.05638334
 Total        1.09477619   -0.05313490   -0.79330648
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80272722
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15998613
 One electron energy                 -335.29888550
 Two electron energy                  142.70285179
 Virial quotient                       -3.04933623
 Correlation energy                    -0.79330648
 !MRCI STATE 3.1 Energy              -192.596033701602

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67122027 (Davidson, fixed reference)
 Cluster corrected energies          -192.67112768 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67122027 (Davidson, rotated reference)

 Cluster corrected energies          -192.67006640 (Pople, fixed reference)
 Cluster corrected energies          -192.66996776 (Pople, relaxed reference)
 Cluster corrected energies          -192.67006640 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95573461 (fixed)   0.95578555 (relaxed)   0.95573461 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00095154   -0.00184656   -0.67847005
 Singles      0.01600658   -0.05128842   -0.05845296
 Pairs        0.07781816    0.00000000   -0.05638346
 Total        1.09477628   -0.05313498   -0.79330648
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80272722
 Nuclear energy                         0.00000000
 Kinetic energy                        63.16000830
 One electron energy                 -335.29892983
 Two electron energy                  142.70289612
 Virial quotient                       -3.04933515
 Correlation energy                    -0.79330648
 !MRCI STATE 4.1 Energy              -192.596033701488

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67122033 (Davidson, fixed reference)
 Cluster corrected energies          -192.67112775 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67122033 (Davidson, rotated reference)

 Cluster corrected energies          -192.67006647 (Pople, fixed reference)
 Cluster corrected energies          -192.66996783 (Pople, relaxed reference)
 Cluster corrected energies          -192.67006647 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.93361315 (fixed)   0.95578556 (relaxed)   0.95573461 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00095155   -0.00184656   -0.67847007
 Singles      0.01600657   -0.05128833   -0.05845291
 Pairs        0.07781815   -0.00000009   -0.05638350
 Total        1.09477626   -0.05313498   -0.79330648
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80272722
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15998556
 One electron energy                 -335.29888931
 Two electron energy                  142.70285561
 Virial quotient                       -3.04933625
 Correlation energy                    -0.79330648
 !MRCI STATE 5.1 Energy              -192.596033700953

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.67122032 (Davidson, fixed reference)
 Cluster corrected energies          -192.67112774 (Davidson, relaxed reference)
 Cluster corrected energies          -192.67122032 (Davidson, rotated reference)

 Cluster corrected energies          -192.67006646 (Pople, fixed reference)
 Cluster corrected energies          -192.66996781 (Pople, relaxed reference)
 Cluster corrected energies          -192.67006646 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95590964 (fixed)   0.95608927 (relaxed)   0.95590964 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00107923   -0.00153659   -0.00218393
 Singles      0.01011716   -0.03880278   -0.04276990
 Pairs        0.08317899   -0.75046101   -0.74584655
 Total        1.09437539   -0.79080038   -0.79080038
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.76691217
 Nuclear energy                         0.00000000
 Kinetic energy                        63.15577067
 One electron energy                 -335.19343670
 Two electron energy                  142.63572416
 Virial quotient                       -3.04893299
 Correlation energy                    -0.79080038
 !MRCI STATE 6.1 Energy              -192.557712544101

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.63234464 (Davidson, fixed reference)
 Cluster corrected energies          -192.63201948 (Davidson, relaxed reference)
 Cluster corrected energies          -192.63234464 (Davidson, rotated reference)

 Cluster corrected energies          -192.63117375 (Pople, fixed reference)
 Cluster corrected energies          -192.63082763 (Pople, relaxed reference)
 Cluster corrected energies          -192.63117375 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      792.44       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1209.75    937.73    243.38      7.43      2.85     18.04
 REAL TIME  *      1292.47 SEC
 DISK USED  *       861.39 MB (local),        6.96 GB (total)
 SF USED    *         5.66 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -192.67122049  AU                              
 SETTING HLSDIAG(5)     =      -192.67122039  AU                              
 SETTING HLSDIAG(6)     =      -192.67122027  AU                              
 SETTING HLSDIAG(7)     =      -192.67122033  AU                              
 SETTING HLSDIAG(8)     =      -192.67122032  AU                              
 SETTING HLSDIAG(9)     =      -192.63234464  AU                              


         HLSDIAG
    -192.6955353
    -192.6955353
    -192.6955354
    -192.6712205
    -192.6712204
    -192.6712203
    -192.6712203
    -192.6712203
    -192.6323446
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -192.623659   -192.623659   -192.623659
 Replaced energies:   -192.695535   -192.695535   -192.695535

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -192.596034   -192.596034   -192.596034   -192.596034   -192.596034   -192.557713
 Replaced energies:   -192.671220   -192.671220   -192.671220   -192.671220   -192.671220   -192.632345



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.69553538

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00      -0.00    2321.40       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00   -2321.40      -0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.02       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    3282.96    2321.40       0.00      -0.00       0.00       0.00       0.00    2314.26

    3   3.1  1.0  1.0       0.00       0.00       0.00   -2321.40       0.00      -0.00       0.00       0.00       0.00    2314.25
                           -0.00   -3282.96       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00   -2321.40       0.01       0.00       0.00       0.00      -0.00    2321.40       0.00
                            0.00   -2321.40      -0.00       0.00       0.00       0.00      -0.00   -2321.40      -0.00       0.00

    5   2.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.02       0.00       0.00       0.00      -0.00       0.00
                         2321.40      -0.00      -0.00      -0.00       0.00       0.00    2321.40       0.00      -0.00      -0.00

    6   3.1  1.0  0.0    2321.40      -0.00      -0.00       0.00       0.00       0.00   -2321.40       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   -2321.40       0.01       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00   -2321.40      -0.00       0.00       0.00      -0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.02       0.00       0.00
                           -0.00      -0.00      -0.00    2321.40      -0.00      -0.00      -0.00       0.00   -3282.96   -2314.26

    9   3.1  1.0 -1.0       0.00       0.00       0.00    2321.40      -0.00      -0.00       0.00       0.00       0.00    2314.25
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    3282.96      -0.00      -0.00

   10   1.1  0.0  0.0      -0.00       0.00    2314.25       0.00       0.00       0.00      -0.00       0.00    2314.25    5336.50
                           -0.00   -2314.26      -0.00      -0.00       0.00      -0.00       0.00    2314.26       0.00       0.00

   11   2.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                         2314.26      -0.00      -0.00       0.00      -0.00    3272.84   -2314.26       0.00       0.00      -0.00

   12   3.1  0.0  0.0      -0.00   -1584.06      -0.00       0.00       0.00       0.00      -0.00   -1584.06      -0.00       0.00
                           -0.00       0.00   -2655.93    1515.85       0.00      -0.00       0.00      -0.00    2655.93      -0.00

   13   4.1  0.0  0.0   -2314.25       0.00      -0.00       0.00       0.00       0.00   -2314.25       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00    3272.85       0.00      -0.00      -0.00       0.00      -0.00

   14   5.1  0.0  0.0      -0.00   -2152.24       0.00       0.00       0.00       0.00      -0.00   -2152.24       0.00       0.00
                           -0.00      -0.00     295.71   -3461.94       0.00      -0.00       0.00       0.00    -295.71      -0.00

   15   6.1  0.0  0.0      -0.00   -3814.78       0.00       0.00       0.00       0.00      -0.00   -3814.78       0.00       0.00
                            0.00      -0.00    3814.78    5394.92      -0.00      -0.00      -0.00       0.00   -3814.78      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00      -0.00   -2314.25      -0.00      -0.00
                        -2314.26       0.00      -0.00       0.00      -0.00

    2   2.1  1.0  1.0      -0.00   -1584.06       0.00   -2152.24   -3814.78
                            0.00      -0.00      -0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00
                            0.00    2655.93       0.00    -295.71   -3814.78

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1515.85      -0.00    3461.94   -5394.92

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -3272.85      -0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                        -3272.84       0.00      -0.00       0.00       0.00

    7   1.1  1.0 -1.0      -0.00      -0.00   -2314.25      -0.00      -0.00
                         2314.26      -0.00       0.00      -0.00       0.00

    8   2.1  1.0 -1.0      -0.00   -1584.06       0.00   -2152.24   -3814.78
                           -0.00       0.00       0.00      -0.00      -0.00

    9   3.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00
                           -0.00   -2655.93      -0.00     295.71    3814.78

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5336.52       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5336.55       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5336.53       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5336.54       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   13868.76
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -192.69553538 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.007       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -3282.959      -0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.019       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    3282.959       0.000      -0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000   -3282.958

    1    1  |1 0>               0.000      -0.000       0.000       0.007       0.000       0.000       0.000       0.000
                                0.000   -3282.959      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.019       0.000      -0.000       0.000
                             3282.959       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000    3282.956      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000    3282.956       0.007       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.019
                                0.000      -0.000    3282.958      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000   -3282.956       0.000       0.000       0.000       0.000
                               -0.000   -3282.958       0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.000       0.000    3272.847       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000   -3272.859

    2    1  |0 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    3272.843    3272.861      -0.000

    3    1  |0 0>              -0.000   -2240.204      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1515.854       0.000      -0.000      -0.000       0.000

    4    1  |0 0>           -3272.845       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    3272.846       0.000       0.000       0.000

    5    1  |0 0>              -0.000   -3043.720       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -3461.941       0.000      -0.000      -0.000      -0.000

    6    1  |0 0>              -0.000   -5394.919       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    5394.925      -0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000      -0.000      -0.000   -3272.845      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000   -2240.204       0.000   -3043.720   -5394.919
                             3282.958       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    3272.847       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>           -3282.956       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000   -1515.854      -0.000    3461.941   -5394.925

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000   -3272.846      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -3272.843       0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -3272.861       0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    3272.859       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    3756.049       0.000    -418.197   -5394.920

    1    1  |0 0>               0.000    5336.499       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5336.523       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5336.549       0.000       0.000       0.000
                            -3756.049      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5336.535       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5336.537       0.000
                              418.197      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   13868.764
                             5394.920      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.74198489    -0.04644952   -10194.49      0.00000000        0.00      0.0000
    2  -192.71049361    -0.01495823    -3282.95      0.03149129     6911.54      0.8569
    3  -192.71049359    -0.01495822    -3282.95      0.03149130     6911.54      0.8569
    4  -192.71049358    -0.01495820    -3282.95      0.03149131     6911.54      0.8569
    5  -192.69750098    -0.00196560     -431.40      0.04448392     9763.09      1.2105
    6  -192.69750092    -0.00196555     -431.39      0.04448397     9763.10      1.2105
    7  -192.69750051    -0.00196514     -431.30      0.04448438     9763.19      1.2105
    8  -192.69750049    -0.00196511     -431.29      0.04448440     9763.20      1.2105
    9  -192.69750039    -0.00196501     -431.27      0.04448451     9763.22      1.2105
   10  -192.65429705     0.04123832     9050.77      0.08768784    19245.26      2.3861
   11  -192.65429701     0.04123837     9050.78      0.08768789    19245.27      2.3861
   12  -192.65429700     0.04123838     9050.78      0.08768789    19245.27      2.3861
   13  -192.65429645     0.04123892     9050.90      0.08768844    19245.39      2.3861
   14  -192.65429640     0.04123898     9050.91      0.08768850    19245.40      2.3861
   15  -192.61581159     0.07972378    17497.35      0.12617330    27691.84      3.4334

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.70710777 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.53819564  0.00000000 -0.00000000 -0.00000000 -0.13178991  0.62302087 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000002  0.70710760 -0.00000000 -0.00000000 -0.00000000 -0.55149073  0.00000009
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.53819668 -0.00000000 -0.00000000 -0.00000000 -0.47365648 -0.42564293  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.70710579 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.01740270 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00146332
                          -0.00000000 -0.70689201 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000009  0.55149131

   1    1  |1 1>-          0.00000000 -0.01740272  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00146332
                           0.00000000  0.70689319  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000009  0.55148867

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                          -0.00000000  0.00000002 -0.70710596  0.00000000 -0.00000000 -0.00000000 -0.55149164  0.00000009

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.53819641 -0.00000000 -0.00000000 -0.00000000  0.60544712 -0.19737616 -0.00000000  0.00000000

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000042 -0.00000000  0.00000000  0.00000000  0.62587135 -0.00000011
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

   2    1  |0 0>           0.00000000  0.00000194  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000011  0.62586783
                           0.00000000  0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00166067

   3    1  |0 0>           0.00000024 -0.00000000 -0.00000000  0.00000000 -0.56992863  0.25864290  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000067 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000105  0.00000000  0.00000000  0.00000000  0.25864280  0.56992947 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.36198676  0.00000000  0.00000000  0.00000000  0.00000013  0.00000049  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.55149093 -0.00000000  0.00000003 -0.44255661  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.37816350 -0.34370938 -0.20899306
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.44255713  0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.48674282 -0.15564413 -0.20899351

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.55149307 -0.00000000  0.00000003 -0.44255711  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00091906 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000004 -0.44255529 -0.00000003  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00091906 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000004 -0.44255669 -0.00000003  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.44255862  0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.10857910  0.49935320 -0.20899288

   1    1  |0 0>           0.00000000  0.77992631  0.00000006 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000006  0.77992569  0.00000006 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00161968 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.08036296  0.77577510  0.00000027
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.62586991  0.00000000 -0.00000006  0.77992747 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.77577456  0.08036256 -0.00000055
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000079 -0.00000042  0.93218324
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.74198489     -0.04644952   -10194.49      0.00000000        0.00      0.0000
     2   1   -192.71049361     -0.01495823    -3282.95      0.03149129     6911.54      0.8569
     3   1   -192.71049359     -0.01495822    -3282.95      0.03149130     6911.54      0.8569
     4   1   -192.71049358     -0.01495820    -3282.95      0.03149131     6911.54      0.8569
     5   1   -192.69750098     -0.00196560     -431.40      0.04448392     9763.09      1.2105
     6   1   -192.69750092     -0.00196555     -431.39      0.04448397     9763.10      1.2105
     7   1   -192.69750051     -0.00196514     -431.30      0.04448438     9763.19      1.2105
     8   1   -192.69750049     -0.00196511     -431.29      0.04448440     9763.20      1.2105
     9   1   -192.69750039     -0.00196501     -431.27      0.04448451     9763.22      1.2105
    10   1   -192.65429705      0.04123832     9050.77      0.08768784    19245.26      2.3861
    11   1   -192.65429701      0.04123837     9050.78      0.08768789    19245.27      2.3861
    12   1   -192.65429700      0.04123838     9050.78      0.08768789    19245.27      2.3861
    13   1   -192.65429645      0.04123892     9050.90      0.08768844    19245.39      2.3861
    14   1   -192.65429640      0.04123898     9050.91      0.08768850    19245.40      2.3861
    15   1   -192.61581159      0.07972378    17497.35      0.12617330    27691.84      3.4334

 E0 =   -192.69553538 is the energy of the lowest zeroth-order state
 E1 =   -192.74198489 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.70710777 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.53819564  0.00000000 -0.00000000 -0.00000000 -0.13178991  0.62302087 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000002  0.70710760 -0.00000000 -0.00000000 -0.00000000 -0.55149073  0.00000009
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.53819668 -0.00000000 -0.00000000 -0.00000000 -0.47365648 -0.42564293  0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.70710579 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.01740270 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00146332
                               -0.00000000 -0.70689201 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000009  0.55149131

  7  1     1    1  |1 1>-       0.00000000 -0.01740272  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00146332
                                0.00000000  0.70689319  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000009  0.55148867

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                               -0.00000000  0.00000002 -0.70710596  0.00000000 -0.00000000 -0.00000000 -0.55149164  0.00000009

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.53819641 -0.00000000 -0.00000000 -0.00000000  0.60544712 -0.19737616 -0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000042 -0.00000000  0.00000000  0.00000000  0.62587135 -0.00000011
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000194  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000011  0.62586783
                                0.00000000  0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00166067

 12  1     3    1  |0 0>        0.00000024 -0.00000000 -0.00000000  0.00000000 -0.56992863  0.25864290  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000067 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000105  0.00000000  0.00000000  0.00000000  0.25864280  0.56992947 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>        0.36198676  0.00000000  0.00000000  0.00000000  0.00000013  0.00000049  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.55149093 -0.00000000  0.00000003 -0.44255661  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.37816350 -0.34370938 -0.20899306
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.44255713  0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.48674282 -0.15564413 -0.20899351

  5  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.55149307 -0.00000000  0.00000003 -0.44255711  0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00091906 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000004 -0.44255529 -0.00000003  0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00091906 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000004 -0.44255669 -0.00000003  0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.44255862  0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.10857910  0.49935320 -0.20899288

 10  1     1    1  |0 0>        0.00000000  0.77992631  0.00000006 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000006  0.77992569  0.00000006 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00161968 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.08036296  0.77577510  0.00000027
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.62586991  0.00000000 -0.00000006  0.77992747 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.77577456  0.08036256 -0.00000055
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000079 -0.00000042  0.93218324
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        28.97%    0.00%    0.00%    0.00%    1.74%   38.82%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   30.41%    0.00%
  4  1     1    1  |1 0>         28.97%    0.00%    0.00%    0.00%   22.44%   18.12%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%    0.00%    0.00%   30.41%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%    0.00%    0.00%   30.41%
  8  1     2    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   30.41%    0.00%
  9  1     3    1  |1 1>-        28.97%    0.00%    0.00%    0.00%   36.66%    3.90%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.17%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.17%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   32.48%    6.69%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    6.69%   32.48%    0.00%    0.00%
 15  1     6    1  |0 0>         13.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+        30.41%    0.00%    0.00%   19.59%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   14.30%   11.81%    4.37%
  3  1     3    1  |1 1>+         0.00%   19.59%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.69%    2.42%    4.37%
  5  1     2    1  |1 0>         30.41%    0.00%    0.00%   19.59%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   19.59%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   19.59%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%   19.59%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    1.18%   24.94%    4.37%
 10  1     1    1  |0 0>          0.00%   60.83%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   60.83%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.65%   60.18%    0.00%
 13  1     4    1  |0 0>         39.17%    0.00%    0.00%   60.83%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   60.18%    0.65%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   86.90%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      792.44       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1541.25    331.49    937.73    243.38      7.43      2.85     18.04
 REAL TIME  *      1669.01 SEC
 DISK USED  *       861.39 MB (local),        6.96 GB (total)
 SF USED    *         5.66 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -192.615811592704

              CI              CI           MULTI         RHF-SCF
   -192.55771254   -192.62365877   -191.76691217   -191.86439724
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
