
 Working directory              : /wrk/irikura/molpro.9SG7i8dxa0/
 Global scratch directory       : /wrk/irikura/molpro.9SG7i8dxa0/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.9SG7i8dxa0/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Te SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Te};
 
 basis=AWCV5Z-PP
 
 NT=3
 NS=6
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,7,3
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Te SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 25-Jan-25          TIME: 10:30:04  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  42000 MW

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

 Library entry Te   ECP ECP28MDF                 selected for group  1
 Library entry TE     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TE     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TE     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TE     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TE     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TE     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TE     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  TE     24.00    0.000000000    0.000000000    0.000000000

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

         1 0.550E-05 0.287E-04 0.219E-03 0.219E-03 0.219E-03 0.219E-03 0.219E-03 0.287E-03
         2 0.224E-06 0.224E-06 0.224E-06 0.404E-03 0.404E-03 0.404E-03 0.264E-02 0.264E-02


 Contracted 2-electron integrals neglected if value below      1.0D-14
 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     747.635 MB (compressed) written to integral file ( 18.2%)

     Node minimum: 15.204 MB, node maximum: 39.584 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   11155044.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   11155044      RECORD LENGTH: 524288

 Memory used in sort:      11.71 MW

 SORT1 READ   511790813. AND WROTE     1880642. INTEGRALS IN      6 RECORDS. CPU TIME:     3.71 SEC, REAL TIME:     3.80 SEC
 SORT2 READ    53582289. AND WROTE   312900871. INTEGRALS IN   3304 RECORDS. CPU TIME:     0.21 SEC, REAL TIME:     0.25 SEC

 Node minimum:    11150627.  Node maximum:    11188428. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.49      8.18
 REAL TIME  *         9.94 SEC
 DISK USED  *        30.88 MB (local),        2.11 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -266.67494475    -266.67494475     0.00D+00     0.48D-01     0     0       0.07      0.15    start
   2     -266.71783666      -0.04289191     0.28D-02     0.29D-02     1     0       0.08      0.23    diag2
   3     -266.72026865      -0.00243199     0.15D-02     0.62D-03     2     0       0.08      0.31    diag2
   4     -266.72071070      -0.00044204     0.29D-03     0.39D-03     3     0       0.08      0.39    diag2
   5     -266.72073546      -0.00002476     0.63D-04     0.15D-03     4     0       0.08      0.47    diag2
   6     -266.72073561      -0.00000015     0.65D-05     0.25D-04     5     0       0.09      0.56    diag2
   7     -266.72073561      -0.00000000     0.81D-06     0.25D-05     6     0       0.08      0.64    diag2
   8     -266.72073561      -0.00000000     0.56D-07     0.22D-06     0     0       0.08      0.72    fixocc

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -266.720735613169
  RHF One-electron energy            -459.058929987220
  RHF Two-electron energy             192.338194374051
  RHF Kinetic energy                  102.493373239957
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.602321761708

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45861     1  1  s    1.00013
    2.1     2.00000    -2.27825     1  1  d2+  0.66745    1  1  d1-  0.65684
    3.1     2.00000    -2.27825     1  1  d2-  0.85498    1  1  d1+ -0.39725    1  1  d2+ -0.32864
    4.1     2.00000    -2.27825     1  1  d0  -0.65847    1  1  d1+  0.70118
    5.1     2.00000    -2.27825     1  1  d0   0.56799    1  1  d2-  0.45176    1  1  d1+  0.50178    1  1  d2+  0.44580
    6.1     2.00000    -2.27825     1  1  d0   0.42606    1  1  d2+ -0.47962    1  1  d1-  0.73248
    7.1     2.00000    -1.03500     1  1  s   -0.44110    1  5  s    0.66279    1  6  s    0.50406
    1.2     2.00000    -5.42335     1  1  py   0.95139    1  1  pz  -0.30885
    2.2     2.00000    -5.42335     1  1  px   1.00009
    3.2     2.00000    -5.42335     1  1  py   0.30867    1  1  pz   0.95128
    4.2     1.00000    -0.69090     1  1  py  -0.33352    1  4  py   0.27001    1  5  py   0.57290    1  6  py   0.32292
    5.2     1.00000    -0.69090     1  1  px  -0.33365    1  4  px   0.27011    1  5  px   0.57311    1  6  px   0.32305
    6.2     1.00000    -0.69090     1  1  pz  -0.33352    1  4  pz   0.27001    1  5  pz   0.57290    1  6  pz   0.32292


 HOMO      6.2    -0.690900 =     -18.8003eV
 LUMO      8.1    -0.114570 =      -3.1176eV
 LUMO-HOMO         0.576330 =      15.6827eV

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
 CPU TIMES  *         9.23      0.73      8.18
 REAL TIME  *        10.75 SEC
 DISK USED  *        36.15 MB (local),        2.26 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        3 (    0    3)
 Number of external orbitals:     252 (  122  130)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 3 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               6   (9 determinants, 9 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.651D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.485D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.613D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.732D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.619D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 3 4 2 6 1 1 3 6   5 2 4 1 6 4 2 3 5 8  15111412 7 91310 4 6   2 3 5 1 8 9121115 7
                                       141013 4 3 2 6 5 111   913 815121410 7 3 4   6 2 5 11315 810 911   71214 3 4 6 5 22022
                                       23272617182528162421  1914151311 912 7 810   1 3 4 6 5 2 9131214  151011 8 7 1 3 4 2 5
                                        6 3 4 2 5 6 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.249D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.274D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.256D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.269D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.269D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 310 8 5 7 4 6 9 3   1 2 9 8 7 6 510 4 8  10 5 9 6 4 718201219
                                       11162114151713 2 3 1   8 9 5 4 6 710182017  1921161513141211 8 4   5 9 7 610 1 3 2 810
                                        9 7 5 4 61417132112  192011181516 1 3 210   4 8 7 9 6 515171118  19201221141613 2 1 3
                                        7 6 9 810 4 5 2 1 3   2 1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1643  ( 9 closed/active, 1244 closed/virtual, 0 active/active, 390 active/virtual )
 Total number of variables:    1706
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -266.92811571    -266.96205873   -0.03394302    0.22640053 0.00001750 0.00000000  0.20E+00      1.39
   2    5    8    0   -266.96321843    -266.96333831   -0.00011988    0.01277415 0.00000006 0.00000000  0.12E-01      2.88
   3    3    6    0   -266.96333860    -266.96333860   -0.00000000    0.00004956 0.00000000 0.00000000  0.42E-04      4.18
   4   11   22    0   -266.96333860    -266.96333860   -0.00000000    0.00000243 0.00000000 0.00000000  0.66E-09      5.66

 CONVERGENCE REACHED!  Final gradient:    0.00000022 ( 0.22E-06)
                       Final energy:   -266.96333860
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -266.999072557923
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66954417
 One electron energy                          -466.57968898
 Two electron energy                           199.58061642
 Virial ratio                                    3.60056743
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -266.999072557920
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66954417
 One electron energy                          -466.57968898
 Two electron energy                           199.58061642
 Virial ratio                                    3.60056743
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -266.999072557915
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66954417
 One electron energy                          -466.57968898
 Two electron energy                           199.58061642
 Virial ratio                                    3.60056743
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -266.956191805448
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66954417
 One electron energy                          -466.57968898
 Two electron energy                           199.62349717
 Virial ratio                                    3.60014977
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -266.956191805447
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66954417
 One electron energy                          -466.57968898
 Two electron energy                           199.62349717
 Virial ratio                                    3.60014977
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -266.956191805446
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66954417
 One electron energy                          -466.57968898
 Two electron energy                           199.62349718
 Virial ratio                                    3.60014977
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -266.956191805443
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66954417
 One electron energy                          -466.57968898
 Two electron energy                           199.62349718
 Virial ratio                                    3.60014977
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -266.956191805443
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66954417
 One electron energy                          -466.57968898
 Two electron energy                           199.62349718
 Virial ratio                                    3.60014977
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -266.891870676735
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66954417
 One electron energy                          -466.57968898
 Two electron energy                           199.68781830
 Virial ratio                                    3.59952328
 
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
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.066738318142
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.933225487221
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.522925474616
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.477210883147
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.410336207242
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.589563629631
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 6 3 5 1 1 4 2   6 3 5 1 4 2 6 3 5 9   7 8121114151013 4 2   6 3 5 1 9 7 8121114
                                       151013 4 2 6 3 5 1 9   7 8121114151310 4 2   6 3 5 1 9 7 8121114  151310 4 2 6 3 52825
                                       17212326272419182022  16 9 7 8121114151310   1 4 2 6 3 5 9 7 812  1114151310 1 4 2 6 3
                                        5 4 2 6 3 5 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 1 2 3   1 2 4 6 810 5 9 7 3   1 2 4 6 810 5 9 7 4   6 810 5 9 711192113
                                       14161215171820 3 1 2   4 6 810 5 9 7111921  1314161217152018 4 6   810 5 7 9 3 1 2 4 6
                                        810 5 9 71119211314  161215172018 3 1 2 4   610 8 5 9 711192113  16141215172018 3 1 2
                                        4 6 810 5 9 7 3 1 2   3 1 2 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.13758     1  1  s    0.99997
    2.1     2.00000    -1.95801     1  1  d1+  1.00009
    3.1     2.00000    -1.95801     1  1  d0   1.00009
    4.1     2.00000    -1.95801     1  1  d1-  1.00009
    5.1     2.00000    -1.95801     1  1  d2-  1.00009
    6.1     2.00000    -1.95801     1  1  d2+  1.00009
    7.1     2.00000    -0.75088     1  1  s   -0.42544    1  5  s    0.58172    1  6  s    0.51108
    1.2     2.00000    -5.10293     1  1  pz   1.00014
    2.2     2.00000    -5.10293     1  1  px   1.00014
    3.2     2.00000    -5.10293     1  1  py   1.00014
    4.2     1.33334    -0.24260     1  1  py  -0.30725    1  5  py   0.46027    1  6  py   0.38875
    5.2     1.33333    -0.24260     1  1  px  -0.30725    1  5  px   0.46027    1  6  px   0.38875
    6.2     1.33333    -0.24260     1  1  pz  -0.30725    1  5  pz   0.46027    1  6  pz   0.38875
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2aa            0.00000000      1.00000000     -0.00000000
 a2a           -0.00000000     -0.00000000      1.00000000
 aa2            1.00000000      0.00000000     -0.00000000
 
 Energy:     -266.99907256   -266.99907256   -266.99907256
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 202            0.80965648      0.00000000      0.00000000     -0.00000000     -0.10549448      0.57735027
 220           -0.31349210      0.00000000      0.00000000     -0.00000000      0.75392709      0.57735027
 a2b           -0.00000000     -0.00000000     -0.00000000      0.70710678     -0.00000000     -0.00000000
 2ba           -0.00000000     -0.00000000     -0.70710678      0.00000000     -0.00000000     -0.00000000
 2ab            0.00000000      0.00000000      0.70710678     -0.00000000      0.00000000      0.00000000
 ab2            0.00000000      0.70710678      0.00000000     -0.00000000      0.00000000      0.00000000
 b2a            0.00000000      0.00000000      0.00000000     -0.70710678      0.00000000      0.00000000
 ba2           -0.00000000     -0.70710678     -0.00000000      0.00000000     -0.00000000     -0.00000000
 022           -0.49616438      0.00000000      0.00000000     -0.00000000     -0.64843261      0.57735027
 
 Energy:     -266.95619181   -266.95619181   -266.95619181   -266.95619181   -266.95619181   -266.89187068
 


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
 CPU TIMES  *        14.74      5.50      0.73      8.18
 REAL TIME  *        17.73 SEC
 DISK USED  *        71.78 MB (local),        3.23 GB (total)
 SF USED    *        92.87 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -266.9990726   2.0
    -266.9990726   2.0
    -266.9990726   2.0
    -266.9561918   6.0
    -266.9561918   6.0
    -266.9561918   6.0
    -266.9561918   6.0
    -266.9561918   6.0
    -266.8918707  -0.0
                                                  


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


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        3 (   0   3 )
 Number of external orbitals:     252 ( 122 130 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.99907256
     2      -266.99907256
     3      -266.99907256

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         71136
 Number of doubly external configurations:       7813824
 Total number of contracted configurations:      7884996
 Total number of uncontracted configurations:   25232430

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1981079 words, CPU-time:      1.44 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.99907256     0.00000000    -1.16655900  0.35D-01  0.14D+00     1.79
    1     2     2     1.00000000     0.00000000  -266.99907256    -0.00000000    -1.16632183  0.34D-01  0.14D+00     1.79
    1     3     3     1.00000000     0.00000000  -266.99907256     0.00000000    -1.16644837  0.35D-01  0.14D+00     1.79
    2     1     1     1.11371553    -0.93020962  -267.92928218    -0.93020962    -0.03110599  0.34D-02  0.32D-02    25.83
    2     2     2     1.11380459    -0.93012312  -267.92919567    -0.93012312    -0.03119445  0.34D-02  0.32D-02    25.83
    2     3     3     1.11389323    -0.93000932  -267.92908188    -0.93000932    -0.03132504  0.35D-02  0.32D-02    25.83
    3     1     1     1.09508524    -0.95956341  -267.95863597    -0.02935379    -0.00044333  0.41D-04  0.57D-04    49.13
    3     2     2     1.09508367    -0.95956211  -267.95863467    -0.02943900    -0.00044464  0.41D-04  0.57D-04    49.13
    3     3     3     1.09508792    -0.95955790  -267.95863046    -0.02954858    -0.00044925  0.42D-04  0.57D-04    49.13
    4     1     1     1.09395789    -0.96001241  -267.95908497    -0.00044900    -0.00001078  0.16D-05  0.11D-05    72.84
    4     2     2     1.09395720    -0.96001241  -267.95908496    -0.00045029    -0.00001078  0.16D-05  0.11D-05    72.84
    4     3     3     1.09395717    -0.96001230  -267.95908486    -0.00045440    -0.00001088  0.16D-05  0.12D-05    72.84
    5     1     1     1.09392235    -0.96002378  -267.95909634    -0.00001137    -0.00000029  0.23D-07  0.39D-07    96.54
    5     2     2     1.09392231    -0.96002378  -267.95909634    -0.00001137    -0.00000029  0.23D-07  0.39D-07    96.54
    5     3     3     1.09392233    -0.96002377  -267.95909633    -0.00001148    -0.00000030  0.24D-07  0.39D-07    96.54
    6     1     1     1.09391599    -0.96002408  -267.95909664    -0.00000031    -0.00000001  0.10D-08  0.98D-09   120.26
    6     2     2     1.09391598    -0.96002408  -267.95909664    -0.00000031    -0.00000001  0.10D-08  0.98D-09   120.26
    6     3     3     1.09391596    -0.96002408  -267.95909664    -0.00000031    -0.00000001  0.11D-08  0.99D-09   120.26


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.2%
 P   0.5%  10.7%  12.6%

 Initialization:   1.3%
 Other:           74.7%

 Total CPU:      120.3 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//2           0.0000000   0.0000000   0.9561081
 2222222222/2/           0.0000000   0.9561081   0.0000000
 22222222222//           0.9561081   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.956108    0.000000
 2           0.000000    0.000000    0.956108
 3           0.956108    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956108    0.000000    0.000000
 2           0.000000    0.956108    0.000000
 3           0.000000    0.000000    0.956108


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95610810 (fixed)   0.95610810 (relaxed)   0.95610810 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000468   -0.00002780   -0.84371888
 Singles      0.01070692   -0.03706669   -0.04328223
 Pairs        0.08320951    0.00000000   -0.07302298
 Total        1.09392111   -0.03709448   -0.96002408
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99907256
 Nuclear energy                         0.00000000
 Kinetic energy                       103.62044046
 One electron energy                 -466.26518644
 Two electron energy                  198.30608980
 Virial quotient                       -2.58596755
 Correlation energy                    -0.96002408
 !MRCI STATE 1.1 Energy              -267.959096642447

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.04926317 (Davidson, fixed reference)
 Cluster corrected energies          -268.04926317 (Davidson, relaxed reference)
 Cluster corrected energies          -268.04926317 (Davidson, rotated reference)

 Cluster corrected energies          -268.04781363 (Pople, fixed reference)
 Cluster corrected energies          -268.04781363 (Pople, relaxed reference)
 Cluster corrected energies          -268.04781363 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95610811 (fixed)   0.95610811 (relaxed)   0.95610811 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000468   -0.00002780   -0.00002952
 Singles      0.01070688   -0.03706666   -0.04328220
 Pairs        0.08320953   -0.92292962   -0.91671236
 Total        1.09392110   -0.96002408   -0.96002408
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99907256
 Nuclear energy                         0.00000000
 Kinetic energy                       103.62044097
 One electron energy                 -466.26518640
 Two electron energy                  198.30608975
 Virial quotient                       -2.58596754
 Correlation energy                    -0.96002408
 !MRCI STATE 2.1 Energy              -267.959096642432

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.04926316 (Davidson, fixed reference)
 Cluster corrected energies          -268.04926316 (Davidson, relaxed reference)
 Cluster corrected energies          -268.04926316 (Davidson, rotated reference)

 Cluster corrected energies          -268.04781362 (Pople, fixed reference)
 Cluster corrected energies          -268.04781362 (Pople, relaxed reference)
 Cluster corrected energies          -268.04781362 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95610812 (fixed)   0.95610812 (relaxed)   0.95610812 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000468   -0.00002780   -0.84371900
 Singles      0.01070682   -0.03706658   -0.04328214
 Pairs        0.08320958   -0.00000000   -0.07302295
 Total        1.09392108   -0.03709438   -0.96002408
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99907256
 Nuclear energy                         0.00000000
 Kinetic energy                       103.62044231
 One electron energy                 -466.26518772
 Two electron energy                  198.30609107
 Virial quotient                       -2.58596750
 Correlation energy                    -0.96002408
 !MRCI STATE 3.1 Energy              -267.959096642376

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.04926314 (Davidson, fixed reference)
 Cluster corrected energies          -268.04926314 (Davidson, relaxed reference)
 Cluster corrected energies          -268.04926314 (Davidson, rotated reference)

 Cluster corrected energies          -268.04781360 (Pople, fixed reference)
 Cluster corrected energies          -268.04781360 (Pople, relaxed reference)
 Cluster corrected energies          -268.04781360 (Pople, rotated reference)



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
 CPU TIMES  *       137.28    122.51      5.50      0.73      8.18
 REAL TIME  *       151.31 SEC
 DISK USED  *       255.67 MB (local),        8.26 GB (total)
 SF USED    *         1.76 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -268.04926317  AU                              
 SETTING HLSDIAG(2)     =      -268.04926316  AU                              
 SETTING HLSDIAG(3)     =      -268.04926314  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 24
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        6 conf        6 CSFs
 N elec internal:       91 conf       91 CSFs
 N-1 el internal:      232 conf      398 CSFs
 N-2 el internal:      406 conf     1214 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        3 (   0   3 )
 Number of external orbitals:     252 ( 122 130 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.95619181
     2      -266.95619181
     3      -266.95619181
     4      -266.95619181
     5      -266.95619181
     6      -266.89187068

 Number of blocks in overlap matrix:   708   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     769
 Number of N-1 electron functions:     398

 Number of internal configurations:                   49
 Number of singly external configurations:         50228
 Number of doubly external configurations:      12217238
 Total number of contracted configurations:     12267515
 Total number of uncontracted configurations:   19319953

 Diagonal Coupling coefficients finished.               Storage:    422353 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2078074 words, CPU-time:      2.35 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.95619181    -0.00000000    -1.17533868  0.37D-01  0.15D+00     2.81
    1     2     2     1.00000000     0.00000000  -266.95619181    -0.00000000    -1.17483048  0.37D-01  0.15D+00     2.81
    1     3     3     1.00000000     0.00000000  -266.95619181    -0.00000000    -1.17607043  0.37D-01  0.15D+00     2.81
    1     4     4     1.00000000     0.00000000  -266.95619181    -0.00000000    -1.17505270  0.37D-01  0.15D+00     2.81
    1     5     5     1.00000000     0.00000000  -266.95619181    -0.00000000    -1.17582457  0.37D-01  0.15D+00     2.81
    1     6     6     1.00000000     0.00000000  -266.89187068    -0.00000000    -1.17044959  0.10D-01  0.16D+00     2.81
    2     1     1     1.11618453    -0.93653549  -267.89272730    -0.93653549    -0.03143442  0.33D-02  0.33D-02    75.53
    2     2     2     1.11622893    -0.93635106  -267.89254287    -0.93635106    -0.03167785  0.34D-02  0.33D-02    75.53
    2     3     3     1.11638212    -0.93634467  -267.89253648    -0.93634467    -0.03163297  0.33D-02  0.33D-02    75.53
    2     4     4     1.11656026    -0.93610918  -267.89230098    -0.93610918    -0.03189626  0.33D-02  0.34D-02    75.53
    2     5     5     1.11665361    -0.93595570  -267.89214750    -0.93595570    -0.03208059  0.34D-02  0.34D-02    75.53
    2     6     6     1.11027096    -0.94378200  -267.83565268    -0.94378200    -0.03152880  0.24D-02  0.42D-02    75.53
    3     1     1     1.09781829    -0.96603983  -267.92223164    -0.02950434    -0.00050071  0.49D-04  0.64D-04   148.60
    3     2     2     1.09782241    -0.96603955  -267.92223136    -0.02968849    -0.00050133  0.49D-04  0.64D-04   148.60
    3     3     3     1.09782125    -0.96603662  -267.92222842    -0.02969195    -0.00050451  0.48D-04  0.65D-04   148.60
    3     4     4     1.09781984    -0.96603250  -267.92222430    -0.02992332    -0.00050930  0.50D-04  0.65D-04   148.60
    3     5     5     1.09782636    -0.96603139  -267.92222320    -0.03007569    -0.00051015  0.49D-04  0.66D-04   148.60
    3     6     6     1.09468538    -0.97328068  -267.86515136    -0.02949868    -0.00049381  0.20D-04  0.84D-04   148.60
    4     1     1     1.09652370    -0.96654254  -267.92273435    -0.00050271    -0.00001496  0.22D-05  0.16D-05   221.81
    4     2     2     1.09652426    -0.96654248  -267.92273429    -0.00050293    -0.00001501  0.22D-05  0.16D-05   221.81
    4     3     3     1.09652437    -0.96654239  -267.92273420    -0.00050577    -0.00001510  0.22D-05  0.16D-05   221.81
    4     4     4     1.09652475    -0.96654228  -267.92273408    -0.00050978    -0.00001518  0.22D-05  0.16D-05   221.81
    4     5     5     1.09652766    -0.96654198  -267.92273379    -0.00051059    -0.00001546  0.23D-05  0.17D-05   221.81
    4     6     6     1.09364415    -0.97377201  -267.86564269    -0.00049133    -0.00001371  0.23D-05  0.16D-05   221.81
    5     1     1     1.09644108    -0.96655822  -267.92275002    -0.00001567    -0.00000047  0.42D-07  0.62D-07   294.36
    5     2     2     1.09644084    -0.96655822  -267.92275002    -0.00001574    -0.00000047  0.42D-07  0.62D-07   294.36
    5     3     3     1.09644109    -0.96655821  -267.92275002    -0.00001582    -0.00000047  0.43D-07  0.63D-07   294.36
    5     4     4     1.09644015    -0.96655821  -267.92275002    -0.00001593    -0.00000047  0.42D-07  0.62D-07   294.36
    5     5     5     1.09644042    -0.96655820  -267.92275000    -0.00001621    -0.00000048  0.45D-07  0.63D-07   294.36
    5     6     6     1.09367471    -0.97378644  -267.86565711    -0.00001443    -0.00000042  0.35D-07  0.58D-07   294.36
    6     1     1     1.09642520    -0.96655869  -267.92275050    -0.00000048    -0.00000001  0.74D-09  0.17D-08   367.85
    6     2     2     1.09642524    -0.96655869  -267.92275050    -0.00000048    -0.00000001  0.74D-09  0.18D-08   367.85
    6     3     3     1.09642507    -0.96655869  -267.92275050    -0.00000048    -0.00000001  0.76D-09  0.17D-08   367.85
    6     4     4     1.09642524    -0.96655869  -267.92275050    -0.00000048    -0.00000001  0.76D-09  0.18D-08   367.85
    6     5     5     1.09642514    -0.96655869  -267.92275050    -0.00000050    -0.00000001  0.83D-09  0.17D-08   367.85
    6     6     6     1.09367028    -0.97378687  -267.86565754    -0.00000043    -0.00000001  0.94D-09  0.17D-08   367.85


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.5%   9.3%  14.5%

 Initialization:   0.6%
 Other:           75.0%

 Total CPU:      367.9 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\2           0.9549650  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 22222222222/\          -0.0000000   0.0000000   0.0000000   0.9549650  -0.0000000  -0.0000000
 2222222222/2\           0.0000000   0.9549650  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222222222220          -0.0000000   0.0000000  -0.1971497   0.0000000   0.7543899   0.5507163
 2222222222022          -0.0000000   0.0000000   0.7518957   0.0000000  -0.2064583   0.5507162
 2222222222202          -0.0000000   0.0000000  -0.5547460   0.0000000  -0.5479315   0.5507163

  Internal coefficients greater than 0.0500000
 =============================================
 2222220222222           0.0000000  -0.0000000   0.0000001  -0.0000000  -0.0000000  -0.0666856

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.954965    0.000000   -0.000000    0.000000    0.000000   -0.000000
 2          -0.000000   -0.000000    0.000000   -0.000000    0.954965    0.000000
 3           0.000000   -0.923935    0.000000   -0.241458   -0.000000    0.000000
 4           0.000000    0.000000    0.954965    0.000000   -0.000000    0.000000
 5          -0.000000   -0.241458   -0.000000    0.923935    0.000000    0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.953869

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954965    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.954965   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.954965   -0.000000   -0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.954965   -0.000000    0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.954965    0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.953869


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95496499 (fixed)   0.95496499 (relaxed)   0.95496499 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010614   -0.00036230   -0.84461508
 Singles      0.01225156   -0.04050573   -0.04773841
 Pairs        0.08418387    0.00000000   -0.07420520
 Total        1.09654157   -0.04086804   -0.96655869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95619181
 Nuclear energy                         0.00000000
 Kinetic energy                       103.61585630
 One electron energy                 -466.22820686
 Two electron energy                  198.30545636
 Virial quotient                       -2.58573118
 Correlation energy                    -0.96655869
 !MRCI STATE 1.1 Energy              -267.922750499734

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01606359 (Davidson, fixed reference)
 Cluster corrected energies          -268.01606359 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01606359 (Davidson, rotated reference)

 Cluster corrected energies          -268.01569294 (Pople, fixed reference)
 Cluster corrected energies          -268.01569294 (Pople, relaxed reference)
 Cluster corrected energies          -268.01569294 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95496497 (fixed)   0.95496497 (relaxed)   0.95496497 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010614   -0.00036230   -0.84461492
 Singles      0.01225164   -0.04050587   -0.04773851
 Pairs        0.08418384   -0.00000000   -0.07420526
 Total        1.09654161   -0.04086818   -0.96655869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95619181
 Nuclear energy                         0.00000000
 Kinetic energy                       103.61585575
 One electron energy                 -466.22820832
 Two electron energy                  198.30545782
 Virial quotient                       -2.58573119
 Correlation energy                    -0.96655869
 !MRCI STATE 2.1 Energy              -267.922750499660

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01606363 (Davidson, fixed reference)
 Cluster corrected energies          -268.01606363 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01606363 (Davidson, rotated reference)

 Cluster corrected energies          -268.01569299 (Pople, fixed reference)
 Cluster corrected energies          -268.01569299 (Pople, relaxed reference)
 Cluster corrected energies          -268.01569299 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.92393520 (fixed)   0.95496505 (relaxed)   0.95496505 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010614   -0.00036230   -0.84461534
 Singles      0.01225135   -0.04050554   -0.04773821
 Pairs        0.08418395   -0.00000002   -0.07420514
 Total        1.09654144   -0.04086787   -0.96655869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95619181
 Nuclear energy                         0.00000000
 Kinetic energy                       103.61586085
 One electron energy                 -466.22819770
 Two electron energy                  198.30544720
 Virial quotient                       -2.58573107
 Correlation energy                    -0.96655869
 !MRCI STATE 3.1 Energy              -267.922750499639

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01606346 (Davidson, fixed reference)
 Cluster corrected energies          -268.01606346 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01606346 (Davidson, rotated reference)

 Cluster corrected energies          -268.01569280 (Pople, fixed reference)
 Cluster corrected energies          -268.01569280 (Pople, relaxed reference)
 Cluster corrected energies          -268.01569280 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95496497 (fixed)   0.95496497 (relaxed)   0.95496497 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010614   -0.00036230   -0.84461490
 Singles      0.01225167   -0.04050590   -0.04773854
 Pairs        0.08418381   -0.00000000   -0.07420525
 Total        1.09654161   -0.04086820   -0.96655869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95619181
 Nuclear energy                         0.00000000
 Kinetic energy                       103.61585733
 One electron energy                 -466.22820960
 Two electron energy                  198.30545910
 Virial quotient                       -2.58573116
 Correlation energy                    -0.96655869
 !MRCI STATE 4.1 Energy              -267.922750499489

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01606363 (Davidson, fixed reference)
 Cluster corrected energies          -268.01606363 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01606363 (Davidson, rotated reference)

 Cluster corrected energies          -268.01569299 (Pople, fixed reference)
 Cluster corrected energies          -268.01569299 (Pople, relaxed reference)
 Cluster corrected energies          -268.01569299 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.92393517 (fixed)   0.95496501 (relaxed)   0.95496501 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010614   -0.00036230   -0.84461529
 Singles      0.01225140   -0.04050556   -0.04773826
 Pairs        0.08418398    0.00000001   -0.07420514
 Total        1.09654151   -0.04086786   -0.96655869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95619181
 Nuclear energy                         0.00000000
 Kinetic energy                       103.61586367
 One electron energy                 -466.22819883
 Two electron energy                  198.30544833
 Virial quotient                       -2.58573100
 Correlation energy                    -0.96655869
 !MRCI STATE 5.1 Energy              -267.922750499202

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01606354 (Davidson, fixed reference)
 Cluster corrected energies          -268.01606354 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01606354 (Davidson, rotated reference)

 Cluster corrected energies          -268.01569288 (Pople, fixed reference)
 Cluster corrected energies          -268.01569288 (Pople, relaxed reference)
 Cluster corrected energies          -268.01569288 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95386857 (fixed)   0.95386857 (relaxed)   0.95386857 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00493161   -0.00997611   -0.01344639
 Singles      0.00431822   -0.02357364   -0.02527531
 Pairs        0.08981401   -0.94023712   -0.93506517
 Total        1.09906384   -0.97378687   -0.97378687
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.89187068
 Nuclear energy                         0.00000000
 Kinetic energy                       103.60769972
 One electron energy                 -466.16323187
 Two electron energy                  198.29757432
 Virial quotient                       -2.58538370
 Correlation energy                    -0.97378687
 !MRCI STATE 6.1 Energy              -267.865657543292

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.96212461 (Davidson, fixed reference)
 Cluster corrected energies          -267.96212461 (Davidson, relaxed reference)
 Cluster corrected energies          -267.96212461 (Davidson, rotated reference)

 Cluster corrected energies          -267.96195689 (Pople, fixed reference)
 Cluster corrected energies          -267.96195689 (Pople, relaxed reference)
 Cluster corrected energies          -267.96195689 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      752.62       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       518.49    381.19    122.51      5.50      0.73      8.18
 REAL TIME  *       568.08 SEC
 DISK USED  *       821.57 MB (local),       23.73 GB (total)
 SF USED    *         5.29 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -268.01606359  AU                              
 SETTING HLSDIAG(5)     =      -268.01606363  AU                              
 SETTING HLSDIAG(6)     =      -268.01606346  AU                              
 SETTING HLSDIAG(7)     =      -268.01606363  AU                              
 SETTING HLSDIAG(8)     =      -268.01606354  AU                              
 SETTING HLSDIAG(9)     =      -267.96212461  AU                              


         HLSDIAG
    -268.0492632
    -268.0492632
    -268.0492631
    -268.0160636
    -268.0160636
    -268.0160635
    -268.0160636
    -268.0160635
    -267.9621246
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -267.959097   -267.959097   -267.959097
 Replaced energies:   -268.049263   -268.049263   -268.049263

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -267.922750   -267.922750   -267.922750   -267.922750   -267.922750   -267.865658
 Replaced energies:   -268.016064   -268.016064   -268.016063   -268.016064   -268.016064   -267.962125



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -268.04926317

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1931.73       0.00      -0.00      -0.00    1365.94       0.00       0.00       0.00   -1371.59

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00    1365.94       0.00       0.00       0.00    1371.59
                        -1931.73      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01      -0.00   -1365.94       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00   -1365.94      -0.00      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00    1365.94       0.00       0.00       0.00      -0.00      -0.00    1365.94       0.00

    5   2.1  1.0  0.0      -0.00      -0.00   -1365.94       0.00       0.00       0.00       0.00      -0.00    1365.94       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

    6   3.1  1.0  0.0       0.00    1365.94       0.00       0.00       0.00       0.01      -0.00   -1365.94       0.00       0.00
                        -1365.94      -0.00       0.00      -0.00      -0.00       0.00   -1365.94      -0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00    1365.94       0.00   -1931.73      -0.00    1371.59

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00   -1365.94       0.00       0.00       0.00    1371.59
                           -0.00      -0.00      -0.00       0.00       0.00       0.00    1931.73       0.00      -0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00    1365.94       0.00       0.00       0.00       0.01      -0.00
                           -0.00      -0.00      -0.00   -1365.94      -0.00       0.00       0.00       0.00       0.00      -0.00

   10   1.1  0.0  0.0       0.00    1371.59      -0.00       0.00       0.00       0.00       0.00    1371.59      -0.00    7286.47
                         1371.59       0.00      -0.00      -0.00      -0.00       0.00   -1371.59      -0.00       0.00       0.00

   11   2.1  0.0  0.0      -0.00      -0.00   -1371.59       0.00       0.00       0.00      -0.00      -0.00   -1371.59       0.00
                           -0.00      -0.00       0.00   -1939.72       0.00      -0.00       0.00       0.00      -0.00      -0.00

   12   3.1  0.0  0.0    1527.24       0.00       0.00       0.00       0.00       0.00    1527.24       0.00       0.00       0.00
                            0.00   -1126.79       0.00       0.00       0.00    -566.32      -0.00    1126.79      -0.00      -0.00

   13   4.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00    1371.59       0.00    1939.72      -0.00      -0.00       0.00   -1371.59      -0.00

   14   5.1  0.0  0.0    -419.35       0.00      -0.00       0.00       0.00       0.00    -419.35       0.00      -0.00       0.00
                            0.00   -1112.95      -0.00      -0.00      -0.00    2167.01      -0.00    1112.95       0.00      -0.00

   15   6.1  0.0  0.0   -2251.58       0.00       0.00       0.00       0.00       0.00   -2251.58       0.00       0.00       0.00
                            0.00   -2251.58       0.00       0.00       0.00   -3184.22      -0.00    2251.58      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00    1527.24      -0.00    -419.35   -2251.58
                            0.00      -0.00      -0.00      -0.00      -0.00

    2   2.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00
                            0.00    1126.79       0.00    1112.95    2251.58

    3   3.1  1.0  1.0   -1371.59       0.00       0.00      -0.00       0.00
                           -0.00      -0.00   -1371.59       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         1939.72      -0.00      -0.00       0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -1939.72       0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00     566.32       0.00   -2167.01    3184.22

    7   1.1  1.0 -1.0      -0.00    1527.24      -0.00    -419.35   -2251.58
                           -0.00       0.00       0.00       0.00       0.00

    8   2.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00
                           -0.00   -1126.79      -0.00   -1112.95   -2251.58

    9   3.1  1.0 -1.0   -1371.59       0.00       0.00      -0.00       0.00
                            0.00       0.00    1371.59      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    7286.46       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    7286.49       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    7286.46       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    7286.48       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   19124.70
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -268.04926317 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    1931.729      -0.000    1931.728

    2    1  |1 1>+              0.000       0.002       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000   -1931.728      -0.000

    3    1  |1 1>+              0.000       0.000       0.006       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1931.729      -0.000       0.000      -0.000      -0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    1931.729       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.002       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.006       0.000    1931.729
                            -1931.729      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000    1931.728       0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    1931.729       0.000       0.002
                            -1931.728      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000   -1931.729       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>               0.000    1939.717      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000    1939.716       0.000

    2    1  |0 0>              -0.000      -0.000   -1939.717       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1939.720       0.000      -0.000      -0.000      -0.000

    3    1  |0 0>            2159.843       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -566.319       0.000   -1593.526

    4    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1939.720      -0.000       0.000      -0.000

    5    1  |0 0>            -593.057       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000    2167.008       0.000   -1573.949

    6    1  |0 0>           -3184.218       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -3184.218       0.000   -3184.218

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000      -0.000    2159.843      -0.000    -593.057   -3184.218
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000    1939.717      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000   -1939.717       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    1939.720      -0.000      -0.000       0.000      -0.000

    2    1  |1 0>           -1931.729       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000   -1939.720       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     566.319       0.000   -2167.008    3184.218

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1939.716       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    1593.526       0.000    1573.949    3184.218

    3    1  |1 1>-              0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000   -1939.718       0.000      -0.000

    1    1  |0 0>               0.000    7286.465       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    7286.456       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    7286.493       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    7286.456       0.000       0.000
                             1939.718      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    7286.477       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   19124.704
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -268.06150278    -0.01223961    -2686.28      0.00000000        0.00      0.0000
    2  -268.06150278    -0.01223961    -2686.28      0.00000000        0.00      0.0000
    3  -268.06150277    -0.01223960    -2686.28      0.00000001        0.00      0.0000
    4  -268.06150275    -0.01223958    -2686.28      0.00000003        0.01      0.0000
    5  -268.06150274    -0.01223957    -2686.28      0.00000004        0.01      0.0000
    6  -268.04046156     0.00880160     1931.73      0.02104121     4618.01      0.5726
    7  -268.04046155     0.00880162     1931.73      0.02104123     4618.02      0.5726
    8  -268.04046154     0.00880163     1931.73      0.02104124     4618.02      0.5726
    9  -268.03979064     0.00947253     2078.98      0.02171214     4765.26      0.5908
   10  -268.01262561     0.03663756     8041.01      0.04887717    10727.30      1.3300
   11  -268.01262561     0.03663756     8041.01      0.04887717    10727.30      1.3300
   12  -268.01262558     0.03663759     8041.02      0.04887720    10727.31      1.3300
   13  -268.01262555     0.03663762     8041.03      0.04887723    10727.31      1.3300
   14  -268.01262548     0.03663769     8041.04      0.04887730    10727.33      1.3300
   15  -267.95399392     0.09526925    20909.18      0.10750886    23595.47      2.9255

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000001  0.73262494  0.28815784  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000001  0.00000000 -0.68178369  0.00000000  0.00000002  0.55292870 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00094385 -0.00000000 -0.00000000  0.44076074  0.00000000 -0.00000000

   3    1  |1 1>+         -0.68085785  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.42374073 -0.00000000
                           0.03552221  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.56607824  0.00000000

   1    1  |1 0>           0.03552227  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.56607735 -0.00000000
                           0.68085894 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.42374007 -0.00000000

   2    1  |1 0>           0.00000000  0.00177637 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003
                           0.00000000  0.68178244  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.70710642

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000002  0.11676045  0.77855015 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00094385 -0.00000000 -0.00000000 -0.44076058 -0.00000000  0.00000000
                           0.00000001 -0.00000000  0.68178401 -0.00000000 -0.00000002  0.55292850 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000001  0.61586404 -0.49039308 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00177637 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003
                           0.00000000  0.68178175  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.70710714

   1    1  |0 0>           0.00000000 -0.00000000  0.26521624 -0.00000000 -0.00000001 -0.00000015  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00036716  0.00000000  0.00000000 -0.00000012 -0.00000000  0.00000000

   2    1  |0 0>          -0.26485673  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000
                           0.01381830  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000005  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.26370542 -0.02825988 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.26521608  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00069101  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000001 -0.02825993  0.26370576 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000005  0.00000009  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.54931237  0.00000000 -0.00000000  0.00000000 -0.05804697  0.20862235 -0.17773275
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.18753648  0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000261 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.18735675 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00821119 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00821120 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.18735697  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00049974  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.18753616  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.54931297  0.00000000 -0.00000000  0.00000001 -0.20969623  0.05404111  0.17773286

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000261 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.18753628 -0.00000001  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.54931259 -0.00000000  0.00000000 -0.00000000  0.15164891  0.15458151  0.17773280

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00049974  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.18753596  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.96418889  0.00000003 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00001342 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.96326410  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.04221648  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000025  0.00000000 -0.00000000  0.00000000 -0.00327462  0.96418365  0.00000002
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000002  0.96418533 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00256934  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000033 -0.00000000  0.00000000 -0.00000003  0.96418355  0.00327461 -0.00000003
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.30784225 -0.00000000 -0.00000000  0.00000000  0.00000011 -0.00000009  0.95143741
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -268.06150278     -0.01223961    -2686.28      0.00000000        0.00      0.0000
     2   1   -268.06150278     -0.01223961    -2686.28      0.00000000        0.00      0.0000
     3   1   -268.06150277     -0.01223960    -2686.28      0.00000001        0.00      0.0000
     4   1   -268.06150275     -0.01223958    -2686.28      0.00000003        0.01      0.0000
     5   1   -268.06150274     -0.01223957    -2686.28      0.00000004        0.01      0.0000
     6   1   -268.04046156      0.00880160     1931.73      0.02104121     4618.01      0.5726
     7   1   -268.04046155      0.00880162     1931.73      0.02104123     4618.02      0.5726
     8   1   -268.04046154      0.00880163     1931.73      0.02104124     4618.02      0.5726
     9   1   -268.03979064      0.00947253     2078.98      0.02171214     4765.26      0.5908
    10   1   -268.01262561      0.03663756     8041.01      0.04887717    10727.30      1.3300
    11   1   -268.01262561      0.03663756     8041.01      0.04887717    10727.30      1.3300
    12   1   -268.01262558      0.03663759     8041.02      0.04887720    10727.31      1.3300
    13   1   -268.01262555      0.03663762     8041.03      0.04887723    10727.31      1.3300
    14   1   -268.01262548      0.03663769     8041.04      0.04887730    10727.33      1.3300
    15   1   -267.95399392      0.09526925    20909.18      0.10750886    23595.47      2.9255

 E0 =   -268.04926317 is the energy of the lowest zeroth-order state
 E1 =   -268.06150278 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000001  0.73262494  0.28815784  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000001  0.00000000 -0.68178369  0.00000000  0.00000002  0.55292870 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00094385 -0.00000000 -0.00000000  0.44076074  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.68085785  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.42374073 -0.00000000
                                0.03552221  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.56607824  0.00000000

  4  1     1    1  |1 0>        0.03552227  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.56607735 -0.00000000
                                0.68085894 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.42374007 -0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00177637 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003
                                0.00000000  0.68178244  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.70710642

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000002  0.11676045  0.77855015 -0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00094385 -0.00000000 -0.00000000 -0.44076058 -0.00000000  0.00000000
                                0.00000001 -0.00000000  0.68178401 -0.00000000 -0.00000002  0.55292850 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000001  0.61586404 -0.49039308 -0.00000000  0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00177637 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003
                                0.00000000  0.68178175  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.70710714

 10  1     1    1  |0 0>        0.00000000 -0.00000000  0.26521624 -0.00000000 -0.00000001 -0.00000015  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00036716  0.00000000  0.00000000 -0.00000012 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.26485673  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000
                                0.01381830  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000005  0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.26370542 -0.02825988 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000  0.26521608  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00069101  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000001 -0.02825993  0.26370576 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000005  0.00000009  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.54931237  0.00000000 -0.00000000  0.00000000 -0.05804697  0.20862235 -0.17773275
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.18753648  0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000261 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.18735675 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00821119 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00821120 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.18735697  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00049974  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.18753616  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.54931297  0.00000000 -0.00000000  0.00000001 -0.20969623  0.05404111  0.17773286

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000261 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.18753628 -0.00000001  0.00000000 -0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.54931259 -0.00000000  0.00000000 -0.00000000  0.15164891  0.15458151  0.17773280

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00049974  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.18753596  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.96418889  0.00000003 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00001342 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.96326410  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.04221648  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000025  0.00000000 -0.00000000  0.00000000 -0.00327462  0.96418365  0.00000002
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000002  0.96418533 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00256934  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000033 -0.00000000  0.00000000 -0.00000003  0.96418355  0.00327461 -0.00000003
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.30784225 -0.00000000 -0.00000000  0.00000000  0.00000011 -0.00000009  0.95143741
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   53.67%    8.30%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   46.48%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+        46.48%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>         46.48%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  5  1     2    1  |1 0>          0.00%   46.48%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    1.36%   60.61%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   46.48%    0.00%    0.00%   50.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   37.93%   24.05%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%   46.48%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.00%    7.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          7.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    6.95%    0.08%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    7.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.08%    6.95%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+        30.17%    0.00%    0.00%    0.00%    0.34%    4.35%    3.16%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    3.52%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    3.52%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    3.52%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    3.52%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         30.17%    0.00%    0.00%    0.00%    4.40%    0.29%    3.16%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    3.52%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        30.17%    0.00%    0.00%    0.00%    2.30%    2.39%    3.16%
  9  1     3    1  |1 1>-         0.00%    0.00%    3.52%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%   92.97%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%   92.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   92.97%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%   92.97%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   92.96%    0.00%    0.00%
 15  1     6    1  |0 0>          9.48%    0.00%    0.00%    0.00%    0.00%    0.00%   90.52%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      752.62       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       857.74    339.23    381.19    122.51      5.50      0.73      8.18
 REAL TIME  *       940.58 SEC
 DISK USED  *       821.57 MB (local),       23.73 GB (total)
 SF USED    *         5.29 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCV5Z-PP energy=   -267.953993922654

              CI              CI           MULTI         RHF-SCF
   -267.86565754   -267.95909664   -266.89187068   -266.72073561
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
