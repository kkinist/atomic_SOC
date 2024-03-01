
 Working directory              : /wrk/irikura/molpro.Y5U3yUbdOp/
 Global scratch directory       : /wrk/irikura/molpro.Y5U3yUbdOp/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Y5U3yUbdOp/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Al SO-CI
                                                                                 ! Active space (3,4)
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
     closed,1,0;
     wf,sym=2,spin=1;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Al SO-                                                                        
  64 bit mpp version                                                                     DATE: 22-Feb-24          TIME: 15:19:40  
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

     229.638 MB (compressed) written to integral file ( 11.9%)

     Node minimum: 4.456 MB, node maximum: 10.748 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4703088.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4703088      RECORD LENGTH: 524288

 Memory used in sort:       5.26 MW

 SORT1 READ   241177324. AND WROTE      823313. INTEGRALS IN      3 RECORDS. CPU TIME:     1.51 SEC, REAL TIME:     1.56 SEC
 SORT2 READ    24788184. AND WROTE   141159946. INTEGRALS IN    900 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.11 SEC

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
 CPU TIMES  *         3.52      3.32
 REAL TIME  *         4.49 SEC
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
   1     -192.23621334    -192.23621334     0.00D+00     0.90D-01     0     0       0.04      0.07    start
   2     -233.56661504     -41.33040170     0.22D+00     0.13D+00     1     0       0.03      0.10    diag2
   3     -240.13686926      -6.57025422     0.22D+00     0.45D-01     2     0       0.04      0.14    diag2
   4     -242.17107304      -2.03420378     0.87D-01     0.40D-01     3     0       0.04      0.18    diag2
   5     -242.23079894      -0.05972590     0.60D-02     0.10D-01     4     0       0.04      0.22    diag2
   6     -242.26159659      -0.03079764     0.18D-02     0.39D-02     5     0       0.04      0.26    diag2
   7     -242.29088081      -0.02928422     0.12D-02     0.30D-02     6     0       0.04      0.30    diag2
   8     -242.31105477      -0.02017396     0.97D-03     0.44D-02     7     0       0.04      0.34    fixocc
   9     -242.31232042      -0.00126565     0.44D-03     0.13D-02     8     0       0.04      0.38    diag2
  10     -242.31252380      -0.00020338     0.14D-03     0.40D-03     9     0       0.04      0.42    diag2/orth
  11     -242.31256450      -0.00004070     0.64D-04     0.17D-03     9     0       0.03      0.45    diag2
  12     -242.31256554      -0.00000105     0.89D-05     0.31D-04     9     0       0.04      0.49    diag2
  13     -242.31256556      -0.00000002     0.16D-05     0.42D-05     9     0       0.04      0.53    diag2
  14     -242.31256557      -0.00000000     0.16D-06     0.57D-06     9     0       0.04      0.57    diag2
  15     -242.31256557      -0.00000000     0.26D-07     0.39D-07     0     0       0.03      0.60    diag

 Final alpha occupancy:   3   4
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -242.312565565067
  RHF One-electron energy            -337.229621107875
  RHF Two-electron energy              94.917055542808
  RHF Kinetic energy                  245.060115166818
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.988788262831

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.62021     1  1  s    0.97700
    2.1     2.00000    -4.92852     1  2  s    1.02196
    3.1     2.00000    -0.39445     1  2  s   -0.25753    1  9  s    0.34280    1 10  s    0.61347
    1.2     2.00000    -3.21678     1  1  pz   0.99884
    2.2     2.00000    -3.21678     1  1  py   0.99883
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
 CPU TIMES  *         4.13      0.61      3.32
 REAL TIME  *         5.18 SEC
 DISK USED  *        34.60 MB (local),        1.50 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     208 (   99  109)

 State symmetry 1

 Number of active electrons:  11    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:             516   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.400D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.182D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.117D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 3 4 5 1   5 3 4 6 2 711 81410  15 91312 6 2 4 3 5 1   711 8141015 91312 6
                                        2 4 3 5 111 7 81410  15 91312 2 6 4 3 5 1  11 7 8141015 91312 2   6 4 3 5 2 6 4 3 5 1
                                       11 714 81510 91312 2   6 4 3 5 1 2 6 4 3 5   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.148D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.171D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.537D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.386D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.139D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.130D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 3 2 1   3 2 6 5 8 410 9 7 6   5 8 410 9 7 1 3 2 5   6 8 410 9 712191421
                                       16172015131811 3 2 1   5 6 8 410 9 7121914  2116172015131811 5 6   8 410 9 7 3 2 11912
                                       211416171520131811 5   6 8 410 9 7 3 2 1 5   6 8 410 9 7 3 2 1 3   2 1 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  953  ( 2 closed/active, 99 closed/virtual, 0 active/active, 852 active/virtual )
 Total number of variables:    3281
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   28    0   -242.28757316    -242.33313310   -0.04555994    0.05193936 0.00002386 0.00021300  0.87E+00      3.00
   2    9   18    0   -242.32914269    -242.33078476   -0.00164206    0.15952848 0.00000078 0.00000025  0.47E-01      5.04
   3    4    8    0   -242.33079302    -242.33079315   -0.00000014    0.00075179 0.00000024 0.00000018  0.64E-03      6.72
   4    6    6    0   -242.33079315    -242.33079315   -0.00000000    0.00000008 0.00000000 0.00000001  0.12E-05      7.64

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.82E-09)
                       Final energy:   -242.33079315
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -242.330793154233
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.07768290
 One electron energy                          -337.30881658
 Two electron energy                            94.97802342
 Virial ratio                                    1.98879176
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -242.330793154233
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.07768290
 One electron energy                          -337.30881658
 Two electron energy                            94.97802342
 Virial ratio                                    1.98879176
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -242.330793154233
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.07768290
 One electron energy                          -337.30881658
 Two electron energy                            94.97802342
 Virial ratio                                    1.98879176
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>    -0.000000000000
 !MCSCF expec                      <2.2|LXLX|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LXLX|3.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LYLY|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LYLY|2.2>     0.981190862859
 !MCSCF expec                      <3.2|LYLY|3.2>     0.018809137141
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.018809137141
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.981190862859
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 4 3 5 6 1   5 4 3 6 2 812131014  15 711 9 4 5 3 6 2 1   812 7101311 91415 6
                                        4 5 3 2 111 9 812 7  15141013 3 6 5 4 2 1  11 9 812 710131415 2   5 3 4 6 2 6 5 4 3 1
                                        911141512 8 71013 2   6 5 4 3 1 2 4 3 6 5   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 2 3 1 2   3 1 810 6 9 7 4 5 8  10 6 9 7 5 4 2 3 110   8 5 4 9 7 614161913
                                       21111220181715 2 3 1  10 8 5 4 9 7 6132116  141211191715201810 8   7 9 5 4 6 3 2 11321
                                       16141715182019121110   8 4 5 7 9 6 2 3 110   8 4 5 7 9 6 2 1 3 1   2 3 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.61047     1  1  s    0.97699
    2.1     2.00000    -4.91984     1  2  s    1.02231
    3.1     1.92010    -0.37826     1  2  s   -0.25139    1  9  s    0.32793    1 10  s    0.62455
    1.2     1.99997    -3.20843     1  1  py   0.99982
    2.2     1.99997    -3.20843     1  1  pz   0.99982
    3.2     1.99997    -3.20843     1  1  px   0.99982
    4.2     0.36000     0.01067     1  8  pz   0.33570    1  9  pz   0.57040
    5.2     0.36000     0.01067     1  8  py   0.33570    1  9  py   0.57040
    6.2     0.36000     0.01067     1  8  px   0.33570    1  9  px   0.57040
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 22 22200a      0.97979608      0.00000000     -0.00000000
 22 222a00     -0.00000000      0.97053777      0.13437551
 22 2220a0      0.00000000     -0.13437551      0.97053777
 20 22220a     -0.14133437     -0.00000000      0.00000000
 20 22202a     -0.14133437     -0.00000000      0.00000000
 20 2222a0     -0.00000000      0.01938350     -0.13999887
 20 222a20      0.00000000     -0.13999887     -0.01938350
 20 2220a2     -0.00000000      0.01938350     -0.13999887
 20 222a02      0.00000000     -0.13999887     -0.01938350
 
 Energy:     -242.33079315   -242.33079315   -242.33079315
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.20       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.03       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         7.50      3.37      0.61      3.32
 REAL TIME  *        13.58 SEC
 DISK USED  *        45.30 MB (local),        1.82 GB (total)
 SF USED    *        45.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -242.3307932   2.0
    -242.3307932   2.0
    -242.3307932   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 13
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:      282 conf      516 CSFs
 N elec internal:      504 conf     1008 CSFs
 N-1 el internal:      784 conf     2688 CSFs
 N-2 el internal:     1016 conf     6048 CSFs

 Number of electrons in valence space:                     11
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces:  9


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     208 (  99 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  11

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -242.33079315
     2      -242.33079315
     3      -242.33079315

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.30D-04
 Number of N-2 electron functions:     192
 Number of N-1 electron functions:    2688

 Number of internal configurations:                  516
 Number of singly external configurations:        279712
 Number of doubly external configurations:       2080368
 Total number of contracted configurations:      2360596
 Total number of uncontracted configurations:   65629172

 Diagonal Coupling coefficients finished.               Storage:  463722 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  816746 words, CPU-time:      0.16 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -242.33079315    -0.00000000    -0.35231172  0.30D-01  0.16D-01     0.34
    1     2     2     1.00000000     0.00000000  -242.33079315     0.00000000    -0.35224546  0.30D-01  0.16D-01     0.34
    1     3     3     1.00000000     0.00000000  -242.33079315    -0.00000000    -0.35231127  0.30D-01  0.16D-01     0.34
    2     1     1     1.04164708    -0.33498046  -242.66577362    -0.33498046    -0.00391058  0.12D-02  0.23D-03     7.05
    2     2     2     1.04179460    -0.33494774  -242.66574089    -0.33494774    -0.00393831  0.12D-02  0.23D-03     7.05
    2     3     3     1.04179418    -0.33494761  -242.66574077    -0.33494761    -0.00393837  0.12D-02  0.23D-03     7.05
    3     1     1     1.03424137    -0.34038990  -242.67118306    -0.00540944    -0.00094181  0.64D-04  0.95D-04    13.39
    3     2     2     1.03421054    -0.34038588  -242.67117903    -0.00543814    -0.00094127  0.64D-04  0.96D-04    13.39
    3     3     3     1.03421039    -0.34038584  -242.67117900    -0.00543823    -0.00094128  0.64D-04  0.96D-04    13.39
    4     1     1     1.03695651    -0.34273066  -242.67352381    -0.00234076    -0.00034762  0.55D-04  0.27D-04    19.71
    4     2     2     1.03695140    -0.34272931  -242.67352246    -0.00234343    -0.00034847  0.55D-04  0.27D-04    19.71
    4     3     3     1.03695140    -0.34272930  -242.67352246    -0.00234346    -0.00034848  0.55D-04  0.27D-04    19.71
    5     1     1     1.03900642    -0.34321033  -242.67400348    -0.00047967    -0.00008527  0.71D-05  0.88D-05    26.08
    5     2     2     1.03901944    -0.34321009  -242.67400324    -0.00048078    -0.00008541  0.73D-05  0.88D-05    26.08
    5     3     3     1.03901940    -0.34321008  -242.67400324    -0.00048078    -0.00008542  0.73D-05  0.88D-05    26.08
    6     1     1     1.03875201    -0.34333136  -242.67412452    -0.00012103    -0.00003461  0.18D-05  0.38D-05    32.43
    6     2     2     1.03874725    -0.34333131  -242.67412447    -0.00012123    -0.00003462  0.18D-05  0.38D-05    32.43
    6     3     3     1.03874729    -0.34333131  -242.67412446    -0.00012123    -0.00003462  0.18D-05  0.38D-05    32.43
    7     1     1     1.03886620    -0.34338542  -242.67417858    -0.00005406    -0.00001618  0.17D-05  0.14D-05    38.80
    7     2     2     1.03886202    -0.34338539  -242.67417855    -0.00005408    -0.00001619  0.18D-05  0.14D-05    38.80
    7     3     3     1.03886201    -0.34338539  -242.67417855    -0.00005408    -0.00001619  0.18D-05  0.14D-05    38.80
    8     1     1     1.03931254    -0.34340839  -242.67420155    -0.00002297    -0.00000647  0.38D-06  0.67D-06    45.18
    8     2     2     1.03931547    -0.34340838  -242.67420154    -0.00002299    -0.00000647  0.39D-06  0.67D-06    45.18
    8     3     3     1.03931545    -0.34340838  -242.67420154    -0.00002299    -0.00000647  0.39D-06  0.67D-06    45.18
    9     1     1     1.03936358    -0.34341700  -242.67421016    -0.00000861    -0.00000309  0.13D-06  0.38D-06    51.53
    9     2     2     1.03936359    -0.34341700  -242.67421016    -0.00000862    -0.00000309  0.13D-06  0.38D-06    51.53
    9     3     3     1.03936335    -0.34341700  -242.67421016    -0.00000862    -0.00000309  0.13D-06  0.38D-06    51.53
   10     1     1     1.03937198    -0.34342118  -242.67421433    -0.00000417    -0.00000162  0.85D-07  0.18D-06    57.88
   10     2     2     1.03937074    -0.34342118  -242.67421433    -0.00000417    -0.00000162  0.87D-07  0.18D-06    57.88
   10     3     3     1.03937073    -0.34342118  -242.67421433    -0.00000417    -0.00000162  0.87D-07  0.18D-06    57.88
   11     1     1     1.03945779    -0.34342330  -242.67421645    -0.00000212    -0.00000078  0.15D-07  0.96D-07    64.23
   11     2     2     1.03945759    -0.34342330  -242.67421645    -0.00000212    -0.00000078  0.15D-07  0.96D-07    64.23
   11     3     3     1.03945778    -0.34342330  -242.67421645    -0.00000212    -0.00000078  0.15D-07  0.96D-07    64.23
   12     1     1     1.03949569    -0.34342423  -242.67421739    -0.00000093    -0.00000038  0.10D-07  0.48D-07    70.57
   12     2     2     1.03949569    -0.34342423  -242.67421739    -0.00000093    -0.00000038  0.10D-07  0.48D-07    70.57
   12     3     3     1.03949539    -0.34342423  -242.67421739    -0.00000093    -0.00000038  0.10D-07  0.48D-07    70.57
   13     1     1     1.03950629    -0.34342474  -242.67421790    -0.00000051    -0.00000021  0.53D-08  0.26D-07    76.93
   13     2     2     1.03950629    -0.34342474  -242.67421790    -0.00000051    -0.00000021  0.53D-08  0.26D-07    76.93
   13     3     3     1.03950645    -0.34342474  -242.67421790    -0.00000051    -0.00000021  0.53D-08  0.26D-07    76.93
   14     1     1     1.03952484    -0.34342500  -242.67421816    -0.00000026    -0.00000012  0.63D-09  0.16D-07    83.28
   14     2     2     1.03952485    -0.34342500  -242.67421816    -0.00000026    -0.00000012  0.63D-09  0.16D-07    83.28
   14     3     3     1.03952489    -0.34342500  -242.67421816    -0.00000026    -0.00000012  0.62D-09  0.16D-07    83.28
   15     1     1     1.03953824    -0.34342513  -242.67421829    -0.00000013    -0.00000006  0.96D-09  0.71D-08    89.62
   15     2     2     1.03953824    -0.34342513  -242.67421829    -0.00000013    -0.00000006  0.96D-09  0.71D-08    89.62
   15     3     3     1.03953818    -0.34342513  -242.67421829    -0.00000013    -0.00000006  0.96D-09  0.71D-08    89.62


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   1.1%
 P   0.3%  10.5%  24.5%

 Initialization:   0.3%
 Other:           63.0%

 Total CPU:       89.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222/00          -0.0000000   0.0000000   0.9642781
 2222200/           0.9642781  -0.0000000  -0.0000000
 222220/0           0.0000000   0.9642781  -0.0000000
 202220/2           0.0000000  -0.1266396  -0.0000000
 2022202/          -0.1266396  -0.0000000  -0.0000000
 20222/02          -0.0000000   0.0000000  -0.1266396
 20222/20          -0.0000000   0.0000000  -0.1266396
 202222/0           0.0000000  -0.1266396  -0.0000000
 2022220/          -0.1266396  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.980641   -0.000000    0.000000
 2          -0.000000    0.000000    0.980641
 3          -0.000000    0.980641   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.980641   -0.000000   -0.000000
 2          -0.000000    0.980641   -0.000000
 3          -0.000000   -0.000000    0.980641


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.98064079 (fixed)   0.98079844 (relaxed)   0.98064079 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032156    0.00000000   -0.30023352
 Singles      0.01801177   -0.03133098   -0.03607477
 Pairs        0.02153918    0.00000000   -0.00711684
 Total        1.03987251   -0.03133098   -0.34342513
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.33079315
 Nuclear energy                         0.00000000
 Kinetic energy                       245.39086840
 One electron energy                 -337.06604326
 Two electron energy                   94.39182497
 Virial quotient                       -0.98892929
 Correlation energy                    -0.34342513
 !MRCI STATE 1.2 Energy              -242.674218287216

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.68791151 (Davidson, fixed reference)
 Cluster corrected energies          -242.68779671 (Davidson, relaxed reference)
 Cluster corrected energies          -242.68791151 (Davidson, rotated reference)

 Cluster corrected energies          -242.68543836 (Pople, fixed reference)
 Cluster corrected energies          -242.68534207 (Pople, relaxed reference)
 Cluster corrected energies          -242.68543836 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98064078 (fixed)   0.98079844 (relaxed)   0.98064078 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032156    0.00000000   -0.00010620
 Singles      0.01801177   -0.03133098   -0.03607477
 Pairs        0.02153918   -0.31209415   -0.30724416
 Total        1.03987251   -0.34342513   -0.34342513
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.33079315
 Nuclear energy                         0.00000000
 Kinetic energy                       245.39086808
 One electron energy                 -337.06604309
 Two electron energy                   94.39182480
 Virial quotient                       -0.98892930
 Correlation energy                    -0.34342513
 !MRCI STATE 2.2 Energy              -242.674218287204

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.68791151 (Davidson, fixed reference)
 Cluster corrected energies          -242.68779671 (Davidson, relaxed reference)
 Cluster corrected energies          -242.68791151 (Davidson, rotated reference)

 Cluster corrected energies          -242.68543836 (Pople, fixed reference)
 Cluster corrected energies          -242.68534207 (Pople, relaxed reference)
 Cluster corrected energies          -242.68543836 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98064081 (fixed)   0.98079846 (relaxed)   0.98064081 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032156    0.00000000   -0.30023357
 Singles      0.01801172   -0.03133095   -0.03607476
 Pairs        0.02153918   -0.00000000   -0.00711681
 Total        1.03987245   -0.03133095   -0.34342513
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.33079315
 Nuclear energy                         0.00000000
 Kinetic energy                       245.39086703
 One electron energy                 -337.06604309
 Two electron energy                   94.39182481
 Virial quotient                       -0.98892930
 Correlation energy                    -0.34342513
 !MRCI STATE 3.2 Energy              -242.674218287121

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.68791149 (Davidson, fixed reference)
 Cluster corrected energies          -242.68779669 (Davidson, relaxed reference)
 Cluster corrected energies          -242.68791149 (Davidson, rotated reference)

 Cluster corrected energies          -242.68543835 (Pople, fixed reference)
 Cluster corrected energies          -242.68534205 (Pople, relaxed reference)
 Cluster corrected energies          -242.68543835 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.20       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       57.18       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        97.87     90.35      3.37      0.61      3.32
 REAL TIME  *       111.96 SEC
 DISK USED  *       100.46 MB (local),        3.43 GB (total)
 SF USED    *       553.48 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -242.68791151  AU                              
 SETTING HLSDIAG(2)     =      -242.68791151  AU                              
 SETTING HLSDIAG(3)     =      -242.68791149  AU                              


         HLSDIAG
    -242.6879115
    -242.6879115
    -242.6879115
                                                  


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

 Time for Seward_LS:      13.50 sec

       38629918. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    40678 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     13.51 sec, REAL time:     14.10 sec


 SORTLS1 read   166536799. and wrote   166536799. SO integrals in   675 records. CPU time:      1.02 sec, REAL time:      2.17 sec
 SORTLS2 read   166536799. and wrote   166536799. SO integrals in    90 records. CPU time:      0.26 sec, REAL time:      0.66 sec

 FILE SIZES: FILE 1:  2711.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2711.5 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -242.674218   -242.674218   -242.674218
 Replaced energies:   -242.687912   -242.687912   -242.687911



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -242.68791151

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00      38.95
                            0.00     -38.95       0.00      -0.00      -0.00      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00
                           38.95      -0.00       0.00       0.00       0.00     -38.95

    3   3.2  0.5  0.5       0.00       0.00       0.00     -38.95       0.00      -0.00
                           -0.00      -0.00       0.00       0.00      38.95      -0.00

    4   1.2  0.5 -0.5      -0.00       0.00     -38.95       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      38.95      -0.00

    5   2.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -38.95     -38.95       0.00      -0.00

    6   3.2  0.5 -0.5      38.95      -0.00      -0.00       0.00       0.00       0.00
                            0.00      38.95       0.00       0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -242.68826646    -0.00035495      -77.90      0.00000000        0.00      0.0000
     2  -242.68826646    -0.00035495      -77.90      0.00000000        0.00      0.0000
     3  -242.68773403     0.00017748       38.95      0.00053244      116.86      0.0145
     4  -242.68773403     0.00017748       38.95      0.00053244      116.86      0.0145
     5  -242.68773402     0.00017749       38.96      0.00053245      116.86      0.0145
     6  -242.68773402     0.00017749       38.96      0.00053245      116.86      0.0145


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5  -0.577356955  -0.000000000   0.704674837  -0.030326740   0.410523177  -0.025363961
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000001
                         0.577357161  -0.000000000   0.708217554  -0.030479206  -0.404392585   0.024985184

    3    3.2  0.5  0.5  -0.000000000   0.567598674  -0.000152482  -0.003543090   0.021248288   0.343909792
                         0.000000000   0.105590720   0.000000234   0.000005419   0.045647843   0.738823800

    4    1.2  0.5 -0.5   0.000000000   0.567618596  -0.030326704  -0.704674013  -0.010703691  -0.173242397
                         0.000000000   0.105594426   0.000046383   0.001077750  -0.022994815  -0.372177848

    5    2.2  0.5 -0.5  -0.000000000  -0.105594464   0.000046617   0.001083168   0.022651418   0.366619890
                         0.000000000   0.567618799   0.030479170   0.708216726  -0.010543847  -0.170655263

    6    3.2  0.5 -0.5   0.577336691  -0.000000000  -0.003543094   0.000152482   0.814944509  -0.050350922
                         0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000001


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5  33.334%   0.000%  49.657%   0.092%  16.853%   0.064%
    2    2.2  0.5  0.5  33.334%   0.000%  50.157%   0.093%  16.353%   0.062%
    3    3.2  0.5  0.5   0.000%  33.332%   0.000%   0.001%   0.254%  66.413%
    4    1.2  0.5 -0.5   0.000%  33.334%   0.092%  49.657%   0.064%  16.853%
    5    2.2  0.5 -0.5   0.000%  33.334%   0.093%  50.157%   0.062%  16.353%
    6    3.2  0.5 -0.5  33.332%   0.000%   0.001%   0.000%  66.413%   0.254%


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
              1      24     2585.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       57.18       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       151.24     53.34     90.35      3.37      0.61      3.32
 REAL TIME  *       170.86 SEC
 DISK USED  *       100.74 MB (local),        8.20 GB (total)
 SF USED    *         2.72 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -242.687734015543

              CI           MULTI         RHF-SCF
   -242.67421829   -242.33079315   -242.31256557
 **********************************************************************************************************************************
 Molpro calculation terminated
