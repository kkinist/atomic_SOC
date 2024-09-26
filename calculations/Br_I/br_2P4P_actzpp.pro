
 Working directory              : /wrk/irikura/molpro.c82iCzb5Ej/
 Global scratch directory       : /wrk/irikura/molpro.c82iCzb5Ej/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.c82iCzb5Ej/

 id        : nistki

 Nodes     nprocs
 comp-102     6
 Distribution of processes:   nprocs(total)=    7   nprocs(compute)=    6   nprocs(helper)=    1
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Br SO-CI
                                                                                 ! active space (7/4)
 memory,1500,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Br};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf;wf,charge=-1}
 
 NDOUB=3
 NQUAR=3
 
 {multi
     occ,8,9
     closed,6,3
     wf,charge=0,sym=2,spin=1;state,NDOUB;
     wf,charge=0,sym=2,spin=3;state,NQUAR;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,NDOUB; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,NQUAR; save,5303.2}
 hlsdiag(NDOUB+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5203.2,5303.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 08:33:13 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (9 PROC) 64 bit mpp version                                                            DATE: 10-Jun-24          TIME: 08:53:39  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Br   ECP ECP10MDF                 selected for group  1
 Library entry BR     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BR     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BR     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BR     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BR     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  BR     25.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   25
 NUMBER OF PRIMITIVE AOS:         182
 NUMBER OF SYMMETRY AOS:          152
 NUMBER OF CONTRACTIONS:           96   (   47Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.233E-04 0.335E-02 0.179E-01 0.457E-01 0.457E-01 0.457E-01 0.457E-01 0.457E-01
         2 0.878E-02 0.878E-02 0.878E-02 0.168E-01 0.168E-01 0.168E-01 0.174E+00 0.174E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     16.515 MB (compressed) written to integral file ( 18.6%)

     Node minimum: 2.097 MB, node maximum: 3.146 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     922392.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     922392      RECORD LENGTH: 524288

 Memory used in sort:       1.48 MW

 SORT1 READ    11031004. AND WROTE      179214. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.05 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     60 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      920824.  Node maximum:      925041. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.66      0.50
 REAL TIME  *         1.56 SEC
 DISK USED  *        29.18 MB (local),      207.00 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -415.54270562    -415.54270562     0.00D+00     0.15D+00     0     0       0.00      0.02    start
   2     -415.57368280      -0.03097718     0.61D-02     0.18D-01     1     0       0.01      0.03    diag
   3     -415.57774837      -0.00406557     0.44D-02     0.27D-02     2     0       0.01      0.04    diag
   4     -415.57788187      -0.00013350     0.74D-03     0.65D-03     3     0       0.00      0.04    diag
   5     -415.57789845      -0.00001658     0.13D-03     0.33D-03     4     0       0.01      0.05    diag
   6     -415.57789913      -0.00000068     0.25D-04     0.10D-03     5     0       0.01      0.06    diag
   7     -415.57789914      -0.00000001     0.26D-05     0.17D-04     6     0       0.00      0.06    diag
   8     -415.57789914      -0.00000000     0.12D-06     0.33D-06     7     0       0.01      0.07    fixocc
   9     -415.57789914      -0.00000000     0.13D-07     0.36D-07     0     0       0.00      0.07    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -415.577899141401
  RHF One-electron energy            -738.023438378065
  RHF Two-electron energy             322.445539236664
  RHF Kinetic energy                  295.794150342238
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.404956449141

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -9.52295     1  1  s    0.99477
    2.1     2.00000    -2.82147     1  1  d0   0.99994
    3.1     2.00000    -2.82147     1  1  d2-  0.99247
    4.1     2.00000    -2.82147     1  1  d2+  0.99171
    5.1     2.00000    -2.82147     1  1  d1+  0.99909
    6.1     2.00000    -2.82147     1  1  d1-  0.99920
    7.1     2.00000    -0.71232     1  2  s    0.93903
    1.2     2.00000    -7.27044     1  1  px   0.99990
    2.2     2.00000    -7.27044     1  1  py   0.97075
    3.2     2.00000    -7.27044     1  1  pz   0.97049
    4.2     2.00000    -0.13741     1  2  px   0.87943
    5.2     2.00000    -0.13741     1  2  py   0.87910
    6.2     2.00000    -0.13741     1  2  pz   0.87910


 HOMO      6.2    -0.137413 =      -3.7392eV
 LUMO      8.1     0.265046 =       7.2123eV
 LUMO-HOMO         0.402459 =      10.9515eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.46       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.74      0.08      0.50
 REAL TIME  *         1.79 SEC
 DISK USED  *        29.67 MB (local),      209.94 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =         3.00000000                                  
 SETTING NQUAR          =         3.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      79 (   39   40)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             3
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.854D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.126D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.154D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.644D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.552D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 5 4 6 1 1 3 5   2 4 6 1 3 5 6 4 2 1   6 4 3 5 2 1 3 5 4 6   2 812 71311 9101415
                                        5 3 4 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.273D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.199D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.214D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.268D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.268D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.197D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.197D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 2 1 3 3   2 1 6 7 9 810 4 5 8  10 5 4 9 7 6 3 1 2 8  10 7 9 6 5 4 1 3 2 8
                                       10 5 4 9 7 6 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667
 
 Number of orbital rotations:  702  ( 30 closed/active, 354 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    8970
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   58    0   -415.27079514    -415.34078472   -0.06998958    0.31283883 0.00312014 0.00237056  0.11E+01      0.81
   2    8   38    0   -415.32392817    -415.32824773   -0.00431956    0.24380099 0.00020815 0.00087260  0.21E+00      1.44
   3   10   44    0   -415.32827700    -415.32827850   -0.00000151    0.00160117 0.00000155 0.00000093  0.15E-01      2.14
   4    5   20    0   -415.32827850    -415.32827850   -0.00000000    0.00000048 0.00000000 0.00000011  0.19E-04      2.56

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.30E-07)
                       Final energy:   -415.32827850
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -415.490466409714
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.86369108
 One electron energy                          -729.88232028
 Two electron energy                           314.39185387
 Virial ratio                                    2.40433071
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -415.490466409714
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.86369108
 One electron energy                          -729.88232028
 Two electron energy                           314.39185387
 Virial ratio                                    2.40433071
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -415.490466409714
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.86369108
 One electron energy                          -729.88232028
 Two electron energy                           314.39185387
 Virial ratio                                    2.40433071
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -415.166090597909
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.32303164
 One electron energy                          -723.89364494
 Two electron energy                           308.72755434
 Virial ratio                                    2.40580329
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -415.166090597907
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.32303164
 One electron energy                          -723.89364494
 Two electron energy                           308.72755434
 Virial ratio                                    2.40580329
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -415.166090597907
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.32303164
 One electron energy                          -723.89364494
 Two electron energy                           308.72755434
 Virial ratio                                    2.40580329
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999933254893
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.259572419429
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.740494325678
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999993867832
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.353952442805
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.646053689363
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999908535402
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.740432235810
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.259659228788
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999998980800
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.646054270590
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.353946748610
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000158209705
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999995344761
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999846445534
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000007151368
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999993286606
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999562026
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 6 2 1 1 3 5   2 4 6 1 3 5 4 6 2 1   3 5 4 6 2 1 3 5 6 4   21310 8121415 7 911
                                        3 5 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 1 2 3 3   2 1 6 9 7 810 4 5 8  10 9 7 4 5 6 3 1 2 8  10 9 7 4 5 6 2 1 3 8
                                       10 4 5 9 7 6 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -9.97596     1  1  s    0.99544
    2.1     2.00000    -3.27456     1  1  d2-  1.00025
    3.1     2.00000    -3.27456     1  1  d2+  1.00025
    4.1     2.00000    -3.27456     1  1  d1+  1.00025
    5.1     2.00000    -3.27456     1  1  d1-  1.00025
    6.1     2.00000    -3.27456     1  1  d0   1.00025
    7.1     1.99569    -1.10873     1  2  s    0.99021
    8.1     0.00467     0.42486     1  2  s   -0.77025    1  3  s   -1.28792    1  4  s    0.26638    1  5  s    1.36227
                                    1  7  s    0.28184
    1.2     2.00000    -7.72313     1  1  py   0.99986
    2.2     2.00000    -7.72313     1  1  px   0.99986
    3.2     2.00000    -7.72313     1  1  pz   0.99986
    4.2     1.49644    -0.44109     1  2  pz   1.05587
    5.2     1.49644    -0.44109     1  2  py   1.05587
    6.2     1.49644    -0.44109     1  2  px   1.05587
    7.2     0.17011     0.09877     1  2  px  -0.47829    1  7  px   1.13501
    8.2     0.17011     0.09877     1  2  py  -0.47829    1  7  py   1.13501
    9.2     0.17011     0.09877     1  2  pz  -0.47829    1  7  pz   1.13501
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 a22000      0.99316690     -0.00214303      0.01230801
 20 22a000      0.00811459      0.85466888     -0.50597613
 20 2a2000     -0.00949911      0.50603665      0.85461878
 
 Energy:     -415.49046641   -415.49046641   -415.49046641
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 20 a2aa00      0.70264652     -0.00182058      0.00046501
 20 aa20a0      0.70264652     -0.00182058      0.00046501
 20 2aaa00      0.00070936      0.41802937      0.56477129
 20 aa200a     -0.00070936     -0.41802937     -0.56477129
 20 2aa0a0      0.00173998      0.56476880     -0.41802971
 20 a2a00a      0.00173998      0.56476880     -0.41802971
 
 Energy:     -415.16609060   -415.16609060   -415.16609060
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.74       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.88      2.14      0.08      0.50
 REAL TIME  *         4.79 SEC
 DISK USED  *        38.00 MB (local),      259.90 MB (total)
 SF USED    *        22.43 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -415.4904664   2.0
    -415.4904664   2.0
    -415.4904664   2.0
    -415.1660906   2.0
    -415.1660906   2.0
    -415.1660906   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 25
 Maximum number of shells:             7
 Maximum number of spin couplings:   429

 Reference space:      554 conf     1204 CSFs
 N elec internal:    56699 conf   278292 CSFs
 N-1 el internal:    59743 conf   501108 CSFs
 N-2 el internal:    32490 conf   411156 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      79 (  39  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -415.49046641
     2      -415.49046641
     3      -415.49046641

 Number of blocks in overlap matrix:   384   Smallest eigenvalue:  0.19D-06
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      19794040
 Number of doubly external configurations:       1354752
 Total number of contracted configurations:     21288092
 Total number of uncontracted configurations:  658987970

 Diagonal Coupling coefficients finished.               Storage:  64528015 words, CPU-Time:    124.17 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4841109 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -415.49046641    -0.00000000    -0.97138232  0.32D-01  0.64D-01   145.30
    1     2     2     1.00000000     0.00000000  -415.49046641     0.00000000    -0.97136642  0.32D-01  0.64D-01   145.30
    1     3     3     1.00000000     0.00000000  -415.49046641    -0.00000000    -0.97139005  0.32D-01  0.64D-01   145.30
    2     1     1     1.06855653    -0.82234325  -416.31280966    -0.82234325    -0.01725983  0.22D-02  0.90D-03  1006.68
    2     2     2     1.06856530    -0.82233832  -416.31280473    -0.82233832    -0.01726374  0.22D-02  0.90D-03  1006.68
    2     3     3     1.06856618    -0.82233767  -416.31280408    -0.82233767    -0.01726103  0.22D-02  0.90D-03  1006.68
    3     1     1     1.06382770    -0.83856139  -416.32902780    -0.01621813    -0.00045116  0.28D-04  0.51D-04  1863.97
    3     2     2     1.06382916    -0.83856083  -416.32902724    -0.01622251    -0.00045144  0.28D-04  0.51D-04  1863.97
    3     3     3     1.06382939    -0.83856072  -416.32902713    -0.01622305    -0.00045153  0.28D-04  0.51D-04  1863.97
    4     1     1     1.06454038    -0.83905150  -416.32951791    -0.00049011    -0.00002803  0.11D-05  0.41D-05  2726.62
    4     2     2     1.06454098    -0.83905141  -416.32951782    -0.00049058    -0.00002810  0.11D-05  0.42D-05  2726.62
    4     3     3     1.06454128    -0.83905139  -416.32951780    -0.00049067    -0.00002811  0.11D-05  0.42D-05  2726.62
    5     1     1     1.06495465    -0.83908517  -416.32955157    -0.00003367    -0.00000214  0.12D-06  0.26D-06  3584.20
    5     2     2     1.06495449    -0.83908516  -416.32955157    -0.00003376    -0.00000214  0.12D-06  0.26D-06  3584.20
    5     3     3     1.06495439    -0.83908516  -416.32955157    -0.00003377    -0.00000214  0.12D-06  0.26D-06  3584.20
    6     1     1     1.06497837    -0.83908763  -416.32955404    -0.00000247    -0.00000015  0.11D-07  0.18D-07  4440.33
    6     2     2     1.06497829    -0.83908763  -416.32955404    -0.00000247    -0.00000015  0.11D-07  0.18D-07  4440.33
    6     3     3     1.06497827    -0.83908763  -416.32955404    -0.00000247    -0.00000015  0.11D-07  0.18D-07  4440.33
    7     1     1     1.06498489    -0.83908780  -416.32955421    -0.00000017    -0.00000001  0.61D-09  0.16D-08  5297.63
    7     2     2     1.06498488    -0.83908780  -416.32955421    -0.00000017    -0.00000001  0.61D-09  0.16D-08  5297.63
    7     3     3     1.06498488    -0.83908780  -416.32955421    -0.00000017    -0.00000001  0.61D-09  0.16D-08  5297.63


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.1%
 S   0.6%  26.8%
 P   0.4%  60.1%   8.3%

 Initialization:   2.4%
 Other:            0.4%

 Total CPU:     5297.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/22000           0.9603493   0.0173065  -0.0843540
 222222202222/2000          -0.0006066   0.9458645   0.1871520
 2222222022222/000           0.0861089  -0.1863511   0.9420958

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.964895    0.086516   -0.000609
 2           0.017388   -0.187233    0.950342
 3          -0.084753    0.946555    0.188038

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968766   -0.000000    0.000000
 2          -0.000000    0.968767    0.000000
 3           0.000000    0.000000    0.968767


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.96489536 (fixed)   0.96898130 (relaxed)   0.96876650 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050285   -0.00048554   -0.72918329
 Singles      0.01374516   -0.06303799   -0.06998367
 Pairs        0.05127240    0.00048794   -0.03992084
 Total        1.06552042   -0.06303559   -0.83908780
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.49046641
 Nuclear energy                         0.00000000
 Kinetic energy                       295.76433213
 One electron energy                 -728.82185452
 Two electron energy                  312.49230031
 Virial quotient                       -1.40763949
 Correlation energy                    -0.83908780
 !MRCI STATE 1.2 Energy              -416.329554209447

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.38453159 (Davidson, fixed reference)
 Cluster corrected energies          -416.38413524 (Davidson, relaxed reference)
 Cluster corrected energies          -416.38453159 (Davidson, rotated reference)

 Cluster corrected energies          -416.38284116 (Pople, fixed reference)
 Cluster corrected energies          -416.38243527 (Pople, relaxed reference)
 Cluster corrected energies          -416.38284116 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95034199 (fixed)   0.96898131 (relaxed)   0.96876650 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050285   -0.00048554   -0.01469476
 Singles      0.01374517   -0.06303800   -0.06998367
 Pairs        0.05127239   -0.76081417   -0.75440937
 Total        1.06552041   -0.82433771   -0.83908780
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.49046641
 Nuclear energy                         0.00000000
 Kinetic energy                       295.76433280
 One electron energy                 -728.82185541
 Two electron energy                  312.49230120
 Virial quotient                       -1.40763949
 Correlation energy                    -0.83908780
 !MRCI STATE 2.2 Energy              -416.329554209269

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.38453159 (Davidson, fixed reference)
 Cluster corrected energies          -416.38413524 (Davidson, relaxed reference)
 Cluster corrected energies          -416.38453159 (Davidson, rotated reference)

 Cluster corrected energies          -416.38284115 (Pople, fixed reference)
 Cluster corrected energies          -416.38243526 (Pople, relaxed reference)
 Cluster corrected energies          -416.38284115 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94655542 (fixed)   0.96898131 (relaxed)   0.96876650 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050285   -0.00048554   -0.58744481
 Singles      0.01374517   -0.06303800   -0.06998367
 Pairs        0.05127239   -0.15053729   -0.18165931
 Total        1.06552041   -0.21406084   -0.83908780
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.49046641
 Nuclear energy                         0.00000000
 Kinetic energy                       295.76433368
 One electron energy                 -728.82185573
 Two electron energy                  312.49230152
 Virial quotient                       -1.40763948
 Correlation energy                    -0.83908780
 !MRCI STATE 3.2 Energy              -416.329554209058

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.38453159 (Davidson, fixed reference)
 Cluster corrected energies          -416.38413524 (Davidson, relaxed reference)
 Cluster corrected energies          -416.38453159 (Davidson, rotated reference)

 Cluster corrected energies          -416.38284115 (Pople, fixed reference)
 Cluster corrected energies          -416.38243526 (Pople, relaxed reference)
 Cluster corrected energies          -416.38284115 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      495.45       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5442.21   5439.33      2.14      0.08      0.50
 REAL TIME  *      5491.77 SEC
 DISK USED  *       532.71 MB (local),        3.15 GB (total)
 SF USED    *         5.39 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -416.38453159  AU                              
 SETTING HLSDIAG(2)     =      -416.38453159  AU                              
 SETTING HLSDIAG(3)     =      -416.38453159  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 25
 Maximum number of shells:             6
 Maximum number of spin couplings:   572

 Reference space:      344 conf      656 CSFs
 N elec internal:    52189 conf   229224 CSFs
 N-1 el internal:    51137 conf   453552 CSFs
 N-2 el internal:    21984 conf   385640 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      79 (  39  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -415.16609060
     2      -415.16609060
     3      -415.16609060

 Number of blocks in overlap matrix:   339   Smallest eigenvalue:  0.36D-05
 Number of N-2 electron functions:     860
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      17915816
 Number of doubly external configurations:       1343552
 Total number of contracted configurations:     19373820
 Total number of uncontracted configurations:  616281052

 Diagonal Coupling coefficients finished.               Storage:  54527792 words, CPU-Time:     91.14 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   7260128 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -415.16609060     0.00000000    -0.95377852  0.37D-01  0.59D-01   112.25
    1     2     2     1.00000000     0.00000000  -415.16609060    -0.00000000    -0.95369841  0.37D-01  0.59D-01   112.25
    1     3     3     1.00000000     0.00000000  -415.16609060     0.00000000    -0.95375704  0.37D-01  0.59D-01   112.25
    2     1     1     1.06806100    -0.80654001  -415.97263061    -0.80654001    -0.01622368  0.21D-02  0.82D-03   895.11
    2     2     2     1.06809740    -0.80650593  -415.97259652    -0.80650593    -0.01625986  0.21D-02  0.82D-03   895.11
    2     3     3     1.06810751    -0.80650173  -415.97259232    -0.80650173    -0.01626664  0.21D-02  0.82D-03   895.11
    3     1     1     1.06076272    -0.82198963  -415.98808022    -0.01544961    -0.00042948  0.31D-04  0.45D-04  1677.71
    3     2     2     1.06076510    -0.82198927  -415.98807987    -0.01548334    -0.00042967  0.31D-04  0.45D-04  1677.71
    3     3     3     1.06076096    -0.82198913  -415.98807973    -0.01548741    -0.00042979  0.31D-04  0.45D-04  1677.71
    4     1     1     1.06090033    -0.82244528  -415.98853588    -0.00045566    -0.00002937  0.17D-05  0.41D-05  2460.12
    4     2     2     1.06090014    -0.82244523  -415.98853583    -0.00045596    -0.00002938  0.16D-05  0.41D-05  2460.12
    4     3     3     1.06089959    -0.82244523  -415.98853583    -0.00045609    -0.00002940  0.17D-05  0.41D-05  2460.12
    5     1     1     1.06128986    -0.82248013  -415.98857073    -0.00003485    -0.00000217  0.13D-06  0.24D-06  3239.13
    5     2     2     1.06128975    -0.82248011  -415.98857071    -0.00003488    -0.00000217  0.13D-06  0.24D-06  3239.13
    5     3     3     1.06128943    -0.82248010  -415.98857069    -0.00003487    -0.00000217  0.13D-06  0.24D-06  3239.13
    6     1     1     1.06131882    -0.82248265  -415.98857325    -0.00000252    -0.00000013  0.70D-08  0.15D-07  4018.36
    6     2     2     1.06131885    -0.82248263  -415.98857323    -0.00000252    -0.00000013  0.70D-08  0.15D-07  4018.36
    6     3     3     1.06131890    -0.82248262  -415.98857322    -0.00000252    -0.00000013  0.70D-08  0.15D-07  4018.36
    7     1     1     1.06132344    -0.82248279  -415.98857339    -0.00000014    -0.00000001  0.54D-09  0.12D-08  4801.31
    7     2     2     1.06132343    -0.82248277  -415.98857337    -0.00000014    -0.00000001  0.54D-09  0.12D-08  4801.31
    7     3     3     1.06132342    -0.82248275  -415.98857335    -0.00000014    -0.00000001  0.54D-09  0.12D-08  4801.31


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.1%
 S   0.5%  28.9%
 P   0.3%  59.9%   6.8%

 Initialization:   1.9%
 Other:            0.5%

 Total CPU:     4801.3 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/2/00/          -0.0001252  -0.0002167   0.6816674
 222222202222//0/0          -0.0001252  -0.0002167   0.6816673
 22222220222/2//00           0.6816667  -0.0010330   0.0001249
 222222202222///00          -0.0010330  -0.6816667  -0.0002169
 22222220222//200/           0.0010330   0.6816665   0.0002169
 22222220222//20/0           0.6816665  -0.0010330   0.0001249

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970582   -0.000178    0.001471
 2          -0.001471   -0.000309    0.970582
 3           0.000178    0.970583    0.000309

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970583    0.000000    0.000000
 2           0.000000    0.970583    0.000000
 3           0.000000    0.000000    0.970583


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97058234 (fixed)   0.97065202 (relaxed)   0.97058347 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019910   -0.00050615   -0.70526675
 Singles      0.01680576   -0.07284614   -0.08164472
 Pairs        0.04452989   -0.00113524   -0.03557131
 Total        1.06153475   -0.07448753   -0.82248279
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.16609060
 Nuclear energy                         0.00000000
 Kinetic energy                       295.51900889
 One electron energy                 -723.30279010
 Two electron energy                  307.31421671
 Virial quotient                       -1.40765420
 Correlation energy                    -0.82248279
 !MRCI STATE 1.2 Energy              -415.988573385848

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.03918466 (Davidson, fixed reference)
 Cluster corrected energies          -416.03906134 (Davidson, relaxed reference)
 Cluster corrected energies          -416.03918466 (Davidson, rotated reference)

 Cluster corrected energies          -416.03700610 (Pople, fixed reference)
 Cluster corrected energies          -416.03688194 (Pople, relaxed reference)
 Cluster corrected energies          -416.03700610 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97058232 (fixed)   0.97065203 (relaxed)   0.97058348 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019910   -0.00050615   -0.00063192
 Singles      0.01680574   -0.07284612   -0.08164469
 Pairs        0.04452990   -0.74912960   -0.74020615
 Total        1.06153474   -0.82248187   -0.82248277
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.16609060
 Nuclear energy                         0.00000000
 Kinetic energy                       295.51901036
 One electron energy                 -723.30279168
 Two electron energy                  307.31421831
 Virial quotient                       -1.40765419
 Correlation energy                    -0.82248277
 !MRCI STATE 2.2 Energy              -415.988573366282

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.03918463 (Davidson, fixed reference)
 Cluster corrected energies          -416.03906131 (Davidson, relaxed reference)
 Cluster corrected energies          -416.03918463 (Davidson, rotated reference)

 Cluster corrected energies          -416.03700607 (Pople, fixed reference)
 Cluster corrected energies          -416.03688191 (Pople, relaxed reference)
 Cluster corrected energies          -416.03700607 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97058342 (fixed)   0.97065203 (relaxed)   0.97058348 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019910   -0.00050615   -0.70611168
 Singles      0.01680574   -0.07284611   -0.08164468
 Pairs        0.04452990   -0.00023833   -0.03472639
 Total        1.06153473   -0.07359059   -0.82248275
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.16609060
 Nuclear energy                         0.00000000
 Kinetic energy                       295.51901176
 One electron energy                 -723.30279333
 Two electron energy                  307.31421998
 Virial quotient                       -1.40765418
 Correlation energy                    -0.82248275
 !MRCI STATE 3.2 Energy              -415.988573351313

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.03918461 (Davidson, fixed reference)
 Cluster corrected energies          -416.03906129 (Davidson, relaxed reference)
 Cluster corrected energies          -416.03918461 (Davidson, rotated reference)

 Cluster corrected energies          -416.03700605 (Pople, fixed reference)
 Cluster corrected energies          -416.03688189 (Pople, relaxed reference)
 Cluster corrected energies          -416.03700605 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      945.06       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10367.36   4925.14   5439.33      2.14      0.08      0.50
 REAL TIME  *     10459.33 SEC
 DISK USED  *       982.33 MB (local),        5.79 GB (total)
 SF USED    *         5.39 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -416.03918466  AU                              
 SETTING HLSDIAG(5)     =      -416.03918463  AU                              
 SETTING HLSDIAG(6)     =      -416.03918461  AU                              


         HLSDIAG
    -416.3845316
    -416.3845316
    -416.3845316
    -416.0391847
    -416.0391846
    -416.0391846
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -416.329554   -416.329554   -416.329554
 Replaced energies:   -416.384532   -416.384532   -416.384532

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   3

 Original energies:   -415.988573   -415.988573   -415.988573
 Replaced energies:   -416.039185   -416.039185   -416.039185



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -416.38453159

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.15    -239.19    1209.20      29.84       2.02     551.46       0.00
                           -0.25     108.70      21.66       0.19   -1203.81    -238.28      -6.48     345.33       2.36      -1.74

    2   2.2  0.5  0.5       0.00       0.00       0.00     238.88       0.32       1.29     -69.36     168.01    -434.54       0.00
                         -108.70       0.51   -1227.76    1204.57       0.51    -109.98     330.31      42.55    1539.96      -6.48

    3   3.2  0.5  0.5       0.00       0.00       0.00   -1209.85      -0.74       0.16     324.23      38.88    2898.76       0.00
                          -21.66    1227.76      -0.03     238.19     110.12       0.05      67.80     -25.26     340.83      -6.23

    4   1.2  0.5 -0.5      -0.15     238.88   -1209.85       0.00       0.00       0.00       0.00       0.00       0.00      17.23
                           -0.19   -1204.57    -238.19       0.25    -108.70     -21.66       0.00       0.00       0.00      -3.74

    5   2.2  0.5 -0.5    -239.19       0.32      -0.74       0.00       0.00       0.00       0.00       0.00       0.00     -40.05
                         1203.81      -0.51    -110.12     108.70      -0.51    1227.76       0.00       0.00       0.00     190.71

    6   3.2  0.5 -0.5    1209.20       1.29       0.16       0.00       0.00       0.00       0.00       0.00       0.00     187.20
                          238.28     109.98      -0.05      21.66   -1227.76       0.03       0.00       0.00       0.00      39.15

    7   1.2  1.5  1.5      29.84     -69.36     324.23       0.00       0.00       0.00   75794.89       0.00       0.00      -0.02
                            6.48    -330.31     -67.80      -0.00      -0.00      -0.00       0.01      -0.13      -1.16      -0.68

    8   2.2  1.5  1.5       2.02     168.01      38.88       0.00       0.00       0.00       0.00   75794.90       0.00      -0.14
                         -345.33     -42.55      25.26      -0.00      -0.00      -0.00       0.13       0.00    -609.62    -352.92

    9   3.2  1.5  1.5     551.46    -434.54    2898.76       0.00       0.00       0.00       0.00       0.00   75794.90     352.66
                           -2.36   -1539.96    -340.83      -0.00      -0.00      -0.00       1.16     609.62       0.03      -0.08

   10   1.2  1.5  0.5       0.00       0.00       0.00      17.23     -40.05     187.20      -0.02      -0.14     352.66   75794.89
                            1.74       6.48       6.23       3.74    -190.71     -39.15       0.68     352.92       0.08       0.00

   11   2.2  1.5  0.5       0.00       0.00       0.00       1.17      97.00      22.45       0.09      -0.23       0.08       0.00
                         -128.49     -35.59    -447.84    -199.38     -24.57      14.58    -352.68      -0.06       0.39       0.04

   12   3.2  1.5  0.5       0.00       0.00       0.00     318.38    -250.88    1673.60    -352.64       0.58      -0.01       0.00
                         -980.58     858.49   -2575.37      -1.36    -889.10    -196.78      -0.12      -0.17       0.18       0.39

   13   1.2  1.5 -0.5      17.23     -40.05     187.20       0.00       0.00       0.00       0.00       0.00       0.00      -0.02
                           -3.74     190.71      39.15       1.74       6.48       6.23      -0.00      -0.00      -0.00       0.78

   14   2.2  1.5 -0.5       1.17      97.00      22.45       0.00       0.00       0.00       0.00       0.00       0.00       0.10
                          199.38      24.57     -14.58    -128.49     -35.59    -447.84      -0.00      -0.00      -0.00    -407.24

   15   3.2  1.5 -0.5     318.38    -250.88    1673.60       0.00       0.00       0.00       0.00       0.00       0.00    -407.19
                            1.36     889.10     196.78    -980.58     858.49   -2575.37      -0.00      -0.00      -0.00      -0.14

   16   1.2  1.5 -1.5       0.00       0.00       0.00      29.84     -69.36     324.23       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -6.48     330.31      67.80      -0.00      -0.00      -0.00      -0.00

   17   2.2  1.5 -1.5       0.00       0.00       0.00       2.02     168.01      38.88       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     345.33      42.55     -25.26      -0.00      -0.00      -0.00      -0.00

   18   3.2  1.5 -1.5       0.00       0.00       0.00     551.46    -434.54    2898.76       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       2.36    1539.96     340.83      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18

    1   1.2  0.5  0.5       0.00       0.00      17.23       1.17     318.38       0.00       0.00       0.00
                          128.49     980.58       3.74    -199.38      -1.36       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00     -40.05      97.00    -250.88       0.00       0.00       0.00
                           35.59    -858.49    -190.71     -24.57    -889.10       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00     187.20      22.45    1673.60       0.00       0.00       0.00
                          447.84    2575.37     -39.15      14.58    -196.78       0.00       0.00       0.00

    4   1.2  0.5 -0.5       1.17     318.38       0.00       0.00       0.00      29.84       2.02     551.46
                          199.38       1.36      -1.74     128.49     980.58       6.48    -345.33      -2.36

    5   2.2  0.5 -0.5      97.00    -250.88       0.00       0.00       0.00     -69.36     168.01    -434.54
                           24.57     889.10      -6.48      35.59    -858.49    -330.31     -42.55   -1539.96

    6   3.2  0.5 -0.5      22.45    1673.60       0.00       0.00       0.00     324.23      38.88    2898.76
                          -14.58     196.78      -6.23     447.84    2575.37     -67.80      25.26    -340.83

    7   1.2  1.5  1.5       0.09    -352.64       0.00       0.00       0.00       0.00       0.00       0.00
                          352.68       0.12       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5      -0.23       0.58       0.00       0.00       0.00       0.00       0.00       0.00
                            0.06       0.17       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       0.08      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.39      -0.18       0.00       0.00       0.00       0.00       0.00       0.00

   10   1.2  1.5  0.5       0.00       0.00      -0.02       0.10    -407.19       0.00       0.00       0.00
                           -0.04      -0.39      -0.78     407.24       0.14       0.00       0.00       0.00

   11   2.2  1.5  0.5   75794.90       0.00      -0.17      -0.26       0.67       0.00       0.00       0.00
                            0.00    -203.21    -407.51       0.07       0.20       0.00       0.00       0.00

   12   3.2  1.5  0.5       0.00   75794.90     407.21       0.09      -0.01       0.00       0.00       0.00
                          203.21       0.01      -0.09      -0.45      -0.21       0.00       0.00       0.00

   13   1.2  1.5 -0.5      -0.17     407.21   75794.89       0.00       0.00      -0.02       0.09    -352.64
                          407.51       0.09      -0.00       0.04       0.39      -0.68     352.68       0.12

   14   2.2  1.5 -0.5      -0.26       0.09       0.00   75794.90       0.00      -0.14      -0.23       0.58
                           -0.07       0.45      -0.04      -0.00     203.21    -352.92       0.06       0.17

   15   3.2  1.5 -0.5       0.67      -0.01       0.00       0.00   75794.90     352.66       0.08      -0.01
                           -0.20       0.21      -0.39    -203.21      -0.01      -0.08      -0.39      -0.18

   16   1.2  1.5 -1.5       0.00       0.00      -0.02      -0.14     352.66   75794.89       0.00       0.00
                           -0.00      -0.00       0.68     352.92       0.08      -0.01       0.13       1.16

   17   2.2  1.5 -1.5       0.00       0.00       0.09      -0.23       0.08       0.00   75794.90       0.00
                           -0.00      -0.00    -352.68      -0.06       0.39      -0.13      -0.00     609.62

   18   3.2  1.5 -1.5       0.00       0.00    -352.64       0.58      -0.01       0.00       0.00   75794.90
                           -0.00      -0.00      -0.12      -0.17       0.18      -1.16    -609.62      -0.03


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -416.39117062    -0.00663903    -1457.10      0.00000000        0.00      0.0000
     2  -416.39116827    -0.00663667    -1456.58      0.00000236        0.52      0.0001
     3  -416.39022860    -0.00569700    -1250.35      0.00094202      206.75      0.0256
     4  -416.39022464    -0.00569304    -1249.48      0.00094598      207.62      0.0257
     5  -416.37364667     0.01088493     2388.97      0.01752396     3846.06      0.4769
     6  -416.37364241     0.01088919     2389.90      0.01752822     3847.00      0.4770
     7  -416.04196992     0.34256168    75183.60      0.34920070    76640.70      9.5022
     8  -416.04196797     0.34256362    75184.02      0.34920265    76641.12      9.5023
     9  -416.04188165     0.34264994    75202.97      0.34928897    76660.07      9.5046
    10  -416.04187720     0.34265440    75203.95      0.34929342    76661.05      9.5048
    11  -416.04145204     0.34307955    75297.26      0.34971858    76754.36      9.5163
    12  -416.04145038     0.34308122    75297.62      0.34972024    76754.72      9.5164
    13  -416.03731100     0.34722060    76206.11      0.35385963    77663.21      9.6290
    14  -416.03730908     0.34722252    76206.53      0.35386155    77663.63      9.6291
    15  -416.03670287     0.34782872    76339.58      0.35446775    77796.68      9.6456
    16  -416.03670154     0.34783005    76339.87      0.35446908    77796.97      9.6456
    17  -416.03435137     0.35018022    76855.67      0.35681925    78312.77      9.7095
    18  -416.03434890     0.35018269    76856.22      0.35682172    78313.32      9.7096


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.211532748   0.249797752  -0.108155042   0.732803845   0.585368270   0.035152074  -0.000154196   0.000796067
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.295026619  -0.176861929   0.352398611   0.020157803  -0.017508857   0.442759228  -0.000069597  -0.000243980
                        -0.293257438   0.279709452  -0.449943004  -0.213886988  -0.063585303   0.378858634   0.000020562   0.000124290

    3    3.2  0.5  0.5  -0.194225067   0.444284588   0.223757600  -0.164049474   0.006888272  -0.355188953  -0.000145023  -0.000150612
                         0.505925815   0.340681783  -0.001349702   0.040188637  -0.038872137   0.428256177  -0.000116662  -0.000050322

    4    1.2  0.5 -0.5   0.079591234   0.068922337   0.571322936   0.083858656  -0.027713572   0.460333332  -0.000663091  -0.000044336
                         0.235675566   0.202400347   0.458569679   0.066754981   0.021671967  -0.361680409   0.000540721   0.000094024

    5    2.2  0.5 -0.5   0.209782022   0.371278430  -0.119597661   0.006224679  -0.114302153   0.025638835   0.000091406  -0.000232467
                        -0.258568493   0.185541538   0.178514050  -0.570923110   0.571437828   0.060819666  -0.000078472   0.000195148

    6    3.2  0.5 -0.5   0.464071951  -0.418247357  -0.100586785  -0.174272047   0.543880938   0.029474796   0.000041050  -0.000044638
                         0.312248409   0.344654700  -0.135590598  -0.142252447   0.117449773   0.026393415  -0.000133310   0.000178307

    7    1.2  1.5  1.5   0.001310260  -0.003607308   0.001326076   0.001343043  -0.000055593  -0.000198134   0.207627956  -0.217139510
                        -0.003833813  -0.001482086   0.001331604  -0.000461392   0.000023598   0.000061564  -0.171642394   0.030296434

    8    2.2  1.5  1.5   0.001288148   0.000213336  -0.000673771   0.000175110   0.000036457  -0.000840604   0.088214227   0.036996425
                        -0.000579371  -0.000112487   0.000643136   0.003844877   0.002866387  -0.000497081   0.174662371   0.233619718

    9    3.2  1.5  1.5   0.010750515  -0.026531935   0.003349174   0.005160167  -0.003220745   0.006443709  -0.043224356  -0.039185985
                        -0.027388468  -0.012768987   0.005549142  -0.003019831   0.000841282  -0.007022048   0.006510037   0.020323718

   10    1.2  1.5  0.5  -0.000632793   0.000622268  -0.000381839   0.001840256  -0.002966726  -0.000213318   0.377217579   0.471507228
                         0.000012036  -0.000159616  -0.000123486  -0.000072793   0.000105790   0.000104310  -0.163642061  -0.098979780

   11    2.2  1.5  0.5  -0.003614950  -0.002996499  -0.000887782  -0.000118987   0.000005208  -0.001827101   0.266913993  -0.084270536
                        -0.001265813   0.002927830   0.002529860   0.001310952  -0.000009912  -0.000746866   0.389406387  -0.385224031

   12    3.2  1.5  0.5  -0.027646432  -0.001290981  -0.007235629   0.006694908  -0.019285992  -0.013992300  -0.029839245   0.009131844
                        -0.010863814   0.015462500   0.002195763   0.004200666   0.007520122  -0.015582126  -0.031132545  -0.032477498

   13    1.2  1.5 -0.5  -0.000047664  -0.000194412  -0.001388655  -0.000373792  -0.000231976   0.002398631   0.419645485  -0.394604356
                        -0.000637892  -0.000608508  -0.001209082  -0.000139743   0.000049910  -0.001748939  -0.236190950   0.116321203

   14    2.2  1.5 -0.5  -0.001812084  -0.002354241  -0.000716610   0.000897808  -0.000975586  -0.000010036   0.188407559   0.048636172
                         0.003766422  -0.003025396   0.001111527  -0.002534326   0.001715902  -0.000004048   0.346642802   0.468905489

   15    3.2  1.5 -0.5  -0.014240947  -0.019142459  -0.007785094  -0.004195983  -0.001379373   0.019811717   0.030539813   0.002228313
                         0.006139820  -0.022763070  -0.000838348  -0.006222590   0.020898000  -0.005996303   0.024359708  -0.049584944

   16    1.2  1.5 -1.5  -0.002559518   0.003214297   0.000742617  -0.001864354   0.000193736  -0.000058322   0.182279763   0.269856669
                        -0.002950770  -0.002458428   0.001210128   0.000217006  -0.000073668   0.000014793  -0.123360458   0.001225766

   17    2.2  1.5 -1.5  -0.000046393   0.000149103   0.002545334   0.000121492   0.000354158  -0.001742981   0.121405965  -0.048271309
                         0.000241618  -0.001410219  -0.002882872   0.000924844  -0.000909945  -0.002276783   0.197068591  -0.184228306

   18    3.2  1.5 -1.5  -0.020573292   0.022526322   0.002019424  -0.006056146  -0.009405398  -0.003053187   0.045761653  -0.043479846
                        -0.021088490  -0.018893369   0.005658622   0.002298582  -0.001541438   0.001322430  -0.015196055   0.018798158


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.002589543  -0.004599302   0.004671406   0.002759647  -0.001403760  -0.001748249  -0.005583286   0.010926992
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000788803   0.000517667  -0.004232962  -0.001817961  -0.000257697  -0.001121512   0.006270476  -0.008771428
                         0.002902039   0.013632271   0.012454047   0.000395934   0.002740527  -0.006022972  -0.003348043  -0.001757184

    3    3.2  0.5  0.5  -0.004120755  -0.002426548   0.024747097   0.021184906  -0.000653986  -0.000114890  -0.015044150   0.035862051
                        -0.000635445   0.001886913   0.002255151  -0.001021092   0.000967113  -0.001447699  -0.007515950  -0.002664787

    4    1.2  0.5 -0.5   0.001065956   0.000611709   0.000534030  -0.000913041   0.001711833  -0.001400223   0.009535274   0.004870159
                        -0.004486032  -0.002484135  -0.002671194   0.004596791  -0.000098704   0.000116709   0.005350653   0.002737327

    5    2.2  0.5 -0.5   0.013123499  -0.002915752  -0.000839025   0.013062330   0.000817435  -0.000428177  -0.008502322  -0.003807066
                         0.003724305   0.000085341   0.001661928  -0.001688220  -0.006074109  -0.002735381  -0.002769775  -0.005998247

    6    3.2  0.5 -0.5   0.002388957  -0.000356933   0.005126855  -0.002635329  -0.000050460  -0.000713016   0.029974394   0.016807786
                        -0.002075568   0.004322646  -0.020563493   0.024670087  -0.001439302  -0.000798333   0.019892129   0.000813798

    7    1.2  1.5  1.5   0.011872957   0.005346753   0.001191611  -0.038091124   0.650204975  -0.093141371  -0.136694650   0.051167030
                        -0.196912324   0.349380892  -0.378064218  -0.101127719  -0.036070800  -0.088190412  -0.214448667   0.234560717

    8    2.2  1.5  1.5   0.028781511   0.026328601   0.016675519   0.025088279   0.126160279   0.055050252  -0.233032648  -0.112099613
                        -0.260260098   0.361611282   0.409068169   0.378338148   0.085227024   0.150521501   0.004997324  -0.193508808

    9    3.2  1.5  1.5  -0.096163510   0.477597011   0.464049294   0.187549327  -0.082261419  -0.161302269  -0.053620053   0.285991262
                         0.004428367  -0.016524538   0.001700594  -0.047917970   0.129159934   0.055620518  -0.255370875  -0.117110333

   10    1.2  1.5  0.5  -0.272203794  -0.207834868  -0.221363035   0.207903878   0.046237301   0.101544586   0.087029006  -0.203775380
                        -0.055813678  -0.016873183  -0.028773459   0.045758896  -0.075888166  -0.030732613   0.079686870   0.028875091

   11    2.2  1.5  0.5   0.069242320  -0.159037952   0.222087980  -0.039061967   0.031589367  -0.193192495   0.111526356  -0.007301822
                        -0.007321095   0.008834896   0.031518983  -0.024485982  -0.568494106   0.157272558  -0.150498218  -0.215827547

   12    3.2  1.5  0.5   0.026365237   0.010409746   0.006516941  -0.008870247  -0.187288939  -0.054362960   0.340728731   0.169975725
                        -0.260015715   0.424203421  -0.313586314  -0.186048155   0.074280565  -0.089034374   0.433615132  -0.370898500

   13    1.2  1.5 -0.5  -0.031336838   0.007379813   0.005025836  -0.015698225   0.103164271  -0.050042716   0.163996087   0.114774940
                         0.199248920  -0.284200891   0.209291655   0.224190955   0.024977874  -0.072414195   0.125126269  -0.026773901

   14    2.2  1.5 -0.5  -0.048940609  -0.022019614  -0.015627450   0.012206836  -0.203395620  -0.063686714   0.113550278   0.024398255
                         0.158802054   0.054831442  -0.044096205  -0.222833466  -0.145765783  -0.566224125  -0.182992592   0.183825887

   15    3.2  1.5 -0.5  -0.410353393  -0.256584945  -0.177277633   0.310699023  -0.049171097   0.191771562   0.032871523   0.509226217
                        -0.109220557  -0.034878488  -0.044518877   0.054391494   0.094936276   0.063253071  -0.406423183  -0.211048117

   16    1.2  1.5 -1.5   0.342354493   0.186119740   0.089036331  -0.371308980   0.087817582   0.651984952   0.157884676   0.225240490
                         0.088777211   0.033430865   0.056202650  -0.072140423  -0.091977203  -0.001069516  -0.177998575  -0.119062044

   17    2.2  1.5 -1.5   0.346878168   0.266455737  -0.367407375   0.395879987  -0.046739919   0.120090748  -0.192732575   0.201122011
                         0.111174041   0.032727375  -0.099285934   0.096725078   0.154061426  -0.092448544   0.114217975   0.118437892

   18    3.2  1.5 -1.5  -0.128000245  -0.027634649   0.084876945  -0.090011473   0.164302100  -0.089977895   0.192826521   0.171897532
                         0.458117063   0.094646638  -0.178176563   0.454551331   0.046617256  -0.123113347   0.242369993  -0.196142926


   Nr   State  S   Sz       17            18

    1    1.2  0.5  0.5  -0.007009159   0.001276462
                         0.000000000   0.000000000

    2    2.2  0.5  0.5   0.004781319  -0.007395741
                        -0.007519175   0.007325026

    3    3.2  0.5  0.5  -0.021515206   0.001218446
                        -0.001132951   0.002398637

    4    1.2  0.5 -0.5   0.001197065   0.006558706
                        -0.000451040  -0.002459894

    5    2.2  0.5 -0.5  -0.009498858  -0.007119616
                        -0.004260355  -0.005362263

    6    3.2  0.5 -0.5   0.000299383   0.019737254
                        -0.002681403  -0.008611615

    7    1.2  1.5  1.5  -0.015490250  -0.004473650
                        -0.022701505   0.009791003

    8    2.2  1.5  1.5   0.032335880   0.261347935
                         0.353644496  -0.216130983

    9    3.2  1.5  1.5  -0.401277191   0.228520041
                         0.032525184   0.270766691

   10    1.2  1.5  0.5  -0.368407619   0.258437224
                         0.042166839   0.321301150

   11    2.2  1.5  0.5   0.191204012   0.041711884
                         0.074559090   0.164597368

   12    3.2  1.5  0.5  -0.056246411  -0.139727456
                         0.261502323   0.018358711

   13    1.2  1.5 -0.5  -0.129236953  -0.360030125
                         0.391314991   0.090024737

   14    2.2  1.5 -0.5   0.018324758   0.152649920
                         0.168652891  -0.137220369

   15    3.2  1.5 -0.5   0.137095328  -0.144367143
                        -0.031893075  -0.225060773

   16    1.2  1.5 -1.5  -0.008186254   0.006566811
                        -0.007938893  -0.027155720

   17    2.2  1.5 -1.5   0.320682925   0.093770885
                         0.110624481   0.342089856

   18    3.2  1.5 -1.5   0.118992979   0.386985245
                        -0.333751125  -0.110443337


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   4.475%   6.240%   1.170%  53.700%  34.266%   0.124%   0.000%   0.000%   0.001%   0.002%
    2    2.2  0.5  0.5  17.304%  10.952%  32.663%   4.615%   0.435%  33.957%   0.000%   0.000%   0.001%   0.019%
    3    3.2  0.5  0.5  29.368%  31.345%   5.007%   2.853%   0.156%  30.956%   0.000%   0.000%   0.002%   0.001%
    4    1.2  0.5 -0.5   6.188%   4.572%  53.670%   1.149%   0.124%  34.272%   0.000%   0.000%   0.002%   0.001%
    5    2.2  0.5 -0.5  11.087%  17.227%   4.617%  32.599%  33.961%   0.436%   0.000%   0.000%   0.019%   0.001%
    6    3.2  0.5 -0.5  31.286%  29.372%   2.850%   5.061%  30.960%   0.157%   0.000%   0.000%   0.001%   0.002%
    7    1.2  1.5  1.5   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   7.257%   4.807%   3.892%  12.210%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   3.829%   5.595%   6.856%  13.146%
    9    3.2  1.5  1.5   0.087%   0.087%   0.004%   0.004%   0.001%   0.009%   0.191%   0.195%   0.927%  22.837%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%  16.907%  23.212%   7.721%   4.348%
   11    2.2  1.5  0.5   0.001%   0.002%   0.001%   0.000%   0.000%   0.000%  22.288%  15.550%   0.485%   2.537%
   12    3.2  1.5  0.5   0.088%   0.024%   0.006%   0.006%   0.043%   0.044%   0.186%   0.114%   6.830%  18.006%
   13    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  23.189%  16.924%   4.068%   8.082%
   14    2.2  1.5 -0.5   0.002%   0.001%   0.000%   0.001%   0.000%   0.000%  15.566%  22.224%   2.761%   0.349%
   15    3.2  1.5 -0.5   0.024%   0.088%   0.006%   0.006%   0.044%   0.043%   0.153%   0.246%  18.032%   6.705%
   16    1.2  1.5 -1.5   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   4.844%   7.282%  12.509%   3.576%
   17    2.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   5.358%   3.627%  13.268%   7.207%
   18    3.2  1.5 -1.5   0.087%   0.086%   0.004%   0.004%   0.009%   0.001%   0.233%   0.224%  22.626%   0.972%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18

    1    1.2  0.5  0.5   0.002%   0.001%   0.000%   0.000%   0.003%   0.012%   0.005%   0.000%
    2    2.2  0.5  0.5   0.017%   0.000%   0.001%   0.004%   0.005%   0.008%   0.008%   0.011%
    3    3.2  0.5  0.5   0.062%   0.045%   0.000%   0.000%   0.028%   0.129%   0.046%   0.001%
    4    1.2  0.5 -0.5   0.001%   0.002%   0.000%   0.000%   0.012%   0.003%   0.000%   0.005%
    5    2.2  0.5 -0.5   0.000%   0.017%   0.004%   0.001%   0.008%   0.005%   0.011%   0.008%
    6    3.2  0.5 -0.5   0.045%   0.062%   0.000%   0.000%   0.129%   0.028%   0.001%   0.046%
    7    1.2  1.5  1.5  14.293%   1.168%  42.407%   1.645%   6.467%   5.764%   0.076%   0.012%
    8    2.2  1.5  1.5  16.761%  14.377%   2.318%   2.569%   5.433%   5.001%  12.611%  11.502%
    9    3.2  1.5  1.5  21.534%   3.747%   2.345%   2.911%   6.809%   9.551%  16.208%  12.554%
   10    1.2  1.5  0.5   4.983%   4.532%   0.790%   1.126%   1.392%   4.236%  13.750%  17.002%
   11    2.2  1.5  0.5   5.032%   0.213%  32.418%   6.206%   3.509%   4.663%   4.212%   2.883%
   12    3.2  1.5  0.5   9.838%   3.469%   4.059%   1.088%  30.412%  16.646%   7.155%   1.986%
   13    1.2  1.5 -0.5   4.383%   5.051%   1.127%   0.775%   4.255%   1.389%  16.983%  13.773%
   14    2.2  1.5 -0.5   0.219%   4.980%   6.262%  32.467%   4.638%   3.439%   2.878%   4.213%
   15    3.2  1.5 -0.5   3.341%   9.949%   1.143%   4.078%  16.626%  30.385%   1.981%   7.149%
   16    1.2  1.5 -1.5   1.109%  14.307%   1.617%  42.509%   5.661%   6.491%   0.013%   0.078%
   17    2.2  1.5 -1.5  14.485%  16.608%   2.592%   2.297%   5.019%   5.448%  11.508%  12.582%
   18    3.2  1.5 -1.5   3.895%  21.472%   2.917%   2.325%   9.593%   6.802%  12.555%  16.196%


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
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      945.06       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     26622.04  16254.68   4925.14   5439.33      2.14      0.08      0.50
 REAL TIME  *     26834.10 SEC
 DISK USED  *       982.33 MB (local),        5.79 GB (total)
 SF USED    *         5.39 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -416.034348902153

              CI              CI           MULTI         RHF-SCF
   -415.98857335   -416.32955421   -415.16609060   -415.57789914
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
