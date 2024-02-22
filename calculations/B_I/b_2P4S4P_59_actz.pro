
 Working directory              : /wrk/irikura/molpro.XUPcNWSPpn/
 Global scratch directory       : /wrk/irikura/molpro.XUPcNWSPpn/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.XUPcNWSPpn/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,B SO-CI
                                                                                 ! Active space (5,9) (add 3s3p virtuals)
                                                                                 ! 2P + 4P (2s2p3s) + 4S (how odd??)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={B};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=5,sym=2,spin=1}
 
 {multi
     closed,0,0
     occ,3,6
     wf,sym=2,spin=1;state,3;
         weight,all,99
     wf,sym=2,spin=3;state,4;
         weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,3; save,5201.2}
 hlsdiag = energd4
 {ci;option,maxit=100;wf,sym=2,spin=3;state,4; save,5203.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   B SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 17:44:40  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry B      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry B      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry B      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry B      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  B       5.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    5
 NUMBER OF PRIMITIVE AOS:          81
 NUMBER OF SYMMETRY AOS:           71
 NUMBER OF CONTRACTIONS:           59   (   27Ag  +   32Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     2.359 MB (compressed) written to integral file ( 22.4%)

     Node minimum: 0.262 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.496E-02 0.182E-01 0.705E-01 0.187E+00 0.247E+00 0.247E+00 0.247E+00 0.247E+00
         2 0.152E-01 0.152E-01 0.152E-01 0.186E+00 0.186E+00 0.186E+00 0.432E+00 0.432E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.77      0.57
 REAL TIME  *         1.68 SEC
 DISK USED  *        29.03 MB (local),      166.24 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   1
 Initial beta  occupancy:   2   0

 NELEC=    5   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -24.50737218     -24.50737218     0.00D+00     0.91D-01     0     0       0.00      0.01    start
   2      -24.53087375      -0.02350157     0.72D-02     0.16D-01     1     0       0.00      0.01    diag2
   3      -24.53397033      -0.00309658     0.20D-02     0.33D-02     2     0       0.00      0.01    diag2
   4      -24.53491093      -0.00094059     0.11D-02     0.36D-02     3     0       0.01      0.02    diag2
   5      -24.53495253      -0.00004160     0.24D-03     0.13D-02     4     0       0.00      0.02    diag2
   6      -24.53495314      -0.00000062     0.36D-04     0.15D-03     5     0       0.00      0.02    diag2
   7      -24.53495315      -0.00000000     0.29D-05     0.13D-04     6     0       0.00      0.02    diag2
   8      -24.53495315      -0.00000000     0.28D-06     0.22D-05     7     0       0.00      0.02    fixocc
   9      -24.53495315      -0.00000000     0.26D-07     0.51D-07     0     0       0.01      0.03    diag

 Final alpha occupancy:   2   1
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -24.534953148024
  RHF One-electron energy             -32.375004267272
  RHF Two-electron energy               7.840051119249
  RHF Kinetic energy                   24.581653293391
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.998100203237

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.69742     1  1  s    0.99946
    2.1     2.00000    -0.49521     1  2  s    1.00903
    1.2     1.00000    -0.30965     1  1  py  -0.31454    1  1  pz   0.94544


 HOMO      1.2    -0.309645 =      -8.4259eV
 LUMO      2.2     0.022718 =       0.6182eV
 LUMO-HOMO         0.332363 =       9.0441eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.80      0.03      0.57
 REAL TIME  *         1.71 SEC
 DISK USED  *        29.44 MB (local),      168.29 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:        9 (    3    6)
 Number of external orbitals:      50 (   24   26)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:             954   (1512 determinants, 3024 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             4
 Number of CSFs:             492   (558 determinants, 1134 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.149D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.124D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.143D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 2   4 6 3 5 1 2 4 6 3 5   1 3 5 6 4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.250D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.252D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.367D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.251D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.250D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.428D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 9   7 810 4 6 5 3 2 1 9   7 810 6 4 5 2 1 3 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32890   0.32890   0.32890
 Weight factors for state symmetry  2:    0.00332   0.00332   0.00332   0.00332
 
 Number of orbital rotations:  228  ( 0 closed/active, 0 closed/virtual, 0 active/active, 228 active/virtual )
 Total number of variables:    6996
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   55    0    -24.53721544     -24.57279651   -0.03558107    0.06701874 0.00013261 0.00045726  0.17E+01      0.39
   2    4   27    0    -24.57240012     -24.57248270   -0.00008257    0.00501644 0.00003495 0.00003199  0.13E+00      0.66
   3    7   31    0    -24.57248270     -24.57248270   -0.00000000    0.00000863 0.00000001 0.00000003  0.16E-03      0.98
   4    2    4    0    -24.57248270     -24.57248270    0.00000000    0.00000001 0.00000000 0.00000000  0.34E-08      1.05

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.11E-08)
                       Final energy:    -24.57248270
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy               -24.578671865665
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61626950
 One electron energy                           -32.35433628
 Two electron energy                             7.77566441
 Virial ratio                                    1.99847265
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy               -24.578671865665
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61626950
 One electron energy                           -32.35433628
 Two electron energy                             7.77566441
 Virial ratio                                    1.99847265
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy               -24.578671865659
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.61626950
 One electron energy                           -32.35433628
 Two electron energy                             7.77566441
 Virial ratio                                    1.99847265
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy               -24.144128885762
 Nuclear energy                                  0.00000000
 Kinetic energy                                 24.15404492
 One electron energy                           -31.76293104
 Two electron energy                             7.61880215
 Virial ratio                                    1.99958947
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy               -24.102540137493
 Nuclear energy                                  0.00000000
 Kinetic energy                                 25.09279625
 One electron energy                           -31.49816380
 Two electron energy                             7.39562366
 Virial ratio                                    1.96053624
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy               -24.102540137493
 Nuclear energy                                  0.00000000
 Kinetic energy                                 25.09279625
 One electron energy                           -31.49816380
 Two electron energy                             7.39562366
 Virial ratio                                    1.96053624
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy               -24.102540137485
 Nuclear energy                                  0.00000000
 Kinetic energy                                 25.09279625
 One electron energy                           -31.49816380
 Two electron energy                             7.39562366
 Virial ratio                                    1.96053624
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.998475673329
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.001524327740
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999998931
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.457612125018
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.542387879344
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     0.999999995639
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.001524554971
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.998475672458
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999772571
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.542387883584
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.457612120668
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     0.999999995749
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999999771700
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999999802
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.000000228498
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999991398
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999999989
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.000000008613
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 3   5 6 4 2 1 2 6 4 5 3   1 2 4 6 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 2 1 3 6  10 8 9 7 4 5 1 2 310   8 7 9 4 5 6 3 2 1 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99992    -7.69166     1  1  s    0.99931
    2.1     1.87034    -0.47428     1  2  s    1.01657
    3.1     0.01884     0.35448     1  2  s   -1.64809    1  3  s   -0.32569    1  4  s    1.88236    1  7  s    0.25088
    1.2     0.36641     0.02238     1  1  py   1.01146
    2.2     0.36641     0.02238     1  1  px   1.01146
    3.2     0.36641     0.02238     1  1  pz   1.01146
    4.2     0.00389     0.43906     1  1  pz  -1.94891    1  2  pz   0.65383    1  3  pz   1.66640
    5.2     0.00389     0.43906     1  1  px  -1.94891    1  2  px   0.65383    1  3  px   1.66640
    6.2     0.00389     0.43906     1  1  py  -1.94891    1  2  py   0.65383    1  3  py   1.66640
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 220 00a000      0.00046308     -0.00001362      0.96916912
 220 0a0000     -0.03783891      0.96843028      0.00003169
 220 a00000      0.96843017      0.03783892     -0.00046219
 200 02a000     -0.00007400      0.00000218     -0.15487367
 200 20a000     -0.00007400      0.00000218     -0.15487367
 200 2a0000      0.00604668     -0.15475560     -0.00000506
 200 0a2000      0.00604668     -0.15475560     -0.00000506
 200 a20000     -0.15475559     -0.00604668      0.00007386
 200 a02000     -0.15475559     -0.00604668      0.00007386
 2ab 000a00     -0.00002875      0.00000085     -0.06018084
 2ab 0000a0      0.00234962     -0.06013496     -0.00000197
 2ab 00000a     -0.06013496     -0.00234962      0.00002870
 
 Energy:       -24.57867187    -24.57867187    -24.57867187
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 200 aaa000      0.99412789     -0.00000000     -0.00000000      0.00000000
 2aa 00a000     -0.00000000      0.00009108      0.00000328      0.98206853
 2aa a00000      0.00000000      0.66434023      0.72326390     -0.00006403
 2aa 0a0000      0.00000000      0.72326389     -0.66434024     -0.00006486
 200 a0a00a      0.00000000      0.00001004      0.00000036      0.10830476
 200 0aa0a0      0.00000000      0.00001004      0.00000036      0.10830476
 2aa 000a00     -0.00000000     -0.00001001     -0.00000036     -0.10795255
 200 a0aa00      0.00000000     -0.07326496     -0.07976319      0.00000706
 200 aa00a0     -0.00000000     -0.07326496     -0.07976319      0.00000706
 200 0aaa00     -0.00000000     -0.07976319      0.07326496      0.00000715
 200 aa000a     -0.00000000      0.07976319     -0.07326496     -0.00000715
 2aa 00000a     -0.00000000     -0.07302670     -0.07950380      0.00000704
 2aa 0000a0     -0.00000000     -0.07950380      0.07302670      0.00000713
 200 0a0a0a     -0.05917399     -0.00000000     -0.00000000      0.00000000
 200 a00aa0      0.05917399      0.00000000      0.00000000     -0.00000000
 200 00a0aa      0.05917399     -0.00000000     -0.00000000      0.00000000
 
 Energy:       -24.14412889    -24.10254014    -24.10254014    -24.10254014
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.85      1.05      0.03      0.57
 REAL TIME  *         2.91 SEC
 DISK USED  *        30.35 MB (local),      172.84 MB (total)
 SF USED    *         3.76 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -24.57867187   2.0
    -24.57867187   2.0
    -24.57867187   2.0
    -24.14412889  -0.0
    -24.10254014   2.0
    -24.10254014   2.0
    -24.10254014   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  5
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:      462 conf      954 CSFs
 N elec internal:      882 conf     1890 CSFs
 N-1 el internal:      414 conf     1170 CSFs
 N-2 el internal:      156 conf      564 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces:  5


 Number of active  orbitals:        9 (   3   6 )
 Number of external orbitals:      50 (  24  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  14

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -24.57867187
     2       -24.57867187
     3       -24.57867187

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2478D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2478D-06

 Number of blocks in overlap matrix:    12   Smallest eigenvalue:  0.25D-06
 Number of N-2 electron functions:     220
 Number of N-1 electron functions:    1170

 Number of internal configurations:                  954
 Number of singly external configurations:         29256
 Number of doubly external configurations:        137958
 Total number of contracted configurations:       168168
 Total number of uncontracted configurations:     381768

 Diagonal Coupling coefficients finished.               Storage:    659145 words, CPU-Time:      0.21 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    235049 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -24.57867187     0.00000000    -0.06366164  0.15D-01  0.10D-02     0.29
    1     2     2     1.00000000     0.00000000   -24.57867187     0.00000000    -0.06366148  0.15D-01  0.10D-02     0.29
    1     3     3     1.00000000     0.00000000   -24.57867187    -0.00000000    -0.06360199  0.15D-01  0.10D-02     0.29
    2     1     1     1.01781073    -0.06653032   -24.64520218    -0.06653032    -0.00111878  0.14D-03  0.48D-04     1.31
    2     2     2     1.01788577    -0.06652994   -24.64520181    -0.06652994    -0.00111857  0.14D-03  0.48D-04     1.31
    2     3     3     1.01788569    -0.06652992   -24.64520178    -0.06652992    -0.00111859  0.14D-03  0.48D-04     1.31
    3     1     1     1.02143764    -0.06883022   -24.64750209    -0.00229991    -0.00059326  0.81D-04  0.21D-04     2.27
    3     2     2     1.02137483    -0.06882722   -24.64749909    -0.00229728    -0.00059510  0.81D-04  0.21D-04     2.27
    3     3     3     1.02137484    -0.06882719   -24.64749906    -0.00229728    -0.00059510  0.81D-04  0.21D-04     2.27
    4     1     1     1.02281438    -0.07027131   -24.64894318    -0.00144108    -0.00017853  0.41D-04  0.60D-05     3.22
    4     2     2     1.02280975    -0.07027116   -24.64894302    -0.00144394    -0.00017829  0.42D-04  0.60D-05     3.22
    4     3     3     1.02280974    -0.07027115   -24.64894302    -0.00144396    -0.00017829  0.42D-04  0.60D-05     3.22
    5     1     1     1.02094660    -0.07054264   -24.64921450    -0.00027133    -0.00004957  0.37D-05  0.22D-05     4.15
    5     2     2     1.02095606    -0.07054251   -24.64921437    -0.00027135    -0.00004962  0.36D-05  0.22D-05     4.15
    5     3     3     1.02095609    -0.07054251   -24.64921437    -0.00027136    -0.00004962  0.36D-05  0.22D-05     4.15
    6     1     1     1.02139845    -0.07065365   -24.64932551    -0.00011101    -0.00003544  0.40D-05  0.12D-05     5.06
    6     2     2     1.02138676    -0.07065355   -24.64932542    -0.00011105    -0.00003550  0.41D-05  0.12D-05     5.06
    6     3     3     1.02138666    -0.07065355   -24.64932541    -0.00011104    -0.00003551  0.41D-05  0.12D-05     5.06
    7     1     1     1.02216527    -0.07071206   -24.64938392    -0.00005841    -0.00001498  0.38D-05  0.45D-06     6.00
    7     2     2     1.02216464    -0.07071203   -24.64938390    -0.00005848    -0.00001498  0.38D-05  0.45D-06     6.00
    7     3     3     1.02216460    -0.07071202   -24.64938389    -0.00005848    -0.00001498  0.38D-05  0.45D-06     6.00
    8     1     1     1.02179145    -0.07073399   -24.64940585    -0.00002193    -0.00000585  0.30D-06  0.26D-06     6.95
    8     2     2     1.02179330    -0.07073396   -24.64940583    -0.00002193    -0.00000585  0.31D-06  0.26D-06     6.95
    8     3     3     1.02179337    -0.07073396   -24.64940582    -0.00002193    -0.00000586  0.31D-06  0.26D-06     6.95
    9     1     1     1.02174972    -0.07074466   -24.64941653    -0.00001067    -0.00000413  0.29D-06  0.18D-06     7.89
    9     2     2     1.02174770    -0.07074465   -24.64941651    -0.00001069    -0.00000413  0.29D-06  0.18D-06     7.89
    9     3     3     1.02174764    -0.07074465   -24.64941651    -0.00001069    -0.00000413  0.29D-06  0.18D-06     7.89
   10     1     1     1.02199232    -0.07075130   -24.64942316    -0.00000664    -0.00000221  0.35D-06  0.79D-07     8.84
   10     2     2     1.02199187    -0.07075129   -24.64942316    -0.00000664    -0.00000221  0.35D-06  0.79D-07     8.84
   10     3     3     1.02199183    -0.07075129   -24.64942315    -0.00000664    -0.00000221  0.35D-06  0.79D-07     8.84
   11     1     1     1.02195114    -0.07075434   -24.64942621    -0.00000304    -0.00000096  0.52D-07  0.45D-07     9.77
   11     2     2     1.02195139    -0.07075434   -24.64942620    -0.00000305    -0.00000096  0.53D-07  0.45D-07     9.77
   11     3     3     1.02195141    -0.07075434   -24.64942620    -0.00000305    -0.00000096  0.53D-07  0.45D-07     9.77
   12     1     1     1.02192058    -0.07075597   -24.64942783    -0.00000163    -0.00000071  0.32D-07  0.33D-07    10.72
   12     2     2     1.02192034    -0.07075596   -24.64942783    -0.00000163    -0.00000071  0.33D-07  0.33D-07    10.72
   12     3     3     1.02192032    -0.07075596   -24.64942783    -0.00000163    -0.00000071  0.33D-07  0.33D-07    10.72
   13     1     1     1.02198205    -0.07075708   -24.64942895    -0.00000111    -0.00000042  0.45D-07  0.17D-07    11.66
   13     2     2     1.02198195    -0.07075708   -24.64942894    -0.00000111    -0.00000042  0.46D-07  0.17D-07    11.66
   13     3     3     1.02198192    -0.07075708   -24.64942894    -0.00000111    -0.00000042  0.46D-07  0.17D-07    11.66
   14     1     1     1.02198466    -0.07075765   -24.64942952    -0.00000057    -0.00000020  0.89D-08  0.10D-07    12.59
   14     2     2     1.02198461    -0.07075765   -24.64942951    -0.00000057    -0.00000020  0.91D-08  0.10D-07    12.59
   14     3     3     1.02198461    -0.07075765   -24.64942951    -0.00000057    -0.00000020  0.91D-08  0.10D-07    12.59
   15     1     1     1.02197805    -0.07075797   -24.64942984    -0.00000032    -0.00000015  0.54D-08  0.76D-08    13.49
   15     2     2     1.02197799    -0.07075797   -24.64942983    -0.00000032    -0.00000015  0.55D-08  0.76D-08    13.49
   15     3     3     1.02197798    -0.07075797   -24.64942983    -0.00000032    -0.00000015  0.55D-08  0.76D-08    13.49
   16     1     1     1.02199434    -0.07075821   -24.64943007    -0.00000024    -0.00000010  0.74D-08  0.45D-08    14.45
   16     2     2     1.02199437    -0.07075820   -24.64943007    -0.00000024    -0.00000010  0.75D-08  0.45D-08    14.45
   16     3     3     1.02199435    -0.07075820   -24.64943007    -0.00000024    -0.00000010  0.75D-08  0.45D-08    14.45
   17     1     1     1.02199734    -0.07075834   -24.64943020    -0.00000013    -0.00000005  0.17D-08  0.27D-08    15.39
   17     2     2     1.02199733    -0.07075834   -24.64943020    -0.00000013    -0.00000005  0.17D-08  0.27D-08    15.39
   17     3     3     1.02199732    -0.07075834   -24.64943020    -0.00000013    -0.00000005  0.17D-08  0.27D-08    15.39


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.0%
 S   1.1%   1.9%
 P   2.6%  16.4%  61.1%

 Initialization:   1.6%
 Other:           14.3%

 Total CPU:       15.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220/00000          -0.0000000   0.0000000   0.9622077
 2200/0000          -0.0000000   0.9622077   0.0000000
 22000/000           0.9622077   0.0000000  -0.0000000
 2002/0000           0.0000000  -0.1458649   0.0000000
 200/20000           0.0000000   0.0000000  -0.1458649
 20020/000          -0.1458649   0.0000000  -0.0000000
 20002/000          -0.1458649   0.0000000  -0.0000000
 200/02000          -0.0000000   0.0000000  -0.1458649
 2000/2000           0.0000000  -0.1458649   0.0000000
 2/\000/00          -0.0579527  -0.0000000  -0.0000000
 2/\0000/0          -0.0000000  -0.0579527   0.0000000
 2/\00000/           0.0000000   0.0000000  -0.0579527

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\000/000  14.1    -0.0529402  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.988734
 2           0.988734    0.000000   -0.000000
 3          -0.000000    0.988734    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.988734   -0.000000   -0.000000
 2          -0.000000    0.988734    0.000000
 3          -0.000000    0.000000    0.988734


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98873435 (fixed)   0.98917952 (relaxed)   0.98873435 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00090070   -0.00000000   -0.00006231
 Singles      0.01868405   -0.02854924   -0.02919791
 Pairs        0.00333310   -0.04220909   -0.04149811
 Total        1.02291785   -0.07075833   -0.07075834
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.57867187
 Nuclear energy                         0.00000000
 Kinetic energy                        24.68406522
 One electron energy                  -32.32996643
 Two electron energy                    7.68053623
 Virial quotient                       -0.99859687
 Correlation energy                    -0.07075834
 !MRCI STATE 1.2 Energy               -24.649430201465

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65105183 (Davidson, fixed reference)
 Cluster corrected energies           -24.65098670 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65105183 (Davidson, rotated reference)

 Cluster corrected energies           -24.65024091 (Pople, fixed reference)
 Cluster corrected energies           -24.65020835 (Pople, relaxed reference)
 Cluster corrected energies           -24.65024091 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98873435 (fixed)   0.98917953 (relaxed)   0.98873435 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00090071   -0.00000000   -0.04132572
 Singles      0.01868405   -0.02854925   -0.02919791
 Pairs        0.00333309    0.00000000   -0.00023470
 Total        1.02291785   -0.02854925   -0.07075834
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.57867187
 Nuclear energy                         0.00000000
 Kinetic energy                        24.68406633
 One electron energy                  -32.32996669
 Two electron energy                    7.68053649
 Virial quotient                       -0.99859682
 Correlation energy                    -0.07075834
 !MRCI STATE 2.2 Energy               -24.649430200832

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65105183 (Davidson, fixed reference)
 Cluster corrected energies           -24.65098669 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65105183 (Davidson, rotated reference)

 Cluster corrected energies           -24.65024091 (Pople, fixed reference)
 Cluster corrected energies           -24.65020835 (Pople, relaxed reference)
 Cluster corrected energies           -24.65024091 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98873435 (fixed)   0.98917953 (relaxed)   0.98873435 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00090071   -0.00000000   -0.04132572
 Singles      0.01868405   -0.02854925   -0.02919791
 Pairs        0.00333308   -0.00000000   -0.00023470
 Total        1.02291784   -0.02854925   -0.07075834
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.57867187
 Nuclear energy                         0.00000000
 Kinetic energy                        24.68406656
 One electron energy                  -32.32996675
 Two electron energy                    7.68053655
 Virial quotient                       -0.99859681
 Correlation energy                    -0.07075834
 !MRCI STATE 3.2 Energy               -24.649430200672

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65105183 (Davidson, fixed reference)
 Cluster corrected energies           -24.65098669 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65105183 (Davidson, rotated reference)

 Cluster corrected energies           -24.65024091 (Pople, fixed reference)
 Cluster corrected energies           -24.65020835 (Pople, relaxed reference)
 Cluster corrected energies           -24.65024091 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        4.78       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        17.47     15.61      1.05      0.03      0.57
 REAL TIME  *        19.38 SEC
 DISK USED  *        34.54 MB (local),      193.80 MB (total)
 SF USED    *        45.21 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -24.65105183  AU                              
 SETTING HLSDIAG(2)     =       -24.65105183  AU                              
 SETTING HLSDIAG(3)     =       -24.65105183  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 4  Roots:    1   2   3   4
 Number of reference states: 4  Roots:    1   2   3   4

 Program parameters:       NSTATE=  4    NSTATI=  4    NSTATR=  4    NCEPA = -1    NOKOP =  0    ITRDM =  0    ITRANS=  0
                           IDIP  =200    MAXIT =100    MAXITI= 50    MAXDAV= 12    MAXVI = 12    NOSING=  0    NOPAIR=  0
                           MXSHRF=  4    IKCPS =  0    IOPTGM=  2    IOPTOR=  0    REFOPT=  1    IAVDEN=  0    IDELCG=  1
                           IREST =  0    NATORB=  0    IPUNRF=  0    ISEP  =  0    OLDDEN=  0    NSTPRI=  1    GPSFLI= -1
                           CLUSTE=  0    CLOSED=  1    ILSTYP=  0    ITRLS =  0    ICCSD =  0    LOCAL =  0    IBASO =  0
                           MP    =  0    ITEDIS=  2    INCDIS=  1    MAXDIS=  6    ITYDIS=  1    BRUECK=  0    IBRSTR=  3
                           INCBRK=  1    TRIPLE=  0    ICCTYP=  2    IHPPD =  0    ICCNEW=  0    I3EXT = -1    IDEB  =  0
                           IDLEIG=  1    IDFTYP=  1    IMP3  =  0    IPROCS=  0    NOINT =  0    NOREF =  1    IMP2G =  0
                           IHINT =  0    IFDIA =  0    ISPARO=  1    JKSYM =  0    CPHF  =  0    MP2D  = -1    DKINT =  0
                           NPKEX =  1    DRVK  =  1    HLSTRA=  1    WIGNER=  1    DIIS_C=  1    MAXIT_= 50    MATEL =  0
                           SPDEG =  1    MEMCPH=  0    DISM  =  1    KDCPMA=  5    IKDCP_=  0    IREDTH=  0    USECS =  0
                           IPROCC=  0    I3SAVE=  1    IKDCP =  1    USECI =  0    OLDPAI=  0    IPROCI=  0    KEEPCL=  1
                           DISCON=  0    SHIFTE=  0    DIISIN=  0    MOLCAS=  0    MEM_PT=  0    RECORD=  0    RS2C  =  0
                           KEXT  = -1    CIPT2 =  0    DECP0S=  0    I4EXT = -1    NATCOR=  0    RIMP2 =  0    DDCI  = -1
                           IPOLAR=  0    OVBK  =  0

 Reference symmetry:                   2   Quartet 
 Number of electrons:                  5
 Maximum number of shells:             2
 Maximum number of spin couplings:     4

 Reference space:      294 conf      492 CSFs
 N elec internal:      630 conf     1008 CSFs
 N-1 el internal:      378 conf      756 CSFs
 N-2 el internal:      156 conf      408 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces:  5


 Number of active  orbitals:        9 (   3   6 )
 Number of external orbitals:      50 (  24  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  16

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -24.14412889
     2       -24.10254014
     3       -24.10254014
     4       -24.10254014

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1004D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1004D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4387D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4387D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4387D-06

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:     223
 Number of N-1 electron functions:     756

 Number of internal configurations:                  492
 Number of singly external configurations:         18876
 Number of doubly external configurations:        138637
 Total number of contracted configurations:       158005
 Total number of uncontracted configurations:     271260

 Diagonal Coupling coefficients finished.               Storage:    526993 words, CPU-Time:      0.11 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    234781 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -24.14412889    -0.00000000    -0.04766566  0.98D-03  0.11D-02     0.18
    1     2     2     1.00000000     0.00000000   -24.10254014    -0.00000000    -0.09244986  0.35D-01  0.98D-03     0.18
    1     3     3     1.00000000     0.00000000   -24.10254014     0.00000000    -0.09245005  0.35D-01  0.98D-03     0.18
    1     4     4     1.00000000     0.00000000   -24.10254014     0.00000000    -0.09244755  0.35D-01  0.98D-03     0.18
    2     1     1     1.06164525    -0.08014668   -24.22427557    -0.08014668    -0.01669877  0.11D-01  0.12D-03     1.23
    2     2     2     1.06165662    -0.12173274   -24.22427288    -0.12173274    -0.01670033  0.11D-01  0.12D-03     1.23
    2     3     3     1.06165630    -0.12173265   -24.22427279    -0.12173265    -0.01670023  0.11D-01  0.12D-03     1.23
    2     4     4     1.00237582    -0.09268635   -24.19522649    -0.09268635    -0.00187136  0.10D-04  0.10D-03     1.23
    3     1     1     1.28454890    -0.12137983   -24.26550872    -0.04123315    -0.01136052  0.13D-01  0.71D-04     2.25
    3     2     2     1.28447403    -0.16296383   -24.26550397    -0.04123109    -0.01136343  0.13D-01  0.70D-04     2.25
    3     3     3     1.28447533    -0.16296375   -24.26550389    -0.04123110    -0.01136335  0.13D-01  0.70D-04     2.25
    3     4     4     1.00495169    -0.09886350   -24.20140364    -0.00617715    -0.00168606  0.53D-04  0.65D-04     2.25
    4     1     1     1.49322837    -0.13605961   -24.28018850    -0.01467978    -0.00070132  0.48D-03  0.19D-04     3.30
    4     2     2     1.49323106    -0.17764748   -24.28018762    -0.01468365    -0.00070196  0.48D-03  0.19D-04     3.30
    4     3     3     1.49323083    -0.17764735   -24.28018748    -0.01468360    -0.00070200  0.48D-03  0.19D-04     3.30
    4     4     4     1.00793388    -0.10269626   -24.20523639    -0.00383276    -0.00046195  0.44D-05  0.23D-04     3.30
    5     1     1     1.49676202    -0.13703267   -24.28116156    -0.00097306    -0.00021542  0.68D-04  0.92D-05     4.32
    5     2     2     1.49676336    -0.17862125   -24.28116138    -0.00097377    -0.00021546  0.68D-04  0.92D-05     4.32
    5     3     3     1.49676520    -0.17862122   -24.28116136    -0.00097387    -0.00021545  0.68D-04  0.92D-05     4.32
    5     4     4     1.00828787    -0.10350534   -24.20604548    -0.00080908    -0.00022382  0.29D-05  0.11D-04     4.32
    6     1     1     1.50659866    -0.13764700   -24.28177588    -0.00061433    -0.00018567  0.50D-04  0.64D-05     5.37
    6     2     2     1.50658299    -0.17923560   -24.28177574    -0.00061436    -0.00018563  0.50D-04  0.64D-05     5.37
    6     3     3     1.50658237    -0.17923560   -24.28177573    -0.00061438    -0.00018560  0.50D-04  0.64D-05     5.37
    6     4     4     1.00935882    -0.10404841   -24.20658855    -0.00054307    -0.00017860  0.27D-05  0.69D-05     5.37
    7     1     1     1.51024097    -0.13795378   -24.28208267    -0.00030678    -0.00008890  0.42D-04  0.31D-05     6.44
    7     2     2     1.51024105    -0.17954237   -24.28208250    -0.00030676    -0.00008898  0.42D-04  0.31D-05     6.44
    7     3     3     1.51024298    -0.17954232   -24.28208246    -0.00030672    -0.00008901  0.42D-04  0.31D-05     6.44
    7     4     4     1.00992443    -0.10432155   -24.20686169    -0.00027314    -0.00006671  0.15D-05  0.28D-05     6.44
    8     1     1     1.50602603    -0.13808344   -24.28221232    -0.00012965    -0.00004455  0.12D-04  0.17D-05     7.48
    8     2     2     1.50602936    -0.17967211   -24.28221224    -0.00012974    -0.00004456  0.12D-04  0.17D-05     7.48
    8     3     3     1.50602858    -0.17967210   -24.28221224    -0.00012978    -0.00004457  0.12D-04  0.17D-05     7.48
    8     4     4     1.01023641    -0.10442839   -24.20696853    -0.00010684    -0.00003561  0.40D-06  0.17D-05     7.48
    9     1     1     1.50986009    -0.13817111   -24.28229999    -0.00008767    -0.00003851  0.64D-05  0.15D-05     8.49
    9     2     2     1.50985548    -0.17975977   -24.28229991    -0.00008767    -0.00003851  0.64D-05  0.15D-05     8.49
    9     3     3     1.50985469    -0.17975975   -24.28229989    -0.00008765    -0.00003850  0.64D-05  0.15D-05     8.49
    9     4     4     1.01067947    -0.10449664   -24.20703678    -0.00006825    -0.00002895  0.24D-06  0.13D-05     8.49
   10     1     1     1.51262256    -0.13823364   -24.28236253    -0.00006254    -0.00002473  0.76D-05  0.10D-05     9.53
   10     2     2     1.51262180    -0.17982232   -24.28236246    -0.00006255    -0.00002476  0.76D-05  0.10D-05     9.53
   10     3     3     1.51262311    -0.17982230   -24.28236244    -0.00006255    -0.00002477  0.76D-05  0.10D-05     9.53
   10     4     4     1.01089484    -0.10453952   -24.20707965    -0.00004287    -0.00001481  0.24D-06  0.71D-06     9.53
   11     1     1     1.51068708    -0.13826874   -24.28239763    -0.00003510    -0.00001397  0.29D-05  0.59D-06    10.56
   11     2     2     1.51068719    -0.17985745   -24.28239758    -0.00003513    -0.00001398  0.29D-05  0.59D-06    10.56
   11     3     3     1.51068616    -0.17985744   -24.28239757    -0.00003513    -0.00001398  0.29D-05  0.59D-06    10.56
   11     4     4     1.01097899    -0.10456110   -24.20710124    -0.00002159    -0.00000874  0.71D-07  0.45D-06    10.56
   12     1     1     1.51156984    -0.13829298   -24.28242187    -0.00002424    -0.00001224  0.14D-05  0.56D-06    11.61
   12     2     2     1.51156771    -0.17988169   -24.28242183    -0.00002425    -0.00001225  0.14D-05  0.57D-06    11.61
   12     3     3     1.51156678    -0.17988168   -24.28242182    -0.00002424    -0.00001225  0.14D-05  0.57D-06    11.61
   12     4     4     1.01110385    -0.10457693   -24.20711706    -0.00001582    -0.00000766  0.55D-07  0.35D-06    11.61
   13     1     1     1.51276446    -0.13831132   -24.28244020    -0.00001833    -0.00000846  0.19D-05  0.40D-06    12.64
   13     2     2     1.51276505    -0.17990003   -24.28244017    -0.00001834    -0.00000847  0.19D-05  0.40D-06    12.64
   13     3     3     1.51276694    -0.17990002   -24.28244016    -0.00001834    -0.00000848  0.20D-05  0.41D-06    12.64
   13     4     4     1.01119195    -0.10458814   -24.20712828    -0.00001121    -0.00000460  0.53D-07  0.25D-06    12.64
   14     1     1     1.51229649    -0.13832281   -24.28245169    -0.00001149    -0.00000481  0.77D-06  0.22D-06    13.67
   14     2     2     1.51229639    -0.17991153   -24.28245167    -0.00001150    -0.00000482  0.77D-06  0.22D-06    13.67
   14     3     3     1.51229579    -0.17991153   -24.28245167    -0.00001151    -0.00000482  0.77D-06  0.22D-06    13.67
   14     4     4     1.01124091    -0.10459444   -24.20713458    -0.00000631    -0.00000286  0.13D-07  0.16D-06    13.67
   15     1     1     1.51280314    -0.13833088   -24.28245977    -0.00000807    -0.00000435  0.41D-06  0.23D-06    14.70
   15     2     2     1.51280066    -0.17991961   -24.28245975    -0.00000808    -0.00000436  0.41D-06  0.23D-06    14.70
   15     3     3     1.51279894    -0.17991960   -24.28245974    -0.00000808    -0.00000436  0.41D-06  0.23D-06    14.70
   15     4     4     1.01130243    -0.10459942   -24.20713956    -0.00000497    -0.00000264  0.18D-07  0.13D-06    14.70
   16     1     1     1.51320519    -0.13833691   -24.28246579    -0.00000603    -0.00000317  0.52D-06  0.18D-06    15.74
   16     2     2     1.51320518    -0.17992564   -24.28246578    -0.00000603    -0.00000317  0.53D-06  0.18D-06    15.74
   16     3     3     1.51320611    -0.17992563   -24.28246577    -0.00000603    -0.00000318  0.53D-06  0.18D-06    15.74
   16     4     4     1.01134456    -0.10460323   -24.20714336    -0.00000381    -0.00000171  0.10D-07  0.98D-07    15.74
   17     1     1     1.51300191    -0.13834093   -24.28246982    -0.00000402    -0.00000183  0.18D-06  0.96D-07    16.78
   17     2     2     1.51300237    -0.17992967   -24.28246981    -0.00000403    -0.00000183  0.18D-06  0.96D-07    16.78
   17     3     3     1.51300262    -0.17992966   -24.28246980    -0.00000403    -0.00000183  0.18D-06  0.96D-07    16.78
   17     4     4     1.01136844    -0.10460552   -24.20714566    -0.00000230    -0.00000111  0.36D-08  0.65D-07    16.78
   18     1     1     1.51326439    -0.13834385   -24.28247274    -0.00000292    -0.00000164  0.12D-06  0.95D-07    17.81
   18     2     2     1.51326278    -0.17993259   -24.28247273    -0.00000292    -0.00000165  0.12D-06  0.96D-07    17.81
   18     3     3     1.51326154    -0.17993259   -24.28247273    -0.00000292    -0.00000165  0.12D-06  0.96D-07    17.81
   18     4     4     1.01139784    -0.10460736   -24.20714750    -0.00000184    -0.00000105  0.45D-08  0.57D-07    17.81
   19     1     1     1.51351387    -0.13834609   -24.28247497    -0.00000223    -0.00000127  0.13D-06  0.79D-07    18.85
   19     2     2     1.51351323    -0.17993483   -24.28247496    -0.00000224    -0.00000127  0.13D-06  0.79D-07    18.85
   19     3     3     1.51351318    -0.17993482   -24.28247496    -0.00000224    -0.00000127  0.14D-06  0.79D-07    18.85
   19     4     4     1.01142036    -0.10460885   -24.20714899    -0.00000149    -0.00000071  0.25D-08  0.41D-07    18.85
   20     1     1     1.51344140    -0.13834760   -24.28247648    -0.00000151    -0.00000075  0.51D-07  0.45D-07    19.89
   20     2     2     1.51344165    -0.17993634   -24.28247648    -0.00000151    -0.00000075  0.52D-07  0.45D-07    19.89
   20     3     3     1.51344193    -0.17993634   -24.28247647    -0.00000151    -0.00000075  0.52D-07  0.45D-07    19.89
   20     4     4     1.01143375    -0.10460979   -24.20714993    -0.00000094    -0.00000047  0.10D-08  0.29D-07    19.89
   21     1     1     1.51350744    -0.13834873   -24.28247761    -0.00000113    -0.00000066  0.32D-07  0.41D-07    20.92
   21     2     2     1.51350681    -0.17993747   -24.28247761    -0.00000113    -0.00000066  0.31D-07  0.41D-07    20.92
   21     3     3     1.51350629    -0.17993747   -24.28247761    -0.00000113    -0.00000067  0.31D-07  0.41D-07    20.92
   21     4     4     1.01144958    -0.10461054   -24.20715068    -0.00000075    -0.00000045  0.97D-09  0.26D-07    20.92
   22     1     1     1.51366372    -0.13834963   -24.28247851    -0.00000090    -0.00000054  0.34D-07  0.36D-07    21.96
   22     2     2     1.51366309    -0.17993837   -24.28247851    -0.00000090    -0.00000054  0.34D-07  0.36D-07    21.96
   22     3     3     1.51366279    -0.17993837   -24.28247851    -0.00000090    -0.00000054  0.34D-07  0.36D-07    21.96
   22     4     4     1.01146280    -0.10461117   -24.20715131    -0.00000063    -0.00000031  0.71D-09  0.18D-07    21.96
   23     1     1     1.51367678    -0.13835024   -24.28247912    -0.00000061    -0.00000032  0.18D-07  0.21D-07    23.00
   23     2     2     1.51367673    -0.17993898   -24.28247912    -0.00000061    -0.00000033  0.18D-07  0.21D-07    23.00
   23     3     3     1.51367681    -0.17993898   -24.28247912    -0.00000062    -0.00000033  0.18D-07  0.21D-07    23.00
   23     4     4     1.01147082    -0.10461158   -24.20715172    -0.00000041    -0.00000021  0.27D-09  0.13D-07    23.00
   24     1     1     1.51368749    -0.13835071   -24.28247959    -0.00000047    -0.00000029  0.93D-08  0.19D-07    24.03
   24     2     2     1.51368728    -0.17993945   -24.28247959    -0.00000047    -0.00000029  0.93D-08  0.19D-07    24.03
   24     3     3     1.51368710    -0.17993945   -24.28247959    -0.00000047    -0.00000029  0.93D-08  0.19D-07    24.03
   24     4     4     1.01147986    -0.10461191   -24.20715204    -0.00000033    -0.00000020  0.25D-09  0.12D-07    24.03
   25     1     1     1.51376315    -0.13835109   -24.28247997    -0.00000038    -0.00000024  0.94D-08  0.17D-07    25.08
   25     2     2     1.51376273    -0.17993983   -24.28247997    -0.00000038    -0.00000024  0.94D-08  0.17D-07    25.08
   25     3     3     1.51376249    -0.17993983   -24.28247997    -0.00000038    -0.00000024  0.94D-08  0.17D-07    25.08
   25     4     4     1.01148787    -0.10461218   -24.20715232    -0.00000028    -0.00000014  0.21D-09  0.85D-08    25.08
   26     1     1     1.51379704    -0.13835136   -24.28248024    -0.00000027    -0.00000015  0.68D-08  0.98D-08    25.93
   26     2     2     1.51379687    -0.17994010   -24.28248024    -0.00000027    -0.00000015  0.68D-08  0.99D-08    25.93
   26     3     3     1.51379684    -0.17994010   -24.28248024    -0.00000027    -0.00000015  0.68D-08  0.99D-08    25.93
   26     4     4     1.01148787    -0.10461218   -24.20715232    -0.00000000    -0.00000014  0.21D-09  0.85D-08    25.93
   27     1     1     1.51380639    -0.13835156   -24.28248044    -0.00000020    -0.00000013  0.36D-08  0.90D-08    26.78
   27     2     2     1.51380622    -0.17994031   -24.28248044    -0.00000020    -0.00000013  0.36D-08  0.90D-08    26.78
   27     3     3     1.51380629    -0.17994031   -24.28248044    -0.00000020    -0.00000013  0.36D-08  0.90D-08    26.78
   27     4     4     1.01148787    -0.10461218   -24.20715232    -0.00000000    -0.00000014  0.21D-09  0.85D-08    26.78
   28     1     1     1.51395892    -0.13835219   -24.28248108    -0.00000063    -0.00000009  0.56D-08  0.55D-08    27.67
   28     2     2     1.51383861    -0.17994048   -24.28248061    -0.00000017    -0.00000011  0.30D-08  0.76D-08    27.67
   28     3     3     1.51383838    -0.17994047   -24.28248061    -0.00000017    -0.00000011  0.30D-08  0.76D-08    27.67
   28     4     4     1.01148787    -0.10461218   -24.20715232     0.00000000    -0.00000014  0.21D-09  0.85D-08    27.67
   29     1     1     1.51399250    -0.13835226   -24.28248115    -0.00000007    -0.00000000  0.91D-10  0.22D-09    28.53
   29     2     2     1.51386594    -0.17994060   -24.28248074    -0.00000012    -0.00000007  0.25D-08  0.48D-08    28.53
   29     3     3     1.51386578    -0.17994060   -24.28248073    -0.00000012    -0.00000007  0.25D-08  0.48D-08    28.53
   29     4     4     1.01148787    -0.10461218   -24.20715232     0.00000000    -0.00000014  0.21D-09  0.85D-08    28.53


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.6%   1.6%
 P   1.5%  13.6%  63.9%

 Initialization:   0.5%
 Other:           17.7%

 Total CPU:       28.5 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 200///000           0.0000000   0.0000000   0.0000000   0.9887514
 2//0/0000          -0.0002620  -0.0005385   0.7970145  -0.0000000
 2//00/000          -0.0000000   0.7970145   0.0005385  -0.0000000
 2///00000           0.7969831  -0.0000001   0.0002620   0.0000000
 2//000/00           0.0000000  -0.1338337  -0.0000904   0.0000000
 2//0000/0           0.0000440   0.0000904  -0.1338337  -0.0000000
 2//00000/          -0.1338240   0.0000000  -0.0000440   0.0000000
 200//000/          -0.0000196  -0.0000403   0.0595831  -0.0000000
 200/0/00/          -0.0000000   0.0595831   0.0000403   0.0000000
 2000///00           0.0000196   0.0000403  -0.0595831   0.0000000
 2000//0/0          -0.0000000   0.0595831   0.0000403   0.0000000
 200/0//00          -0.0595739   0.0000000  -0.0000196  -0.0000000
 200//00/0          -0.0595739   0.0000000  -0.0000196  -0.0000000
 2000/0/0/          -0.0000000  -0.0000000   0.0000000  -0.0543422
 200/00//0          -0.0000000   0.0000000  -0.0000000   0.0543422
 20000/0//           0.0000000   0.0000000  -0.0000000   0.0543422

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2/0/00000   9.1     0.5336811  -0.0000001   0.0001754  -0.0000000
 2/000/000   9.1    -0.0000000   0.5336669   0.0003606  -0.0000000
 2/00/0000   9.1    -0.0001754  -0.0003606   0.5336668  -0.0000000
 2/00/0000  15.1     0.0000460   0.0000945  -0.1398177  -0.0000000
 2/000/000  15.1     0.0000000  -0.1398177  -0.0000945  -0.0000000
 2/0/00000  15.1    -0.1397988   0.0000000  -0.0000460   0.0000000
 2/00000/0   9.1     0.0000402   0.0000827  -0.1223531  -0.0000000
 2/0000/00   9.1     0.0000000  -0.1223531  -0.0000827   0.0000000
 2/000000/   9.1    -0.1223491   0.0000000  -0.0000402   0.0000000
 20//00000   9.1    -0.0757113   0.0000000  -0.0000249   0.0000000
 20/0/0000   9.1     0.0000249   0.0000512  -0.0757026  -0.0000000
 20/00/000   9.1     0.0000000  -0.0757025  -0.0000512  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000266    0.810407   -0.000000
 2           0.000000   -0.000548   -0.000000    0.810441
 3           0.000000    0.810441    0.000266    0.000548
 4           0.994152   -0.000000    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.810407   -0.000000    0.000000    0.000000
 2          -0.000000    0.810441   -0.000000    0.000000
 3           0.000000   -0.000000    0.810441   -0.000000
 4           0.000000    0.000000   -0.000000    0.994152


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.81040690 (fixed)   0.81271474 (relaxed)   0.81040694 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00570352    0.00000000    0.00190591
 Singles      0.51222552   -0.14204335   -0.13983167
 Pairs        0.00469856    0.00000000   -0.00042650
 Total        1.52262760   -0.14204335   -0.13835226
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.10254014
 Nuclear energy                         0.00000000
 Kinetic energy                        24.37945530
 One electron energy                  -31.09522400
 Two electron energy                    6.81274285
 Virial quotient                       -0.99602230
 Correlation energy                    -0.17994101
 !MRCI STATE 1.2 Energy               -24.282481148979

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.37652329 (Davidson, fixed reference)
 Cluster corrected energies           -24.37496948 (Davidson, relaxed reference)
 Cluster corrected energies           -24.37652329 (Davidson, rotated reference)

 Cluster corrected energies           -24.28248115 (Pople, fixed reference)
 Cluster corrected energies           -24.28248115 (Pople, relaxed reference)
 Cluster corrected energies           -24.28248115 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.81044086 (fixed)   0.81274871 (relaxed)   0.81044104 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00570295    0.00000000   -0.00067402
 Singles      0.51215596   -0.14203813   -0.15380887
 Pairs        0.00464054   -0.03790246   -0.02545770
 Total        1.52249945   -0.17994059   -0.17994060
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.10254014
 Nuclear energy                         0.00000000
 Kinetic energy                        24.37954887
 One electron energy                  -31.09534123
 Two electron energy                    6.81286049
 Virial quotient                       -0.99601846
 Correlation energy                    -0.17994060
 !MRCI STATE 2.2 Energy               -24.282480735192

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.37649960 (Davidson, fixed reference)
 Cluster corrected energies           -24.37494608 (Davidson, relaxed reference)
 Cluster corrected energies           -24.37649960 (Davidson, rotated reference)

 Cluster corrected energies           -24.28248074 (Pople, fixed reference)
 Cluster corrected energies           -24.28248074 (Pople, relaxed reference)
 Cluster corrected energies           -24.28248074 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.81044086 (fixed)   0.81274876 (relaxed)   0.81044109 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00570295    0.00000000   -0.02555210
 Singles      0.51215585   -0.14203812   -0.15380886
 Pairs        0.00464048   -0.00002561   -0.00057964
 Total        1.52249928   -0.14206374   -0.17994060
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.10254014
 Nuclear energy                         0.00000000
 Kinetic energy                        24.37954890
 One electron energy                  -31.09534139
 Two electron energy                    6.81286066
 Virial quotient                       -0.99601846
 Correlation energy                    -0.17994060
 !MRCI STATE 3.2 Energy               -24.282480734639

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.37649957 (Davidson, fixed reference)
 Cluster corrected energies           -24.37494605 (Davidson, relaxed reference)
 Cluster corrected energies           -24.37649957 (Davidson, rotated reference)

 Cluster corrected energies           -24.28248073 (Pople, fixed reference)
 Cluster corrected energies           -24.28248073 (Pople, relaxed reference)
 Cluster corrected energies           -24.28248073 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.99415204 (fixed)   0.99430508 (relaxed)   0.99415204 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030791    0.00000000   -0.09317116
 Singles      0.00107858   -0.01037388   -0.01036325
 Pairs        0.01041282   -0.00000000   -0.00107777
 Total        1.01179932   -0.01037388   -0.10461218
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.14412889
 Nuclear energy                         0.00000000
 Kinetic energy                        24.23854108
 One electron energy                  -31.75356455
 Two electron energy                    7.54641223
 Virial quotient                       -0.99870501
 Correlation energy                    -0.06302343
 !MRCI STATE 4.2 Energy               -24.207152320743

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.20789595 (Davidson, fixed reference)
 Cluster corrected energies           -24.20787633 (Davidson, relaxed reference)
 Cluster corrected energies           -24.20789595 (Davidson, rotated reference)

 Cluster corrected energies           -24.20715232 (Pople, fixed reference)
 Cluster corrected energies           -24.20715232 (Pople, relaxed reference)
 Cluster corrected energies           -24.20715232 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        9.92       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        46.22     28.75     15.61      1.05      0.03      0.57
 REAL TIME  *        49.96 SEC
 DISK USED  *        39.68 MB (local),      219.47 MB (total)
 SF USED    *        56.01 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =       -24.37652329  AU                              
 SETTING HLSDIAG(5)     =       -24.37649960  AU                              
 SETTING HLSDIAG(6)     =       -24.37649957  AU                              
 SETTING HLSDIAG(7)     =       -24.20789595  AU                              


        HLSDIAG
    -24.65105183
    -24.65105183
    -24.65105183
    -24.37652329
    -24.37649960
    -24.37649957
    -24.20789595
                                                  


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

 Time for Seward_LS:       0.17 sec

         907905. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.17 sec, REAL time:      0.19 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.02 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    46.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:    -24.649430    -24.649430    -24.649430
 Replaced energies:    -24.651052    -24.651052    -24.651052

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   4

 Original energies:    -24.282481    -24.282481    -24.282481    -24.207152
 Replaced energies:    -24.376523    -24.376500    -24.376500    -24.207896

 >>> Fock matrix approximation error in all internal so: 
   9.8931377284764935E-002  (exact)    2.6085982271260875E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.8939402692724970E-002  (exact)   -2.7386640420172567E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.2523527099538794E-005  (exact)    8.5765026103221689E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.6854198254280377E-005  (exact)   -1.8505644592653976E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.66811886624153083       (exact)   0.55853230414294985       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.2520372685170268E-005  (exact)   -8.5747746882664149E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.6854015195283502E-005  (exact)   -1.7629540657605810E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.8939390925220846E-002  (exact)   -2.6992002248574749E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.8939369367246163E-002  (exact)    2.6090280386138753E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.6854031789336795E-005  (exact)   -1.8238854719362077E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.66811885302707807       (exact)  -0.55962352743015042       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.11423616020671730       (exact)    3.0577110219187256E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.7550967118714673E-005  (exact)    1.0393016536435151E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.7196456845421462E-005  (exact)    2.1368397082235121E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.7554641327593143E-005  (exact)    1.0052853089540732E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.11424537203508110       (exact)   -3.1623397024821309E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.77147699518178092       (exact)  -0.64367758294724076       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -24.65105183

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00      -4.60       0.00      -0.00      -0.00       0.24      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00       4.60       0.24      -0.00       0.00      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       4.60       0.00       0.00       0.00      -0.24      -0.00      -0.00
                            0.00       0.00      -4.60       0.00       0.00       0.00       0.00      -0.00       0.00      -1.62

    3   3.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       1.62
                           -0.00       4.60      -0.00      -4.60      -0.00      -0.00       0.00      -0.24      -0.00      -0.00

    4   1.2  0.5 -0.5      -0.00       4.60      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       4.60      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5      -4.60       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       4.60       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.60      -0.00       0.00       0.00      -4.60       0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00       0.00   60252.05       0.00       0.00       0.00
                           -0.24      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       6.43       0.00

    8   2.2  1.5  1.5      -0.00      -0.24      -0.00       0.00       0.00       0.00       0.00   60257.25       0.00       0.00
                            0.00       0.00       0.24      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

    9   3.2  1.5  1.5       0.24      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   60257.26       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -6.43      -0.00       0.00      -0.00

   10   4.2  1.5  1.5      -0.00      -0.00       1.62       0.00       0.00       0.00       0.00       0.00       0.00   97261.47
                            0.00       1.62       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.27      -0.00      -0.14      -0.00      -0.00      -0.00      -3.72      -0.00       0.00

   12   2.2  1.5  0.5       0.00       0.00       0.00      -0.00      -0.14      -0.00      -0.00      -0.00       3.72      -0.00
                            0.00       0.00      -0.00       0.00       0.00       0.14       3.72      -0.00       0.00       0.00

   13   3.2  1.5  0.5       0.00       0.00       0.00       0.14      -0.00       0.00      -0.00      -3.72       0.00       0.00
                            0.00      -0.00       0.27      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   14   4.2  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.94      -0.00       0.00      -0.00      -0.00
                           -1.87      -0.00       0.00       0.00       0.94       0.00      -0.00      -0.00       0.00      -0.00

   15   1.2  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.14       0.00       0.00       0.00      -0.27      -0.00      -0.00      -0.00      -0.00      -0.00

   16   2.2  1.5 -0.5      -0.00      -0.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.14       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   17   3.2  1.5 -0.5       0.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.27      -0.00      -0.00      -0.00      -0.00

   18   4.2  1.5 -0.5      -0.00      -0.00       0.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.94      -0.00      -1.87      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   19   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.24       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   20   2.2  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.24      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.24      -0.00      -0.00      -0.00      -0.00

   21   3.2  1.5 -1.5       0.00       0.00       0.00       0.24      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22   4.2  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00       1.62       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -1.62      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.14      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       1.87      -0.14       0.00      -0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.14      -0.00      -0.00       0.00       0.00
                            0.27      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.94       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.94       0.00       0.00
                            0.00       0.00      -0.27      -0.00      -0.00       0.14       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5      -0.00      -0.00       0.14      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.14      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       1.87      -0.24       0.00

    5   2.2  0.5 -0.5       0.00      -0.14      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.24
                            0.00      -0.00       0.00      -0.94       0.27      -0.00       0.00       0.00      -0.00       0.00

    6   3.2  0.5 -0.5      -0.00      -0.00       0.00       0.94       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.14      -0.00      -0.00       0.00       0.00      -0.27      -0.00      -0.00       0.24

    7   1.2  1.5  1.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -3.72      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5       0.00      -0.00      -3.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       0.00       3.72       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   1.2  1.5  0.5   60252.05       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       2.14       0.00       0.00      -4.29      -0.00       0.00       0.00       0.00

   12   2.2  1.5  0.5       0.00   60257.25       0.00       0.00       0.00      -0.00      -4.29       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       4.29       0.00       0.00       0.00       0.00       0.00

   13   3.2  1.5  0.5       0.00       0.00   60257.26       0.00       0.00       4.29       0.00      -0.00       0.00       0.00
                           -2.14      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   14   4.2  1.5  0.5       0.00       0.00       0.00   97261.47       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5 -0.5      -0.00       0.00       0.00       0.00   60252.05       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -4.29      -0.00       0.00       0.00       0.00      -2.14      -0.00       0.00      -3.72

   16   2.2  1.5 -0.5      -0.00      -0.00       4.29      -0.00       0.00   60257.25       0.00       0.00       0.00      -0.00
                            4.29      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       3.72       0.00

   17   3.2  1.5 -0.5      -0.00      -4.29       0.00       0.00       0.00       0.00   60257.26       0.00       0.00       3.72
                            0.00      -0.00      -0.00      -0.00       2.14       0.00      -0.00       0.00       0.00      -0.00

   18   4.2  1.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00   97261.47       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   19   1.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00   60252.05       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -3.72      -0.00       0.00       0.00       0.00

   20   2.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       3.72      -0.00       0.00   60257.25
                           -0.00      -0.00      -0.00      -0.00       3.72      -0.00       0.00       0.00      -0.00       0.00

   21   3.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -3.72       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       6.43       0.00

   22   4.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       21         22

    1   1.2  0.5  0.5       0.00       0.00
                            0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00
                            0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00
                            0.00       0.00

    4   1.2  0.5 -0.5       0.24      -0.00
                           -0.00       0.00

    5   2.2  0.5 -0.5      -0.00      -0.00
                           -0.00       1.62

    6   3.2  0.5 -0.5       0.00       1.62
                            0.00       0.00

    7   1.2  1.5  1.5       0.00       0.00
                            0.00       0.00

    8   2.2  1.5  1.5       0.00       0.00
                            0.00       0.00

    9   3.2  1.5  1.5       0.00       0.00
                            0.00       0.00

   10   4.2  1.5  1.5       0.00       0.00
                            0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00
                            0.00       0.00

   12   2.2  1.5  0.5       0.00       0.00
                            0.00       0.00

   13   3.2  1.5  0.5       0.00       0.00
                            0.00       0.00

   14   4.2  1.5  0.5       0.00       0.00
                            0.00       0.00

   15   1.2  1.5 -0.5      -0.00      -0.00
                           -0.00       0.00

   16   2.2  1.5 -0.5      -3.72       0.00
                            0.00       0.00

   17   3.2  1.5 -0.5       0.00      -0.00
                            0.00      -0.00

   18   4.2  1.5 -0.5       0.00      -0.00
                            0.00       0.00

   19   1.2  1.5 -1.5       0.00       0.00
                           -6.43      -0.00

   20   2.2  1.5 -1.5       0.00       0.00
                           -0.00       0.00

   21   3.2  1.5 -1.5   60257.26       0.00
                           -0.00       0.00

   22   4.2  1.5 -1.5       0.00   97261.47
                           -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -24.65109374    -0.00004191       -9.20      0.00000000        0.00      0.0000
     2   -24.65109374    -0.00004191       -9.20      0.00000000        0.00      0.0000
     3   -24.65103088     0.00002095        4.60      0.00006286       13.80      0.0017
     4   -24.65103088     0.00002095        4.60      0.00006286       13.80      0.0017
     5   -24.65103087     0.00002096        4.60      0.00006286       13.80      0.0017
     6   -24.65103087     0.00002096        4.60      0.00006286       13.80      0.0017
     7   -24.37655835     0.27449348    60244.36      0.27453539    60253.55      7.4705
     8   -24.37655835     0.27449348    60244.36      0.27453539    60253.55      7.4705
     9   -24.37653576     0.27451607    60249.31      0.27455798    60258.51      7.4711
    10   -24.37653576     0.27451607    60249.31      0.27455798    60258.51      7.4711
    11   -24.37652071     0.27453112    60252.62      0.27457303    60261.82      7.4715
    12   -24.37652071     0.27453112    60252.62      0.27457303    60261.82      7.4715
    13   -24.37648249     0.27456934    60261.00      0.27461124    60270.20      7.4726
    14   -24.37648249     0.27456934    60261.00      0.27461124    60270.20      7.4726
    15   -24.37647734     0.27457449    60262.14      0.27461640    60271.33      7.4727
    16   -24.37647734     0.27457449    60262.14      0.27461640    60271.33      7.4727
    17   -24.37647026     0.27458157    60263.69      0.27462348    60272.89      7.4729
    18   -24.37647026     0.27458157    60263.69      0.27462348    60272.89      7.4729
    19   -24.20789595     0.44315588    97261.47      0.44319778    97270.67     12.0600
    20   -24.20789595     0.44315588    97261.47      0.44319778    97270.67     12.0600
    21   -24.20789595     0.44315588    97261.47      0.44319778    97270.67     12.0600
    22   -24.20789595     0.44315588    97261.47      0.44319778    97270.67     12.0600


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.575482439   0.046497402   0.801222986   0.104592959  -0.115496077   0.020509749  -0.000002885  -0.000000031
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.018267339  -0.226088601  -0.031733325   0.243089794   0.038657472   0.217690359   0.000000031  -0.000002882
                         0.042757953  -0.529200553  -0.057239615   0.438477910  -0.105218732  -0.592516163  -0.000000002   0.000000201

    3    3.2  0.5  0.5   0.042757665  -0.529196994  -0.034237853   0.262275258   0.124471407   0.700933409  -0.000000001   0.000000133
                        -0.018267216   0.226087081   0.018981279  -0.145403913   0.045730918   0.257522900  -0.000000021   0.000001912

    4    1.2  0.5 -0.5  -0.018267635   0.226092273  -0.050713653   0.388486420  -0.007073023  -0.039830162  -0.000000031   0.000002878
                        -0.042758647   0.529209147  -0.091475752   0.700740024   0.019251526   0.108410771   0.000000002  -0.000000200

    5    2.2  0.5 -0.5   0.575473093   0.046496647  -0.501353717  -0.065447531  -0.631240425   0.112095399  -0.000002889  -0.000000031
                         0.000000000  -0.000000000  -0.000000003   0.000000016  -0.000000029  -0.000000114  -0.000000000  -0.000000000

    6    3.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000003   0.000000016  -0.000000029  -0.000000114  -0.000000000  -0.000000000
                         0.575469223   0.046496334  -0.299884298  -0.039147390   0.746743399  -0.132606373  -0.000001916  -0.000000021

    7    1.2  1.5  1.5   0.000000001   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000   0.000202345   0.000002184
                         0.000002251   0.000000182   0.000003134   0.000000409  -0.000000452   0.000000080   0.615470150   0.006703478

    8    2.2  1.5  1.5   0.000000002   0.000000000  -0.000000048   0.000000383   0.000000330   0.000001860  -0.000144709   0.041206619
                         0.000000000  -0.000000000  -0.000000090   0.000000690  -0.000000899  -0.000005063   0.000031436  -0.002893608

    9    3.2  1.5  1.5  -0.000002251  -0.000000182  -0.000003134  -0.000000409   0.000000452  -0.000000079  -0.449767745  -0.004870873
                         0.000000001   0.000000000   0.000000001   0.000000001  -0.000000001  -0.000000003   0.000147889  -0.000000357

   10    4.2  1.5  1.5   0.000000000  -0.000000001  -0.000000384   0.000002941  -0.000003833  -0.000021585   0.000000000  -0.000000001
                        -0.000000000   0.000000000   0.000000213  -0.000001631  -0.000001408  -0.000007930   0.000000000  -0.000000011

   11    1.2  1.5  0.5  -0.000000097   0.000001197   0.000000465  -0.000003565   0.000000432   0.000002434  -0.000269978   0.024783609
                         0.000000041  -0.000000512  -0.000000258   0.000001977   0.000000159   0.000000896  -0.003861743   0.354572284

   12    2.2  1.5  0.5   0.000002601   0.000000210  -0.000001811  -0.000000235   0.000000261  -0.000000047   0.495753642   0.005542515
                         0.000000000  -0.000000001  -0.000000000   0.000000002   0.000000000   0.000000002   0.000000087  -0.000009962

   13    3.2  1.5  0.5  -0.000000040   0.000000511   0.000000199  -0.000001536   0.000000223   0.000001254   0.002638940  -0.211545780
                        -0.000000097   0.000001195   0.000000361  -0.000002767  -0.000000606  -0.000003411  -0.000161062   0.014786712

   14    4.2  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000003   0.000000000   0.000023162   0.000003024  -0.000003338   0.000000593   0.000000006   0.000000000

   15    1.2  1.5 -0.5  -0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000001   0.000000000  -0.000116824  -0.000001325
                         0.000001302   0.000000105  -0.000004076  -0.000000532  -0.000002593   0.000000461   0.355437362   0.003871169

   16    2.2  1.5 -0.5   0.000000082  -0.000001022  -0.000000112   0.000000878  -0.000000018  -0.000000090  -0.005529843   0.494558359
                         0.000000193  -0.000002392  -0.000000207   0.000001584   0.000000043   0.000000245   0.000374708  -0.034404990

   17    3.2  1.5 -0.5   0.000001300   0.000000104  -0.000003164  -0.000000412   0.000003634  -0.000000645   0.212061922   0.002643755
                         0.000000001  -0.000000002  -0.000000001   0.000000001  -0.000000001   0.000000000   0.000069954  -0.000022467

   18    4.2  1.5 -0.5   0.000000000  -0.000000002   0.000002644  -0.000020257  -0.000000556  -0.000003133   0.000000000  -0.000000000
                        -0.000000000   0.000000001  -0.000001466   0.000011231  -0.000000204  -0.000001151   0.000000000  -0.000000006

   19    1.2  1.5 -1.5  -0.000000167   0.000002070  -0.000000358   0.000002741   0.000000075   0.000000424  -0.000463037   0.042511276
                         0.000000071  -0.000000884   0.000000198  -0.000001519   0.000000028   0.000000156  -0.006687468   0.614000275

   20    2.2  1.5 -1.5   0.000000000   0.000000001  -0.000000789  -0.000000102  -0.000005394   0.000000958   0.041308083   0.000146541
                        -0.000000000   0.000000001  -0.000000000   0.000000002   0.000000000   0.000000000   0.000026925   0.000021318

   21    3.2  1.5 -1.5   0.000000071  -0.000000884   0.000000198  -0.000001519   0.000000024   0.000000157  -0.004859104   0.448693605
                         0.000000167  -0.000002070   0.000000358  -0.000002742  -0.000000075  -0.000000424   0.000338390  -0.031065987

   22    4.2  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000001   0.000000000  -0.000003363  -0.000000439  -0.000022995   0.000004083   0.000000011   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000004924   0.000000444   0.000002461  -0.000000682   0.000000673  -0.000000023   0.000001027  -0.000000029
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000445  -0.000004928  -0.000000682  -0.000002461   0.000000023   0.000000675   0.000000029   0.000001005
                        -0.000000012   0.000000135  -0.000000000  -0.000000000  -0.000000000  -0.000000002   0.000000005   0.000000190

    3    3.2  0.5  0.5   0.000000000  -0.000000002   0.000000001   0.000000005   0.000000000   0.000000001   0.000000000   0.000000000
                         0.000000000  -0.000000002  -0.000001627  -0.000005868   0.000000010   0.000000284  -0.000000000  -0.000000001

    4    1.2  0.5 -0.5   0.000000444  -0.000004923   0.000000682   0.000002461  -0.000000023  -0.000000673   0.000000029   0.000001009
                        -0.000000012   0.000000133   0.000000001   0.000000003   0.000000000   0.000000001   0.000000005   0.000000191

    5    2.2  0.5 -0.5  -0.000004930  -0.000000445   0.000002461  -0.000000682   0.000000675  -0.000000023  -0.000001023   0.000000029
                        -0.000000002  -0.000000000   0.000000003  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000

    6    3.2  0.5 -0.5  -0.000000002  -0.000000000   0.000000003  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000002   0.000000000  -0.000005868   0.000001627  -0.000000284   0.000000010  -0.000000001   0.000000000

    7    1.2  1.5  1.5  -0.000145188  -0.000013123  -0.000069860   0.000019330   0.000185982  -0.000006473   0.000076191  -0.000002055
                        -0.441702518  -0.039849455  -0.212432627   0.058886891   0.567161082  -0.019619393   0.231876458  -0.006611252

    8    2.2  1.5  1.5  -0.025622954   0.281881867   0.171427132   0.618710574  -0.010541652  -0.294293702  -0.015554592  -0.532781496
                         0.000704475  -0.007807785   0.000103355   0.000373037   0.000025324   0.000729563  -0.002866864  -0.100564946

    9    3.2  1.5  1.5   0.281750674   0.025610881   0.112679123  -0.030785061   0.531426182  -0.018581830   0.543886405  -0.015865963
                        -0.000092143  -0.000013632  -0.000036940   0.000010523  -0.000174249   0.000006543  -0.000180647  -0.000062855

   10    4.2  1.5  1.5   0.000000000  -0.000000002   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000002
                         0.000000005  -0.000000057  -0.000000027  -0.000000096   0.000000000   0.000000011   0.000000000   0.000000012

   11    1.2  1.5  0.5  -0.001887931   0.020926040  -0.000031541  -0.000113901   0.000024383   0.000706391  -0.002115697  -0.074212124
                        -0.068981555   0.764613147   0.033888404   0.122249271   0.011365713   0.328520262   0.011187082   0.392467133

   12    2.2  1.5  0.5   0.162590523   0.014779038   0.227232117  -0.063462194  -0.446316996   0.015461072   0.312615397  -0.009118874
                         0.000000271  -0.000002978  -0.000000139  -0.000000419  -0.000000359  -0.000000087  -0.000001069  -0.000039063

   13    3.2  1.5  0.5   0.014761044  -0.162391660   0.180107868   0.649134633  -0.001377537  -0.031124881   0.008995512   0.308136374
                        -0.000400968   0.004444630   0.000167602   0.000604818   0.000002337   0.000066948   0.001661166   0.058267053

   14    4.2  1.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000098  -0.000000009  -0.000000055   0.000000015  -0.000000006   0.000000000  -0.000000020   0.000000001

   15    1.2  1.5 -0.5  -0.000251448  -0.000022719   0.000040167  -0.000011168  -0.000108255   0.000003689   0.000131363  -0.000003433
                         0.764899406   0.069007382  -0.122249317   0.033888417   0.328521004  -0.011365739  -0.399421923   0.011385384

   16    2.2  1.5 -0.5  -0.014773719   0.162531112  -0.063462144  -0.227231936  -0.015461047  -0.446316256  -0.008966807  -0.307152760
                         0.000396490  -0.004394977  -0.000079561  -0.000286514   0.000028062   0.000812966  -0.001658842  -0.058185641

   17    3.2  1.5 -0.5   0.162452464   0.014766489   0.649134879  -0.180107936   0.031124951  -0.001377539   0.313596977  -0.009147510
                         0.000053675   0.000001842   0.000213270  -0.000059384   0.000010279   0.000000171   0.000102014  -0.000042123

   18    4.2  1.5 -0.5  -0.000000000   0.000000003   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000004
                        -0.000000009   0.000000098  -0.000000015  -0.000000055   0.000000000   0.000000006  -0.000000001  -0.000000020

   19    1.2  1.5 -1.5   0.001063984  -0.011793768  -0.000093544  -0.000337583   0.000029248   0.000846645   0.001232518   0.043232161
                         0.039835251  -0.441545063   0.058886820   0.212432370   0.019619372   0.567160481  -0.006495349  -0.227810618

   20    2.2  1.5 -1.5   0.281989918   0.025632633  -0.618710552   0.171427126  -0.294294542   0.010541681   0.542189362  -0.015816388
                         0.000185867   0.000011648  -0.000406709   0.000112690  -0.000193742   0.000006131   0.000354598  -0.000078281

   21    3.2  1.5 -1.5   0.025601892  -0.281650225   0.030785023   0.112678987  -0.018581811  -0.531425618   0.015600430   0.534349265
                        -0.000678617   0.007523410   0.000049320   0.000178946   0.000027289   0.000793316   0.002891247   0.101406694

   22    4.2  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000057   0.000000005  -0.000000096   0.000000027  -0.000000011   0.000000000   0.000000012  -0.000000000


   Nr   State  S   Sz       17            18            19            20            21            22

    1    1.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000004032  -0.000000000  -0.000018847
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000000   0.000000000   0.000000065   0.000000000   0.000008762  -0.000000000
                         0.000000000  -0.000000000  -0.000014337   0.000000000   0.000009435  -0.000000000

    3    3.2  0.5  0.5   0.000000000  -0.000000000   0.000018317  -0.000000000   0.000004429   0.000000000
                         0.000000000  -0.000000000   0.000000147   0.000000000  -0.000004015  -0.000000000

    4    1.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000082  -0.000000000   0.000012780   0.000000000
                        -0.000000000   0.000000000   0.000003982  -0.000000000   0.000013866   0.000000000

    5    2.2  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000014303  -0.000000000   0.000012913
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    6    3.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000018333   0.000000000   0.000005930

    7    1.2  1.5  1.5   0.000039245   0.000094612  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000081381  -0.000195527   0.000000000  -0.000000011  -0.000000000  -0.000000051

    8    2.2  1.5  1.5  -0.324484312   0.134754811   0.000000001  -0.000000000   0.000000013  -0.000000000
                         0.036246371  -0.015009637  -0.000000088   0.000000000   0.000000014   0.000000000

    9    3.2  1.5  1.5  -0.122170999  -0.294148442   0.000000000   0.000000011   0.000000000   0.000000051
                        -0.059045509  -0.142277314  -0.000000000  -0.000000000   0.000000000  -0.000000000

   10    4.2  1.5  1.5  -0.000000000   0.000000000   0.978390194  -0.000000118  -0.149962243   0.000000025
                        -0.000000000   0.000000000   0.006363774   0.000000211   0.142209200  -0.000000045

   11    1.2  1.5  0.5   0.000013880  -0.000005705   0.000000038  -0.000000000  -0.000000051  -0.000000000
                         0.000124471  -0.000051780   0.000000000   0.000000000   0.000000047  -0.000000000

   12    2.2  1.5  0.5  -0.211317997  -0.508786598  -0.000000000   0.000000006   0.000000000   0.000000029
                        -0.102216375  -0.246302437   0.000000000  -0.000000000   0.000000000  -0.000000000

   13    3.2  1.5  0.5   0.562221961  -0.233484280   0.000000001   0.000000000  -0.000000032   0.000000000
                        -0.062615569   0.025929059  -0.000000063   0.000000000  -0.000000035  -0.000000000

   14    4.2  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.209211429  -0.000000000   0.977870430

   15    1.2  1.5 -0.5   0.000022658   0.000054624   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000046908  -0.000112703  -0.000000000  -0.000000038  -0.000000000   0.000000070

   16    2.2  1.5 -0.5   0.561815812  -0.233315573  -0.000000000  -0.000000000   0.000000020  -0.000000000
                        -0.062383382   0.025832664   0.000000006   0.000000000   0.000000022  -0.000000000

   17    3.2  1.5 -0.5   0.211444861   0.509091974  -0.000000000   0.000000063   0.000000000   0.000000048
                         0.102363547   0.246656857   0.000000000  -0.000000000   0.000000000   0.000000000

   18    4.2  1.5 -0.5  -0.000000000   0.000000000   0.206624822  -0.000000055   0.719440602   0.000000012
                        -0.000000000   0.000000000   0.004279465   0.000000021  -0.663093575  -0.000000004

   19    1.2  1.5 -1.5   0.000023934  -0.000009836   0.000000011  -0.000000000   0.000000037   0.000000000
                         0.000215892  -0.000089812   0.000000000   0.000000000  -0.000000034  -0.000000000

   20    2.2  1.5 -1.5   0.122019886   0.293784485  -0.000000000  -0.000000088   0.000000000   0.000000019
                         0.059121027   0.142458922   0.000000000  -0.000000000   0.000000000   0.000000000

   21    3.2  1.5 -1.5  -0.324766795   0.134872058   0.000000000  -0.000000000  -0.000000034   0.000000000
                         0.035953712  -0.014888019  -0.000000011   0.000000000  -0.000000037  -0.000000000

   22    4.2  1.5 -1.5   0.000000000   0.000000000  -0.000000216  -0.000000345   0.000000037   0.000000074
                        -0.000000000  -0.000000000   0.000000129   0.977870430   0.000000006  -0.209211429


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  33.118%   0.216%  64.196%   1.094%   1.334%   0.042%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.216%  33.117%   0.428%  25.136%   1.257%  39.846%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.216%  33.116%   0.153%   8.993%   1.758%  55.763%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.216%  33.118%   1.094%  64.196%   0.042%   1.334%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5  33.117%   0.216%  25.136%   0.428%  39.846%   1.257%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5  33.116%   0.216%   8.993%   0.153%  55.763%   1.758%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  37.880%   0.004%  19.510%   0.159%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.171%   0.066%   7.952%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  20.229%   0.002%   7.938%   0.066%
   10    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  12.634%   0.476%  58.507%
   12    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  24.577%   0.003%   2.644%   0.022%
   13    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   4.497%   0.022%   2.639%
   14    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.634%   0.001%  58.507%   0.476%
   16    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%  24.577%   0.022%   2.644%
   17    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.497%   0.001%   2.639%   0.022%
   18    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%  37.880%   0.159%  19.510%
   20    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.171%   0.000%   7.952%   0.066%
   21    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  20.229%   0.066%   7.938%
   22    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   4.513%   0.347%  32.167%   0.038%   5.377%   0.004%   0.000%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   2.939%  38.280%   0.011%   8.661%   0.025%  29.397%  10.660%   1.838%   0.000%   0.000%
    9    3.2  1.5  1.5   1.270%   0.095%  28.241%   0.035%  29.581%   0.025%   1.841%  10.677%   0.000%   0.000%
   10    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  95.729%   0.000%
   11    1.2  1.5  0.5   0.115%   1.494%   0.013%  10.793%   0.013%  15.954%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   5.163%   0.403%  19.920%   0.024%   9.773%   0.008%   5.510%  31.953%   0.000%   0.000%
   13    3.2  1.5  0.5   3.244%  42.138%   0.000%   0.097%   0.008%   9.834%  32.001%   5.519%   0.000%   0.000%
   14    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.377%
   15    1.2  1.5 -0.5   1.494%   0.115%  10.793%   0.013%  15.954%   0.013%   0.000%   0.000%   0.000%   0.000%
   16    2.2  1.5 -0.5   0.403%   5.163%   0.024%  19.920%   0.008%   9.773%  31.953%   5.510%   0.000%   0.000%
   17    3.2  1.5 -0.5  42.138%   3.244%   0.097%   0.000%   9.834%   0.008%   5.519%  32.001%   0.000%   0.000%
   18    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.271%   0.000%
   19    1.2  1.5 -1.5   0.347%   4.513%   0.038%  32.167%   0.004%   5.377%   0.000%   0.000%   0.000%   0.000%
   20    2.2  1.5 -1.5  38.280%   2.939%   8.661%   0.011%  29.397%   0.025%   1.838%  10.660%   0.000%   0.000%
   21    3.2  1.5 -1.5   0.095%   1.270%   0.035%  28.241%   0.025%  29.581%  10.677%   1.841%   0.000%   0.000%
   22    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  95.623%

   Nr   State  S   Sz      21       22

    1    1.2  0.5  0.5   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%   0.000%
    9    3.2  1.5  1.5   0.000%   0.000%
   10    4.2  1.5  1.5   4.271%   0.000%
   11    1.2  1.5  0.5   0.000%   0.000%
   12    2.2  1.5  0.5   0.000%   0.000%
   13    3.2  1.5  0.5   0.000%   0.000%
   14    4.2  1.5  0.5   0.000%  95.623%
   15    1.2  1.5 -0.5   0.000%   0.000%
   16    2.2  1.5 -0.5   0.000%   0.000%
   17    3.2  1.5 -0.5   0.000%   0.000%
   18    4.2  1.5 -0.5  95.729%   0.000%
   19    1.2  1.5 -1.5   0.000%   0.000%
   20    2.2  1.5 -1.5   0.000%   0.000%
   21    3.2  1.5 -1.5   0.000%   0.000%
   22    4.2  1.5 -1.5   0.000%   4.377%


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
              1      24       44.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        9.92       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        67.94     21.72     28.75     15.61      1.05      0.03      0.57
 REAL TIME  *        73.01 SEC
 DISK USED  *        39.70 MB (local),      295.49 MB (total)
 SF USED    *        56.01 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -24.207895954020

              CI              CI           MULTI         RHF-SCF
    -24.20715232    -24.64943020    -24.10254014    -24.53495315
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
