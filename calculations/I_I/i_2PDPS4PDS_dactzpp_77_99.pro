
 Working directory              : /wrk/irikura/molpro.nMXkwOqMVF/
 Global scratch directory       : /wrk/irikura/molpro.nMXkwOqMVF/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.nMXkwOqMVF/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,I SO-CI
                                                                                 ! active space (7/7)
                                                                                 ! additional diffuse spdf functions
 memory,4000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={I};
 
 basis={
 ecp,i,ECP28MDF;
 spdfg,i,aug-cc-pwCVTZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 {rhf;wf,charge=-1}
 
 NDOUB=12
 NQUAR=9
 
 {multi
     occ,7,9
     closed,6,3
     wf,charge=0,sym=2,spin=1;state,NDOUB; weight,3[99],(NDOUB-3)[1]
     wf,charge=0,sym=2,spin=3;state,NQUAR; weight,all,1
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
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   I SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 09-Oct-24          TIME: 10:07:26  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry I    ECP ECP28MDF                 selected for group  1
 Library entry I      S AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered I  S diffuse               selected for group 1    nprim= 1    centre=  0.014    ratio= 3.000    dratio= 1.000
 Library entry I      P AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered I  P diffuse               selected for group 1    nprim= 1    centre=  0.012    ratio= 3.000    dratio= 1.000
 Library entry I      D AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered I  D diffuse               selected for group 1    nprim= 1    centre=  0.026    ratio= 3.000    dratio= 1.000
 Library entry I      F AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered I  F diffuse               selected for group 1    nprim= 1    centre=  0.062    ratio= 3.000    dratio= 1.000
 Library entry I      G AUG-CC-PWCVTZ-PP     selected for orbital group  1


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

   1  I      25.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   25
 NUMBER OF PRIMITIVE AOS:         204
 NUMBER OF SYMMETRY AOS:          170
 NUMBER OF CONTRACTIONS:          112   (   53Ag  +   59Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2
                                        3 4 5 6 7 8 9101112  131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.169E-04 0.125E-02 0.515E-02 0.515E-02 0.515E-02 0.515E-02 0.515E-02 0.549E-02
         2 0.573E-02 0.573E-02 0.573E-02 0.118E-01 0.118E-01 0.118E-01 0.908E-01 0.908E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     29.098 MB (compressed) written to integral file ( 17.4%)

     Node minimum: 1.311 MB, node maximum: 3.146 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     847287.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     847287      RECORD LENGTH: 524288

 Memory used in sort:       1.40 MW

 SORT1 READ    21109381. AND WROTE      166541. INTEGRALS IN      1 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.12 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN     60 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC

 Node minimum:      845957.  Node maximum:      852384. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.89      1.55
 REAL TIME  *         3.89 SEC
 DISK USED  *        29.28 MB (local),      413.43 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -294.71863326    -294.71863326     0.00D+00     0.13D+00     0     0       0.01      0.02    start
   2     -294.74411714      -0.02548388     0.46D-02     0.13D-01     1     0       0.00      0.02    diag
   3     -294.74616668      -0.00204954     0.26D-02     0.21D-02     2     0       0.00      0.02    diag
   4     -294.74648011      -0.00031343     0.44D-03     0.85D-03     3     0       0.01      0.03    diag
   5     -294.74653920      -0.00005909     0.14D-03     0.53D-03     4     0       0.01      0.04    diag
   6     -294.74654357      -0.00000437     0.33D-04     0.18D-03     5     0       0.00      0.04    diag
   7     -294.74654371      -0.00000014     0.45D-05     0.24D-04     6     0       0.01      0.05    diag
   8     -294.74654372      -0.00000001     0.98D-06     0.95D-05     7     0       0.00      0.05    fixocc
   9     -294.74654372      -0.00000000     0.70D-07     0.30D-06     8     0       0.01      0.06    diag
  10     -294.74654372      -0.00000000     0.13D-07     0.34D-07     0     0       0.01      0.07    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -294.746543715315
  RHF One-electron energy            -520.925437582744
  RHF Two-electron energy             226.178893867429
  RHF Kinetic energy                  110.887384553764
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.658071023151

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45092     1  1  s    1.00263
    2.1     2.00000    -2.00367     1  1  d0   0.99954
    3.1     2.00000    -2.00367     1  1  d1+  0.97079
    4.1     2.00000    -2.00367     1  1  d1-  0.96941
    5.1     2.00000    -2.00367     1  1  d2-  0.99446
    6.1     2.00000    -2.00367     1  1  d2+  0.99469
    7.1     2.00000    -0.60771     1  2  s    0.97222
    1.2     2.00000    -5.27630     1  1  pz   0.99929
    2.2     2.00000    -5.27630     1  1  px   1.00022
    3.2     2.00000    -5.27630     1  1  py   0.99929
    4.2     2.00000    -0.12598     1  2  px   0.87696
    5.2     2.00000    -0.12598     1  2  py   0.87696
    6.2     2.00000    -0.12598     1  2  pz   0.87696


 HOMO      6.2    -0.125977 =      -3.4280eV
 LUMO      7.2     0.121193 =       3.2978eV
 LUMO-HOMO         0.247170 =       6.7258eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.48       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.97      0.08      1.55
 REAL TIME  *         4.80 SEC
 DISK USED  *        29.93 MB (local),      421.17 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =        12.00000000                                  
 SETTING NQUAR          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      96 (   46   50)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:            12
 Number of CSFs:             420   (600 determinants, 1225 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             9
 Number of CSFs:             168   (180 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.707D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.248D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.264D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.129D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 3   5 4 6 1 2 3 5 4 6 1   2 5 3 6 4 1 2 5 3 4   6 2 3 5 6 4 8121415
                                        711 91310 1 2 5 3 6   4 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.414D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.414D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.842D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.877D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.870D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.236D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.233D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.126D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 2 1 3   1 2 810 6 5 4 7 9 2   1 310 8 6 5 4 9 7 6   5 4 7 910 8 3 2 1 7
                                        9 6 5 4 810 2 1 3 6   7 9 4 5 810 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.31429   0.31429   0.31429   0.00317   0.00317   0.00317   0.00317   0.00317
                                          0.00317   0.00317   0.00317   0.00317
 Weight factors for state symmetry  2:    0.00317   0.00317   0.00317   0.00317   0.00317   0.00317   0.00317   0.00317
                                          0.00317
 
 Number of orbital rotations:  796  ( 24 closed/active, 426 closed/virtual, 0 active/active, 346 active/virtual )
 Total number of variables:    9616
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   23    0   -294.60159446    -294.65404029   -0.05244583    0.24552550 0.00182819 0.00693771  0.11E+01      1.32
   2   10   31    0   -294.63454067    -294.64213675   -0.00759608    0.20288142 0.00068828 0.00177243  0.10E+01      3.65
   3    7   23    0   -294.64204483    -294.64205130   -0.00000647    0.00252702 0.00000080 0.00000146  0.25E-01      5.64
   4    5   15    0   -294.64205130    -294.64205130   -0.00000000    0.00000163 0.00000001 0.00000012  0.46E-04      6.81
   5    2    4    0   -294.64205130    -294.64205130    0.00000000    0.00000003 0.00000000 0.00000000  0.13E-07      7.24

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.49E-08)
                       Final energy:   -294.64205130
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -294.662518618979
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.78294245
 One electron energy                          -513.49600639
 Two electron energy                           218.83348778
 Virial ratio                                    3.65981849
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -294.662518618942
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.78294245
 One electron energy                          -513.49600640
 Two electron energy                           218.83348778
 Virial ratio                                    3.65981849
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -294.662518618923
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.78294245
 One electron energy                          -513.49600640
 Two electron energy                           218.83348778
 Virial ratio                                    3.65981849
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -294.301439175016
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68125621
 One electron energy                          -509.90574890
 Two electron energy                           215.60430973
 Virial ratio                                    3.65899981
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -294.301439174662
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68125621
 One electron energy                          -509.90574890
 Two electron energy                           215.60430973
 Virial ratio                                    3.65899981
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -294.301439173811
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68125621
 One electron energy                          -509.90574890
 Two electron energy                           215.60430973
 Virial ratio                                    3.65899981
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -294.295433550796
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77684699
 One electron energy                          -510.21082897
 Two electron energy                           215.91539542
 Virial ratio                                    3.65665111
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -294.295433550292
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77684699
 One electron energy                          -510.21082898
 Two electron energy                           215.91539543
 Virial ratio                                    3.65665111
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -294.295433549372
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77684699
 One electron energy                          -510.21082899
 Two electron energy                           215.91539544
 Virial ratio                                    3.65665111
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -294.295433547170
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77684700
 One electron energy                          -510.21082903
 Two electron energy                           215.91539548
 Virial ratio                                    3.65665111
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -294.295433547091
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77684700
 One electron energy                          -510.21082903
 Two electron energy                           215.91539548
 Virial ratio                                    3.65665111
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -294.282589412739
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.76370987
 One electron energy                          -510.17238400
 Two electron energy                           215.88979459
 Virial ratio                                    3.65685024
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -294.327611143265
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68156228
 One electron energy                          -509.90209740
 Two electron energy                           215.57448625
 Virial ratio                                    3.65922892
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -294.327611142516
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68156228
 One electron energy                          -509.90209741
 Two electron energy                           215.57448627
 Virial ratio                                    3.65922892
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -294.327611140723
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68156229
 One electron energy                          -509.90209744
 Two electron energy                           215.57448630
 Virial ratio                                    3.65922892
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -294.309389723409
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71473689
 One electron energy                          -510.01288672
 Two electron energy                           215.70349700
 Virial ratio                                    3.65826753
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -294.309389722950
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71473689
 One electron energy                          -510.01288673
 Two electron energy                           215.70349701
 Virial ratio                                    3.65826753
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -294.309389722115
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71473689
 One electron energy                          -510.01288674
 Two electron energy                           215.70349702
 Virial ratio                                    3.65826753
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -294.309389720114
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71473690
 One electron energy                          -510.01288677
 Two electron energy                           215.70349705
 Virial ratio                                    3.65826753
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -294.309389720044
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71473690
 One electron energy                          -510.01288677
 Two electron energy                           215.70349705
 Virial ratio                                    3.65826753
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -294.284273911676
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.74844292
 One electron energy                          -510.11588470
 Two electron energy                           215.83161078
 Virial ratio                                    3.65723171
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.000000005732
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999998593
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999995675
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.999999999978
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.999999999934
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.000000000086
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.083940773310
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000199
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>     1.000000000018
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     3.999999999785
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     3.916059226693
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>    -0.000000000001
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     1.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>    -0.000000000001
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     0.083865797800
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000000000017
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000000001
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     4.000000000002
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     3.916133741780
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>    -0.000000000001
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999995675
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999999980078
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.000000024246
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.000000000032
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.999999999988
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999999978
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     3.454555322512
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     3.999999999764
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>     1.000000000039
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     1.000000000188
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     0.545444677501
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>    -0.000000000001
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000000000628
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999999999392
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     1.000000000000
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.454375764506
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.999999999673
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.000000000407
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000000000000
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.545623132537
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>    -0.000000000001
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999999998592
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.000000021329
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999980078
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999999999988
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.000000000077
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999934
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     2.461503904181
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.000000000039
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     3.999999999945
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     1.000000000030
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     1.538496095809
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>    -0.000000000000
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999999999372
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.000000000608
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     1.000000000000
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     2.461758437697
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000000000312
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     3.999999999595
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000000000000
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     1.538243125686
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>    -0.000000000001
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     1.999999999999
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     1.999999999999
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     1.999999999999
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     6.000000000002
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     6.000000000002
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     6.000000000002
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     6.000000000003
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     6.000000000003
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>    -0.000000000001
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000003
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000003
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000003
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000003
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000003
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>    -0.000000000002
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 4   6 3 5 1 2 4 6 3 5 1   2 4 6 3 5 1 2 4 6 5   3 2 4 6 3 5 9 711 8
                                       1215141310 1 2 4 6 5   3 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 1 2 3 2   3 1 6 4 5 810 7 9 2   3 1 4 6 5 810 9 7 6   4 5 810 7 9 2 3 1 4
                                        6 5 810 9 7 1 2 3 6   4 5 810 7 9 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.76035     1  1  s    1.00188
    2.1     2.00000    -2.31268     1  1  d0   1.00012
    3.1     2.00000    -2.31268     1  1  d1+  1.00012
    4.1     2.00000    -2.31268     1  1  d1-  1.00012
    5.1     2.00000    -2.31268     1  1  d2-  1.00012
    6.1     2.00000    -2.31268     1  1  d2+  1.00012
    7.1     1.99877    -0.88674     1  2  s    1.00966
    1.2     2.00000    -5.58520     1  1  pz   0.99984
    2.2     2.00000    -5.58520     1  1  px   0.99984
    3.2     2.00000    -5.58520     1  1  py   0.99984
    4.2     1.64296    -0.34962     1  2  py   0.99832
    5.2     1.64296    -0.34962     1  2  px   0.99832
    6.2     1.64296    -0.34962     1  2  pz   0.99832
    7.2     0.02412     0.20435     1  2  px  -1.15541    1  4  px   0.82233    1  7  px   0.79667
    8.2     0.02412     0.20435     1  2  py  -1.15541    1  4  py   0.82233    1  7  py   0.79667
    9.2     0.02412     0.20435     1  2  pz  -1.15541    1  4  pz   0.82233    1  7  pz   0.79667
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a2000       0.99575204      0.00003735      0.00006549     -0.00000019     -0.00000033     -0.04030818      0.00000000
 2 22a000      -0.00003736      0.99575203      0.00014054     -0.00000014     -0.04030818      0.00000033      0.00000000
 2 a22000      -0.00006548     -0.00014055      0.99575203      0.04030818     -0.00000014     -0.00000019     -0.00000000
 2 a2ab00      -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.64984268
 2 2aa0b0       0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.24252625
 2 a2a0b0       0.00000066     -0.01754341     -0.00000248     -0.00000137     -0.40638751      0.00000329     -0.00000015
 2 a2a00b      -0.00000115     -0.00000248      0.01754341     -0.40638757      0.00000137      0.00000187     -0.00000006
 2 aa20b0      -0.01754341     -0.00000066     -0.00000115     -0.00000187     -0.00000329     -0.40638765     -0.00000003
 2 2aa00b       0.01754341      0.00000066      0.00000115      0.00000187      0.00000329      0.40638778     -0.00000003
 2 aa2b00      -0.00000115     -0.00000248      0.01754341     -0.40638787      0.00000137      0.00000187      0.00000006
 2 2aab00       0.00000066     -0.01754341     -0.00000248     -0.00000137     -0.40638793      0.00000329      0.00000015
 2 aa200b      -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.40731617
 2 2aba00      -0.00000059      0.01573659      0.00000222      0.00000157      0.46395712     -0.00000375     -0.00000008
 2 ba2a00       0.00000103      0.00000222     -0.01573659      0.46395709     -0.00000157     -0.00000213     -0.00000003
 2 2ba00a      -0.01573659     -0.00000059     -0.00000103     -0.00000213     -0.00000375     -0.46395702      0.00000001
 2 ab20a0       0.01573659      0.00000059      0.00000103      0.00000213      0.00000375      0.46395695      0.00000001
 2 b2a00a       0.00000103      0.00000222     -0.01573659      0.46395691     -0.00000157     -0.00000213      0.00000003
 2 a2b0a0      -0.00000059      0.01573659      0.00000222      0.00000157      0.46395687     -0.00000375      0.00000008
 2 202a00      -0.02044915     -0.00000077     -0.00000134     -0.00000209     -0.00000369     -0.45594355      0.00000000
 2 22000a       0.00000077     -0.02044915     -0.00000289     -0.00000154     -0.45594351      0.00000369      0.00000000
 2 0220a0       0.00000134      0.00000289     -0.02044915      0.45594350     -0.00000154     -0.00000209     -0.00000000
 2 b2aa00      -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.33149533
 2 2ba0a0      -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.07908972
 2 a2ba00       0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.31834735
 2 2ab0a0       0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.16343653
 2 ab200a       0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.16805867
 2 2baa00      -0.00000007      0.00180681      0.00000026     -0.00000019     -0.05756919      0.00000047     -0.00000007
 2 ab2a00       0.00000012      0.00000026     -0.00180681     -0.05756922      0.00000019      0.00000026     -0.00000003
 2 2ab00a      -0.00180681     -0.00000007     -0.00000012      0.00000026      0.00000047      0.05756925      0.00000001
 2 ba20a0       0.00180681      0.00000007      0.00000012     -0.00000026     -0.00000047     -0.05756930      0.00000001
 2 a2b00a       0.00000012      0.00000026     -0.00180681     -0.05756934      0.00000019      0.00000026      0.00000003
 2 b2a0a0      -0.00000007      0.00180681      0.00000026     -0.00000019     -0.05756936      0.00000047      0.00000007
 2 ba200a      -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.23925750
 2 02a020       0.00000125     -0.03333699     -0.00000471     -0.00000012     -0.03488222      0.00000028     -0.00000002
 2 a20002       0.00000219      0.00000471     -0.03333699      0.03488223     -0.00000012     -0.00000016      0.00000001
 2 0a2020      -0.03333699     -0.00000125     -0.00000219     -0.00000016     -0.00000028     -0.03488224     -0.00000000
 2 2a0002      -0.03333699     -0.00000125     -0.00000219     -0.00000016     -0.00000028     -0.03488226      0.00000000
 2 a02200       0.00000219      0.00000471     -0.03333699      0.03488227     -0.00000012     -0.00000016     -0.00000001
 2 20a200       0.00000125     -0.03333699     -0.00000471     -0.00000012     -0.03488228      0.00000028      0.00000002
 2 220a00      -0.00651937     -0.00000024     -0.00000043      0.00000030      0.00000053      0.06558276     -0.00000000
 2 20200a       0.00000024     -0.00651937     -0.00000092      0.00000022      0.06558276     -0.00000053     -0.00000001
 2 022a00      -0.00651937     -0.00000024     -0.00000043      0.00000030      0.00000053      0.06558276      0.00000000
 2 2020a0       0.00000043      0.00000092     -0.00651937     -0.06558275      0.00000022      0.00000030      0.00000000
 2 02200a       0.00000024     -0.00651937     -0.00000092      0.00000022      0.06558274     -0.00000053      0.00000001
 2 2200a0       0.00000043      0.00000092     -0.00651937     -0.06558274      0.00000022      0.00000030     -0.00000000
 2 a20b0a       0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.05749801
 2 02aba0      -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.05704474
 2 aba200       0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.05643205
 2 2a00ba       0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.01992019
 2 20aab0      -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.02282804
 2 baa020       0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.02106087
 
 Energy:     -294.66251862   -294.66251862   -294.66251862   -294.30143918   -294.30143917   -294.30143917   -294.29543355

 State:              8               9              10              11              12
 2 2a2000       0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 2 22a000      -0.00000000     -0.00000001      0.00000000      0.00000000      0.00000000
 2 a22000      -0.00000001      0.00000000      0.00000000     -0.00000000     -0.00000000
 2 a2ab00       0.00000004     -0.00000022     -0.00000044      0.09514155     -0.46636370
 2 2aa0b0      -0.00000011     -0.00000041     -0.00000303      0.61035091      0.46636393
 2 a2a0b0      -0.00000205     -0.56877995      0.00000137     -0.00000032      0.00000000
 2 a2a00b       0.56877991     -0.00000205     -0.00000462      0.00000013      0.00000000
 2 aa20b0       0.00000462      0.00000137      0.56877985      0.00000283     -0.00000000
 2 2aa00b       0.00000462      0.00000137      0.56877977      0.00000283     -0.00000000
 2 aa2b00      -0.56877971      0.00000205      0.00000462     -0.00000013      0.00000000
 2 2aab00       0.00000205      0.56877967     -0.00000137      0.00000032     -0.00000000
 2 aa200b       0.00000016      0.00000019      0.00000258     -0.51520948      0.46636386
 2 2aba00      -0.00000111     -0.30708016      0.00000074     -0.00000017      0.00000000
 2 ba2a00       0.30708021     -0.00000111     -0.00000250      0.00000007     -0.00000000
 2 2ba00a      -0.00000250     -0.00000074     -0.30708028     -0.00000153      0.00000000
 2 ab20a0      -0.00000250     -0.00000074     -0.30708038     -0.00000153      0.00000000
 2 b2a00a      -0.30708045      0.00000111      0.00000250     -0.00000007     -0.00000000
 2 a2b0a0       0.00000111      0.30708051     -0.00000074      0.00000017     -0.00000000
 2 202a00       0.00000000     -0.00000000      0.00000005      0.00000000     -0.00000000
 2 22000a      -0.00000000     -0.00000019      0.00000000      0.00000000     -0.00000000
 2 0220a0      -0.00000013      0.00000000      0.00000000     -0.00000000     -0.00000000
 2 b2aa00      -0.00000003      0.00000009     -0.00000000     -0.00266861      0.23318185
 2 2ba0a0       0.00000006      0.00000020      0.00000160     -0.32193329     -0.23318196
 2 a2ba00      -0.00000001      0.00000014      0.00000045     -0.09247294      0.23318184
 2 2ab0a0       0.00000005      0.00000021      0.00000143     -0.28841762     -0.23318197
 2 ab200a      -0.00000008     -0.00000012     -0.00000143      0.28574907     -0.23318192
 2 2baa00      -0.00000095     -0.26169952      0.00000063     -0.00000015      0.00000000
 2 ab2a00       0.26169950     -0.00000095     -0.00000213      0.00000006      0.00000000
 2 2ab00a      -0.00000213     -0.00000063     -0.26169949     -0.00000130      0.00000000
 2 ba20a0      -0.00000213     -0.00000063     -0.26169947     -0.00000130      0.00000000
 2 a2b00a      -0.26169946      0.00000095      0.00000213     -0.00000006     -0.00000000
 2 b2a0a0       0.00000095      0.26169945     -0.00000063      0.00000015      0.00000000
 2 ba200a      -0.00000008     -0.00000007     -0.00000115      0.22946042     -0.23318194
 2 02a020      -0.00000027     -0.07593242      0.00000018     -0.00000004      0.00000000
 2 a20002      -0.07593242      0.00000027      0.00000062     -0.00000002     -0.00000000
 2 0a2020       0.00000062      0.00000018      0.07593241      0.00000038     -0.00000000
 2 2a0002      -0.00000062     -0.00000018     -0.07593240     -0.00000038      0.00000000
 2 a02200       0.07593240     -0.00000027     -0.00000062      0.00000002     -0.00000000
 2 20a200       0.00000027      0.07593240     -0.00000018      0.00000004     -0.00000000
 2 220a00       0.00000037      0.00000011      0.04538085      0.00000023     -0.00000000
 2 20200a      -0.00000016     -0.04538082      0.00000011     -0.00000003      0.00000000
 2 022a00      -0.00000037     -0.00000011     -0.04538086     -0.00000023      0.00000000
 2 2020a0      -0.04538083      0.00000016      0.00000037     -0.00000001      0.00000000
 2 02200a       0.00000016      0.04538088     -0.00000011      0.00000003      0.00000000
 2 2200a0       0.04538087     -0.00000016     -0.00000037      0.00000001      0.00000000
 2 a20b0a       0.00000000     -0.00000002     -0.00000003      0.00683693     -0.03950540
 2 02aba0      -0.00000000      0.00000002      0.00000005     -0.00993293      0.03950540
 2 aba200      -0.00000000      0.00000002      0.00000004     -0.00826205      0.03869404
 2 2a00ba      -0.00000001     -0.00000004     -0.00000027      0.05436864      0.03950542
 2 20aab0      -0.00000001     -0.00000004     -0.00000026      0.05321319      0.03950542
 2 baa020      -0.00000001     -0.00000004     -0.00000026      0.05300260      0.03869406
 
 Energy:     -294.29543355   -294.29543355   -294.29543355   -294.29543355   -294.28258941
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a2aa00      -0.00000000      0.00000000      0.00000000      0.80101264     -0.00000020     -0.00000000      0.00000001
 2 2aa0a0      -0.00000000      0.00000000     -0.00000000      0.29899045     -0.00000168     -0.00000035      0.00000000
 2 2aaa00      -0.00001759      0.70190749     -0.00000032     -0.00000005      0.00000725      0.70108572      0.00000005
 2 aa2a00       0.70190745      0.00001759     -0.00000051     -0.00000006      0.70108575     -0.00000725     -0.00000003
 2 2aa00a      -0.00000051     -0.00000032     -0.70190741     -0.00000001      0.00000003     -0.00000005      0.70108580
 2 aa20a0       0.00000051      0.00000032      0.70190735     -0.00000001      0.00000003     -0.00000005      0.70108586
 2 a2a00a       0.70190731      0.00001759     -0.00000051      0.00000006     -0.70108590      0.00000725      0.00000003
 2 a2a0a0      -0.00001759      0.70190728     -0.00000032      0.00000005     -0.00000725     -0.70108593     -0.00000005
 2 aa200a      -0.00000000     -0.00000000     -0.00000000      0.50202204      0.00000148      0.00000034      0.00000001
 2 02aaa0      -0.00000000     -0.00000000     -0.00000000     -0.06681234      0.00000001     -0.00000000     -0.00000000
 2 a20a0a      -0.00000000      0.00000000      0.00000000      0.06568160     -0.00000003     -0.00000000      0.00000000
 2 20aaa0      -0.00000000      0.00000000     -0.00000000      0.02109924     -0.00000014     -0.00000003      0.00000000
 2 2a0a0a      -0.00000153      0.06093092     -0.00000003     -0.00000000      0.00000062      0.05993488      0.00000000
 2 0a2aa0      -0.06093091     -0.00000153      0.00000004      0.00000000     -0.05993488      0.00000062      0.00000000
 2 20aa0a      -0.00000004     -0.00000003     -0.06093091     -0.00000000      0.00000000     -0.00000000      0.05993488
 2 a02aa0      -0.00000004     -0.00000003     -0.06093090      0.00000000     -0.00000000      0.00000000     -0.05993489
 2 02a0aa       0.06093090      0.00000153     -0.00000004      0.00000000     -0.05993489      0.00000062      0.00000000
 2 a200aa      -0.00000153      0.06093090     -0.00000003      0.00000000     -0.00000062     -0.05993489     -0.00000000
 2 2a00aa      -0.00000000      0.00000000     -0.00000000      0.02835619     -0.00000014     -0.00000003      0.00000000
 2 abaaa0       0.00000103     -0.04126565      0.00000002     -0.00000000      0.00000058      0.05603036      0.00000000
 2 abaa0a      -0.04126565     -0.00000103      0.00000003     -0.00000000      0.05603035     -0.00000058     -0.00000000
 2 aab0aa      -0.00000003     -0.00000002     -0.04126565      0.00000000     -0.00000000      0.00000000     -0.05603035
 2 baa0aa      -0.00000003     -0.00000002     -0.04126566     -0.00000000      0.00000000     -0.00000000      0.05603035
 2 aaba0a      -0.04126566     -0.00000103      0.00000003      0.00000000     -0.05603035      0.00000058      0.00000000
 2 baaaa0       0.00000103     -0.04126566      0.00000002      0.00000000     -0.00000058     -0.05603034     -0.00000000
 2 a02a0a       0.00000000     -0.00000000      0.00000000     -0.03845614     -0.00000013     -0.00000003     -0.00000000
 2 0a20aa      -0.00000000      0.00000000     -0.00000000      0.04458235      0.00000012      0.00000003      0.00000000
 
 Energy:     -294.32761114   -294.32761114   -294.32761114   -294.30938972   -294.30938972   -294.30938972   -294.30938972

 State:              8               9
 2 a2aa00       0.11722037      0.57123543
 2 2aa0a0       0.75230740     -0.57123557
 2 2aaa00       0.00000034     -0.00000000
 2 aa2a00       0.00000159     -0.00000000
 2 2aa00a      -0.00000000      0.00000000
 2 aa20a0      -0.00000000      0.00000000
 2 a2a00a      -0.00000159     -0.00000000
 2 a2a0a0      -0.00000034     -0.00000000
 2 aa200a      -0.63508710     -0.57123553
 2 02aaa0      -0.00583121     -0.05166038
 2 a20a0a       0.01355798      0.05166038
 2 20aaa0       0.06366092     -0.05166039
 2 2a0a0a       0.00000003      0.00000000
 2 0a2aa0      -0.00000014     -0.00000000
 2 20aa0a      -0.00000000      0.00000000
 2 a02aa0       0.00000000      0.00000000
 2 02a0aa      -0.00000014     -0.00000000
 2 a200aa      -0.00000003     -0.00000000
 2 2a00aa       0.06077678     -0.05166039
 2 abaaa0       0.00000003      0.00000000
 2 abaa0a       0.00000013      0.00000000
 2 aab0aa      -0.00000000      0.00000000
 2 baa0aa      -0.00000000      0.00000000
 2 aaba0a      -0.00000013      0.00000000
 2 baaaa0      -0.00000003      0.00000000
 2 a02a0a       0.05494557      0.05166038
 2 0a20aa      -0.05010294     -0.05166038
 
 Energy:     -294.30938972   -294.28427391
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.76      4.79      0.08      1.55
 REAL TIME  *        12.49 SEC
 DISK USED  *        39.97 MB (local),      541.67 MB (total)
 SF USED    *        26.68 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -294.6625186   2.0
    -294.6625186   2.0
    -294.6625186   2.0
    -294.3014392   2.0
    -294.3014392   2.0
    -294.3014392   2.0
    -294.2954336   6.0
    -294.2954336   6.0
    -294.2954335   6.0
    -294.2954335   6.0
    -294.2954335   6.0
    -294.2825894  -0.0
    -294.3276111   2.0
    -294.3276111   2.0
    -294.3276111   2.0
    -294.3093897   6.0
    -294.3093897   6.0
    -294.3093897   6.0
    -294.3093897   6.0
    -294.3093897   6.0
    -294.2842739  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 25
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      252 conf      420 CSFs
 N elec internal:    15576 conf    58240 CSFs
 N-1 el internal:    19959 conf   132244 CSFs
 N-2 el internal:    14819 conf   136456 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.66251862
     2      -294.66251862
     3      -294.66251862
     4      -294.30143918
     5      -294.30143917
     6      -294.30143917
     7      -294.29543355
     8      -294.29543355
     9      -294.29543355
    10      -294.29543355
    11      -294.29543355
    12      -294.28258941

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.7029D-07

 Number of blocks in overlap matrix:  1066   Smallest eigenvalue:  0.70D-07
 Number of N-2 electron functions:    3028
 Number of N-1 electron functions:  132244

 Number of internal configurations:                29358
 Number of singly external configurations:       6348776
 Number of doubly external configurations:       6983632
 Total number of contracted configurations:     13361766
 Total number of uncontracted configurations:  319907094

 Diagonal Coupling coefficients finished.               Storage:  34450777 words, CPU-Time:    158.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1772592 words, CPU-time:      0.29 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.66251862     0.00000000    -0.93525310  0.32D-01  0.97D-01   170.40
    1     2     2     1.00000000     0.00000000  -294.66251862     0.00000000    -0.93575978  0.32D-01  0.98D-01   170.40
    1     3     3     1.00000000     0.00000000  -294.66251862     0.00000000    -0.93533734  0.32D-01  0.97D-01   170.40
    1     4     4     1.00000000     0.00000000  -294.30143918     0.00000000    -0.98394094  0.11D+00  0.10D+00   170.40
    1     5     5     1.00000000     0.00000000  -294.30143917     0.00000000    -0.98395672  0.11D+00  0.10D+00   170.40
    1     6     6     1.00000000     0.00000000  -294.30143917     0.00000000    -0.98399391  0.11D+00  0.10D+00   170.40
    1     7     7     1.00000000     0.00000000  -294.29543355     0.00000000    -0.98536150  0.98D-01  0.10D+00   170.40
    1     8     8     1.00000000     0.00000000  -294.29543355     0.00000000    -0.98239097  0.87D-01  0.10D+00   170.40
    1     9     9     1.00000000     0.00000000  -294.29543355     0.00000000    -0.98225467  0.87D-01  0.10D+00   170.40
    1    10    10     1.00000000     0.00000000  -294.29543355     0.00000000    -0.98227122  0.87D-01  0.10D+00   170.40
    1    11    11     1.00000000     0.00000000  -294.29543355     0.00000000    -0.98273489  0.89D-01  0.10D+00   170.40
    1    12    12     1.00000000     0.00000000  -294.28258941     0.00000000    -0.99316074  0.11D+00  0.10D+00   170.40
    2     1     1     1.08820697    -0.77230787  -295.43482649    -0.77230787    -0.01916749  0.21D-02  0.16D-02   991.65
    2     2     2     1.08816410    -0.77225391  -295.43477253    -0.77225391    -0.01920184  0.22D-02  0.16D-02   991.65
    2     3     3     1.08818887    -0.77224615  -295.43476477    -0.77224615    -0.01921161  0.22D-02  0.16D-02   991.65
    2     4     4     1.12146674    -0.77761164  -295.07905081    -0.77761164    -0.02373599  0.54D-02  0.19D-02   991.65
    2     5     5     1.12148125    -0.77759011  -295.07902929    -0.77759011    -0.02375815  0.54D-02  0.19D-02   991.65
    2     6     6     1.12151768    -0.77755963  -295.07899880    -0.77755963    -0.02379901  0.55D-02  0.19D-02   991.65
    2     7     7     1.12260317    -0.78349558  -295.07892913    -0.78349558    -0.02387462  0.55D-02  0.19D-02   991.65
    2     8     8     1.12250649    -0.78134233  -295.07677588    -0.78134233    -0.02509996  0.65D-02  0.19D-02   991.65
    2     9     9     1.13033061    -0.77816956  -295.07360311    -0.77816956    -0.02899959  0.93D-02  0.20D-02   991.65
    2    10    10     1.13034497    -0.77814365  -295.07357720    -0.77814365    -0.02903962  0.93D-02  0.20D-02   991.65
    2    11    11     1.13037031    -0.77811209  -295.07354564    -0.77811209    -0.02906275  0.93D-02  0.20D-02   991.65
    2    12    12     1.13643923    -0.78364629  -295.06623570    -0.78364629    -0.02719529  0.84D-02  0.21D-02   991.65
    3     1     1     1.08660236    -0.79162712  -295.45414573    -0.01931925    -0.00091859  0.52D-04  0.14D-03  1817.54
    3     2     2     1.08657791    -0.79161430  -295.45413292    -0.01936039    -0.00092767  0.53D-04  0.14D-03  1817.54
    3     3     3     1.08657913    -0.79161421  -295.45413283    -0.01936806    -0.00092759  0.53D-04  0.14D-03  1817.54
    3     4     4     1.10687251    -0.80101397  -295.10245315    -0.02340234    -0.00088627  0.11D-03  0.14D-03  1817.54
    3     5     5     1.10717458    -0.80101048  -295.10244966    -0.02342037    -0.00088672  0.12D-03  0.14D-03  1817.54
    3     6     6     1.10687758    -0.80100964  -295.10244882    -0.02345001    -0.00088937  0.12D-03  0.14D-03  1817.54
    3     7     7     1.10687384    -0.80701498  -295.10244853    -0.02351940    -0.00088875  0.12D-03  0.14D-03  1817.54
    3     8     8     1.10728401    -0.80680628  -295.10223983    -0.02546395    -0.00104747  0.16D-03  0.16D-03  1817.54
    3     9     9     1.10436621    -0.80678638  -295.10221993    -0.02861683    -0.00108018  0.22D-03  0.14D-03  1817.54
    3    10    10     1.10436001    -0.80678631  -295.10221986    -0.02864266    -0.00107961  0.22D-03  0.14D-03  1817.54
    3    11    11     1.10435531    -0.80678303  -295.10221658    -0.02867094    -0.00108273  0.22D-03  0.14D-03  1817.54
    3    12    12     1.11064706    -0.81015550  -295.09274491    -0.02650921    -0.00100939  0.16D-03  0.15D-03  1817.54
    4     1     1     1.08972829    -0.79284105  -295.45535967    -0.00121394    -0.00011506  0.72D-05  0.14D-04  2647.58
    4     2     2     1.08971951    -0.79283887  -295.45535749    -0.00122457    -0.00011645  0.73D-05  0.15D-04  2647.58
    4     3     3     1.08971815    -0.79283862  -295.45535723    -0.00122441    -0.00011659  0.73D-05  0.15D-04  2647.58
    4     4     4     1.10776284    -0.80215686  -295.10359604    -0.00114289    -0.00011228  0.85D-05  0.18D-04  2647.58
    4     5     5     1.10775858    -0.80215548  -295.10359465    -0.00114500    -0.00011282  0.84D-05  0.19D-04  2647.58
    4     6     6     1.10775947    -0.80215544  -295.10359462    -0.00114580    -0.00011286  0.85D-05  0.19D-04  2647.58
    4     7     7     1.10777498    -0.80815971  -295.10359326    -0.00114472    -0.00011315  0.84D-05  0.19D-04  2647.58
    4     8     8     1.10777047    -0.80814479  -295.10357834    -0.00133851    -0.00012340  0.10D-04  0.20D-04  2647.58
    4     9     9     1.10311237    -0.80808851  -295.10352206    -0.00130213    -0.00009829  0.92D-05  0.16D-04  2647.58
    4    10    10     1.10310695    -0.80808849  -295.10352204    -0.00130217    -0.00009848  0.92D-05  0.16D-04  2647.58
    4    11    11     1.10311017    -0.80808844  -295.10352198    -0.00130541    -0.00009842  0.92D-05  0.16D-04  2647.58
    4    12    12     1.11005156    -0.81143853  -295.09402794    -0.00128303    -0.00011529  0.10D-04  0.19D-04  2647.58
    5     1     1     1.09055238    -0.79298731  -295.45550593    -0.00014626    -0.00001050  0.33D-06  0.15D-05  3472.12
    5     2     2     1.09055156    -0.79298704  -295.45550566    -0.00014817    -0.00001068  0.34D-06  0.15D-05  3472.12
    5     3     3     1.09055180    -0.79298699  -295.45550561    -0.00014838    -0.00001071  0.34D-06  0.15D-05  3472.12
    5     4     4     1.10859803    -0.80231466  -295.10375384    -0.00015780    -0.00001630  0.14D-05  0.26D-05  3472.12
    5     5     5     1.10859765    -0.80231434  -295.10375351    -0.00015886    -0.00001648  0.14D-05  0.27D-05  3472.12
    5     6     6     1.10859794    -0.80231432  -295.10375350    -0.00015888    -0.00001648  0.14D-05  0.27D-05  3472.12
    5     7     7     1.10858033    -0.80831960  -295.10375315    -0.00015989    -0.00001667  0.14D-05  0.27D-05  3472.12
    5     8     8     1.10856641    -0.80831681  -295.10375036    -0.00017202    -0.00001822  0.15D-05  0.30D-05  3472.12
    5     9     9     1.10342838    -0.80821907  -295.10365262    -0.00013056    -0.00001196  0.81D-06  0.20D-05  3472.12
    5    10    10     1.10342790    -0.80821893  -295.10365248    -0.00013044    -0.00001202  0.82D-06  0.21D-05  3472.12
    5    11    11     1.10342742    -0.80821892  -295.10365247    -0.00013048    -0.00001204  0.82D-06  0.21D-05  3472.12
    5    12    12     1.11080412    -0.81159787  -295.09418728    -0.00015935    -0.00001612  0.16D-05  0.26D-05  3472.12
    6     1     1     1.09051493    -0.79300077  -295.45551939    -0.00001346    -0.00000129  0.75D-07  0.17D-06  4295.59
    6     2     2     1.09051409    -0.79300074  -295.45551936    -0.00001370    -0.00000131  0.77D-07  0.17D-06  4295.59
    6     3     3     1.09051402    -0.79300073  -295.45551935    -0.00001374    -0.00000132  0.78D-07  0.17D-06  4295.59
    6     4     4     1.10861779    -0.80233680  -295.10377598    -0.00002214    -0.00000283  0.16D-06  0.44D-06  4295.59
    6     5     5     1.10861754    -0.80233673  -295.10377591    -0.00002240    -0.00000288  0.16D-06  0.45D-06  4295.59
    6     6     6     1.10861741    -0.80233673  -295.10377590    -0.00002240    -0.00000288  0.16D-06  0.45D-06  4295.59
    6     7     7     1.10861364    -0.80834228  -295.10377583    -0.00002268    -0.00000292  0.16D-06  0.46D-06  4295.59
    6     8     8     1.10860486    -0.80834180  -295.10377535    -0.00002499    -0.00000322  0.19D-06  0.51D-06  4295.59
    6     9     9     1.10350136    -0.80823505  -295.10366860    -0.00001598    -0.00000180  0.13D-06  0.28D-06  4295.59
    6    10    10     1.10350111    -0.80823501  -295.10366856    -0.00001608    -0.00000182  0.13D-06  0.28D-06  4295.59
    6    11    11     1.10350118    -0.80823501  -295.10366855    -0.00001609    -0.00000182  0.13D-06  0.28D-06  4295.59
    6    12    12     1.11084660    -0.81161963  -295.09420904    -0.00002175    -0.00000274  0.16D-06  0.44D-06  4295.59
    7     1     1     1.09056078    -0.79300241  -295.45552103    -0.00000163    -0.00000020  0.20D-07  0.22D-07  5121.36
    7     2     2     1.09056049    -0.79300240  -295.45552102    -0.00000166    -0.00000020  0.21D-07  0.23D-07  5121.36
    7     3     3     1.09056047    -0.79300240  -295.45552102    -0.00000167    -0.00000021  0.21D-07  0.23D-07  5121.36
    7     4     4     1.10868599    -0.80234057  -295.10377975    -0.00000377    -0.00000058  0.60D-07  0.82D-07  5121.36
    7     5     5     1.10868578    -0.80234056  -295.10377973    -0.00000383    -0.00000059  0.62D-07  0.83D-07  5121.36
    7     6     6     1.10868575    -0.80234056  -295.10377973    -0.00000383    -0.00000059  0.62D-07  0.83D-07  5121.36
    7     7     7     1.10868754    -0.80834616  -295.10377971    -0.00000388    -0.00000060  0.63D-07  0.84D-07  5121.36
    7     8     8     1.10868498    -0.80834607  -295.10377962    -0.00000427    -0.00000065  0.71D-07  0.93D-07  5121.36
    7     9     9     1.10358238    -0.80823740  -295.10367095    -0.00000235    -0.00000033  0.35D-07  0.49D-07  5121.36
    7    10    10     1.10358246    -0.80823740  -295.10367094    -0.00000238    -0.00000034  0.36D-07  0.50D-07  5121.36
    7    11    11     1.10358235    -0.80823739  -295.10367093    -0.00000238    -0.00000034  0.36D-07  0.50D-07  5121.36
    7    12    12     1.11092465    -0.81162329  -295.09421270    -0.00000366    -0.00000054  0.58D-07  0.77D-07  5121.36
    8     1     1     1.09056885    -0.79300265  -295.45552126    -0.00000024    -0.00000003  0.15D-08  0.40D-08  5950.73
    8     2     2     1.09056885    -0.79300264  -295.45552126    -0.00000024    -0.00000003  0.15D-08  0.40D-08  5950.73
    8     3     3     1.09056890    -0.79300264  -295.45552126    -0.00000024    -0.00000003  0.15D-08  0.39D-08  5950.73
    8     4     4     1.10868253    -0.80234131  -295.10378049    -0.00000074    -0.00000013  0.11D-07  0.19D-07  5950.73
    8     5     5     1.10868234    -0.80234131  -295.10378048    -0.00000075    -0.00000013  0.12D-07  0.19D-07  5950.73
    8     6     6     1.10868234    -0.80234131  -295.10378048    -0.00000075    -0.00000013  0.12D-07  0.19D-07  5950.73
    8     7     7     1.10868235    -0.80834693  -295.10378048    -0.00000076    -0.00000013  0.12D-07  0.20D-07  5950.73
    8     8     8     1.10868264    -0.80834690  -295.10378045    -0.00000083    -0.00000014  0.14D-07  0.22D-07  5950.73
    8     9     9     1.10357224    -0.80823783  -295.10367138    -0.00000043    -0.00000007  0.67D-08  0.11D-07  5950.73
    8    10    10     1.10357233    -0.80823783  -295.10367138    -0.00000043    -0.00000007  0.67D-08  0.11D-07  5950.73
    8    11    11     1.10357224    -0.80823782  -295.10367137    -0.00000043    -0.00000007  0.67D-08  0.11D-07  5950.73
    8    12    12     1.11091854    -0.81162397  -295.09421339    -0.00000069    -0.00000011  0.13D-07  0.17D-07  5950.73
    9     1     1     1.09056918    -0.79300265  -295.45552127    -0.00000000    -0.00000003  0.15D-08  0.38D-08  6658.15
    9     2     2     1.09056916    -0.79300265  -295.45552127    -0.00000000    -0.00000003  0.15D-08  0.38D-08  6658.15
    9     3     3     1.09056911    -0.79300265  -295.45552126    -0.00000000    -0.00000003  0.15D-08  0.37D-08  6658.15
    9     4     4     1.10868726    -0.80234147  -295.10378065    -0.00000016    -0.00000003  0.25D-08  0.42D-08  6658.15
    9     5     5     1.10868746    -0.80234147  -295.10378065    -0.00000016    -0.00000003  0.25D-08  0.42D-08  6658.15
    9     6     6     1.10868741    -0.80234147  -295.10378064    -0.00000016    -0.00000003  0.25D-08  0.42D-08  6658.15
    9     7     7     1.10868748    -0.80834709  -295.10378064    -0.00000016    -0.00000003  0.25D-08  0.41D-08  6658.15
    9     8     8     1.10868677    -0.80834708  -295.10378063    -0.00000018    -0.00000003  0.28D-08  0.47D-08  6658.15
    9     9     9     1.10357809    -0.80823793  -295.10367148    -0.00000010    -0.00000001  0.60D-09  0.98D-09  6658.15
    9    10    10     1.10357762    -0.80823793  -295.10367147    -0.00000010    -0.00000001  0.65D-09  0.11D-08  6658.15
    9    11    11     1.10357327    -0.80823792  -295.10367146    -0.00000009    -0.00000001  0.12D-08  0.20D-08  6658.15
    9    12    12     1.11092690    -0.81162414  -295.09421355    -0.00000017    -0.00000001  0.10D-08  0.16D-08  6658.15


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   6.5%
 P   0.3%  53.0%  32.1%

 Initialization:   2.4%
 Other:            4.9%

 Total CPU:     6658.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/2000           0.8937956   0.2558091   0.2155934  -0.0000010  -0.0000002   0.0000001  -0.0000008  -0.0000015
                           -0.0287515  -0.0064717  -0.0019671   0.0000000
 222222222222/000          -0.0938823  -0.3985175   0.8620669   0.0000014  -0.0000003  -0.0000013  -0.0000007   0.0000002
                           -0.0004738  -0.0066414   0.0287757  -0.0000000
 2222222222/22000          -0.3210996   0.8285740   0.3480654  -0.0000002   0.0000003   0.0000001   0.0000009  -0.0000001
                            0.0067475  -0.0280429  -0.0063612  -0.0000000
 2222222222/2/\00          -0.0000000   0.0000000  -0.0000000   0.2153982   0.0950202  -0.0396044   0.0553071   0.7224638
                           -0.0000434  -0.0000080  -0.0000171   0.5411628
 22222222222//0\0          -0.0000000   0.0000000  -0.0000000   0.6061971   0.0592993  -0.2893036   0.3111940   0.1745768
                           -0.0000387   0.0000029  -0.0000354  -0.5411628
 2222222222/2/00\          -0.0028991   0.0074809   0.0031425   0.0916604  -0.6018972  -0.1256388  -0.2151189   0.0614166
                           -0.1091310   0.4535748   0.1028655   0.0000001
 2222222222//2\00          -0.0028991   0.0074809   0.0031425  -0.0916550   0.6018911   0.1256344   0.2150918  -0.0614139
                           -0.1091429   0.4535846   0.1029127   0.0000000
 2222222222//20\0          -0.0080697  -0.0023096  -0.0019465   0.3345179  -0.0377140   0.5577546  -0.0939895  -0.0570337
                           -0.4650422  -0.1046813  -0.0318105   0.0000001
 22222222222//00\           0.0080697   0.0023096   0.0019465   0.3345505  -0.0377070   0.5577495  -0.0939647  -0.0569866
                            0.4650374   0.1046730   0.0318231  -0.0000001
 2222222222//200\           0.0000000   0.0000000   0.0000000  -0.3907979   0.0357207   0.2496986  -0.2558862   0.5478860
                           -0.0000050  -0.0000107   0.0000181  -0.5411643
 2222222222/2/0\0           0.0008476   0.0035980  -0.0077831   0.1813867   0.2566950  -0.1892969  -0.5465574  -0.0563672
                           -0.0076523  -0.1074299   0.4654092  -0.0000001
 22222222222//\00           0.0008476   0.0035980  -0.0077831  -0.1813424  -0.2567059   0.1892544   0.5465359   0.0563735
                           -0.0076755  -0.1074154   0.4654652  -0.0000000
 222222222222000/           0.0023447   0.0099531  -0.0215304   0.0000198  -0.0000049  -0.0000190  -0.0000096   0.0000028
                           -0.0068622  -0.0961854   0.4167475  -0.0000000
 2222222222202/00          -0.0223226  -0.0063888  -0.0053845  -0.0000145  -0.0000031   0.0000024  -0.0000111  -0.0000210
                           -0.4163873  -0.0937258  -0.0284880   0.0000001
 22222222220220/0           0.0080195  -0.0206936  -0.0086929  -0.0000024   0.0000026   0.0000020   0.0000121  -0.0000012
                            0.0977189  -0.4061260  -0.0921245  -0.0000000
 22222222222/\/00          -0.0011612  -0.0049290   0.0106624   0.0082494   0.0117029  -0.0086106  -0.0249005  -0.0025713
                            0.0055863   0.0782942  -0.3392319   0.0000000
 2222222222/2\0/0          -0.0011612  -0.0049290   0.0106624  -0.0082816  -0.0116949   0.0086415   0.0249162   0.0025667
                            0.0055853   0.0782948  -0.3392293   0.0000000
 2222222222/\20/0           0.0110545   0.0031639   0.0026665  -0.0152340   0.0017211  -0.0254206   0.0042919   0.0026153
                            0.3389372   0.0762925   0.0231888  -0.0000001
 22222222222/\00/           0.0110545   0.0031638   0.0026665   0.0152578  -0.0017161   0.0254169  -0.0042739  -0.0025810
                            0.3389368   0.0762921   0.0231894  -0.0000001
 2222222222/\2/00          -0.0039714   0.0102479   0.0043049  -0.0041752   0.0274285   0.0057241   0.0097933  -0.0027980
                           -0.0795431   0.3305851   0.0749900   0.0000000
 2222222222/2\00/          -0.0039714   0.0102478   0.0043049   0.0041791  -0.0274327  -0.0057273  -0.0098130   0.0027999
                           -0.0795425   0.3305845   0.0749878   0.0000000
 2222222222/20002           0.0096231  -0.0248317  -0.0104313  -0.0106125   0.0696885   0.0145466   0.0249063  -0.0071109
                            0.0081957  -0.0340640  -0.0077244  -0.0000000
 2222222222/02200           0.0096231  -0.0248317  -0.0104312   0.0106121  -0.0696885  -0.0145463  -0.0249044   0.0071107
                            0.0081971  -0.0340653  -0.0077298  -0.0000000
 22222222220/2020          -0.0267862  -0.0076664  -0.0064612   0.0387319  -0.0043665   0.0645779  -0.0108818  -0.0066025
                           -0.0349254  -0.0078619  -0.0023888   0.0000000
 22222222222/0002          -0.0267863  -0.0076664  -0.0064612  -0.0387342   0.0043659  -0.0645774   0.0108799   0.0065990
                           -0.0349250  -0.0078610  -0.0023902   0.0000000
 222222222202/020           0.0028136   0.0119433  -0.0258355   0.0210003   0.0297208  -0.0219162  -0.0632810  -0.0065264
                           -0.0005742  -0.0080687   0.0349526   0.0000000
 222222222220/200           0.0028136   0.0119432  -0.0258354  -0.0209971  -0.0297217   0.0219131   0.0632794   0.0065269
                           -0.0005769  -0.0080670   0.0349590  -0.0000000
 222222222220200/           0.0007026   0.0029823  -0.0064512   0.0116861   0.0165452  -0.0121960  -0.0352238  -0.0036336
                            0.0010380   0.0145388  -0.0629972  -0.0000000
 222222222202200/           0.0007026   0.0029823  -0.0064512  -0.0116921  -0.0165438   0.0122018   0.0352267   0.0036327
                            0.0010365   0.0145398  -0.0629936   0.0000000
 2222222222022/00          -0.0066887  -0.0019143  -0.0016134  -0.0215589   0.0024310  -0.0359481   0.0060586   0.0036776
                            0.0629417   0.0141679   0.0043059  -0.0000000
 2222222222220/00          -0.0066887  -0.0019143  -0.0016134   0.0215633  -0.0024300   0.0359473  -0.0060552  -0.0036712
                            0.0629414   0.0141674   0.0043067  -0.0000000
 22222222222020/0           0.0024029  -0.0062006  -0.0026047  -0.0059071   0.0387922   0.0080971   0.0138619  -0.0039581
                           -0.0147716   0.0613906   0.0139272   0.0000000
 22222222222200/0           0.0024029  -0.0062006  -0.0026047   0.0059078  -0.0387930  -0.0080977  -0.0138655   0.0039584
                           -0.0147709   0.0613901   0.0139241   0.0000000
 22222222222/\0/0          -0.0000000  -0.0000000  -0.0000000   0.0079936  -0.0059584  -0.0095748   0.0091412  -0.0578947
                            0.0000022   0.0000008  -0.0000000   0.0000000
 2222222222/\/200          -0.0000000  -0.0000000  -0.0000000  -0.0164086  -0.0075501   0.0027506  -0.0039802  -0.0578192
                            0.0000034   0.0000006   0.0000013  -0.0414019
 2222222222/20\0/           0.0000000  -0.0000000  -0.0000000   0.0151458   0.0074623  -0.0021174   0.0033053   0.0577749
                           -0.0000033  -0.0000007  -0.0000013   0.0433128
 222222222220//\0           0.0000000  -0.0000000   0.0000000   0.0568207   0.0057816  -0.0269265   0.0290023   0.0183578
                           -0.0000037   0.0000003  -0.0000034  -0.0489101
 222222222202/\/0          -0.0000000   0.0000000  -0.0000000  -0.0188869  -0.0075508   0.0041400  -0.0054332  -0.0563741
                            0.0000035   0.0000006   0.0000014  -0.0433129
 2222222222///\\0           0.0023790   0.0100986  -0.0218452   0.0000027  -0.0000006  -0.0000025  -0.0000013   0.0000004
                           -0.0009187  -0.0128769   0.0557926  -0.0000000
 222222222202/0/\          -0.0083785   0.0216201   0.0090821   0.0084931  -0.0557718  -0.0116416  -0.0199319   0.0056908
                           -0.0015758   0.0065509   0.0014839   0.0000000
 2222222222///0\\          -0.0226492  -0.0064823  -0.0054632  -0.0000019  -0.0000004   0.0000003  -0.0000015  -0.0000028
                           -0.0557445  -0.0125477  -0.0038139   0.0000000
 2222222222///\0\          -0.0081368   0.0209964   0.0088201   0.0000003  -0.0000003  -0.0000003  -0.0000016   0.0000002
                           -0.0130823   0.0543708   0.0123333   0.0000000
 2222222222/02/0\           0.0000000   0.0000000  -0.0000000   0.0355611  -0.0035968  -0.0230176   0.0235435  -0.0529488
                            0.0000006   0.0000010  -0.0000016   0.0489103
 2222222222/02/\0           0.0233220   0.0066749   0.0056255  -0.0309979   0.0034944  -0.0516817   0.0087082   0.0052830
                            0.0067171   0.0015123   0.0004589   0.0000000
 222222222220//0\           0.0233220   0.0066749   0.0056255   0.0309983  -0.0034942   0.0516815  -0.0087078  -0.0052823
                            0.0067167   0.0015115   0.0004601   0.0000000
 2222222222//\002           0.0000000  -0.0000000   0.0000000  -0.0359396   0.0032851   0.0229635  -0.0235325   0.0503863
                           -0.0000005  -0.0000010   0.0000017  -0.0478070
 22222222220/20/\           0.0000000   0.0000000  -0.0000000  -0.0380417   0.0031308   0.0240106  -0.0246501   0.0502400
                           -0.0000003  -0.0000010   0.0000018  -0.0489103

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2222222222/2\000  22.2    -0.0000000  -0.0000000   0.0000000  -0.0245723  -0.0108404   0.0045174  -0.0063088  -0.0824237
                            0.0000050   0.0000009   0.0000019  -0.0632967
 22222222222/\000  20.2     0.0000000  -0.0000000   0.0000000  -0.0691576  -0.0067646   0.0330054  -0.0355027  -0.0199120
                            0.0000044  -0.0000003   0.0000040   0.0632970
 2222222222/2\000  21.2     0.0003942  -0.0010171  -0.0004272  -0.0104570   0.0686670   0.0143334   0.0245416  -0.0070067
                            0.0120084  -0.0499097  -0.0113190  -0.0000000
 2222222222/\2000  22.2     0.0003942  -0.0010173  -0.0004273   0.0104564  -0.0686665  -0.0143330  -0.0245387   0.0070064
                            0.0120097  -0.0499108  -0.0113244  -0.0000000
 2222222222/\2000  20.2     0.0010972   0.0003140   0.0002647  -0.0381634   0.0043026  -0.0636311   0.0107227   0.0065066
                            0.0511716   0.0115188   0.0035004  -0.0000000
 22222222222/\000  21.2    -0.0010972  -0.0003140  -0.0002646  -0.0381669   0.0043018  -0.0636305   0.0107200   0.0065014
                           -0.0511711  -0.0115178  -0.0035018   0.0000000
 2222222222/\2000  21.2    -0.0000000   0.0000000  -0.0000000   0.0445837  -0.0040748  -0.0284863   0.0291922  -0.0625020
                            0.0000006   0.0000012  -0.0000021   0.0632970
 2222222222/2\000  20.2    -0.0001152  -0.0004890   0.0010578  -0.0206933  -0.0292849   0.0215957   0.0623536   0.0064306
                            0.0008419   0.0118205  -0.0512094   0.0000000
 22222222222/\000  22.2    -0.0001152  -0.0004890   0.0010578   0.0206884   0.0292861  -0.0215911  -0.0623512  -0.0064313
                            0.0008446   0.0118188  -0.0512158   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.896585   -0.094175   -0.322102    0.002913   -0.000852   -0.008108    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 2           0.256608   -0.399761    0.831160   -0.007517   -0.003615   -0.002321    0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 3           0.216266    0.864758    0.349152   -0.003158    0.007820   -0.001956   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.000005    0.000044    0.000032    0.161490   -0.131741   -0.260678    0.480831
             0.747782   -0.000001
 5           0.000000    0.000000    0.000000   -0.000006   -0.000011    0.000007    0.114574    0.865112   -0.368960   -0.054202
             0.033901    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000004   -0.000042   -0.000005    0.007339    0.180580    0.272049    0.801666
            -0.390414    0.000000
 7           0.000000    0.000000   -0.000000   -0.000027   -0.000021    0.000025    0.009078    0.309174    0.785560   -0.135075
             0.413211   -0.000000
 8           0.000000   -0.000000    0.000000    0.000003    0.000006    0.000047    0.928667   -0.088273    0.081022   -0.081942
            -0.135171    0.000000
 9           0.009065    0.000149   -0.002127   -0.217401   -0.015267    0.926360   -0.000050   -0.000008   -0.000017   -0.000004
            -0.000032    0.000000
 10          0.002040    0.002094    0.008842    0.903532   -0.213988    0.208517   -0.000011    0.000007    0.000011   -0.000006
             0.000008   -0.000000
 11          0.000620   -0.009073    0.002006    0.204955    0.927157    0.063379   -0.000015    0.000034    0.000040    0.000009
            -0.000041    0.000000
 12          0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000001   -0.000000    0.000000   -0.000000
             0.000001    0.948662

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957371   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000349   -0.000048
             0.000030    0.000000
 2          -0.000000    0.957371   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000020    0.000279
             0.000217    0.000000
 3          -0.000000   -0.000000    0.957371   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000054    0.000212
            -0.000279    0.000000
 4           0.000000    0.000000   -0.000000    0.949613    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.949613    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.949613   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.949613   -0.000000    0.000000   -0.000000
            -0.000000    0.000000
 8           0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.949613    0.000000    0.000000
             0.000000   -0.000000
 9           0.000349    0.000020    0.000054    0.000000    0.000000   -0.000000    0.000000    0.000000    0.951697    0.000000
            -0.000000   -0.000000
 10         -0.000048    0.000279    0.000212    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.951697
            -0.000001    0.000000
 11          0.000030    0.000217   -0.000279    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000001
             0.951699   -0.000000
 12          0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.948662


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.89658536 (fixed)   0.95753822 (relaxed)   0.95737074 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042949   -0.00047173   -0.67593285
 Singles      0.01355239   -0.05587510   -0.06106465
 Pairs        0.07705569    0.00000000   -0.05600514
 Total        1.09103757   -0.05634683   -0.79300265
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.66248662
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39065412
 One electron energy                 -513.19387846
 Two electron energy                  217.73835719
 Virial quotient                       -2.65242649
 Correlation energy                    -0.79303464
 !MRCI STATE 1.2 Energy              -295.455521266762

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52771721 (Davidson, fixed reference)
 Cluster corrected energies          -295.52741455 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52771721 (Davidson, rotated reference)

 Cluster corrected energies          -295.52708073 (Pople, fixed reference)
 Cluster corrected energies          -295.52675670 (Pople, relaxed reference)
 Cluster corrected energies          -295.52708073 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.83116022 (fixed)   0.95753823 (relaxed)   0.95737074 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042949   -0.00047173   -0.67593288
 Singles      0.01355238   -0.05587508   -0.06106464
 Pairs        0.07705568    0.00000000   -0.05600512
 Total        1.09103755   -0.05634681   -0.79300265
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.66248662
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39065447
 One electron energy                 -513.19387817
 Two electron energy                  217.73835691
 Virial quotient                       -2.65242648
 Correlation energy                    -0.79303464
 !MRCI STATE 2.2 Energy              -295.455521265853

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52771719 (Davidson, fixed reference)
 Cluster corrected energies          -295.52741453 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52771719 (Davidson, rotated reference)

 Cluster corrected energies          -295.52708071 (Pople, fixed reference)
 Cluster corrected energies          -295.52675668 (Pople, relaxed reference)
 Cluster corrected energies          -295.52708071 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.86475765 (fixed)   0.95753826 (relaxed)   0.95737076 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042950   -0.00047173   -0.67593307
 Singles      0.01355230   -0.05587491   -0.06106457
 Pairs        0.07705570    0.00000000   -0.05600500
 Total        1.09103751   -0.05634664   -0.79300265
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.66248662
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39065549
 One electron energy                 -513.19387533
 Two electron energy                  217.73835407
 Virial quotient                       -2.65242645
 Correlation energy                    -0.79303464
 !MRCI STATE 3.2 Energy              -295.455521264547

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52771716 (Davidson, fixed reference)
 Cluster corrected energies          -295.52741449 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52771716 (Davidson, rotated reference)

 Cluster corrected energies          -295.52708068 (Pople, fixed reference)
 Cluster corrected energies          -295.52675663 (Pople, relaxed reference)
 Cluster corrected energies          -295.52708068 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.74778225 (fixed)   0.94967614 (relaxed)   0.94961312 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022459   -0.00051948   -0.64520870
 Singles      0.03549573   -0.08702680   -0.10416459
 Pairs        0.07321594    0.00000045   -0.05296818
 Total        1.10893626   -0.08754583   -0.80234147
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29543355
 Nuclear energy                         0.00000000
 Kinetic energy                       111.34366571
 One electron energy                 -509.57152545
 Two electron energy                  214.46774480
 Virial quotient                       -2.65038679
 Correlation energy                    -0.80834710
 !MRCI STATE 4.2 Energy              -295.103780648008

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19183896 (Davidson, fixed reference)
 Cluster corrected energies          -295.19171999 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19183896 (Davidson, rotated reference)

 Cluster corrected energies          -295.19246305 (Pople, fixed reference)
 Cluster corrected energies          -295.19233158 (Pople, relaxed reference)
 Cluster corrected energies          -295.19246305 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.86511230 (fixed)   0.94967606 (relaxed)   0.94961304 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022459   -0.00051948   -0.64520811
 Singles      0.03549587   -0.08702687   -0.10416464
 Pairs        0.07321600   -0.00000000   -0.05296872
 Total        1.10893646   -0.08754636   -0.80234147
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29543355
 Nuclear energy                         0.00000000
 Kinetic energy                       111.34366612
 One electron energy                 -509.57152550
 Two electron energy                  214.46774486
 Virial quotient                       -2.65038678
 Correlation energy                    -0.80834709
 !MRCI STATE 5.2 Energy              -295.103780645059

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19183911 (Davidson, fixed reference)
 Cluster corrected energies          -295.19172015 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19183911 (Davidson, rotated reference)

 Cluster corrected energies          -295.19246322 (Pople, fixed reference)
 Cluster corrected energies          -295.19233175 (Pople, relaxed reference)
 Cluster corrected energies          -295.19246322 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.80166613 (fixed)   0.94967608 (relaxed)   0.94961306 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022459   -0.00051948   -0.64520793
 Singles      0.03549586   -0.08702687   -0.10416465
 Pairs        0.07321595   -0.00000024   -0.05296889
 Total        1.10893641   -0.08754659   -0.80234147
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29543355
 Nuclear energy                         0.00000000
 Kinetic energy                       111.34366634
 One electron energy                 -509.57152526
 Two electron energy                  214.46774461
 Virial quotient                       -2.65038677
 Correlation energy                    -0.80834710
 !MRCI STATE 6.2 Energy              -295.103780644260

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19183907 (Davidson, fixed reference)
 Cluster corrected energies          -295.19172011 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19183907 (Davidson, rotated reference)

 Cluster corrected energies          -295.19246318 (Pople, fixed reference)
 Cluster corrected energies          -295.19233171 (Pople, relaxed reference)
 Cluster corrected energies          -295.19246318 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.78556041 (fixed)   0.94967605 (relaxed)   0.94961303 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022459   -0.00051948   -0.65062518
 Singles      0.03549585   -0.08702689   -0.10435687
 Pairs        0.07321604    0.00000025   -0.05336505
 Total        1.10893648   -0.08754613   -0.80834709
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29543355
 Nuclear energy                         0.00000000
 Kinetic energy                       111.34366641
 One electron energy                 -509.57152459
 Two electron energy                  214.46774394
 Virial quotient                       -2.65038677
 Correlation energy                    -0.80834709
 !MRCI STATE 7.2 Energy              -295.103780642484

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19183913 (Davidson, fixed reference)
 Cluster corrected energies          -295.19172016 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19183913 (Davidson, rotated reference)

 Cluster corrected energies          -295.19246325 (Pople, fixed reference)
 Cluster corrected energies          -295.19233178 (Pople, relaxed reference)
 Cluster corrected energies          -295.19246325 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.92866733 (fixed)   0.94967635 (relaxed)   0.94961333 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022459   -0.00051948   -0.65062548
 Singles      0.03549560   -0.08702670   -0.10435687
 Pairs        0.07321558   -0.00000006   -0.05336473
 Total        1.10893577   -0.08754624   -0.80834708
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29543355
 Nuclear energy                         0.00000000
 Kinetic energy                       111.34366710
 One electron energy                 -509.57152889
 Two electron energy                  214.46774826
 Virial quotient                       -2.65038676
 Correlation energy                    -0.80834708
 !MRCI STATE 8.2 Energy              -295.103780631564

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19183855 (Davidson, fixed reference)
 Cluster corrected energies          -295.19171958 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19183855 (Davidson, rotated reference)

 Cluster corrected energies          -295.19246260 (Pople, fixed reference)
 Cluster corrected energies          -295.19233113 (Pople, relaxed reference)
 Cluster corrected energies          -295.19246260 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.92636033 (fixed)   0.95185510 (relaxed)   0.95169656 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046047   -0.00063300   -0.65639833
 Singles      0.03159156   -0.08388957   -0.09910568
 Pairs        0.07203423   -0.00000015   -0.05273392
 Total        1.10408625   -0.08452272   -0.80823793
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30147117
 Nuclear energy                         0.00000000
 Kinetic energy                       111.30783590
 One electron energy                 -509.42495785
 Two electron energy                  214.32128636
 Virial quotient                       -2.65123896
 Correlation energy                    -0.80220032
 !MRCI STATE 9.2 Energy              -295.103671483543

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.18716951 (Davidson, fixed reference)
 Cluster corrected energies          -295.18687449 (Davidson, relaxed reference)
 Cluster corrected energies          -295.18716951 (Davidson, rotated reference)

 Cluster corrected energies          -295.18739784 (Pople, fixed reference)
 Cluster corrected energies          -295.18707467 (Pople, relaxed reference)
 Cluster corrected energies          -295.18739784 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.90353197 (fixed)   0.95185530 (relaxed)   0.95169676 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046046   -0.00063300   -0.65639922
 Singles      0.03159132   -0.08388910   -0.09910557
 Pairs        0.07203399    0.00000005   -0.05273314
 Total        1.10408578   -0.08452204   -0.80823793
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30147117
 Nuclear energy                         0.00000000
 Kinetic energy                       111.30784102
 One electron energy                 -509.42496320
 Two electron energy                  214.32129173
 Virial quotient                       -2.65123884
 Correlation energy                    -0.80220030
 !MRCI STATE 10.2 Energy             -295.103671473687

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.18716912 (Davidson, fixed reference)
 Cluster corrected energies          -295.18687411 (Davidson, relaxed reference)
 Cluster corrected energies          -295.18716912 (Davidson, rotated reference)

 Cluster corrected energies          -295.18739742 (Pople, fixed reference)
 Cluster corrected energies          -295.18707425 (Pople, relaxed reference)
 Cluster corrected energies          -295.18739742 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.92715711 (fixed)   0.95185718 (relaxed)   0.95169867 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046040   -0.00063300   -0.65640552
 Singles      0.03158941   -0.08388487   -0.09910482
 Pairs        0.07203154   -0.00000007   -0.05272758
 Total        1.10408135   -0.08451794   -0.80823792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30147117
 Nuclear energy                         0.00000000
 Kinetic energy                       111.30788943
 One electron energy                 -509.42501825
 Two electron energy                  214.32134679
 Virial quotient                       -2.65123769
 Correlation energy                    -0.80220029
 !MRCI STATE 11.2 Energy             -295.103671463519

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.18716556 (Davidson, fixed reference)
 Cluster corrected energies          -295.18687060 (Davidson, relaxed reference)
 Cluster corrected energies          -295.18716556 (Davidson, rotated reference)

 Cluster corrected energies          -295.18739352 (Pople, fixed reference)
 Cluster corrected energies          -295.18707041 (Pople, relaxed reference)
 Cluster corrected energies          -295.18739352 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Coefficient of reference function:   C(0) = 0.94866176 (fixed)   0.94871756 (relaxed)   0.94866176 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00021123   -0.00051949   -0.00062181
 Singles      0.03795388   -0.09098126   -0.10960086
 Pairs        0.07299645   -0.72012338   -0.70140147
 Total        1.11116156   -0.81162414   -0.81162414
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.28258941
 Nuclear energy                         0.00000000
 Kinetic energy                       111.33791702
 One electron energy                 -509.54379581
 Two electron energy                  214.44958225
 Virial quotient                       -2.65043771
 Correlation energy                    -0.81162414
 !MRCI STATE 12.2 Energy             -295.094213552279

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.18443496 (Davidson, fixed reference)
 Cluster corrected energies          -295.18432887 (Davidson, relaxed reference)
 Cluster corrected energies          -295.18443496 (Davidson, rotated reference)

 Cluster corrected energies          -295.18525555 (Pople, fixed reference)
 Cluster corrected energies          -295.18513785 (Pople, relaxed reference)
 Cluster corrected energies          -295.18525555 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1244.23       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8509.61   8502.84      4.79      0.08      1.55
 REAL TIME  *      8725.10 SEC
 DISK USED  *         1.25 GB (local),       15.10 GB (total)
 SF USED    *        12.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -295.52771721  AU                              
 SETTING HLSDIAG(2)     =      -295.52771719  AU                              
 SETTING HLSDIAG(3)     =      -295.52771716  AU                              
 SETTING HLSDIAG(4)     =      -295.19183896  AU                              
 SETTING HLSDIAG(5)     =      -295.19183911  AU                              
 SETTING HLSDIAG(6)     =      -295.19183907  AU                              
 SETTING HLSDIAG(7)     =      -295.19183913  AU                              
 SETTING HLSDIAG(8)     =      -295.19183855  AU                              
 SETTING HLSDIAG(9)     =      -295.18716951  AU                              
 SETTING HLSDIAG(10)    =      -295.18716912  AU                              
 SETTING HLSDIAG(11)    =      -295.18716556  AU                              
 SETTING HLSDIAG(12)    =      -295.18443496  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 25
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:      132 conf      168 CSFs
 N elec internal:    13636 conf    42944 CSFs
 N-1 el internal:    15469 conf   107720 CSFs
 N-2 el internal:     8549 conf   109646 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.32761114
     2      -294.32761114
     3      -294.32761114
     4      -294.30938972
     5      -294.30938972
     6      -294.30938972
     7      -294.30938972
     8      -294.30938972
     9      -294.28427391

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2110D-06

 Number of blocks in overlap matrix:   933   Smallest eigenvalue:  0.21D-06
 Number of N-2 electron functions:    2199
 Number of N-1 electron functions:  107720

 Number of internal configurations:                21432
 Number of singly external configurations:       5171200
 Number of doubly external configurations:       5068092
 Total number of contracted configurations:     10260724
 Total number of uncontracted configurations:  256637568

 Diagonal Coupling coefficients finished.               Storage:  19064629 words, CPU-Time:     47.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1674207 words, CPU-time:      0.22 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.32761114     0.00000000    -0.97385670  0.91D-01  0.10D+00    54.08
    1     2     2     1.00000000     0.00000000  -294.32761114     0.00000000    -0.97370895  0.91D-01  0.10D+00    54.08
    1     3     3     1.00000000     0.00000000  -294.32761114    -0.00000000    -0.97380374  0.91D-01  0.10D+00    54.08
    1     4     4     1.00000000     0.00000000  -294.30938972    -0.00000000    -0.98276123  0.96D-01  0.11D+00    54.08
    1     5     5     1.00000000     0.00000000  -294.30938972    -0.00000000    -0.97857656  0.90D-01  0.10D+00    54.08
    1     6     6     1.00000000     0.00000000  -294.30938972     0.00000000    -0.97836570  0.89D-01  0.10D+00    54.08
    1     7     7     1.00000000     0.00000000  -294.30938972    -0.00000000    -0.97837000  0.89D-01  0.10D+00    54.08
    1     8     8     1.00000000     0.00000000  -294.30938972    -0.00000000    -0.98016513  0.90D-01  0.10D+00    54.08
    1     9     9     1.00000000     0.00000000  -294.28427391     0.00000000    -0.99038808  0.11D+00  0.11D+00    54.08
    2     1     1     1.12114289    -0.77084316  -295.09845430    -0.77084316    -0.02538472  0.74D-02  0.16D-02   431.70
    2     2     2     1.12117363    -0.77081785  -295.09842900    -0.77081785    -0.02542471  0.74D-02  0.16D-02   431.70
    2     3     3     1.12118734    -0.77076271  -295.09837385    -0.77076271    -0.02548813  0.74D-02  0.16D-02   431.70
    2     4     4     1.12215414    -0.77787652  -295.08726624    -0.77787652    -0.02345272  0.59D-02  0.17D-02   431.70
    2     5     5     1.12150991    -0.77758522  -295.08697495    -0.77758522    -0.02361065  0.61D-02  0.17D-02   431.70
    2     6     6     1.12160460    -0.77749590  -295.08688562    -0.77749590    -0.02371808  0.61D-02  0.17D-02   431.70
    2     7     7     1.12154728    -0.77748016  -295.08686988    -0.77748016    -0.02369832  0.61D-02  0.17D-02   431.70
    2     8     8     1.12373089    -0.77576665  -295.08515637    -0.77576665    -0.02502811  0.71D-02  0.17D-02   431.70
    2     9     9     1.13376102    -0.78197165  -295.06624556    -0.78197165    -0.02486842  0.76D-02  0.18D-02   431.70
    3     1     1     1.10027298    -0.79635143  -295.12396257    -0.02550827    -0.00091378  0.20D-03  0.11D-03   810.70
    3     2     2     1.10028667    -0.79634890  -295.12396004    -0.02553104    -0.00091576  0.20D-03  0.11D-03   810.70
    3     3     3     1.10028265    -0.79634549  -295.12395663    -0.02558277    -0.00091927  0.20D-03  0.11D-03   810.70
    3     4     4     1.10369729    -0.80141214  -295.11080186    -0.02353562    -0.00085660  0.18D-03  0.11D-03   810.70
    3     5     5     1.10340053    -0.80135726  -295.11074698    -0.02377204    -0.00089180  0.18D-03  0.12D-03   810.70
    3     6     6     1.10341095    -0.80135138  -295.11074110    -0.02385548    -0.00089657  0.18D-03  0.12D-03   810.70
    3     7     7     1.10337608    -0.80133739  -295.11072711    -0.02385723    -0.00090274  0.18D-03  0.12D-03   810.70
    3     8     8     1.10384400    -0.80128539  -295.11067511    -0.02551873    -0.00096569  0.21D-03  0.12D-03   810.70
    3     9     9     1.10873571    -0.80730363  -295.09157755    -0.02533198    -0.00100066  0.22D-03  0.13D-03   810.70
    4     1     1     1.09978526    -0.79746794  -295.12507909    -0.00111651    -0.00007896  0.50D-05  0.13D-04  1187.11
    4     2     2     1.09978601    -0.79746707  -295.12507821    -0.00111817    -0.00007939  0.50D-05  0.13D-04  1187.11
    4     3     3     1.09978580    -0.79746700  -295.12507814    -0.00112151    -0.00007959  0.50D-05  0.13D-04  1187.11
    4     4     4     1.10297709    -0.80248326  -295.11187298    -0.00107112    -0.00008672  0.56D-05  0.15D-04  1187.11
    4     5     5     1.10292766    -0.80247635  -295.11186608    -0.00111909    -0.00009200  0.62D-05  0.15D-04  1187.11
    4     6     6     1.10297935    -0.80247566  -295.11186538    -0.00112428    -0.00009137  0.63D-05  0.16D-04  1187.11
    4     7     7     1.10292636    -0.80247507  -295.11186479    -0.00113768    -0.00009278  0.62D-05  0.15D-04  1187.11
    4     8     8     1.10290955    -0.80247264  -295.11186236    -0.00118725    -0.00009437  0.64D-05  0.16D-04  1187.11
    4     9     9     1.10745843    -0.80856243  -295.09283634    -0.00125879    -0.00009975  0.76D-05  0.17D-04  1187.11
    5     1     1     1.10036942    -0.79757496  -295.12518611    -0.00010702    -0.00000912  0.99D-06  0.14D-05  1564.82
    5     2     2     1.10036814    -0.79757483  -295.12518597    -0.00010776    -0.00000921  0.10D-05  0.14D-05  1564.82
    5     3     3     1.10036918    -0.79757482  -295.12518596    -0.00010782    -0.00000921  0.10D-05  0.14D-05  1564.82
    5     4     4     1.10372926    -0.80260685  -295.11199657    -0.00012359    -0.00001275  0.14D-05  0.19D-05  1564.82
    5     5     5     1.10373960    -0.80260675  -295.11199648    -0.00013040    -0.00001318  0.14D-05  0.20D-05  1564.82
    5     6     6     1.10373754    -0.80260660  -295.11199632    -0.00013094    -0.00001330  0.14D-05  0.20D-05  1564.82
    5     7     7     1.10373707    -0.80260648  -295.11199620    -0.00013141    -0.00001345  0.14D-05  0.20D-05  1564.82
    5     8     8     1.10372072    -0.80260551  -295.11199523    -0.00013287    -0.00001355  0.14D-05  0.21D-05  1564.82
    5     9     9     1.10844189    -0.80870521  -295.09297912    -0.00014278    -0.00001538  0.17D-05  0.23D-05  1564.82
    6     1     1     1.10047482    -0.79758657  -295.12519771    -0.00001161    -0.00000095  0.58D-07  0.14D-06  1944.45
    6     2     2     1.10047436    -0.79758655  -295.12519770    -0.00001172    -0.00000096  0.60D-07  0.15D-06  1944.45
    6     3     3     1.10047468    -0.79758655  -295.12519769    -0.00001173    -0.00000096  0.60D-07  0.15D-06  1944.45
    6     4     4     1.10387130    -0.80262469  -295.11201442    -0.00001785    -0.00000215  0.12D-06  0.34D-06  1944.45
    6     5     5     1.10387021    -0.80262468  -295.11201440    -0.00001792    -0.00000216  0.12D-06  0.35D-06  1944.45
    6     6     6     1.10386915    -0.80262468  -295.11201440    -0.00001808    -0.00000216  0.12D-06  0.34D-06  1944.45
    6     7     7     1.10387612    -0.80262441  -295.11201413    -0.00001794    -0.00000214  0.12D-06  0.35D-06  1944.45
    6     8     8     1.10387161    -0.80262424  -295.11201396    -0.00001873    -0.00000226  0.13D-06  0.37D-06  1944.45
    6     9     9     1.10862450    -0.80872676  -295.09300067    -0.00002154    -0.00000277  0.16D-06  0.45D-06  1944.45
    7     1     1     1.10051937    -0.79758773  -295.12519888    -0.00000116    -0.00000013  0.14D-07  0.21D-07  2323.14
    7     2     2     1.10051930    -0.79758773  -295.12519887    -0.00000118    -0.00000013  0.14D-07  0.21D-07  2323.14
    7     3     3     1.10051934    -0.79758773  -295.12519887    -0.00000118    -0.00000013  0.14D-07  0.21D-07  2323.14
    7     4     4     1.10391712    -0.80262771  -295.11201743    -0.00000301    -0.00000052  0.53D-07  0.70D-07  2323.14
    7     5     5     1.10391709    -0.80262770  -295.11201742    -0.00000302    -0.00000052  0.54D-07  0.71D-07  2323.14
    7     6     6     1.10391656    -0.80262770  -295.11201742    -0.00000302    -0.00000052  0.54D-07  0.71D-07  2323.14
    7     7     7     1.10391962    -0.80262742  -295.11201714    -0.00000301    -0.00000051  0.52D-07  0.70D-07  2323.14
    7     8     8     1.10391934    -0.80262738  -295.11201710    -0.00000314    -0.00000053  0.54D-07  0.73D-07  2323.14
    7     9     9     1.10866055    -0.80873072  -295.09300463    -0.00000397    -0.00000068  0.68D-07  0.94D-07  2323.14
    8     1     1     1.10051353    -0.79758791  -295.12519905    -0.00000018    -0.00000002  0.20D-08  0.36D-08  2701.64
    8     2     2     1.10051352    -0.79758791  -295.12519905    -0.00000018    -0.00000002  0.20D-08  0.36D-08  2701.64
    8     3     3     1.10051348    -0.79758791  -295.12519905    -0.00000018    -0.00000002  0.20D-08  0.36D-08  2701.64
    8     4     4     1.10390238    -0.80262841  -295.11201813    -0.00000070    -0.00000012  0.11D-07  0.17D-07  2701.64
    8     5     5     1.10390239    -0.80262841  -295.11201813    -0.00000071    -0.00000012  0.11D-07  0.17D-07  2701.64
    8     6     6     1.10390239    -0.80262841  -295.11201813    -0.00000071    -0.00000012  0.12D-07  0.17D-07  2701.64
    8     7     7     1.10390168    -0.80262811  -295.11201783    -0.00000069    -0.00000012  0.11D-07  0.17D-07  2701.64
    8     8     8     1.10390208    -0.80262810  -295.11201782    -0.00000072    -0.00000013  0.12D-07  0.17D-07  2701.64
    8     9     9     1.10864784    -0.80873164  -295.09300556    -0.00000092    -0.00000017  0.19D-07  0.23D-07  2701.64
    9     1     1     1.10051353    -0.79758791  -295.12519905    -0.00000000    -0.00000002  0.20D-08  0.36D-08  3007.72
    9     2     2     1.10051351    -0.79758791  -295.12519905    -0.00000000    -0.00000002  0.20D-08  0.36D-08  3007.72
    9     3     3     1.10051348    -0.79758791  -295.12519905    -0.00000000    -0.00000002  0.20D-08  0.36D-08  3007.72
    9     4     4     1.10390388    -0.80262856  -295.11201829    -0.00000015    -0.00000003  0.20D-08  0.42D-08  3007.72
    9     5     5     1.10390393    -0.80262856  -295.11201829    -0.00000015    -0.00000003  0.19D-08  0.41D-08  3007.72
    9     6     6     1.10390391    -0.80262856  -295.11201828    -0.00000016    -0.00000003  0.20D-08  0.41D-08  3007.72
    9     7     7     1.10390620    -0.80262829  -295.11201801    -0.00000018    -0.00000001  0.18D-08  0.17D-08  3007.72
    9     8     8     1.10390655    -0.80262829  -295.11201801    -0.00000019    -0.00000001  0.19D-08  0.17D-08  3007.72
    9     9     9     1.10865675    -0.80873191  -295.09300582    -0.00000026    -0.00000002  0.30D-08  0.26D-08  3007.72


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.5%   9.3%
 P   0.3%  58.0%  24.1%

 Initialization:   1.6%
 Other:            5.6%

 Total CPU:     3007.7 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2//00           0.0000000   0.0000000   0.0000000  -0.0000499  -0.0001920   0.0000866   0.7625885   0.1033756
                            0.5417489
 2222222222//200/          -0.0000000  -0.0000000   0.0000000   0.0000485  -0.0001775   0.0000680   0.2917682   0.7121089
                           -0.5417485
 22222222222//00/          -0.0054808  -0.0165679   0.6681464   0.0189734  -0.0105814   0.6661079  -0.0000719  -0.0000381
                            0.0000000
 2222222222//20/0           0.0054808   0.0165679  -0.6681463   0.0189734  -0.0105814   0.6661080  -0.0000719  -0.0000381
                           -0.0000000
 22222222222///00           0.6674654   0.0342655   0.0063249  -0.1728354   0.6434828   0.0151450   0.0001332   0.0001161
                            0.0000000
 2222222222/2/0/0           0.6674652   0.0342655   0.0063249   0.1728354  -0.6434830  -0.0151450  -0.0001332  -0.0001161
                           -0.0000000
 2222222222//2/00          -0.0344106   0.6672897   0.0162644   0.6433814   0.1731747  -0.0155751   0.0000924  -0.0000370
                            0.0000000
 2222222222/2/00/          -0.0344106   0.6672896   0.0162644  -0.6433815  -0.1731747   0.0155751  -0.0000924   0.0000370
                           -0.0000000
 22222222222//0/0           0.0000000   0.0000000   0.0000000  -0.0000983  -0.0000145   0.0000186   0.4708204  -0.6087330
                           -0.5417488
 2222222222/\///0          -0.0000001  -0.0000000  -0.0000000  -0.0208126   0.0774872   0.0018237   0.0000160   0.0000140
                            0.0000000
 2222222222//\0//          -0.0001937  -0.0005855   0.0236139  -0.0019787   0.0011035  -0.0694653   0.0000075   0.0000040
                            0.0000000
 2222222222/20/0/           0.0000000  -0.0000000  -0.0000000  -0.0000048  -0.0000164   0.0000075   0.0677658   0.0051412
                            0.0525297
 2222222222//\/0/           0.0012162  -0.0235836  -0.0005748  -0.0670953  -0.0180596   0.0016243  -0.0000096   0.0000039
                           -0.0000000
 222222222202///0          -0.0000000   0.0000000  -0.0000000   0.0000040   0.0000174  -0.0000078  -0.0666889  -0.0130855
                           -0.0525296
 2222222222/02/0/           0.0000000   0.0000000  -0.0000000  -0.0000047   0.0000150  -0.0000057  -0.0220119  -0.0642968
                            0.0525296
 2222222222/02//0          -0.0005051  -0.0015267   0.0615693  -0.0017297   0.0009646  -0.0607248   0.0000066   0.0000035
                           -0.0000000
 222222222220//0/          -0.0005051  -0.0015267   0.0615693   0.0017297  -0.0009646   0.0607248  -0.0000066  -0.0000035
                           -0.0000000
 22222222222/0/0/           0.0615065   0.0031575   0.0005828  -0.0157563   0.0586622   0.0013807   0.0000121   0.0000106
                            0.0000000
 2222222222/200//           0.0615065   0.0031575   0.0005828   0.0157563  -0.0586623  -0.0013807  -0.0000121  -0.0000106
                           -0.0000000
 222222222202/0//          -0.0031709   0.0614903   0.0014988  -0.0586530  -0.0157872   0.0014199  -0.0000084   0.0000034
                           -0.0000000
 22222222220/2//0           0.0031709  -0.0614903  -0.0014987  -0.0586530  -0.0157873   0.0014199  -0.0000084   0.0000034
                           -0.0000000
 22222222220/20//          -0.0000000   0.0000000   0.0000000   0.0000038  -0.0000163   0.0000063   0.0294304   0.0612573
                           -0.0525295
 222222222220///0           0.0000000  -0.0000000   0.0000000  -0.0000087  -0.0000002   0.0000012   0.0383351  -0.0561164
                           -0.0525296
 2222222222///0\/           0.0004340   0.0013120  -0.0529104  -0.0009723   0.0005422  -0.0341343   0.0000037   0.0000020
                            0.0000000
 2222222222///\/0           0.0528564   0.0027135   0.0005009   0.0088569  -0.0329750  -0.0007761  -0.0000068  -0.0000060
                           -0.0000000
 2222222222///\0/          -0.0027250   0.0528426   0.0012880  -0.0329697  -0.0088742   0.0007981  -0.0000047   0.0000019
                           -0.0000000
 22222222222/00//           0.0000000   0.0000000   0.0000000  -0.0000087  -0.0000024   0.0000021   0.0446765  -0.0512115
                           -0.0525296

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2222222222/2/000  22.2    -0.0000000  -0.0000000  -0.0000000   0.0000049   0.0000190  -0.0000086  -0.0754202  -0.0102245
                           -0.0615941
 2222222222//2000  21.2     0.0000000  -0.0000000  -0.0000000  -0.0000048   0.0000176  -0.0000067  -0.0288558  -0.0704288
                            0.0615969
 22222222222//000  21.2     0.0004887   0.0014774  -0.0595789  -0.0018766   0.0010466  -0.0658832   0.0000071   0.0000038
                           -0.0000000
 2222222222//2000  20.2    -0.0004887  -0.0014774   0.0595790  -0.0018766   0.0010466  -0.0658832   0.0000071   0.0000038
                            0.0000000
 22222222222//000  22.2    -0.0595181  -0.0030555  -0.0005640   0.0170948  -0.0636455  -0.0014980  -0.0000132  -0.0000115
                           -0.0000000
 2222222222/2/000  20.2    -0.0595182  -0.0030555  -0.0005640  -0.0170948   0.0636455   0.0014980   0.0000132   0.0000115
                            0.0000000
 2222222222/2/000  21.2     0.0030684  -0.0595025  -0.0014503   0.0636354   0.0171283  -0.0015405   0.0000091  -0.0000037
                           -0.0000000
 2222222222//2000  22.2     0.0030684  -0.0595026  -0.0014503  -0.0636354  -0.0171283   0.0015405  -0.0000091   0.0000037
                           -0.0000000
 22222222222//000  20.2    -0.0000000  -0.0000000  -0.0000000   0.0000097   0.0000014  -0.0000018  -0.0465636   0.0602045
                            0.0615958

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.049071    0.951835   -0.007816    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 2           0.951584    0.048864   -0.023627    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 3           0.023194    0.009020    0.952806    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000   -0.000046    0.918711   -0.246799    0.027093   -0.000113   -0.000000
 5           0.000000    0.000000    0.000000   -0.000252    0.247283    0.918856   -0.015110    0.000081   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000111   -0.022240    0.021626    0.951163   -0.000019    0.000000
 7          -0.000000   -0.000000   -0.000000    0.914593    0.000132    0.000190   -0.000103    0.263044   -0.000000
 8           0.000000    0.000000   -0.000000    0.263044   -0.000053    0.000166   -0.000054   -0.914593   -0.000000
 9           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.949608

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.953131   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.953131   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.953131   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.951669    0.000000   -0.000000   -0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.951669   -0.000000    0.000000    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.951669    0.000000   -0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.951668   -0.000000    0.000000
 8           0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.951668    0.000000
 9          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.949608


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95183475 (fixed)   0.95321093 (relaxed)   0.95313086 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022925   -0.00037866   -0.65139601
 Singles      0.02926300   -0.08073628   -0.09455048
 Pairs        0.07127357   -0.00000000   -0.05164142
 Total        1.10076583   -0.08111495   -0.79758791
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.32761114
 Nuclear energy                         0.00000000
 Kinetic energy                       111.31468403
 One electron energy                 -509.45386734
 Two electron energy                  214.32866829
 Virial quotient                       -2.65126925
 Correlation energy                    -0.79758791
 !MRCI STATE 1.2 Energy              -295.125199051017

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.20556866 (Davidson, fixed reference)
 Cluster corrected energies          -295.20542117 (Davidson, relaxed reference)
 Cluster corrected energies          -295.20556866 (Davidson, rotated reference)

 Cluster corrected energies          -295.20474805 (Pople, fixed reference)
 Cluster corrected energies          -295.20458929 (Pople, relaxed reference)
 Cluster corrected energies          -295.20474805 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95158423 (fixed)   0.95321094 (relaxed)   0.95313087 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022925   -0.00037866   -0.65139595
 Singles      0.02926305   -0.08073637   -0.09455055
 Pairs        0.07127351    0.00000000   -0.05164141
 Total        1.10076581   -0.08111503   -0.79758791
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.32761114
 Nuclear energy                         0.00000000
 Kinetic energy                       111.31468582
 One electron energy                 -509.45386608
 Two electron energy                  214.32866702
 Virial quotient                       -2.65126921
 Correlation energy                    -0.79758791
 !MRCI STATE 2.2 Energy              -295.125199050882

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.20556864 (Davidson, fixed reference)
 Cluster corrected energies          -295.20542115 (Davidson, relaxed reference)
 Cluster corrected energies          -295.20556864 (Davidson, rotated reference)

 Cluster corrected energies          -295.20474803 (Pople, fixed reference)
 Cluster corrected energies          -295.20458927 (Pople, relaxed reference)
 Cluster corrected energies          -295.20474803 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95280595 (fixed)   0.95321095 (relaxed)   0.95313088 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022925   -0.00037866   -0.65139605
 Singles      0.02926300   -0.08073629   -0.09455050
 Pairs        0.07127352    0.00000000   -0.05164136
 Total        1.10076577   -0.08111495   -0.79758791
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.32761114
 Nuclear energy                         0.00000000
 Kinetic energy                       111.31468422
 One electron energy                 -509.45386633
 Two electron energy                  214.32866728
 Virial quotient                       -2.65126925
 Correlation energy                    -0.79758791
 !MRCI STATE 3.2 Energy              -295.125199048439

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.20556861 (Davidson, fixed reference)
 Cluster corrected energies          -295.20542112 (Davidson, relaxed reference)
 Cluster corrected energies          -295.20556861 (Davidson, rotated reference)

 Cluster corrected energies          -295.20474800 (Pople, fixed reference)
 Cluster corrected energies          -295.20458924 (Pople, relaxed reference)
 Cluster corrected energies          -295.20474800 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.91871123 (fixed)   0.95173935 (relaxed)   0.95166910 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022293   -0.00043976   -0.65107655
 Singles      0.03185817   -0.08392134   -0.09916803
 Pairs        0.07206888    0.00000000   -0.05238398
 Total        1.10414997   -0.08436110   -0.80262856
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30938972
 Nuclear energy                         0.00000000
 Kinetic energy                       111.32627668
 One electron energy                 -509.50019419
 Two electron energy                  214.38817590
 Virial quotient                       -2.65087477
 Correlation energy                    -0.80262856
 !MRCI STATE 4.2 Energy              -295.112018286533

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19561203 (Davidson, fixed reference)
 Cluster corrected energies          -295.19548120 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19561203 (Davidson, rotated reference)

 Cluster corrected energies          -295.19500277 (Pople, fixed reference)
 Cluster corrected energies          -295.19486112 (Pople, relaxed reference)
 Cluster corrected energies          -295.19500277 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.91885612 (fixed)   0.95173933 (relaxed)   0.95166908 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022293   -0.00043976   -0.65107645
 Singles      0.03185822   -0.08392143   -0.09916808
 Pairs        0.07206887    0.00000000   -0.05238404
 Total        1.10415002   -0.08436118   -0.80262856
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30938972
 Nuclear energy                         0.00000000
 Kinetic energy                       111.32627899
 One electron energy                 -509.50019443
 Two electron energy                  214.38817614
 Virial quotient                       -2.65087472
 Correlation energy                    -0.80262856
 !MRCI STATE 5.2 Energy              -295.112018286340

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19561207 (Davidson, fixed reference)
 Cluster corrected energies          -295.19548124 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19561207 (Davidson, rotated reference)

 Cluster corrected energies          -295.19500281 (Pople, fixed reference)
 Cluster corrected energies          -295.19486116 (Pople, relaxed reference)
 Cluster corrected energies          -295.19500281 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95116334 (fixed)   0.95173934 (relaxed)   0.95166909 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022292   -0.00043976   -0.65107654
 Singles      0.03185816   -0.08392133   -0.09916803
 Pairs        0.07206891   -0.00000000   -0.05238400
 Total        1.10415000   -0.08436109   -0.80262856
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30938972
 Nuclear energy                         0.00000000
 Kinetic energy                       111.32627829
 One electron energy                 -509.50019472
 Two electron energy                  214.38817643
 Virial quotient                       -2.65087473
 Correlation energy                    -0.80262856
 !MRCI STATE 6.2 Energy              -295.112018283989

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19561205 (Davidson, fixed reference)
 Cluster corrected energies          -295.19548122 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19561205 (Davidson, rotated reference)

 Cluster corrected energies          -295.19500279 (Pople, fixed reference)
 Cluster corrected energies          -295.19486114 (Pople, relaxed reference)
 Cluster corrected energies          -295.19500279 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.91459281 (fixed)   0.95173836 (relaxed)   0.95166813 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022286   -0.00043964   -0.65107039
 Singles      0.03185675   -0.08392663   -0.09916623
 Pairs        0.07207261    0.00000029   -0.05239166
 Total        1.10415223   -0.08436598   -0.80262829
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30938972
 Nuclear energy                         0.00000000
 Kinetic energy                       111.32620265
 One electron energy                 -509.50017619
 Two electron energy                  214.38815819
 Virial quotient                       -2.65087653
 Correlation energy                    -0.80262829
 !MRCI STATE 7.2 Energy              -295.112018009080

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19561353 (Davidson, fixed reference)
 Cluster corrected energies          -295.19548274 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19561353 (Davidson, rotated reference)

 Cluster corrected energies          -295.19500442 (Pople, fixed reference)
 Cluster corrected energies          -295.19486281 (Pople, relaxed reference)
 Cluster corrected energies          -295.19500442 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.91459272 (fixed)   0.95173821 (relaxed)   0.95166798 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022286   -0.00043964   -0.65107018
 Singles      0.03185689   -0.08392653   -0.09916630
 Pairs        0.07207281    0.00000017   -0.05239181
 Total        1.10415257   -0.08436600   -0.80262829
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30938972
 Nuclear energy                         0.00000000
 Kinetic energy                       111.32620216
 One electron energy                 -509.50017103
 Two electron energy                  214.38815302
 Virial quotient                       -2.65087654
 Correlation energy                    -0.80262829
 !MRCI STATE 8.2 Energy              -295.112018006887

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.19561380 (Davidson, fixed reference)
 Cluster corrected energies          -295.19548301 (Davidson, relaxed reference)
 Cluster corrected energies          -295.19561380 (Davidson, rotated reference)

 Cluster corrected energies          -295.19500472 (Pople, fixed reference)
 Cluster corrected energies          -295.19486310 (Pople, relaxed reference)
 Cluster corrected energies          -295.19500472 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.94960789 (fixed)   0.94969892 (relaxed)   0.94960789 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026314   -0.00043869   -0.00058750
 Singles      0.03537611   -0.08682513   -0.10409258
 Pairs        0.07330923   -0.72146808   -0.70405183
 Total        1.10894847   -0.80873190   -0.80873191
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.28427391
 Nuclear energy                         0.00000000
 Kinetic energy                       111.33751995
 One electron energy                 -509.53795753
 Two electron energy                  214.44495171
 Virial quotient                       -2.65043631
 Correlation energy                    -0.80873191
 !MRCI STATE 9.2 Energy              -295.093005820637

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.18111593 (Davidson, fixed reference)
 Cluster corrected energies          -295.18094401 (Davidson, relaxed reference)
 Cluster corrected energies          -295.18111593 (Davidson, rotated reference)

 Cluster corrected energies          -295.18084104 (Pople, fixed reference)
 Cluster corrected energies          -295.18065336 (Pople, relaxed reference)
 Cluster corrected energies          -295.18084104 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1959.38       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     11999.71   3490.10   8502.84      4.79      0.08      1.55
 REAL TIME  *     12302.81 SEC
 DISK USED  *         1.95 GB (local),       23.48 GB (total)
 SF USED    *        12.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -295.20556866  AU                              
 SETTING HLSDIAG(14)    =      -295.20556864  AU                              
 SETTING HLSDIAG(15)    =      -295.20556861  AU                              
 SETTING HLSDIAG(16)    =      -295.19561203  AU                              
 SETTING HLSDIAG(17)    =      -295.19561207  AU                              
 SETTING HLSDIAG(18)    =      -295.19561205  AU                              
 SETTING HLSDIAG(19)    =      -295.19561353  AU                              
 SETTING HLSDIAG(20)    =      -295.19561380  AU                              
 SETTING HLSDIAG(21)    =      -295.18111593  AU                              


         HLSDIAG
    -295.5277172
    -295.5277172
    -295.5277172
    -295.1918390
    -295.1918391
    -295.1918391
    -295.1918391
    -295.1918385
    -295.1871695
    -295.1871691
    -295.1871656
    -295.1844350
    -295.2055687
    -295.2055686
    -295.2055686
    -295.1956120
    -295.1956121
    -295.1956120
    -295.1956135
    -295.1956138
    -295.1811159
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -295.455521   -295.455521   -295.455521   -295.103781   -295.103781   -295.103781   -295.103781   -295.103781
                      -295.103671   -295.103671   -295.103671   -295.094214
 Replaced energies:   -295.527717   -295.527717   -295.527717   -295.191839   -295.191839   -295.191839   -295.191839   -295.191839
                      -295.187170   -295.187169   -295.187166   -295.184435

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -295.125199   -295.125199   -295.125199   -295.112018   -295.112018   -295.112018   -295.112018   -295.112018
                      -295.093006
 Replaced energies:   -295.205569   -295.205569   -295.205569   -295.195612   -295.195612   -295.195612   -295.195614   -295.195614
                      -295.181116



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -295.52771721

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    2220.45    1026.47      89.79    -321.57      53.08    -144.96      51.77       8.81      74.67

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2220.45      -0.00    -241.81    -240.85     -63.81    -232.19     -46.55     165.44     -70.29       4.98

    3   3.2  0.5  0.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1026.47     241.81       0.00     141.29     -86.72    -256.73     121.71    -258.34     -31.53      10.44

    4   4.2  0.5  0.5       0.00       0.00       0.00   73716.76       0.00       0.00       0.00       0.00       0.00       0.00
                          -89.79     240.85    -141.29      -0.00     -37.71    -475.43   -1456.06    -460.87    -167.17     203.93

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   73716.72       0.00       0.00       0.00       0.00       0.00
                          321.57      63.81      86.72      37.71       0.00     995.23    -570.65    -693.20     579.00     101.27

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   73716.73       0.00       0.00       0.00       0.00
                          -53.08     232.19     256.73     475.43    -995.23      -0.00     295.18     541.84      -1.13     596.59

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   73716.72       0.00       0.00       0.00
                          144.96      46.55    -121.71    1456.06     570.65    -295.18       0.00    1135.87     220.48     -96.97

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   73716.85       0.00       0.00
                          -51.77    -165.44     258.34     460.87     693.20    -541.84   -1135.87      -0.00     -36.91      54.05

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74741.58       0.00
                           -8.81      70.29      31.53     167.17    -579.00       1.13    -220.48      36.91      -0.00    -790.03

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74741.67
                          -74.67      -4.98     -10.44    -203.93    -101.27    -596.59      96.97     -54.05     790.03       0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.37       0.01      -1.88    -434.51       2.73     111.70    -236.69     535.31     182.35     -13.00

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -72.36    -307.14     664.40      -0.08       0.02       0.08       0.04      -0.01      27.76     389.10

   13   1.2  0.5 -0.5       0.00    -896.52    2134.18    -228.31    -144.07     123.35     233.74      -0.19       8.59      18.01
                           -0.00     555.31    -658.89      73.92      34.71      21.86     144.18     387.07      -2.19       1.37

   14   2.2  0.5 -0.5     896.52       0.00     827.06     189.73      -0.88    -243.25     255.92     106.92      31.84      11.77
                         -555.31      -0.00    2302.17      99.31     280.48     -68.75    -207.62      66.84      -6.32      45.89

   15   3.2  0.5 -0.5   -2134.18    -827.06      -0.00     270.73     -39.53     247.58      85.36      13.98     -67.92     -11.41
                          658.89   -2302.17       0.00     110.92    -240.59    -107.47    -213.95     111.21      16.46     -60.16

   16   4.2  0.5 -0.5     228.31    -189.73    -270.73       0.00     468.61    -406.75    -275.85    -341.39     301.25    -594.47
                          -73.92     -99.31    -110.92      -0.00    -448.14    1838.59    -684.97     212.18    -165.08    -233.55

   17   5.2  0.5 -0.5     144.07       0.88      39.53    -468.61       0.00     -65.41    -261.88    1985.63     256.81       8.17
                          -34.71    -280.48     240.59     448.14       0.00    -385.70    -918.11     -84.48     -23.52    -125.70

   18   6.2  0.5 -0.5    -123.35     243.25    -247.58     406.75      65.41       0.00    -988.60     327.67    -252.21     104.85
                          -21.86      68.75     107.47   -1838.59     385.70       0.00    -738.48     553.97      -2.55     210.78

   19   7.2  0.5 -0.5    -233.74    -255.92     -85.36     275.85     261.88     988.60       0.00     591.27    -446.98    -383.40
                         -144.18     207.62     213.95     684.97     918.11     738.48      -0.00    -284.48    -170.51     540.13

   20   8.2  0.5 -0.5       0.19    -106.92     -13.98     341.39   -1985.63    -327.67    -591.27       0.00     -13.67    -160.83
                         -387.07     -66.84    -111.21    -212.18      84.48    -553.97     284.48      -0.00    -697.67    -115.37

   21   9.2  0.5 -0.5      -8.59     -31.84      67.92    -301.25    -256.81     252.21     446.98      13.67       0.00    -174.60
                            2.19       6.32     -16.46     165.08      23.52       2.55     170.51     697.67      -0.00      54.00

   22  10.2  0.5 -0.5     -18.01     -11.77      11.41     594.47      -8.17    -104.85     383.40     160.83     174.60       0.00
                           -1.37     -45.89      60.16     233.55     125.70    -210.78    -540.13     115.37     -54.00      -0.00

   23  11.2  0.5 -0.5      70.24      18.11      21.74    -201.83      31.54    -576.96     189.64      94.30    -769.93    -185.22
                          -27.06      58.64      42.67     -34.97     630.50      76.78      92.96     -23.21     177.68    -789.31

   24  12.2  0.5 -0.5     247.47    -638.58    -268.25      -0.01       0.01       0.01       0.05      -0.01     395.31   -1642.91
                          688.85     197.15     166.16       0.06       0.01      -0.01       0.04       0.08    1684.42     379.15

   25   1.2  1.5  1.5    -941.58    -272.78    -219.32    -438.58      44.26    -656.16      88.39      55.04    1483.72     331.24
                         -332.78     894.32     318.53     125.04    -708.57    -164.63    -295.07      77.48     349.72   -1430.00

   26   2.2  1.5  1.5     -50.80     -24.47      11.39     711.96      86.14    -383.58     358.21     251.51      75.51       8.57
                         -118.53    -384.48     947.48    -219.43    -363.36     232.99     689.18      97.59      -6.77    -420.01

   27   3.2  1.5  1.5      92.22     426.71    -930.73    -218.81    -327.04     228.12     711.21      79.09      38.69     349.35
                           -5.63      -2.17      26.13    -299.84    -130.90      70.92     -71.84    -860.37       2.84     -22.11

   28   4.2  1.5  1.5     255.29      85.00      33.64    -166.44      83.60      40.54    -117.96     737.70      67.35      13.63
                           10.13     662.02    -827.64     -89.27     -36.36     106.33     319.92      11.88     -19.76      10.23

   29   5.2  1.5  1.5    -941.33    -275.96    -211.45     158.58      -3.67     356.18     -82.73     163.90    -251.08     -55.59
                          364.51    -756.18    -615.32      18.81    -382.93     -41.80     -54.96      47.02      57.52    -259.00

   30   6.2  1.5  1.5      82.28     436.70    -963.76     102.44     132.00     -94.84    -284.56     -47.91     -10.00     -58.15
                            5.70     -30.83      13.85     592.96       6.17    -325.07     327.71    -245.03       1.58      -4.35

   31   7.2  1.5  1.5     252.84    -653.09    -274.30      72.03    -473.02     -98.61    -169.00      48.37      40.76    -169.84
                         1140.60     326.34     274.93     -44.66       4.97     -74.51      12.59       7.81     275.39      61.85

   32   8.2  1.5  1.5    -326.75     842.45     353.98      56.35    -369.81     -77.18    -132.17      37.70     -53.38     221.63
                          154.65      44.03      37.28     329.33     -37.19     549.15     -92.55     -56.21      36.46       8.17

   33   9.2  1.5  1.5     598.10   -1543.27    -648.33      -0.12       0.89       0.17       0.32      -0.10     -45.11     187.70
                        -1665.65    -476.66    -401.79      -0.09       0.00      -0.14       0.00      -0.24     187.81      42.28

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -59.32      -7.62      -9.90    -489.65      60.15     376.53    -346.15     791.59      91.87       6.11

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1076.44     336.54     272.78    -495.85      77.48    -755.33     121.22     118.02   -1706.04    -428.21

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          426.40   -1024.27    -427.12     119.20    -886.84    -201.21    -317.67     100.12    -447.64    1677.32

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1072.17     340.41     274.22      71.14     -62.94     429.58    -134.60    -194.00     286.91      73.02

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          298.35      66.79      62.90     625.68     101.75    -129.25     240.95     575.15      78.68      12.97

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -438.45    1056.00     440.61      63.23    -360.26     -90.22    -122.34      51.80     -74.52     278.78

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -52.65    -224.09     484.76     194.67     275.40    -203.12    -586.40     -60.15       2.23      29.60

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -128.93    -547.23    1183.55     -79.26    -112.11      82.62     238.92      24.73       5.17      72.37

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -201.79    -856.34    1852.47      -0.04       0.10       0.02      -0.24       0.14      -3.71     -52.78

   43   1.2  1.5 -0.5    -543.62    -157.49    -126.63    -253.21      25.55    -378.83      51.03      31.78     856.63     191.24
                          192.13    -516.33    -183.90     -72.19     409.09      95.05     170.36     -44.73    -201.91     825.61

   44   2.2  1.5 -0.5     -29.33     -14.13       6.57     411.05      49.73    -221.46     206.81     145.21      43.60       4.95
                           68.43     221.98    -547.03     126.69     209.79    -134.52    -397.90     -56.35       3.91     242.49

   45   3.2  1.5 -0.5      53.24     246.36    -537.36    -126.33    -188.81     131.70     410.62      45.66      22.34     201.70
                            3.25       1.25     -15.08     173.11      75.57     -40.94      41.48     496.73      -1.64      12.77

   46   4.2  1.5 -0.5     147.39      49.08      19.42     -96.09      48.27      23.40     -68.11     425.91      38.89       7.87
                           -5.85    -382.22     477.84      51.54      20.99     -61.39    -184.71      -6.86      11.41      -5.90

   47   5.2  1.5 -0.5    -543.48    -159.33    -122.08      91.56      -2.12     205.64     -47.77      94.63    -144.96     -32.09
                         -210.45     436.58     355.26     -10.86     221.09      24.14      31.73     -27.15     -33.21     149.53

   48   6.2  1.5 -0.5      47.51     252.13    -556.43      59.14      76.21     -54.75    -164.29     -27.66      -5.77     -33.57
                           -3.29      17.80      -7.99    -342.35      -3.56     187.68    -189.20     141.47      -0.91       2.51

   49   7.2  1.5 -0.5     145.98    -377.06    -158.37      41.59    -273.10     -56.93     -97.57      27.93      23.53     -98.06
                         -658.52    -188.41    -158.73      25.79      -2.87      43.02      -7.27      -4.51    -159.00     -35.71

   50   8.2  1.5 -0.5    -188.65     486.39     204.37      32.53    -213.51     -44.56     -76.31      21.77     -30.82     127.96
                          -89.29     -25.42     -21.52    -190.14      21.47    -317.05      53.43      32.45     -21.05      -4.72

   51   9.2  1.5 -0.5     345.32    -891.01    -374.31      -0.07       0.52       0.10       0.18      -0.06     -26.04     108.37
                          961.66     275.20     231.97       0.05      -0.00       0.08      -0.00       0.14    -108.43     -24.41

   52   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5       0.00       0.00       0.00     896.52   -2134.18     228.31     144.07    -123.35    -233.74       0.19
                           17.37      72.36       0.00     555.31    -658.89      73.92      34.71      21.86     144.18     387.07

    2   2.2  0.5  0.5       0.00       0.00    -896.52       0.00    -827.06    -189.73       0.88     243.25    -255.92    -106.92
                           -0.01     307.14    -555.31       0.00    2302.17      99.31     280.48     -68.75    -207.62      66.84

    3   3.2  0.5  0.5       0.00       0.00    2134.18     827.06      -0.00    -270.73      39.53    -247.58     -85.36     -13.98
                            1.88    -664.40     658.89   -2302.17      -0.00     110.92    -240.59    -107.47    -213.95     111.21

    4   4.2  0.5  0.5       0.00       0.00    -228.31     189.73     270.73       0.00    -468.61     406.75     275.85     341.39
                          434.51       0.08     -73.92     -99.31    -110.92       0.00    -448.14    1838.59    -684.97     212.18

    5   5.2  0.5  0.5       0.00       0.00    -144.07      -0.88     -39.53     468.61       0.00      65.41     261.88   -1985.63
                           -2.73      -0.02     -34.71    -280.48     240.59     448.14      -0.00    -385.70    -918.11     -84.48

    6   6.2  0.5  0.5       0.00       0.00     123.35    -243.25     247.58    -406.75     -65.41       0.00     988.60    -327.67
                         -111.70      -0.08     -21.86      68.75     107.47   -1838.59     385.70      -0.00    -738.48     553.97

    7   7.2  0.5  0.5       0.00       0.00     233.74     255.92      85.36    -275.85    -261.88    -988.60       0.00    -591.27
                          236.69      -0.04    -144.18     207.62     213.95     684.97     918.11     738.48       0.00    -284.48

    8   8.2  0.5  0.5       0.00       0.00      -0.19     106.92      13.98    -341.39    1985.63     327.67     591.27       0.00
                         -535.31       0.01    -387.07     -66.84    -111.21    -212.18      84.48    -553.97     284.48       0.00

    9   9.2  0.5  0.5       0.00       0.00       8.59      31.84     -67.92     301.25     256.81    -252.21    -446.98     -13.67
                         -182.35     -27.76       2.19       6.32     -16.46     165.08      23.52       2.55     170.51     697.67

   10  10.2  0.5  0.5       0.00       0.00      18.01      11.77     -11.41    -594.47       8.17     104.85    -383.40    -160.83
                           13.00    -389.10      -1.37     -45.89      60.16     233.55     125.70    -210.78    -540.13     115.37

   11  11.2  0.5  0.5   74742.45       0.00     -70.24     -18.11     -21.74     201.83     -31.54     576.96    -189.64     -94.30
                           -0.00    1685.86     -27.06      58.64      42.67     -34.97     630.50      76.78      92.96     -23.21

   12  12.2  0.5  0.5       0.00   75341.75    -247.47     638.58     268.25       0.01      -0.01      -0.01      -0.05       0.01
                        -1685.86       0.00     688.85     197.15     166.16       0.06       0.01      -0.01       0.04       0.08

   13   1.2  0.5 -0.5     -70.24    -247.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           27.06    -688.85       0.00   -2220.45   -1026.47     -89.79     321.57     -53.08     144.96     -51.77

   14   2.2  0.5 -0.5     -18.11     638.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -58.64    -197.15    2220.45       0.00     241.81     240.85      63.81     232.19      46.55    -165.44

   15   3.2  0.5 -0.5     -21.74     268.25       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00
                          -42.67    -166.16    1026.47    -241.81      -0.00    -141.29      86.72     256.73    -121.71     258.34

   16   4.2  0.5 -0.5     201.83       0.01       0.00       0.00       0.00   73716.76       0.00       0.00       0.00       0.00
                           34.97      -0.06      89.79    -240.85     141.29       0.00      37.71     475.43    1456.06     460.87

   17   5.2  0.5 -0.5     -31.54      -0.01       0.00       0.00       0.00       0.00   73716.72       0.00       0.00       0.00
                         -630.50      -0.01    -321.57     -63.81     -86.72     -37.71      -0.00    -995.23     570.65     693.20

   18   6.2  0.5 -0.5     576.96      -0.01       0.00       0.00       0.00       0.00       0.00   73716.73       0.00       0.00
                          -76.78       0.01      53.08    -232.19    -256.73    -475.43     995.23       0.00    -295.18    -541.84

   19   7.2  0.5 -0.5    -189.64      -0.05       0.00       0.00       0.00       0.00       0.00       0.00   73716.72       0.00
                          -92.96      -0.04    -144.96     -46.55     121.71   -1456.06    -570.65     295.18      -0.00   -1135.87

   20   8.2  0.5 -0.5     -94.30       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   73716.85
                           23.21      -0.08      51.77     165.44    -258.34    -460.87    -693.20     541.84    1135.87       0.00

   21   9.2  0.5 -0.5     769.93    -395.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -177.68   -1684.42       8.81     -70.29     -31.53    -167.17     579.00      -1.13     220.48     -36.91

   22  10.2  0.5 -0.5     185.22    1642.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          789.31    -379.15      74.67       4.98      10.44     203.93     101.27     596.59     -96.97      54.05

   23  11.2  0.5 -0.5       0.00     372.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -115.24      17.37      -0.01       1.88     434.51      -2.73    -111.70     236.69    -535.31

   24  12.2  0.5 -0.5    -372.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          115.24      -0.00      72.36     307.14    -664.40       0.08      -0.02      -0.08      -0.04       0.01

   25   1.2  1.5  1.5     113.84     -56.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -406.01      -9.07      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5      42.35    1099.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1481.15     -27.22      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5   -1498.75      26.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           33.41    1101.70      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5      11.67     -31.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          254.21       0.91      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5     -21.03      -8.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.88      -0.59      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5     246.28       0.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.12      36.63      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5     -38.41       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           18.84       0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5      49.97      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.42      -0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5      42.45       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.94      -0.05      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00    -543.62    -157.49    -126.63    -253.21      25.55    -378.83      51.03      31.78
                            2.64    1264.64    -192.13     516.33     183.90      72.19    -409.09     -95.05    -170.36      44.73

   35   2.2  1.5  0.5       0.00       0.00     -29.33     -14.13       6.57     411.05      49.73    -221.46     206.81     145.21
                         -126.95      64.93     -68.43    -221.98     547.03    -126.69    -209.79     134.52     397.90      56.35

   36   3.2  1.5  0.5       0.00       0.00      53.24     246.36    -537.36    -126.33    -188.81     131.70     410.62      45.66
                          379.77      11.95      -3.25      -1.25      15.08    -173.11     -75.57      40.94     -41.48    -496.73

   37   4.2  1.5  0.5       0.00       0.00     147.39      49.08      19.42     -96.09      48.27      23.40     -68.11     425.91
                           21.45      10.70       5.85     382.22    -477.84     -51.54     -20.99      61.39     184.71       6.86

   38   5.2  1.5  0.5       0.00       0.00    -543.48    -159.33    -122.08      91.56      -2.12     205.64     -47.77      94.63
                            4.65     -39.98     210.45    -436.58    -355.26      10.86    -221.09     -24.14     -31.73      27.15

   39   6.2  1.5  0.5       0.00       0.00      47.51     252.13    -556.43      59.14      76.21     -54.75    -164.29     -27.66
                           62.97      -0.90       3.29     -17.80       7.99     342.35       3.56    -187.68     189.20    -141.47

   40   7.2  1.5  0.5       0.00       0.00     145.98    -377.06    -158.37      41.59    -273.10     -56.93     -97.57      27.93
                         -128.34       0.27     658.52     188.41     158.73     -25.79       2.87     -43.02       7.27       4.51

   41   8.2  1.5  0.5       0.00       0.00    -188.65     486.39     204.37      32.53    -213.51     -44.56     -76.31      21.77
                         -313.58      -0.06      89.29      25.42      21.52     190.14     -21.47     317.05     -53.43     -32.45

   42   9.2  1.5  0.5       0.00       0.00     345.32    -891.01    -374.31      -0.07       0.52       0.10       0.18      -0.06
                          228.58       0.08    -961.66    -275.20    -231.97      -0.05       0.00      -0.08       0.00      -0.14

   43   1.2  1.5 -0.5      65.73     -32.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          234.41       5.24     -59.32      -7.62      -9.90    -489.65      60.15     376.53    -346.15     791.59

   44   2.2  1.5 -0.5      24.45     634.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -855.14      15.72    1076.44     336.54     272.78    -495.85      77.48    -755.33     121.22     118.02

   45   3.2  1.5 -0.5    -865.30      15.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.29    -636.07     426.40   -1024.27    -427.12     119.20    -886.84    -201.21    -317.67     100.12

   46   4.2  1.5 -0.5       6.74     -18.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -146.77      -0.52    1072.17     340.41     274.22      71.14     -62.94     429.58    -134.60    -194.00

   47   5.2  1.5 -0.5     -12.14      -4.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.12       0.34     298.35      66.79      62.90     625.68     101.75    -129.25     240.95     575.15

   48   6.2  1.5 -0.5     142.19       0.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.11     -21.15    -438.45    1056.00     440.61      63.23    -360.26     -90.22    -122.34      51.80

   49   7.2  1.5 -0.5     -22.18       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.88      -0.02     -52.65    -224.09     484.76     194.67     275.40    -203.12    -586.40     -60.15

   50   8.2  1.5 -0.5      28.85      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.40       0.02    -128.93    -547.23    1183.55     -79.26    -112.11      82.62     238.92      24.73

   51   9.2  1.5 -0.5      24.51       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.47       0.03    -201.79    -856.34    1852.47      -0.04       0.10       0.02      -0.24       0.14

   52   1.2  1.5 -1.5       0.00       0.00    -941.58    -272.78    -219.32    -438.58      44.26    -656.16      88.39      55.04
                           -0.00      -0.00     332.78    -894.32    -318.53    -125.04     708.57     164.63     295.07     -77.48

   53   2.2  1.5 -1.5       0.00       0.00     -50.80     -24.47      11.39     711.96      86.14    -383.58     358.21     251.51
                           -0.00      -0.00     118.53     384.48    -947.48     219.43     363.36    -232.99    -689.18     -97.59

   54   3.2  1.5 -1.5       0.00       0.00      92.22     426.71    -930.73    -218.81    -327.04     228.12     711.21      79.09
                           -0.00      -0.00       5.63       2.17     -26.13     299.84     130.90     -70.92      71.84     860.37

   55   4.2  1.5 -1.5       0.00       0.00     255.29      85.00      33.64    -166.44      83.60      40.54    -117.96     737.70
                           -0.00      -0.00     -10.13    -662.02     827.64      89.27      36.36    -106.33    -319.92     -11.88

   56   5.2  1.5 -1.5       0.00       0.00    -941.33    -275.96    -211.45     158.58      -3.67     356.18     -82.73     163.90
                           -0.00      -0.00    -364.51     756.18     615.32     -18.81     382.93      41.80      54.96     -47.02

   57   6.2  1.5 -1.5       0.00       0.00      82.28     436.70    -963.76     102.44     132.00     -94.84    -284.56     -47.91
                           -0.00      -0.00      -5.70      30.83     -13.85    -592.96      -6.17     325.07    -327.71     245.03

   58   7.2  1.5 -1.5       0.00       0.00     252.84    -653.09    -274.30      72.03    -473.02     -98.61    -169.00      48.37
                           -0.00      -0.00   -1140.60    -326.34    -274.93      44.66      -4.97      74.51     -12.59      -7.81

   59   8.2  1.5 -1.5       0.00       0.00    -326.75     842.45     353.98      56.35    -369.81     -77.18    -132.17      37.70
                           -0.00      -0.00    -154.65     -44.03     -37.28    -329.33      37.19    -549.15      92.55      56.21

   60   9.2  1.5 -1.5       0.00       0.00     598.10   -1543.27    -648.33      -0.12       0.89       0.17       0.32      -0.10
                           -0.00      -0.00    1665.65     476.66     401.79       0.09      -0.00       0.14      -0.00       0.24


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5      -8.59     -18.01      70.24     247.47    -941.58     -50.80      92.22     255.29    -941.33      82.28
                           -2.19       1.37      27.06    -688.85     332.78     118.53       5.63     -10.13    -364.51      -5.70

    2   2.2  0.5  0.5     -31.84     -11.77      18.11    -638.58    -272.78     -24.47     426.71      85.00    -275.96     436.70
                           -6.32      45.89     -58.64    -197.15    -894.32     384.48       2.17    -662.02     756.18      30.83

    3   3.2  0.5  0.5      67.92      11.41      21.74    -268.25    -219.32      11.39    -930.73      33.64    -211.45    -963.76
                           16.46     -60.16     -42.67    -166.16    -318.53    -947.48     -26.13     827.64     615.32     -13.85

    4   4.2  0.5  0.5    -301.25     594.47    -201.83      -0.01    -438.58     711.96    -218.81    -166.44     158.58     102.44
                         -165.08    -233.55      34.97      -0.06    -125.04     219.43     299.84      89.27     -18.81    -592.96

    5   5.2  0.5  0.5    -256.81      -8.17      31.54       0.01      44.26      86.14    -327.04      83.60      -3.67     132.00
                          -23.52    -125.70    -630.50      -0.01     708.57     363.36     130.90      36.36     382.93      -6.17

    6   6.2  0.5  0.5     252.21    -104.85    -576.96       0.01    -656.16    -383.58     228.12      40.54     356.18     -94.84
                           -2.55     210.78     -76.78       0.01     164.63    -232.99     -70.92    -106.33      41.80     325.07

    7   7.2  0.5  0.5     446.98     383.40     189.64       0.05      88.39     358.21     711.21    -117.96     -82.73    -284.56
                         -170.51     540.13     -92.96      -0.04     295.07    -689.18      71.84    -319.92      54.96    -327.71

    8   8.2  0.5  0.5      13.67     160.83      94.30      -0.01      55.04     251.51      79.09     737.70     163.90     -47.91
                         -697.67    -115.37      23.21      -0.08     -77.48     -97.59     860.37     -11.88     -47.02     245.03

    9   9.2  0.5  0.5       0.00     174.60    -769.93     395.31    1483.72      75.51      38.69      67.35    -251.08     -10.00
                            0.00      54.00    -177.68   -1684.42    -349.72       6.77      -2.84      19.76     -57.52      -1.58

   10  10.2  0.5  0.5    -174.60       0.00    -185.22   -1642.91     331.24       8.57     349.35      13.63     -55.59     -58.15
                          -54.00       0.00     789.31    -379.15    1430.00     420.01      22.11     -10.23     259.00       4.35

   11  11.2  0.5  0.5     769.93     185.22       0.00    -372.68     113.84      42.35   -1498.75      11.67     -21.03     246.28
                          177.68    -789.31       0.00    -115.24     406.01   -1481.15     -33.41    -254.21      -8.88       7.12

   12  12.2  0.5  0.5    -395.31    1642.91     372.68      -0.00     -56.70    1099.16      26.81     -31.67      -8.59       0.83
                         1684.42     379.15     115.24       0.00       9.07      27.22   -1101.70      -0.91       0.59     -36.63

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.81     -74.67     -17.37     -72.36       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           70.29      -4.98       0.01    -307.14       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           31.53     -10.44      -1.88     664.40       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          167.17    -203.93    -434.51      -0.08       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -579.00    -101.27       2.73       0.02       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.13    -596.59     111.70       0.08       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -220.48      96.97    -236.69       0.04       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           36.91     -54.05     535.31      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   74741.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     790.03     182.35      27.76       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   74741.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -790.03      -0.00     -13.00     389.10       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   74742.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -182.35      13.00       0.00   -1685.86       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   75341.75       0.00       0.00       0.00       0.00       0.00       0.00
                          -27.76    -389.10    1685.86      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   70703.44       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -9.41      50.97      16.14       1.79      87.68

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   70703.44       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       9.41       0.00    -992.91      -7.66      38.03   -1704.29

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   70703.44       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -50.97     992.91      -0.00   -1648.49    -442.74      -1.64

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.66       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -16.14       7.66    1648.49      -0.00     -21.98     946.17

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.65       0.00
                           -0.00      -0.00      -0.00      -0.00      -1.79     -38.03     442.74      21.98       0.00     254.30

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.66
                           -0.00      -0.00      -0.00      -0.00     -87.68    1704.29       1.64    -946.17    -254.30       0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -746.26     -38.50      -6.84     470.44   -1751.08     -41.08

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -1821.40     -93.60     -17.36    -192.66     717.49      16.83

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -2804.84    -143.99     -26.58      -0.00       0.00      -0.00

   34   1.2  1.5  0.5     856.63     191.24      65.73     -32.73       0.00     -13.97     573.10     -25.92       7.82    -983.85
                          201.91    -825.61    -234.41      -5.24       0.00     573.84      14.23     936.95     304.73     -21.85

   35   2.2  1.5  0.5      43.60       4.95      24.45     634.60      13.97       0.00      29.55       4.75     -22.81     -51.03
                           -3.91    -242.49     855.14     -15.72    -573.84      -0.00      -4.71     303.94    -936.87     -23.54

   36   3.2  1.5  0.5      22.34     201.70    -865.30      15.48    -573.10     -29.55       0.00    -255.76     951.37      13.07
                            1.64     -12.77      19.29     636.07     -14.23       4.71      -0.00      15.15     -21.02      -0.63

   37   4.2  1.5  0.5      38.89       7.87       6.74     -18.28      25.92      -4.75     255.76      -0.00     -13.53    -146.89
                          -11.41       5.90     146.77       0.52    -936.95    -303.94     -15.15      -0.00    -565.50      -9.11

   38   5.2  1.5  0.5    -144.96     -32.09     -12.14      -4.96      -7.82      22.81    -951.37      13.53      -0.00     546.23
                           33.21    -149.53       5.12      -0.34    -304.73     936.87      21.02     565.50      -0.00     -15.97

   39   6.2  1.5  0.5      -5.77     -33.57     142.19       0.48     983.85      51.03     -13.07     146.89    -546.23       0.00
                            0.91      -2.51      -4.11      21.15      21.85      23.54       0.63       9.11      15.97       0.00

   40   7.2  1.5  0.5      23.53     -98.06     -22.18       0.01      35.74    -695.09     -17.14    -864.11    -232.53      21.03
                          159.00      35.71      10.88       0.02       9.10      28.14   -1127.28       4.46      -2.46     151.92

   41   8.2  1.5  0.5     -30.82     127.96      28.85      -0.00     -46.40     898.70      21.73    -668.34    -179.86      16.28
                           21.05       4.72       1.40      -0.02       1.30       3.96    -152.81     -31.84      17.86   -1120.74

   42   9.2  1.5  0.5     -26.04     108.37      24.51       0.01      83.49   -1618.95     -39.46       0.00       0.00      -0.00
                          108.43      24.41       7.47      -0.03     -13.30     -40.20    1621.03       0.00      -0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           91.87       6.11       2.64    1264.64      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1706.04    -428.21    -126.95      64.93      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -447.64    1677.32     379.77      11.95      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          286.91      73.02      21.45      10.70      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           78.68      12.97       4.65     -39.98      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -74.52     278.78      62.97      -0.90      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.23      29.60    -128.34       0.27      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.17      72.37    -313.58      -0.06      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.71     -52.78     228.58       0.08      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5    1483.72     331.24     113.84     -56.70       0.00       0.00       0.00       0.00       0.00       0.00
                         -349.72    1430.00     406.01       9.07      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5      75.51       8.57      42.35    1099.16       0.00       0.00       0.00       0.00       0.00       0.00
                            6.77     420.01   -1481.15      27.22      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5      38.69     349.35   -1498.75      26.81       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.84      22.11     -33.41   -1101.70      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5      67.35      13.63      11.67     -31.67       0.00       0.00       0.00       0.00       0.00       0.00
                           19.76     -10.23    -254.21      -0.91      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5    -251.08     -55.59     -21.03      -8.59       0.00       0.00       0.00       0.00       0.00       0.00
                          -57.52     259.00      -8.88       0.59      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5     -10.00     -58.15     246.28       0.83       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.58       4.35       7.12     -36.63      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5      40.76    -169.84     -38.41       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                         -275.39     -61.85     -18.84      -0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5     -53.38     221.63      49.97      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                          -36.46      -8.17      -2.42       0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5     -45.11     187.70      42.45       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                         -187.81     -42.28     -12.94       0.05      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5     252.84    -326.75     598.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1140.60    -154.65    1665.65      59.32   -1076.44    -426.40   -1072.17    -298.35     438.45      52.65

    2   2.2  0.5  0.5    -653.09     842.45   -1543.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -326.34     -44.03     476.66       7.62    -336.54    1024.27    -340.41     -66.79   -1056.00     224.09

    3   3.2  0.5  0.5    -274.30     353.98    -648.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -274.93     -37.28     401.79       9.90    -272.78     427.12    -274.22     -62.90    -440.61    -484.76

    4   4.2  0.5  0.5      72.03      56.35      -0.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           44.66    -329.33       0.09     489.65     495.85    -119.20     -71.14    -625.68     -63.23    -194.67

    5   5.2  0.5  0.5    -473.02    -369.81       0.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.97      37.19      -0.00     -60.15     -77.48     886.84      62.94    -101.75     360.26    -275.40

    6   6.2  0.5  0.5     -98.61     -77.18       0.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           74.51    -549.15       0.14    -376.53     755.33     201.21    -429.58     129.25      90.22     203.12

    7   7.2  0.5  0.5    -169.00    -132.17       0.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.59      92.55      -0.00     346.15    -121.22     317.67     134.60    -240.95     122.34     586.40

    8   8.2  0.5  0.5      48.37      37.70      -0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.81      56.21       0.24    -791.59    -118.02    -100.12     194.00    -575.15     -51.80      60.15

    9   9.2  0.5  0.5      40.76     -53.38     -45.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -275.39     -36.46    -187.81     -91.87    1706.04     447.64    -286.91     -78.68      74.52      -2.23

   10  10.2  0.5  0.5    -169.84     221.63     187.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -61.85      -8.17     -42.28      -6.11     428.21   -1677.32     -73.02     -12.97    -278.78     -29.60

   11  11.2  0.5  0.5     -38.41      49.97      42.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.84      -2.42     -12.94      -2.64     126.95    -379.77     -21.45      -4.65     -62.97     128.34

   12  12.2  0.5  0.5       0.02      -0.01       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.04       0.05   -1264.64     -64.93     -11.95     -10.70      39.98       0.90      -0.27

   13   1.2  0.5 -0.5       0.00       0.00       0.00    -543.62     -29.33      53.24     147.39    -543.48      47.51     145.98
                            0.00       0.00       0.00     192.13      68.43       3.25      -5.85    -210.45      -3.29    -658.52

   14   2.2  0.5 -0.5       0.00       0.00       0.00    -157.49     -14.13     246.36      49.08    -159.33     252.13    -377.06
                            0.00       0.00       0.00    -516.33     221.98       1.25    -382.22     436.58      17.80    -188.41

   15   3.2  0.5 -0.5       0.00       0.00       0.00    -126.63       6.57    -537.36      19.42    -122.08    -556.43    -158.37
                            0.00       0.00       0.00    -183.90    -547.03     -15.08     477.84     355.26      -7.99    -158.73

   16   4.2  0.5 -0.5       0.00       0.00       0.00    -253.21     411.05    -126.33     -96.09      91.56      59.14      41.59
                            0.00       0.00       0.00     -72.19     126.69     173.11      51.54     -10.86    -342.35      25.79

   17   5.2  0.5 -0.5       0.00       0.00       0.00      25.55      49.73    -188.81      48.27      -2.12      76.21    -273.10
                            0.00       0.00       0.00     409.09     209.79      75.57      20.99     221.09      -3.56      -2.87

   18   6.2  0.5 -0.5       0.00       0.00       0.00    -378.83    -221.46     131.70      23.40     205.64     -54.75     -56.93
                            0.00       0.00       0.00      95.05    -134.52     -40.94     -61.39      24.14     187.68      43.02

   19   7.2  0.5 -0.5       0.00       0.00       0.00      51.03     206.81     410.62     -68.11     -47.77    -164.29     -97.57
                            0.00       0.00       0.00     170.36    -397.90      41.48    -184.71      31.73    -189.20      -7.27

   20   8.2  0.5 -0.5       0.00       0.00       0.00      31.78     145.21      45.66     425.91      94.63     -27.66      27.93
                            0.00       0.00       0.00     -44.73     -56.35     496.73      -6.86     -27.15     141.47      -4.51

   21   9.2  0.5 -0.5       0.00       0.00       0.00     856.63      43.60      22.34      38.89    -144.96      -5.77      23.53
                            0.00       0.00       0.00    -201.91       3.91      -1.64      11.41     -33.21      -0.91    -159.00

   22  10.2  0.5 -0.5       0.00       0.00       0.00     191.24       4.95     201.70       7.87     -32.09     -33.57     -98.06
                            0.00       0.00       0.00     825.61     242.49      12.77      -5.90     149.53       2.51     -35.71

   23  11.2  0.5 -0.5       0.00       0.00       0.00      65.73      24.45    -865.30       6.74     -12.14     142.19     -22.18
                            0.00       0.00       0.00     234.41    -855.14     -19.29    -146.77      -5.12       4.11     -10.88

   24  12.2  0.5 -0.5       0.00       0.00       0.00     -32.73     634.60      15.48     -18.28      -4.96       0.48       0.01
                            0.00       0.00       0.00       5.24      15.72    -636.07      -0.52       0.34     -21.15      -0.02

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00      13.97    -573.10      25.92      -7.82     983.85      35.74
                          746.26    1821.40    2804.84      -0.00     573.84      14.23     936.95     304.73     -21.85      -9.10

   26   2.2  1.5  1.5       0.00       0.00       0.00     -13.97       0.00     -29.55      -4.75      22.81      51.03    -695.09
                           38.50      93.60     143.99    -573.84       0.00      -4.71     303.94    -936.87     -23.54     -28.14

   27   3.2  1.5  1.5       0.00       0.00       0.00     573.10      29.55       0.00     255.76    -951.37     -13.07     -17.14
                            6.84      17.36      26.58     -14.23       4.71       0.00      15.15     -21.02      -0.63    1127.28

   28   4.2  1.5  1.5       0.00       0.00       0.00     -25.92       4.75    -255.76      -0.00      13.53     146.89    -864.11
                         -470.44     192.66       0.00    -936.95    -303.94     -15.15       0.00    -565.50      -9.11      -4.46

   29   5.2  1.5  1.5       0.00       0.00       0.00       7.82     -22.81     951.37     -13.53      -0.00    -546.23    -232.53
                         1751.08    -717.49      -0.00    -304.73     936.87      21.02     565.50       0.00     -15.97       2.46

   30   6.2  1.5  1.5       0.00       0.00       0.00    -983.85     -51.03      13.07    -146.89     546.23       0.00      21.03
                           41.08     -16.83       0.00      21.85      23.54       0.63       9.11      15.97      -0.00    -151.92

   31   7.2  1.5  1.5   72888.33       0.00       0.00     -35.74     695.09      17.14     864.11     232.53     -21.03      -0.00
                           -0.00      -0.46      -0.00       9.10      28.14   -1127.28       4.46      -2.46     151.92       0.00

   32   8.2  1.5  1.5       0.00   72888.27       0.00      46.40    -898.70     -21.73     668.34     179.86     -16.28       0.15
                            0.46       0.00       0.00       1.30       3.96    -152.81     -31.84      17.86   -1120.74       0.13

   33   9.2  1.5  1.5       0.00       0.00   76070.19     -83.49    1618.95      39.46      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00     -13.30     -40.20    1621.03       0.00      -0.00       0.00      -0.00

   34   1.2  1.5  0.5     -35.74      46.40     -83.49   70703.44       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.10      -1.30      13.30      -0.00      -3.14      16.99       5.38       0.60      29.23     248.75

   35   2.2  1.5  0.5     695.09    -898.70    1618.95       0.00   70703.44       0.00       0.00       0.00       0.00       0.00
                          -28.14      -3.96      40.20       3.14       0.00    -330.97      -2.55      12.68    -568.10      12.83

   36   3.2  1.5  0.5      17.14     -21.73      39.46       0.00       0.00   70703.44       0.00       0.00       0.00       0.00
                         1127.28     152.81   -1621.03     -16.99     330.97      -0.00    -549.50    -147.58      -0.55       2.28

   37   4.2  1.5  0.5     864.11     668.34      -0.00       0.00       0.00       0.00   72888.66       0.00       0.00       0.00
                           -4.46      31.84      -0.00      -5.38       2.55     549.50      -0.00      -7.33     315.39    -156.81

   38   5.2  1.5  0.5     232.53     179.86      -0.00       0.00       0.00       0.00       0.00   72888.65       0.00       0.00
                            2.46     -17.86       0.00      -0.60     -12.68     147.58       7.33       0.00      84.77     583.69

   39   6.2  1.5  0.5     -21.03     -16.28       0.00       0.00       0.00       0.00       0.00       0.00   72888.66       0.00
                         -151.92    1120.74      -0.00     -29.23     568.10       0.55    -315.39     -84.77       0.00      13.69

   40   7.2  1.5  0.5      -0.00       0.15      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.33
                           -0.00      -0.13       0.00    -248.75     -12.83      -2.28     156.81    -583.69     -13.69      -0.00

   41   8.2  1.5  0.5      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.13      -0.00       0.00    -607.13     -31.20      -5.79     -64.22     239.16       5.61       0.15

   42   9.2  1.5  0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -934.95     -48.00      -8.86      -0.00       0.00      -0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00     -16.13     661.76     -29.92       9.03   -1136.06     -41.27
                           -0.00      -0.00      -0.00       0.00     662.61      16.43    1081.90     351.87     -25.23     -10.51

   44   2.2  1.5 -0.5       0.00       0.00       0.00      16.13       0.00      34.13       5.49     -26.33     -58.92     802.62
                           -0.00      -0.00      -0.00    -662.61      -0.00      -5.44     350.96   -1081.80     -27.19     -32.50

   45   3.2  1.5 -0.5       0.00       0.00       0.00    -661.76     -34.13       0.00    -295.33    1098.55      15.09      19.79
                           -0.00      -0.00      -0.00     -16.43       5.44      -0.00      17.49     -24.27      -0.73    1301.67

   46   4.2  1.5 -0.5       0.00       0.00       0.00      29.92      -5.49     295.33      -0.00     -15.62    -169.62     997.79
                           -0.00      -0.00      -0.00   -1081.90    -350.96     -17.49      -0.00    -652.99     -10.52      -5.15

   47   5.2  1.5 -0.5       0.00       0.00       0.00      -9.03      26.33   -1098.55      15.62      -0.00     630.74     268.50
                           -0.00      -0.00      -0.00    -351.87    1081.80      24.27     652.99      -0.00     -18.44       2.84

   48   6.2  1.5 -0.5       0.00       0.00       0.00    1136.06      58.92     -15.09     169.62    -630.74       0.00     -24.29
                           -0.00      -0.00      -0.00      25.23      27.19       0.73      10.52      18.44       0.00    -175.42

   49   7.2  1.5 -0.5       0.00       0.00       0.00      41.27    -802.62     -19.79    -997.79    -268.50      24.29      -0.00
                           -0.00      -0.00      -0.00      10.51      32.50   -1301.67       5.15      -2.84     175.42      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00     -53.58    1037.72      25.09    -771.73    -207.69      18.80      -0.17
                           -0.00      -0.00      -0.00       1.50       4.58    -176.45     -36.76      20.62   -1294.12       0.15

   51   9.2  1.5 -0.5       0.00       0.00       0.00      96.40   -1869.40     -45.56       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00     -15.35     -46.41    1871.80       0.00      -0.00       0.00      -0.00

   52   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  0.5  0.5       0.00       0.00    -543.62     -29.33      53.24     147.39    -543.48      47.51     145.98    -188.65
                          128.93     201.79    -192.13     -68.43      -3.25       5.85     210.45       3.29     658.52      89.29

    2   2.2  0.5  0.5       0.00       0.00    -157.49     -14.13     246.36      49.08    -159.33     252.13    -377.06     486.39
                          547.23     856.34     516.33    -221.98      -1.25     382.22    -436.58     -17.80     188.41      25.42

    3   3.2  0.5  0.5       0.00       0.00    -126.63       6.57    -537.36      19.42    -122.08    -556.43    -158.37     204.37
                        -1183.55   -1852.47     183.90     547.03      15.08    -477.84    -355.26       7.99     158.73      21.52

    4   4.2  0.5  0.5       0.00       0.00    -253.21     411.05    -126.33     -96.09      91.56      59.14      41.59      32.53
                           79.26       0.04      72.19    -126.69    -173.11     -51.54      10.86     342.35     -25.79     190.14

    5   5.2  0.5  0.5       0.00       0.00      25.55      49.73    -188.81      48.27      -2.12      76.21    -273.10    -213.51
                          112.11      -0.10    -409.09    -209.79     -75.57     -20.99    -221.09       3.56       2.87     -21.47

    6   6.2  0.5  0.5       0.00       0.00    -378.83    -221.46     131.70      23.40     205.64     -54.75     -56.93     -44.56
                          -82.62      -0.02     -95.05     134.52      40.94      61.39     -24.14    -187.68     -43.02     317.05

    7   7.2  0.5  0.5       0.00       0.00      51.03     206.81     410.62     -68.11     -47.77    -164.29     -97.57     -76.31
                         -238.92       0.24    -170.36     397.90     -41.48     184.71     -31.73     189.20       7.27     -53.43

    8   8.2  0.5  0.5       0.00       0.00      31.78     145.21      45.66     425.91      94.63     -27.66      27.93      21.77
                          -24.73      -0.14      44.73      56.35    -496.73       6.86      27.15    -141.47       4.51     -32.45

    9   9.2  0.5  0.5       0.00       0.00     856.63      43.60      22.34      38.89    -144.96      -5.77      23.53     -30.82
                           -5.17       3.71     201.91      -3.91       1.64     -11.41      33.21       0.91     159.00      21.05

   10  10.2  0.5  0.5       0.00       0.00     191.24       4.95     201.70       7.87     -32.09     -33.57     -98.06     127.96
                          -72.37      52.78    -825.61    -242.49     -12.77       5.90    -149.53      -2.51      35.71       4.72

   11  11.2  0.5  0.5       0.00       0.00      65.73      24.45    -865.30       6.74     -12.14     142.19     -22.18      28.85
                          313.58    -228.58    -234.41     855.14      19.29     146.77       5.12      -4.11      10.88       1.40

   12  12.2  0.5  0.5       0.00       0.00     -32.73     634.60      15.48     -18.28      -4.96       0.48       0.01      -0.00
                            0.06      -0.08      -5.24     -15.72     636.07       0.52      -0.34      21.15       0.02      -0.02

   13   1.2  0.5 -0.5    -188.65     345.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -89.29     961.66      59.32   -1076.44    -426.40   -1072.17    -298.35     438.45      52.65     128.93

   14   2.2  0.5 -0.5     486.39    -891.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.42     275.20       7.62    -336.54    1024.27    -340.41     -66.79   -1056.00     224.09     547.23

   15   3.2  0.5 -0.5     204.37    -374.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.52     231.97       9.90    -272.78     427.12    -274.22     -62.90    -440.61    -484.76   -1183.55

   16   4.2  0.5 -0.5      32.53      -0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -190.14       0.05     489.65     495.85    -119.20     -71.14    -625.68     -63.23    -194.67      79.26

   17   5.2  0.5 -0.5    -213.51       0.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           21.47      -0.00     -60.15     -77.48     886.84      62.94    -101.75     360.26    -275.40     112.11

   18   6.2  0.5 -0.5     -44.56       0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -317.05       0.08    -376.53     755.33     201.21    -429.58     129.25      90.22     203.12     -82.62

   19   7.2  0.5 -0.5     -76.31       0.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           53.43      -0.00     346.15    -121.22     317.67     134.60    -240.95     122.34     586.40    -238.92

   20   8.2  0.5 -0.5      21.77      -0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           32.45       0.14    -791.59    -118.02    -100.12     194.00    -575.15     -51.80      60.15     -24.73

   21   9.2  0.5 -0.5     -30.82     -26.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.05    -108.43     -91.87    1706.04     447.64    -286.91     -78.68      74.52      -2.23      -5.17

   22  10.2  0.5 -0.5     127.96     108.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.72     -24.41      -6.11     428.21   -1677.32     -73.02     -12.97    -278.78     -29.60     -72.37

   23  11.2  0.5 -0.5      28.85      24.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.40      -7.47      -2.64     126.95    -379.77     -21.45      -4.65     -62.97     128.34     313.58

   24  12.2  0.5 -0.5      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.03   -1264.64     -64.93     -11.95     -10.70      39.98       0.90      -0.27       0.06

   25   1.2  1.5  1.5     -46.40      83.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.30      13.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5     898.70   -1618.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.96      40.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5      21.73     -39.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          152.81   -1621.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5    -668.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           31.84      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5    -179.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5      16.28      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1120.74      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00       0.00      16.13    -661.76      29.92      -9.03    1136.06      41.27     -53.58
                          607.13     934.95      -0.00     662.61      16.43    1081.90     351.87     -25.23     -10.51      -1.50

   35   2.2  1.5  0.5       0.00       0.00     -16.13       0.00     -34.13      -5.49      26.33      58.92    -802.62    1037.72
                           31.20      48.00    -662.61       0.00      -5.44     350.96   -1081.80     -27.19     -32.50      -4.58

   36   3.2  1.5  0.5       0.00       0.00     661.76      34.13       0.00     295.33   -1098.55     -15.09     -19.79      25.09
                            5.79       8.86     -16.43       5.44       0.00      17.49     -24.27      -0.73    1301.67     176.45

   37   4.2  1.5  0.5       0.00       0.00     -29.92       5.49    -295.33      -0.00      15.62     169.62    -997.79    -771.73
                           64.22       0.00   -1081.90    -350.96     -17.49       0.00    -652.99     -10.52      -5.15      36.76

   38   5.2  1.5  0.5       0.00       0.00       9.03     -26.33    1098.55     -15.62      -0.00    -630.74    -268.50    -207.69
                         -239.16      -0.00    -351.87    1081.80      24.27     652.99       0.00     -18.44       2.84     -20.62

   39   6.2  1.5  0.5       0.00       0.00   -1136.06     -58.92      15.09    -169.62     630.74       0.00      24.29      18.80
                           -5.61       0.00      25.23      27.19       0.73      10.52      18.44      -0.00    -175.42    1294.12

   40   7.2  1.5  0.5       0.00       0.00     -41.27     802.62      19.79     997.79     268.50     -24.29      -0.00      -0.17
                           -0.15      -0.00      10.51      32.50   -1301.67       5.15      -2.84     175.42       0.00      -0.15

   41   8.2  1.5  0.5   72888.27       0.00      53.58   -1037.72     -25.09     771.73     207.69     -18.80       0.17       0.00
                            0.00       0.00       1.50       4.58    -176.45     -36.76      20.62   -1294.12       0.15       0.00

   42   9.2  1.5  0.5       0.00   76070.19     -96.40    1869.40      45.56      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00     -15.35     -46.41    1871.80       0.00      -0.00       0.00      -0.00      -0.00

   43   1.2  1.5 -0.5      53.58     -96.40   70703.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.50      15.35       0.00       3.14     -16.99      -5.38      -0.60     -29.23    -248.75    -607.13

   44   2.2  1.5 -0.5   -1037.72    1869.40       0.00   70703.44       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.58      46.41      -3.14      -0.00     330.97       2.55     -12.68     568.10     -12.83     -31.20

   45   3.2  1.5 -0.5     -25.09      45.56       0.00       0.00   70703.44       0.00       0.00       0.00       0.00       0.00
                          176.45   -1871.80      16.99    -330.97       0.00     549.50     147.58       0.55      -2.28      -5.79

   46   4.2  1.5 -0.5     771.73      -0.00       0.00       0.00       0.00   72888.66       0.00       0.00       0.00       0.00
                           36.76      -0.00       5.38      -2.55    -549.50       0.00       7.33    -315.39     156.81     -64.22

   47   5.2  1.5 -0.5     207.69      -0.00       0.00       0.00       0.00       0.00   72888.65       0.00       0.00       0.00
                          -20.62       0.00       0.60      12.68    -147.58      -7.33      -0.00     -84.77    -583.69     239.16

   48   6.2  1.5 -0.5     -18.80       0.00       0.00       0.00       0.00       0.00       0.00   72888.66       0.00       0.00
                         1294.12      -0.00      29.23    -568.10      -0.55     315.39      84.77      -0.00     -13.69       5.61

   49   7.2  1.5 -0.5       0.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.33       0.00
                           -0.15       0.00     248.75      12.83       2.28    -156.81     583.69      13.69       0.00       0.15

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.27
                           -0.00       0.00     607.13      31.20       5.79      64.22    -239.16      -5.61      -0.15      -0.00

   51   9.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     934.95      48.00       8.86       0.00      -0.00       0.00      -0.00       0.00

   52   1.2  1.5 -1.5       0.00       0.00       0.00     -13.97     573.10     -25.92       7.82    -983.85     -35.74      46.40
                           -0.00      -0.00       0.00     573.84      14.23     936.95     304.73     -21.85      -9.10      -1.30

   53   2.2  1.5 -1.5       0.00       0.00      13.97       0.00      29.55       4.75     -22.81     -51.03     695.09    -898.70
                           -0.00      -0.00    -573.84      -0.00      -4.71     303.94    -936.87     -23.54     -28.14      -3.96

   54   3.2  1.5 -1.5       0.00       0.00    -573.10     -29.55       0.00    -255.76     951.37      13.07      17.14     -21.73
                           -0.00      -0.00     -14.23       4.71      -0.00      15.15     -21.02      -0.63    1127.28     152.81

   55   4.2  1.5 -1.5       0.00       0.00      25.92      -4.75     255.76      -0.00     -13.53    -146.89     864.11     668.34
                           -0.00      -0.00    -936.95    -303.94     -15.15      -0.00    -565.50      -9.11      -4.46      31.84

   56   5.2  1.5 -1.5       0.00       0.00      -7.82      22.81    -951.37      13.53      -0.00     546.23     232.53     179.86
                           -0.00      -0.00    -304.73     936.87      21.02     565.50      -0.00     -15.97       2.46     -17.86

   57   6.2  1.5 -1.5       0.00       0.00     983.85      51.03     -13.07     146.89    -546.23       0.00     -21.03     -16.28
                           -0.00      -0.00      21.85      23.54       0.63       9.11      15.97       0.00    -151.92    1120.74

   58   7.2  1.5 -1.5       0.00       0.00      35.74    -695.09     -17.14    -864.11    -232.53      21.03      -0.00       0.15
                           -0.00      -0.00       9.10      28.14   -1127.28       4.46      -2.46     151.92      -0.00      -0.13

   59   8.2  1.5 -1.5       0.00       0.00     -46.40     898.70      21.73    -668.34    -179.86      16.28      -0.15       0.00
                           -0.00      -0.00       1.30       3.96    -152.81     -31.84      17.86   -1120.74       0.13      -0.00

   60   9.2  1.5 -1.5       0.00       0.00      83.49   -1618.95     -39.46       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     -13.30     -40.20    1621.03       0.00      -0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5     345.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -961.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5    -891.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -275.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5    -374.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -231.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5      -0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5       0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5       0.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5      -0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5     -26.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          108.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5     108.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           24.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5      24.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00    -941.58     -50.80      92.22     255.29    -941.33      82.28     252.84    -326.75     598.10
                          201.79    -332.78    -118.53      -5.63      10.13     364.51       5.70    1140.60     154.65   -1665.65

   14   2.2  0.5 -0.5       0.00    -272.78     -24.47     426.71      85.00    -275.96     436.70    -653.09     842.45   -1543.27
                          856.34     894.32    -384.48      -2.17     662.02    -756.18     -30.83     326.34      44.03    -476.66

   15   3.2  0.5 -0.5       0.00    -219.32      11.39    -930.73      33.64    -211.45    -963.76    -274.30     353.98    -648.33
                        -1852.47     318.53     947.48      26.13    -827.64    -615.32      13.85     274.93      37.28    -401.79

   16   4.2  0.5 -0.5       0.00    -438.58     711.96    -218.81    -166.44     158.58     102.44      72.03      56.35      -0.12
                            0.04     125.04    -219.43    -299.84     -89.27      18.81     592.96     -44.66     329.33      -0.09

   17   5.2  0.5 -0.5       0.00      44.26      86.14    -327.04      83.60      -3.67     132.00    -473.02    -369.81       0.89
                           -0.10    -708.57    -363.36    -130.90     -36.36    -382.93       6.17       4.97     -37.19       0.00

   18   6.2  0.5 -0.5       0.00    -656.16    -383.58     228.12      40.54     356.18     -94.84     -98.61     -77.18       0.17
                           -0.02    -164.63     232.99      70.92     106.33     -41.80    -325.07     -74.51     549.15      -0.14

   19   7.2  0.5 -0.5       0.00      88.39     358.21     711.21    -117.96     -82.73    -284.56    -169.00    -132.17       0.32
                            0.24    -295.07     689.18     -71.84     319.92     -54.96     327.71      12.59     -92.55       0.00

   20   8.2  0.5 -0.5       0.00      55.04     251.51      79.09     737.70     163.90     -47.91      48.37      37.70      -0.10
                           -0.14      77.48      97.59    -860.37      11.88      47.02    -245.03       7.81     -56.21      -0.24

   21   9.2  0.5 -0.5       0.00    1483.72      75.51      38.69      67.35    -251.08     -10.00      40.76     -53.38     -45.11
                            3.71     349.72      -6.77       2.84     -19.76      57.52       1.58     275.39      36.46     187.81

   22  10.2  0.5 -0.5       0.00     331.24       8.57     349.35      13.63     -55.59     -58.15    -169.84     221.63     187.70
                           52.78   -1430.00    -420.01     -22.11      10.23    -259.00      -4.35      61.85       8.17      42.28

   23  11.2  0.5 -0.5       0.00     113.84      42.35   -1498.75      11.67     -21.03     246.28     -38.41      49.97      42.45
                         -228.58    -406.01    1481.15      33.41     254.21       8.88      -7.12      18.84       2.42      12.94

   24  12.2  0.5 -0.5       0.00     -56.70    1099.16      26.81     -31.67      -8.59       0.83       0.02      -0.01       0.02
                           -0.08      -9.07     -27.22    1101.70       0.91      -0.59      36.63       0.03      -0.04      -0.05

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5      96.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.2  1.5  0.5   -1869.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           46.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5     -45.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1871.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00      13.97    -573.10      25.92      -7.82     983.85      35.74     -46.40      83.49
                         -934.95      -0.00     573.84      14.23     936.95     304.73     -21.85      -9.10      -1.30      13.30

   44   2.2  1.5 -0.5       0.00     -13.97       0.00     -29.55      -4.75      22.81      51.03    -695.09     898.70   -1618.95
                          -48.00    -573.84       0.00      -4.71     303.94    -936.87     -23.54     -28.14      -3.96      40.20

   45   3.2  1.5 -0.5       0.00     573.10      29.55       0.00     255.76    -951.37     -13.07     -17.14      21.73     -39.46
                           -8.86     -14.23       4.71       0.00      15.15     -21.02      -0.63    1127.28     152.81   -1621.03

   46   4.2  1.5 -0.5       0.00     -25.92       4.75    -255.76      -0.00      13.53     146.89    -864.11    -668.34       0.00
                           -0.00    -936.95    -303.94     -15.15       0.00    -565.50      -9.11      -4.46      31.84      -0.00

   47   5.2  1.5 -0.5       0.00       7.82     -22.81     951.37     -13.53      -0.00    -546.23    -232.53    -179.86       0.00
                            0.00    -304.73     936.87      21.02     565.50       0.00     -15.97       2.46     -17.86       0.00

   48   6.2  1.5 -0.5       0.00    -983.85     -51.03      13.07    -146.89     546.23       0.00      21.03      16.28      -0.00
                           -0.00      21.85      23.54       0.63       9.11      15.97      -0.00    -151.92    1120.74      -0.00

   49   7.2  1.5 -0.5       0.00     -35.74     695.09      17.14     864.11     232.53     -21.03      -0.00      -0.15       0.00
                            0.00       9.10      28.14   -1127.28       4.46      -2.46     151.92       0.00      -0.13       0.00

   50   8.2  1.5 -0.5       0.00      46.40    -898.70     -21.73     668.34     179.86     -16.28       0.15       0.00      -0.00
                           -0.00       1.30       3.96    -152.81     -31.84      17.86   -1120.74       0.13       0.00       0.00

   51   9.2  1.5 -0.5   76070.19     -83.49    1618.95      39.46      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00     -13.30     -40.20    1621.03       0.00      -0.00       0.00      -0.00      -0.00       0.00

   52   1.2  1.5 -1.5     -83.49   70703.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.30       0.00       9.41     -50.97     -16.14      -1.79     -87.68    -746.26   -1821.40   -2804.84

   53   2.2  1.5 -1.5    1618.95       0.00   70703.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           40.20      -9.41      -0.00     992.91       7.66     -38.03    1704.29     -38.50     -93.60    -143.99

   54   3.2  1.5 -1.5      39.46       0.00       0.00   70703.44       0.00       0.00       0.00       0.00       0.00       0.00
                        -1621.03      50.97    -992.91       0.00    1648.49     442.74       1.64      -6.84     -17.36     -26.58

   55   4.2  1.5 -1.5      -0.00       0.00       0.00       0.00   72888.66       0.00       0.00       0.00       0.00       0.00
                           -0.00      16.14      -7.66   -1648.49       0.00      21.98    -946.17     470.44    -192.66      -0.00

   56   5.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00   72888.65       0.00       0.00       0.00       0.00
                            0.00       1.79      38.03    -442.74     -21.98      -0.00    -254.30   -1751.08     717.49       0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   72888.66       0.00       0.00       0.00
                           -0.00      87.68   -1704.29      -1.64     946.17     254.30      -0.00     -41.08      16.83      -0.00

   58   7.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.33       0.00       0.00
                            0.00     746.26      38.50       6.84    -470.44    1751.08      41.08       0.00       0.46       0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   72888.27       0.00
                            0.00    1821.40      93.60      17.36     192.66    -717.49     -16.83      -0.46      -0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   76070.19
                           -0.00    2804.84     143.99      26.58       0.00      -0.00       0.00      -0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -295.53977573    -0.01205852    -2646.54      0.00000000        0.00      0.0000
     2  -295.53977573    -0.01205852    -2646.54      0.00000000        0.00      0.0000
     3  -295.53976732    -0.01205011    -2644.69      0.00000841        1.85      0.0002
     4  -295.53976732    -0.01205011    -2644.69      0.00000841        1.85      0.0002
     5  -295.50597838     0.02173883     4771.12      0.03379736     7417.66      0.9197
     6  -295.50597838     0.02173883     4771.12      0.03379736     7417.66      0.9197
     7  -295.21857846     0.30913875    67848.11      0.32119727    70494.65      8.7402
     8  -295.21857846     0.30913875    67848.11      0.32119727    70494.65      8.7402
     9  -295.21852933     0.30918788    67858.90      0.32124640    70505.44      8.7416
    10  -295.21852933     0.30918788    67858.90      0.32124640    70505.44      8.7416
    11  -295.21785607     0.30986114    68006.66      0.32191966    70653.20      8.7599
    12  -295.21785607     0.30986114    68006.66      0.32191966    70653.20      8.7599
    13  -295.21770945     0.31000776    68038.84      0.32206628    70685.38      8.7639
    14  -295.21770945     0.31000776    68038.84      0.32206628    70685.38      8.7639
    15  -295.21750066     0.31021655    68084.66      0.32227508    70731.20      8.7696
    16  -295.21750066     0.31021655    68084.66      0.32227508    70731.20      8.7696
    17  -295.21480030     0.31291691    68677.32      0.32497543    71323.86      8.8430
    18  -295.21480030     0.31291691    68677.32      0.32497543    71323.86      8.8430
    19  -295.20479066     0.32292655    70874.19      0.33498508    73520.73      9.1154
    20  -295.20479066     0.32292655    70874.19      0.33498508    73520.73      9.1154
    21  -295.20463763     0.32307958    70907.77      0.33513810    73554.31      9.1196
    22  -295.20463763     0.32307958    70907.77      0.33513810    73554.31      9.1196
    23  -295.20454506     0.32317215    70928.09      0.33523068    73574.63      9.1221
    24  -295.20454506     0.32317215    70928.09      0.33523068    73574.63      9.1221
    25  -295.20454348     0.32317373    70928.44      0.33523225    73574.98      9.1221
    26  -295.20454348     0.32317373    70928.44      0.33523225    73574.98      9.1221
    27  -295.20433728     0.32337993    70973.69      0.33543845    73620.23      9.1277
    28  -295.20433728     0.32337993    70973.69      0.33543845    73620.23      9.1277
    29  -295.20428660     0.32343061    70984.81      0.33548914    73631.35      9.1291
    30  -295.20428660     0.32343061    70984.81      0.33548914    73631.35      9.1291
    31  -295.20385488     0.32386233    71079.57      0.33592086    73726.11      9.1409
    32  -295.20385488     0.32386233    71079.57      0.33592086    73726.11      9.1409
    33  -295.18967124     0.33804597    74192.51      0.35010449    76839.05      9.5268
    34  -295.18967124     0.33804597    74192.51      0.35010449    76839.05      9.5268
    35  -295.18737599     0.34034122    74696.26      0.35239974    77342.80      9.5893
    36  -295.18737599     0.34034122    74696.26      0.35239974    77342.80      9.5893
    37  -295.18730887     0.34040834    74710.99      0.35246686    77357.53      9.5911
    38  -295.18730887     0.34040834    74710.99      0.35246686    77357.53      9.5911
    39  -295.18433785     0.34337936    75363.06      0.35543788    78009.60      9.6720
    40  -295.18433785     0.34337936    75363.06      0.35543788    78009.60      9.6720
    41  -295.18404319     0.34367402    75427.73      0.35573254    78074.27      9.6800
    42  -295.18404319     0.34367402    75427.73      0.35573254    78074.27      9.6800
    43  -295.18400981     0.34370740    75435.06      0.35576593    78081.60      9.6809
    44  -295.18400981     0.34370740    75435.06      0.35576593    78081.60      9.6809
    45  -295.18330934     0.34440787    75588.79      0.35646639    78235.33      9.6999
    46  -295.18330934     0.34440787    75588.79      0.35646639    78235.33      9.6999
    47  -295.18325613     0.34446108    75600.47      0.35651960    78247.01      9.7014
    48  -295.18325613     0.34446108    75600.47      0.35651960    78247.01      9.7014
    49  -295.18106628     0.34665093    76081.09      0.35870945    78727.63      9.7610
    50  -295.18106628     0.34665093    76081.09      0.35870945    78727.63      9.7610
    51  -295.17518629     0.35253092    77371.59      0.36458945    80018.13      9.9210
    52  -295.17518629     0.35253092    77371.59      0.36458945    80018.13      9.9210
    53  -295.17517482     0.35254239    77374.11      0.36460092    80020.65      9.9213
    54  -295.17517482     0.35254239    77374.11      0.36460092    80020.65      9.9213
    55  -295.17302501     0.35469220    77845.94      0.36675072    80492.48      9.9798
    56  -295.17302501     0.35469220    77845.94      0.36675072    80492.48      9.9798
    57  -295.16542259     0.36229462    79514.48      0.37435314    82161.02     10.1867
    58  -295.16542259     0.36229462    79514.48      0.37435314    82161.02     10.1867
    59  -295.16537743     0.36233978    79524.39      0.37439831    82170.93     10.1879
    60  -295.16537743     0.36233978    79524.39      0.37439831    82170.93     10.1879


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.191485517  -0.213048744  -0.035508065   0.762619454   0.572464848   0.071234946   0.007102472   0.002087536
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.409121637  -0.073603909   0.086647126   0.086160868   0.024260625  -0.194501221  -0.008016957   0.008597904
                         0.416354431   0.132956166  -0.027840122   0.534319766  -0.498383906  -0.214100260  -0.010167718  -0.000210551

    3    3.2  0.5  0.5  -0.268155608   0.656188280  -0.200382098   0.106603795  -0.059488489   0.478703851  -0.002709557  -0.018402952
                         0.011285857   0.221380506  -0.045969526   0.244645747  -0.264268583   0.173258007  -0.004917180   0.000015499

    4    4.2  0.5  0.5   0.002457611   0.000432711   0.001276262   0.000797716   0.000001652   0.000000497  -0.005652844   0.001642304
                        -0.004679343   0.002155336   0.003350286   0.001122562   0.000002095  -0.000001007   0.004490222  -0.021352855

    5    5.2  0.5  0.5   0.001836348   0.002331720   0.002330899   0.001214399  -0.000004865  -0.000001412   0.004955665   0.002645187
                         0.002892935   0.001716997   0.001535664  -0.004235846  -0.000013662  -0.000002568   0.003980816   0.000603546

    6    6.2  0.5  0.5   0.003762420   0.002350490  -0.001847165   0.001512746   0.000000412  -0.000000079  -0.007802484  -0.002046289
                        -0.001100800  -0.004323076  -0.001297429  -0.000630737  -0.000003697   0.000000882   0.009197078   0.012467267

    7    7.2  0.5  0.5   0.001608818  -0.001393925  -0.005613726  -0.000248853  -0.000002355   0.000001538   0.003217072  -0.005646724
                         0.000477681   0.002903940   0.000538889  -0.001530698  -0.000004482  -0.000001919   0.000267708  -0.012863821

    8    8.2  0.5  0.5  -0.001258731   0.000136666  -0.001373104  -0.000340745   0.000000882  -0.000003742   0.000328504  -0.000511156
                         0.001843729  -0.002841345   0.005644453   0.000822339  -0.000000545   0.000008540  -0.001553411   0.017633114

    9    9.2  0.5  0.5  -0.000058990  -0.000032976  -0.000017955   0.000232685  -0.000857865  -0.000202890   0.079309233  -0.003092193
                         0.000007485   0.000011788  -0.000003061   0.000021455   0.000102882  -0.000022250  -0.016884130  -0.000123453

   10   10.2  0.5  0.5   0.000054414   0.000101056  -0.000013425   0.000009829   0.000148141  -0.000192553  -0.114975889  -0.058451687
                         0.000095499   0.000066953  -0.000014434   0.000165560   0.000854372   0.000100272  -0.141431829  -0.002030529

   11   11.2  0.5  0.5   0.000121009  -0.000155806   0.000058558   0.000010395  -0.000172699   0.000764795  -0.027906747   0.257429549
                         0.000067703  -0.000024573   0.000005155   0.000038912   0.000149891   0.000417142  -0.030333244  -0.001809048

   12   12.2  0.5  0.5   0.000001890  -0.000001678   0.000001305   0.000000114  -0.000926804   0.007448195   0.000009667  -0.000009169
                        -0.000004782   0.000007819  -0.000008856  -0.000000645   0.003640114  -0.015344836   0.000004328   0.000142781

   13    1.2  0.5 -0.5   0.186893618  -0.167977620   0.702477397   0.032707811  -0.070866900   0.569507126  -0.001486040   0.005055987
                        -0.102276796   0.091925091   0.296839920   0.013821062  -0.007231871   0.058117430   0.001466115  -0.004988196

   14    2.2  0.5 -0.5   0.128395179   0.159019128   0.287343180  -0.068977506   0.215232059  -0.026461350  -0.006268403   0.001434000
                         0.081299173  -0.561644409  -0.458644965  -0.059370872  -0.193248045   0.498271906   0.005888582   0.012868478

   15    3.2  0.5 -0.5  -0.469354152  -0.240653157   0.193422001   0.202472523  -0.493819953  -0.086010048   0.013111265   0.001524592
                         0.509214166   0.118831218  -0.183858207   0.035651927   0.123764163   0.256863847  -0.012913698   0.005403330

   16    4.2  0.5 -0.5   0.000655108   0.004402278   0.001171749  -0.002479669  -0.000000393   0.000001856  -0.016165598  -0.007177616
                         0.002098463   0.002925071  -0.000723533   0.002589306  -0.000001052  -0.000001917  -0.014046886   0.000773673

   17    5.2  0.5 -0.5  -0.001221198   0.000222117  -0.000530120  -0.002744817   0.000001665  -0.000006227  -0.001459129   0.000731954
                         0.002625580  -0.003419344   0.004374486   0.000507285  -0.000002411   0.000013098   0.002287405  -0.006314250

   18    6.2  0.5 -0.5  -0.004137279   0.003828976   0.001147940   0.002206500  -0.000000011   0.000000035   0.010212668  -0.012013576
                        -0.002663967  -0.000840538   0.001169813  -0.000476125   0.000000885   0.000003719   0.007437839  -0.001067231

   19    7.2  0.5 -0.5   0.002616872   0.001181993  -0.000825033   0.004961258  -0.000001335  -0.000002798  -0.005014804   0.002102098
                         0.001878263  -0.001191372   0.001313121   0.002681462  -0.000002065   0.000004220  -0.013123077  -0.002449980

   20    8.2  0.5 -0.5  -0.001483913  -0.001989308   0.000006212  -0.000932214   0.000002855   0.000000822   0.012747933   0.001324839
                        -0.002426916  -0.001013112  -0.000890118   0.005733781   0.000008875   0.000000632   0.012193367   0.000875102

   21    9.2  0.5 -0.5   0.000034587  -0.000055341   0.000222686   0.000017730   0.000204100  -0.000842988   0.002114514   0.068315341
                        -0.000005490   0.000021752   0.000070807   0.000004169  -0.000001537  -0.000189442  -0.002259586  -0.043681145

   22   10.2  0.5 -0.5  -0.000056508   0.000001888   0.000073496   0.000017984   0.000181378   0.000234113   0.040183514   0.017483094
                         0.000107247  -0.000109897  -0.000148677  -0.000008070   0.000119302  -0.000834918  -0.042497152   0.181429762

   23   11.2  0.5 -0.5   0.000124882   0.000073652   0.000024722  -0.000055946  -0.000803192  -0.000156590  -0.184525093   0.001437815
                        -0.000096353  -0.000117484  -0.000031797  -0.000018044   0.000337344  -0.000166649   0.179509709   0.041192534

   24   12.2  0.5 -0.5   0.000005225   0.000003954  -0.000000146   0.000002245  -0.005851883  -0.000552466   0.000106804   0.000003842
                         0.000006053   0.000003288   0.000000639  -0.000008666  -0.016021706  -0.003715398   0.000095201  -0.000009870

   25    1.2  1.5  1.5   0.003484284   0.001580179  -0.001309292   0.018535609   0.000042066  -0.000236327   0.103257924  -0.001789930
                        -0.003199650  -0.001813316  -0.000605393   0.004802252  -0.000086436   0.000340334  -0.100001401   0.018915734

   26    2.2  1.5  1.5  -0.002047069   0.001941895  -0.000423986   0.000926259  -0.000390439   0.003297983   0.008543838  -0.010403742
                         0.005588848  -0.009454944   0.003066089   0.000460100   0.001709674  -0.007246720  -0.001883401  -0.330134371

   27    3.2  1.5  1.5  -0.005706071   0.009352730  -0.003103893  -0.000036899  -0.001708942   0.007243257  -0.002423566   0.358412584
                        -0.002247416   0.001833417  -0.000360229   0.000019658  -0.000391290   0.003300047   0.002625411  -0.009938612

   28    4.2  1.5  1.5   0.003638359  -0.000713517   0.000353780  -0.000684031  -0.003590829  -0.004223428  -0.023410061  -0.004535368
                        -0.006622178   0.007237038  -0.002758697  -0.000380204  -0.000276047   0.007481590   0.025263021  -0.122144856

   29    5.2  1.5  1.5  -0.005599858  -0.004006581  -0.000032031   0.002638220   0.014958971   0.002370164   0.092130546   0.003476247
                         0.004162072   0.006400407  -0.000784206   0.000653722  -0.005862800   0.001380948  -0.089353119  -0.032901006

   30    6.2  1.5  1.5  -0.005460240   0.008568351  -0.002861384  -0.000134498  -0.001440121   0.007659089   0.003325401  -0.119458005
                        -0.001931747   0.001826079  -0.000332573  -0.000009110  -0.000540092   0.003449335  -0.003297201   0.003556797

   31    7.2  1.5  1.5   0.004791053   0.003646958  -0.000139987   0.001690734  -0.005318230  -0.000502687  -0.078238706  -0.000178010
                         0.005452486   0.002944478   0.000459751  -0.006434675  -0.014570333  -0.003377975  -0.080030689  -0.001620241

   32    8.2  1.5  1.5  -0.003691032  -0.002838766  -0.000208898   0.002157350   0.002177892   0.000205625   0.051881804  -0.000342673
                        -0.004188930  -0.002246174   0.000614724  -0.008332363   0.005952372   0.001379627   0.053294462   0.000860543

   33    9.2  1.5  1.5   0.004865050   0.003782470   0.000748271  -0.007999327   0.000001304   0.000000211   0.064305116  -0.001039263
                         0.005512652   0.002931907  -0.002255017   0.030801439   0.000005191   0.000001572   0.066577139   0.000733889

   34    1.2  1.5  0.5   0.003007848  -0.005412262   0.001759725  -0.000008979  -0.001871456   0.008065151  -0.006445826  -0.174219013
                         0.000936038  -0.001406638   0.000190355   0.000762307  -0.000261998   0.003964844  -0.016296655   0.000747957

   35    2.2  1.5  0.5   0.005907311   0.004032078  -0.000246567   0.003888436  -0.001706350   0.000247532   0.228051330  -0.007699897
                         0.006094299   0.003149922   0.001028006  -0.014089740  -0.004093797  -0.000747498   0.213682891   0.004900775

   36    3.2  1.5  0.5  -0.010063466  -0.005445834   0.000571721  -0.007397961   0.004280055   0.001078181  -0.372700969  -0.008299171
                         0.009163873   0.006964716   0.000230504  -0.002265006  -0.001688381  -0.000135409   0.373960681  -0.000791196

   37    4.2  1.5  0.5  -0.001166806  -0.001801909  -0.002880892   0.002562736  -0.005104684  -0.000538441   0.025017299   0.008807378
                        -0.001681664  -0.001126251   0.000305609  -0.009462319  -0.012779220  -0.002986089   0.027058628   0.000206498

   38    5.2  1.5  0.5  -0.001818324   0.001881865   0.009734925   0.001240806  -0.001057718  -0.000057955   0.007153129  -0.034251393
                        -0.001053530   0.000269655   0.001628268  -0.002546221  -0.003558632  -0.000802848   0.006368226   0.000370778

   39    6.2  1.5  0.5   0.001823042   0.001048952  -0.000505386   0.010085029  -0.013468865  -0.003137956  -0.020346092  -0.000992155
                        -0.001573257  -0.001212806  -0.000230012   0.002862232   0.005274566   0.000539170   0.018316857  -0.000390191

   40    7.2  1.5  0.5  -0.001409792   0.001224361   0.001261264   0.000046818  -0.000344651   0.002769612  -0.000967140   0.000654287
                         0.003329433  -0.005443193  -0.008530662  -0.000649818   0.001351657  -0.005705710  -0.000507605   0.090308173

   41    8.2  1.5  0.5  -0.001782108   0.001581495  -0.000943218  -0.000050438  -0.000838771   0.006750874  -0.000967583   0.000417440
                         0.004319136  -0.007060133   0.006566012   0.000477298   0.003299549  -0.013907259  -0.001212889   0.106777583

   42    9.2  1.5  0.5  -0.006639950   0.005860179  -0.001212876  -0.000086326   0.000000456  -0.000006688   0.003361753  -0.001751368
                         0.015993502  -0.026144344   0.008666236   0.000596886  -0.000002901   0.000013746   0.003469520  -0.350827089

   43    1.2  1.5 -0.5  -0.004072546  -0.002189230  -0.000288447   0.001695042   0.008425998   0.001888385  -0.124545370  -0.006856895
                         0.003832177   0.002265081   0.000705684   0.000509607  -0.003125574  -0.000070652   0.121824771  -0.016128007

   44    2.2  1.5 -0.5   0.002024915  -0.002256448   0.001902468   0.000173016   0.000170366   0.002113142  -0.008923176  -0.012267878
                        -0.004698870   0.008182007  -0.014492112  -0.001042908   0.000768766  -0.003899415   0.001919098   0.312277579

   45    3.2  1.5 -0.5  -0.008120773   0.013227250   0.007696165   0.000616355   0.001058864  -0.004086535  -0.005352201   0.527951480
                        -0.003495343   0.003207766   0.000793180   0.000010210   0.000244168  -0.002114174   0.006391884   0.004454025

   46    4.2  1.5 -0.5  -0.001040024   0.000216257   0.001322455  -0.002534744  -0.000838811   0.006375674   0.006124619   0.001194883
                         0.001853015  -0.002035354  -0.009713609  -0.001402858   0.002915998  -0.012194960  -0.006332581   0.036832145

   47    5.2  1.5 -0.5   0.001521385   0.001089335  -0.000151869   0.009600987  -0.000139162   0.001413530  -0.024642702  -0.000619526
                        -0.001139964  -0.001797102  -0.002828388   0.002289337   0.000792816  -0.003432864   0.023791440   0.009557078

   48    6.2  1.5 -0.5   0.001502399  -0.002354496  -0.010403786  -0.000555059  -0.003067006   0.012863795  -0.000432240   0.027347895
                         0.000560352  -0.000504940  -0.001288960   0.000015158  -0.000854954   0.006614693   0.000974571  -0.001250341

   49    7.2  1.5 -0.5   0.003687126   0.002835054   0.000209808  -0.002158654   0.002176051   0.000205648  -0.062959327   0.000331971
                         0.004187184   0.002243903  -0.000616795   0.008348844   0.005957406   0.001379662  -0.064746562  -0.001040585

   50    8.2  1.5 -0.5   0.004776650   0.003636783  -0.000139322   0.001686904   0.005304110   0.000499462  -0.074694699  -0.000163048
                         0.005434172   0.002933369   0.000459290  -0.006415336   0.014520763   0.003367655  -0.076304184  -0.001542962

   51    9.2  1.5 -0.5   0.017691678   0.013502678  -0.000152812   0.002255996  -0.000005258  -0.000000159   0.245145577   0.000043601
                         0.020121455   0.010842452   0.000583415  -0.008454892  -0.000014354  -0.000002932   0.250970834   0.004830843

   52    1.2  1.5 -1.5  -0.002256693   0.004592566   0.018943061   0.001441679   0.000200555   0.000033074   0.014559053   0.143738315
                        -0.000832117   0.001134166   0.002791216  -0.000048025   0.000362568   0.000090260   0.012208310  -0.001332642

   53    2.2  1.5 -1.5  -0.006242464  -0.004478757   0.001032300  -0.000802887  -0.002545247  -0.000214853  -0.224453397   0.007404789
                        -0.007361967  -0.003920006  -0.000063281   0.002989321  -0.007544094  -0.001740479  -0.242317176  -0.004659771

   54    3.2  1.5 -1.5  -0.007324378  -0.003926659  -0.000026338   0.002999327  -0.007540859  -0.001739837  -0.262120719  -0.003569122
                         0.006098235   0.004710783  -0.000032471   0.000876331   0.002547651   0.000215775   0.244644814  -0.000166818

   55    4.2  1.5 -1.5   0.004100155   0.006370754  -0.000778076   0.000747908   0.003442065  -0.003600301  -0.082556016  -0.034407440
                         0.006006043   0.004062559   0.000083969  -0.002678844   0.007871703  -0.000089926  -0.090135673  -0.001542493

   56    5.2  1.5 -1.5   0.006587307  -0.006910443   0.002684616   0.000334747  -0.002498114   0.014286484  -0.025581592   0.128338663
                         0.003691244  -0.000962827   0.000424726  -0.000709894   0.001133190   0.007351164  -0.020979576  -0.001097798

   57    6.2  1.5 -1.5  -0.006639817  -0.003862548  -0.000127437   0.002765178  -0.007969698  -0.001487511   0.087535735   0.004682915
                         0.005715246   0.004315853  -0.000043960   0.000807412   0.002653952   0.000391098  -0.081365600   0.000011666

   58    7.2  1.5 -1.5  -0.001785701   0.001585339  -0.000947217  -0.000050005   0.000843026  -0.006769953  -0.001011206   0.000511785
                         0.004333766  -0.007083113   0.006585317   0.000477982  -0.003309489   0.013955139  -0.001278409   0.111919366

   59    8.2  1.5 -1.5   0.001411958  -0.001226949  -0.001256050  -0.000046850  -0.000344624   0.002770932   0.000848311  -0.000496944
                        -0.003333207   0.005446600   0.008514973   0.000647556   0.001351623  -0.005700515   0.000371923  -0.074375899

   60    9.2  1.5 -1.5  -0.001910612   0.001621368   0.004620588   0.000188476  -0.000000370   0.000001824   0.001255236  -0.000981917
                         0.004387792  -0.007171416  -0.031485998  -0.002368435   0.000001543  -0.000005031  -0.000207465  -0.092556465


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.019512020   0.000003146  -0.000000128   0.000852198   0.000005394   0.000074059   0.000000000  -0.000228067
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.001940631  -0.002203846   0.000008755  -0.000262949  -0.000192893   0.000120350  -0.000343937   0.000049542
                        -0.013810295  -0.000251861   0.000241533   0.000995640  -0.000019654  -0.000048368  -0.000117366   0.000282939

    3    3.2  0.5  0.5  -0.002864331   0.004729473   0.000113590  -0.000065133   0.000312344  -0.000307866   0.000630972   0.000268239
                        -0.006451115   0.001685325  -0.000441568   0.000472136  -0.000076835  -0.000058949  -0.000004754   0.000130505

    4    4.2  0.5  0.5  -0.004742668   0.004053961  -0.057029256  -0.046384766   0.031508405   0.053824546  -0.008446948   0.058587260
                        -0.004323669  -0.010621708  -0.072803784  -0.036547043   0.049904676  -0.055792664  -0.110283642  -0.098678659

    5    5.2  0.5  0.5  -0.003770081   0.001934181   0.009527624  -0.050044587  -0.096557834  -0.052079552  -0.003485088   0.031226464
                         0.016887459  -0.002864269  -0.085066444   0.102131296  -0.051324082  -0.116035590  -0.016452817   0.054329521

    6    6.2  0.5  0.5  -0.010225533  -0.001470631   0.010849652  -0.091440076   0.027114657   0.021636107  -0.049299557   0.111663216
                         0.001110904   0.003659471   0.074703046  -0.026069815  -0.072464429  -0.036895993   0.093934654  -0.044002993

    7    7.2  0.5  0.5  -0.000003819  -0.000457480  -0.062459300   0.008152062   0.002812805  -0.060883323  -0.004038619  -0.008765110
                         0.006148702  -0.005134776   0.182399595   0.042178802  -0.005499209  -0.053197625  -0.087767980   0.004365679

    8    8.2  0.5  0.5   0.001454327   0.005105138  -0.070781520   0.015579814   0.029541919   0.010163065  -0.002561293  -0.014791514
                        -0.001939903  -0.017522562   0.006019375  -0.001450620   0.142782798  -0.107762360   0.093124569   0.035470701

    9    9.2  0.5  0.5  -0.256868081   0.007711011   0.000327848   0.012627684   0.003834282   0.004490313   0.002446489  -0.006664635
                        -0.022737743   0.003117389  -0.000844361   0.002641894  -0.001893700  -0.001031599  -0.000468746   0.001866088

   10   10.2  0.5  0.5  -0.007702693   0.014174125   0.001078389  -0.004414945  -0.003463237  -0.002823005  -0.000206718   0.005491104
                        -0.191189094   0.010509026  -0.001391904   0.014483427  -0.004751381  -0.006074565  -0.003177376   0.009219869

   11   11.2  0.5  0.5  -0.007903651  -0.065722339  -0.001410610  -0.000256286  -0.002189902   0.000734339  -0.005993441  -0.000865543
                        -0.043723407  -0.019192444   0.008495945   0.003260430  -0.000938652  -0.001228157  -0.001158874   0.002142003

   12   12.2  0.5  0.5   0.000011036  -0.000085321  -0.002686136  -0.000003304   0.000984982   0.000464128  -0.000411254   0.000028789
                         0.000000760   0.000239222  -0.000420241   0.000154855   0.005747118  -0.005337197   0.006646779   0.002301470

   13    1.2  0.5 -0.5  -0.000002669  -0.016553780   0.000527104   0.000000079  -0.000055375   0.000004033  -0.000190992   0.000000000
                        -0.000001666  -0.010329147  -0.000669629  -0.000000100   0.000049177  -0.000003582   0.000124646  -0.000000000

   14    2.2  0.5 -0.5   0.002003047  -0.008957214  -0.000944981   0.000184374  -0.000122104  -0.000131178  -0.000113147   0.000223881
                         0.000952982   0.010689182  -0.000409210   0.000156273   0.000043750   0.000142781  -0.000264020  -0.000286260

   15    3.2  0.5 -0.5  -0.004904598  -0.005845116  -0.000411274  -0.000417227   0.000191051   0.000284563   0.000153308  -0.000530998
                        -0.001073847   0.003956753  -0.000240848  -0.000183865  -0.000248507  -0.000149953  -0.000255892   0.000340866

   16    4.2  0.5 -0.5   0.002183515  -0.006312463   0.000027379  -0.021932844  -0.077292881  -0.009578653   0.102994338  -0.053199901
                        -0.011157398   0.001157509   0.059052791  -0.089842514  -0.005976092  -0.058236635   0.050617300  -0.096972177

   17    5.2  0.5 -0.5  -0.000124669   0.005741279  -0.111205089  -0.072735414  -0.038109824  -0.038117063  -0.003542689  -0.006073471
                        -0.003453919  -0.016322914  -0.023847234  -0.045129094  -0.121343229   0.102492274  -0.062563873  -0.015682920

   18    6.2  0.5 -0.5  -0.000689560  -0.008087146  -0.036073035   0.051988383  -0.040677373   0.068392017   0.117560049   0.092623712
                         0.003883168  -0.006355605   0.087975331   0.054730870  -0.013220697   0.036177756  -0.024177925   0.051720533

   19    7.2  0.5 -0.5   0.003106335   0.003251720  -0.028100446   0.181956014   0.010198730   0.005754771  -0.009726220  -0.044586040
                        -0.004114109  -0.005218512  -0.032494190   0.063739985  -0.080204440   0.002244057   0.001134442  -0.075707422

   20    8.2  0.5 -0.5   0.004944838   0.000206902   0.010776327   0.048509845  -0.079155755  -0.072722249  -0.031772888   0.053040607
                        -0.017568471   0.002415675  -0.011344852  -0.051894618  -0.073826692  -0.126376924  -0.021620433   0.076586158

   21    9.2  0.5 -0.5  -0.008192199  -0.229960778   0.005734606  -0.000866252  -0.004042466   0.004124399  -0.006601094  -0.002304967
                        -0.001437247  -0.116688716  -0.011556483  -0.000264645   0.002210334  -0.001130110   0.002079714   0.000944542

   22   10.2  0.5 -0.5  -0.017588370  -0.107745325  -0.014111338  -0.001760720  -0.001922858   0.000565524  -0.000440510  -0.001563429
                         0.001412334   0.158125096  -0.005489222  -0.000013563  -0.006416565   0.005852334  -0.010722134  -0.002773832

   23   11.2  0.5 -0.5   0.065918072  -0.029851384  -0.002720455   0.007548323  -0.001364598  -0.001014129  -0.001895514   0.004385768
                         0.018509011   0.032910468  -0.001815271   0.004146530  -0.000430690   0.002155987  -0.001320745  -0.004246100

   24   12.2  0.5 -0.5  -0.000054252   0.000009765  -0.000123723   0.001331226  -0.003891057  -0.003079737  -0.001233721   0.003977086
                         0.000248120   0.000005197  -0.000093185  -0.002370604  -0.003682494  -0.004951240  -0.001943071   0.005341497

   25    1.2  1.5  1.5   0.570734862  -0.012411306  -0.043283478  -0.335269651   0.193249435   0.255373347  -0.039346134   0.113711048
                         0.151836062  -0.014076707   0.014506110  -0.172704570  -0.192896535  -0.173958210   0.010468699  -0.090549985

   26    2.2  1.5  1.5   0.030024847  -0.033612558   0.484316475  -0.021491980  -0.017505003  -0.012126949  -0.021174991   0.007024949
                         0.010802656   0.110977364   0.104239269  -0.039489735  -0.227246325   0.188027658   0.301854030   0.098399319

   27    3.2  1.5  1.5   0.003476465  -0.070226222   0.098233900  -0.032031404  -0.317962137   0.294202486  -0.064864514  -0.021108225
                         0.002885748  -0.019273140  -0.458515999   0.002112852   0.044557394   0.030819297   0.003455581   0.001597973

   28    4.2  1.5  1.5   0.009099564  -0.007559569  -0.121718493   0.001229604   0.021633949   0.016254343   0.004513624  -0.017177233
                         0.002998114   0.027117122  -0.026821779   0.007842333   0.110966856  -0.108857039   0.111015965   0.054025342

   29    5.2  1.5  1.5  -0.031952453  -0.002363804  -0.033472594  -0.000663155  -0.009096225  -0.017674391  -0.030789655   0.070327015
                        -0.008157999   0.007834858  -0.003902537   0.001398195   0.046667958  -0.015797797   0.047371793  -0.043166687

   30    6.2  1.5  1.5   0.000279612   0.038419727   0.029238402  -0.008698025  -0.033184547   0.028767340   0.188411133   0.066379454
                        -0.000471351   0.011296410  -0.137858179   0.001220919   0.002914574   0.005382755   0.010513514  -0.002579884

   31    7.2  1.5  1.5  -0.019397144   0.001371639  -0.002723375   0.030388325   0.054426622   0.043737541   0.011598438  -0.037512643
                         0.073535914  -0.001610092  -0.003038416  -0.058758798   0.050460879   0.068626866   0.017884686  -0.049599095

   32    8.2  1.5  1.5  -0.025276473   0.001308275  -0.006687434   0.075597062   0.086564728   0.069645722  -0.019510327   0.063764301
                         0.094529892  -0.002553774  -0.007627207  -0.145631131   0.080353833   0.109288278  -0.030548167   0.084767339

   33    9.2  1.5  1.5  -0.090325302   0.005051362  -0.000914929   0.009920078   0.002026127   0.001438872   0.000578938  -0.001835077
                         0.339268696  -0.008803458  -0.000859145  -0.019047635   0.001789376   0.002453964   0.000870398  -0.002468347

   34    1.2  1.5  0.5  -0.002704084   0.052678339   0.004031454  -0.005500232   0.169275156  -0.170290728   0.619298976   0.199340631
                         0.023663168   0.015834963  -0.012474486   0.014046659  -0.032482146  -0.022402973   0.048296267  -0.018953613

   35    2.2  1.5  0.5   0.127925372  -0.005240829  -0.010797131   0.134397275   0.123632980   0.081323482  -0.046511263   0.264645189
                        -0.457727220   0.011757411  -0.014197329  -0.243978498   0.115470453   0.155002861  -0.117007915   0.330434450

   36    3.2  1.5  0.5  -0.249266148   0.007875686  -0.013014011  -0.238126176   0.211799848   0.282706195   0.048841171  -0.116383619
                        -0.078989251   0.003211043   0.010586349  -0.130795017  -0.220888289  -0.176334062  -0.031881255   0.102515366

   37    4.2  1.5  0.5  -0.034403919   0.033822844  -0.003774260   0.016276944   0.034755072  -0.053115759  -0.051436770   0.084964934
                         0.118859431   0.006720351   0.012197423  -0.027075206  -0.016230268  -0.016659765  -0.043649465   0.116684750

   38    5.2  1.5  0.5  -0.010259486  -0.118461061   0.008909339   0.000184867  -0.176276569   0.158104329   0.077758907   0.051292743
                         0.032692599  -0.037380279  -0.051118717  -0.007383767   0.024588044   0.010909024  -0.006238035   0.032972070

   39    6.2  1.5  0.5  -0.121870159   0.000322001   0.001992006   0.032995740  -0.045001508  -0.052074984  -0.036076397   0.106077682
                        -0.035543497   0.001046241  -0.002691871   0.017815957   0.045394382   0.036317053   0.026241027  -0.084032485

   40    7.2  1.5  0.5  -0.000385215  -0.034117642   0.237591343  -0.002592684   0.002711179   0.001959140  -0.002036020  -0.000006740
                         0.003408188   0.111371747   0.045000458  -0.014819631   0.018665120  -0.017352944   0.027381707   0.009401858

   41    8.2  1.5  0.5  -0.000239877   0.025137714  -0.100091886   0.001107124   0.003455288   0.001835436  -0.006423607   0.000188173
                        -0.002360040  -0.081365714  -0.018848482   0.006246691   0.020991334  -0.019223830   0.095577727   0.032811744

   42    9.2  1.5  0.5   0.001028530  -0.027938442   0.008764958  -0.000180282   0.001005597   0.000565944  -0.000785307   0.000000630
                         0.002442398   0.089130108   0.001723768  -0.000576927   0.006011057  -0.005566881   0.012355487   0.004230578

   43    1.2  1.5 -0.5   0.053074327  -0.010232540   0.014439415   0.012295581  -0.112452316  -0.148137956  -0.177294067   0.492228558
                         0.014452312   0.021507039   0.004366289   0.004547979   0.129827970   0.088115347   0.093073844  -0.378912652

   44    2.2  1.5 -0.5   0.001777801   0.133778215  -0.274837964   0.004477507  -0.042118961  -0.015766792  -0.041030306   0.024998463
                        -0.012749213  -0.456050982  -0.045301527   0.017265402  -0.169898172   0.168433807   0.421355570   0.123406753

   45    3.2  1.5 -0.5   0.008381485   0.253289443   0.044512263  -0.016367867   0.328472712  -0.305040231   0.153492055   0.058325589
                         0.001444967   0.064941301  -0.268011325   0.003678069  -0.055876397  -0.024520793   0.022242662   0.000005224

   46    4.2  1.5 -0.5   0.032252500  -0.033733135  -0.031342458  -0.011918793  -0.028652817  -0.036764057  -0.007380698  -0.019219181
                         0.012203447   0.119051542  -0.003956770  -0.004578704   0.047726804   0.010942610   0.144152337   0.064665602

   47    5.2  1.5 -0.5  -0.120289175  -0.008602563  -0.005916261   0.045678006   0.110972650   0.148131129  -0.024934121   0.068527506
                        -0.030997138   0.033167138  -0.004421770   0.024617459  -0.113141754  -0.098666963   0.055645238  -0.037273874

   48    6.2  1.5 -0.5   0.000827035   0.122209072  -0.006409455   0.003347284  -0.063052454   0.063791090  -0.134759967  -0.044553318
                        -0.000717161   0.034360130   0.036946530   0.000099734   0.007424305   0.004059875  -0.012396947  -0.002258261

   49    7.2  1.5 -0.5   0.030012228  -0.001477392  -0.010041133   0.111595941   0.012987631   0.010366892   0.005144073  -0.016670056
                        -0.112547526   0.003095391  -0.011203532  -0.214525135   0.011674089   0.015756419   0.007869783  -0.021817710

   50    8.2  1.5 -0.5  -0.021746299   0.001452852   0.004223659  -0.047098663   0.014137447   0.011355173   0.017775130  -0.057615786
                         0.082337005  -0.001875247   0.004733665   0.090307070   0.013155115   0.017989862   0.027580622  -0.076529641

   51    9.2  1.5 -0.5   0.023480457  -0.002165534  -0.000341821   0.004066852   0.004119701   0.003239585   0.002311625  -0.007410331
                        -0.090406862   0.001527626  -0.000498502  -0.007953400   0.003786623   0.005162279   0.003543188  -0.009917750

   52    1.2  1.5 -1.5   0.017981450   0.564583093  -0.071666649   0.038170256  -0.306457994   0.272582691   0.144714464   0.038671414
                        -0.005372304   0.173315907   0.370265444  -0.025038337   0.039503203   0.015908929   0.013683055  -0.012737095

   53    2.2  1.5 -1.5  -0.030231959   0.031191386   0.017736417  -0.217653322   0.133922197   0.137808139  -0.047895557   0.182706028
                         0.111945559   0.006729506   0.041312999   0.445034049   0.132537949   0.181538520  -0.086242631   0.241210993

   54    3.2  1.5 -1.5   0.069781835   0.004477033  -0.021472379  -0.421046440  -0.199513983  -0.267331232  -0.018550162   0.056208556
                         0.020824786  -0.000607888   0.023862354  -0.206413944   0.218401242   0.177818150   0.010198147  -0.032556789

   55    4.2  1.5 -1.5  -0.007941632   0.009307090  -0.005401704   0.054210075  -0.084437169  -0.057508608  -0.043911509   0.056894052
                         0.027007700   0.002273502  -0.005816848  -0.112232202  -0.070600447  -0.097336689  -0.035854907   0.095435759

   56    5.2  1.5 -1.5  -0.002142142  -0.031426734  -0.001508832   0.017637098   0.002725249  -0.037789964   0.082486502   0.051674672
                         0.007898342  -0.009993627  -0.000343731  -0.028715451  -0.023548408  -0.028854084  -0.002286665   0.022843334

   57    6.2  1.5 -1.5  -0.038574889  -0.000012301  -0.006339289  -0.126408963  -0.017935409  -0.026747826   0.056998625  -0.152036529
                        -0.010754638   0.000547908   0.006079449  -0.062293946   0.023126932   0.019856048  -0.034118095   0.111777380

   58    7.2  1.5 -1.5  -0.000311343   0.022471646   0.064966579  -0.000703014   0.012866752   0.007188239  -0.004306927   0.000061613
                        -0.002092094  -0.072655385   0.012465562  -0.004019268   0.080355871  -0.073870743   0.062038045   0.021316237

   59    8.2  1.5 -1.5   0.000241974   0.028597345   0.161190600  -0.001856869   0.020495017   0.011368669   0.007070426  -0.000356917
                        -0.002859160  -0.093578803   0.030674619  -0.009972366   0.127962528  -0.117562511  -0.105836652  -0.036245219

   60    9.2  1.5 -1.5   0.000374798   0.102968888   0.021102792  -0.000109182   0.000553627   0.000326772  -0.000187728  -0.000009123
                        -0.010142813  -0.335647608   0.003986542  -0.001250321   0.002790303  -0.002683333   0.003070016   0.001045313


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.002094991  -0.000037978   0.000018231   0.000132195   0.000018972   0.000366309  -0.000000021  -0.000009373
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000034229   0.000250690   0.000104118  -0.000291929   0.000008834   0.000082528  -0.000018631   0.000011250
                        -0.001831806   0.000843230   0.000074629  -0.000117775   0.000004434  -0.000149616   0.000016652  -0.000003788

    3    3.2  0.5  0.5   0.000019378  -0.000946694  -0.000216057  -0.000142916  -0.000009520   0.000078482   0.000021939   0.000025489
                        -0.000880225  -0.001524899  -0.000083262  -0.000036944  -0.000028690  -0.000069049  -0.000016832  -0.000005108

    4    4.2  0.5  0.5   0.000019175  -0.000663715  -0.130222880  -0.033501884   0.047908322   0.022896041   0.001015741  -0.004597100
                         0.000566359   0.000053518   0.294009572   0.215576571  -0.002131132   0.036234356   0.017144636   0.013114628

    5    5.2  0.5  0.5  -0.001080198  -0.000301679  -0.019499245  -0.060116045   0.042730630  -0.042200744  -0.012099791  -0.000235444
                        -0.002949999  -0.000015073   0.003868886  -0.041172226  -0.006283901  -0.258024463   0.014273086   0.000728727

    6    6.2  0.5  0.5  -0.000346547   0.000416854   0.117873950  -0.126887496  -0.002023140   0.024749215   0.001634624   0.007971212
                        -0.000585885   0.000125444  -0.164233946   0.292953955  -0.025146869  -0.057183097  -0.013547568   0.001874600

    7    7.2  0.5  0.5  -0.000301230  -0.000114746  -0.047920405   0.007651116  -0.034108368  -0.017700764   0.028032335   0.018948870
                        -0.001036555   0.000921568   0.193415801  -0.048435737  -0.054994077  -0.088511908  -0.012268583  -0.000018463

    8    8.2  0.5  0.5   0.000123685   0.000517410   0.061998118   0.009218908   0.268917934  -0.013980399   0.014639390   0.002130582
                         0.000256546  -0.000302298  -0.134415461  -0.041148935  -0.155783588   0.032560946   0.012684595   0.009082196

    9    9.2  0.5  0.5  -0.338726658   0.027102871   0.000083831  -0.000542128   0.000044939   0.001279919   0.000049675  -0.000267615
                         0.035923417   0.030452257  -0.000077700   0.001426831  -0.000038382   0.000234025  -0.000189598   0.000260961

   10   10.2  0.5  0.5   0.044256924   0.062070002  -0.001024857  -0.000004289  -0.000323000   0.000048931  -0.000567629   0.001270265
                         0.332066285   0.043364220  -0.000510704   0.000460455  -0.000646081  -0.001709439   0.000461223  -0.000205819

   11   11.2  0.5  0.5  -0.031376263  -0.154770696   0.004568747   0.000371076   0.001344869  -0.000027390  -0.000022200   0.000385209
                         0.071716503  -0.296720232   0.002049401  -0.000163784   0.002394100  -0.000553391   0.000020790  -0.000052028

   12   12.2  0.5  0.5   0.007403227   0.412714376  -0.001179221   0.000163826  -0.004283997   0.000208469  -0.000167916  -0.000023921
                        -0.048389406  -0.227742411   0.002622135   0.000218814   0.002373107  -0.000079812  -0.000205418  -0.000141497

   13    1.2  0.5 -0.5  -0.000028287  -0.001560404   0.000089474  -0.000012340   0.000222804  -0.000011540  -0.000007170   0.000000016
                        -0.000025341  -0.001397901  -0.000097313   0.000013421   0.000290758  -0.000015059  -0.000006036   0.000000014

   14    2.2  0.5 -0.5   0.000749373   0.001196794  -0.000110889  -0.000015534  -0.000068561  -0.000008892   0.000006166   0.000003528
                        -0.000460784  -0.001387217   0.000294613   0.000127156   0.000156509  -0.000004315   0.000010144   0.000024738

   15    3.2  0.5 -0.5  -0.001722624   0.000572905  -0.000069535   0.000084943  -0.000007072   0.000028563   0.000016209  -0.000005943
                         0.000504095  -0.000668545   0.000130211  -0.000215401   0.000104294  -0.000009893   0.000020323  -0.000027006

   16    4.2  0.5 -0.5  -0.000458642  -0.000392190  -0.181368641   0.304570056   0.042687418  -0.027448218   0.004929550  -0.011818817
                        -0.000482731   0.000409044  -0.121247887   0.103134415  -0.003865437  -0.039323586  -0.012993319   0.012461374

   17    5.2  0.5 -0.5  -0.000234756   0.002772972  -0.010380345   0.016045794  -0.230475751  -0.021002663   0.000289214   0.000063875
                        -0.000190071  -0.001476465   0.072120313  -0.011735473   0.123444135  -0.037739665  -0.000709106   0.018711543

   18    6.2  0.5 -0.5   0.000394188   0.000649054  -0.301535476  -0.200679528  -0.030335728   0.021190943   0.007305243   0.007474657
                         0.000184715  -0.000205146  -0.104875228  -0.024388193   0.054425856  -0.013689486   0.003699697  -0.011416570

   19    7.2  0.5 -0.5   0.000529459   0.000916014   0.040833770   0.174814290  -0.081022867   0.064397788   0.014483887  -0.013543155
                        -0.000762973  -0.000571055   0.027150755   0.095634728   0.039786554  -0.006376059   0.012217898  -0.027439258

   20    8.2  0.5 -0.5   0.000183670  -0.000263306   0.036530838  -0.140910384   0.017341875  -0.039913341   0.007479153  -0.019368399
                         0.000570406   0.000108553   0.021064685  -0.045338135  -0.030901879  -0.308208220  -0.005575654   0.000275334

   21    9.2  0.5 -0.5   0.040506457   0.228322242  -0.001417271  -0.000113938   0.000964257   0.000003132  -0.000036655   0.000084107
                        -0.004597011   0.252774988  -0.000566650   0.000009121   0.000873595  -0.000059016  -0.000371987  -0.000177034

   22   10.2  0.5 -0.5   0.075166507  -0.254537810  -0.000341860   0.000317712  -0.001327109   0.000709290   0.000839190   0.000137188
                         0.009117943   0.217800818  -0.000308494  -0.001100095   0.001078590  -0.000136591   0.000975548   0.000718407

   23   11.2  0.5 -0.5  -0.313266391  -0.024483597   0.000371725  -0.001583654  -0.000455915  -0.002718327   0.000261175   0.000003593
                         0.117732886   0.074352405  -0.000162307   0.004750320   0.000314855   0.000388698   0.000287890   0.000030202

   24   12.2  0.5 -0.5   0.155437343   0.026774133  -0.000050194   0.002728383   0.000063448   0.000722043  -0.000109428   0.000260751
                         0.445015724  -0.040981560  -0.000268699   0.000906688   0.000214018   0.004843854   0.000092838  -0.000048999

   25    1.2  1.5  1.5   0.002764701   0.014921316  -0.001167790   0.004714666  -0.001103657  -0.017000997   0.000324839  -0.000292005
                        -0.002379327  -0.005489976  -0.000403493  -0.014346680   0.000582120   0.002454768   0.000373845  -0.001427397

   26    2.2  1.5  1.5  -0.003921499  -0.265630363  -0.005491615   0.001005145   0.006634387  -0.001222866   0.002536065   0.000252714
                         0.031684417   0.155771262   0.011724700   0.000208222  -0.003216714   0.000234909   0.003289355   0.002092431

   27    3.2  1.5  1.5  -0.033235524  -0.162343233   0.004528604   0.000433077  -0.008359189   0.000143286   0.002018954   0.001289688
                        -0.004306632  -0.278990798   0.002360095  -0.000435159  -0.015230124   0.000883001  -0.001446947  -0.000116588

   28    4.2  1.5  1.5   0.018702836  -0.036807868  -0.051857985  -0.023832553   0.088331277  -0.126721882  -0.069720335  -0.009238653
                        -0.002557721   0.019198209   0.132405400   0.108573582  -0.044336544   0.019450906  -0.104333547  -0.086925408

   29    5.2  1.5  1.5  -0.071908464  -0.003168484  -0.050976212   0.122330224   0.045757598   0.453489644  -0.052068319   0.007873325
                         0.026138221   0.009093027   0.042084356  -0.361006486  -0.023071061  -0.066116249  -0.050616788   0.047990251

   30    6.2  1.5  1.5   0.001783539   0.017222102  -0.027171378   0.000234074   0.091077229   0.007498094   0.313997313   0.206396891
                         0.001034554   0.028997515  -0.015606109  -0.006779001   0.167635463  -0.010510328  -0.247500719  -0.025471242

   31    7.2  1.5  1.5   0.022608145   0.003903004  -0.001154097   0.088794902   0.005765521   0.055168685   0.034203599  -0.086446841
                         0.064743497  -0.005955779  -0.008081852   0.028845300   0.018855367   0.378318032  -0.032621585   0.019019285

   32    8.2  1.5  1.5  -0.009070631  -0.001560928   0.003009290  -0.177005323  -0.000004953   0.000369118  -0.120703413   0.305861393
                        -0.025914224   0.002346553   0.017089219  -0.058733645  -0.000121642   0.005243924   0.108346702  -0.061748928

   33    9.2  1.5  1.5  -0.000014074  -0.000005852  -0.000012925   0.001324316  -0.000014677  -0.000148745  -0.000005288  -0.000008176
                        -0.000052398   0.000000864  -0.000129313   0.000441297  -0.000051945  -0.001048533  -0.000004338   0.000006723

   34    1.2  1.5  0.5  -0.033837786  -0.166776383   0.021468760   0.000536329   0.006951483  -0.000043331  -0.000516577  -0.000406228
                         0.004119249  -0.304009199   0.009792255  -0.001791900   0.012510003  -0.000501432   0.000413614   0.000084614

   35    2.2  1.5  0.5  -0.067426637  -0.018741740   0.000701676   0.023936742   0.000324546   0.000076586  -0.000471378   0.001086103
                        -0.173762314   0.000810147  -0.001833831   0.007743142   0.000477153  -0.003414357   0.000422909  -0.000204063

   36    3.2  1.5  0.5   0.176642054  -0.018337649   0.000531156  -0.000533320  -0.001003887  -0.022384359   0.000366179  -0.000201302
                        -0.066702540  -0.013228814  -0.000036782   0.003651120   0.000447600   0.003186999   0.000428676  -0.001095111

   37    4.2  1.5  0.5   0.021262753   0.003039058  -0.094597324   0.451792961   0.055530892  -0.011321555   0.031367108  -0.012688654
                         0.055736298  -0.005642008  -0.084331604   0.158048314   0.095559367  -0.151978728  -0.014195558  -0.012067302

   38    5.2  1.5  0.5   0.004509009   0.001716931   0.321712240   0.149780996  -0.215068187  -0.003996690  -0.065605216  -0.047342188
                         0.015491636   0.000002460   0.133336309   0.020072102  -0.384618729  -0.017739369   0.048642322   0.014656279

   39    6.2  1.5  0.5   0.057800386  -0.005396532   0.008054630  -0.012673508   0.013292621   0.386923775   0.163943175  -0.094716519
                        -0.021706857  -0.003360410   0.004334458   0.000740200  -0.014303632  -0.052182333   0.184333004  -0.465261452

   40    7.2  1.5  0.5   0.000425212   0.024251704   0.022915896  -0.003107622   0.056600514  -0.002769600  -0.099219404  -0.013283394
                        -0.002825899  -0.013389508  -0.050931865  -0.004475349  -0.031395261   0.001280318  -0.121684332  -0.079380759

   41    8.2  1.5  0.5   0.001019096   0.057456340   0.047232003  -0.007124863   0.020504883  -0.000547322   0.302232031   0.032987550
                        -0.006727965  -0.031725937  -0.104251083  -0.008799615  -0.011201941   0.000452743   0.381483295   0.251476133

   42    9.2  1.5  0.5  -0.000011487   0.000011778   0.001505479  -0.000212417   0.001206929  -0.000042985   0.000215123   0.000027869
                        -0.000004724  -0.000025645  -0.003391275  -0.000283707  -0.000661533   0.000020569   0.000271034   0.000196034

   43    1.2  1.5 -0.5   0.327072167  -0.022454662  -0.001682086   0.007322392   0.000424368   0.014158022   0.000256268  -0.000128795
                        -0.115151000  -0.025646679  -0.000818011  -0.022431641  -0.000270597  -0.002091341   0.000326355  -0.000649107

   44    2.2  1.5 -0.5   0.013418759  -0.166165524  -0.010501231   0.001824866   0.002663571   0.000576143  -0.000699438  -0.000088232
                         0.013109007   0.084431699   0.022861496   0.000724673  -0.002137542  -0.000032615  -0.000855598  -0.000627108

   45    3.2  1.5 -0.5   0.022485399   0.087059764   0.003048686   0.000386582   0.011085398  -0.000255321   0.000859287   0.000556208
                         0.002382789   0.167547729   0.002078611  -0.000366107   0.019706102  -0.001069086  -0.000708108  -0.000092102

   46    4.2  1.5 -0.5   0.001501109   0.053027580  -0.189444481  -0.001947370   0.127519709   0.109626642   0.017478538   0.014853194
                        -0.006230153  -0.027326093   0.439553112   0.126714959  -0.083453192  -0.014045355  -0.001059455   0.031061100

   47    5.2  1.5 -0.5  -0.001280456   0.013695356  -0.086601262   0.119592649   0.016511617  -0.436105326   0.026777319  -0.018860161
                        -0.001143804  -0.008529899   0.123844489  -0.327070230  -0.007617431   0.063230026   0.041702092  -0.079463288

   48    6.2  1.5 -0.5   0.006261741   0.028567148   0.009122762   0.002260911  -0.193923080  -0.003268423   0.372103201   0.244132877
                         0.001097962   0.054735640  -0.008828416  -0.008863005  -0.338861097   0.019251105  -0.294921423  -0.035428226

   49    7.2  1.5 -0.5  -0.009129037  -0.001568896  -0.001191112   0.053002994   0.000668329   0.009506694   0.061285869  -0.154271496
                        -0.026155014   0.002388530  -0.005316701   0.017603287   0.002977118   0.064022678  -0.052170832   0.029186854

   50    8.2  1.5 -0.5  -0.021625575  -0.003730243  -0.001655345   0.108711114  -0.000026462   0.003580345  -0.187195229   0.476895154
                        -0.061968545   0.005691165  -0.011200747   0.035791675   0.000709815   0.023089280   0.171132610  -0.097183935

   51    9.2  1.5 -0.5   0.000008339  -0.000011708  -0.000065076   0.003515396   0.000009819   0.000209010  -0.000147573   0.000339123
                        -0.000026960  -0.000004146  -0.000348390   0.001187098   0.000046630   0.001360374   0.000132016  -0.000068793

   52    1.2  1.5 -1.5   0.007450552  -0.000471595   0.013752140   0.000493376  -0.008392227   0.000209230  -0.001142679  -0.000489270
                         0.014045454  -0.003616956   0.006239707  -0.001132749  -0.014987672   0.001230099   0.000903888   0.000076780

   53    2.2  1.5 -1.5  -0.093908704  -0.018220866   0.000527038   0.012347876  -0.000557338  -0.001482033   0.001540928  -0.004058542
                        -0.293266656   0.026216035  -0.000880854   0.003893120  -0.001113535  -0.007222598  -0.001437940   0.000883018

   54    3.2  1.5 -1.5  -0.307076496   0.027628323   0.000613457  -0.001327770   0.000788037   0.017173349   0.000911517  -0.000612600
                         0.099474700   0.018968998  -0.000024272   0.004931057  -0.000423344  -0.002628461   0.000919796  -0.002407187

   55    4.2  1.5 -1.5  -0.014605289  -0.012223699  -0.096055487   0.132567510  -0.061638250  -0.018534474  -0.063050698   0.120530327
                        -0.038859695  -0.014384687  -0.055942440   0.051442158  -0.112416633  -0.097080466   0.060547409  -0.034912093

   56    5.2  1.5 -1.5   0.003707431   0.036118346   0.348546782   0.065482243   0.223351096  -0.009518941   0.036930547   0.072431054
                        -0.008886922   0.067449973   0.154290334  -0.009041189   0.400173092  -0.050352968  -0.031641556  -0.005187630

   57    6.2  1.5 -1.5   0.032176313  -0.002018741   0.005148687   0.006902344  -0.003781949  -0.188457955   0.141488027  -0.080806534
                        -0.010106510  -0.000419519   0.004415956  -0.030564556   0.012344443   0.029670007   0.152412595  -0.391562540

   58    7.2  1.5 -1.5  -0.001066985  -0.060039794   0.038865480  -0.005168198   0.333846690  -0.018473319  -0.053882219  -0.005156051
                         0.007040332   0.033137165  -0.084888518  -0.006319652  -0.186318290   0.006892213  -0.070224612  -0.046983711

   59    8.2  1.5 -1.5   0.000403138   0.024047532  -0.076567540   0.010543173   0.004386890   0.000099566   0.194213632   0.022558137
                        -0.002789317  -0.013249133   0.170052749   0.013781826  -0.002896581  -0.000070056   0.244223641   0.160622078

   60    9.2  1.5 -1.5  -0.000003782   0.000045446   0.000571489  -0.000086444  -0.000922749   0.000050158  -0.000001925   0.000006839
                        -0.000004548  -0.000029637  -0.001273560  -0.000097038   0.000519694  -0.000019945  -0.000010409   0.000000087


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000162178   0.000005748  -0.000325190   0.000000335  -0.000370984  -0.000018122   0.000147460  -0.000041495
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000021855  -0.000000354  -0.000107617  -0.000140372   0.000115764   0.000058557   0.000028766  -0.000036612
                         0.000105162   0.000001726   0.000150968  -0.000183531  -0.000437693  -0.000022902   0.000052580  -0.000053233

    3    3.2  0.5  0.5  -0.000027699   0.000001619   0.000032427   0.000384629   0.000023211  -0.000103033   0.000038493   0.000043091
                         0.000049007  -0.000013451   0.000065405   0.000376324  -0.000196318  -0.000047047   0.000053359   0.000079326

    4    4.2  0.5  0.5  -0.000321460   0.003728979   0.088531390   0.078812970  -0.064053046  -0.215817275  -0.189979486   0.161229751
                        -0.000061673  -0.000128232  -0.092004643  -0.129633153  -0.089361158   0.340657275  -0.069786958   0.107892547

    5    5.2  0.5  0.5   0.000348336   0.000345916   0.033859973  -0.014390852  -0.027580475  -0.168666063  -0.027836568   0.092356911
                         0.001106161  -0.000399032   0.308275769  -0.036822396   0.100344913   0.026908302   0.461537746   0.058375286

    6    6.2  0.5  0.5  -0.000733723  -0.001745441   0.186513374  -0.089994454  -0.172566556   0.139881847  -0.396138179   0.001027731
                         0.000417034   0.000207511   0.055199087   0.072011129  -0.045887959  -0.132188183  -0.008312455  -0.141130810

    7    7.2  0.5  0.5   0.000266858   0.001900841   0.000957656   0.150274030  -0.015011908   0.265394192   0.009906437  -0.220987009
                         0.000425629   0.000902649   0.090130283  -0.052162868   0.026785775   0.265487475   0.058141266  -0.396040241

    8    8.2  0.5  0.5   0.000061653   0.001053377  -0.020034276  -0.315488521   0.022998271  -0.054205103   0.046582956  -0.012071658
                        -0.000124129   0.000143035   0.055311871   0.323977492  -0.029572650   0.328919437  -0.047616770  -0.037158417

    9    9.2  0.5  0.5  -0.000957276   0.000013558   0.002224279  -0.000263253   0.001181205   0.000108666   0.001024989  -0.000190076
                         0.000701829  -0.000003988  -0.000126043  -0.000246487   0.001290128   0.000115587  -0.000686911   0.000236919

   10   10.2  0.5  0.5  -0.000676502   0.000019401   0.000445085   0.000270120   0.001449356   0.000400461  -0.000373409  -0.000065455
                        -0.001760629   0.000429408  -0.001081593   0.000560115  -0.002045412  -0.000078787   0.003560144  -0.000789658

   11   11.2  0.5  0.5  -0.000152890   0.000072624  -0.000417056  -0.002045625   0.000458162  -0.001207705  -0.000118383  -0.000301327
                        -0.000443815  -0.001619955  -0.000249976  -0.002023734  -0.000420214  -0.000396066   0.000692180  -0.000646762

   12   12.2  0.5  0.5   0.000027282   0.000685028  -0.000020367   0.003112002  -0.000022068   0.000476107  -0.000233468  -0.000807547
                         0.000004886   0.000015278  -0.000799328  -0.003036898   0.000151043  -0.001748947   0.000070674   0.000524576

   13    1.2  0.5 -0.5  -0.000001132  -0.000031928  -0.000000271  -0.000263159   0.000013243  -0.000271096   0.000015794   0.000056127
                        -0.000005635  -0.000159004  -0.000000197  -0.000191039   0.000012371  -0.000253251   0.000038371   0.000136360

   14    2.2  0.5 -0.5  -0.000001623   0.000098801   0.000221414   0.000001600  -0.000027156  -0.000214196   0.000063161   0.000059572
                         0.000000687  -0.000042130  -0.000066058  -0.000185392  -0.000056709   0.000398869   0.000013594   0.000006587

   15    3.2  0.5 -0.5   0.000012869   0.000042595  -0.000532338   0.000064664   0.000107407  -0.000117055  -0.000089756   0.000063994
                        -0.000004235  -0.000036805   0.000078582  -0.000033879   0.000035956   0.000159303  -0.000009654   0.000015285

   16    4.2  0.5 -0.5  -0.000608415  -0.000123754   0.012376099   0.017594046  -0.074840547  -0.107808780  -0.161139860  -0.136845506
                        -0.003681244  -0.000303027  -0.151205392   0.126463872   0.396261742   0.021574898  -0.108026755  -0.149116505

   17    5.2  0.5 -0.5   0.000323121   0.001153091   0.033277734   0.208503185   0.104883571   0.048345765  -0.089134911   0.416201581
                        -0.000417705   0.000123744  -0.021344272  -0.229579767   0.134802574  -0.092154605  -0.063185762  -0.201415515

   18    6.2  0.5 -0.5   0.000140181   0.000264422   0.030523572   0.183363177  -0.011980561  -0.157427997   0.130116455  -0.158468102
                         0.001752135  -0.000801467   0.111143673   0.064900874  -0.192086212  -0.084269488  -0.054668731  -0.363156185

   19    7.2  0.5 -0.5  -0.001259208   0.000469836  -0.090964886   0.053723619  -0.375170581   0.007315301   0.450343449   0.057535536
                        -0.001685931   0.000177840  -0.130493825  -0.072375119   0.012833984  -0.029821494   0.053608853  -0.012969440

   20    8.2  0.5 -0.5  -0.000347617  -0.000109562   0.064981971   0.016281254  -0.184925571  -0.003381732   0.038956248  -0.026301785
                        -0.001004601   0.000084884   0.447517336  -0.056530487   0.277360276   0.037309864  -0.002980538   0.061200855

   21    9.2  0.5 -0.5   0.000001241   0.000499631   0.000357840   0.001725946  -0.000158313   0.001743866  -0.000146737  -0.000245066
                        -0.000014078  -0.001076713  -0.000044816   0.001408692   0.000010285  -0.000136413   0.000265947   0.001209293

   22   10.2  0.5 -0.5  -0.000424823  -0.001859357  -0.000547643  -0.000275217  -0.000238853  -0.000337180   0.000755133   0.003150035
                         0.000065518  -0.000316641   0.000294585   0.001136750  -0.000330947   0.002484080  -0.000240038  -0.001700393

   23   11.2  0.5 -0.5   0.001573953  -0.000465229   0.002844296  -0.000484354   0.001152902   0.000047943   0.000712772   0.000595018
                        -0.000390129  -0.000062523  -0.000435963  -0.000042714   0.000535012   0.000619833   0.000032470  -0.000372935

   24   12.2  0.5 -0.5  -0.000149843   0.000010161  -0.000734300  -0.000486061   0.000845999   0.000086983  -0.000177715  -0.000023510
                        -0.000668613   0.000025786  -0.004285803   0.000634889  -0.001603053  -0.000125439   0.000946430  -0.000242795

   25    1.2  1.5  1.5  -0.001401621   0.000117045   0.007348131  -0.001087039   0.011728059   0.001136991   0.033438612  -0.009643362
                         0.000337854  -0.000007532  -0.001263567  -0.001045365   0.006259029  -0.001370623   0.005816438   0.001625652

   26    2.2  1.5  1.5  -0.000134093  -0.001550639   0.000250708  -0.002459746   0.001425194  -0.010567157   0.008512767   0.023906704
                         0.000004980   0.000003540   0.000540753   0.001865512  -0.002526837   0.034347869  -0.001689950  -0.014287295

   27    3.2  1.5  1.5  -0.000003515   0.000011794   0.003063113   0.011088185  -0.002977376   0.037166357  -0.001687054  -0.014513978
                        -0.000062327  -0.001691581   0.000035956   0.011305625  -0.000772003   0.011254672  -0.006746562  -0.024424917

   28    4.2  1.5  1.5   0.059478584   0.470270685  -0.085042847   0.189277701   0.003371888   0.083344956  -0.008249037  -0.032166746
                        -0.006060457   0.023193338  -0.032557749  -0.171841179   0.025914115  -0.256783443   0.002938978   0.019548135

   29    5.2  1.5  1.5  -0.156348374   0.130908233   0.312836904   0.005174567  -0.034182012   0.010395269  -0.004891227  -0.007727032
                         0.039941393  -0.000628681  -0.066825939  -0.081281966  -0.010625236  -0.072006142   0.000535176   0.005544496

   30    6.2  1.5  1.5  -0.006558986  -0.015990032  -0.028524688  -0.141876062  -0.029522794   0.352186512  -0.000749904  -0.006723141
                         0.007747688   0.177995852   0.001965652  -0.138073351  -0.009383639   0.105984464  -0.003477121  -0.012683990

   31    7.2  1.5  1.5  -0.083178378   0.005121488   0.072576794   0.048103428  -0.042061816  -0.004900009  -0.027939239  -0.003231011
                        -0.344541511   0.009935303   0.421761289  -0.062084435   0.078871904   0.005340577   0.166698361  -0.042030815

   32    8.2  1.5  1.5   0.001204103   0.000409798  -0.032897621  -0.021728254  -0.149902211  -0.012330023  -0.057286716  -0.006530298
                        -0.003361407   0.001122785  -0.186102718   0.026348103   0.289658527   0.023995606   0.342430185  -0.086434477

   33    9.2  1.5  1.5  -0.000289609   0.000019033   0.000081709   0.000049724  -0.002355332  -0.000213449   0.000515646   0.000066439
                        -0.001202874   0.000031829   0.000534744  -0.000095112   0.004548913   0.000369563  -0.003077785   0.000777380

   34    1.2  1.5  0.5   0.000000056   0.000085119  -0.003612213  -0.013296404   0.000251745  -0.002215125  -0.000302686  -0.001714305
                        -0.000215145  -0.002603392   0.000809834  -0.013825903  -0.000167041  -0.000609600  -0.002459288  -0.002564717

   35    2.2  1.5  0.5   0.000594154  -0.000034534  -0.003130395  -0.002140632  -0.001325208  -0.000141921  -0.006086809  -0.000458421
                         0.002396594  -0.000202462  -0.013431258   0.001363580   0.002465607   0.000195683   0.030535407  -0.007929005

   36    3.2  1.5  0.5  -0.000713263   0.000025611   0.024057457  -0.003752854   0.002749877   0.000151383   0.036492747  -0.009291756
                         0.000226816  -0.000039684  -0.004468586  -0.002817626   0.001568709   0.000183949   0.006844716   0.000514379

   37    4.2  1.5  0.5   0.093859621  -0.007653017  -0.003230975  -0.017741620   0.112769002  -0.005669235   0.012596532   0.006294897
                         0.380110091   0.045061332   0.025942064  -0.024818280  -0.202332401  -0.020561814  -0.068286589   0.026034991

   38    5.2  1.5  0.5   0.024615130   0.006332780   0.023844236   0.079831313   0.021159384   0.059422429   0.000287107  -0.018898510
                         0.095011317  -0.217339183   0.005901800   0.079880402  -0.057582447   0.010814392  -0.027520405  -0.025655408

   39    6.2  1.5  0.5   0.123086796  -0.002851392  -0.092957566   0.014649222   0.171509873   0.015651194   0.005652495  -0.001870809
                        -0.042730364  -0.003736147   0.015927223   0.012867546   0.095168744   0.008501557   0.002651427  -0.001089664

   40    7.2  1.5  0.5   0.017650257   0.507442595  -0.000557190   0.082316506   0.003612770  -0.043502422   0.072020234   0.257281499
                         0.004427591   0.018328370  -0.020785184  -0.079276814  -0.013031899   0.156144201  -0.023208559  -0.160190939

   41    8.2  1.5  0.5   0.008858610   0.293184371  -0.001153932   0.202025179   0.001547053  -0.007394973  -0.041851637  -0.149554035
                         0.001307416   0.014093080  -0.052361502  -0.196750663  -0.001317298   0.023816045   0.013782880   0.093083773

   42    9.2  1.5  0.5   0.000014715   0.000619276   0.000034320  -0.004457474  -0.000062593   0.000308418  -0.000405308  -0.001438248
                         0.000007688   0.000028025   0.001137093   0.004351598   0.000080161  -0.001090416   0.000132137   0.000887879

   43    1.2  1.5 -0.5  -0.002535683   0.000210924  -0.018882356   0.002447424  -0.002034840  -0.000069932  -0.003024179   0.002389384
                         0.000595992  -0.000042412   0.003377369   0.002777415  -0.001066684  -0.000293918  -0.000609063  -0.000656172

   44    2.2  1.5 -0.5  -0.000205298  -0.002466663  -0.000931242   0.010423696   0.000029873  -0.000714746  -0.007506662  -0.025920140
                         0.000006001  -0.000110700  -0.002361026  -0.009030206  -0.000239877   0.002706388   0.002594088   0.017251279

   45    3.2  1.5 -0.5  -0.000033865  -0.000081954  -0.004692252  -0.016843288   0.000236195  -0.003080342  -0.003061043  -0.020219668
                         0.000032923   0.000743958   0.000075476  -0.017749173  -0.000031080  -0.000730864  -0.008788136  -0.031140580

   46    4.2  1.5 -0.5   0.042672756  -0.391149391  -0.028937302  -0.012625468  -0.018179244   0.055715843   0.026471305   0.058351939
                        -0.016374623  -0.017189065   0.009661502   0.022891645   0.011155425  -0.224835480  -0.004088581  -0.037640166

   47    5.2  1.5 -0.5  -0.211838857  -0.097997908   0.111530458  -0.022763007   0.050805252   0.023846299  -0.030917584   0.025339613
                         0.048997175  -0.005428171  -0.017744695  -0.009231703   0.032661943  -0.056522665  -0.007710814  -0.010740537

   48    6.2  1.5 -0.5  -0.004224390   0.017661550   0.019414115   0.065868952   0.017240646  -0.190297207  -0.001719726  -0.004603348
                        -0.002060038  -0.129090329  -0.001807084   0.067498642   0.004471741  -0.047536296  -0.001315234  -0.004217814

   49    7.2  1.5 -0.5   0.117871684  -0.007815807   0.020041856   0.012661531   0.074802045   0.006256161  -0.050204496  -0.005951320
                         0.493903010  -0.016433146   0.112512864  -0.016493028  -0.143798909  -0.011989284   0.298888633  -0.075432971

   50    8.2  1.5 -0.5   0.071537507  -0.003025854   0.047903704   0.031694512   0.010854087  -0.000231257   0.029152713   0.003184493
                         0.284671873  -0.008427841   0.277903277  -0.041695519  -0.022451691  -0.002018705  -0.173727135   0.043947541

   51    9.2  1.5 -0.5   0.000149396  -0.000010435  -0.001050776  -0.000695779  -0.000518994  -0.000008982   0.000273609   0.000032081
                         0.000601639  -0.000012914  -0.006140143   0.000900028   0.001007360   0.000101306  -0.001667940   0.000425095

   52    1.2  1.5 -1.5  -0.000015659   0.000055300   0.001493802   0.005204152   0.000104797   0.012842967   0.002167249   0.018106301
                        -0.000116237  -0.001440704  -0.000207358   0.005339329  -0.001777745   0.003432349   0.009536257   0.028707727

   53    2.2  1.5 -1.5   0.000301809  -0.000021517   0.000894615   0.000520560  -0.015725537  -0.000683479   0.004112300   0.001677455
                         0.001520988  -0.000132449   0.002954683  -0.000290320   0.032313286   0.002819386  -0.027545350   0.008515238

   54    3.2  1.5 -1.5   0.001656153  -0.000061800  -0.015614777   0.002499940  -0.034842220  -0.002702718   0.028110838  -0.006880876
                        -0.000344590   0.000008824   0.002635098   0.001770382  -0.017147169  -0.001468357   0.004124674   0.001007865

   55    4.2  1.5 -1.5  -0.115323273   0.005767913  -0.052221358  -0.087947344   0.114388254   0.020154194  -0.005833142  -0.000422060
                        -0.456500811   0.059507665  -0.250256606  -0.023612655  -0.244539251  -0.016634887   0.037186067  -0.008746775

   56    5.2  1.5 -1.5  -0.025155990   0.008378838   0.043563031   0.213904412   0.041558450  -0.032231733  -0.002186026  -0.001366846
                        -0.128469985  -0.161151866  -0.068817123   0.237860332  -0.059714666  -0.015569874   0.009255795  -0.004726759

   57    6.2  1.5 -1.5  -0.171364262   0.006304766   0.195926502  -0.021928777  -0.329709676  -0.027979445   0.014288259  -0.003500826
                         0.050719763  -0.007955934  -0.028387905  -0.018348034  -0.162971088  -0.013296567   0.001389195   0.000630033

   58    7.2  1.5 -1.5  -0.010749143  -0.354174073  -0.002454976   0.306503764  -0.000065055   0.023105065   0.040096893   0.143516212
                        -0.003065256  -0.013719378  -0.078500891  -0.298672761   0.007247594  -0.086348882  -0.013010305  -0.089286290

   59    8.2  1.5 -1.5  -0.001181490  -0.003058565   0.002104874  -0.135951672  -0.007370384   0.088193728   0.082414012   0.294849907
                        -0.000180731   0.001842310   0.034086787   0.131276876   0.025951801  -0.313997773  -0.026860644  -0.183313207

   60    9.2  1.5 -1.5  -0.000034953  -0.001236349   0.000015636   0.000380268  -0.000096304   0.001384147  -0.000744153  -0.002649846
                        -0.000012394  -0.000047127  -0.000106180  -0.000384739   0.000415768  -0.004931971   0.000234455   0.001648324


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5  -0.000093815  -0.003054736   0.000743093   0.010326623  -0.028508748   0.010859876  -0.000185391   0.000003355
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000263124  -0.000424460  -0.000334363  -0.013335514  -0.002771473   0.005336726   0.000304495  -0.000008541
                         0.000113496   0.001950572   0.016463938  -0.013420857  -0.017245711   0.008858026  -0.000250362  -0.000008015

    3    3.2  0.5  0.5  -0.000665302  -0.000489753  -0.008672013  -0.013996048  -0.007459270  -0.005764448   0.000119203  -0.000004245
                         0.000026768   0.000904682  -0.023490640  -0.003725295  -0.010448845  -0.002636870  -0.000115240   0.000020159

    4    4.2  0.5  0.5   0.002526882  -0.005133021  -0.239017773   0.088425784   0.026415024  -0.001056756  -0.042912808  -0.010835645
                        -0.001601563   0.004663917   0.066584591  -0.095812050  -0.012569600  -0.162187626  -0.116557131  -0.063492151

    5    5.2  0.5  0.5   0.003710421  -0.004526820   0.046754707   0.156945648   0.026542531  -0.083770897  -0.171098339   0.003257249
                        -0.000058780  -0.021306485  -0.001747673   0.112793810  -0.254743056  -0.020951975   0.135354245  -0.091911095

    6    6.2  0.5  0.5  -0.003492509  -0.010581542   0.048581372   0.161775359   0.071746507   0.026381910  -0.150078609   0.004520496
                         0.001645904  -0.002208715  -0.113653197  -0.236675457  -0.005256702   0.093914674  -0.134446958   0.072885803

    7    7.2  0.5  0.5  -0.008176900   0.000358720  -0.122879252   0.015971834   0.087699133   0.223852177  -0.040600618  -0.001804921
                        -0.002515481  -0.007784184  -0.063460948   0.115461316  -0.037273165   0.134844427   0.074691952   0.198100101

    8    8.2  0.5  0.5  -0.001007682   0.001580814   0.136301637  -0.044459250   0.054531175   0.176472635   0.030135651  -0.001525501
                         0.009948444   0.001371699  -0.037795667  -0.025965508  -0.043497237  -0.205025148   0.003991423   0.019956495

    9    9.2  0.5  0.5   0.024653146   0.360670616   0.003703515  -0.061583426   0.279531754  -0.096265586  -0.000062406   0.000042780
                         0.000486823  -0.003358051   0.022879944   0.005317170   0.018775909   0.001191933   0.001103566  -0.000056046

   10   10.2  0.5  0.5   0.076289524  -0.003687338   0.051070735   0.185146346   0.021635429   0.010735605   0.002540810  -0.000029902
                        -0.015927200  -0.341800247   0.015448298   0.113181593   0.210936327  -0.057128998  -0.001517123  -0.000042618

   11   11.2  0.5  0.5  -0.327742277   0.023515094  -0.067321167  -0.040782319  -0.021174965  -0.093291150   0.000720277  -0.000105946
                        -0.014105277  -0.078776940  -0.282572082   0.049110756   0.024015854  -0.080674862  -0.000379603   0.000795170

   12   12.2  0.5  0.5   0.007673275  -0.000069367   0.005366588  -0.000474214   0.001118346   0.003110580  -0.000046700   0.000057119
                        -0.255999298   0.013652218  -0.001419666  -0.001523426  -0.001391310  -0.004285610  -0.000031312   0.000055084

   13    1.2  0.5 -0.5  -0.002992087   0.000091891   0.009848419  -0.000708682   0.007087102   0.018604669  -0.000002727  -0.000150671
                         0.000615493  -0.000018903   0.003106086  -0.000223511   0.008228602   0.021601273   0.000001955   0.000108019

   14    2.2  0.5 -0.5  -0.000808772  -0.000234859  -0.016754759  -0.004633215   0.010194508   0.014875843   0.000002271   0.000393344
                        -0.001825044   0.000164185   0.008788252   0.015802100  -0.001737030  -0.009154503  -0.000011491   0.000026058

   15    3.2  0.5 -0.5  -0.000661992   0.000657051  -0.014468432   0.015336048  -0.005759825   0.012785044   0.000015196   0.000164024
                        -0.000787448  -0.000107831  -0.000657007  -0.019794435  -0.002646953  -0.001166925   0.000013910   0.000024203

   16    4.2  0.5 -0.5  -0.005967471  -0.002797753   0.055512216   0.207921781  -0.123580307  -0.007714243  -0.028187824   0.033036815
                        -0.003534023  -0.001059580   0.117972294   0.135394005   0.105042137  -0.028217704  -0.057914688   0.119731545

   17    5.2  0.5 -0.5  -0.000140979  -0.003646168   0.183604449  -0.044063926  -0.070543931   0.175699030  -0.056199872  -0.217919827
                         0.021781610   0.000690031  -0.060363784  -0.015729825  -0.049800626  -0.186355525  -0.072799955  -0.010313200

   18    6.2  0.5 -0.5  -0.009919495   0.003752511   0.083095627  -0.012146575   0.088376496  -0.042838379   0.038793537  -0.043635143
                         0.004295470   0.000908450   0.274375027  -0.123002682  -0.041298502  -0.057793317   0.061869513   0.196711839

   19    7.2  0.5 -0.5   0.001919782   0.007502361   0.049961168   0.136277041   0.248257375  -0.028989891   0.116891309  -0.076516650
                         0.007552260  -0.004111438  -0.105310478  -0.023562057   0.081615514  -0.090774517   0.159947896  -0.037047268

   20    8.2  0.5 -0.5   0.001272012   0.002991507  -0.050210457  -0.118621462  -0.040183782  -0.002628623   0.012867595   0.022166160
                        -0.001662082   0.009541376   0.011390456  -0.077042829   0.267512927  -0.069704727   0.015330162  -0.020802651

   21    9.2  0.5 -0.5   0.353950225  -0.024049446  -0.057132311  -0.010413942  -0.061919313  -0.196647684  -0.000067423  -0.000693719
                        -0.069381609   0.005444151  -0.023594273   0.020706464  -0.073718943  -0.199550055  -0.000020623  -0.000860527

   22   10.2  0.5 -0.5   0.065256923  -0.077934041   0.210615873  -0.053352367  -0.036281029  -0.173947072  -0.000000530   0.002948925
                         0.335533216  -0.000229128  -0.052251281  -0.000628355   0.045416544   0.121262699  -0.000052058  -0.000247427

   23   11.2  0.5 -0.5   0.038905429   0.318178563  -0.024122033   0.149196925  -0.122009241  -0.004378299   0.000549416   0.000806561
                         0.072423295  -0.079852117  -0.059103227  -0.249237635  -0.018039323   0.031717044   0.000584519  -0.000111164

   24   12.2  0.5 -0.5  -0.002818702  -0.059096682  -0.000910477  -0.004691060  -0.001217287   0.000324378  -0.000014327  -0.000019710
                        -0.013358248  -0.249202933   0.001310243  -0.002968110   0.005153676  -0.001755340   0.000078048   0.000052657

   25    1.2  1.5  1.5  -0.003186281   0.002521097  -0.017265191   0.028183445   0.137411378  -0.050512094   0.158186422   0.009305343
                         0.017360753  -0.001467894  -0.007159900  -0.042192932   0.033435251  -0.006922480   0.222938881  -0.006781656

   26    2.2  1.5  1.5   0.001809528   0.000484955   0.094185789  -0.006841371   0.015155111   0.019282458   0.006200367  -0.145952062
                        -0.339804886   0.018089907  -0.028927541  -0.029529393  -0.008862629  -0.032675870   0.014053265  -0.002933424

   27    3.2  1.5  1.5   0.340669248  -0.018126291   0.026902784   0.025773313   0.013353998   0.036219847   0.003991303  -0.002654172
                         0.001938842   0.000314569   0.088509458  -0.008252774   0.009658345   0.025078560   0.003964573   0.142146560

   28    4.2  1.5  1.5   0.001684974   0.031068936  -0.234572045   0.054488867  -0.041067085  -0.039707565  -0.001511390  -0.141735738
                        -0.073056657  -0.003464857   0.057720441   0.009112447   0.017654137   0.072726242   0.002912875  -0.003671587

   29    5.2  1.5  1.5  -0.004366365  -0.115241816  -0.002687169  -0.126562333   0.081978915  -0.044696077  -0.001633452  -0.038020217
                        -0.018193594   0.028371172   0.050299340   0.218306224   0.027149961   0.012366628  -0.000876297   0.002790412

   30    6.2  1.5  1.5  -0.076104457   0.001351964   0.071287724   0.063800628   0.026410900   0.073655307  -0.002814929   0.002465322
                        -0.000455161   0.000576145   0.232961114  -0.015415600   0.019179539   0.050513120  -0.002181233  -0.159841942

   31    7.2  1.5  1.5   0.001147370   0.024937567   0.032347812   0.171943066   0.042237584  -0.010900936   0.155504788  -0.003928897
                         0.005593797   0.105071757  -0.049803900   0.111727323  -0.175075758   0.061301431  -0.110265466  -0.001301338

   32    8.2  1.5  1.5  -0.000599565  -0.011193745  -0.027768418  -0.151754380   0.042287710  -0.010658334   0.384729611  -0.009590044
                        -0.002537606  -0.047217313   0.042981855  -0.097822028  -0.177586739   0.063472663  -0.272602602  -0.002949979

   33    9.2  1.5  1.5   0.000114867   0.001685040   0.020300953   0.113750880  -0.084252961   0.021355857  -0.003176951   0.000080506
                         0.000411054   0.007275279  -0.031650419   0.072912949   0.352549293  -0.125288230   0.002235995   0.000014642

   34    1.2  1.5  0.5   0.400547928  -0.020508842  -0.011764232  -0.013437207  -0.003677818  -0.008351942   0.008827951  -0.000252161
                         0.012611630   0.010646844  -0.039208834   0.000660180   0.003514258  -0.008064778  -0.008449556   0.005976734

   35    2.2  1.5  0.5   0.018048652  -0.053469331   0.007950161   0.049637227   0.027542083  -0.007641253  -0.193264438   0.004670508
                        -0.010079232  -0.199326593  -0.016760303   0.029242173  -0.109109724   0.038167485   0.129711115   0.001931010

   36    3.2  1.5  0.5   0.014199303   0.193565414   0.029985767  -0.066551003  -0.055791202   0.020098127   0.133525953   0.001676123
                        -0.002333051  -0.051111133   0.018572342   0.105453706  -0.015985993   0.004220151   0.198189803  -0.004798185

   37    4.2  1.5  0.5   0.000391575   0.028022730  -0.019512609  -0.074613900   0.077822900   0.033743783   0.068297821  -0.001843811
                         0.005494737   0.102916050  -0.005434718  -0.044848141  -0.214529361   0.117227042  -0.045922968  -0.041128772

   38    5.2  1.5  0.5   0.003704744   0.004575651   0.021427962   0.005723122  -0.050706830  -0.188331161   0.019727791   0.000143495
                         0.001577371   0.028344266   0.095745022  -0.017528633  -0.113881723  -0.112030308  -0.012197329   0.151117003

   39    6.2  1.5  0.5   0.006333671   0.116143969  -0.021509775   0.053859788   0.218896497  -0.082861870   0.055142359   0.000678516
                        -0.001512947  -0.030202159  -0.012831339  -0.079551440   0.057347996  -0.018542589   0.081278422   0.001499723

   40    7.2  1.5  0.5  -0.001418873  -0.000028422   0.173812129  -0.013535607  -0.043718380  -0.113773952   0.005925405   0.468697926
                         0.046480058  -0.002468600  -0.047587429  -0.049249778   0.052522427   0.157221257  -0.008257620  -0.002589057

   41    8.2  1.5  0.5  -0.004079944   0.000049789   0.182149472  -0.014600749   0.036534607   0.097494742  -0.002368553  -0.187668361
                         0.136178812  -0.007293587  -0.050543130  -0.052751149  -0.044805520  -0.135798225   0.003209716   0.001094782

   42    9.2  1.5  0.5  -0.000417935  -0.000033547   0.354119730  -0.028244510   0.028410144   0.077242841  -0.000014153  -0.001280535
                         0.014881389  -0.000819982  -0.097905939  -0.101982796  -0.035258619  -0.107986414   0.000035909  -0.000011688

   43    1.2  1.5 -0.5   0.022233437   0.389791994   0.012616388  -0.023012859   0.011561174   0.000262651  -0.003687322  -0.012097829
                         0.006296203  -0.093058566   0.004671309   0.033854662   0.001065289  -0.005080095  -0.004710476  -0.001723440

   44    2.2  1.5 -0.5   0.012210818   0.019709336  -0.056134223   0.002540770  -0.023933121  -0.064699356   0.002670691   0.232646609
                        -0.206012029   0.006235931   0.012957931   0.018375454   0.030697743   0.092073295  -0.004290671  -0.007188308

   45    3.2  1.5 -0.5  -0.199893857   0.014378171   0.031750350   0.034183461  -0.016313576  -0.048521761   0.004157912   0.006957719
                        -0.011061792  -0.000575787   0.120587874  -0.008693049  -0.012474439  -0.031840994   0.002922967   0.238872285

   46    4.2  1.5 -0.5  -0.006711666  -0.000723579   0.084648311  -0.020243701  -0.110844758  -0.111763521   0.022465470  -0.082264219
                         0.106451586  -0.005460943  -0.020328629  -0.000686039   0.050933897   0.198967751   0.034500409   0.002471777

   47    5.2  1.5 -0.5   0.001229220   0.003310942  -0.000185759   0.049234282   0.207790121  -0.119379989  -0.087932764  -0.023139993
                         0.028684891  -0.002291482  -0.018438346  -0.084866084   0.069589380   0.035897741  -0.122899139   0.001581546

   48    6.2  1.5 -0.5  -0.119847343   0.006508614  -0.027437832  -0.024373170   0.068125096   0.186303748  -0.000322382   0.002542249
                        -0.006181130   0.000205759  -0.092067767   0.005767344   0.050684204   0.128434352  -0.001614194   0.098185532

   49    7.2  1.5 -0.5  -0.000469554  -0.010754946   0.027722364   0.151449717  -0.044879299   0.011266202   0.382427840  -0.009627044
                        -0.002423698  -0.045240912  -0.042897830   0.097663724   0.188809121  -0.067401593  -0.270985970  -0.003258639

   50    8.2  1.5 -0.5  -0.001518338  -0.031434661   0.029791339   0.158511947   0.039270653  -0.010107144  -0.153159364   0.003795130
                        -0.007133971  -0.132563860  -0.045916682   0.102990295  -0.162493687   0.056922384   0.108456542   0.001228540

   51    9.2  1.5 -0.5  -0.000132357  -0.003407785   0.057611396   0.308272648   0.031413746  -0.008175377  -0.001033904   0.000032425
                        -0.000809924  -0.014491977  -0.088764690   0.199885794  -0.128998832   0.044536162   0.000755612   0.000020938

   52    1.2  1.5 -1.5   0.002765154   0.006618916   0.014187358   0.018619264  -0.038209155  -0.115008108  -0.011514001  -0.001335932
                         0.000929819   0.016362704   0.048716208  -0.001635242  -0.033755782  -0.082297860  -0.000089751  -0.273354905

   53    2.2  1.5 -1.5  -0.003169890  -0.070239013  -0.015406541  -0.081123300  -0.012175093  -0.003174877   0.116908708  -0.003149083
                        -0.017816614  -0.332471225   0.026104174  -0.055917579   0.035934562  -0.017266839  -0.087424043  -0.015034031

   54    3.2  1.5 -1.5  -0.017817920  -0.333291806   0.022097502  -0.052279232   0.042639091  -0.016032948   0.084979787   0.000933817
                         0.003344112   0.070539833   0.015622815   0.076318843   0.011077881  -0.003815427   0.113978616  -0.005547641

   55    4.2  1.5 -1.5   0.031129870  -0.016370454   0.054706488   0.206348122   0.029192209   0.013423517   0.113051930  -0.002925541
                        -0.002866220  -0.071218836   0.007698928   0.125603129  -0.077547482   0.042637814  -0.085567291  -0.001486725

   56    5.2  1.5 -1.5  -0.118594770   0.000611025  -0.055038417  -0.012566521  -0.019798161  -0.074070748   0.032525573  -0.000816956
                        -0.004569468  -0.018700231  -0.246264907   0.048778346  -0.041936924  -0.044398054  -0.019884929   0.001663925

   57    6.2  1.5 -1.5   0.001208150   0.074451921   0.056209390  -0.138057598   0.086341228  -0.031768092  -0.095136644  -0.001016833
                        -0.000836733  -0.015779958   0.033891966   0.200730964   0.022844516  -0.007495246  -0.128470009   0.003412866

   58    7.2  1.5 -1.5   0.003255427   0.000003244   0.197586587  -0.015869623   0.039334616   0.105092059   0.002434853   0.190628512
                        -0.107941459   0.005710255  -0.054835695  -0.057227305  -0.048264727  -0.146257285  -0.003346820  -0.000991214

   59    8.2  1.5 -1.5  -0.001450452   0.000075971  -0.174150299   0.013554255   0.041138095   0.106961935   0.006075177   0.471510558
                         0.048504337  -0.002606367   0.047646765   0.049343764  -0.049497840  -0.147933920  -0.007985207  -0.002616334

   60    9.2  1.5 -1.5   0.000184601  -0.000029689   0.130414398  -0.009840910  -0.080995021  -0.212145942  -0.000056898  -0.003884784
                        -0.007465585   0.000425768  -0.035322027  -0.036290966   0.097943962   0.293910981   0.000058807   0.000033839


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5   0.001461559   0.000007693   0.002511467   0.000092448  -0.000002714   0.009081941  -0.000007709   0.002770911
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000412782   0.000796195  -0.000152621  -0.000001047   0.001423732   0.001212360   0.002859476  -0.004333254
                        -0.000610672  -0.000148014   0.002348419   0.000020058  -0.000964836   0.006061827   0.004896780  -0.002053755

    3    3.2  0.5  0.5   0.000076057  -0.001749219   0.000196478  -0.000039645  -0.003596900   0.001311950  -0.004535799  -0.005051607
                        -0.000296727   0.000526072   0.001086016   0.000162937   0.001516637   0.002823088  -0.005509259  -0.001007227

    4    4.2  0.5  0.5  -0.110313669   0.051288538   0.043974215   0.126493816   0.068593097   0.007664910   0.139894674  -0.010252622
                         0.065535676   0.148303738   0.036939961   0.118477225   0.076468073   0.018356478  -0.115871409   0.008324449

    5    5.2  0.5  0.5  -0.016574569   0.001462875   0.040523451   0.001682070   0.054695586   0.020688540  -0.001747323  -0.082336998
                        -0.185030185   0.013071067  -0.132309963   0.098742067   0.014670668  -0.076925075   0.014728781  -0.033803820

    6    6.2  0.5  0.5  -0.192338001  -0.000372284   0.103623432  -0.030611250  -0.041771105   0.018690335  -0.027902854  -0.046319914
                        -0.019749075  -0.104181926   0.009820376  -0.087679808  -0.010691256  -0.014008088   0.056030806   0.124981663

    7    7.2  0.5  0.5   0.021476839   0.036532311  -0.001371303   0.131662174  -0.073316207  -0.000277179   0.092415538  -0.009776367
                        -0.055704363   0.106663222  -0.043936006  -0.178832186   0.071364358  -0.027308705  -0.016422218  -0.057878715

    8    8.2  0.5  0.5   0.022039490  -0.051520598  -0.022189833   0.197534000   0.085452804  -0.003652651  -0.071903273   0.012721005
                        -0.007554219  -0.178043157   0.008560897   0.044145469   0.211723701   0.018580327   0.054258874   0.022068717

    9    9.2  0.5  0.5   0.041811063  -0.006770410   0.101492241   0.003393931  -0.026114612   0.523242236  -0.043964291   0.114487642
                         0.000697116   0.001640899   0.012101670   0.000847183   0.008710917   0.051875937  -0.027814539  -0.054788368

   10   10.2  0.5  0.5   0.002079523  -0.018728347  -0.013784998  -0.000458895  -0.046365697   0.037654599  -0.025247013  -0.395576428
                        -0.030209205   0.009027078   0.101124250   0.001232703   0.004688455   0.333959717   0.040737553  -0.139773261

   11   11.2  0.5  0.5   0.012988970   0.086179186  -0.001223427  -0.003012752   0.159467654   0.027087108   0.290311722   0.080731906
                        -0.006373276  -0.023388740   0.023072650   0.009182809  -0.078010111   0.076561626   0.403480360  -0.029893607

   12   12.2  0.5  0.5   0.000047077  -0.002435877  -0.000167710   0.005559095   0.005315455   0.000022000  -0.007390716   0.000018036
                        -0.001154801  -0.008780933  -0.000007958   0.001855447   0.011861804   0.000637840   0.005629116   0.003116941

   13    1.2  0.5 -0.5  -0.000006997   0.001329236   0.000058399  -0.001586484   0.008931871   0.000002669   0.002627161   0.000007309
                         0.000003199  -0.000607691  -0.000071667   0.001946930  -0.001644184  -0.000000491  -0.000880893  -0.000002451

   14    2.2  0.5 -0.5  -0.000785653   0.000629317  -0.000016210   0.001916942   0.000094901  -0.001574879  -0.003455548  -0.001154408
                         0.000196431   0.000383757  -0.000011859   0.001365173  -0.006181145  -0.000691142   0.003324784   0.005551793

   15    3.2  0.5 -0.5   0.001809584   0.000192545  -0.000151355   0.000717783   0.000779183   0.003812035  -0.004469333   0.002549055
                        -0.000248851   0.000238239  -0.000072193   0.000838345  -0.003013953   0.000840397   0.002560917  -0.006665413

   16    4.2  0.5 -0.5   0.015017038  -0.127574909  -0.011939796   0.000858111   0.004215019  -0.053615970  -0.012367139  -0.169473575
                         0.156201797  -0.013735832  -0.172901647   0.057424350  -0.019440801   0.087622526  -0.004633205  -0.065386626

   17    5.2  0.5 -0.5   0.004104290   0.061858363  -0.075483883  -0.128167320   0.034273108  -0.051135833  -0.067319006   0.006339065
                         0.012495904   0.175169713  -0.063678950  -0.052165261   0.071908531   0.024330275   0.058225689   0.013409190

   18    6.2  0.5 -0.5  -0.042978457  -0.166713169   0.048633790  -0.057845608   0.020917503   0.039145344  -0.083649531   0.044267919
                        -0.094904503   0.097931873   0.079117329   0.086534046   0.010392941  -0.018076786  -0.103772379   0.044253496

   19    7.2  0.5 -0.5   0.011123893   0.042693319   0.221804075  -0.033193652   0.004671338   0.085024447   0.009130895  -0.092841925
                         0.112195862   0.041731418   0.010900965  -0.028817262   0.026907634   0.056912048   0.057984048   0.013809335

   20    8.2  0.5 -0.5  -0.027171123   0.023185036   0.090559187   0.020653777  -0.006956055  -0.045710563   0.005045249   0.085422361
                        -0.183345215  -0.002293347  -0.181018058  -0.011794030  -0.017612033   0.223695444  -0.024967933   0.028585423

   21    9.2  0.5 -0.5   0.006839701   0.037735809   0.001487183  -0.054730847   0.505204593   0.027260107   0.125965856   0.032841047
                        -0.001322680  -0.018018316  -0.003166192   0.086322997  -0.145745907   0.003839218   0.015549556  -0.040348149

   22   10.2  0.5 -0.5   0.020786060   0.014451714  -0.001245493   0.087101076  -0.023427289   0.046448340  -0.330619627   0.036888017
                         0.000422881   0.026609555  -0.000422951   0.053193446  -0.335258294  -0.003783010   0.258278798   0.030597942

   23   11.2  0.5 -0.5  -0.088101501   0.014462899  -0.009021806   0.018659124   0.012778891  -0.170955462   0.086047077  -0.146981395
                         0.014560591   0.000395677  -0.003465211   0.013626483  -0.080200336  -0.047851228   0.002677496   0.474840781

   24   12.2  0.5 -0.5  -0.001435617   0.000522961   0.002073287   0.000099772  -0.000093837  -0.003080175  -0.000973799   0.008796837
                        -0.008998738   0.001030676  -0.005481579  -0.000135039  -0.000631284   0.012628103  -0.002960973   0.002987522

   25    1.2  1.5  1.5   0.013898532  -0.002372822  -0.108705261  -0.018193310  -0.004294229   0.055361483   0.007229597  -0.007288592
                        -0.003252488  -0.005249162  -0.040556835  -0.004424850  -0.001921800   0.013481317  -0.002282880   0.023268152

   26    2.2  1.5  1.5  -0.001405422   0.035696972  -0.014650916   0.267163082   0.021497978   0.002842789   0.017886582   0.000235112
                         0.015770604   0.123790605  -0.003353367   0.099041654   0.051799356   0.003291881  -0.012060549  -0.006291219

   27    3.2  1.5  1.5  -0.010067885  -0.075611519  -0.003001514   0.104068055   0.061421726   0.003638100  -0.015632053  -0.009711751
                         0.001674139   0.024821648   0.010255860  -0.285661559  -0.026254076   0.000159210  -0.022224527  -0.000424242

   28    4.2  1.5  1.5   0.070111602  -0.082328403  -0.007500329   0.310595806   0.086183816   0.020401380  -0.232539114   0.020306730
                        -0.042392448  -0.229444087  -0.000603614   0.113068376   0.184782509   0.015215754   0.179774538   0.038838213

   29    5.2  1.5  1.5  -0.266897361   0.017180541  -0.021648888   0.083773219   0.025645712  -0.071990877   0.008586556  -0.071166146
                         0.034244144  -0.080235919  -0.008031338   0.023685513   0.050322100  -0.016150138   0.014936734   0.231692254

   30    6.2  1.5  1.5  -0.044404331  -0.293188636   0.000301885  -0.099934842   0.070529255   0.002694395   0.208501520   0.114158143
                        -0.001510068   0.086417371  -0.008195704   0.266132081  -0.038493475  -0.001428208   0.263849106   0.004977608

   31    7.2  1.5  1.5   0.038426750  -0.013513068  -0.046304180  -0.002282877  -0.000979042  -0.037523319  -0.020187043   0.166513684
                         0.243250974  -0.027799358   0.123106936   0.005078056  -0.007368830   0.148453880  -0.057128075   0.055927607

   32    8.2  1.5  1.5  -0.019595905   0.008213195  -0.093407943  -0.004684244  -0.001930280  -0.041689557   0.018545131  -0.146164875
                        -0.119521051   0.012832791   0.252288064   0.007449240  -0.007789130   0.171319711   0.050037103  -0.048141361

   33    9.2  1.5  1.5  -0.000668909   0.000233617   0.004876693   0.000245446   0.000184417   0.002427721  -0.000770837   0.006394259
                        -0.004569166   0.000561814  -0.013116745  -0.000436334   0.000440907  -0.010007260  -0.002105981   0.002034302

   34    1.2  1.5  0.5   0.044241328   0.342797182   0.000547675  -0.009301049  -0.027397362  -0.002003412  -0.021195053  -0.009594872
                        -0.007952852  -0.093800561   0.002182123   0.030350602   0.012436787   0.000980438  -0.029037601   0.000868331

   35    2.2  1.5  0.5   0.036034968   0.006015300   0.034734930   0.001170134  -0.001350291   0.003462155   0.005111351  -0.048493685
                         0.184475987  -0.025328504  -0.086277888  -0.000169070   0.001585343  -0.017078435   0.014713800  -0.014763128

   36    3.2  1.5  0.5  -0.158826359   0.021327821  -0.114073737  -0.004650127  -0.001925191   0.031983995  -0.012370118   0.010895298
                         0.029910444  -0.010064300  -0.045317693  -0.001991586   0.000293086   0.007615529   0.004432102  -0.036849996

   37    4.2  1.5  0.5  -0.055241327   0.033673723  -0.033536645   0.035224136   0.089396852  -0.068970368  -0.016360580  -0.069012345
                        -0.297780250   0.029218005   0.083777398  -0.107160414  -0.054189302   0.269929981  -0.011134739  -0.022334198

   38    5.2  1.5  0.5  -0.014897762  -0.051528266  -0.003811517  -0.136879890  -0.341917394  -0.031590657   0.088320068   0.035004550
                        -0.084251426   0.024009888   0.008400838   0.402057192   0.150266900   0.073738343   0.121254822  -0.000448434

   39    6.2  1.5  0.5  -0.314850516   0.034269939  -0.129182671  -0.009075711   0.002915868  -0.235034655  -0.041510822   0.043639984
                         0.057422978  -0.018055770  -0.051509869   0.006854936   0.001439835  -0.064444278   0.018732966  -0.125952005

   40    7.2  1.5  0.5   0.002139512  -0.027654989   0.008201891  -0.244700247   0.072389663  -0.000572669   0.137301776   0.001850080
                        -0.012991297  -0.101398872   0.000866909  -0.083213165   0.162292644   0.008085222  -0.102491598  -0.059558121

   41    8.2  1.5  0.5   0.000692534  -0.066456315  -0.005173490   0.117814430  -0.073923238  -0.000335212   0.150042413   0.000838381
                        -0.031007884  -0.238194694  -0.001350834   0.039530813  -0.161796492  -0.008703043  -0.113424546  -0.064602072

   42    9.2  1.5  0.5   0.000087507  -0.003017061   0.000067248  -0.002941817  -0.003789720   0.000046899   0.000821691  -0.000021247
                        -0.001387062  -0.010867513  -0.000020422  -0.000979248  -0.008362554  -0.000407260  -0.000700348  -0.000351041

   43    1.2  1.5 -0.5   0.350762347  -0.043542554   0.029403712  -0.001345653   0.002147805  -0.029196188   0.009373155  -0.010864218
                        -0.057220879   0.011161944   0.011962035  -0.001803005   0.000601541  -0.007271294  -0.002226999   0.034269248

   44    2.2  1.5 -0.5   0.016001851   0.043929404  -0.000870235   0.088825928  -0.006496806  -0.001614987   0.041284606   0.000168554
                         0.020534306   0.182756987   0.000800306   0.027574331  -0.016169446  -0.001314692  -0.029413751  -0.015575410

   45    3.2  1.5 -0.5   0.023581447   0.156883102   0.001393558  -0.036928934  -0.030076784  -0.001946439  -0.022044961  -0.013137377
                         0.000285382  -0.038834769  -0.004862931   0.117058809   0.013280036   0.000060292  -0.031474584  -0.000269619

   46    4.2  1.5 -0.5   0.018476700  -0.073571856  -0.105323428  -0.086130556   0.116698510   0.097730022   0.058331893  -0.011972003
                        -0.040573673  -0.293788808  -0.040386502  -0.026923712   0.252983328   0.037109572  -0.043115084   0.015758240

   47    5.2  1.5 -0.5  -0.056845999  -0.021481301   0.398147703  -0.008920186   0.044418155  -0.363471678  -0.033331134   0.045190351
                        -0.000411571  -0.082817872   0.147866481  -0.002352027   0.066800751  -0.085883552   0.010703040  -0.143041947

   48    6.2  1.5 -0.5   0.038674552   0.310220693   0.011047149  -0.041672915   0.219484012   0.002607020  -0.081417110  -0.045312664
                         0.002172228  -0.078685244  -0.002705401   0.132683071  -0.105929800  -0.001943929  -0.105544350  -0.004564528

   49    7.2  1.5 -0.5   0.017008673  -0.007347364   0.090068016   0.004509061   0.002026945   0.041812220  -0.020688077   0.162761648
                         0.103717090  -0.010925545  -0.242261005  -0.006905861   0.007847946  -0.172716253  -0.055880193   0.053525238

   50    8.2  1.5 -0.5   0.038597589  -0.013522374  -0.043777998  -0.002220885  -0.001245916  -0.043410276  -0.021332374   0.178316990
                         0.244260885  -0.027912612   0.116303104   0.004863889  -0.008619920   0.172505936  -0.060984100   0.059840659

   51    9.2  1.5 -0.5   0.001774615  -0.000656301   0.001099206   0.000058312  -0.000119854  -0.002213152  -0.000091453   0.001001709
                         0.011138054  -0.001225099  -0.002899130  -0.000039231  -0.000392040   0.008910457  -0.000339584   0.000402794

   52    1.2  1.5 -1.5  -0.000024514   0.013992543  -0.008062429   0.037228383   0.052006044   0.003875351  -0.014307594  -0.007580283
                        -0.005760502  -0.002820747   0.016898908  -0.109889664  -0.023281130  -0.002667466  -0.019743942   0.000133895

   53    2.2  1.5 -1.5   0.019004872  -0.007835324   0.091987203   0.006655343   0.002199856  -0.011765049   0.002222941  -0.020792796
                         0.127425283  -0.013758447  -0.269673351  -0.013475935  -0.003752141   0.054835390   0.005890097  -0.005748589

   54    3.2  1.5 -1.5   0.079086366  -0.009852457   0.287188826   0.009846552   0.003549160  -0.065159798  -0.009073052   0.007755744
                        -0.008863561   0.002663482   0.099776073   0.004151765  -0.000815217  -0.014700533   0.003489672  -0.026041104

   55    4.2  1.5 -1.5  -0.020524146   0.081390023   0.108549746   0.004269997   0.017309624  -0.051306899   0.006906290   0.277627067
                        -0.242901862   0.009403220  -0.312203724  -0.006195676  -0.018657771   0.197331771  -0.043279016   0.096522203

   56    5.2  1.5 -1.5  -0.048985785  -0.256971667   0.034557828   0.007449496  -0.067877494  -0.016111686  -0.141130886  -0.003392600
                        -0.065828311   0.079827470  -0.079904394  -0.021855931   0.028916417   0.054133445  -0.197048202   0.016891573

   57    6.2  1.5 -1.5   0.302575357  -0.039756282  -0.269438326  -0.006544141   0.002908434  -0.076332640   0.106653396  -0.113805196
                        -0.043309253   0.019835902  -0.090643510  -0.004943168   0.000916818  -0.025088872  -0.041011114   0.316445275

   58    7.2  1.5 -1.5   0.000731159  -0.066191784  -0.005378675   0.124684649  -0.063779201  -0.000371180   0.140095431   0.000978328
                        -0.030901014  -0.237205184  -0.001438066   0.041870430  -0.139207642  -0.007424312  -0.105962136  -0.060581982

   59    8.2  1.5 -1.5  -0.002133954   0.031873006  -0.008733790   0.254583204  -0.072016199   0.000488249  -0.123277589  -0.001675869
                         0.015085865   0.116847732  -0.001074355   0.086958055  -0.160941385  -0.008009877   0.092110788   0.053336901

   60    9.2  1.5 -1.5   0.000021126   0.001291431   0.000493301  -0.013248900   0.004199308  -0.000101549   0.005415816   0.000061340
                         0.000608084   0.004433613   0.000085357  -0.004505307   0.009402388   0.000467008  -0.003961549  -0.002241781


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5  -0.017889503   0.000539195  -0.007345533  -0.000420489   0.002548433   0.000109317   0.000272192   0.018279223
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000260236   0.006842842  -0.000787208  -0.000655236  -0.002751554   0.001798990  -0.001966929  -0.000035330
                         0.016123056  -0.004144607  -0.005015169  -0.001342207  -0.003320882   0.003823674   0.007470711  -0.016727379

    3    3.2  0.5  0.5  -0.000298534  -0.012046207  -0.001214209   0.000702277  -0.003658828  -0.004836768  -0.000120378  -0.000084638
                         0.007844306   0.010914180  -0.002371334   0.002142656  -0.000968589  -0.004184825  -0.016956389  -0.007430085

    4    4.2  0.5  0.5  -0.001315176   0.001724462  -0.047636411   0.120550777  -0.110697315   0.229194037  -0.001016253  -0.002058228
                         0.000118138   0.000857424  -0.049066786  -0.160468071   0.095614968  -0.208627746  -0.001208734   0.002868561

    5    5.2  0.5  0.5   0.000407206   0.000410966  -0.066610323  -0.003524239  -0.190126719  -0.042054676  -0.000312580  -0.004066340
                         0.000951414  -0.001267472   0.270930966  -0.144710200  -0.145854075   0.046992005  -0.001823748  -0.011704645

    6    6.2  0.5  0.5  -0.001847665  -0.001740585  -0.076602993  -0.019699360  -0.199124543   0.015686969   0.001278923  -0.004971597
                         0.001074897  -0.000501435   0.031205020   0.129933084   0.269839529   0.152996322   0.002052143  -0.001078078

    7    7.2  0.5  0.5   0.000653979  -0.000938775  -0.013223558   0.177105323  -0.021905565   0.159872298  -0.002044412  -0.000329032
                         0.000200526   0.002843699   0.073936624   0.273966366  -0.152040577  -0.010665075   0.004233202  -0.004318941

    8    8.2  0.5  0.5   0.000033804  -0.005480046  -0.003563674   0.339299859   0.049148736  -0.134559786   0.008757760   0.000769053
                         0.000499335  -0.006074602  -0.029046057  -0.097627027   0.048273336   0.124703610   0.000660906   0.000113308

    9    9.2  0.5  0.5   0.138294017   0.007792783   0.222774925   0.010442859  -0.059122874   0.018949376   0.001982950   0.250741073
                        -0.012185320  -0.011281530   0.021935593  -0.006871882   0.019413801   0.012113223  -0.029900308  -0.027899725

   10   10.2  0.5  0.5  -0.025810707   0.019942218   0.013412174   0.002361283   0.132655361   0.041148008  -0.023357383  -0.036953566
                        -0.151893540  -0.031271359   0.148485896  -0.003449634   0.094461878  -0.017453817  -0.060599165  -0.248223008

   11   11.2  0.5  0.5   0.010417323  -0.135712318   0.005393478   0.022766859  -0.035741357  -0.129933424  -0.015371417   0.022827289
                        -0.031771463   0.110633963   0.033954397   0.057164041   0.036209905  -0.150271604   0.255071492  -0.061726329

   12   12.2  0.5  0.5   0.006257285   0.204497072   0.000691200  -0.014386786  -0.000770630   0.009606194   0.774264446  -0.011479920
                        -0.024378915   0.243413717   0.000054920   0.005488367  -0.004488689  -0.009163572   0.028719552  -0.078155568

   13    1.2  0.5 -0.5  -0.000269376  -0.008937416   0.000050070  -0.000874681  -0.000108211   0.002522653  -0.005558108   0.000082765
                         0.000467084   0.015496997   0.000417498  -0.007293270   0.000015510  -0.000361568  -0.017413714   0.000259304

   14    2.2  0.5 -0.5  -0.007008931  -0.013836780   0.001410680  -0.005073225  -0.001238294  -0.002252557   0.015946091   0.006518900
                         0.003857090  -0.008280349   0.000490749  -0.000184418   0.004040233   0.003677675  -0.005052586  -0.004145392

   15    3.2  0.5 -0.5   0.015472703  -0.006944369  -0.002211036  -0.002499046   0.004194102  -0.003484394   0.007104011  -0.016190118
                        -0.004982557  -0.003660328  -0.000442140  -0.000923200  -0.004828726   0.001477901  -0.002178613   0.005041199

   16    4.2  0.5 -0.5  -0.000118770  -0.000759387   0.144971580  -0.054390059  -0.256475355  -0.123143234  -0.002106898  -0.001460510
                         0.001922196   0.001080266  -0.138801054  -0.041454777  -0.173999527  -0.078942141   0.002833006  -0.000600598

   17    5.2  0.5 -0.5  -0.001303277  -0.000620738   0.144100252   0.261071584   0.048296417  -0.167509821   0.012386877  -0.001832440
                        -0.000277212  -0.000828064  -0.013732429  -0.098397923   0.040549974   0.171353554   0.000314805   0.000256762

   18    6.2  0.5 -0.5   0.000435205  -0.001854218  -0.126662888   0.021861378   0.006178639  -0.235394690   0.002538730   0.002343853
                        -0.001758314   0.001063554   0.035031185  -0.079773755   0.153674265  -0.238858315   0.004408388   0.000594378

   19    7.2  0.5 -0.5   0.002932390   0.000153013  -0.293106209   0.071835954  -0.159768185  -0.000112650   0.004214489   0.003411124
                         0.000607458  -0.000666697  -0.143222259  -0.021933592   0.012125286   0.153610475  -0.000999795  -0.003234787

   20    8.2  0.5 -0.5  -0.002524421  -0.000415667   0.056529757  -0.029263747   0.150891372   0.041802592  -0.000341786   0.003292558
                        -0.007781966  -0.000278746  -0.348510856  -0.000079614   0.104350947  -0.054758164  -0.000698185   0.008142126

   21    9.2  0.5 -0.5  -0.013665957   0.079645982   0.005579489   0.048306795  -0.017039077  -0.061279195  -0.049663384  -0.027881598
                         0.001114453  -0.113711189  -0.011186839   0.218577883   0.014679200  -0.010829135  -0.247352034   0.010980755

   22   10.2  0.5 -0.5  -0.037052122   0.118684834   0.003143916   0.149026506  -0.043208081   0.117911297   0.247706172  -0.064832043
                         0.001652329   0.098243323  -0.002755253  -0.004364443  -0.011439229  -0.112327276  -0.040272575  -0.003825222

   23   11.2  0.5 -0.5   0.163638511   0.032726801  -0.059468322   0.034355051   0.107298684  -0.040517214   0.051862604   0.238320086
                        -0.062290808   0.006848572  -0.015797977   0.001311931  -0.167186249  -0.030772670  -0.040515369  -0.092202403

   24   12.2  0.5 -0.5   0.108695371   0.024244605  -0.003736188   0.000136835  -0.010809133  -0.000125985   0.077945618   0.262787935
                         0.298755094   0.006759013   0.014937961   0.000679743  -0.007707959   0.004552617  -0.012828172   0.728870871

   25    1.2  1.5  1.5  -0.000640937   0.003452567  -0.157096637  -0.011565530  -0.030279728   0.019842701  -0.006633899   0.000681222
                        -0.000203504   0.005750996  -0.040303467   0.004059362   0.041937357   0.001394210  -0.001396003   0.000433297

   26    2.2  1.5  1.5  -0.002315804  -0.083984166  -0.008593491   0.028320034   0.005151428  -0.060554985   0.129057322  -0.002214024
                         0.009802448  -0.095312537  -0.001509796  -0.011546575   0.030192705   0.061821802   0.001510506  -0.012985810

   27    3.2  1.5  1.5  -0.009300145   0.090295842  -0.002116949   0.010796202  -0.029099781  -0.063266238  -0.001723161   0.013223402
                        -0.002058591  -0.079907605  -0.000712395   0.026574370   0.007313131  -0.063388407   0.131473131  -0.002268804

   28    4.2  1.5  1.5  -0.092104816   0.111955252   0.000499285   0.004869742  -0.000933704   0.001298869  -0.084858761   0.039868142
                         0.021420772   0.135391544   0.000120406  -0.001818511   0.000869637  -0.000608666  -0.004819855  -0.005410797

   29    5.2  1.5  1.5   0.355044586   0.035495798  -0.003148729   0.001104808   0.003004600  -0.001581241  -0.020095142  -0.142729576
                        -0.132193156   0.008518515  -0.000779359  -0.000501931  -0.004351054  -0.000316474   0.013085251   0.053805599

   30    6.2  1.5  1.5  -0.005819348   0.138091335  -0.000007089   0.000702040   0.000985139   0.001921752  -0.001075454   0.005241148
                        -0.006402115  -0.121931052  -0.000187144   0.002119532  -0.000340430   0.002089965   0.085975983  -0.000257186

   31    7.2  1.5  1.5  -0.124111507  -0.027603493  -0.002487746   0.000126004  -0.006866969  -0.000080160   0.014542916   0.049016010
                        -0.341316765  -0.007777746   0.009838231   0.000530931  -0.004922729   0.002852978  -0.002371543   0.136054429

   32    8.2  1.5  1.5   0.049724988   0.011084350  -0.002804061   0.000309750   0.007637199   0.000435377  -0.005907498  -0.019975270
                         0.136426267   0.003070338   0.010828948   0.000747151   0.005374081  -0.002966884   0.000946703  -0.055307703

   33    9.2  1.5  1.5  -0.001344134  -0.000361563  -0.161224414   0.014728027   0.167455513   0.015624856  -0.000613745  -0.002073772
                        -0.003696107  -0.000020787   0.629030975   0.039750874   0.116308131  -0.061825976   0.000111267  -0.005789164

   34    1.2  1.5  0.5  -0.010782113   0.114387325   0.001513835  -0.005167395   0.018555569   0.034560004  -0.005658714   0.013731504
                         0.000501785  -0.095793526  -0.006294782  -0.013648002  -0.000326914   0.034608970   0.142646860  -0.005762771

   35    2.2  1.5  0.5  -0.025035300   0.000723768  -0.032378723   0.001100928  -0.062167264   0.002642178   0.006799753   0.026471654
                        -0.062403412  -0.006207763   0.122063514   0.005598267  -0.041569082   0.027563970   0.005998048   0.065738204

   36    3.2  1.5  0.5   0.063509986   0.002437756   0.051297909   0.004783709   0.073615615  -0.041711527   0.001377880  -0.069807384
                        -0.024932534  -0.006095362   0.016586334  -0.002560453  -0.106831782  -0.003437193   0.008853278   0.027031542

   37    4.2  1.5  0.5  -0.122836015  -0.027518545  -0.001896849   0.000206694   0.002543038  -0.000614444   0.012602198   0.046667913
                        -0.310008116  -0.004790135   0.005968842   0.000552954   0.002028507  -0.001895887  -0.000346618   0.117667741

   38    5.2  1.5  0.5  -0.026347470   0.000382915  -0.000202396  -0.000093467   0.002040481   0.002906774   0.003688820   0.008776935
                        -0.086461034  -0.008283553   0.001648421  -0.000297340   0.000248697   0.002670699  -0.008227884   0.032825862

   39    6.2  1.5  0.5  -0.316135508  -0.006461175  -0.011191029  -0.000636747   0.001327465  -0.000767989  -0.002461823   0.123198399
                         0.123624131   0.025877439  -0.003028718   0.000160261  -0.001899511   0.000208615  -0.013414979  -0.047670620

   40    7.2  1.5  0.5  -0.002838653  -0.093851304   0.000637062  -0.008165925   0.000561272  -0.004479194   0.058316328  -0.000879669
                         0.011144218  -0.111567835   0.000184520   0.003197381   0.001897993   0.004198360   0.002222104  -0.005856060

   41    8.2  1.5  0.5  -0.007016093  -0.229514721  -0.000352438   0.007480489   0.000479819  -0.005836616   0.146150858  -0.002182310
                         0.027355392  -0.273210688  -0.000006827  -0.002888103   0.002657768   0.005586874   0.005414198  -0.014753036

   42    9.2  1.5  0.5  -0.000123799  -0.004127669   0.003321770  -0.198703399  -0.042894541   0.449437061  -0.011090361   0.000163788
                         0.000512690  -0.004849276  -0.003988768   0.075554117  -0.200873656  -0.428745737  -0.000347282   0.001182398

   43    1.2  1.5 -0.5   0.140129052   0.005821313  -0.014166213   0.006069733   0.029300121  -0.018414244  -0.001314611  -0.134171998
                        -0.051231911  -0.009089448  -0.003505472  -0.002252626  -0.039162196   0.002309033   0.014833595   0.048764974

   44    2.2  1.5 -0.5   0.005739136  -0.041550321   0.005689531  -0.117339494  -0.001295290   0.055640616   0.070674699  -0.007781624
                         0.002474363  -0.052863247   0.000426472   0.046683255  -0.027660003  -0.049968782   0.005229423  -0.004653981

   45    3.2  1.5 -0.5   0.006498059  -0.053327059  -0.001972608  -0.022576702  -0.040801911  -0.088028078   0.004525498  -0.008853049
                         0.000933446   0.042560245   0.005054563  -0.048957885   0.009320400  -0.095306590  -0.074721449   0.001379351

   46    4.2  1.5 -0.5  -0.009598477  -0.207180613   0.000573632  -0.005700504  -0.000339243  -0.002229511   0.126286422  -0.003501706
                         0.026231374  -0.261285116   0.000139380   0.002594102   0.001963885   0.002368790   0.008679346  -0.012110887

   47    5.2  1.5 -0.5   0.007367028  -0.061734977  -0.000306355  -0.001612592   0.002498454  -0.001984555   0.033940355   0.006716651
                         0.003806676  -0.066018877  -0.000057395   0.000397245  -0.003056092   0.000535682  -0.001619907  -0.006015984

   48    6.2  1.5 -0.5  -0.025644580   0.265029014   0.000083299   0.004339758  -0.000789818  -0.001583537  -0.007952885   0.013528348
                        -0.007331039  -0.212094806  -0.000651300   0.010750756  -0.000097543  -0.001691957   0.131860097  -0.001733795

   49    7.2  1.5 -0.5   0.049759808   0.011071976   0.002202262  -0.000259067  -0.005029540  -0.000286309  -0.005846257  -0.019848957
                         0.137037989   0.003108523  -0.008488558  -0.000610558  -0.003520388   0.001958425   0.000942617  -0.054879421

   50    8.2  1.5 -0.5   0.122008789   0.027202107  -0.001976803   0.000048745  -0.006570232  -0.000097885  -0.014718058  -0.049597486
                         0.335313200   0.007588704   0.007771171   0.000349118  -0.004702266   0.002698958   0.002406931  -0.137584433

   51    9.2  1.5 -0.5   0.002138601   0.000505973   0.051355637   0.003564844   0.505720466   0.013960929   0.001176215   0.003703050
                         0.005998293   0.000148893  -0.206286363  -0.003773104   0.360643021  -0.204927450  -0.000203495   0.010459643

   52    1.2  1.5 -1.5   0.003257001  -0.000143918  -0.002653296  -0.058723239  -0.019444164  -0.035923437  -0.000619918  -0.003347052
                         0.005863968   0.000656888   0.011966617  -0.151179708   0.004195362  -0.037217072  -0.000517216  -0.005895310

   53    2.2  1.5 -1.5  -0.040607984  -0.009648441   0.008092169  -0.002522337   0.068713611   0.000815615   0.013044152   0.040681052
                        -0.120369479  -0.002891111  -0.029493466  -0.008352568   0.052604953  -0.030618155  -0.001839365   0.122487249

   54    3.2  1.5 -1.5  -0.114331819  -0.002862980  -0.027670870  -0.000959405   0.053632775  -0.029842987  -0.001859422   0.124724009
                         0.038298821   0.009084813  -0.007555003  -0.002017057  -0.071723304  -0.003110512  -0.013287151  -0.041618206

   55    4.2  1.5 -1.5   0.061352831  -0.064570643   0.001225700   0.000179002  -0.001372087  -0.001047642  -0.006967985  -0.030394383
                         0.164622838   0.069085300  -0.005051637   0.000481395  -0.000418226  -0.000728368  -0.039625657  -0.079375196

   56    5.2  1.5 -1.5  -0.010354078   0.291890620   0.000366803  -0.001148754   0.001520344   0.003591527  -0.007858592   0.006355404
                         0.035004427  -0.241519263  -0.001156716  -0.003033523  -0.000537617   0.003880750   0.152331930  -0.023122443

   57    6.2  1.5 -1.5  -0.174613283   0.002638621  -0.002188049  -0.000186656  -0.001605790   0.001023473  -0.001348651   0.081578068
                         0.058707748   0.008239513  -0.000444658   0.000015246   0.002341479   0.000197216  -0.005071185  -0.027166988

   58    7.2  1.5 -1.5   0.007052862   0.233664884  -0.000542157   0.009472000   0.000484126  -0.006099072  -0.144516491   0.002162768
                        -0.027797541   0.278031513  -0.000061886  -0.003641548   0.002812744   0.005847208  -0.005325478   0.014575426

   59    8.2  1.5 -1.5  -0.002877913  -0.093338788  -0.000778719   0.010418003  -0.000851911   0.006797474   0.058762740  -0.000894398
                         0.011135861  -0.111232062  -0.000218578  -0.004073584  -0.002875100  -0.006403273   0.002212210  -0.005915643

   60    9.2  1.5 -1.5   0.000162626   0.002530281  -0.041221812   0.605357418  -0.024238585   0.149259896   0.006145616  -0.000080621
                        -0.000323593   0.003010911  -0.009889840  -0.234980161  -0.058983713  -0.138889934   0.000215286  -0.000618518


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5  -0.001182286  -0.000336374   0.000408918  -0.000058475
                         0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000108968  -0.000044255  -0.000207456  -0.000288765
                        -0.000812615  -0.000325245  -0.000460573   0.000444710

    3    3.2  0.5  0.5  -0.000164126  -0.000083730  -0.000213609   0.000360753
                        -0.000461815   0.000111029  -0.000379491  -0.000694475

    4    4.2  0.5  0.5   0.075580660  -0.144845385   0.070015678  -0.213157347
                         0.023845962   0.076785859  -0.074834144  -0.092964465

    5    5.2  0.5  0.5   0.060226225  -0.038979522   0.113198862   0.020807333
                        -0.209024981   0.054702879   0.177039288  -0.005561903

    6    6.2  0.5  0.5   0.061756779   0.075797045   0.237258840   0.070318018
                         0.002772840  -0.087069460  -0.134585303  -0.004019221

    7    7.2  0.5  0.5   0.008300908  -0.035272874  -0.022227381  -0.059412174
                         0.001635179  -0.264394421   0.090178023  -0.116734053

    8    8.2  0.5  0.5   0.058658245  -0.249794442  -0.008948734   0.148597587
                         0.036177505  -0.042562884  -0.026832240   0.081994113

    9    9.2  0.5  0.5  -0.339161539  -0.097576312   0.112136465  -0.003434331
                        -0.032459275  -0.000102918  -0.013930176  -0.026814488

   10   10.2  0.5  0.5  -0.006057648  -0.011499145  -0.136329906   0.000050554
                        -0.262309626  -0.049701340  -0.218786890  -0.025050276

   11   11.2  0.5  0.5  -0.012303875   0.004576724   0.027393322  -0.175153239
                        -0.031988158  -0.098426018   0.007712651   0.309492091

   12   12.2  0.5  0.5  -0.000461141   0.001423803  -0.000260811  -0.001388719
                        -0.000092856   0.000142532   0.000252346  -0.000755203

   13    1.2  0.5 -0.5  -0.000118258   0.000415651   0.000007620   0.000053290
                         0.000314901  -0.001106813   0.000057976   0.000405430

   14    2.2  0.5 -0.5   0.000288924  -0.000722431  -0.000403286  -0.000483681
                         0.000155775  -0.000387699   0.000344256  -0.000145666

   15    3.2  0.5 -0.5  -0.000133378  -0.000374633   0.000641540  -0.000404092
                         0.000039351  -0.000316007  -0.000448179  -0.000162332

   16    4.2  0.5 -0.5  -0.122806730  -0.004247830   0.119950025  -0.065071634
                         0.108603686   0.079139257   0.199224592   0.079170870

   17    5.2  0.5 -0.5  -0.064914680  -0.216854978   0.002802892   0.190281434
                         0.017259559  -0.017104367  -0.021354710   0.089162030

   18    6.2  0.5 -0.5   0.108158854  -0.019115716  -0.005178792  -0.102518370
                        -0.040347805   0.058789266  -0.070242138   0.252774494

   19    7.2  0.5 -0.5   0.235115639  -0.001387518   0.123481071   0.086512362
                         0.125973100   0.008345878   0.043692912  -0.033789694

   20    8.2  0.5 -0.5  -0.047973271   0.013245844  -0.100659896  -0.027769605
                         0.248812033   0.067632457  -0.136645025  -0.005375684

   21    9.2  0.5 -0.5  -0.034208107   0.088850278   0.027033376   0.000802073
                         0.091383547  -0.328922152  -0.000089380   0.112995545

   22   10.2  0.5 -0.5   0.042485870  -0.243434992   0.024830064  -0.234687424
                         0.028238349  -0.097889935  -0.003314637  -0.106655332

   23   11.2  0.5 -0.5   0.093751846  -0.025620524  -0.284027094   0.011216735
                         0.030318621  -0.022764366   0.213992107   0.026154616

   24   12.2  0.5 -0.5   0.000367127   0.000075193   0.000929739   0.000216206
                        -0.001383022  -0.000464349   0.001278459  -0.000291472

   25    1.2  1.5  1.5  -0.338003588  -0.099126286  -0.069459161   0.028385287
                        -0.093223530  -0.018128500   0.050328238   0.021791986

   26    2.2  1.5  1.5  -0.034194786   0.045105208  -0.036120130  -0.181053704
                        -0.007449664   0.002921440   0.035914526  -0.094386851

   27    3.2  1.5  1.5  -0.000520563  -0.004820341  -0.033888378   0.095336464
                        -0.017846230   0.050463706  -0.031938336  -0.181711474

   28    4.2  1.5  1.5   0.017866188  -0.028506049  -0.006822074   0.111668285
                         0.003604633  -0.001835414  -0.000457567   0.058988668

   29    5.2  1.5  1.5  -0.025339051  -0.017951685   0.100611406   0.005654486
                        -0.006781919  -0.003045033  -0.075123283   0.001249145

   30    6.2  1.5  1.5   0.000873131  -0.002412631  -0.017914801   0.057336500
                        -0.009923672   0.028765780  -0.021384088  -0.110636510

   31    7.2  1.5  1.5  -0.018660385  -0.003820049  -0.059250796  -0.013073372
                         0.068736350   0.021126440  -0.079905362   0.017546479

   32    8.2  1.5  1.5  -0.025669695  -0.004655613   0.042380480   0.010681802
                         0.092535800   0.025758188   0.057703933  -0.014184069

   33    9.2  1.5  1.5  -0.119049283  -0.022218587   0.066301980   0.019420957
                         0.431308723   0.122966291   0.091562501  -0.025531733

   34    1.2  1.5  0.5   0.000527966   0.003578703   0.022717110  -0.056500853
                        -0.003049383  -0.035492458   0.028509684   0.103584843

   35    2.2  1.5  0.5  -0.073198609  -0.014455418  -0.115832683  -0.024903990
                         0.254182556   0.074142725  -0.143745551   0.037753272

   36    3.2  1.5  0.5   0.139342938   0.036526952   0.232522827  -0.056318454
                         0.045920315   0.008221194  -0.176724941  -0.039694277

   37    4.2  1.5  0.5  -0.032419337  -0.009504654   0.017400336   0.001018703
                         0.102009167   0.063289704   0.025030937   0.001262618

   38    5.2  1.5  0.5  -0.012424937   0.009591274  -0.001390152   0.016306850
                         0.062996861  -0.109136837  -0.000478022  -0.029667568

   39    6.2  1.5  0.5  -0.112100156  -0.031706884  -0.027175104   0.007511232
                        -0.033048581  -0.009338504   0.018619036   0.005034457

   40    7.2  1.5  0.5   0.026347627  -0.097891458  -0.012853768  -0.063723893
                         0.004824514  -0.008730083   0.012636268  -0.035011492

   41    8.2  1.5  0.5  -0.020957615   0.070321607  -0.015380392  -0.085390587
                        -0.003836891   0.006620416   0.014960981  -0.047498115

   42    9.2  1.5  0.5   0.037263127  -0.111575120   0.072873400   0.393617427
                         0.006828913  -0.011318549  -0.071075434   0.218349080

   43    1.2  1.5 -0.5  -0.034484885   0.003040335   0.095338385  -0.031227019
                        -0.009127670   0.000577795  -0.069518044  -0.018808044

   44    2.2  1.5 -0.5   0.074491724  -0.263690485   0.034185869   0.157614856
                         0.012533384  -0.020835938  -0.029611563   0.096112179

   45    3.2  1.5 -0.5  -0.005145232   0.005999240  -0.046695108   0.144915838
                         0.037085480  -0.146591743  -0.050665283  -0.253570443

   46    4.2  1.5 -0.5   0.062591007  -0.106894758   0.001384607  -0.027085063
                         0.013352562  -0.005513099   0.000845474  -0.013989955

   47    5.2  1.5 -0.5  -0.105541865  -0.063343529  -0.027289484   0.000655108
                        -0.029389736  -0.010515746   0.020034021   0.001316002

   48    6.2  1.5 -0.5   0.002404678  -0.008471667   0.005970376  -0.014918838
                        -0.032965917   0.116562793   0.006791095   0.029369764

   49    7.2  1.5 -0.5   0.026242466   0.004746381  -0.043017322  -0.010853425
                        -0.094711588  -0.026361815  -0.058617823   0.014390893

   50    8.2  1.5 -0.5  -0.018524853  -0.003776016  -0.058221032  -0.012829047
                         0.068160019   0.020968669  -0.078472509   0.017198923

   51    9.2  1.5 -0.5   0.028629941   0.006707448   0.267782668   0.060972564
                        -0.108431746  -0.037285183   0.361805807  -0.081514392

   52    1.2  1.5 -1.5  -0.017878135   0.031557916  -0.025305276   0.040847235
                         0.099171747  -0.349200731  -0.025303324  -0.075425526

   53    2.2  1.5 -1.5   0.013122486   0.005047602   0.117176583   0.030901132
                        -0.043252918  -0.034630949   0.167209359  -0.040492431

   54    3.2  1.5 -1.5  -0.048936936  -0.016523974   0.167737767  -0.036082254
                        -0.013228666  -0.006761449  -0.118203817  -0.029437229

   55    4.2  1.5 -1.5  -0.008303493  -0.002906608  -0.073038066  -0.001342707
                         0.027331585   0.017992934  -0.103028684  -0.006704268

   56    5.2  1.5 -1.5  -0.003460543   0.002559350  -0.001975377  -0.061371119
                         0.017876237  -0.026105779  -0.005443479   0.109543364

   57    6.2  1.5 -1.5  -0.027777666  -0.009597141   0.102221016  -0.023536358
                        -0.007854436  -0.002671427  -0.071265528  -0.014975285

   58    7.2  1.5 -1.5  -0.021120795   0.070908795  -0.015693143  -0.086945418
                        -0.003851135   0.006696154   0.015248515  -0.048332370

   59    8.2  1.5 -1.5  -0.025750624   0.095653199   0.012671074   0.062734805
                        -0.004697273   0.008501358  -0.012439156   0.034499177

   60    9.2  1.5 -1.5  -0.122927818   0.445629017   0.022783093   0.099422047
                        -0.022430466   0.040183650  -0.022582596   0.053804282


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   3.667%   4.539%   0.126%  58.159%  32.772%   0.507%   0.005%   0.000%   0.038%   0.000%
    2    2.2  0.5  0.5  34.073%   2.309%   0.828%  29.292%  24.898%   8.367%   0.017%   0.007%   0.019%   0.000%
    3    3.2  0.5  0.5   7.203%  47.959%   4.227%   7.122%   7.338%  25.918%   0.003%   0.034%   0.005%   0.003%
    4    4.2  0.5  0.5   0.003%   0.000%   0.001%   0.000%   0.000%   0.000%   0.005%   0.046%   0.004%   0.013%
    5    5.2  0.5  0.5   0.001%   0.001%   0.001%   0.002%   0.000%   0.000%   0.004%   0.001%   0.030%   0.001%
    6    6.2  0.5  0.5   0.002%   0.002%   0.001%   0.000%   0.000%   0.000%   0.015%   0.016%   0.011%   0.002%
    7    7.2  0.5  0.5   0.000%   0.001%   0.003%   0.000%   0.000%   0.000%   0.001%   0.020%   0.004%   0.003%
    8    8.2  0.5  0.5   0.000%   0.001%   0.003%   0.000%   0.000%   0.000%   0.000%   0.031%   0.001%   0.033%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.658%   0.001%   6.650%   0.007%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.322%   0.342%   3.661%   0.031%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.170%   6.627%   0.197%   0.469%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.029%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   4.539%   3.667%  58.159%   0.126%   0.507%  32.772%   0.000%   0.005%   0.000%   0.038%
   14    2.2  0.5 -0.5   2.309%  34.073%  29.292%   0.828%   8.367%  24.898%   0.007%   0.017%   0.000%   0.019%
   15    3.2  0.5 -0.5  47.959%   7.203%   7.122%   4.227%  25.918%   7.338%   0.034%   0.003%   0.003%   0.005%
   16    4.2  0.5 -0.5   0.000%   0.003%   0.000%   0.001%   0.000%   0.000%   0.046%   0.005%   0.013%   0.004%
   17    5.2  0.5 -0.5   0.001%   0.001%   0.002%   0.001%   0.000%   0.000%   0.001%   0.004%   0.001%   0.030%
   18    6.2  0.5 -0.5   0.002%   0.002%   0.000%   0.001%   0.000%   0.000%   0.016%   0.015%   0.002%   0.011%
   19    7.2  0.5 -0.5   0.001%   0.000%   0.000%   0.003%   0.000%   0.000%   0.020%   0.001%   0.003%   0.004%
   20    8.2  0.5 -0.5   0.001%   0.000%   0.000%   0.003%   0.000%   0.000%   0.031%   0.000%   0.033%   0.001%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.658%   0.007%   6.650%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.342%   3.322%   0.031%   3.661%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.627%   0.170%   0.469%   0.197%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.029%   0.001%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.002%   0.001%   0.000%   0.037%   0.000%   0.000%   2.066%   0.036%  34.879%   0.035%
   26    2.2  1.5  1.5   0.004%   0.009%   0.001%   0.000%   0.000%   0.006%   0.008%  10.910%   0.102%   1.345%
   27    3.2  1.5  1.5   0.004%   0.009%   0.001%   0.000%   0.000%   0.006%   0.001%  12.856%   0.002%   0.530%
   28    4.2  1.5  1.5   0.006%   0.005%   0.001%   0.000%   0.001%   0.007%   0.119%   1.494%   0.009%   0.079%
   29    5.2  1.5  1.5   0.005%   0.006%   0.000%   0.001%   0.026%   0.001%   1.647%   0.109%   0.109%   0.007%
   30    6.2  1.5  1.5   0.003%   0.008%   0.001%   0.000%   0.000%   0.007%   0.002%   1.428%   0.000%   0.160%
   31    7.2  1.5  1.5   0.005%   0.002%   0.000%   0.004%   0.024%   0.001%   1.253%   0.000%   0.578%   0.000%
   32    8.2  1.5  1.5   0.003%   0.001%   0.000%   0.007%   0.004%   0.000%   0.553%   0.000%   0.957%   0.001%
   33    9.2  1.5  1.5   0.005%   0.002%   0.001%   0.101%   0.000%   0.000%   0.857%   0.000%  12.326%   0.010%
   34    1.2  1.5  0.5   0.001%   0.003%   0.000%   0.000%   0.000%   0.008%   0.031%   3.035%   0.057%   0.303%
   35    2.2  1.5  0.5   0.007%   0.003%   0.000%   0.021%   0.002%   0.000%   9.767%   0.008%  22.588%   0.017%
   36    3.2  1.5  0.5   0.019%   0.008%   0.000%   0.006%   0.002%   0.000%  27.875%   0.007%   6.837%   0.007%
   37    4.2  1.5  0.5   0.000%   0.000%   0.001%   0.010%   0.019%   0.001%   0.136%   0.008%   1.531%   0.119%
   38    5.2  1.5  0.5   0.000%   0.000%   0.010%   0.001%   0.001%   0.000%   0.009%   0.117%   0.117%   1.543%
   39    6.2  1.5  0.5   0.001%   0.000%   0.000%   0.011%   0.021%   0.001%   0.075%   0.000%   1.612%   0.000%
   40    7.2  1.5  0.5   0.001%   0.003%   0.007%   0.000%   0.000%   0.004%   0.000%   0.816%   0.001%   1.357%
   41    8.2  1.5  0.5   0.002%   0.005%   0.004%   0.000%   0.001%   0.024%   0.000%   1.140%   0.001%   0.725%
   42    9.2  1.5  0.5   0.030%   0.072%   0.008%   0.000%   0.000%   0.000%   0.002%  12.308%   0.001%   0.872%
   43    1.2  1.5 -0.5   0.003%   0.001%   0.000%   0.000%   0.008%   0.000%   3.035%   0.031%   0.303%   0.057%
   44    2.2  1.5 -0.5   0.003%   0.007%   0.021%   0.000%   0.000%   0.002%   0.008%   9.767%   0.017%  22.588%
   45    3.2  1.5 -0.5   0.008%   0.019%   0.006%   0.000%   0.000%   0.002%   0.007%  27.875%   0.007%   6.837%
   46    4.2  1.5 -0.5   0.000%   0.000%   0.010%   0.001%   0.001%   0.019%   0.008%   0.136%   0.119%   1.531%
   47    5.2  1.5 -0.5   0.000%   0.000%   0.001%   0.010%   0.000%   0.001%   0.117%   0.009%   1.543%   0.117%
   48    6.2  1.5 -0.5   0.000%   0.001%   0.011%   0.000%   0.001%   0.021%   0.000%   0.075%   0.000%   1.612%
   49    7.2  1.5 -0.5   0.003%   0.001%   0.000%   0.007%   0.004%   0.000%   0.816%   0.000%   1.357%   0.001%
   50    8.2  1.5 -0.5   0.005%   0.002%   0.000%   0.004%   0.024%   0.001%   1.140%   0.000%   0.725%   0.001%
   51    9.2  1.5 -0.5   0.072%   0.030%   0.000%   0.008%   0.000%   0.000%  12.308%   0.002%   0.872%   0.001%
   52    1.2  1.5 -1.5   0.001%   0.002%   0.037%   0.000%   0.000%   0.000%   0.036%   2.066%   0.035%  34.879%
   53    2.2  1.5 -1.5   0.009%   0.004%   0.000%   0.001%   0.006%   0.000%  10.910%   0.008%   1.345%   0.102%
   54    3.2  1.5 -1.5   0.009%   0.004%   0.000%   0.001%   0.006%   0.000%  12.856%   0.001%   0.530%   0.002%
   55    4.2  1.5 -1.5   0.005%   0.006%   0.000%   0.001%   0.007%   0.001%   1.494%   0.119%   0.079%   0.009%
   56    5.2  1.5 -1.5   0.006%   0.005%   0.001%   0.000%   0.001%   0.026%   0.109%   1.647%   0.007%   0.109%
   57    6.2  1.5 -1.5   0.008%   0.003%   0.000%   0.001%   0.007%   0.000%   1.428%   0.002%   0.160%   0.000%
   58    7.2  1.5 -1.5   0.002%   0.005%   0.004%   0.000%   0.001%   0.024%   0.000%   1.253%   0.000%   0.578%
   59    8.2  1.5 -1.5   0.001%   0.003%   0.007%   0.000%   0.000%   0.004%   0.000%   0.553%   0.001%   0.957%
   60    9.2  1.5 -1.5   0.002%   0.005%   0.101%   0.001%   0.000%   0.000%   0.000%   0.857%   0.010%  12.326%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.855%   0.349%   0.348%   0.601%   1.223%   1.317%   0.000%   0.000%  10.340%   4.760%
    5    5.2  0.5  0.5   0.733%   1.294%   1.196%   1.618%   0.028%   0.393%   0.001%   0.000%   0.040%   0.531%
    6    6.2  0.5  0.5   0.570%   0.904%   0.599%   0.183%   1.125%   1.440%   0.000%   0.000%   4.087%  10.192%
    7    7.2  0.5  0.5   3.717%   0.185%   0.004%   0.654%   0.772%   0.010%   0.000%   0.000%   3.971%   0.240%
    8    8.2  0.5  0.5   0.505%   0.024%   2.126%   1.172%   0.868%   0.148%   0.000%   0.000%   2.191%   0.178%
    9    9.2  0.5  0.5   0.000%   0.017%   0.002%   0.002%   0.001%   0.005%  11.603%   0.166%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.023%   0.003%   0.004%   0.001%   0.012%  11.223%   0.573%   0.000%   0.000%
   11   11.2  0.5  0.5   0.007%   0.001%   0.001%   0.000%   0.004%   0.001%   0.613%  11.200%   0.003%   0.000%
   12   12.2  0.5  0.5   0.001%   0.000%   0.003%   0.003%   0.004%   0.001%   0.240%  22.220%   0.001%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.349%   0.855%   0.601%   0.348%   1.317%   1.223%   0.000%   0.000%   4.760%  10.340%
   17    5.2  0.5 -0.5   1.294%   0.733%   1.618%   1.196%   0.393%   0.028%   0.000%   0.001%   0.531%   0.040%
   18    6.2  0.5 -0.5   0.904%   0.570%   0.183%   0.599%   1.440%   1.125%   0.000%   0.000%  10.192%   4.087%
   19    7.2  0.5 -0.5   0.185%   3.717%   0.654%   0.004%   0.010%   0.772%   0.000%   0.000%   0.240%   3.971%
   20    8.2  0.5 -0.5   0.024%   0.505%   1.172%   2.126%   0.148%   0.868%   0.000%   0.000%   0.178%   2.191%
   21    9.2  0.5 -0.5   0.017%   0.000%   0.002%   0.002%   0.005%   0.001%   0.166%  11.603%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.023%   0.000%   0.004%   0.003%   0.012%   0.001%   0.573%  11.223%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.001%   0.007%   0.000%   0.001%   0.001%   0.004%  11.200%   0.613%   0.000%   0.003%
   24   12.2  0.5 -0.5   0.000%   0.001%   0.003%   0.003%   0.001%   0.004%  22.220%   0.240%   0.000%   0.001%
   25    1.2  1.5  1.5   0.208%  14.223%   7.455%   9.548%   0.166%   2.113%   0.001%   0.025%   0.000%   0.023%
   26    2.2  1.5  1.5  24.543%   0.202%   5.195%   3.550%   9.156%   0.973%   0.102%   9.482%   0.017%   0.000%
   27    3.2  1.5  1.5  21.989%   0.103%  10.309%   8.750%   0.422%   0.045%   0.112%  10.419%   0.003%   0.000%
   28    4.2  1.5  1.5   1.553%   0.006%   1.278%   1.211%   1.234%   0.321%   0.036%   0.172%   2.022%   1.236%
   29    5.2  1.5  1.5   0.114%   0.000%   0.226%   0.056%   0.319%   0.681%   0.585%   0.009%   0.437%  14.529%
   30    6.2  1.5  1.5   1.986%   0.008%   0.111%   0.086%   3.561%   0.441%   0.000%   0.114%   0.098%   0.005%
   31    7.2  1.5  1.5   0.002%   0.438%   0.551%   0.662%   0.045%   0.387%   0.470%   0.005%   0.007%   0.872%
   32    8.2  1.5  1.5   0.010%   2.692%   1.395%   1.679%   0.131%   1.125%   0.075%   0.001%   0.030%   3.478%
   33    9.2  1.5  1.5   0.000%   0.046%   0.001%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.017%   0.023%   2.971%   2.950%  38.586%   4.010%   0.116%  12.024%   0.056%   0.000%
   35    2.2  1.5  0.5   0.032%   7.759%   2.862%   3.064%   1.585%  17.922%   3.474%   0.035%   0.000%   0.063%
   36    3.2  1.5  0.5   0.028%   7.381%   9.365%  11.102%   0.340%   2.405%   3.565%   0.051%   0.000%   0.001%
   37    4.2  1.5  0.5   0.016%   0.100%   0.147%   0.310%   0.455%   2.083%   0.356%   0.004%   1.606%  22.910%
   38    5.2  1.5  0.5   0.269%   0.005%   3.168%   2.512%   0.609%   0.372%   0.026%   0.000%  12.128%   2.284%
   39    6.2  1.5  0.5   0.001%   0.141%   0.409%   0.403%   0.199%   1.831%   0.381%   0.004%   0.008%   0.016%
   40    7.2  1.5  0.5   5.847%   0.023%   0.036%   0.030%   0.075%   0.009%   0.001%   0.077%   0.312%   0.003%
   41    8.2  1.5  0.5   1.037%   0.004%   0.045%   0.037%   0.918%   0.108%   0.005%   0.431%   1.310%   0.013%
   42    9.2  1.5  0.5   0.008%   0.000%   0.004%   0.003%   0.015%   0.002%   0.000%   0.000%   0.001%   0.000%
   43    1.2  1.5 -0.5   0.023%   0.017%   2.950%   2.971%   4.010%  38.586%  12.024%   0.116%   0.000%   0.056%
   44    2.2  1.5 -0.5   7.759%   0.032%   3.064%   2.862%  17.922%   1.585%   0.035%   3.474%   0.063%   0.000%
   45    3.2  1.5 -0.5   7.381%   0.028%  11.102%   9.365%   2.405%   0.340%   0.051%   3.565%   0.001%   0.000%
   46    4.2  1.5 -0.5   0.100%   0.016%   0.310%   0.147%   2.083%   0.455%   0.004%   0.356%  22.910%   1.606%
   47    5.2  1.5 -0.5   0.005%   0.269%   2.512%   3.168%   0.372%   0.609%   0.000%   0.026%   2.284%  12.128%
   48    6.2  1.5 -0.5   0.141%   0.001%   0.403%   0.409%   1.831%   0.199%   0.004%   0.381%   0.016%   0.008%
   49    7.2  1.5 -0.5   0.023%   5.847%   0.030%   0.036%   0.009%   0.075%   0.077%   0.001%   0.003%   0.312%
   50    8.2  1.5 -0.5   0.004%   1.037%   0.037%   0.045%   0.108%   0.918%   0.431%   0.005%   0.013%   1.310%
   51    9.2  1.5 -0.5   0.000%   0.008%   0.003%   0.004%   0.002%   0.015%   0.000%   0.000%   0.000%   0.001%
   52    1.2  1.5 -1.5  14.223%   0.208%   9.548%   7.455%   2.113%   0.166%   0.025%   0.001%   0.023%   0.000%
   53    2.2  1.5 -1.5   0.202%  24.543%   3.550%   5.195%   0.973%   9.156%   9.482%   0.102%   0.000%   0.017%
   54    3.2  1.5 -1.5   0.103%  21.989%   8.750%  10.309%   0.045%   0.422%  10.419%   0.112%   0.000%   0.003%
   55    4.2  1.5 -1.5   0.006%   1.553%   1.211%   1.278%   0.321%   1.234%   0.172%   0.036%   1.236%   2.022%
   56    5.2  1.5 -1.5   0.000%   0.114%   0.056%   0.226%   0.681%   0.319%   0.009%   0.585%  14.529%   0.437%
   57    6.2  1.5 -1.5   0.008%   1.986%   0.086%   0.111%   0.441%   3.561%   0.114%   0.000%   0.005%   0.098%
   58    7.2  1.5 -1.5   0.438%   0.002%   0.662%   0.551%   0.387%   0.045%   0.005%   0.470%   0.872%   0.007%
   59    8.2  1.5 -1.5   2.692%   0.010%   1.679%   1.395%   1.125%   0.131%   0.001%   0.075%   3.478%   0.030%
   60    9.2  1.5 -1.5   0.046%   0.000%   0.001%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.230%   0.184%   0.029%   0.019%   0.000%   0.001%   1.630%   2.302%   1.209%  16.262%
    5    5.2  0.5  0.5   0.187%   6.836%   0.035%   0.000%   0.000%   0.000%   9.618%   0.156%   1.083%   2.917%
    6    6.2  0.5  0.5   0.064%   0.388%   0.019%   0.007%   0.000%   0.000%   3.783%   1.328%   3.188%   3.704%
    7    7.2  0.5  0.5   0.419%   0.815%   0.094%   0.036%   0.000%   0.000%   0.812%   2.530%   0.094%  14.092%
    8    8.2  0.5  0.5   9.659%   0.126%   0.038%   0.009%   0.000%   0.000%   0.346%  20.449%   0.140%  11.113%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   11   11.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   12   12.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.184%   0.230%   0.019%   0.029%   0.001%   0.000%   2.302%   1.630%  16.262%   1.209%
   17    5.2  0.5 -0.5   6.836%   0.187%   0.000%   0.035%   0.000%   0.000%   0.156%   9.618%   2.917%   1.083%
   18    6.2  0.5 -0.5   0.388%   0.064%   0.007%   0.019%   0.000%   0.000%   1.328%   3.783%   3.704%   3.188%
   19    7.2  0.5 -0.5   0.815%   0.419%   0.036%   0.094%   0.000%   0.000%   2.530%   0.812%  14.092%   0.094%
   20    8.2  0.5 -0.5   0.126%   9.659%   0.009%   0.038%   0.000%   0.000%  20.449%   0.346%  11.113%   0.140%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   23   11.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.030%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.018%   0.000%
   26    2.2  1.5  1.5   0.005%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.129%
   27    3.2  1.5  1.5   0.030%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.025%   0.001%   0.151%
   28    4.2  1.5  1.5   0.977%   1.644%   1.575%   0.764%   0.357%  22.169%   0.829%   6.536%   0.068%   7.288%
   29    5.2  1.5  1.5   0.263%  21.002%   0.527%   0.237%   2.604%   1.714%  10.233%   0.663%   0.128%   0.529%
   30    6.2  1.5  1.5   3.640%   0.017%  15.985%   4.325%   0.010%   3.194%   0.082%   3.919%   0.096%  13.527%
   31    7.2  1.5  1.5   0.039%  14.617%   0.223%   0.783%  12.563%   0.012%  18.315%   0.617%   0.799%   0.005%
   32    8.2  1.5  1.5   0.000%   0.003%   2.631%   9.736%   0.001%   0.000%   3.572%   0.117%  10.637%   0.073%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   34    1.2  1.5  0.5   0.020%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.037%   0.000%   0.001%
   35    2.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.019%   0.001%   0.001%   0.000%
   36    3.2  1.5  0.5   0.000%   0.051%   0.000%   0.000%   0.000%   0.000%   0.060%   0.002%   0.001%   0.000%
   37    4.2  1.5  0.5   1.222%   2.323%   0.119%   0.031%  15.329%   0.209%   0.068%   0.093%   5.366%   0.045%
   38    5.2  1.5  0.5  19.419%   0.033%   0.667%   0.246%   0.963%   4.728%   0.060%   1.275%   0.376%   0.365%
   39    6.2  1.5  0.5   0.038%  15.243%   6.086%  22.544%   1.698%   0.002%   0.889%   0.038%   3.847%   0.032%
   40    7.2  1.5  0.5   0.419%   0.001%   2.465%   0.648%   0.033%  25.783%   0.043%   1.306%   0.018%   2.627%
   41    8.2  1.5  0.5   0.055%   0.000%  23.687%   6.433%   0.008%   8.616%   0.274%   7.952%   0.000%   0.062%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.000%   0.020%   0.000%   0.000%   0.001%   0.000%   0.037%   0.001%   0.001%   0.000%
   44    2.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.019%   0.000%   0.001%
   45    3.2  1.5 -0.5   0.051%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.060%   0.000%   0.001%
   46    4.2  1.5 -0.5   2.323%   1.222%   0.031%   0.119%   0.209%  15.329%   0.093%   0.068%   0.045%   5.366%
   47    5.2  1.5 -0.5   0.033%  19.419%   0.246%   0.667%   4.728%   0.963%   1.275%   0.060%   0.365%   0.376%
   48    6.2  1.5 -0.5  15.243%   0.038%  22.544%   6.086%   0.002%   1.698%   0.038%   0.889%   0.032%   3.847%
   49    7.2  1.5 -0.5   0.001%   0.419%   0.648%   2.465%  25.783%   0.033%   1.306%   0.043%   2.627%   0.018%
   50    8.2  1.5 -0.5   0.000%   0.055%   6.433%  23.687%   8.616%   0.008%   7.952%   0.274%   0.062%   0.000%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.030%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.018%
   53    2.2  1.5 -1.5   0.000%   0.005%   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   0.129%   0.001%
   54    3.2  1.5 -1.5   0.000%   0.030%   0.000%   0.001%   0.000%   0.000%   0.025%   0.001%   0.151%   0.001%
   55    4.2  1.5 -1.5   1.644%   0.977%   0.764%   1.575%  22.169%   0.357%   6.536%   0.829%   7.288%   0.068%
   56    5.2  1.5 -1.5  21.002%   0.263%   0.237%   0.527%   1.714%   2.604%   0.663%  10.233%   0.529%   0.128%
   57    6.2  1.5 -1.5   0.017%   3.640%   4.325%  15.985%   3.194%   0.010%   3.919%   0.082%  13.527%   0.096%
   58    7.2  1.5 -1.5  14.617%   0.039%   0.783%   0.223%   0.012%  12.563%   0.617%  18.315%   0.005%   0.799%
   59    8.2  1.5 -1.5   0.003%   0.000%   9.736%   2.631%   0.000%   0.001%   0.117%   3.572%   0.073%  10.637%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.011%   0.081%   0.012%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.027%   0.036%   0.031%   0.011%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.063%   0.021%   0.016%   0.004%   0.000%   0.000%
    4    4.2  0.5  0.5   4.096%   3.764%   0.001%   0.005%   6.156%   1.700%   0.086%   2.631%   1.543%   0.415%
    5    5.2  0.5  0.5  21.379%   1.194%   0.001%   0.047%   0.219%   3.735%   6.560%   0.746%   4.760%   0.846%
    6    6.2  0.5  0.5  15.699%   1.992%   0.001%   0.012%   1.528%   8.219%   0.518%   0.952%   4.060%   0.533%
    7    7.2  0.5  0.5   0.348%  20.568%   0.007%   0.006%   1.913%   1.359%   0.908%   6.829%   0.723%   3.925%
    8    8.2  0.5  0.5   0.444%   0.153%   0.010%   0.000%   2.001%   0.265%   0.487%   7.318%   0.092%   0.040%
    9    9.2  0.5  0.5   0.000%   0.000%   0.061%  13.009%   0.054%   0.382%   7.849%   0.927%   0.000%   0.000%
   10   10.2  0.5  0.5   0.001%   0.000%   0.607%  11.684%   0.285%   4.709%   4.496%   0.338%   0.001%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%  10.761%   0.676%   8.438%   0.408%   0.103%   1.521%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   6.559%   0.019%   0.003%   0.000%   0.000%   0.003%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.011%   0.000%   0.012%   0.081%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.036%   0.027%   0.011%   0.031%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.021%   0.063%   0.004%   0.016%   0.000%   0.000%
   16    4.2  0.5 -0.5   3.764%   4.096%   0.005%   0.001%   1.700%   6.156%   2.631%   0.086%   0.415%   1.543%
   17    5.2  0.5 -0.5   1.194%  21.379%   0.047%   0.001%   3.735%   0.219%   0.746%   6.560%   0.846%   4.760%
   18    6.2  0.5 -0.5   1.992%  15.699%   0.012%   0.001%   8.219%   1.528%   0.952%   0.518%   0.533%   4.060%
   19    7.2  0.5 -0.5  20.568%   0.348%   0.006%   0.007%   1.359%   1.913%   6.829%   0.908%   3.925%   0.723%
   20    8.2  0.5 -0.5   0.153%   0.444%   0.000%   0.010%   0.265%   2.001%   7.318%   0.487%   0.040%   0.092%
   21    9.2  0.5 -0.5   0.000%   0.000%  13.009%   0.061%   0.382%   0.054%   0.927%   7.849%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.001%  11.684%   0.607%   4.709%   0.285%   0.338%   4.496%   0.000%   0.001%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.676%  10.761%   0.408%   8.438%   1.521%   0.103%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.019%   6.559%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.115%   0.010%   0.031%   0.001%   0.035%   0.257%   2.000%   0.260%   7.472%   0.013%
   26    2.2  1.5  1.5   0.008%   0.078%  11.547%   0.033%   0.971%   0.092%   0.031%   0.144%   0.024%   2.131%
   27    3.2  1.5  1.5   0.005%   0.081%  11.606%   0.033%   0.856%   0.073%   0.027%   0.194%   0.003%   2.021%
   28    4.2  1.5  1.5   0.008%   0.142%   0.534%   0.098%   5.836%   0.305%   0.200%   0.687%   0.001%   2.010%
   29    5.2  1.5  1.5   0.002%   0.009%   0.035%   1.409%   0.254%   6.368%   0.746%   0.215%   0.000%   0.145%
   30    6.2  1.5  1.5   0.001%   0.021%   0.579%   0.000%   5.935%   0.431%   0.107%   0.798%   0.001%   2.556%
   31    7.2  1.5  1.5   2.857%   0.178%   0.003%   1.166%   0.353%   4.205%   3.244%   0.388%   3.634%   0.002%
   32    8.2  1.5  1.5  12.054%   0.751%   0.001%   0.235%   0.262%   3.260%   3.333%   0.414%  22.233%   0.010%
   33    9.2  1.5  1.5   0.001%   0.000%   0.000%   0.006%   0.141%   1.826%  13.139%   1.615%   0.002%   0.000%
   34    1.2  1.5  0.5   0.001%   0.001%  16.060%   0.053%   0.168%   0.018%   0.003%   0.013%   0.015%   0.004%
   35    2.2  1.5  0.5   0.097%   0.006%   0.043%   4.259%   0.034%   0.332%   1.266%   0.152%   5.418%   0.003%
   36    3.2  1.5  0.5   0.138%   0.009%   0.021%   4.008%   0.124%   1.555%   0.337%   0.042%   5.711%   0.003%
   37    4.2  1.5  0.5   0.482%   0.072%   0.003%   1.138%   0.041%   0.758%   5.208%   1.488%   0.677%   0.169%
   38    5.2  1.5  0.5   0.076%   0.102%   0.002%   0.082%   0.963%   0.034%   1.554%   4.802%   0.054%   2.284%
   39    6.2  1.5  0.5   0.004%   0.000%   0.004%   1.440%   0.063%   0.923%   5.120%   0.721%   0.965%   0.000%
   40    7.2  1.5  0.5   0.573%   9.185%   0.216%   0.001%   3.248%   0.261%   0.467%   3.766%   0.010%  21.968%
   41    8.2  1.5  0.5   0.194%   3.103%   1.856%   0.005%   3.573%   0.300%   0.334%   2.795%   0.002%   3.522%
   42    9.2  1.5  0.5   0.000%   0.000%   0.022%   0.000%  13.499%   1.120%   0.205%   1.763%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.001%   0.001%   0.053%  16.060%   0.018%   0.168%   0.013%   0.003%   0.004%   0.015%
   44    2.2  1.5 -0.5   0.006%   0.097%   4.259%   0.043%   0.332%   0.034%   0.152%   1.266%   0.003%   5.418%
   45    3.2  1.5 -0.5   0.009%   0.138%   4.008%   0.021%   1.555%   0.124%   0.042%   0.337%   0.003%   5.711%
   46    4.2  1.5 -0.5   0.072%   0.482%   1.138%   0.003%   0.758%   0.041%   1.488%   5.208%   0.169%   0.677%
   47    5.2  1.5 -0.5   0.102%   0.076%   0.082%   0.002%   0.034%   0.963%   4.802%   1.554%   2.284%   0.054%
   48    6.2  1.5 -0.5   0.000%   0.004%   1.440%   0.004%   0.923%   0.063%   0.721%   5.120%   0.000%   0.965%
   49    7.2  1.5 -0.5   9.185%   0.573%   0.001%   0.216%   0.261%   3.248%   3.766%   0.467%  21.968%   0.010%
   50    8.2  1.5 -0.5   3.103%   0.194%   0.005%   1.856%   0.300%   3.573%   2.795%   0.334%   3.522%   0.002%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.022%   1.120%  13.499%   1.763%   0.205%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.010%   0.115%   0.001%   0.031%   0.257%   0.035%   0.260%   2.000%   0.013%   7.472%
   53    2.2  1.5 -1.5   0.078%   0.008%   0.033%  11.547%   0.092%   0.971%   0.144%   0.031%   2.131%   0.024%
   54    3.2  1.5 -1.5   0.081%   0.005%   0.033%  11.606%   0.073%   0.856%   0.194%   0.027%   2.021%   0.003%
   55    4.2  1.5 -1.5   0.142%   0.008%   0.098%   0.534%   0.305%   5.836%   0.687%   0.200%   2.010%   0.001%
   56    5.2  1.5 -1.5   0.009%   0.002%   1.409%   0.035%   6.368%   0.254%   0.215%   0.746%   0.145%   0.000%
   57    6.2  1.5 -1.5   0.021%   0.001%   0.000%   0.579%   0.431%   5.935%   0.798%   0.107%   2.556%   0.001%
   58    7.2  1.5 -1.5   0.178%   2.857%   1.166%   0.003%   4.205%   0.353%   0.388%   3.244%   0.002%   3.634%
   59    8.2  1.5 -1.5   0.751%  12.054%   0.235%   0.001%   3.260%   0.262%   0.414%   3.333%   0.010%  22.233%
   60    9.2  1.5 -1.5   0.000%   0.001%   0.006%   0.000%   1.826%   0.141%   1.615%  13.139%   0.000%   0.002%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.008%   0.000%   0.001%   0.032%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.004%   0.003%   0.002%   0.026%   0.006%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.005%   0.003%   0.006%   0.026%
    4    4.2  0.5  0.5   1.646%   2.462%   0.330%   3.004%   1.055%   0.040%   3.300%   0.017%   0.000%   0.000%
    5    5.2  0.5  0.5   3.451%   0.017%   1.915%   0.975%   0.321%   0.635%   0.022%   0.792%   0.000%   0.000%
    6    6.2  0.5  0.5   3.738%   1.085%   1.083%   0.862%   0.186%   0.055%   0.392%   1.777%   0.000%   0.000%
    7    7.2  0.5  0.5   0.356%   1.271%   0.193%   4.932%   1.047%   0.075%   0.881%   0.345%   0.000%   0.001%
    8    8.2  0.5  0.5   0.054%   3.435%   0.057%   4.097%   5.213%   0.036%   0.811%   0.065%   0.000%   0.007%
    9    9.2  0.5  0.5   0.175%   0.005%   1.045%   0.001%   0.076%  27.647%   0.271%   1.611%   1.927%   0.019%
   10   10.2  0.5  0.5   0.092%   0.043%   1.042%   0.000%   0.217%  11.295%   0.230%  17.602%   2.374%   0.138%
   11   11.2  0.5  0.5   0.021%   0.797%   0.053%   0.009%   3.152%   0.660%  24.708%   0.741%   0.112%   3.066%
   12   12.2  0.5  0.5   0.000%   0.008%   0.000%   0.003%   0.017%   0.000%   0.009%   0.001%   0.063%  10.107%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.008%   0.000%   0.001%   0.000%   0.000%   0.032%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.004%   0.000%   0.002%   0.003%   0.006%   0.026%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.002%   0.003%   0.005%   0.026%   0.006%
   16    4.2  0.5 -0.5   2.462%   1.646%   3.004%   0.330%   0.040%   1.055%   0.017%   3.300%   0.000%   0.000%
   17    5.2  0.5 -0.5   0.017%   3.451%   0.975%   1.915%   0.635%   0.321%   0.792%   0.022%   0.000%   0.000%
   18    6.2  0.5 -0.5   1.085%   3.738%   0.862%   1.083%   0.055%   0.186%   1.777%   0.392%   0.000%   0.000%
   19    7.2  0.5 -0.5   1.271%   0.356%   4.932%   0.193%   0.075%   1.047%   0.345%   0.881%   0.001%   0.000%
   20    8.2  0.5 -0.5   3.435%   0.054%   4.097%   0.057%   0.036%   5.213%   0.065%   0.811%   0.007%   0.000%
   21    9.2  0.5 -0.5   0.005%   0.175%   0.001%   1.045%  27.647%   0.076%   1.611%   0.271%   0.019%   1.927%
   22   10.2  0.5 -0.5   0.043%   0.092%   0.000%   1.042%  11.295%   0.217%  17.602%   0.230%   0.138%   2.374%
   23   11.2  0.5 -0.5   0.797%   0.021%   0.009%   0.053%   0.660%   3.152%   0.741%  24.708%   3.066%   0.112%
   24   12.2  0.5 -0.5   0.008%   0.000%   0.003%   0.000%   0.000%   0.017%   0.001%   0.009%  10.107%   0.063%
   25    1.2  1.5  1.5   0.020%   0.003%   1.346%   0.035%   0.002%   0.325%   0.006%   0.059%   0.000%   0.004%
   26    2.2  1.5  1.5   0.025%   1.660%   0.023%   8.119%   0.315%   0.002%   0.047%   0.004%   0.010%   1.614%
   27    3.2  1.5  1.5   0.010%   0.633%   0.011%   9.243%   0.446%   0.001%   0.074%   0.009%   0.009%   1.454%
   28    4.2  1.5  1.5   0.671%   5.942%   0.006%  10.925%   4.157%   0.065%   8.639%   0.192%   0.894%   3.086%
   29    5.2  1.5  1.5   7.241%   0.673%   0.053%   0.758%   0.319%   0.544%   0.030%   5.875%  14.353%   0.133%
   30    6.2  1.5  1.5   0.197%   9.343%   0.007%   8.081%   0.646%   0.001%  11.309%   1.306%   0.007%   3.394%
   31    7.2  1.5  1.5   6.065%   0.096%   1.730%   0.003%   0.006%   2.345%   0.367%   3.085%  13.190%   0.082%
   32    8.2  1.5  1.5   1.467%   0.023%   7.237%   0.008%   0.006%   3.109%   0.285%   2.368%   2.108%   0.013%
   33    9.2  1.5  1.5   0.002%   0.000%   0.020%   0.000%   0.000%   0.011%   0.001%   0.005%   0.002%   0.000%
   34    1.2  1.5  0.5   0.202%  12.631%   0.001%   0.101%   0.091%   0.000%   0.129%   0.009%   0.012%   2.226%
   35    2.2  1.5  0.5   3.533%   0.068%   0.865%   0.000%   0.000%   0.030%   0.024%   0.257%   0.452%   0.004%
   36    3.2  1.5  0.5   2.612%   0.056%   1.507%   0.003%   0.000%   0.108%   0.017%   0.148%   0.466%   0.004%
   37    4.2  1.5  0.5   9.172%   0.199%   0.814%   1.272%   1.093%   7.762%   0.039%   0.526%  11.119%   0.078%
   38    5.2  1.5  0.5   0.732%   0.323%   0.009%  18.039%  13.949%   0.644%   2.250%   0.123%   0.817%   0.007%
   39    6.2  1.5  0.5  10.243%   0.150%   1.934%   0.013%   0.001%   5.939%   0.207%   1.777%  11.522%   0.071%
   40    7.2  1.5  0.5   0.017%   1.105%   0.007%   6.680%   3.158%   0.007%   2.936%   0.355%   0.013%   2.126%
   41    8.2  1.5  0.5   0.096%   6.115%   0.003%   1.544%   3.164%   0.008%   3.538%   0.417%   0.080%  12.732%
   42    9.2  1.5  0.5   0.000%   0.013%   0.000%   0.001%   0.008%   0.000%   0.000%   0.000%   0.000%   0.004%
   43    1.2  1.5 -0.5  12.631%   0.202%   0.101%   0.001%   0.000%   0.091%   0.009%   0.129%   2.226%   0.012%
   44    2.2  1.5 -0.5   0.068%   3.533%   0.000%   0.865%   0.030%   0.000%   0.257%   0.024%   0.004%   0.452%
   45    3.2  1.5 -0.5   0.056%   2.612%   0.003%   1.507%   0.108%   0.000%   0.148%   0.017%   0.004%   0.466%
   46    4.2  1.5 -0.5   0.199%   9.172%   1.272%   0.814%   7.762%   1.093%   0.526%   0.039%   0.078%  11.119%
   47    5.2  1.5 -0.5   0.323%   0.732%  18.039%   0.009%   0.644%  13.949%   0.123%   2.250%   0.007%   0.817%
   48    6.2  1.5 -0.5   0.150%  10.243%   0.013%   1.934%   5.939%   0.001%   1.777%   0.207%   0.071%  11.522%
   49    7.2  1.5 -0.5   1.105%   0.017%   6.680%   0.007%   0.007%   3.158%   0.355%   2.936%   2.126%   0.013%
   50    8.2  1.5 -0.5   6.115%   0.096%   1.544%   0.003%   0.008%   3.164%   0.417%   3.538%  12.732%   0.080%
   51    9.2  1.5 -0.5   0.013%   0.000%   0.001%   0.000%   0.000%   0.008%   0.000%   0.000%   0.004%   0.000%
   52    1.2  1.5 -1.5   0.003%   0.020%   0.035%   1.346%   0.325%   0.002%   0.059%   0.006%   0.004%   0.000%
   53    2.2  1.5 -1.5   1.660%   0.025%   8.119%   0.023%   0.002%   0.315%   0.004%   0.047%   1.614%   0.010%
   54    3.2  1.5 -1.5   0.633%   0.010%   9.243%   0.011%   0.001%   0.446%   0.009%   0.074%   1.454%   0.009%
   55    4.2  1.5 -1.5   5.942%   0.671%  10.925%   0.006%   0.065%   4.157%   0.192%   8.639%   3.086%   0.894%
   56    5.2  1.5 -1.5   0.673%   7.241%   0.758%   0.053%   0.544%   0.319%   5.875%   0.030%   0.133%  14.353%
   57    6.2  1.5 -1.5   9.343%   0.197%   8.081%   0.007%   0.001%   0.646%   1.306%  11.309%   3.394%   0.007%
   58    7.2  1.5 -1.5   0.096%   6.065%   0.003%   1.730%   2.345%   0.006%   3.085%   0.367%   0.082%  13.190%
   59    8.2  1.5 -1.5   0.023%   1.467%   0.008%   7.237%   3.109%   0.006%   2.368%   0.285%   0.013%   2.108%
   60    9.2  1.5 -1.5   0.000%   0.002%   0.000%   0.020%   0.011%   0.000%   0.005%   0.001%   0.000%   0.002%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.005%   0.000%   0.001%   0.000%   0.000%   0.033%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.003%   0.000%   0.002%   0.002%   0.006%   0.028%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.001%   0.001%   0.001%   0.004%   0.029%   0.006%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.468%   4.028%   2.140%   9.606%   0.000%   0.001%   0.628%   2.688%   1.050%   5.408%
    5    5.2  0.5  0.5   7.784%   2.095%   5.742%   0.398%   0.000%   0.015%   4.732%   0.451%   4.416%   0.046%
    6    6.2  0.5  0.5   0.684%   1.727%  11.246%   2.365%   0.001%   0.003%   0.382%   1.333%   7.440%   0.496%
    7    7.2  0.5  0.5   0.564%  10.642%   2.360%   2.567%   0.002%   0.002%   0.007%   7.115%   0.863%   1.716%
    8    8.2  0.5  0.5   0.086%  12.466%   0.475%   3.366%   0.008%   0.000%   0.475%   6.421%   0.080%   2.880%
    9    9.2  0.5  0.5   5.011%   0.016%   0.387%   0.051%   0.090%   6.365%  11.608%   0.952%   1.277%   0.073%
   10   10.2  0.5  0.5   2.223%   0.002%   2.652%   0.200%   0.422%   6.298%   6.884%   0.260%   6.645%   0.063%
   11   11.2  0.5  0.5   0.118%   0.379%   0.259%   3.946%   6.530%   0.433%   0.117%   0.971%   0.081%  12.646%
   12   12.2  0.5  0.5   0.000%   0.024%   0.002%   0.018%  60.031%   0.624%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.005%   0.000%   0.001%   0.033%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.003%   0.002%   0.002%   0.028%   0.006%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.001%   0.001%   0.004%   0.001%   0.006%   0.029%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   4.028%   0.468%   9.606%   2.140%   0.001%   0.000%   2.688%   0.628%   5.408%   1.050%
   17    5.2  0.5 -0.5   2.095%   7.784%   0.398%   5.742%   0.015%   0.000%   0.451%   4.732%   0.046%   4.416%
   18    6.2  0.5 -0.5   1.727%   0.684%   2.365%  11.246%   0.003%   0.001%   1.333%   0.382%   0.496%   7.440%
   19    7.2  0.5 -0.5  10.642%   0.564%   2.567%   2.360%   0.002%   0.002%   7.115%   0.007%   1.716%   0.863%
   20    8.2  0.5 -0.5  12.466%   0.086%   3.366%   0.475%   0.000%   0.008%   6.421%   0.475%   2.880%   0.080%
   21    9.2  0.5 -0.5   0.016%   5.011%   0.051%   0.387%   6.365%   0.090%   0.952%  11.608%   0.073%   1.277%
   22   10.2  0.5 -0.5   0.002%   2.223%   0.200%   2.652%   6.298%   0.422%   0.260%   6.884%   0.063%   6.645%
   23   11.2  0.5 -0.5   0.379%   0.118%   3.946%   0.259%   0.433%   6.530%   0.971%   0.117%  12.646%   0.081%
   24   12.2  0.5 -0.5   0.024%   0.000%   0.018%   0.002%   0.624%  60.031%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   2.630%   0.015%   0.268%   0.040%   0.005%   0.000%  12.294%   1.015%   0.736%   0.128%
   26    2.2  1.5  1.5   0.008%   0.094%   0.094%   0.749%   1.666%   0.017%   0.122%   0.204%   0.259%   4.169%
   27    3.2  1.5  1.5   0.000%   0.082%   0.090%   0.802%   1.729%   0.018%   0.032%   0.257%   0.217%   4.211%
   28    4.2  1.5  1.5   0.000%   0.003%   0.000%   0.000%   0.722%   0.162%   0.033%   0.082%   0.005%   1.595%
   29    5.2  1.5  1.5   0.001%   0.000%   0.003%   0.000%   0.058%   2.327%   0.069%   0.033%   1.577%   0.003%
   30    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.739%   0.003%   0.010%   0.083%   0.078%   1.553%
   31    7.2  1.5  1.5   0.010%   0.000%   0.007%   0.001%   0.022%   2.091%   0.507%   0.046%   0.990%   0.048%
   32    8.2  1.5  1.5   0.013%   0.000%   0.009%   0.001%   0.004%   0.346%   0.922%   0.069%   0.513%   0.032%
   33    9.2  1.5  1.5  42.167%   0.180%   4.157%   0.407%   0.000%   0.004%  20.020%   1.561%   1.278%   0.103%
   34    1.2  1.5  0.5   0.004%   0.021%   0.034%   0.239%   2.038%   0.022%   0.001%   0.127%   0.133%   1.392%
   35    2.2  1.5  0.5   1.595%   0.003%   0.559%   0.077%   0.008%   0.502%   6.997%   0.571%   3.408%   0.205%
   36    3.2  1.5  0.5   0.291%   0.003%   1.683%   0.175%   0.008%   0.560%   2.153%   0.140%   8.530%   0.475%
   37    4.2  1.5  0.5   0.004%   0.000%   0.001%   0.000%   0.016%   1.602%   1.146%   0.410%   0.093%   0.000%
   38    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.002%   0.008%   0.115%   0.412%   1.200%   0.000%   0.115%
   39    6.2  1.5  0.5   0.013%   0.000%   0.001%   0.000%   0.019%   1.745%   1.366%   0.109%   0.109%   0.008%
   40    7.2  1.5  0.5   0.000%   0.008%   0.000%   0.004%   0.341%   0.004%   0.072%   0.966%   0.032%   0.529%
   41    8.2  1.5  0.5   0.000%   0.006%   0.001%   0.007%   2.139%   0.022%   0.045%   0.499%   0.046%   0.955%
   42    9.2  1.5  0.5   0.003%   4.519%   4.219%  38.582%   0.012%   0.000%   0.144%   1.258%   1.036%  20.261%
   43    1.2  1.5 -0.5   0.021%   0.004%   0.239%   0.034%   0.022%   2.038%   0.127%   0.001%   1.392%   0.133%
   44    2.2  1.5 -0.5   0.003%   1.595%   0.077%   0.559%   0.502%   0.008%   0.571%   6.997%   0.205%   3.408%
   45    3.2  1.5 -0.5   0.003%   0.291%   0.175%   1.683%   0.560%   0.008%   0.140%   2.153%   0.475%   8.530%
   46    4.2  1.5 -0.5   0.000%   0.004%   0.000%   0.001%   1.602%   0.016%   0.410%   1.146%   0.000%   0.093%
   47    5.2  1.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.115%   0.008%   1.200%   0.412%   0.115%   0.000%
   48    6.2  1.5 -0.5   0.000%   0.013%   0.000%   0.001%   1.745%   0.019%   0.109%   1.366%   0.008%   0.109%
   49    7.2  1.5 -0.5   0.008%   0.000%   0.004%   0.000%   0.004%   0.341%   0.966%   0.072%   0.529%   0.032%
   50    8.2  1.5 -0.5   0.006%   0.000%   0.007%   0.001%   0.022%   2.139%   0.499%   0.045%   0.955%   0.046%
   51    9.2  1.5 -0.5   4.519%   0.003%  38.582%   4.219%   0.000%   0.012%   1.258%   0.144%  20.261%   1.036%
   52    1.2  1.5 -1.5   0.015%   2.630%   0.040%   0.268%   0.000%   0.005%   1.015%  12.294%   0.128%   0.736%
   53    2.2  1.5 -1.5   0.094%   0.008%   0.749%   0.094%   0.017%   1.666%   0.204%   0.122%   4.169%   0.259%
   54    3.2  1.5 -1.5   0.082%   0.000%   0.802%   0.090%   0.018%   1.729%   0.257%   0.032%   4.211%   0.217%
   55    4.2  1.5 -1.5   0.003%   0.000%   0.000%   0.000%   0.162%   0.722%   0.082%   0.033%   1.595%   0.005%
   56    5.2  1.5 -1.5   0.000%   0.001%   0.000%   0.003%   2.327%   0.058%   0.033%   0.069%   0.003%   1.577%
   57    6.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.003%   0.739%   0.083%   0.010%   1.553%   0.078%
   58    7.2  1.5 -1.5   0.000%   0.010%   0.001%   0.007%   2.091%   0.022%   0.046%   0.507%   0.048%   0.990%
   59    8.2  1.5 -1.5   0.000%   0.013%   0.001%   0.009%   0.346%   0.004%   0.069%   0.922%   0.032%   0.513%
   60    9.2  1.5 -1.5   0.180%  42.167%   0.407%   4.157%   0.004%   0.000%   1.561%  20.020%   0.103%   1.278%


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
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1959.38       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    377208.40 365208.68   3490.10   8502.84      4.79      0.08      1.55
 REAL TIME  *    380903.85 SEC
 DISK USED  *         1.95 GB (local),       23.48 GB (total)
 SF USED    *        12.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -295.165377426089

              CI              CI           MULTI         RHF-SCF
   -295.09300582   -295.09421355   -294.28427391   -294.74654372
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
