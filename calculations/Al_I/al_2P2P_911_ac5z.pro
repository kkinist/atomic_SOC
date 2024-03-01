
 Working directory              : /wrk/irikura/molpro.EeXMqRWL17/
 Global scratch directory       : /wrk/irikura/molpro.EeXMqRWL17/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.EeXMqRWL17/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Al SO-CI
                                                                                 ! Active space (9/11) is 2p3s3p + 4s4p
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Al};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=13,sym=2,spin=1}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,2,0;
     occ,4,9
     wf,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=2,spin=1;state,6; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Al SO-                                                                        
  64 bit mpp version                                                                     DATE: 25-Feb-24          TIME: 19:12:25  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry AL     S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry AL     P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry AL     D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry AL     F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry AL     G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry AL     H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  AL     13.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   13
 NUMBER OF PRIMITIVE AOS:         322
 NUMBER OF SYMMETRY AOS:          232
 NUMBER OF CONTRACTIONS:          217   (  102Ag  +  115Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     229.900 MB (compressed) written to integral file ( 11.9%)

     Node minimum: 3.670 MB, node maximum: 11.534 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4703088.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4703088      RECORD LENGTH: 524288

 Memory used in sort:       5.26 MW

 SORT1 READ   241177324. AND WROTE      823313. INTEGRALS IN      3 RECORDS. CPU TIME:     1.61 SEC, REAL TIME:     1.66 SEC
 SORT2 READ    24788184. AND WROTE   141159946. INTEGRALS IN    690 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.11 SEC

 Node minimum:     4695545.  Node maximum:     4720044. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9  101112131415 7 8 910  1112131415 7 8 91011
                                       12131415 7 8 9101112  131415 7 8 910111213  1415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  19202111121314151617  18192021111213141516  1718192021

 Eigenvalues of metric

         1 0.431E-05 0.620E-03 0.328E-02 0.807E-02 0.108E-01 0.108E-01 0.108E-01 0.108E-01
         2 0.322E-04 0.322E-04 0.322E-04 0.638E-02 0.638E-02 0.638E-02 0.253E-01 0.253E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.14       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.93      4.58
 REAL TIME  *         5.66 SEC
 DISK USED  *        30.46 MB (local),        1.39 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   4   3
 Initial beta  occupancy:   4   2

 NELEC=   13   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -192.23621334    -192.23621334     0.00D+00     0.90D-01     0     0       0.03      0.06    start
   2     -233.56666491     -41.33045157     0.22D+00     0.13D+00     1     0       0.04      0.10    diag2
   3     -240.13688511      -6.57022020     0.22D+00     0.45D-01     2     0       0.04      0.14    diag2
   4     -242.17107298      -2.03418787     0.87D-01     0.40D-01     3     0       0.04      0.18    diag2
   5     -242.23079844      -0.05972546     0.60D-02     0.10D-01     4     0       0.04      0.22    diag2
   6     -242.26159588      -0.03079744     0.18D-02     0.39D-02     5     0       0.04      0.26    diag2
   7     -242.29088032      -0.02928444     0.12D-02     0.30D-02     6     0       0.03      0.29    diag2
   8     -242.31105471      -0.02017439     0.97D-03     0.44D-02     7     0       0.04      0.33    fixocc
   9     -242.31232042      -0.00126571     0.44D-03     0.13D-02     8     0       0.04      0.37    diag2
  10     -242.31252380      -0.00020337     0.14D-03     0.40D-03     9     0       0.04      0.41    diag2/orth
  11     -242.31256450      -0.00004070     0.64D-04     0.17D-03     9     0       0.04      0.45    diag2
  12     -242.31256554      -0.00000105     0.89D-05     0.31D-04     9     0       0.04      0.49    diag2
  13     -242.31256556      -0.00000002     0.16D-05     0.42D-05     9     0       0.03      0.52    diag2
  14     -242.31256557      -0.00000000     0.16D-06     0.57D-06     9     0       0.04      0.56    diag2
  15     -242.31256557      -0.00000000     0.26D-07     0.39D-07     0     0       0.04      0.60    diag

 Final alpha occupancy:   3   4
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -242.312565565066
  RHF One-electron energy            -337.229621107046
  RHF Two-electron energy              94.917055541980
  RHF Kinetic energy                  245.060115166638
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.988788262832

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.62021     1  1  s    0.97700
    2.1     2.00000    -4.92852     1  2  s    1.02196
    3.1     2.00000    -0.39445     1  2  s   -0.25753    1  9  s    0.34280    1 10  s    0.61347
    1.2     2.00000    -3.21678     1  1  pz   0.99889
    2.2     2.00000    -3.21678     1  1  py   0.99888
    3.2     2.00000    -3.21607     1  1  px   1.00165
    4.2     1.00000    -0.20988     1  8  px   0.28869    1  9  px   0.54493    1 10  px   0.29746


 HOMO      4.2    -0.209877 =      -5.7110eV
 LUMO      5.2     0.007226 =       0.1966eV
 LUMO-HOMO         0.217103 =       5.9077eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.14       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.11       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         5.53      0.60      4.58
 REAL TIME  *         6.36 SEC
 DISK USED  *        34.60 MB (local),        1.51 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   2 (    2    0)
 Number of active  orbitals:       11 (    2    9)
 Number of external orbitals:     204 (   98  106)

 State symmetry 1

 Number of active electrons:   9    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:           38682   (76356 determinants, 152460 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.400D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.183D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.118D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.203D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 3 4 5 1   5 3 4 6 2 711 81410  15 91312 6 2 4 3 5 1   711 8141015 91312 6
                                        2 4 3 5 111 7 81410  15 91312 2 6 4 3 5 1  11 7 8141015 91312 2   6 4 3 5 2 6 4 3 5 1
                                       11 714 81510 91312 2   6 4 3 5 1 2 6 4 3 5   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.103D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.129D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.577D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.426D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.142D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.130D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.198D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.816D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.100D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 3 2 1   3 2 6 5 8 410 9 7 6   5 8 410 9 7 1 3 2 5   6 8 410 9 712191421
                                       16172015131811 3 2 1   5 6 8 410 9 7121914  2116172015131811 5 6   8 410 9 7 3 2 11912
                                       211416171520131811 5   6 8 410 9 7 3 2 1 5   6 8 410 9 7 3 2 1 3   2 1 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  1350  ( 4 closed/active, 196 closed/virtual, 0 active/active, 1150 active/virtual )
 Total number of variables:    459486
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   28    0   -242.24781601    -242.27132627   -0.02351026    0.05515875 0.00007585 0.00008885  0.12E+01      7.23
   2    9   23    0   -242.27093445    -242.27095459   -0.00002014    0.00334878 0.00000394 0.00000424  0.45E-01     13.13
   3    8   18    0   -242.27095459    -242.27095460   -0.00000000    0.00000399 0.00000000 0.00000008  0.34E-03     19.64

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.19E-07)
                       Final energy:   -242.27095460
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -242.333891483801
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.12468757
 One electron energy                          -337.37341994
 Two electron energy                            95.03952846
 Virial ratio                                    1.98861479
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -242.333891483800
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.12468757
 One electron energy                          -337.37341994
 Two electron energy                            95.03952846
 Virial ratio                                    1.98861479
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -242.333891483797
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.12468757
 One electron energy                          -337.37341994
 Two electron energy                            95.03952846
 Virial ratio                                    1.98861479
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -242.208017706525
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.91563388
 One electron energy                          -334.97512456
 Two electron energy                            92.76710685
 Virial ratio                                    1.98894470
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -242.208017706523
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.91563388
 One electron energy                          -334.97512456
 Two electron energy                            92.76710685
 Virial ratio                                    1.98894470
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -242.208017706501
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.91563388
 One electron energy                          -334.97512456
 Two electron energy                            92.76710685
 Virial ratio                                    1.98894470
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999780913
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999993616079
 !MCSCF expec                      <3.2|LXLX|3.2>     0.000006603009
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999742145
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999999946403
 !MCSCF expec                      <6.2|LXLX|6.2>     0.000000311452
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999758182240
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000248236968
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999993580791
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999771332445
 !MCSCF expec                      <5.2|LYLY|5.2>     0.000228717644
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999999949911
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000242036847
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999758146953
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999816200
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.000228925410
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999771335953
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999738636
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 3 5 4 6   6 4 5 3 2 812131014  15 711 9 1 6 4 5 3 2   812 7101311 91415 6
                                        4 5 3 2 111 9 812 7  15141013 2 6 4 3 5 1  11 912 8 710131415 2   6 4 3 5 2 6 4 5 3 1
                                       11 9 712 814151013 2   6 4 5 3 1 2 6 4 3 5   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 2 1 1   2 3 810 6 5 4 9 7 6   810 9 7 5 4 1 2 310   8 5 4 9 7 616141913
                                       21121120181715 3 2 1  10 8 5 4 9 7 6132116  1412111920181715 9 7   810 5 4 6 3 2 11321
                                       161418201715191211 5   410 8 7 9 6 3 2 110   8 5 4 7 9 6 3 2 1 2   3 1 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.70481     1  1  s    0.97699
    2.1     2.00000    -5.01183     1  2  s    1.02242
    3.1     1.89722    -0.44561     1  2  s   -0.26322    1  9  s    0.37392    1 10  s    0.65000
    4.1     0.00645     0.29358     1  2  s    0.37092    1  9  s   -1.70204    1 10  s    0.47405    1 11  s    0.96436
    1.2     1.99989    -3.29963     1  1  pz   0.99986
    2.2     1.99989    -3.29963     1  1  py   0.99986
    3.2     1.99989    -3.29963     1  1  px   0.99986
    4.2     0.19905    -0.01879     1  8  px   0.41188    1  9  px   0.60013
    5.2     0.19905    -0.01879     1  8  py   0.41188    1  9  py   0.60013
    6.2     0.19905    -0.01879     1  8  pz   0.41188    1  9  pz   0.60013
    7.2     0.16651     0.01891     1 11  pz   0.99640
    8.2     0.16651     0.01891     1 11  py   0.99640
    9.2     0.16651     0.01891     1 11  px   0.99640
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 222a00000      0.00044323     -0.00239255      0.94692405     -0.00011940      0.00005444     -0.23513864
 20 22200a000      0.94681258      0.01472626     -0.00040597     -0.23511176      0.00355568      0.00012021
 20 2220a0000     -0.01472518      0.94680964      0.00239915     -0.00355571     -0.23511178     -0.00005263
 20 22200000a      0.00011008     -0.00059419      0.23516940      0.00047779     -0.00021783      0.94090273
 20 2220000a0     -0.00365701      0.23514098      0.00059583      0.01422811      0.94079527      0.00021058
 20 222000a00      0.23514171      0.00365728     -0.00010082      0.94079518     -0.01422800     -0.00048102
 00 222a20000     -0.00006617      0.00035718     -0.14136376      0.00001892     -0.00000862      0.03725219
 00 222a02000     -0.00006617      0.00035718     -0.14136376      0.00001892     -0.00000862      0.03725219
 00 22220a000     -0.14134712     -0.00219844      0.00006061      0.03724793     -0.00056331     -0.00001904
 00 22202a000     -0.14134712     -0.00219844      0.00006061      0.03724793     -0.00056331     -0.00001904
 00 2222a0000      0.00219828     -0.14134668     -0.00035816      0.00056332      0.03724794      0.00000834
 00 2220a2000      0.00219828     -0.14134668     -0.00035816      0.00056332      0.03724794      0.00000834
 00 22202000a     -0.00001522      0.00008217     -0.03252201     -0.00006615      0.00003016     -0.13027368
 00 22200200a     -0.00001522      0.00008217     -0.03252201     -0.00006615      0.00003016     -0.13027368
 00 2220020a0      0.00050573     -0.03251808     -0.00008240     -0.00196997     -0.13025880     -0.00002916
 00 2222000a0      0.00050573     -0.03251808     -0.00008240     -0.00196997     -0.13025880     -0.00002916
 00 222020a00     -0.03251818     -0.00050577      0.00001394     -0.13025879      0.00196995      0.00006660
 00 222200a00     -0.03251818     -0.00050577      0.00001394     -0.13025879      0.00196995      0.00006660
 00 22220000a     -0.00001494      0.00008067     -0.03192619     -0.00006516      0.00002971     -0.12832261
 00 2220200a0      0.00049647     -0.03192234     -0.00008089     -0.00194046     -0.12830795     -0.00002872
 00 222002a00     -0.03192244     -0.00049651      0.00001369     -0.12830794      0.00194045      0.00006560
 
 Energy:        -242.33389148   -242.33389148   -242.33389148   -242.20801771   -242.20801771   -242.20801771
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.03       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        16.46     10.91      0.60      4.58
 REAL TIME  *        27.92 SEC
 DISK USED  *        57.73 MB (local),        2.19 GB (total)
 SF USED    *        89.42 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -242.3338915   2.0
    -242.3338915   2.0
    -242.3338915   2.0
    -242.2080177   2.0
    -242.2080177   2.0
    -242.2080177   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 13
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:    10933 conf    38682 CSFs
 N elec internal:    69576 conf   339768 CSFs
 N-1 el internal:    58278 conf   453024 CSFs
 N-2 el internal:    34330 conf   424008 CSFs

 Number of electrons in valence space:                     11
 Maximum number of open shell orbitals in reference space:  9
 Maximum number of open shell orbitals in internal spaces: 11


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:       11 (   2   9 )
 Number of external orbitals:     204 (  98 106 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.62 sec, npass=  1  Memory used:   2.25 MW


 Number of p-space configurations:  14

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -242.33389148
     2      -242.33389148
     3      -242.33389148
     4      -242.20801771
     5      -242.20801771
     6      -242.20801771

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9432D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4004D-06

 Number of blocks in overlap matrix:    18   Smallest eigenvalue:  0.94D-07
 Number of N-2 electron functions:     803
 Number of N-1 electron functions:  453024

 Number of internal configurations:               170370
 Number of singly external configurations:      46213344
 Number of doubly external configurations:       8361942
 Total number of contracted configurations:     54745656
 Total number of uncontracted configurations: 4451780082

 Diagonal Coupling coefficients finished.               Storage:******** words, CPU-Time:    546.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2222831 words, CPU-time:      1.35 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -242.33389148    -0.00000000    -0.35415435  0.35D-01  0.15D-01   576.21
    1     2     2     1.00000000     0.00000000  -242.33389148    -0.00000000    -0.35422978  0.35D-01  0.15D-01   576.21
    1     3     3     1.00000000     0.00000000  -242.33389148    -0.00000000    -0.35422157  0.35D-01  0.15D-01   576.21
    1     4     4     1.00000000     0.00000000  -242.20801771     0.00000000    -0.33350116  0.14D-01  0.14D-01   576.21
    1     5     5     1.00000000     0.00000000  -242.20801771    -0.00000000    -0.33351420  0.14D-01  0.14D-01   576.21
    1     6     6     1.00000000     0.00000000  -242.20801771     0.00000000    -0.33351341  0.14D-01  0.14D-01   576.21
    2     1     1     1.04462436    -0.33388895  -242.66778043    -0.33388895    -0.00427892  0.12D-02  0.22D-03  1352.54
    2     2     2     1.04477581    -0.33384827  -242.66773975    -0.33384827    -0.00431838  0.12D-02  0.22D-03  1352.54
    2     3     3     1.04477599    -0.33384765  -242.66773914    -0.33384765    -0.00431842  0.12D-02  0.22D-03  1352.54
    2     4     4     1.02483166    -0.32019499  -242.52821270    -0.32019499    -0.00265601  0.42D-03  0.14D-03  1352.54
    2     5     5     1.02485785    -0.32018806  -242.52820576    -0.32018806    -0.00266377  0.42D-03  0.14D-03  1352.54
    2     6     6     1.02485785    -0.32018803  -242.52820574    -0.32018803    -0.00266282  0.42D-03  0.14D-03  1352.54
    3     1     1     1.03576956    -0.33890397  -242.67279545    -0.00501502    -0.00063512  0.30D-04  0.61D-04  2137.05
    3     2     2     1.03575870    -0.33890087  -242.67279235    -0.00505260    -0.00063539  0.30D-04  0.61D-04  2137.05
    3     3     3     1.03575826    -0.33890066  -242.67279214    -0.00505301    -0.00063561  0.30D-04  0.61D-04  2137.05
    3     4     4     1.02264865    -0.32312277  -242.53114048    -0.00292778    -0.00029017  0.93D-05  0.28D-04  2137.05
    3     5     5     1.02264789    -0.32312239  -242.53114009    -0.00293433    -0.00029060  0.93D-05  0.28D-04  2137.05
    3     6     6     1.02264714    -0.32312227  -242.53113997    -0.00293423    -0.00029018  0.93D-05  0.28D-04  2137.05
    4     1     1     1.03654913    -0.34040861  -242.67430009    -0.00150464    -0.00033796  0.36D-04  0.25D-04  2923.28
    4     2     2     1.03654529    -0.34040674  -242.67429822    -0.00150587    -0.00033891  0.36D-04  0.25D-04  2923.28
    4     3     3     1.03654609    -0.34040655  -242.67429804    -0.00150589    -0.00033884  0.36D-04  0.25D-04  2923.28
    4     4     4     1.02311755    -0.32367238  -242.53169009    -0.00054961    -0.00014445  0.72D-05  0.12D-04  2923.28
    4     5     5     1.02311746    -0.32367216  -242.53168987    -0.00054977    -0.00014443  0.73D-05  0.12D-04  2923.28
    4     6     6     1.02311558    -0.32367203  -242.53168974    -0.00054976    -0.00014471  0.72D-05  0.12D-04  2923.28
    5     1     1     1.03863278    -0.34090955  -242.67480103    -0.00050094    -0.00008873  0.11D-04  0.61D-05  3708.61
    5     2     2     1.03864331    -0.34090928  -242.67480077    -0.00050255    -0.00008892  0.11D-04  0.61D-05  3708.61
    5     3     3     1.03864357    -0.34090917  -242.67480065    -0.00050261    -0.00008899  0.11D-04  0.61D-05  3708.61
    5     4     4     1.02366861    -0.32390215  -242.53191985    -0.00022977    -0.00004885  0.30D-05  0.34D-05  3708.61
    5     5     5     1.02366696    -0.32390206  -242.53191976    -0.00022990    -0.00004874  0.29D-05  0.34D-05  3708.61
    5     6     6     1.02366852    -0.32390195  -242.53191965    -0.00022992    -0.00004872  0.30D-05  0.34D-05  3708.61
    6     1     1     1.03805545    -0.34103000  -242.67492148    -0.00012045    -0.00002723  0.21D-05  0.22D-05  4490.06
    6     2     2     1.03805125    -0.34102994  -242.67492143    -0.00012066    -0.00002725  0.22D-05  0.22D-05  4490.06
    6     3     3     1.03805099    -0.34102992  -242.67492140    -0.00012076    -0.00002726  0.22D-05  0.22D-05  4490.06
    6     4     4     1.02351488    -0.32396469  -242.53198239    -0.00006254    -0.00001288  0.80D-06  0.10D-05  4490.06
    6     5     5     1.02351529    -0.32396445  -242.53198216    -0.00006240    -0.00001286  0.79D-06  0.10D-05  4490.06
    6     6     6     1.02351504    -0.32396431  -242.53198202    -0.00006237    -0.00001285  0.79D-06  0.10D-05  4490.06
    7     1     1     1.03836109    -0.34107798  -242.67496947    -0.00004799    -0.00001601  0.14D-05  0.12D-05  5274.10
    7     2     2     1.03836040    -0.34107796  -242.67496945    -0.00004802    -0.00001603  0.14D-05  0.12D-05  5274.10
    7     3     3     1.03836021    -0.34107796  -242.67496944    -0.00004804    -0.00001602  0.14D-05  0.12D-05  5274.10
    7     4     4     1.02364590    -0.32398506  -242.53200276    -0.00002037    -0.00000722  0.32D-06  0.60D-06  5274.10
    7     5     5     1.02364630    -0.32398479  -242.53200250    -0.00002034    -0.00000720  0.32D-06  0.60D-06  5274.10
    7     6     6     1.02364635    -0.32398464  -242.53200235    -0.00002033    -0.00000719  0.32D-06  0.60D-06  5274.10
    8     1     1     1.03870236    -0.34110120  -242.67499268    -0.00002322    -0.00000657  0.56D-06  0.48D-06  6058.17
    8     2     2     1.03870210    -0.34110119  -242.67499268    -0.00002323    -0.00000657  0.56D-06  0.48D-06  6058.17
    8     3     3     1.03869973    -0.34110119  -242.67499267    -0.00002323    -0.00000657  0.54D-06  0.48D-06  6058.17
    8     4     4     1.02375714    -0.32399573  -242.53201343    -0.00001067    -0.00000368  0.17D-06  0.29D-06  6058.17
    8     5     5     1.02375684    -0.32399544  -242.53201315    -0.00001065    -0.00000367  0.16D-06  0.29D-06  6058.17
    8     6     6     1.02375716    -0.32399528  -242.53201299    -0.00001064    -0.00000366  0.16D-06  0.29D-06  6058.17
    9     1     1     1.03863449    -0.34110978  -242.67500127    -0.00000859    -0.00000250  0.14D-06  0.22D-06  6839.09
    9     2     2     1.03863427    -0.34110978  -242.67500126    -0.00000858    -0.00000250  0.14D-06  0.22D-06  6839.09
    9     3     3     1.03863514    -0.34110976  -242.67500125    -0.00000857    -0.00000250  0.14D-06  0.22D-06  6839.09
    9     4     4     1.02374625    -0.32400020  -242.53201791    -0.00000448    -0.00000128  0.55D-07  0.11D-06  6839.09
    9     5     5     1.02374627    -0.32399990  -242.53201761    -0.00000446    -0.00000127  0.55D-07  0.11D-06  6839.09
    9     6     6     1.02374627    -0.32399974  -242.53201744    -0.00000446    -0.00000127  0.55D-07  0.11D-06  6839.09
   10     1     1     1.03869888    -0.34111372  -242.67500521    -0.00000394    -0.00000155  0.93D-07  0.13D-06  7622.52
   10     2     2     1.03869895    -0.34111372  -242.67500520    -0.00000394    -0.00000155  0.93D-07  0.13D-06  7622.52
   10     3     3     1.03869931    -0.34111370  -242.67500518    -0.00000394    -0.00000155  0.93D-07  0.13D-06  7622.52
   10     4     4     1.02377766    -0.32400207  -242.53201978    -0.00000187    -0.00000075  0.24D-07  0.67D-07  7622.52
   10     5     5     1.02377766    -0.32400177  -242.53201947    -0.00000186    -0.00000075  0.24D-07  0.67D-07  7622.52
   10     6     6     1.02377770    -0.32400160  -242.53201930    -0.00000186    -0.00000075  0.24D-07  0.67D-07  7622.52
   11     1     1     1.03877487    -0.34111592  -242.67500741    -0.00000220    -0.00000074  0.39D-07  0.59D-07  8411.79
   11     2     2     1.03877480    -0.34111591  -242.67500740    -0.00000220    -0.00000074  0.39D-07  0.59D-07  8411.79
   11     3     3     1.03877416    -0.34111590  -242.67500738    -0.00000220    -0.00000074  0.38D-07  0.59D-07  8411.79
   11     4     4     1.02380556    -0.32400317  -242.53202087    -0.00000110    -0.00000044  0.13D-07  0.39D-07  8411.79
   11     5     5     1.02380541    -0.32400286  -242.53202057    -0.00000110    -0.00000044  0.13D-07  0.39D-07  8411.79
   11     6     6     1.02380550    -0.32400269  -242.53202040    -0.00000109    -0.00000044  0.13D-07  0.38D-07  8411.79
   12     1     1     1.03877482    -0.34111685  -242.67500833    -0.00000093    -0.00000030  0.12D-07  0.28D-07  9199.94
   12     2     2     1.03877469    -0.34111684  -242.67500833    -0.00000093    -0.00000030  0.12D-07  0.28D-07  9199.94
   12     3     3     1.03877475    -0.34111683  -242.67500831    -0.00000093    -0.00000030  0.12D-07  0.28D-07  9199.94
   12     4     4     1.02380845    -0.32400369  -242.53202139    -0.00000052    -0.00000017  0.51D-08  0.17D-07  9199.94
   12     5     5     1.02380836    -0.32400338  -242.53202109    -0.00000052    -0.00000017  0.51D-08  0.17D-07  9199.94
   12     6     6     1.02380838    -0.32400321  -242.53202092    -0.00000052    -0.00000017  0.51D-08  0.17D-07  9199.94
   13     1     1     1.03879382    -0.34111730  -242.67500879    -0.00000045    -0.00000019  0.77D-08  0.17D-07  9986.74
   13     2     2     1.03879375    -0.34111729  -242.67500878    -0.00000045    -0.00000019  0.77D-08  0.17D-07  9986.74
   13     3     3     1.03879386    -0.34111728  -242.67500876    -0.00000045    -0.00000019  0.77D-08  0.17D-07  9986.74
   13     4     4     1.02381826    -0.32400393  -242.53202163    -0.00000024    -0.00000010  0.23D-08  0.99D-08  9986.74
   13     5     5     1.02381816    -0.32400362  -242.53202133    -0.00000024    -0.00000010  0.23D-08  0.99D-08  9986.74
   13     6     6     1.02381817    -0.32400345  -242.53202115    -0.00000024    -0.00000010  0.23D-08  0.99D-08  9986.74
   14     1     1     1.03881203    -0.34111757  -242.67500905    -0.00000027    -0.00000010  0.37D-08  0.87D-08 10769.27
   14     2     2     1.03881194    -0.34111756  -242.67500905    -0.00000027    -0.00000010  0.37D-08  0.88D-08 10769.27
   14     3     3     1.03881178    -0.34111755  -242.67500903    -0.00000027    -0.00000010  0.36D-08  0.88D-08 10769.27
   14     4     4     1.02382622    -0.32400408  -242.53202178    -0.00000015    -0.00000007  0.14D-08  0.63D-08 10769.27
   14     5     5     1.02382609    -0.32400377  -242.53202148    -0.00000015    -0.00000007  0.14D-08  0.63D-08 10769.27
   14     6     6     1.02382611    -0.32400360  -242.53202130    -0.00000015    -0.00000007  0.14D-08  0.63D-08 10769.27
   15     1     1     1.03881511    -0.34111769  -242.67500918    -0.00000012    -0.00000004  0.11D-08  0.43D-08 11412.69
   15     2     2     1.03881499    -0.34111769  -242.67500917    -0.00000012    -0.00000004  0.11D-08  0.43D-08 11412.69
   15     3     3     1.03881494    -0.34111767  -242.67500915    -0.00000012    -0.00000004  0.11D-08  0.43D-08 11412.69
   15     4     4     1.02382621    -0.32400408  -242.53202178    -0.00000000    -0.00000007  0.14D-08  0.63D-08 11412.69
   15     5     5     1.02382608    -0.32400377  -242.53202148    -0.00000000    -0.00000007  0.14D-08  0.63D-08 11412.69
   15     6     6     1.02382610    -0.32400360  -242.53202130    -0.00000000    -0.00000007  0.14D-08  0.63D-08 11412.69


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.8%   4.8%
 P   1.0%  35.5%  47.0%

 Initialization:   4.9%
 Other:            5.4%

 Total CPU:    11412.7 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222/00000           0.9426431  -0.0001381  -0.0000347  -0.1887126  -0.0000021  -0.0000019
 22022200/000           0.0000348   0.0002510   0.9426431   0.0000021  -0.1887132   0.0000235
 2202220/0000           0.0001381   0.9426430  -0.0002510   0.0000019  -0.0000235  -0.1887134
 220222000/00           0.0000070   0.0000508   0.1905682  -0.0000104   0.9417829  -0.0001173
 2202220000/0           0.0000279   0.1905684  -0.0000508  -0.0000094   0.0001173   0.9417828
 22022200000/           0.1905673  -0.0000279  -0.0000070   0.9417823   0.0000104   0.0000094
 20022202/000          -0.0000047  -0.0000342  -0.1283501  -0.0000003   0.0276339  -0.0000034
 2002220/2000          -0.0000188  -0.1283498   0.0000342  -0.0000003   0.0000034   0.0276341
 200222/02000          -0.1283497   0.0000188   0.0000047   0.0276351   0.0000003   0.0000003
 200222/20000          -0.1283492   0.0000188   0.0000047   0.0276344   0.0000003   0.0000003
 2002222/0000          -0.0000188  -0.1283490   0.0000342  -0.0000003   0.0000034   0.0276351
 20022220/000          -0.0000047  -0.0000342  -0.1283490  -0.0000003   0.0276353  -0.0000034
 20022202000/          -0.0243730   0.0000036   0.0000009  -0.1204975  -0.0000013  -0.0000012
 200222020/00          -0.0000009  -0.0000065  -0.0243726   0.0000013  -0.1204963   0.0000150
 2002220020/0          -0.0000036  -0.0243721   0.0000065   0.0000012  -0.0000150  -0.1204952
 200222200/00          -0.0000009  -0.0000065  -0.0243724   0.0000013  -0.1204951   0.0000150
 2002222000/0          -0.0000036  -0.0243723   0.0000065   0.0000012  -0.0000150  -0.1204951
 20022200200/          -0.0243725   0.0000036   0.0000009  -0.1204949  -0.0000013  -0.0000012
 20022220000/          -0.0235573   0.0000035   0.0000009  -0.1178751  -0.0000013  -0.0000012
 2002220200/0          -0.0000035  -0.0235564   0.0000063   0.0000012  -0.0000147  -0.1178746
 200222002/00          -0.0000009  -0.0000063  -0.0235558   0.0000013  -0.1178731   0.0000147
 2/\22200000/          -0.0212025   0.0000031   0.0000008  -0.0846168  -0.0000009  -0.0000008
 2/\222000/00          -0.0000008  -0.0000056  -0.0212057   0.0000009  -0.0846144   0.0000105
 2/\2220000/0          -0.0000031  -0.0212052   0.0000056   0.0000008  -0.0000105  -0.0846141

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000036    0.000144    0.979801   -0.000002   -0.000006   -0.042484
 2           0.000261    0.979801   -0.000144   -0.000011   -0.042483    0.000006
 3           0.979801   -0.000261   -0.000036   -0.042483    0.000011    0.000002
 4          -0.000001   -0.000000    0.046909   -0.000011   -0.000010    0.986591
 5           0.046908    0.000006    0.000001    0.986592    0.000123    0.000011
 6          -0.000006    0.046908    0.000000   -0.000123    0.986592    0.000010

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.980719    0.000000   -0.000000    0.002056    0.000000    0.000000
 2           0.000000    0.980719   -0.000000   -0.000000    0.000001    0.002056
 3          -0.000000   -0.000000    0.980719   -0.000000    0.002056   -0.000001
 4           0.002056   -0.000000   -0.000000    0.987704   -0.000000    0.000000
 5           0.000000    0.000001    0.002056   -0.000000    0.987704   -0.000000
 6           0.000000    0.002056   -0.000001    0.000000   -0.000000    0.987704


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97980066 (fixed)   0.98110796 (relaxed)   0.98071912 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00085798   -0.00058652   -0.29985026
 Singles      0.02119474   -0.04486168   -0.05010126
 Pairs        0.01765368    0.01520755    0.00883383
 Total        1.03970640   -0.03024065   -0.34111769
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.33363188
 Nuclear energy                         0.00000000
 Kinetic energy                       245.42706456
 One electron energy                 -337.12672071
 Two electron energy                   94.45171153
 Virial quotient                       -0.98878667
 Correlation energy                    -0.34137729
 !MRCI STATE 1.2 Energy              -242.675009176983

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.68856404 (Davidson, fixed reference)
 Cluster corrected energies          -242.68828275 (Davidson, relaxed reference)
 Cluster corrected energies          -242.68856404 (Davidson, rotated reference)

 Cluster corrected energies          -242.68611478 (Pople, fixed reference)
 Cluster corrected energies          -242.68587893 (Pople, relaxed reference)
 Cluster corrected energies          -242.68611478 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97980069 (fixed)   0.98110802 (relaxed)   0.98071914 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00085806   -0.00058652   -0.28522144
 Singles      0.02119467   -0.04486161   -0.05010119
 Pairs        0.01765363   -0.00000223   -0.00579506
 Total        1.03970636   -0.04545036   -0.34111769
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.33363190
 Nuclear energy                         0.00000000
 Kinetic energy                       245.42706768
 One electron energy                 -337.12672720
 Two electron energy                   94.45171804
 Virial quotient                       -0.98878665
 Correlation energy                    -0.34137727
 !MRCI STATE 2.2 Energy              -242.675009169092

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.68856402 (Davidson, fixed reference)
 Cluster corrected energies          -242.68828270 (Davidson, relaxed reference)
 Cluster corrected energies          -242.68856402 (Davidson, rotated reference)

 Cluster corrected energies          -242.68611476 (Pople, fixed reference)
 Cluster corrected energies          -242.68587889 (Pople, relaxed reference)
 Cluster corrected energies          -242.68611476 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97980070 (fixed)   0.98110805 (relaxed)   0.98071915 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00085809   -0.00058652   -0.28522305
 Singles      0.02119463   -0.04486160   -0.05010116
 Pairs        0.01765362   -0.00000056   -0.00579346
 Total        1.03970633   -0.04544868   -0.34111767
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.33363189
 Nuclear energy                         0.00000000
 Kinetic energy                       245.42706785
 One electron energy                 -337.12672927
 Two electron energy                   94.45172011
 Virial quotient                       -0.98878665
 Correlation energy                    -0.34137726
 !MRCI STATE 3.2 Energy              -242.675009152312

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.68856399 (Davidson, fixed reference)
 Cluster corrected energies          -242.68828267 (Davidson, relaxed reference)
 Cluster corrected energies          -242.68856399 (Davidson, rotated reference)

 Cluster corrected energies          -242.68611473 (Pople, fixed reference)
 Cluster corrected energies          -242.68587886 (Pople, relaxed reference)
 Cluster corrected energies          -242.68611473 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.98659148 (fixed)   0.98826641 (relaxed)   0.98770390 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119857   -0.00056180   -0.00138880
 Singles      0.00875269   -0.03388706   -0.03582360
 Pairs        0.01510208   -0.28908176   -0.28679167
 Total        1.02505334   -0.32353062   -0.32400408
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.20827731
 Nuclear energy                         0.00000000
 Kinetic energy                       245.26312534
 One electron energy                 -334.73446451
 Two electron energy                   92.20244273
 Virial quotient                       -0.98886460
 Correlation energy                    -0.32374448
 !MRCI STATE 4.2 Energy              -242.532021783871

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.54013266 (Davidson, fixed reference)
 Cluster corrected energies          -242.53975499 (Davidson, relaxed reference)
 Cluster corrected energies          -242.54013266 (Davidson, rotated reference)

 Cluster corrected energies          -242.53860883 (Pople, fixed reference)
 Cluster corrected energies          -242.53829772 (Pople, relaxed reference)
 Cluster corrected energies          -242.53860883 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.98659168 (fixed)   0.98826647 (relaxed)   0.98770405 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119839   -0.00056180   -0.28340202
 Singles      0.00875256   -0.03388676   -0.03582325
 Pairs        0.01510207   -0.00000319   -0.00477850
 Total        1.02505302   -0.03445176   -0.32400377
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.20827730
 Nuclear energy                         0.00000000
 Kinetic energy                       245.26310426
 One electron energy                 -334.73444368
 Two electron energy                   92.20242220
 Virial quotient                       -0.98886468
 Correlation energy                    -0.32374418
 !MRCI STATE 5.2 Energy              -242.532021477968

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.54013225 (Davidson, fixed reference)
 Cluster corrected energies          -242.53975464 (Davidson, relaxed reference)
 Cluster corrected energies          -242.54013225 (Davidson, rotated reference)

 Cluster corrected energies          -242.53860843 (Pople, fixed reference)
 Cluster corrected energies          -242.53829737 (Pople, relaxed reference)
 Cluster corrected energies          -242.53860843 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.98659169 (fixed)   0.98826646 (relaxed)   0.98770405 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119836   -0.00056180   -0.28340222
 Singles      0.00875258   -0.03388668   -0.03582317
 Pairs        0.01510207   -0.00000289   -0.00477821
 Total        1.02505302   -0.03445137   -0.32400360
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.20827729
 Nuclear energy                         0.00000000
 Kinetic energy                       245.26309347
 One electron energy                 -334.73443666
 Two electron energy                   92.20241536
 Virial quotient                       -0.98886472
 Correlation energy                    -0.32374401
 !MRCI STATE 6.2 Energy              -242.532021304551

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.54013207 (Davidson, fixed reference)
 Cluster corrected energies          -242.53975447 (Davidson, relaxed reference)
 Cluster corrected energies          -242.54013207 (Davidson, rotated reference)

 Cluster corrected energies          -242.53860826 (Pople, fixed reference)
 Cluster corrected energies          -242.53829720 (Pople, relaxed reference)
 Cluster corrected energies          -242.53860826 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     2531.18       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     11929.55  11913.08     10.91      0.60      4.58
 REAL TIME  *     12240.36 SEC
 DISK USED  *         2.53 GB (local),       76.28 GB (total)
 SF USED    *        26.78 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -242.68856404  AU                              
 SETTING HLSDIAG(2)     =      -242.68856402  AU                              
 SETTING HLSDIAG(3)     =      -242.68856399  AU                              
 SETTING HLSDIAG(4)     =      -242.54013266  AU                              
 SETTING HLSDIAG(5)     =      -242.54013225  AU                              
 SETTING HLSDIAG(6)     =      -242.54013207  AU                              


         HLSDIAG
    -242.6885640
    -242.6885640
    -242.6885640
    -242.5401327
    -242.5401322
    -242.5401321
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:      13.40 sec

 CPU time:     13.40 sec, REAL time:     14.05 sec


 SORTLS1 read   166536799. and wrote   166536799. SO integrals in   675 records. CPU time:      1.02 sec, REAL time:      2.17 sec
 SORTLS2 read   166536799. and wrote   166536799. SO integrals in    90 records. CPU time:      0.29 sec, REAL time:      0.64 sec

 FILE SIZES: FILE 1:    58.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    58.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -242.675009   -242.675009   -242.675009   -242.532022   -242.532021   -242.532021
 Replaced energies:   -242.688564   -242.688564   -242.688564   -242.540133   -242.540132   -242.540132



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -242.68856404

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      40.53       0.00
                           -0.00     -40.53       0.01      -0.00       0.00      15.85       0.00       0.00      -0.01       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.00      -0.01       0.00
                           40.53       0.00      -0.00     -15.85      -0.00      -0.00      -0.00      -0.00     -40.53      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.01       0.00       0.00       0.00     -40.53       0.01       0.00      15.85
                           -0.01       0.00       0.00       0.00      -0.00      -0.00       0.01      40.53       0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00   32576.92       0.00       0.00      -0.00      -0.00     -15.85      -0.00
                            0.00      15.85      -0.00       0.00      -0.00      -6.18      -0.00       0.00      -0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   32577.01       0.00      15.85      -0.00      -0.00      -6.18
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     -15.85       0.01      -0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   32577.05      -0.00       0.00      -0.00       0.00
                          -15.85       0.00       0.00       6.18       0.00      -0.00       0.00       0.01      15.85       0.00

    7   1.2  0.5 -0.5       0.00      -0.01     -40.53      -0.00      15.85      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01       0.00       0.00      -0.00       0.00      40.53      -0.01       0.00

    8   2.2  0.5 -0.5       0.01       0.00       0.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -40.53      -0.00      15.85      -0.01     -40.53      -0.00       0.00      15.85

    9   3.2  0.5 -0.5      40.53      -0.01       0.00     -15.85      -0.00      -0.00       0.00       0.00       0.01       0.00
                            0.01      40.53      -0.00       0.00      -0.01     -15.85       0.01      -0.00      -0.00      -0.00

   10   4.2  0.5 -0.5       0.00       0.00      15.85      -0.00      -6.18       0.00       0.00       0.00       0.00   32576.92
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     -15.85       0.00      -0.00

   11   5.2  0.5 -0.5     -15.85       0.00       0.00       6.18      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -15.85       0.01      -0.00      -0.00       6.18       0.00      -0.00      -0.00      -0.00

   12   6.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.01      15.85       0.00      -6.18       0.00      15.85      -0.00      -0.00      -6.18


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5     -15.85       0.00
                            0.00      -0.00

    2   2.2  0.5  0.5       0.00      -0.00
                           15.85      -0.01

    3   3.2  0.5  0.5       0.00       0.00
                           -0.01     -15.85

    4   4.2  0.5  0.5       6.18      -0.00
                            0.00      -0.00

    5   5.2  0.5  0.5      -0.00      -0.00
                            0.00       6.18

    6   6.2  0.5  0.5       0.00      -0.00
                           -6.18      -0.00

    7   1.2  0.5 -0.5       0.00       0.00
                           -0.00     -15.85

    8   2.2  0.5 -0.5       0.00       0.00
                            0.00       0.00

    9   3.2  0.5 -0.5       0.00       0.00
                            0.00       0.00

   10   4.2  0.5 -0.5       0.00       0.00
                            0.00       6.18

   11   5.2  0.5 -0.5   32577.01       0.00
                            0.00       0.00

   12   6.2  0.5 -0.5       0.00   32577.05
                           -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -242.68893346    -0.00036942      -81.08      0.00000000        0.00      0.0000
     2  -242.68893346    -0.00036942      -81.08      0.00000000        0.00      0.0000
     3  -242.68837941     0.00018463       40.52      0.00055405      121.60      0.0151
     4  -242.68837941     0.00018463       40.52      0.00055405      121.60      0.0151
     5  -242.68837939     0.00018465       40.53      0.00055407      121.61      0.0151
     6  -242.68837939     0.00018465       40.53      0.00055407      121.61      0.0151
     7  -242.54018847     0.14837557    32564.67      0.14874499    32645.75      4.0476
     8  -242.54018847     0.14837557    32564.67      0.14874499    32645.75      4.0476
     9  -242.54010433     0.14845971    32583.14      0.14882913    32664.22      4.0498
    10  -242.54010433     0.14845971    32583.14      0.14882913    32664.22      4.0498
    11  -242.54010398     0.14846006    32583.22      0.14882948    32664.30      4.0499
    12  -242.54010398     0.14846006    32583.22      0.14882948    32664.30      4.0499


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.576605032  -0.029818587   0.785819822  -0.020255712   0.220440917   0.010942198   0.000559455   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000007628   0.000147506   0.000003646  -0.000160430  -0.000018023  -0.000195719   0.000000001   0.000000134
                        -0.576578602   0.029865013   0.584022698  -0.015112644  -0.569699321  -0.028220890  -0.000561476  -0.000000069

    3    3.2  0.5  0.5   0.029360912   0.567754932  -0.005036383  -0.195159658  -0.037573785   0.757379009   0.000000000   0.000458534
                         0.005342257   0.100326742  -0.001366685  -0.051490012   0.010923300  -0.225339717   0.000000150  -0.000322969

    4    4.2  0.5  0.5  -0.000559845   0.000028978   0.000382751  -0.000009861   0.000107366   0.000005312   0.579661886  -0.000022767
                        -0.000000087   0.000000009  -0.000000044   0.000000002   0.000000043   0.000000007   0.000091035   0.000016034

    5    5.2  0.5  0.5  -0.000028538  -0.000551320  -0.000002433  -0.000095004  -0.000018294   0.000368851   0.000027719   0.471557206
                        -0.000004969  -0.000097434  -0.000000554  -0.000025068   0.000005211  -0.000109748  -0.000071843  -0.332142438

    6    6.2  0.5  0.5  -0.000000084   0.000000077   0.000000063  -0.000000043   0.000000015  -0.000000239   0.000090399  -0.000046351
                         0.000559841  -0.000028960   0.000284414  -0.000007350  -0.000277481  -0.000013702  -0.575592155   0.000058698

    7    1.2  0.5 -0.5   0.029362830   0.567792020   0.019584533   0.759781465   0.010488236  -0.211295419   0.000000000   0.000457433
                         0.005193489   0.100427017   0.005171066   0.200611363  -0.003119072   0.062836642   0.000000000  -0.000322094

    8    2.2  0.5 -0.5  -0.005346826  -0.100414903   0.004013210   0.149098250   0.007856760  -0.162375410  -0.000000149   0.000323258
                         0.029382856   0.567767321  -0.014570926  -0.564670013   0.027105872  -0.546069174   0.000000021   0.000459085

    9    3.2  0.5 -0.5  -0.576551047   0.029842609   0.201837836  -0.005218401   0.790190447   0.039128635  -0.000560858  -0.000000086
                        -0.000092283  -0.000146829   0.000038289   0.000035665   0.000100236  -0.000240278  -0.000000082  -0.000000122

   10    4.2  0.5 -0.5  -0.000028537  -0.000551303   0.000009534   0.000370057   0.000005089  -0.000102900   0.000027846   0.473903153
                        -0.000005038  -0.000097422   0.000002520   0.000097755  -0.000001521   0.000030646   0.000000003  -0.333801905

   11    5.2  0.5 -0.5   0.000559863  -0.000028967   0.000098255  -0.000002494   0.000384832   0.000019020  -0.576788341   0.000064026
                         0.000000078  -0.000000078   0.000000016  -0.000000085   0.000000054  -0.000000220  -0.000084814   0.000042783

   12    6.2  0.5 -0.5   0.000004968   0.000097425   0.000001917   0.000072668   0.000003677  -0.000079110   0.000071693   0.331458327
                        -0.000028531  -0.000551299  -0.000007096  -0.000274974   0.000013202  -0.000265965   0.000021309   0.470575939


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.000394761   0.000000000  -0.000059615   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000054   0.000000065  -0.000000352   0.000000185
                        -0.000144130   0.000000044  -0.000369345   0.000000035

    3    3.2  0.5  0.5   0.000000012   0.000192735  -0.000000075   0.000244060
                         0.000000026   0.000153098   0.000000182   0.000194096

    4    4.2  0.5  0.5   0.805940153   0.000018859   0.120216758   0.000023618
                        -0.000046063   0.000014985  -0.000116537   0.000018750

    5    5.2  0.5  0.5   0.000015333  -0.399365768   0.000159420  -0.499427492
                         0.000063156  -0.317234868  -0.000077011  -0.397184957

    6    6.2  0.5  0.5   0.000016134   0.000022007   0.000744202  -0.000185219
                         0.300548242   0.000033079   0.760502033   0.000084986

    7    1.2  0.5 -0.5   0.000000000  -0.000309124  -0.000000000   0.000046695
                        -0.000000000  -0.000245517  -0.000000000   0.000037060

    8    2.2  0.5 -0.5  -0.000000078  -0.000089598   0.000000167   0.000229885
                        -0.000000006   0.000112897   0.000000088  -0.000289083

    9    3.2  0.5 -0.5  -0.000246142   0.000000025   0.000311831  -0.000000054
                         0.000000017  -0.000000013  -0.000000309   0.000000189

   10    4.2  0.5 -0.5  -0.000024087   0.631076114   0.000030156  -0.094091348
                         0.000000005   0.501280830  -0.000000004  -0.074825803

   11    5.2  0.5 -0.5   0.510030369   0.000051286  -0.638109169  -0.000076996
                        -0.000035285  -0.000039919   0.000631925  -0.000159427

   12    6.2  0.5 -0.5  -0.000037806   0.186934989  -0.000092246  -0.473360232
                         0.000012216  -0.235339235  -0.000181712   0.595225996


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  33.247%   0.089%  61.751%   0.041%   4.859%   0.012%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  33.244%   0.089%  34.108%   0.023%  32.456%   0.080%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.089%  33.241%   0.003%   4.074%   0.153%  62.440%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.601%   0.000%  64.954%   0.000%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.268%   0.000%  26.013%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.131%   0.000%   9.033%   0.000%
    7    1.2  0.5 -0.5   0.089%  33.247%   0.041%  61.751%   0.012%   4.859%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5   0.089%  33.244%   0.023%  34.108%   0.080%  32.456%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5  33.241%   0.089%   4.074%   0.003%  62.440%   0.153%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.601%   0.000%  64.954%
   11    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.268%   0.000%  26.013%   0.000%
   12    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.131%   0.000%   9.033%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%
    4    4.2  0.5  0.5   1.445%   0.000%
    5    5.2  0.5  0.5   0.000%  40.718%
    6    6.2  0.5  0.5  57.836%   0.000%
    7    1.2  0.5 -0.5   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   1.445%
   11    5.2  0.5 -0.5  40.718%   0.000%
   12    6.2  0.5 -0.5   0.000%  57.836%


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
              1      24       55.90       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     2531.18       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     56525.58  44596.02  11913.08     10.91      0.60      4.58
 REAL TIME  *     57309.03 SEC
 DISK USED  *         2.53 GB (local),       81.04 GB (total)
 SF USED    *        26.78 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -242.540103975159

              CI           MULTI         RHF-SCF
   -242.53202130   -242.20801771   -242.31256557
 **********************************************************************************************************************************
 Molpro calculation terminated
