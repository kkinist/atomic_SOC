
 Working directory              : /wrk/irikura/molpro.VjpAYVTgg6/
 Global scratch directory       : /wrk/irikura/molpro.VjpAYVTgg6/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.VjpAYVTgg6/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Fr SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Fr};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=8,sym=1,spin=0}
 
 {multi
     closed,1,3
     occ,8,3
     wf,nelec=9,sym=1,spin=1;state,7;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=1;state,7; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Fr SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 05-Mar-24          TIME: 15:59:29  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Fr   ECP ECP78MDF                 selected for group  1
 Library entry FR     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry FR     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry FR     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry FR     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry FR     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry FR     H aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  FR      9.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    9
 NUMBER OF PRIMITIVE AOS:         337
 NUMBER OF SYMMETRY AOS:          247
 NUMBER OF CONTRACTIONS:          213   (  101Ag  +  112Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       131415 7 8 910111213  1415 7 8 91011121314  15
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011
                                       12131415161718192021  11121314151617181920  21111213141516171819  2021


 Eigenvalues of metric

         1 0.370E-04 0.231E-03 0.672E-03 0.281E-02 0.498E-02 0.498E-02 0.498E-02 0.498E-02
         2 0.163E-03 0.163E-03 0.163E-03 0.363E-02 0.363E-02 0.363E-02 0.100E-01 0.100E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     238.551 MB (compressed) written to integral file ( 13.2%)

     Node minimum: 16.253 MB, node maximum: 21.496 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   10920087.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   10920087      RECORD LENGTH: 524288

 Memory used in sort:      11.48 MW

 SORT1 READ   226482739. AND WROTE     1839682. INTEGRALS IN      6 RECORDS. CPU TIME:     1.02 SEC, REAL TIME:     1.05 SEC
 SORT2 READ    23244525. AND WROTE   131080516. INTEGRALS IN    744 RECORDS. CPU TIME:     0.22 SEC, REAL TIME:     0.25 SEC

 Node minimum:    10913395.  Node maximum:    10938414. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.81       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.64      3.42
 REAL TIME  *         4.39 SEC
 DISK USED  *        30.19 MB (local),      836.03 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   1   3

 NELEC=    8   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -18.68839629     -18.68839629     0.00D+00     0.32D-01     0     0       0.05      0.10    start
   2      -18.72746073      -0.03906444     0.82D-02     0.80D-02     1     0       0.05      0.15    diag
   3      -18.72782644      -0.00036571     0.10D-02     0.12D-02     2     0       0.06      0.21    diag
   4      -18.72784226      -0.00001582     0.15D-03     0.18D-03     3     0       0.05      0.26    diag
   5      -18.72784240      -0.00000013     0.12D-04     0.22D-04     4     0       0.06      0.32    diag
   6      -18.72784240      -0.00000000     0.45D-06     0.11D-05     5     0       0.06      0.38    diag
   7      -18.72784240      -0.00000000     0.21D-07     0.43D-07     0     0       0.05      0.43    diag

 Final occupancy:   1   3

 !RHF STATE 1.1 Energy                -18.727842396620
  RHF One-electron energy             -29.655692625042
  RHF Two-electron energy              10.927850228421
  RHF Kinetic energy                    4.893626499281
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.826986468904

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.49381     1  1  s    0.99826
    1.2     2.00000    -0.80206     1  1  pz   1.00675
    2.2     2.00000    -0.80206     1  1  px   1.00675
    3.2     2.00000    -0.80206     1  1  py   1.00675


 HOMO      3.2    -0.802061 =     -21.8252eV
 LUMO      2.1    -0.130222 =      -3.5435eV
 LUMO-HOMO         0.671839 =      18.2817eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.81       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.76       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.12      0.47      3.42
 REAL TIME  *         5.86 SEC
 DISK USED  *        31.89 MB (local),      856.53 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:     202 (   93  109)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               7   (7 determinants, 7 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.107D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.318D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.355D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.274D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.166D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 2 6 4 3 5 1 2 4   6 5 3 1 5 3 4 6 2 5   3 4 6 2 81214151310   7 911 1 6 5 4 3 215
                                       14 812 71310 911 1 2   6 4 5 3 812 7151411   91310 1 2 6 4 5 312   8 7141511 91013 1 2
                                        6 4 3 5141512 8 711   91310 1 2 6 5 3 4 1   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.265D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.265D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 7 9 6 4 5 810 2   3 1 6 9 7 4 5 81017  15132116141820111219
                                        3 2 1 6 5 410 8 9 7  21131820161411121517  19 6 810 5 4 7 9 3 1   2 6 810 5 4 7 91517
                                       211316141112191820 1   3 2 6 5 4 810 7 910   8 5 4 6 7 9 2 1 3 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  1078  ( 7 closed/active, 420 closed/virtual, 0 active/active, 651 active/virtual )
 Total number of variables:    1127
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0    -18.79943210     -18.79964703   -0.00021493    0.01781238 0.00000132 0.00000000  0.34E-01      0.55
   2    5    5    0    -18.79964714     -18.79964714   -0.00000000    0.00003316 0.00000001 0.00000000  0.34E-03      1.03

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.17E-08)
                       Final energy:    -18.79964714
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                       -18.858613600415
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.97974064
 One electron energy                           -31.26510477
 Two electron energy                            12.40649117
 Virial ratio                                    4.78706743
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                       -18.791072109209
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.97723298
 One electron energy                           -30.88957981
 Two electron energy                            12.09850770
 Virial ratio                                    4.77540537
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                       -18.791072109208
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.97723298
 One electron energy                           -30.88957981
 Two electron energy                            12.09850770
 Virial ratio                                    4.77540537
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                       -18.791072109208
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.97723298
 One electron energy                           -30.88957981
 Two electron energy                            12.09850770
 Virial ratio                                    4.77540537
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                       -18.791072109207
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.97723298
 One electron energy                           -30.88957981
 Two electron energy                            12.09850770
 Virial ratio                                    4.77540537
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                       -18.791072109207
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.97723298
 One electron energy                           -30.88957981
 Two electron energy                            12.09850770
 Virial ratio                                    4.77540537
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                       -18.783555833867
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.91412284
 One electron energy                           -30.40784623
 Two electron energy                            11.62429040
 Virial ratio                                    4.82236188
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     0.161253552957
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LXLX|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LXLX|5.1>     3.838743154041
 !MCSCF expec                      <6.1|LXLX|6.1>     4.000000000000
 !MCSCF expec                      <7.1|LXLX|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     3.600738490918
 !MCSCF expec                      <3.1|LYLY|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LYLY|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LYLY|5.1>     0.399256490698
 !MCSCF expec                      <6.1|LYLY|6.1>     1.000000000000
 !MCSCF expec                      <7.1|LYLY|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     2.238007956125
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LZLZ|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LZLZ|5.1>     1.762000355262
 !MCSCF expec                      <6.1|LZLZ|6.1>     1.000000000000
 !MCSCF expec                      <7.1|LZLZ|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 1 4 3 1 6 2 2 4   6 5 3 1 4 6 2 5 3 4   6 2 5 3 7 911 81214  151310 1 2 4 6 3 5 7
                                        911 81214151310 1 2   4 6 3 5 7 911 81215  141310 1 2 4 6 3 5 7   911 81215141013 1 2
                                        4 6 3 5 7 911 81214  151310 1 2 4 6 3 5 1   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 3   1 2 410 6 5 8 9 7 3   1 21911122113141615  172018 6 4 510 8 9 7
                                        3 1 2 6 4 5 810 9 7  19111221131416151718  20 6 4 5 810 9 7 3 1   2 6 4 5 810 9 71911
                                       122113141615172018 3   1 2 6 4 5 810 9 7 6   4 5 810 9 7 3 1 2 3   1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.34946     1  1  s    0.99812
    2.1     0.14286     0.03437     1  2  d2+  0.35476    1  3  d2+  0.56756
    3.1     0.14286    -0.02219     1  1  s   -0.31666    1  4  s    0.35537    1  5  s    0.64476
    4.1     0.14286     0.03437     1  2  d1+  0.35476    1  3  d1+  0.56756
    5.1     0.14286     0.03437     1  2  d2-  0.35476    1  3  d2-  0.56756
    6.1     0.14286     0.01514     1  4  s   -0.36190    1  5  s   -0.74722    1  6  s   -0.29564    1 11  s    1.56669
    7.1     0.14286     0.03437     1  2  d1-  0.35476    1  3  d1-  0.56756
    8.1     0.14286     0.03437     1  2  d0   0.35476    1  3  d0   0.56756
    1.2     2.00000    -0.65899     1  1  pz   1.00341
    2.2     2.00000    -0.65899     1  1  px   1.00341
    3.2     2.00000    -0.65899     1  1  py   1.00341
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 00000a0        0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      1.00000000      0.00000000
 000a000        0.00000000      0.00000000     -0.00000000      1.00000000     -0.00000000      0.00000000      0.00000000
 00a0000        0.00000000      0.00000000      1.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 0000a00       -0.00458859      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.99998947
 0a00000        0.99998947     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00458859
 a000000        0.00000000      0.74799866      0.00000000      0.00000000      0.66370024     -0.00000000      0.00000000
 000000a        0.00000000     -0.66370024      0.00000000     -0.00000000      0.74799866     -0.00000000      0.00000000
 
 Energy:      -18.85861360    -18.79107211    -18.79107211    -18.79107211    -18.79107211    -18.79107211    -18.78355583
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.12       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.73       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.29      1.17      0.47      3.42
 REAL TIME  *         7.33 SEC
 DISK USED  *        49.96 MB (local),        1.05 GB (total)
 SF USED    *        53.26 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -18.85861360  -0.0
    -18.79107211   6.0
    -18.79107211   6.0
    -18.79107211   6.0
    -18.79107211   6.0
    -18.79107211   6.0
    -18.78355583  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Doublet 
 Number of electrons:                  9
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:        7 conf        7 CSFs
 N elec internal:      889 conf     2205 CSFs
 N-1 el internal:      309 conf      967 CSFs
 N-2 el internal:       74 conf      274 CSFs

 Number of electrons in valence space:                      9
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  7


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:     202 (  93 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -18.85861360
     2       -18.79107211
     3       -18.79107211
     4       -18.79107211
     5       -18.79107211
     6       -18.79107211
     7       -18.78355583

 Number of blocks in overlap matrix:   120   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     120
 Number of N-1 electron functions:     967

 Number of internal configurations:                 1281
 Number of singly external configurations:         96315
 Number of doubly external configurations:       1228484
 Total number of contracted configurations:      1326080
 Total number of uncontracted configurations:    2893877

 Diagonal Coupling coefficients finished.               Storage:    529558 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1127330 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -18.85861360    -0.00000000    -0.22383331  0.14D-01  0.76D-01     0.23
    1     2     2     1.00000000     0.00000000   -18.79107211     0.00000000    -0.21391915  0.11D-01  0.71D-01     0.23
    1     3     3     1.00000000     0.00000000   -18.79107211    -0.00000000    -0.21391933  0.11D-01  0.71D-01     0.23
    1     4     4     1.00000000     0.00000000   -18.79107211    -0.00000000    -0.21393095  0.11D-01  0.71D-01     0.23
    1     5     5     1.00000000     0.00000000   -18.79107211     0.00000000    -0.21391885  0.11D-01  0.71D-01     0.23
    1     6     6     1.00000000     0.00000000   -18.79107211    -0.00000000    -0.21392252  0.11D-01  0.71D-01     0.23
    1     7     7     1.00000000     0.00000000   -18.78355583    -0.00000000    -0.20642679  0.10D-01  0.65D-01     0.23
    2     1     1     1.07761877    -0.20914480   -19.06775840    -0.20914480    -0.00453901  0.95D-03  0.11D-02     7.49
    2     2     2     1.07405644    -0.20384744   -18.99491955    -0.20384744    -0.00411553  0.99D-03  0.10D-02     7.49
    2     3     3     1.07406045    -0.20384353   -18.99491564    -0.20384353    -0.00411886  0.10D-02  0.10D-02     7.49
    2     4     4     1.07405891    -0.20384256   -18.99491467    -0.20384256    -0.00411969  0.10D-02  0.10D-02     7.49
    2     5     5     1.07406634    -0.20384079   -18.99491290    -0.20384079    -0.00412224  0.10D-02  0.10D-02     7.49
    2     6     6     1.07406489    -0.20383872   -18.99491083    -0.20383872    -0.00412473  0.10D-02  0.10D-02     7.49
    2     7     7     1.07006385    -0.20003161   -18.98358745    -0.20003161    -0.00367430  0.49D-03  0.89D-03     7.49
    3     1     1     1.08133855    -0.21402469   -19.07263829    -0.00487989    -0.00015588  0.16D-04  0.42D-04    14.88
    3     2     2     1.07831324    -0.20832503   -18.99939714    -0.00447759    -0.00016379  0.26D-04  0.48D-04    14.88
    3     3     3     1.07831202    -0.20832496   -18.99939707    -0.00448143    -0.00016383  0.26D-04  0.48D-04    14.88
    3     4     4     1.07831205    -0.20832496   -18.99939707    -0.00448240    -0.00016383  0.26D-04  0.48D-04    14.88
    3     5     5     1.07831277    -0.20832492   -18.99939703    -0.00448413    -0.00016393  0.26D-04  0.48D-04    14.88
    3     6     6     1.07831225    -0.20832480   -18.99939690    -0.00448607    -0.00016409  0.26D-04  0.48D-04    14.88
    3     7     7     1.07441968    -0.20407445   -18.98763028    -0.00404284    -0.00012755  0.96D-05  0.33D-04    14.88
    4     1     1     1.08225804    -0.21419781   -19.07281141    -0.00017312    -0.00000639  0.26D-05  0.13D-05    22.24
    4     2     2     1.07946077    -0.20851345   -18.99958556    -0.00018842    -0.00001114  0.11D-04  0.16D-05    22.24
    4     3     3     1.07946081    -0.20851345   -18.99958556    -0.00018849    -0.00001115  0.11D-04  0.16D-05    22.24
    4     4     4     1.07946040    -0.20851343   -18.99958554    -0.00018847    -0.00001115  0.11D-04  0.16D-05    22.24
    4     5     5     1.07946040    -0.20851343   -18.99958554    -0.00018851    -0.00001115  0.11D-04  0.16D-05    22.24
    4     6     6     1.07946038    -0.20851343   -18.99958554    -0.00018864    -0.00001115  0.11D-04  0.16D-05    22.24
    4     7     7     1.07501816    -0.20421518   -18.98777102    -0.00014073    -0.00000492  0.17D-05  0.11D-05    22.24
    5     1     1     1.08250328    -0.21420532   -19.07281892    -0.00000750    -0.00000032  0.11D-06  0.71D-07    29.59
    5     2     2     1.07994098    -0.20852866   -18.99960077    -0.00001521    -0.00000132  0.53D-06  0.33D-06    29.59
    5     3     3     1.07994099    -0.20852866   -18.99960077    -0.00001521    -0.00000132  0.53D-06  0.33D-06    29.59
    5     4     4     1.07994083    -0.20852866   -18.99960077    -0.00001523    -0.00000132  0.53D-06  0.33D-06    29.59
    5     5     5     1.07994064    -0.20852866   -18.99960077    -0.00001523    -0.00000132  0.53D-06  0.33D-06    29.59
    5     6     6     1.07994078    -0.20852866   -18.99960077    -0.00001523    -0.00000132  0.53D-06  0.33D-06    29.59
    5     7     7     1.07514490    -0.20422097   -18.98777681    -0.00000579    -0.00000027  0.12D-06  0.57D-07    29.59
    6     1     1     1.08253750    -0.21420571   -19.07281931    -0.00000039    -0.00000002  0.35D-08  0.34D-08    36.96
    6     2     2     1.08005395    -0.20853037   -18.99960248    -0.00000171    -0.00000010  0.30D-07  0.23D-07    36.96
    6     3     3     1.08005394    -0.20853037   -18.99960248    -0.00000171    -0.00000010  0.30D-07  0.23D-07    36.96
    6     4     4     1.08005387    -0.20853037   -18.99960248    -0.00000171    -0.00000010  0.30D-07  0.23D-07    36.96
    6     5     5     1.08005389    -0.20853037   -18.99960248    -0.00000171    -0.00000010  0.30D-07  0.23D-07    36.96
    6     6     6     1.08005383    -0.20853037   -18.99960247    -0.00000171    -0.00000010  0.30D-07  0.23D-07    36.96
    6     7     7     1.07517296    -0.20422130   -18.98777714    -0.00000033    -0.00000002  0.70D-08  0.34D-08    36.96
    7     1     1     1.08254333    -0.21420572   -19.07281932    -0.00000001    -0.00000001  0.12D-08  0.16D-08    43.33
    7     2     2     1.08007152    -0.20853048   -18.99960259    -0.00000011    -0.00000001  0.47D-08  0.13D-08    43.33
    7     3     3     1.08007152    -0.20853048   -18.99960259    -0.00000011    -0.00000001  0.47D-08  0.13D-08    43.33
    7     4     4     1.08007151    -0.20853048   -18.99960259    -0.00000011    -0.00000001  0.48D-08  0.13D-08    43.33
    7     5     5     1.08007149    -0.20853048   -18.99960259    -0.00000011    -0.00000001  0.48D-08  0.13D-08    43.33
    7     6     6     1.08007150    -0.20853048   -18.99960259    -0.00000011    -0.00000001  0.48D-08  0.13D-08    43.33
    7     7     7     1.07517820    -0.20422132   -18.98777716    -0.00000002    -0.00000000  0.32D-09  0.19D-09    43.33


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.5%   2.6%
 P   0.6%   8.4%  12.7%

 Initialization:   0.4%
 Other:           74.4%

 Total CPU:       43.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 20000/00222          -0.0604498  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.9619809
 2000/000222           0.0000000   0.0000000  -0.0000000   0.9619462  -0.0000000   0.0000000   0.0000000
 200000/0222          -0.0000000  -0.0000000   0.9619462  -0.0000000   0.0000000  -0.0000000   0.0000000
 200/0000222          -0.0000000   0.9619462  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 20/00000222           0.9589335   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0636663
 2000000/222          -0.0000000   0.0000000   0.0000000   0.0000000   0.9021467   0.3338740  -0.0000000
 2/000000222          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.3338740   0.9021467   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.959201    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.056049
 2           0.000000   -0.000000    0.961946    0.000000    0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.961946   -0.000000
 4          -0.000000   -0.000000    0.000000    0.961946   -0.000000   -0.000000   -0.000000
 5           0.000000   -0.848293   -0.000000   -0.000000    0.453585    0.000000    0.000000
 6           0.000000    0.453585    0.000000    0.000000    0.848293   -0.000000    0.000000
 7           0.059252    0.000000    0.000000    0.000000   -0.000000    0.000000    0.962263

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960836   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.001507
 2          -0.000000    0.961946   -0.000000    0.000000    0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.961946   -0.000000    0.000000   -0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.961946   -0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.961946    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.961946   -0.000000
 7           0.001507    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.964084


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95920076 (fixed)   0.96083692 (relaxed)   0.96083574 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00059058   -0.00087420   -0.19424665
 Singles      0.01208290   -0.01932082   -0.02022694
 Pairs        0.07050918    0.01539320    0.00026788
 Total        1.08318266   -0.00480182   -0.21420572
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.85834430
 Nuclear energy                         0.00000000
 Kinetic energy                         5.13788230
 One electron energy                  -31.18065613
 Two electron energy                   12.10783681
 Virial quotient                       -3.71219467
 Correlation energy                    -0.21447501
 !MRCI STATE 1.1 Energy               -19.072819316963

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.09065992 (Davidson, fixed reference)
 Cluster corrected energies           -19.09065935 (Davidson, relaxed reference)
 Cluster corrected energies           -19.09065992 (Davidson, rotated reference)

 Cluster corrected energies           -19.08676077 (Pople, fixed reference)
 Cluster corrected energies           -19.08676030 (Pople, relaxed reference)
 Cluster corrected energies           -19.08676077 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96194621 (fixed)   0.96194621 (relaxed)   0.96194621 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00056638   -0.00080199   -0.17692945
 Singles      0.01135135   -0.01744389   -0.01833331
 Pairs        0.06876553    0.00000000   -0.01326771
 Total        1.08068326   -0.01824588   -0.20853048
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.79107211
 Nuclear energy                         0.00000000
 Kinetic energy                         5.14880256
 One electron energy                  -30.81719215
 Two electron energy                   11.81758956
 Virial quotient                       -3.69010121
 Correlation energy                    -0.20853048
 !MRCI STATE 2.1 Energy               -18.999602589405

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.01642751 (Davidson, fixed reference)
 Cluster corrected energies           -19.01642751 (Davidson, relaxed reference)
 Cluster corrected energies           -19.01642751 (Davidson, rotated reference)

 Cluster corrected energies           -19.01273435 (Pople, fixed reference)
 Cluster corrected energies           -19.01273435 (Pople, relaxed reference)
 Cluster corrected energies           -19.01273435 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96194621 (fixed)   0.96194621 (relaxed)   0.96194621 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00056638   -0.00080199   -0.17692945
 Singles      0.01135135   -0.01744389   -0.01833331
 Pairs        0.06876552    0.00000000   -0.01326772
 Total        1.08068326   -0.01824589   -0.20853048
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.79107211
 Nuclear energy                         0.00000000
 Kinetic energy                         5.14880256
 One electron energy                  -30.81719213
 Two electron energy                   11.81758954
 Virial quotient                       -3.69010122
 Correlation energy                    -0.20853048
 !MRCI STATE 3.1 Energy               -18.999602589403

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.01642751 (Davidson, fixed reference)
 Cluster corrected energies           -19.01642751 (Davidson, relaxed reference)
 Cluster corrected energies           -19.01642751 (Davidson, rotated reference)

 Cluster corrected energies           -19.01273435 (Pople, fixed reference)
 Cluster corrected energies           -19.01273435 (Pople, relaxed reference)
 Cluster corrected energies           -19.01273435 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96194622 (fixed)   0.96194622 (relaxed)   0.96194622 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00056638   -0.00080199   -0.17692946
 Singles      0.01135133   -0.01744389   -0.01833331
 Pairs        0.06876553   -0.00000000   -0.01326771
 Total        1.08068324   -0.01824588   -0.20853048
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.79107211
 Nuclear energy                         0.00000000
 Kinetic energy                         5.14880262
 One electron energy                  -30.81719200
 Two electron energy                   11.81758941
 Virial quotient                       -3.69010117
 Correlation energy                    -0.20853048
 !MRCI STATE 4.1 Energy               -18.999602589378

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.01642750 (Davidson, fixed reference)
 Cluster corrected energies           -19.01642750 (Davidson, relaxed reference)
 Cluster corrected energies           -19.01642750 (Davidson, rotated reference)

 Cluster corrected energies           -19.01273435 (Pople, fixed reference)
 Cluster corrected energies           -19.01273435 (Pople, relaxed reference)
 Cluster corrected energies           -19.01273435 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.84829329 (fixed)   0.96194622 (relaxed)   0.96194622 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00056638   -0.00080199   -0.17692945
 Singles      0.01135134   -0.01744390   -0.01833331
 Pairs        0.06876551    0.00000000   -0.01326772
 Total        1.08068323   -0.01824589   -0.20853048
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.79107211
 Nuclear energy                         0.00000000
 Kinetic energy                         5.14880268
 One electron energy                  -30.81719198
 Two electron energy                   11.81758939
 Virial quotient                       -3.69010113
 Correlation energy                    -0.20853048
 !MRCI STATE 5.1 Energy               -18.999602589351

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.01642750 (Davidson, fixed reference)
 Cluster corrected energies           -19.01642750 (Davidson, relaxed reference)
 Cluster corrected energies           -19.01642750 (Davidson, rotated reference)

 Cluster corrected energies           -19.01273435 (Pople, fixed reference)
 Cluster corrected energies           -19.01273435 (Pople, relaxed reference)
 Cluster corrected energies           -19.01273435 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.84829329 (fixed)   0.96194622 (relaxed)   0.96194622 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00056638   -0.00080199   -0.17692946
 Singles      0.01135133   -0.01744389   -0.01833331
 Pairs        0.06876553    0.00000000   -0.01326771
 Total        1.08068324   -0.01824588   -0.20853048
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.79107211
 Nuclear energy                         0.00000000
 Kinetic energy                         5.14880270
 One electron energy                  -30.81719198
 Two electron energy                   11.81758939
 Virial quotient                       -3.69010111
 Correlation energy                    -0.20853048
 !MRCI STATE 6.1 Energy               -18.999602589350

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.01642750 (Davidson, fixed reference)
 Cluster corrected energies           -19.01642750 (Davidson, relaxed reference)
 Cluster corrected energies           -19.01642750 (Davidson, rotated reference)

 Cluster corrected energies           -19.01273435 (Pople, fixed reference)
 Cluster corrected energies           -19.01273435 (Pople, relaxed reference)
 Cluster corrected energies           -19.01273435 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96226292 (fixed)   0.96408541 (relaxed)   0.96408423 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00066702   -0.00095965   -0.00135518
 Singles      0.01005107   -0.01784345   -0.01849271
 Pairs        0.06517727   -0.18505606   -0.18437344
 Total        1.07589537   -0.20385916   -0.20422132
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.78382513
 Nuclear energy                         0.00000000
 Kinetic energy                         5.09049426
 One electron energy                  -30.29427126
 Two electron energy                   11.30649410
 Virial quotient                       -3.73004588
 Correlation energy                    -0.20395203
 !MRCI STATE 7.1 Energy               -18.987777157231

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.00325617 (Davidson, fixed reference)
 Cluster corrected energies           -19.00325564 (Davidson, relaxed reference)
 Cluster corrected energies           -19.00325617 (Davidson, rotated reference)

 Cluster corrected energies           -18.99983029 (Pople, fixed reference)
 Cluster corrected energies           -18.99982986 (Pople, relaxed reference)
 Cluster corrected energies           -18.99983029 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.12       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       74.09       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        50.12     44.82      1.17      0.47      3.42
 REAL TIME  *        55.96 SEC
 DISK USED  *       122.31 MB (local),        1.90 GB (total)
 SF USED    *       582.65 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -19.09065992  AU                              
 SETTING HLSDIAG(2)     =       -19.01642751  AU                              
 SETTING HLSDIAG(3)     =       -19.01642751  AU                              
 SETTING HLSDIAG(4)     =       -19.01642750  AU                              
 SETTING HLSDIAG(5)     =       -19.01642750  AU                              
 SETTING HLSDIAG(6)     =       -19.01642750  AU                              
 SETTING HLSDIAG(7)     =       -19.00325617  AU                              


        HLSDIAG
    -19.09065992
    -19.01642751
    -19.01642751
    -19.01642750
    -19.01642750
    -19.01642750
    -19.00325617
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:    -19.072819    -18.999603    -18.999603    -18.999603    -18.999603    -18.999603    -18.987777
 Replaced energies:    -19.090660    -19.016428    -19.016428    -19.016428    -19.016428    -19.016428    -19.003256



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -19.09065992

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

    2   2.1  0.5  0.5       0.00   16292.13       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00     -31.96      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

    3   3.1  0.5  0.5       0.00       0.00   16292.13       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      31.96       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   16292.13       0.00       0.00       0.00      -0.00      -0.00      31.96
                            0.00       0.00       0.00       0.00     -22.18      59.94      -0.00       0.00     -31.96       0.00

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   16292.13       0.00       0.00       0.00     -63.00      -0.00
                           -0.00      -0.00       0.00      22.18      -0.00      -0.00      -0.00      -0.00      -0.00      40.82

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   16292.13       0.00      -0.00      10.76      -0.00
                            0.00       0.00      -0.00     -59.94       0.00       0.00       0.00      -0.00       0.00      49.18

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   19182.91       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

    8   1.1  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

    9   2.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00     -63.00      10.76       0.00       0.00   16292.13       0.00
                           -0.00      -0.00       0.00      31.96       0.00      -0.00      -0.00      -0.00      -0.00      31.96

   10   3.1  0.5 -0.5      -0.00       0.00      -0.00      31.96      -0.00      -0.00      -0.00       0.00       0.00   16292.13
                            0.00      -0.00       0.00      -0.00     -40.82     -49.18       0.00       0.00     -31.96      -0.00

   11   4.1  0.5 -0.5       0.00       0.00     -31.96      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00     -31.96       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   12   5.1  0.5 -0.5      -0.00      63.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      40.82       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   13   6.1  0.5 -0.5       0.00     -10.76       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      49.18       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   14   7.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00

    2   2.1  0.5  0.5       0.00      63.00     -10.76      -0.00
                           31.96       0.00      -0.00      -0.00

    3   3.1  0.5  0.5     -31.96       0.00       0.00       0.00
                           -0.00     -40.82     -49.18       0.00

    4   4.1  0.5  0.5      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00

    5   5.1  0.5  0.5       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00

    6   6.1  0.5  0.5      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00

    7   7.1  0.5  0.5      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00

   11   4.1  0.5 -0.5   16292.13       0.00       0.00       0.00
                           -0.00      22.18     -59.94       0.00

   12   5.1  0.5 -0.5       0.00   16292.13       0.00       0.00
                          -22.18       0.00       0.00       0.00

   13   6.1  0.5 -0.5       0.00       0.00   16292.13       0.00
                           59.94      -0.00      -0.00      -0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   19182.91
                           -0.00      -0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -19.09065992     0.00000000        0.00      0.00000000        0.00      0.0000
     2   -19.09065992     0.00000000        0.00      0.00000000        0.00      0.0000
     3   -19.01686432     0.07379560    16196.26      0.07379560    16196.26      2.0081
     4   -19.01686432     0.07379560    16196.26      0.07379560    16196.26      2.0081
     5   -19.01686432     0.07379560    16196.26      0.07379560    16196.26      2.0081
     6   -19.01686432     0.07379560    16196.26      0.07379560    16196.26      2.0081
     7   -19.01613630     0.07452362    16356.04      0.07452362    16356.04      2.0279
     8   -19.01613630     0.07452362    16356.04      0.07452362    16356.04      2.0279
     9   -19.01613629     0.07452363    16356.05      0.07452363    16356.05      2.0279
    10   -19.01613629     0.07452363    16356.05      0.07452363    16356.05      2.0279
    11   -19.01613629     0.07452363    16356.05      0.07452363    16356.05      2.0279
    12   -19.01613629     0.07452363    16356.05      0.07452363    16356.05      2.0279
    13   -19.00325617     0.08740375    19182.91      0.08740375    19182.91      2.3784
    14   -19.00325617     0.08740375    19182.91      0.08740375    19182.91      2.3784


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5   0.000000000   1.000000000   0.000000000   0.000000003  -0.000000001   0.000000003  -0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  0.5  0.5  -0.000000001  -0.000000000  -0.401484849   0.000000014   0.178771908   0.034312793   0.000000101  -0.432653741
                         0.000000003  -0.000000000   0.343509905  -0.000000007  -0.290792709  -0.055813613  -0.000000109   0.445921213

    3    3.1  0.5  0.5   0.000000002  -0.000000000   0.367448390  -0.000000017   0.237434353   0.045572244   0.000000110  -0.445918317
                         0.000000000   0.000000000   0.429463490  -0.000000006   0.145968569   0.028016626   0.000000102  -0.432650930

    4    4.1  0.5  0.5   0.000000000  -0.000000000   0.000000020   0.000000000  -0.000000003   0.000000060   0.000000217   0.000000002
                         0.000000000  -0.000000003  -0.000000001  -0.036822065  -0.119012788   0.620064578  -0.442791511  -0.000000103

    5    5.1  0.5  0.5  -0.000000000  -0.000000000   0.000000016   0.579350576  -0.047816451   0.249126918  -0.061965901  -0.000000015
                        -0.000000000   0.000000000  -0.000000004   0.000000004   0.000000012  -0.000000022  -0.000000030  -0.000000000

    6    6.1  0.5  0.5  -0.000000000   0.000000000   0.000000007   0.253674391   0.109205321  -0.568967014   0.167424441   0.000000043
                        -0.000000000  -0.000000000   0.000000020   0.000000002   0.000000002   0.000000056   0.000000082   0.000000002

    7    7.1  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000004   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    8    1.1  0.5 -0.5  -0.198898230   0.000000000   0.000000002  -0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000
                         0.980020150  -0.000000000  -0.000000002   0.000000000   0.000000002   0.000000000   0.000000000   0.000000000

    9    2.1  0.5 -0.5  -0.000000000  -0.000000003   0.000000014   0.528383526  -0.065517380   0.341349941   0.621317140   0.000000148
                        -0.000000000   0.000000000  -0.000000008   0.000000003   0.000000012  -0.000000031   0.000000304   0.000000004

   10    3.1  0.5 -0.5   0.000000000   0.000000000  -0.000000012  -0.000000004  -0.000000009  -0.000000029   0.000000304   0.000000004
                         0.000000000  -0.000000002   0.000000016   0.565205448   0.053495428  -0.278714740  -0.621313104  -0.000000150

   11    4.1  0.5 -0.5  -0.000000003  -0.000000000   0.023938578  -0.000000009   0.528226975   0.101385840  -0.000000076   0.317792823
                        -0.000000001  -0.000000000   0.027978751   0.000000008   0.324740423   0.062329409  -0.000000070   0.308337551

   12    5.1  0.5 -0.5   0.000000000   0.000000000   0.440211454  -0.000000013  -0.130472836  -0.025042459   0.000000010  -0.043149910
                        -0.000000000   0.000000000  -0.376644336   0.000000010   0.212228815   0.040734362  -0.000000011   0.044473116

   13    6.1  0.5 -0.5  -0.000000000  -0.000000000   0.192750967   0.000000004   0.297979588   0.057193034  -0.000000029   0.116585885
                         0.000000000   0.000000000  -0.164917468   0.000000014  -0.484697450  -0.093030957   0.000000032  -0.120161033

   14    7.1  0.5 -0.5   0.000000000   0.000000000  -0.000000003  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000003   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5   0.000000000  -0.000000001  -0.000000003   0.000000001   0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  0.5  0.5   0.102042015   0.042626181   0.115830074   0.327596199   0.000000000  -0.000000004
                         0.260939603   0.109002674  -0.010683146  -0.030214620  -0.000000000  -0.000000001

    3    3.1  0.5  0.5   0.375022182   0.156658549  -0.004695752  -0.013280789  -0.000000000  -0.000000001
                        -0.146654711  -0.061262312  -0.050912937  -0.143994418  -0.000000000   0.000000004

    4    4.1  0.5  0.5   0.000000006   0.000000063   0.000000021  -0.000000018  -0.000000000   0.000000000
                        -0.137583178   0.329358015  -0.495783078   0.175296877  -0.000000000  -0.000000000

    5    5.1  0.5  0.5  -0.175046764   0.419041346   0.588723668  -0.208158418  -0.000000000  -0.000000000
                         0.000000006  -0.000000077   0.000000031   0.000000000   0.000000000  -0.000000000

    6    6.1  0.5  0.5  -0.238766598   0.571579229  -0.409068476   0.144636694  -0.000000000  -0.000000000
                        -0.000000004  -0.000000107  -0.000000016   0.000000021   0.000000000  -0.000000000

    7    7.1  0.5  0.5  -0.000000001   0.000000003   0.000000002  -0.000000001   0.996000742   0.056638804
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.042822862   0.054228866

    8    1.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000001  -0.000000003   0.000000000   0.000000000
                        -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    9    2.1  0.5 -0.5   0.117040915  -0.280182179  -0.328986607   0.116321688   0.000000004   0.000000000
                        -0.000000002   0.000000052  -0.000000018  -0.000000003  -0.000000000   0.000000000

   10    3.1  0.5 -0.5   0.000000003  -0.000000074   0.000000009   0.000000006   0.000000000  -0.000000000
                         0.168211094  -0.402677591  -0.144605564   0.051129024   0.000000004   0.000000000

   11    4.1  0.5 -0.5   0.306738114   0.128134128   0.016099539   0.045533454  -0.000000000  -0.000000000
                        -0.119951814  -0.050107666   0.174556006   0.493687711  -0.000000000   0.000000000

   12    5.1  0.5 -0.5   0.152614360   0.063751850   0.207278669   0.586235520   0.000000000  -0.000000000
                         0.390262087   0.163024746  -0.019117563  -0.054069257  -0.000000000  -0.000000000

   13    6.1  0.5 -0.5   0.208168499   0.086958565  -0.144025403  -0.407339591   0.000000000  -0.000000000
                         0.532323869   0.222368387   0.013283671   0.037569457  -0.000000000  -0.000000000

   14    7.1  0.5 -0.5   0.000000001   0.000000000   0.000000001   0.000000002  -0.071938971   0.919230160
                         0.000000003   0.000000001  -0.000000000  -0.000000000   0.031201097   0.385833109


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%  27.919%   0.000%  11.652%   0.429%   0.000%  38.603%   7.850%   1.370%
    3    3.1  0.5  0.5   0.000%   0.000%  31.946%   0.000%   7.768%   0.286%   0.000%  38.603%  16.215%   2.829%
    4    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.136%   1.416%  38.448%  19.606%   0.000%   1.893%  10.848%
    5    5.1  0.5  0.5   0.000%   0.000%   0.000%  33.565%   0.229%   6.206%   0.384%   0.000%   3.064%  17.560%
    6    6.1  0.5  0.5   0.000%   0.000%   0.000%   6.435%   1.193%  32.372%   2.803%   0.000%   5.701%  32.670%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    1.1  0.5 -0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%   0.000%  27.919%   0.429%  11.652%  38.603%   0.000%   1.370%   7.850%
   10    3.1  0.5 -0.5   0.000%   0.000%   0.000%  31.946%   0.286%   7.768%  38.603%   0.000%   2.829%  16.215%
   11    4.1  0.5 -0.5   0.000%   0.000%   0.136%   0.000%  38.448%   1.416%   0.000%  19.606%  10.848%   1.893%
   12    5.1  0.5 -0.5   0.000%   0.000%  33.565%   0.000%   6.206%   0.229%   0.000%   0.384%  17.560%   3.064%
   13    6.1  0.5 -0.5   0.000%   0.000%   6.435%   0.000%  32.372%   1.193%   0.000%   2.803%  32.670%   5.701%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   1.353%  10.823%   0.000%   0.000%
    3    3.1  0.5  0.5   0.261%   2.091%   0.000%   0.000%
    4    4.1  0.5  0.5  24.580%   3.073%   0.000%   0.000%
    5    5.1  0.5  0.5  34.660%   4.333%   0.000%   0.000%
    6    6.1  0.5  0.5  16.734%   2.092%   0.000%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000%  99.385%   0.615%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5  10.823%   1.353%   0.000%   0.000%
   10    3.1  0.5 -0.5   2.091%   0.261%   0.000%   0.000%
   11    4.1  0.5 -0.5   3.073%  24.580%   0.000%   0.000%
   12    5.1  0.5 -0.5   4.333%  34.660%   0.000%   0.000%
   13    6.1  0.5 -0.5   2.092%  16.734%   0.000%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.615%  99.385%


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
              1      21       48.12       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       74.09       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        69.60     19.46     44.82      1.17      0.47      3.42
 REAL TIME  *        80.34 SEC
 DISK USED  *       122.31 MB (local),        1.90 GB (total)
 SF USED    *       582.65 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -19.003256171607

              CI           MULTI         RHF-SCF
    -18.98777716    -18.78355583    -18.72784240
 **********************************************************************************************************************************
 Molpro calculation terminated
