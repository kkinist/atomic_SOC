
 Working directory              : /wrk/irikura/molpro.jLtnAAMYiZ/
 Global scratch directory       : /wrk/irikura/molpro.jLtnAAMYiZ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.jLtnAAMYiZ/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Al SO-CI
                                                                                 ! Active space (9/11) is 2p3s3p + 4s4p
 memory,2000,M;
 
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
     wf,sym=2,spin=3;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,3; save,5203.2}
 hlsdiag(7) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Al SO-                                                                        
  64 bit mpp version                                                                     DATE: 27-Feb-24          TIME: 10:07:58  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  60000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


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

     Node minimum: 5.243 MB, node maximum: 10.486 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4703088.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4703088      RECORD LENGTH: 524288

 Memory used in sort:       5.26 MW

 SORT1 READ   241177324. AND WROTE      823313. INTEGRALS IN      3 RECORDS. CPU TIME:     1.49 SEC, REAL TIME:     1.54 SEC
 SORT2 READ    24788184. AND WROTE   141159946. INTEGRALS IN    960 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.11 SEC

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
 CPU TIMES  *         4.31      3.98
 REAL TIME  *         5.71 SEC
 DISK USED  *        30.46 MB (local),        1.38 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   4   3
 Initial beta  occupancy:   4   2

 NELEC=   13   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -192.23621335    -192.23621335     0.00D+00     0.90D-01     0     0       0.03      0.06    start
   2     -233.56686316     -41.33064981     0.22D+00     0.13D+00     1     0       0.04      0.10    diag2
   3     -240.13694809      -6.57008494     0.22D+00     0.45D-01     2     0       0.03      0.13    diag2
   4     -242.17107273      -2.03412463     0.87D-01     0.40D-01     3     0       0.04      0.17    diag2
   5     -242.23079642      -0.05972369     0.60D-02     0.10D-01     4     0       0.04      0.21    diag2
   6     -242.26159308      -0.03079665     0.18D-02     0.39D-02     5     0       0.04      0.25    diag2
   7     -242.29087839      -0.02928531     0.12D-02     0.30D-02     6     0       0.03      0.28    diag2
   8     -242.31105447      -0.02017608     0.97D-03     0.44D-02     7     0       0.04      0.32    fixocc
   9     -242.31232044      -0.00126597     0.44D-03     0.13D-02     8     0       0.04      0.36    diag2
  10     -242.31252378      -0.00020333     0.14D-03     0.40D-03     9     0       0.04      0.40    diag2/orth
  11     -242.31256449      -0.00004072     0.64D-04     0.17D-03     9     0       0.04      0.44    diag2
  12     -242.31256554      -0.00000105     0.89D-05     0.31D-04     9     0       0.03      0.47    diag2
  13     -242.31256556      -0.00000002     0.16D-05     0.42D-05     9     0       0.04      0.51    diag2
  14     -242.31256557      -0.00000000     0.16D-06     0.57D-06     9     0       0.04      0.55    diag2
  15     -242.31256557      -0.00000000     0.26D-07     0.39D-07     0     0       0.04      0.59    diag

 Final alpha occupancy:   3   4
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -242.312565565068
  RHF One-electron energy            -337.229621103714
  RHF Two-electron energy              94.917055538646
  RHF Kinetic energy                  245.060115165873
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.988788262835

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.62021     1  1  s    0.97700
    2.1     2.00000    -4.92852     1  2  s    1.02196
    3.1     2.00000    -0.39445     1  2  s   -0.25753    1  9  s    0.34280    1 10  s    0.61347
    1.2     2.00000    -3.21678     1  1  pz   0.99891
    2.2     2.00000    -3.21678     1  1  py   0.99890
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
 CPU TIMES  *         4.91      0.60      3.98
 REAL TIME  *         6.40 SEC
 DISK USED  *        34.60 MB (local),        1.50 GB (total)
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

 State symmetry 2

 Number of active electrons:   9    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             3
 Number of CSFs:           28656   (37674 determinants, 76230 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.400D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.183D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.118D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.203D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 3 4 5 1   5 3 4 6 2 711 81410  15 91312 6 2 4 3 5 1   711 8141015 91312 6
                                        2 4 3 5 111 7 81410  15 91312 2 6 4 3 5 1  11 7 8141015 91312 2   6 4 3 5 2 6 4 3 5 1
                                       11 714 81510 91312 2   6 4 3 5 1 2 6 4 3 5   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.755D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.108D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.639D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.488D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.148D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.131D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.205D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.819D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.106D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 3 2 1   3 2 6 5 8 410 9 7 6   5 8 410 9 7 1 3 2 5   6 8 410 9 712191421
                                       16172015131811 3 2 1   5 6 8 410 9 7121914  2116172015131811 5 6   8 410 9 7 3 2 11912
                                       211416171520131811 5   6 8 410 9 7 3 2 1 5   6 8 410 9 7 3 2 1 3   2 1 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1350  ( 4 closed/active, 196 closed/virtual, 0 active/active, 1150 active/virtual )
 Total number of variables:    572508
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   38    0   -242.17052354    -242.20655813   -0.03603459    0.07423450 0.00002404 0.00012112  0.89E+00      7.79
   2    7   32    0   -242.20548825    -242.20553712   -0.00004887    0.00542183 0.00000162 0.00000546  0.26E-01     14.91
   3    5   19    0   -242.20553719    -242.20553719   -0.00000000    0.00001318 0.00000000 0.00000011  0.67E-04     19.92
   4    2    4    0   -242.20553719    -242.20553719    0.00000000    0.00000001 0.00000000 0.00000000  0.22E-08     21.26

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.84E-09)
                       Final energy:   -242.20553719
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -242.329783346704
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.26277521
 One electron energy                          -337.55809018
 Two electron energy                            95.22830683
 Virial ratio                                    1.98804143
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -242.329783346704
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.26277521
 One electron energy                          -337.55809018
 Two electron energy                            95.22830683
 Virial ratio                                    1.98804143
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -242.329783346704
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.26277521
 One electron energy                          -337.55809018
 Two electron energy                            95.22830683
 Virial ratio                                    1.98804143
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -242.207464520375
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.88180657
 One electron energy                          -334.98935447
 Two electron energy                            92.78188995
 Virial ratio                                    1.98907905
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -242.207464520374
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.88180657
 One electron energy                          -334.98935447
 Two electron energy                            92.78188995
 Virial ratio                                    1.98907905
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -242.207464520374
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.88180657
 One electron energy                          -334.98935447
 Two electron energy                            92.78188995
 Virial ratio                                    1.98907905
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -242.079363715273
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.71865119
 One electron energy                          -334.54918995
 Two electron energy                            92.46982623
 Virial ratio                                    1.98921501
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -242.079363715272
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.71865119
 One electron energy                          -334.54918995
 Two electron energy                            92.46982623
 Virial ratio                                    1.98921501
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -242.079363715272
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.71865119
 One electron energy                          -334.54918995
 Two electron energy                            92.46982623
 Virial ratio                                    1.98921501
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.000000000000
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>    -0.000000000000
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000000000000
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.997743179520
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.996394109269
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.005862711211
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.200413138289
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.799586861711
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.213615397109
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.786384602891
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.388180582526
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.611819482567
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999934907
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.799586861711
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.200413138289
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.786384602891
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.213615397109
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.614076237954
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.391786408164
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.994137353882
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     2.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     2.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 4 6 3 5 1   5 4 3 6 2 812131014  15 7 911 4 5 3 6 2 1   812 71013 9111415 4
                                        5 3 6 2 1 911 812 7  15141013 2 3 5 4 6 1   911 812 710131415 2   5 3 4 6 2 4 6 5 3 1
                                        911 712 814151013 2   6 5 4 3 1 2 4 3 6 5   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 2   3 1 6 810 4 5 9 7 6   810 9 7 4 5 2 3 110   8 4 5 9 7 614161913
                                       21201811121715 2 1 3  10 8 4 5 9 7 6132116  1411121920181715 9 7  10 8 4 5 6 3 1 21321
                                       161418201715191112 8  10 4 5 7 9 6 3 1 210   8 4 5 7 9 6 2 3 1 1   2 3 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.74231     1  1  s    0.97701
    2.1     2.00000    -5.04726     1  2  s    1.02192
    3.1     1.59351    -0.42284     1  2  s   -0.26602    1  9  s    0.39614    1 10  s    0.65568
    4.1     0.33717     0.00963     1  9  s   -0.27472    1 10  s   -0.47317    1 12  s    1.26323
    1.2     1.99992    -3.33683     1  1  pz   1.00022
    2.2     1.99992    -3.33683     1  1  py   1.00022
    3.2     1.99992    -3.33683     1  1  px   1.00022
    4.2     0.24544    -0.03884     1  8  pz   0.42785    1  9  pz   0.57692
    5.2     0.24544    -0.03884     1  8  py   0.42785    1  9  py   0.57692
    6.2     0.24544    -0.03884     1  8  px   0.42785    1  9  px   0.57692
    7.2     0.11107     0.02478     1  9  px  -0.26078    1 11  px   0.97527
    8.2     0.11107     0.02478     1  9  py  -0.26078    1 11  py   0.97527
    9.2     0.11107     0.02478     1  9  pz  -0.26078    1 11  pz   0.97527
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 22200a000      0.95756128      0.00000000     -0.00000000     -0.18357701     -0.00000000      0.00000000
 20 222000a00      0.18478687      0.00000000     -0.00000000      0.94860336      0.00000000     -0.00000000
 20 222a00000     -0.00000000      0.42867649      0.85624766     -0.00000000      0.08484663     -0.16279303
 20 2220a0000     -0.00000000      0.85624766     -0.42867649      0.00000000     -0.16279303     -0.08484663
 20 2220000a0     -0.00000000      0.16523572     -0.08272451     -0.00000000      0.84120561      0.43843068
 20 22200000a     -0.00000000      0.08272451      0.16523572      0.00000000     -0.43843068      0.84120561
 00 22220a000     -0.14437874     -0.00000000      0.00000000      0.03004098      0.00000000     -0.00000000
 00 22202a000     -0.14437874     -0.00000000      0.00000000      0.03004098      0.00000000     -0.00000000
 00 222200a00     -0.02536358     -0.00000000      0.00000000     -0.13426462     -0.00000000      0.00000000
 00 222020a00     -0.02536358     -0.00000000      0.00000000     -0.13426462     -0.00000000      0.00000000
 00 2220a2000      0.00000000     -0.12910292      0.06463479     -0.00000000      0.02663984      0.01388451
 00 222a02000      0.00000000     -0.06463479     -0.12910292      0.00000000     -0.01388451      0.02663984
 00 2222a0000      0.00000000     -0.12910292      0.06463479     -0.00000000      0.02663984      0.01388451
 00 222a20000      0.00000000     -0.06463479     -0.12910292      0.00000000     -0.01388451      0.02663984
 00 222002a00     -0.03506006     -0.00000000      0.00000000     -0.12862566     -0.00000000      0.00000000
 00 2222000a0      0.00000000     -0.02268001      0.01135465      0.00000000     -0.11906362     -0.06205515
 00 22202000a      0.00000000     -0.01135465     -0.02268001     -0.00000000      0.06205515     -0.11906362
 00 22200200a      0.00000000     -0.01135465     -0.02268001     -0.00000000      0.06205515     -0.11906362
 00 2220020a0      0.00000000     -0.02268001      0.01135465      0.00000000     -0.11906362     -0.06205515
 00 22220000a      0.00000000     -0.01569552     -0.03135057     -0.00000000      0.05944891     -0.11406309
 00 2220200a0      0.00000000     -0.03135057      0.01569552      0.00000000     -0.11406309     -0.05944891
 aa 22200b000     -0.01327423     -0.00000000      0.00000000      0.06273410      0.00000000     -0.00000000
 ab 22200a000      0.04611471      0.00000000     -0.00000000     -0.06028587     -0.00000000      0.00000000
 aa 2220b0000      0.00000000     -0.01186976      0.00594254     -0.00000000      0.05563155      0.02899479
 aa 222b00000      0.00000000     -0.00594254     -0.01186976      0.00000000     -0.02899479      0.05563155
 ab 222a00000     -0.00000000      0.02064441      0.04123560     -0.00000000      0.02786325     -0.05346050
 ab 2220a0000     -0.00000000      0.04123560     -0.02064441     -0.00000000     -0.05346050     -0.02786325
 
 Energy:        -242.32978335   -242.32978335   -242.32978335   -242.20746452   -242.20746452   -242.20746452
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 aa 22200a000      0.04740074      0.05991601      0.99485504
 aa 2220a0000      0.78045569     -0.62166081      0.00025457
 aa 222a00000      0.61985111      0.77815244     -0.07639826
 
 Energy:        -242.07936372   -242.07936372   -242.07936372
 


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
 CPU TIMES  *        16.33     11.42      0.60      3.98
 REAL TIME  *        29.72 SEC
 DISK USED  *        57.73 MB (local),        2.18 GB (total)
 SF USED    *        92.08 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -242.3297833   2.0
    -242.3297833   2.0
    -242.3297833   2.0
    -242.2074645   2.0
    -242.2074645   2.0
    -242.2074645   2.0
    -242.0793637   2.0
    -242.0793637   2.0
    -242.0793637   2.0
                                                  


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

 Integral transformation finished. Total CPU:   0.63 sec, npass=  1  Memory used:   2.25 MW


 Number of p-space configurations:  20

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -242.32978335
     2      -242.32978335
     3      -242.32978335
     4      -242.20746452
     5      -242.20746452
     6      -242.20746452

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1306D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1104D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2091D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2108D-06

 Number of blocks in overlap matrix:    14   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:     804
 Number of N-1 electron functions:  453024

 Number of internal configurations:               170370
 Number of singly external configurations:      46213344
 Number of doubly external configurations:       8372994
 Total number of contracted configurations:     54756708
 Total number of uncontracted configurations: 4451780082

 Diagonal Coupling coefficients finished.               Storage:******** words, CPU-Time:    550.79 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2223138 words, CPU-time:      1.36 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -242.32978335     0.00000000    -0.35665857  0.39D-01  0.15D-01   580.67
    1     2     2     1.00000000     0.00000000  -242.32978335    -0.00000000    -0.35672671  0.39D-01  0.15D-01   580.67
    1     3     3     1.00000000     0.00000000  -242.32978335    -0.00000000    -0.35672661  0.39D-01  0.15D-01   580.67
    1     4     4     1.00000000     0.00000000  -242.20746452     0.00000000    -0.33311526  0.14D-01  0.15D-01   580.67
    1     5     5     1.00000000     0.00000000  -242.20746452    -0.00000000    -0.33310836  0.14D-01  0.15D-01   580.67
    1     6     6     1.00000000     0.00000000  -242.20746452     0.00000000    -0.33311591  0.14D-01  0.15D-01   580.67
    2     1     1     1.04847508    -0.33566525  -242.66544860    -0.33566525    -0.00511714  0.16D-02  0.26D-03  1371.65
    2     2     2     1.04862733    -0.33562208  -242.66540543    -0.33562208    -0.00515875  0.17D-02  0.26D-03  1371.65
    2     3     3     1.04862769    -0.33562203  -242.66540537    -0.33562203    -0.00515884  0.17D-02  0.26D-03  1371.65
    2     4     4     1.02498403    -0.32022625  -242.52769077    -0.32022625    -0.00285490  0.62D-03  0.14D-03  1371.65
    2     5     5     1.02501273    -0.32021986  -242.52768438    -0.32021986    -0.00286180  0.63D-03  0.14D-03  1371.65
    2     6     6     1.02501271    -0.32021974  -242.52768426    -0.32021974    -0.00286185  0.63D-03  0.14D-03  1371.65
    3     1     1     1.03772243    -0.34151606  -242.67129941    -0.00585081    -0.00079007  0.32D-04  0.79D-04  2166.04
    3     2     2     1.03771463    -0.34151238  -242.67129572    -0.00589030    -0.00079086  0.32D-04  0.80D-04  2166.04
    3     3     3     1.03771503    -0.34151234  -242.67129569    -0.00589031    -0.00079089  0.32D-04  0.80D-04  2166.04
    3     4     4     1.02320345    -0.32339847  -242.53086299    -0.00317221    -0.00034305  0.13D-04  0.33D-04  2166.04
    3     5     5     1.02320264    -0.32339794  -242.53086246    -0.00317808    -0.00034323  0.13D-04  0.33D-04  2166.04
    3     6     6     1.02320273    -0.32339786  -242.53086238    -0.00317812    -0.00034329  0.13D-04  0.33D-04  2166.04
    4     1     1     1.03809345    -0.34328628  -242.67306963    -0.00177022    -0.00041643  0.41D-04  0.33D-04  2960.40
    4     2     2     1.03808548    -0.34328355  -242.67306689    -0.00177117    -0.00041753  0.42D-04  0.33D-04  2960.40
    4     3     3     1.03808509    -0.34328338  -242.67306672    -0.00177104    -0.00041764  0.42D-04  0.33D-04  2960.40
    4     4     4     1.02401587    -0.32405249  -242.53151701    -0.00065402    -0.00016235  0.10D-04  0.13D-04  2960.40
    4     5     5     1.02401389    -0.32405204  -242.53151656    -0.00065410    -0.00016253  0.10D-04  0.13D-04  2960.40
    4     6     6     1.02401337    -0.32405188  -242.53151640    -0.00065403    -0.00016261  0.10D-04  0.13D-04  2960.40
    5     1     1     1.04060418    -0.34388081  -242.67366416    -0.00059452    -0.00012156  0.13D-04  0.94D-05  3753.42
    5     2     2     1.04061531    -0.34388026  -242.67366360    -0.00059671    -0.00012189  0.13D-04  0.94D-05  3753.42
    5     3     3     1.04061510    -0.34388015  -242.67366350    -0.00059678    -0.00012196  0.13D-04  0.94D-05  3753.42
    5     4     4     1.02446812    -0.32430123  -242.53176575    -0.00024874    -0.00005199  0.36D-05  0.37D-05  3753.42
    5     5     5     1.02446965    -0.32430106  -242.53176558    -0.00024902    -0.00005207  0.37D-05  0.37D-05  3753.42
    5     6     6     1.02446954    -0.32430096  -242.53176548    -0.00024907    -0.00005212  0.37D-05  0.37D-05  3753.42
    6     1     1     1.04010364    -0.34403288  -242.67381622    -0.00015207    -0.00003715  0.25D-05  0.33D-05  4547.56
    6     2     2     1.04010067    -0.34403267  -242.67381602    -0.00015241    -0.00003721  0.24D-05  0.33D-05  4547.56
    6     3     3     1.04010085    -0.34403261  -242.67381596    -0.00015246    -0.00003723  0.24D-05  0.33D-05  4547.56
    6     4     4     1.02428140    -0.32436663  -242.53183115    -0.00006540    -0.00001404  0.91D-06  0.12D-05  4547.56
    6     5     5     1.02428101    -0.32436655  -242.53183107    -0.00006548    -0.00001405  0.92D-06  0.12D-05  4547.56
    6     6     6     1.02428086    -0.32436648  -242.53183100    -0.00006553    -0.00001406  0.92D-06  0.12D-05  4547.56
    7     1     1     1.04038120    -0.34409449  -242.67387783    -0.00006161    -0.00002066  0.12D-05  0.17D-05  5345.74
    7     2     2     1.04037812    -0.34409435  -242.67387770    -0.00006168    -0.00002068  0.12D-05  0.17D-05  5345.74
    7     3     3     1.04037792    -0.34409432  -242.67387767    -0.00006171    -0.00002069  0.12D-05  0.17D-05  5345.74
    7     4     4     1.02441505    -0.32438895  -242.53185347    -0.00002232    -0.00000774  0.34D-06  0.66D-06  5345.74
    7     5     5     1.02441454    -0.32438889  -242.53185341    -0.00002234    -0.00000775  0.34D-06  0.66D-06  5345.74
    7     6     6     1.02441430    -0.32438884  -242.53185336    -0.00002236    -0.00000776  0.34D-06  0.66D-06  5345.74
    8     1     1     1.04076715    -0.34412430  -242.67390765    -0.00002982    -0.00000975  0.54D-06  0.85D-06  6141.56
    8     2     2     1.04076936    -0.34412424  -242.67390759    -0.00002989    -0.00000976  0.55D-06  0.85D-06  6141.56
    8     3     3     1.04076926    -0.34412422  -242.67390757    -0.00002990    -0.00000977  0.55D-06  0.86D-06  6141.56
    8     4     4     1.02452769    -0.32440016  -242.53186468    -0.00001121    -0.00000382  0.18D-06  0.32D-06  6141.56
    8     5     5     1.02452777    -0.32440011  -242.53186463    -0.00001122    -0.00000383  0.18D-06  0.32D-06  6141.56
    8     6     6     1.02452761    -0.32440007  -242.53186459    -0.00001123    -0.00000383  0.18D-06  0.32D-06  6141.56
    9     1     1     1.04074049    -0.34413567  -242.67391902    -0.00001136    -0.00000372  0.16D-06  0.36D-06  6936.06
    9     2     2     1.04074056    -0.34413562  -242.67391897    -0.00001138    -0.00000372  0.16D-06  0.36D-06  6936.06
    9     3     3     1.04074065    -0.34413561  -242.67391895    -0.00001138    -0.00000373  0.16D-06  0.36D-06  6936.06
    9     4     4     1.02452388    -0.32440475  -242.53186928    -0.00000459    -0.00000138  0.70D-07  0.13D-06  6936.06
    9     5     5     1.02452374    -0.32440471  -242.53186923    -0.00000460    -0.00000138  0.70D-07  0.13D-06  6936.06
    9     6     6     1.02452361    -0.32440468  -242.53186920    -0.00000460    -0.00000138  0.70D-07  0.13D-06  6936.06
   10     1     1     1.04080355    -0.34414110  -242.67392445    -0.00000543    -0.00000217  0.77D-07  0.20D-06  7727.76
   10     2     2     1.04080259    -0.34414106  -242.67392441    -0.00000544    -0.00000217  0.77D-07  0.20D-06  7727.76
   10     3     3     1.04080256    -0.34414105  -242.67392439    -0.00000544    -0.00000217  0.77D-07  0.20D-06  7727.76
   10     4     4     1.02455136    -0.32440675  -242.53187127    -0.00000199    -0.00000081  0.26D-07  0.75D-07  7727.76
   10     5     5     1.02455118    -0.32440671  -242.53187123    -0.00000200    -0.00000081  0.26D-07  0.75D-07  7727.76
   10     6     6     1.02455104    -0.32440667  -242.53187120    -0.00000200    -0.00000082  0.26D-07  0.76D-07  7727.76
   11     1     1     1.04088847    -0.34414416  -242.67392751    -0.00000306    -0.00000119  0.34D-07  0.11D-06  8520.34
   11     2     2     1.04088875    -0.34414413  -242.67392747    -0.00000307    -0.00000119  0.35D-07  0.11D-06  8520.34
   11     3     3     1.04088875    -0.34414411  -242.67392746    -0.00000307    -0.00000119  0.35D-07  0.11D-06  8520.34
   11     4     4     1.02457548    -0.32440791  -242.53187243    -0.00000116    -0.00000047  0.16D-07  0.42D-07  8520.34
   11     5     5     1.02457541    -0.32440787  -242.53187239    -0.00000116    -0.00000047  0.16D-07  0.42D-07  8520.34
   11     6     6     1.02457528    -0.32440784  -242.53187236    -0.00000116    -0.00000047  0.16D-07  0.42D-07  8520.34
   12     1     1     1.04090138    -0.34414550  -242.67392885    -0.00000134    -0.00000049  0.11D-07  0.50D-07  9318.76
   12     2     2     1.04090155    -0.34414547  -242.67392881    -0.00000134    -0.00000049  0.11D-07  0.50D-07  9318.76
   12     3     3     1.04090161    -0.34414546  -242.67392880    -0.00000134    -0.00000049  0.11D-07  0.50D-07  9318.76
   12     4     4     1.02458105    -0.32440846  -242.53187298    -0.00000055    -0.00000019  0.63D-08  0.19D-07  9318.76
   12     5     5     1.02458094    -0.32440842  -242.53187294    -0.00000055    -0.00000019  0.64D-08  0.19D-07  9318.76
   12     6     6     1.02458083    -0.32440839  -242.53187291    -0.00000055    -0.00000019  0.64D-08  0.19D-07  9318.76
   13     1     1     1.04092455    -0.34414618  -242.67392953    -0.00000068    -0.00000030  0.68D-08  0.30D-07 10112.65
   13     2     2     1.04092438    -0.34414614  -242.67392949    -0.00000068    -0.00000030  0.68D-08  0.30D-07 10112.65
   13     3     3     1.04092441    -0.34414613  -242.67392948    -0.00000068    -0.00000030  0.68D-08  0.30D-07 10112.65
   13     4     4     1.02459109    -0.32440872  -242.53187324    -0.00000026    -0.00000012  0.26D-08  0.12D-07 10112.65
   13     5     5     1.02459098    -0.32440868  -242.53187320    -0.00000026    -0.00000012  0.26D-08  0.12D-07 10112.65
   13     6     6     1.02459087    -0.32440865  -242.53187317    -0.00000026    -0.00000012  0.26D-08  0.12D-07 10112.65
   14     1     1     1.04094610    -0.34414659  -242.67392993    -0.00000041    -0.00000018  0.29D-08  0.18D-07 10904.27
   14     2     2     1.04094613    -0.34414655  -242.67392990    -0.00000041    -0.00000018  0.29D-08  0.18D-07 10904.27
   14     3     3     1.04094617    -0.34414654  -242.67392989    -0.00000041    -0.00000018  0.29D-08  0.18D-07 10904.27
   14     4     4     1.02459783    -0.32440888  -242.53187340    -0.00000017    -0.00000007  0.19D-08  0.72D-08 10904.27
   14     5     5     1.02459775    -0.32440885  -242.53187337    -0.00000017    -0.00000007  0.19D-08  0.72D-08 10904.27
   14     6     6     1.02459764    -0.32440882  -242.53187334    -0.00000017    -0.00000007  0.19D-08  0.72D-08 10904.27
   15     1     1     1.04095292    -0.34414678  -242.67393013    -0.00000020    -0.00000008  0.99D-09  0.82D-08 11565.69
   15     2     2     1.04095301    -0.34414675  -242.67393009    -0.00000020    -0.00000008  0.99D-09  0.82D-08 11565.69
   15     3     3     1.04095307    -0.34414674  -242.67393008    -0.00000020    -0.00000008  0.99D-09  0.82D-08 11565.69
   15     4     4     1.02459786    -0.32440888  -242.53187340    -0.00000000    -0.00000007  0.19D-08  0.72D-08 11565.69
   15     5     5     1.02459777    -0.32440885  -242.53187337    -0.00000000    -0.00000007  0.19D-08  0.72D-08 11565.69
   15     6     6     1.02459767    -0.32440882  -242.53187334    -0.00000000    -0.00000007  0.19D-08  0.73D-08 11565.69


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.8%   4.8%
 P   1.0%  35.1%  47.5%

 Initialization:   4.9%
 Other:            5.5%

 Total CPU:    11565.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2202220/0000          -0.0017142   0.9517784   0.0022127   0.0015271  -0.1283928  -0.0004684
 220222/00000           0.9516185   0.0016730   0.0175831  -0.1283947  -0.0015278   0.0001762
 22022200/000          -0.0175791  -0.0022440   0.9516176  -0.0001818   0.0004663  -0.1284005
 220222000/00          -0.0024349  -0.0003108   0.1318092   0.0013448  -0.0034498   0.9499900
 22022200000/           0.1318105   0.0002317   0.0024355   0.9499276   0.0113033  -0.0013036
 2202220000/0          -0.0002374   0.1318322   0.0003065  -0.0112985   0.9499229   0.0034655
 2002220/2000           0.0002344  -0.1301690  -0.0003026  -0.0002337   0.0196515   0.0000717
 2002222/0000           0.0002345  -0.1301689  -0.0003026  -0.0002337   0.0196470   0.0000717
 20022202/000           0.0024042   0.0003069  -0.1301477   0.0000278  -0.0000713   0.0196508
 20022220/000           0.0024042   0.0003069  -0.1301477   0.0000278  -0.0000713   0.0196508
 200222/02000          -0.1301464  -0.0002288  -0.0024047   0.0196491   0.0002338  -0.0000270
 200222/20000          -0.1301464  -0.0002288  -0.0024047   0.0196491   0.0002338  -0.0000270
 200222200/00           0.0003041   0.0000388  -0.0164635  -0.0001742   0.0004469  -0.1230762
 200222020/00           0.0003041   0.0000388  -0.0164635  -0.0001742   0.0004469  -0.1230762
 20022202000/          -0.0164634  -0.0000289  -0.0003042  -0.1230676  -0.0014644   0.0001689
 20022200200/          -0.0164634  -0.0000289  -0.0003042  -0.1230676  -0.0014644   0.0001689
 2002220020/0           0.0000296  -0.0164653  -0.0000383   0.0014638  -0.1230674  -0.0004490
 2002222000/0           0.0000296  -0.0164671  -0.0000383   0.0014638  -0.1230670  -0.0004490
 200222002/00           0.0004606   0.0000588  -0.0249349  -0.0001672   0.0004290  -0.1181462
 2002220200/0           0.0000449  -0.0249412  -0.0000580   0.0014051  -0.1181357  -0.0004310
 20022220000/          -0.0249390  -0.0000438  -0.0004608  -0.1181342  -0.0014057   0.0001621
 2//222\00000          -0.0103200  -0.0000180  -0.0001908   0.0723310   0.0008606  -0.0000993
 2//2220\0000           0.0000185  -0.0103223  -0.0000240  -0.0008602   0.0723224   0.0002639
 2//22200\000           0.0001907   0.0000244  -0.0103211   0.0001023  -0.0002626   0.0723185
 2/\222000/00           0.0003585   0.0000458  -0.0194066  -0.0001006   0.0002581  -0.0710818
 2/\22200000/          -0.0194202  -0.0000341  -0.0003588  -0.0710807  -0.0008458   0.0000975
 2/\2220000/0           0.0000350  -0.0194165  -0.0000451   0.0008454  -0.0710787  -0.0002593

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.978134   -0.001762   -0.018069    0.000940   -0.050879    0.000092
 2           0.001720    0.978298   -0.002306    0.000120   -0.000089   -0.050889
 3           0.018073    0.002274    0.978133   -0.050882   -0.000940   -0.000118
 4           0.056257   -0.000669    0.000080    0.001396    0.985934   -0.011727
 5           0.000669    0.056259   -0.000204   -0.003581    0.011732    0.985928
 6          -0.000077    0.000205    0.056264    0.985997   -0.001353    0.003597

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.979622    0.000000    0.000000    0.002472    0.000025   -0.000049
 2           0.000000    0.979622    0.000000   -0.000025    0.002473    0.000003
 3           0.000000    0.000000    0.979622    0.000049   -0.000003    0.002473
 4           0.002472   -0.000025    0.000049    0.987605    0.000000   -0.000000
 5           0.000025    0.002473   -0.000003    0.000000    0.987605   -0.000000
 6          -0.000049    0.000003    0.002473   -0.000000   -0.000000    0.987605


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97813414 (fixed)   0.98012650 (relaxed)   0.97962209 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00104079   -0.00010525   -0.29141213
 Singles      0.02222728   -0.04080858   -0.04650025
 Pairs        0.01876826   -0.00003436   -0.00623440
 Total        1.04203633   -0.04094819   -0.34414678
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.32942047
 Nuclear energy                         0.00000000
 Kinetic energy                       245.45214991
 One electron energy                 -337.17236834
 Two electron energy                   94.49843822
 Virial quotient                       -0.98868122
 Correlation energy                    -0.34450966
 !MRCI STATE 1.2 Energy              -242.673930126992

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.68841205 (Davidson, fixed reference)
 Cluster corrected energies          -242.68804264 (Davidson, relaxed reference)
 Cluster corrected energies          -242.68841205 (Davidson, rotated reference)

 Cluster corrected energies          -242.68581190 (Pople, fixed reference)
 Cluster corrected energies          -242.68550136 (Pople, relaxed reference)
 Cluster corrected energies          -242.68581190 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97829825 (fixed)   0.98012646 (relaxed)   0.97962203 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00104083   -0.00010525   -0.30975426
 Singles      0.02222736   -0.04080856   -0.04650021
 Pairs        0.01876827    0.01907886    0.01210773
 Total        1.04203647   -0.02183496   -0.34414675
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.32942045
 Nuclear energy                         0.00000000
 Kinetic energy                       245.45215234
 One electron energy                 -337.17237274
 Two electron energy                   94.49844264
 Virial quotient                       -0.98868121
 Correlation energy                    -0.34450964
 !MRCI STATE 2.2 Energy              -242.673930092184

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.68841206 (Davidson, fixed reference)
 Cluster corrected energies          -242.68804263 (Davidson, relaxed reference)
 Cluster corrected energies          -242.68841206 (Davidson, rotated reference)

 Cluster corrected energies          -242.68581190 (Pople, fixed reference)
 Cluster corrected energies          -242.68550135 (Pople, relaxed reference)
 Cluster corrected energies          -242.68581190 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.97813276 (fixed)   0.98012643 (relaxed)   0.97962198 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00104086   -0.00010525   -0.29148761
 Singles      0.02222742   -0.04080855   -0.04650020
 Pairs        0.01876828    0.00004435   -0.00615893
 Total        1.04203656   -0.04086945   -0.34414674
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.32942043
 Nuclear energy                         0.00000000
 Kinetic energy                       245.45215440
 One electron energy                 -337.17237714
 Two electron energy                   94.49844706
 Virial quotient                       -0.98868120
 Correlation energy                    -0.34450966
 !MRCI STATE 3.2 Energy              -242.673930083322

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.68841209 (Davidson, fixed reference)
 Cluster corrected energies          -242.68804265 (Davidson, relaxed reference)
 Cluster corrected energies          -242.68841209 (Davidson, rotated reference)

 Cluster corrected energies          -242.68581192 (Pople, fixed reference)
 Cluster corrected energies          -242.68550136 (Pople, relaxed reference)
 Cluster corrected energies          -242.68581192 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.98593352 (fixed)   0.98791866 (relaxed)   0.98760498 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00064496   -0.00009804   -0.29164047
 Singles      0.00887923   -0.02911426   -0.03120493
 Pairs        0.01573449    0.00350306   -0.00156348
 Total        1.02525868   -0.02570924   -0.32440888
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.20782740
 Nuclear energy                         0.00000000
 Kinetic energy                       245.24651184
 One electron energy                 -334.74107522
 Two electron energy                   92.20920182
 Virial quotient                       -0.98893098
 Correlation energy                    -0.32404600
 !MRCI STATE 4.2 Energy              -242.531873404412

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.54005838 (Davidson, fixed reference)
 Cluster corrected energies          -242.53984744 (Davidson, relaxed reference)
 Cluster corrected energies          -242.54005838 (Davidson, rotated reference)

 Cluster corrected energies          -242.53852145 (Pople, fixed reference)
 Cluster corrected energies          -242.53834758 (Pople, relaxed reference)
 Cluster corrected energies          -242.53852145 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.98592790 (fixed)   0.98791870 (relaxed)   0.98760502 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00064496   -0.00009805   -0.00095944
 Singles      0.00887917   -0.02911422   -0.03120488
 Pairs        0.01573446   -0.29452019   -0.29224452
 Total        1.02525860   -0.32373245   -0.32440885
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.20782742
 Nuclear energy                         0.00000000
 Kinetic energy                       245.24651593
 One electron energy                 -334.74107286
 Two electron energy                   92.20919950
 Virial quotient                       -0.98893096
 Correlation energy                    -0.32404595
 !MRCI STATE 5.2 Energy              -242.531873366279

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.54005831 (Davidson, fixed reference)
 Cluster corrected energies          -242.53984737 (Davidson, relaxed reference)
 Cluster corrected energies          -242.54005831 (Davidson, rotated reference)

 Cluster corrected energies          -242.53852139 (Pople, fixed reference)
 Cluster corrected energies          -242.53834752 (Pople, relaxed reference)
 Cluster corrected energies          -242.53852139 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.98599667 (fixed)   0.98791875 (relaxed)   0.98760507 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00064496   -0.00009805   -0.28717577
 Singles      0.00887910   -0.02911417   -0.03120483
 Pairs        0.01573444   -0.00107447   -0.00602821
 Total        1.02525849   -0.03028669   -0.32440882
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.20782744
 Nuclear energy                         0.00000000
 Kinetic energy                       245.24651874
 One electron energy                 -334.74106979
 Two electron energy                   92.20919645
 Virial quotient                       -0.98893095
 Correlation energy                    -0.32404590
 !MRCI STATE 6.2 Energy              -242.531873336301

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.54005825 (Davidson, fixed reference)
 Cluster corrected energies          -242.53984731 (Davidson, relaxed reference)
 Cluster corrected energies          -242.54005825 (Davidson, rotated reference)

 Cluster corrected energies          -242.53852133 (Pople, fixed reference)
 Cluster corrected energies          -242.53834746 (Pople, relaxed reference)
 Cluster corrected energies          -242.53852133 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     2531.96       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     12086.22  12069.88     11.42      0.60      3.98
 REAL TIME  *     12393.40 SEC
 DISK USED  *         2.53 GB (local),       76.30 GB (total)
 SF USED    *        26.78 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -242.68841205  AU                              
 SETTING HLSDIAG(2)     =      -242.68841206  AU                              
 SETTING HLSDIAG(3)     =      -242.68841209  AU                              
 SETTING HLSDIAG(4)     =      -242.54005838  AU                              
 SETTING HLSDIAG(5)     =      -242.54005831  AU                              
 SETTING HLSDIAG(6)     =      -242.54005825  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 13
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:     9043 conf    28656 CSFs
 N elec internal:    64032 conf   283140 CSFs
 N-1 el internal:    56226 conf   423450 CSFs
 N-2 el internal:    31534 conf   428106 CSFs

 Number of electrons in valence space:                     11
 Maximum number of open shell orbitals in reference space:  9
 Maximum number of open shell orbitals in internal spaces: 11


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:       11 (   2   9 )
 Number of external orbitals:     204 (  98 106 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  16

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -242.07936372
     2      -242.07936372
     3      -242.07936372

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2689D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2689D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2689D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 Number of blocks in overlap matrix:    33   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:     419
 Number of N-1 electron functions:  423450

 Number of internal configurations:               141057
 Number of singly external configurations:      43195644
 Number of doubly external configurations:       4363142
 Total number of contracted configurations:     47699843
 Total number of uncontracted configurations: 4487219175

 Diagonal Coupling coefficients finished.               Storage:86503349 words, CPU-Time:    120.13 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2218943 words, CPU-time:      0.72 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -242.07936372     0.00000000    -0.32548507  0.13D-01  0.14D-01   131.35
    1     2     2     1.00000000     0.00000000  -242.07936372    -0.00000000    -0.32574862  0.13D-01  0.14D-01   131.35
    1     3     3     1.00000000     0.00000000  -242.07936372    -0.00000000    -0.32574872  0.13D-01  0.14D-01   131.35
    2     1     1     1.02563637    -0.31528443  -242.39464814    -0.31528443    -0.00307354  0.38D-03  0.19D-03   367.62
    2     2     2     1.02563635    -0.31528440  -242.39464811    -0.31528440    -0.00307356  0.38D-03  0.19D-03   367.62
    2     3     3     1.02565416    -0.31527566  -242.39463937    -0.31527566    -0.00308020  0.39D-03  0.19D-03   367.62
    3     1     1     1.02416974    -0.31886765  -242.39823136    -0.00358322    -0.00035652  0.84D-05  0.45D-04   605.83
    3     2     2     1.02416944    -0.31886761  -242.39823133    -0.00358321    -0.00035590  0.83D-05  0.45D-04   605.83
    3     3     3     1.02416942    -0.31886761  -242.39823133    -0.00359195    -0.00035590  0.84D-05  0.45D-04   605.83
    4     1     1     1.02495380    -0.31952812  -242.39889183    -0.00066047    -0.00018611  0.64D-05  0.21D-04   845.34
    4     2     2     1.02495379    -0.31952811  -242.39889183    -0.00066050    -0.00018612  0.64D-05  0.21D-04   845.34
    4     3     3     1.02494903    -0.31952702  -242.39889073    -0.00065941    -0.00018627  0.63D-05  0.21D-04   845.34
    5     1     1     1.02558565    -0.31982606  -242.39918978    -0.00029795    -0.00008083  0.25D-05  0.75D-05  1083.21
    5     2     2     1.02558567    -0.31982606  -242.39918978    -0.00029795    -0.00008083  0.25D-05  0.75D-05  1083.21
    5     3     3     1.02558611    -0.31982574  -242.39918946    -0.00029872    -0.00008101  0.26D-05  0.75D-05  1083.21
    6     1     1     1.02560962    -0.31992688  -242.39929060    -0.00010082    -0.00002399  0.60D-06  0.27D-05  1322.58
    6     2     2     1.02560962    -0.31992688  -242.39929060    -0.00010082    -0.00002399  0.60D-06  0.27D-05  1322.58
    6     3     3     1.02560925    -0.31992675  -242.39929047    -0.00010101    -0.00002403  0.61D-06  0.27D-05  1322.58
    7     1     1     1.02582797    -0.31996393  -242.39932765    -0.00003705    -0.00001406  0.40D-06  0.16D-05  1561.60
    7     2     2     1.02582795    -0.31996393  -242.39932765    -0.00003705    -0.00001406  0.40D-06  0.16D-05  1561.60
    7     3     3     1.02582711    -0.31996383  -242.39932754    -0.00003708    -0.00001409  0.40D-06  0.16D-05  1561.60
    8     1     1     1.02597658    -0.31998490  -242.39934861    -0.00002097    -0.00000871  0.12D-06  0.96D-06  1799.94
    8     2     2     1.02597658    -0.31998490  -242.39934861    -0.00002097    -0.00000871  0.12D-06  0.96D-06  1799.94
    8     3     3     1.02597647    -0.31998484  -242.39934855    -0.00002101    -0.00000873  0.12D-06  0.97D-06  1799.94
    9     1     1     1.02602659    -0.31999511  -242.39935883    -0.00001021    -0.00000350  0.71D-07  0.44D-06  2038.30
    9     2     2     1.02602659    -0.31999511  -242.39935883    -0.00001021    -0.00000350  0.71D-07  0.44D-06  2038.30
    9     3     3     1.02602631    -0.31999507  -242.39935879    -0.00001024    -0.00000351  0.71D-07  0.44D-06  2038.30
   10     1     1     1.02609949    -0.31999973  -242.39936345    -0.00000462    -0.00000204  0.34D-07  0.26D-06  2275.96
   10     2     2     1.02609949    -0.31999973  -242.39936345    -0.00000462    -0.00000204  0.34D-07  0.26D-06  2275.96
   10     3     3     1.02609921    -0.31999970  -242.39936342    -0.00000463    -0.00000204  0.33D-07  0.26D-06  2275.96
   11     1     1     1.02615073    -0.32000267  -242.39936639    -0.00000294    -0.00000139  0.17D-07  0.16D-06  2513.11
   11     2     2     1.02615073    -0.32000267  -242.39936639    -0.00000294    -0.00000139  0.17D-07  0.16D-06  2513.11
   11     3     3     1.02615067    -0.32000265  -242.39936636    -0.00000294    -0.00000140  0.17D-07  0.16D-06  2513.11
   12     1     1     1.02617434    -0.32000425  -242.39936797    -0.00000158    -0.00000062  0.74D-08  0.84D-07  2750.83
   12     2     2     1.02617434    -0.32000425  -242.39936797    -0.00000158    -0.00000062  0.74D-08  0.84D-07  2750.83
   12     3     3     1.02617424    -0.32000423  -242.39936795    -0.00000159    -0.00000062  0.74D-08  0.84D-07  2750.83
   13     1     1     1.02620234    -0.32000502  -242.39936874    -0.00000077    -0.00000037  0.32D-08  0.49D-07  2989.41
   13     2     2     1.02620234    -0.32000502  -242.39936874    -0.00000077    -0.00000037  0.32D-08  0.49D-07  2989.41
   13     3     3     1.02620223    -0.32000500  -242.39936872    -0.00000077    -0.00000037  0.32D-08  0.49D-07  2989.41
   14     1     1     1.02622314    -0.32000552  -242.39936924    -0.00000050    -0.00000026  0.27D-08  0.33D-07  3226.36
   14     2     2     1.02622314    -0.32000552  -242.39936924    -0.00000050    -0.00000026  0.27D-08  0.33D-07  3226.36
   14     3     3     1.02622309    -0.32000551  -242.39936922    -0.00000050    -0.00000026  0.27D-08  0.33D-07  3226.36
   15     1     1     1.02623273    -0.32000581  -242.39936953    -0.00000029    -0.00000012  0.85D-09  0.17D-07  3464.36
   15     2     2     1.02623273    -0.32000581  -242.39936953    -0.00000029    -0.00000012  0.85D-09  0.17D-07  3464.36
   15     3     3     1.02623269    -0.32000580  -242.39936951    -0.00000029    -0.00000012  0.84D-09  0.17D-07  3464.36
   16     1     1     1.02624383    -0.32000596  -242.39936967    -0.00000015    -0.00000007  0.31D-09  0.10D-07  3701.45
   16     2     2     1.02624383    -0.32000596  -242.39936967    -0.00000015    -0.00000007  0.31D-09  0.10D-07  3701.45
   16     3     3     1.02624378    -0.32000594  -242.39936966    -0.00000015    -0.00000007  0.31D-09  0.10D-07  3701.45
   17     1     1     1.02625346    -0.32000606  -242.39936977    -0.00000010    -0.00000005  0.43D-09  0.69D-08  3939.35
   17     2     2     1.02625346    -0.32000606  -242.39936977    -0.00000010    -0.00000005  0.43D-09  0.69D-08  3939.35
   17     3     3     1.02625343    -0.32000604  -242.39936975    -0.00000010    -0.00000005  0.43D-09  0.70D-08  3939.35


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   1.3%   8.3%
 P   1.1%  42.2%  38.2%

 Initialization:   3.2%
 Other:            5.0%

 Total CPU:     3939.4 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222/00000           0.0000136   0.0000691   0.9851630
 2//22200/000           0.9665384  -0.1906561   0.0000000
 2//2220/0000           0.1906561   0.9665384  -0.0000704

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000014    0.191030    0.968435
 2           0.000069    0.968435   -0.191030
 3           0.987096   -0.000071    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.987096    0.000000    0.000000
 2           0.000000    0.987096   -0.000000
 3           0.000000   -0.000000    0.987096


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96843480 (fixed)   0.98711018 (relaxed)   0.98709599 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006123   -0.00023075   -0.00565624
 Singles      0.00964960   -0.02595346   -0.02829593
 Pairs        0.01660547   -0.28826710   -0.28605389
 Total        1.02631630   -0.31445131   -0.32000606
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.07936372
 Nuclear energy                         0.00000000
 Kinetic energy                       245.10598016
 One electron energy                 -334.41166285
 Two electron energy                   92.01229308
 Virial quotient                       -0.98895739
 Correlation energy                    -0.32000606
 !MRCI STATE 1.2 Energy              -242.399369771832

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.40779115 (Davidson, fixed reference)
 Cluster corrected energies          -242.40778171 (Davidson, relaxed reference)
 Cluster corrected energies          -242.40779115 (Davidson, rotated reference)

 Cluster corrected energies          -242.40576917 (Pople, fixed reference)
 Cluster corrected energies          -242.40576190 (Pople, relaxed reference)
 Cluster corrected energies          -242.40576917 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.96843480 (fixed)   0.98711018 (relaxed)   0.98709599 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006123   -0.00023075   -0.34193629
 Singles      0.00964960   -0.02595346   -0.02829593
 Pairs        0.01660547    0.05686260    0.05022616
 Total        1.02631630    0.03067838   -0.32000606
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.07936372
 Nuclear energy                         0.00000000
 Kinetic energy                       245.10598025
 One electron energy                 -334.41166289
 Two electron energy                   92.01229312
 Virial quotient                       -0.98895739
 Correlation energy                    -0.32000606
 !MRCI STATE 2.2 Energy              -242.399369771822

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.40779115 (Davidson, fixed reference)
 Cluster corrected energies          -242.40778171 (Davidson, relaxed reference)
 Cluster corrected energies          -242.40779115 (Davidson, rotated reference)

 Cluster corrected energies          -242.40576917 (Pople, fixed reference)
 Cluster corrected energies          -242.40576190 (Pople, relaxed reference)
 Cluster corrected energies          -242.40576917 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98709601 (fixed)   0.98711019 (relaxed)   0.98709601 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006122   -0.00023075   -0.28653173
 Singles      0.00964959   -0.02595345   -0.02829591
 Pairs        0.01660544   -0.00000001   -0.00517840
 Total        1.02631626   -0.02618421   -0.32000604
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.07936372
 Nuclear energy                         0.00000000
 Kinetic energy                       245.10597952
 One electron energy                 -334.41166144
 Two electron energy                   92.01229169
 Virial quotient                       -0.98895739
 Correlation energy                    -0.32000604
 !MRCI STATE 3.2 Energy              -242.399369754820

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.40779112 (Davidson, fixed reference)
 Cluster corrected energies          -242.40778168 (Davidson, relaxed reference)
 Cluster corrected energies          -242.40779112 (Davidson, rotated reference)

 Cluster corrected energies          -242.40576914 (Pople, fixed reference)
 Cluster corrected energies          -242.40576187 (Pople, relaxed reference)
 Cluster corrected energies          -242.40576914 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3632.10       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     16088.06   4001.82  12069.88     11.42      0.60      3.98
 REAL TIME  *     16511.16 SEC
 DISK USED  *         3.60 GB (local),      108.53 GB (total)
 SF USED    *        26.78 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =      -242.40779115  AU                              
 SETTING HLSDIAG(8)     =      -242.40779115  AU                              
 SETTING HLSDIAG(9)     =      -242.40779112  AU                              


         HLSDIAG
    -242.6884120
    -242.6884121
    -242.6884121
    -242.5400584
    -242.5400583
    -242.5400582
    -242.4077911
    -242.4077911
    -242.4077911
                                                  


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

 Time for Seward_LS:      14.43 sec

 CPU time:     14.43 sec, REAL time:     15.14 sec


 SORTLS1 read   166536799. and wrote   166536799. SO integrals in   675 records. CPU time:      1.05 sec, REAL time:      2.16 sec
 SORTLS2 read   166536799. and wrote   166536799. SO integrals in    90 records. CPU time:      0.32 sec, REAL time:      0.63 sec

 FILE SIZES: FILE 1:    58.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    58.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -242.673930   -242.673930   -242.673930   -242.531873   -242.531873   -242.531873
 Replaced energies:   -242.688412   -242.688412   -242.688412   -242.540058   -242.540058   -242.540058

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   3

 Original energies:   -242.399370   -242.399370   -242.399370
 Replaced energies:   -242.407791   -242.407791   -242.407791

 >>> Fock matrix approximation error in all internal so: 
   2.3923058300814617E-002  (exact)    9.1290186732343598E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.0208704018095623E-005  (exact)    1.5405923773542177E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.4217218095489349E-004  (exact)    1.6865838563953682E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.1523808511949764E-002  (exact)    1.4304914680108832E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.6412335796301546E-004  (exact)    1.6920899372552749E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.1193404184905841E-004  (exact)   -1.9593654195107882E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.12127885120980787       (exact)    4.6279901472070117E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.0382535718740753E-004  (exact)    7.8095715069669577E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.2416705900763470E-003  (exact)    8.5508704835187386E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.41328808351405399       (exact)    7.2519279199407372E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.8876259829718979E-003  (exact)    8.5778125650799730E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.6723470799017019E-004  (exact)   -9.9561131247698288E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1315160685125799E-004  (exact)    8.1317647333388886E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.12364007724552067       (exact)   -4.7007319428850086E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.8779866001125000E-004  (exact)   -1.0934001240565793E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.9792390049427900E-003  (exact)    8.6195055538848368E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.42117877954217686       (exact)   -7.2914084694449183E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.5366778310199822E-003  (exact)   -2.6601809911182782E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.12127735050276528       (exact)    4.6278398833495611E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1250605902509032E-004  (exact)    8.1398216570917987E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.2399620667433551E-003  (exact)    8.5442451130003389E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.41328882078442936       (exact)    7.2518096954738681E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.9171871212965630E-003  (exact)    8.6289392112441458E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.7295948783578961E-004  (exact)   -1.0052441241277938E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.3922595316894273E-002  (exact)   -9.1286584478709742E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.1892807077863503E-005  (exact)   -1.6043271102435743E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.5085523730179920E-004  (exact)   -1.7195869490158722E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.1523997706043072E-002  (exact)   -1.4304687545309541E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.6984322074220410E-004  (exact)   -1.7018514691237658E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.2320881238543182E-005  (exact)    1.4572172574699528E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.2837151470890813E-003  (exact)    8.6660657528848462E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.9165511002198576E-004  (exact)    1.1062116303413799E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.12362460525101923       (exact)   -4.6912842585338704E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9596501438273931E-004  (exact)   -1.0251865428987027E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.5294756430564039E-003  (exact)    2.6297332356150870E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.42114245536466444       (exact)   -7.2412167193423582E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.5884787821194114E-004  (exact)   -9.7545348478274938E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.14013457715735553       (exact)   -5.3373452992354325E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.7300651075144192E-002  (exact)    1.0359987777703627E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.8082492941920654E-003  (exact)    1.0120616171077662E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.47749441752689764       (exact)   -8.3221905215965619E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.2371261135755417E-002  (exact)    1.5877209728153509E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.6368092829890197E-003  (exact)   -1.0007608708416061E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.7299211382234952E-002  (exact)    1.0398073025119303E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.14011787383191435       (exact)    5.3173501260433055E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.4426685649575227E-004  (exact)   -7.8988514620206282E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.2388781827784774E-002  (exact)    1.6106603253023016E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.47744893568678232       (exact)    8.2088080960431298E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0214538875355577E-005  (exact)   -3.8818482570710947E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.4777203917819983E-005  (exact)   -5.9563677452335114E-006  (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -242.68841209

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00      -0.00       0.10     -41.06       0.33
                           -0.00       0.76      -0.07       0.00      -0.31       0.03       0.00      41.05       0.10       0.17

    2   2.2  0.5  0.5       0.00       0.01       0.00       0.00       0.00       0.00      -0.10       0.00      -0.07       0.04
                           -0.76       0.00      41.05      -0.02       0.02     -16.67     -41.05      -0.00      -0.76      16.67

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      41.06       0.07      -0.00     -16.67
                            0.07     -41.05      -0.00      -0.20      16.67       0.02      -0.10       0.76       0.00       0.04

    4   4.2  0.5  0.5       0.00       0.00       0.00   32559.87       0.00       0.00      -0.33      -0.04      16.67       0.00
                           -0.00       0.02       0.20       0.00      -0.01      -0.08      -0.17     -16.67      -0.04      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   32559.89       0.00       0.06      -0.00       0.20      -0.02
                            0.31      -0.02     -16.67       0.01       0.00       6.71      16.67      -0.17       0.31      -6.71

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   32559.90     -16.67      -0.03      -0.33       6.71
                           -0.03      16.67      -0.02       0.08      -6.71      -0.00       0.06       0.02       0.00      -0.02

    7   1.2  0.5 -0.5      -0.00      -0.10      41.06      -0.33       0.06     -16.67       0.01       0.00       0.00       0.00
                           -0.00      41.05       0.10       0.17     -16.67      -0.06       0.00      -0.76       0.07      -0.00

    8   2.2  0.5 -0.5       0.10       0.00       0.07      -0.04      -0.00      -0.03       0.00       0.01       0.00       0.00
                          -41.05       0.00      -0.76      16.67       0.17      -0.02       0.76      -0.00     -41.05       0.02

    9   3.2  0.5 -0.5     -41.06      -0.07      -0.00      16.67       0.20      -0.33       0.00       0.00       0.00       0.00
                           -0.10       0.76      -0.00       0.04      -0.31      -0.00      -0.07      41.05       0.00       0.20

   10   4.2  0.5 -0.5       0.33       0.04     -16.67       0.00      -0.02       6.71       0.00       0.00       0.00   32559.87
                           -0.17     -16.67      -0.04       0.00       6.71       0.02       0.00      -0.02      -0.20      -0.00

   11   5.2  0.5 -0.5      -0.06       0.00      -0.20       0.02      -0.00       0.08       0.00       0.00       0.00       0.00
                           16.67      -0.17       0.31      -6.71      -0.00       0.01      -0.31       0.02      16.67      -0.01

   12   6.2  0.5 -0.5      16.67       0.03       0.33      -6.71      -0.08      -0.00       0.00       0.00       0.00       0.00
                            0.06       0.02       0.00      -0.02      -0.01      -0.00       0.03     -16.67       0.02      -0.08

   13   1.2  1.5  1.5      -2.22      -0.00      -0.04       2.69       0.03      -0.00       0.00       0.00       0.00       0.00
                            0.45       0.00       0.01      -0.48      -0.01       0.00      -0.00      -0.00      -0.00      -0.00

   14   2.2  1.5  1.5       0.44       0.00       0.01      -0.53      -0.01       0.00       0.00       0.00       0.00       0.00
                            2.27       0.00       0.04      -2.42      -0.03       0.00      -0.00      -0.00      -0.00      -0.00

   15   3.2  1.5  1.5      -0.04      -0.01       2.29      -0.00       0.01      -2.67       0.00       0.00       0.00       0.00
                            0.00      -2.30      -0.01      -0.03       2.53       0.01      -0.00      -0.00      -0.00      -0.00

   16   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -1.28      -0.00      -0.02       1.55
                           -0.00      -2.55       0.50      -0.04       3.19      -0.59       0.26       0.00       0.00      -0.28

   17   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.25       0.00       0.00      -0.31
                           -0.05       0.50       2.58       0.00      -0.62      -3.06       1.31       0.00       0.02      -1.40

   18   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.02      -0.00       1.32      -0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -1.33      -0.00      -0.02

   19   1.2  1.5 -0.5      -1.28      -0.00      -0.02       1.55       0.02      -0.00       0.00       0.00       0.00       0.00
                           -0.26      -0.00      -0.00       0.28       0.00      -0.00      -0.00      -2.55       0.50      -0.04

   20   2.2  1.5 -0.5       0.25       0.00       0.00      -0.31      -0.00       0.00       0.00       0.00       0.00       0.00
                           -1.31      -0.00      -0.02       1.40       0.02      -0.00      -0.05       0.50       2.58       0.00

   21   3.2  1.5 -0.5      -0.02      -0.00       1.32      -0.00       0.01      -1.54       0.00       0.00       0.00       0.00
                           -0.00       1.33       0.00       0.02      -1.46      -0.01       0.00       0.00      -0.00      -0.00

   22   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -2.22      -0.00      -0.04       2.69
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.45      -0.00      -0.01       0.48

   23   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.44       0.00       0.01      -0.53
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.27      -0.00      -0.04       2.42

   24   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.04      -0.01       2.29      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.30       0.01       0.03


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5      -0.06      16.67      -2.22       0.44      -0.04       0.00       0.00       0.00      -1.28       0.25
                          -16.67      -0.06      -0.45      -2.27      -0.00       0.00       0.05      -0.00       0.26       1.31

    2   2.2  0.5  0.5       0.00       0.03      -0.00       0.00      -0.01       0.00       0.00       0.00      -0.00       0.00
                            0.17      -0.02      -0.00      -0.00       2.30       2.55      -0.50      -0.00       0.00       0.00

    3   3.2  0.5  0.5      -0.20       0.33      -0.04       0.01       2.29       0.00       0.00       0.00      -0.02       0.00
                           -0.31      -0.00      -0.01      -0.04       0.01      -0.50      -2.58       0.00       0.00       0.02

    4   4.2  0.5  0.5       0.02      -6.71       2.69      -0.53      -0.00       0.00       0.00       0.00       1.55      -0.31
                            6.71       0.02       0.48       2.42       0.03       0.04      -0.00       0.00      -0.28      -1.40

    5   5.2  0.5  0.5      -0.00      -0.08       0.03      -0.01       0.01       0.00       0.00       0.00       0.02      -0.00
                            0.00       0.01       0.01       0.03      -2.53      -3.19       0.62      -0.00      -0.00      -0.02

    6   6.2  0.5  0.5       0.08      -0.00      -0.00       0.00      -2.67       0.00       0.00       0.00      -0.00       0.00
                           -0.01       0.00      -0.00      -0.00      -0.01       0.59       3.06      -0.00       0.00       0.00

    7   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -1.28       0.25      -0.02       0.00       0.00
                            0.31      -0.03       0.00       0.00       0.00      -0.26      -1.31      -0.00       0.00       0.05

    8   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.02      16.67       0.00       0.00       0.00      -0.00      -0.00       1.33       2.55      -0.50

    9   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.02       0.00       1.32       0.00       0.00
                          -16.67      -0.02       0.00       0.00       0.00      -0.00      -0.02       0.00      -0.50      -2.58

   10   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       1.55      -0.31      -0.00       0.00       0.00
                            0.01       0.08       0.00       0.00       0.00       0.28       1.40       0.02       0.04      -0.00

   11   5.2  0.5 -0.5   32559.89       0.00       0.00       0.00       0.00       0.02      -0.00       0.01       0.00       0.00
                           -0.00      -6.71       0.00       0.00       0.00       0.00       0.02      -1.46      -3.19       0.62

   12   6.2  0.5 -0.5       0.00   32559.90       0.00       0.00       0.00      -0.00       0.00      -1.54       0.00       0.00
                            6.71       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01       0.59       3.06

   13   1.2  1.5  1.5       0.00       0.00   61589.18       0.00       0.00       0.00       0.00      32.07       0.00       0.00
                           -0.00      -0.00      -0.00     -56.62       0.00      -0.00      -0.00      -6.33       0.00       0.00

   14   2.2  1.5  1.5       0.00       0.00       0.00   61589.18       0.00      -0.00      -0.00      -6.33       0.00       0.00
                           -0.00      -0.00      56.62       0.00      -0.00       0.00      -0.00     -32.07       0.00       0.00

   15   3.2  1.5  1.5       0.00       0.00       0.00       0.00   61589.18     -32.07       6.33       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       6.33      32.07       0.00       0.00       0.00

   16   1.2  1.5  0.5       0.02      -0.00       0.00      -0.00     -32.07   61589.18       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -6.33      -0.00     -18.87       0.00      -0.00      -0.00

   17   2.2  1.5  0.5      -0.00       0.00       0.00      -0.00       6.33       0.00   61589.18       0.00      -0.00      -0.00
                           -0.02       0.00       0.00       0.00     -32.07      18.87       0.00      -0.00       0.00      -0.00

   18   3.2  1.5  0.5       0.01      -1.54      32.07      -6.33       0.00       0.00       0.00   61589.18     -37.03       7.31
                            1.46       0.01       6.33      32.07      -0.00      -0.00       0.00       0.00       7.31      37.03

   19   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -37.03   61589.18       0.00
                            3.19      -0.59      -0.00      -0.00      -0.00       0.00      -0.00      -7.31       0.00      18.87

   20   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       7.31       0.00   61589.18
                           -0.62      -3.06      -0.00      -0.00      -0.00       0.00       0.00     -37.03     -18.87      -0.00

   21   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      37.03      -7.31       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       7.31      37.03      -0.00       0.00      -0.00

   22   1.2  1.5 -1.5       0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   23   2.2  1.5 -1.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   24   3.2  1.5 -1.5       0.01      -2.67       0.00       0.00       0.00       0.00       0.00       0.00      32.07      -6.33
                           -2.53      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       6.33      32.07


   Nr   State  S   Sz       21         22         23         24

    1   1.2  0.5  0.5      -0.02       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5      -0.00       0.00       0.00       0.00
                           -1.33       0.00       0.00       0.00

    3   3.2  0.5  0.5       1.32       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5      -0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.01       0.00       0.00       0.00
                            1.46       0.00       0.00       0.00

    6   6.2  0.5  0.5      -1.54       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00

    7   1.2  0.5 -0.5       0.00      -2.22       0.44      -0.04
                           -0.00       0.45       2.27       0.00

    8   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.01
                           -0.00       0.00       0.00      -2.30

    9   3.2  0.5 -0.5       0.00      -0.04       0.01       2.29
                            0.00       0.01       0.04      -0.01

   10   4.2  0.5 -0.5       0.00       2.69      -0.53      -0.00
                            0.00      -0.48      -2.42      -0.03

   11   5.2  0.5 -0.5       0.00       0.03      -0.01       0.01
                           -0.00      -0.01      -0.03       2.53

   12   6.2  0.5 -0.5       0.00      -0.00       0.00      -2.67
                           -0.00       0.00       0.00       0.01

   13   1.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   14   2.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15   3.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   16   1.2  1.5  0.5      37.03       0.00       0.00       0.00
                           -7.31       0.00       0.00       0.00

   17   2.2  1.5  0.5      -7.31       0.00       0.00       0.00
                          -37.03       0.00       0.00       0.00

   18   3.2  1.5  0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   19   1.2  1.5 -0.5       0.00       0.00       0.00      32.07
                           -0.00      -0.00      -0.00      -6.33

   20   2.2  1.5 -0.5       0.00      -0.00      -0.00      -6.33
                            0.00       0.00      -0.00     -32.07

   21   3.2  1.5 -0.5   61589.18     -32.07       6.33       0.00
                           -0.00       6.33      32.07       0.00

   22   1.2  1.5 -1.5     -32.07   61589.18       0.00       0.00
                           -6.33       0.00      56.62      -0.00

   23   2.2  1.5 -1.5       6.33       0.00   61589.18       0.00
                          -32.07     -56.62      -0.00       0.00

   24   3.2  1.5 -1.5       0.00       0.00       0.00   61589.18
                           -0.00       0.00      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -242.68878638    -0.00037429      -82.15      0.00000000        0.00      0.0000
     2  -242.68878638    -0.00037429      -82.15      0.00000000        0.00      0.0000
     3  -242.68822504     0.00018705       41.05      0.00056134      123.20      0.0153
     4  -242.68822504     0.00018705       41.05      0.00056134      123.20      0.0153
     5  -242.68822502     0.00018707       41.06      0.00056136      123.20      0.0153
     6  -242.68822502     0.00018707       41.06      0.00056136      123.20      0.0153
     7  -242.54011928     0.14829281    32546.51      0.14866710    32628.66      4.0454
     8  -242.54011928     0.14829281    32546.51      0.14866710    32628.66      4.0454
     9  -242.54002776     0.14838433    32566.60      0.14875862    32648.74      4.0479
    10  -242.54002776     0.14838433    32566.60      0.14875862    32648.74      4.0479
    11  -242.54002768     0.14838440    32566.61      0.14875869    32648.76      4.0479
    12  -242.54002768     0.14838440    32566.61      0.14875869    32648.76      4.0479
    13  -242.40822111     0.28019097    61494.81      0.28056526    61576.96      7.6346
    14  -242.40822111     0.28019097    61494.81      0.28056526    61576.96      7.6346
    15  -242.40796313     0.28044895    61551.43      0.28082324    61633.58      7.6416
    16  -242.40796313     0.28044895    61551.43      0.28082324    61633.58      7.6416
    17  -242.40796311     0.28044897    61551.43      0.28082326    61633.58      7.6416
    18  -242.40796311     0.28044897    61551.43      0.28082326    61633.58      7.6416
    19  -242.40753316     0.28087893    61645.80      0.28125321    61727.95      7.6533
    20  -242.40753316     0.28087893    61645.80      0.28125321    61727.95      7.6533
    21  -242.40753315     0.28087894    61645.80      0.28125323    61727.95      7.6533
    22  -242.40753315     0.28087894    61645.80      0.28125323    61727.95      7.6533
    23  -242.40753314     0.28087894    61645.80      0.28125323    61727.95      7.6533
    24  -242.40753314     0.28087894    61645.80      0.28125323    61727.95      7.6533


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.572686359   0.073087943  -0.366134312   0.046761920   0.728014203  -0.021030188  -0.000047202   0.000587970
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.025060477   0.196363246  -0.007355022  -0.052475516   0.018842791   0.663659390  -0.000588063  -0.000047205
                        -0.058065891   0.539231207   0.040804191   0.441181720  -0.011561530   0.163169868   0.000005428   0.000011381

    3    3.2  0.5  0.5   0.068659761  -0.537990137   0.095429980   0.803835550  -0.003942089  -0.010521915  -0.000006323  -0.000000526
                        -0.026074816   0.196294421   0.011495699   0.096197860   0.001655421   0.043207440  -0.000588305  -0.000048268

    4    4.2  0.5  0.5  -0.000586867  -0.000061732  -0.000186616   0.000032420   0.000372974  -0.000014335  -0.040506767   0.576239157
                        -0.000000072   0.000001604  -0.000000095  -0.000001313   0.000000077  -0.000000408  -0.011498309  -0.001051963

    5    5.2  0.5  0.5   0.000019740  -0.000202044  -0.000005730  -0.000027102   0.000013454   0.000340103  -0.575798602  -0.040336725
                         0.000059316  -0.000550888   0.000020909   0.000226085  -0.000005928   0.000083620   0.005935564   0.011186053

    6    6.2  0.5  0.5  -0.000058504   0.000550930   0.000052633   0.000411499  -0.000009415  -0.000004743  -0.006002532  -0.011978418
                         0.000026719  -0.000201279   0.000005919   0.000049598   0.000000841   0.000022263  -0.574838457  -0.047149306

    7    1.2  0.5 -0.5  -0.068714033   0.538414238   0.046416912   0.363432985  -0.005055828  -0.175020532   0.000004933   0.000000396
                         0.024904400  -0.195140396   0.005669872   0.044393699   0.020413413   0.706662926   0.000587950   0.000047201

    8    2.2  0.5 -0.5  -0.000871290  -0.003775045   0.001404829   0.002353258   0.001164708  -0.015752413   0.000010985  -0.000000494
                         0.573871117   0.063130216  -0.444289339   0.041394934  -0.683422881   0.015510682  -0.000047299   0.000588088

    9    3.2  0.5 -0.5   0.572680867   0.073435733   0.809568844  -0.096119752  -0.044469804   0.002554581  -0.000048271   0.000588338
                         0.001229474   0.001118866   0.001976759  -0.000159978  -0.000174091  -0.003428499  -0.000000121   0.000001387

   10    4.2  0.5 -0.5   0.000058584  -0.000551721   0.000032022   0.000185250  -0.000003050  -0.000089591   0.003782399   0.011837733
                        -0.000019527   0.000200040   0.000005235   0.000022533   0.000014012   0.000362054   0.576227704   0.040408877

   11    5.2  0.5 -0.5   0.000002240  -0.000001653   0.000000511   0.000003153   0.000000596  -0.000008988   0.010847257  -0.001104726
                        -0.000586766  -0.000062492  -0.000227703   0.000021449  -0.000350232   0.000011634  -0.040429150   0.575828135

   12    6.2  0.5 -0.5  -0.000586545  -0.000064107   0.000414477  -0.000052963  -0.000022750   0.000003080  -0.047248139   0.574868585
                        -0.000001506  -0.000005185   0.000000662  -0.000000506  -0.000000748  -0.000008937  -0.011582440   0.001179747

   13    1.2  1.5  1.5   0.000020686   0.000002322  -0.000013124   0.000002234   0.000026223  -0.000000715   0.000004568  -0.000053433
                        -0.000004196  -0.000000297   0.000002659  -0.000000356  -0.000005292   0.000000186   0.000000201   0.000009588

   14    2.2  1.5  1.5  -0.000004102  -0.000000282   0.000002599  -0.000000348  -0.000005172   0.000000182   0.000000019   0.000010618
                        -0.000021165  -0.000002374   0.000013431  -0.000002288  -0.000026837   0.000000734  -0.000004152   0.000048167

   15    3.2  1.5  1.5   0.000000009  -0.000000074  -0.000005324  -0.000046329   0.000001081  -0.000005660  -0.000000018  -0.000000048
                        -0.000000001   0.000000027  -0.000000668  -0.000005432   0.000000595   0.000023178  -0.000002578  -0.000000216

   16    1.2  1.5  0.5   0.000001096  -0.000010370  -0.000000302  -0.000009810   0.000000452  -0.000007090   0.000006693   0.000001152
                        -0.000000774   0.000006234  -0.000001269  -0.000009337   0.000001296   0.000043050   0.000032357   0.000002537

   17    2.2  1.5  0.5  -0.000000776   0.000006232   0.000000664   0.000007064   0.000000410   0.000018889   0.000032771   0.000002575
                        -0.000001094   0.000010356  -0.000005560  -0.000041133   0.000000635  -0.000004113  -0.000006615  -0.000001151

   18    3.2  1.5  0.5  -0.000024700  -0.000002732  -0.000007783   0.000001317   0.000015680  -0.000000434  -0.000004900   0.000059592
                         0.000000024  -0.000000198   0.000000006   0.000000059   0.000000001   0.000000022  -0.000001095  -0.000000092

   19    1.2  1.5 -0.5  -0.000011874  -0.000001294   0.000010870  -0.000000453   0.000043492  -0.000001149  -0.000002547   0.000032412
                        -0.000002328  -0.000000354  -0.000008079   0.000001223   0.000003467  -0.000000750  -0.000001131   0.000006421

   20    2.2  1.5 -0.5   0.000002330   0.000000356  -0.000002024  -0.000000015  -0.000008534  -0.000000518   0.000001130  -0.000006339
                        -0.000011860  -0.000001293  -0.000041686   0.000005599   0.000017346  -0.000000551  -0.000002585   0.000032825

   21    3.2  1.5 -0.5  -0.000002501   0.000023230  -0.000001314  -0.000007725   0.000000126   0.000003768  -0.000000408  -0.000001136
                         0.000001117  -0.000008394  -0.000000101  -0.000000950  -0.000000416  -0.000015220  -0.000059591  -0.000004891

   22    1.2  1.5 -1.5  -0.000002284   0.000020878   0.000002175   0.000012705  -0.000000352  -0.000011441   0.000009139  -0.000000239
                         0.000000512  -0.000003104   0.000000624   0.000004231   0.000000650   0.000024182  -0.000053511  -0.000004566

   23    2.2  1.5 -1.5  -0.000000543   0.000003355  -0.000000622  -0.000004208  -0.000000669  -0.000024807   0.000048254   0.000004151
                        -0.000002328   0.000021296   0.000002228   0.000013017  -0.000000353  -0.000011472   0.000010213  -0.000000054

   24    3.2  1.5 -1.5   0.000000079   0.000000009  -0.000046645   0.000005366  -0.000023859   0.000000318  -0.000000216   0.000002578
                         0.000000001  -0.000000002  -0.000000225  -0.000000017  -0.000000078   0.000001192  -0.000000046  -0.000000004


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000396137   0.000078461   0.000111190  -0.000000000   0.000000118   0.000024723  -0.000000201  -0.000055446
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000055659  -0.000291232   0.000007186   0.000278943   0.000000993  -0.000000004   0.000006257  -0.000000093
                        -0.000006464  -0.000022472  -0.000021750  -0.000091623  -0.000024571   0.000000571  -0.000026674  -0.000000157

    3    3.2  0.5  0.5  -0.000005664   0.000009944  -0.000027105  -0.000125394   0.000024665  -0.000000117   0.000026924  -0.000000868
                        -0.000022603  -0.000102987  -0.000006483  -0.000383654   0.000000996  -0.000000046   0.000006411  -0.000000003

    4    4.2  0.5  0.5   0.770974413  -0.159016491  -0.214934256   0.010339802  -0.000001458  -0.000059980  -0.000000652   0.000134077
                         0.000747201   0.003542210  -0.000178386   0.013007684  -0.000000676   0.000000004  -0.000001017   0.000000002

    5    5.2  0.5  0.5   0.116555306   0.567249757  -0.016259504  -0.543703429  -0.000002414  -0.000000596  -0.000016106   0.000001582
                         0.012576624   0.043669817   0.042359843   0.177688538   0.000061468  -0.000001439   0.000068982   0.000000404

    6    6.2  0.5  0.5  -0.004166640  -0.015680823   0.057203606   0.244085318  -0.000061661   0.000001522  -0.000067426  -0.000000589
                         0.044255569   0.201629263   0.012709596   0.749179577  -0.000002405   0.000000122  -0.000015948   0.000000008

    7    1.2  0.5 -0.5   0.000006411   0.000032366  -0.000000000  -0.000034044  -0.000024701   0.000000118   0.000053929  -0.000000196
                        -0.000078198  -0.000394812   0.000000000  -0.000105850  -0.000001056   0.000000005   0.000012879  -0.000000047

    8    2.2  0.5 -0.5  -0.000001398  -0.000001895  -0.000001816   0.000018505  -0.000000020  -0.000000058   0.000000127  -0.000000109
                         0.000292094  -0.000056001   0.000293600  -0.000013501   0.000000571   0.000024591  -0.000000131   0.000027397

    9    3.2  0.5 -0.5   0.000103455  -0.000022065  -0.000403621   0.000014470   0.000000119   0.000024685   0.000000845   0.000027677
                        -0.000001497  -0.000007491  -0.000001905   0.000023818  -0.000000041   0.000000059   0.000000199   0.000000018

   10    4.2  0.5 -0.5  -0.016522607  -0.062246783   0.015548803   0.065978027   0.000059926  -0.000001486  -0.000130410  -0.000000870
                         0.158195433   0.768457833   0.005860553   0.204557245   0.000002566   0.000000613  -0.000031141   0.000000838

   11    5.2  0.5 -0.5   0.002822607   0.003011573   0.002684703  -0.035347169   0.000000657   0.000000215  -0.000001632   0.000000357
                        -0.568921235   0.117193179  -0.571996004   0.028448293  -0.000001413  -0.000061515   0.000000025  -0.000070836

   12    6.2  0.5 -0.5  -0.202236330   0.044448038   0.787933245  -0.029613711  -0.000001526  -0.000061707   0.000000571  -0.000069287
                        -0.000845466  -0.000536865   0.002980383  -0.050564953   0.000000057  -0.000000232   0.000000144  -0.000000149

   13    1.2  1.5  1.5  -0.000071717   0.000014074   0.000019972  -0.000000561  -0.011344213  -0.490433080  -0.002554069   0.438740786
                         0.000012679  -0.000002863  -0.000003582  -0.000001248   0.002731803   0.096704639  -0.000089543  -0.086537590

   14    2.2  1.5  1.5   0.000014079  -0.000003104  -0.000003967  -0.000001107   0.002731802   0.096704595  -0.000089535  -0.086537486
                         0.000064652  -0.000012677  -0.000018003   0.000000558   0.011344212   0.490433048   0.002554131  -0.438740957

   15    3.2  1.5  1.5   0.000000793   0.000002225   0.000008950   0.000038416  -0.000000199  -0.000000006   0.000288131   0.000000316
                        -0.000005329  -0.000031238   0.000002336   0.000116359  -0.000000824  -0.000035727   0.000819646  -0.000018085

   16    1.2  1.5  0.5  -0.000000094  -0.000003316   0.000003637  -0.000001219  -0.285263519   0.006703520  -0.515922322  -0.002888622
                        -0.000020153  -0.000104811   0.000002856   0.000054459   0.043722941  -0.000742625  -0.019970138   0.000529460

   17    2.2  1.5  0.5  -0.000012431  -0.000060068  -0.000002048  -0.000092066   0.043723896  -0.000702147  -0.020963599   0.000604201
                         0.000002786   0.000015580   0.000006400   0.000019515   0.285263454  -0.006695542   0.516065614   0.002903721

   18    3.2  1.5  0.5  -0.000039571   0.000007817   0.000012972  -0.000000253   0.013462059   0.577172908  -0.001428153   0.258193952
                        -0.000000036  -0.000000195  -0.000000003  -0.000000843  -0.000580307   0.000041887  -0.000372027   0.000003757

   19    1.2  1.5 -0.5  -0.000104190   0.000020078  -0.000051471   0.000003833   0.006665669   0.283134887  -0.002686636   0.506450517
                        -0.000011868   0.000001741   0.000017835   0.000002588   0.001028365   0.055871339  -0.001185932   0.100411762

   20    2.2  1.5 -0.5   0.000020436  -0.000003792   0.000009611   0.000005466  -0.000987583  -0.055872290   0.001262139  -0.099478756
                        -0.000058594   0.000012162   0.000093619  -0.000003909   0.006659428   0.283134782  -0.002683966   0.506820647

   21    3.2  1.5 -0.5  -0.000000833  -0.000003197   0.000000879   0.000003969   0.576647626  -0.013424971   0.251133276   0.001475506
                         0.000007775   0.000039442  -0.000000017   0.000012350   0.024618755  -0.001154964   0.059968278  -0.000030128

   22    1.2  1.5 -1.5   0.000004003   0.000018496  -0.000001360  -0.000002705   0.485853363  -0.011217133  -0.406640825  -0.002505014
                        -0.000013793  -0.000070441  -0.000000152  -0.000020109   0.117570840  -0.003214008  -0.186079207  -0.000506151

   23    2.2  1.5 -1.5   0.000012381   0.000063286   0.000000193   0.000018353  -0.117570795   0.003214007   0.186079145   0.000506174
                         0.000004130   0.000019315  -0.000001224  -0.000001735   0.485853334  -0.011217132  -0.406641015  -0.002505073

   24    3.2  1.5 -1.5   0.000031315  -0.000005376   0.000122533  -0.000004964   0.000001533  -0.000000234   0.000003889   0.000470635
                         0.000000335   0.000000355   0.000000945  -0.000007804  -0.000035695   0.000000815  -0.000017668  -0.000730303


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000000910   0.000000075   0.000000000   0.000000605   0.000000270  -0.000000002  -0.000000002  -0.000000002
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000003853  -0.000004020  -0.000000001   0.000000001   0.000000002   0.000000181   0.000000015  -0.000000104
                         0.000045649  -0.000013370   0.000000002   0.000000000  -0.000000001   0.000000416   0.000000018  -0.000000299

    3    3.2  0.5  0.5   0.000045706  -0.000013394  -0.000000001   0.000000012   0.000000005   0.000000098  -0.000000005   0.000000073
                        -0.000003811   0.000004008  -0.000000001   0.000000001  -0.000000001  -0.000000043   0.000000003  -0.000000026

    4    4.2  0.5  0.5  -0.000000757  -0.000002458   0.000000003   0.000006591   0.000002950  -0.000000028  -0.000000020   0.000000018
                         0.000001162  -0.000000494  -0.000000000  -0.000000002   0.000000001  -0.000000082  -0.000000007   0.000000046

    5    5.2  0.5  0.5  -0.000009338   0.000009821  -0.000000001   0.000000077   0.000000064   0.000002430   0.000000201  -0.000001392
                        -0.000112383   0.000032925   0.000000006   0.000000004  -0.000000007   0.000005582   0.000000246  -0.000004014

    6    6.2  0.5  0.5  -0.000113721   0.000033328   0.000000000  -0.000000007  -0.000000004   0.000000631  -0.000000029   0.000000452
                         0.000009324  -0.000009920   0.000000001   0.000000003  -0.000000005  -0.000000255   0.000000023  -0.000000175

    7    1.2  0.5 -0.5  -0.000000075  -0.000000906   0.000000530  -0.000000000  -0.000000002  -0.000000247   0.000000000  -0.000000000
                         0.000000007   0.000000089   0.000000292  -0.000000000   0.000000001   0.000000108  -0.000000002   0.000000002

    8    2.2  0.5 -0.5   0.000002689  -0.000000642   0.000000001  -0.000000000  -0.000000000  -0.000000002  -0.000000270  -0.000000015
                        -0.000013700  -0.000045807  -0.000000000   0.000000002  -0.000000453   0.000000000  -0.000000165  -0.000000018

    9    3.2  0.5 -0.5   0.000013722   0.000045860   0.000000010   0.000000001   0.000000107  -0.000000005  -0.000000041  -0.000000004
                         0.000002675  -0.000000690   0.000000005   0.000000000   0.000000001   0.000000001   0.000000066   0.000000004

   10    4.2  0.5 -0.5   0.000002398  -0.000000867   0.000005771  -0.000000002   0.000000007  -0.000002703   0.000000041   0.000000003
                        -0.000000733  -0.000001082   0.000003184  -0.000000002   0.000000086   0.000001181   0.000000027   0.000000021

   11    5.2  0.5 -0.5  -0.000006545   0.000001729   0.000000070  -0.000000003  -0.000000007  -0.000000062  -0.000003624  -0.000000197
                         0.000033729   0.000112757   0.000000034   0.000000006  -0.000006088   0.000000019  -0.000002217  -0.000000249

   12    6.2  0.5 -0.5  -0.000034140  -0.000114087  -0.000000004  -0.000000001   0.000000681   0.000000001  -0.000000267  -0.000000028
                        -0.000006604   0.000001873  -0.000000006   0.000000000  -0.000000018  -0.000000006   0.000000404   0.000000023

   13    1.2  1.5  1.5  -0.000076016  -0.000336445   0.000293651   0.694121021  -0.000818996   0.000014097  -0.077729751  -0.010673294
                        -0.000152973  -0.000332067   0.000062718   0.136604942   0.000744187   0.000025941   0.207897050   0.012457647

   14    2.2  1.5  1.5  -0.000100321  -0.000348129  -0.000062592  -0.136470196   0.000695828  -0.000009093   0.209851531   0.012575454
                         0.000081749   0.000338052   0.000293371   0.693475882   0.001129508  -0.000002993   0.078432995   0.010771749

   15    3.2  1.5  1.5   0.738195776  -0.216124815   0.000120866  -0.000001410  -0.000539763   0.579507091  -0.000080639   0.002433098
                        -0.063636920   0.065365083   0.000064509  -0.000013336  -0.003080348  -0.253345653   0.000243111  -0.002400032

   16    1.2  1.5  0.5   0.425440467  -0.129738985  -0.000660110   0.000007688  -0.000065095  -0.536872793  -0.018038570   0.330391051
                         0.045917944   0.013079489  -0.000022770  -0.000031424   0.002689825   0.118466657   0.021854591  -0.194260760

   17    2.2  1.5  0.5  -0.046958088  -0.012675947   0.000127383   0.000031365  -0.002725299  -0.117777992   0.022221941  -0.197525194
                         0.425120930  -0.129727839   0.000476374   0.000007194  -0.000050165  -0.532732636   0.018277201  -0.335328693

   18    3.2  1.5  0.5  -0.000034376  -0.000148866   0.000000442   0.001051025  -0.003794294   0.000007729  -0.405413152  -0.044825383
                        -0.000126236  -0.000217001   0.000000260   0.000445384   0.001793966  -0.000001667   0.657559003   0.035377700

   19    1.2  1.5 -0.5  -0.130396283  -0.418886699   0.000008442  -0.000589066   0.539420191  -0.001136026   0.260366696   0.025204058
                        -0.000293281   0.087418434  -0.000031233  -0.000298774  -0.106266749  -0.002439015  -0.281255497  -0.012952507

   20    2.2  1.5 -0.5   0.000107219   0.088422228  -0.000030938   0.000341546  -0.105241158  -0.002477529   0.285381684   0.013107190
                         0.130345622   0.418466696  -0.000008842  -0.000355661  -0.535350348   0.001136518   0.264610749   0.025613930

   21    3.2  1.5 -0.5  -0.000126867   0.000021832  -0.001135454   0.000000513  -0.000007723  -0.004195100  -0.044138210   0.728995685
                         0.000230554  -0.000129000  -0.000117422  -0.000000009   0.000001589  -0.000125765   0.036231410  -0.255556174

   22    1.2  1.5 -1.5   0.000302258  -0.000060651   0.673810911  -0.000287438   0.000002532   0.001048354   0.014450439  -0.219704087
                        -0.000363461   0.000159691   0.215508149  -0.000086859  -0.000029423   0.000354283  -0.007765106   0.031515193

   23    2.2  1.5 -1.5   0.000379603  -0.000107855   0.215314663  -0.000086831  -0.000007127  -0.000185705   0.007836112  -0.031784594
                         0.000302281  -0.000071519  -0.673180886   0.000287132   0.000006375   0.001313557   0.014586573  -0.221763711

   24    3.2  1.5 -1.5   0.221493227   0.740878214  -0.000007673  -0.000136994   0.632465342  -0.000737968  -0.002864485  -0.000254743
                         0.043855219  -0.009062737   0.000010998  -0.000001870   0.000281935  -0.003038962   0.001864144   0.000026861


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  32.797%   0.534%  13.405%   0.219%  53.000%   0.044%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.400%  32.933%   0.172%  19.739%   0.049%  46.707%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.539%  32.796%   0.924%  65.541%   0.002%   0.198%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.177%  33.205%  59.440%   2.530%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.158%   0.175%   1.374%  32.368%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.048%   0.237%   0.198%   4.090%
    7    1.2  0.5 -0.5   0.534%  32.797%   0.219%  13.405%   0.044%  53.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5  32.933%   0.400%  19.739%   0.172%  46.707%   0.049%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5  32.796%   0.539%  65.541%   0.924%   0.198%   0.002%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.205%   0.177%   2.530%  59.440%
   11    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.175%  33.158%  32.368%   1.374%
   12    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.237%  33.048%   4.090%   0.198%
   13    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   4.620%   0.028%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  0.5  0.5   0.206%  32.719%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  0.5  0.5   0.343%  62.085%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.028%   4.620%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    5.2  0.5 -0.5  32.719%   0.206%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    6.2  0.5 -0.5  62.085%   0.343%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  1.5  1.5   0.000%   0.000%   0.014%  24.988%   0.001%  19.998%   0.000%   0.000%   0.000%  50.046%
   14    2.2  1.5  1.5   0.000%   0.000%   0.014%  24.988%   0.001%  19.998%   0.000%   0.000%   0.000%  49.953%
   15    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  54.898%   5.098%   0.000%   0.000%
   16    1.2  1.5  0.5   0.000%   0.000%   8.329%   0.005%  26.657%   0.001%  18.311%   1.700%   0.000%   0.000%
   17    2.2  1.5  0.5   0.000%   0.000%   8.329%   0.005%  26.676%   0.001%  18.293%   1.699%   0.000%   0.000%
   18    3.2  1.5  0.5   0.000%   0.000%   0.018%  33.313%   0.000%   6.666%   0.000%   0.000%   0.000%   0.000%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.005%   8.329%   0.001%  26.657%   1.700%  18.311%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.000%   0.000%   0.005%   8.329%   0.001%  26.676%   1.699%  18.293%   0.000%   0.000%
   21    3.2  1.5 -0.5   0.000%   0.000%  33.313%   0.018%   6.666%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    1.2  1.5 -1.5   0.000%   0.000%  24.988%   0.014%  19.998%   0.001%   0.000%   0.000%  50.046%   0.000%
   23    2.2  1.5 -1.5   0.000%   0.000%  24.988%   0.014%  19.998%   0.001%   0.000%   0.000%  49.953%   0.000%
   24    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.098%  54.898%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    7    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   11    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   12    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   13    1.2  1.5  1.5   0.000%   0.000%   4.926%   0.027%
   14    2.2  1.5  1.5   0.000%   0.000%   5.019%   0.027%
   15    3.2  1.5  1.5   0.001%  40.001%   0.000%   0.001%
   16    1.2  1.5  0.5   0.001%  30.227%   0.080%  14.690%
   17    2.2  1.5  0.5   0.001%  29.768%   0.083%  15.146%
   18    3.2  1.5  0.5   0.002%   0.000%  59.674%   0.326%
   19    1.2  1.5 -0.5  30.227%   0.001%  14.690%   0.080%
   20    2.2  1.5 -0.5  29.768%   0.001%  15.146%   0.083%
   21    3.2  1.5 -0.5   0.000%   0.002%   0.326%  59.674%
   22    1.2  1.5 -1.5   0.000%   0.000%   0.027%   4.926%
   23    2.2  1.5 -1.5   0.000%   0.000%   0.027%   5.019%
   24    3.2  1.5 -1.5  40.001%   0.001%   0.001%   0.000%


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

              2       7     3632.10       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     78831.56  62743.49   4001.82  12069.88     11.42      0.60      3.98
 REAL TIME  *     79990.86 SEC
 DISK USED  *         3.60 GB (local),      113.29 GB (total)
 SF USED    *        26.78 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -242.407533141676

              CI              CI           MULTI         RHF-SCF
   -242.39936975   -242.53187334   -242.07936372   -242.31256557
 **********************************************************************************************************************************
 Molpro calculation terminated
