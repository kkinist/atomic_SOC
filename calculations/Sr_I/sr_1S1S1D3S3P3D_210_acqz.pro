
 Working directory              : /wrk/irikura/molpro.Snbk8VyiRF/
 Global scratch directory       : /wrk/irikura/molpro.Snbk8VyiRF/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Snbk8VyiRF/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Sr SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVQZ-DK
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (2/10) adds 4d orbitals
 {multi
     closed,9,9
     occ,16,12
     wf,sym=1,spin=0;state,7;
     wf,sym=1,spin=2;state,9;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,3,6
 {ci;wf,sym=1,spin=0;state,7; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,9; save,5203.2}
 hlsdiag(8) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 21-Mar-24          TIME: 11:44:59  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry SR     S aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry SR     P aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry SR     D aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry SR     F aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry SR     G aug-cc-pwCVQZ-DK     selected for orbital group  1


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

   1  SR     38.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   38
 NUMBER OF PRIMITIVE AOS:         345
 NUMBER OF SYMMETRY AOS:          291
 NUMBER OF CONTRACTIONS:          152   (   84Ag  +   68Au  )
 NUMBER OF INNER CORE ORBITALS:    14   (    8Ag  +    6Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     69.468 MB (compressed) written to integral file ( 13.2%)

     Node minimum: 1.311 MB, node maximum: 9.175 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2134972.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2134972      RECORD LENGTH: 524288

 Memory used in sort:       2.69 MW

 SORT1 READ    64621816. AND WROTE      412616. INTEGRALS IN      2 RECORDS. CPU TIME:     0.27 SEC, REAL TIME:     0.30 SEC
 SORT2 READ     6580031. AND WROTE    34252926. INTEGRALS IN     80 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC

 Node minimum:     2133127.  Node maximum:     2146424. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9  101112131415 7 8 910  1112131415 7 8 91011
                                       12131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.221E-04 0.552E-03 0.145E-02 0.145E-02 0.145E-02 0.145E-02 0.145E-02 0.162E-02
         2 0.116E-03 0.116E-03 0.116E-03 0.325E-02 0.325E-02 0.325E-02 0.108E-01 0.108E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         5.93      5.74
 REAL TIME  *         6.97 SEC
 DISK USED  *        30.19 MB (local),      650.03 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   10   9

 Initial occupancy:  10   9

 NELEC=   38   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -3177.27927550   -3177.27927550     0.00D+00     0.11D+00     0     0       0.01      0.03    start
   2    -3177.27927581      -0.00000031     0.77D-04     0.22D-03     1     0       0.02      0.05    diag
   3    -3177.27927584      -0.00000003     0.15D-04     0.58D-04     2     0       0.01      0.06    diag
   4    -3177.27927584      -0.00000000     0.42D-05     0.17D-04     3     0       0.01      0.07    diag
   5    -3177.27927584      -0.00000000     0.11D-06     0.79D-05     4     0       0.01      0.08    diag
   6    -3177.27927584       0.00000000     0.15D-07     0.27D-05     5     0       0.02      0.10    diag
   7    -3177.27927584      -0.00000000     0.43D-08     0.25D-06     0     0       0.01      0.11    diag

 Final occupancy:  10   9

 !RHF STATE 1.1 Energy              -3177.279275839281
  RHF One-electron energy           -4396.555899350639
  RHF Two-electron energy            1219.276623511359
  RHF Kinetic energy                 3453.294766795929
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.920071841648

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.21710     1  1  s    0.99779
    2.1     2.00000   -83.10695     1  2  s    1.01591
    3.1     2.00000   -13.95394     1  3  s    0.98302
    4.1     2.00000    -5.58740     1  1  d0   0.98530
    5.1     2.00000    -5.58740     1  1  d1-  1.00003
    6.1     2.00000    -5.58740     1  1  d1+  1.00003
    7.1     2.00000    -5.58740     1  1  d2-  1.00003
    8.1     2.00000    -5.58740     1  1  d2+  0.98530
    9.1     2.00000    -1.94834     1  4  s    0.99254
   10.1     2.00000    -0.18122     1  5  s    0.97210
    1.2     2.00000   -73.65330     1  1  px   0.99999
    2.2     2.00000   -73.65330     1  1  py   0.99999
    3.2     2.00000   -73.65330     1  1  pz   0.99999
    4.2     2.00000   -10.80381     1  2  px   1.00011
    5.2     2.00000   -10.80381     1  2  py   1.00011
    6.2     2.00000   -10.80381     1  2  pz   1.00011
    7.2     2.00000    -1.09516     1  3  px   0.99985
    8.2     2.00000    -1.09516     1  3  py   0.99985
    9.2     2.00000    -1.09516     1  3  pz   0.99985


 HOMO     10.1    -0.181216 =      -4.9311eV
 LUMO     10.2     0.008680 =       0.2362eV
 LUMO-HOMO         0.189896 =       5.1673eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.56       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         6.05      0.12      5.74
 REAL TIME  *         7.10 SEC
 DISK USED  *        31.14 MB (local),      665.16 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  18 (    9    9)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:     124 (   68   56)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.148D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.322D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.174D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.163D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.148D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.696D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.790D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.253D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.186D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.124D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 1   1 3 5 4 6 2 3 5 2 6   4 1 2 3 5 6 4 1 2 3   5 6 410131415 912 8
                                       11 7 2 3 5 6 4 11013  141512 8 911 7 2 3 5   4 6 11013141512 8 9   711 2 3 5 6 4 1 2 6
                                        5 3 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.294D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.759D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.801D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.122D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.878D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.769D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.526D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.477D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.452D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.452D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 7 9   410 8 5 6 1 2 3 7 9  10 8 4 5 6 1 2 3 7 9
                                       10 8 4 5 6 1 2 3 7 9   410 8 5 6 1 2 3 5 6   4 810 9 7 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250
 
 Number of orbital rotations:  1850  ( 90 closed/active, 1116 closed/virtual, 0 active/active, 644 active/virtual )
 Total number of variables:    2472
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   19   36   10  -3177.12444193   -3177.19809351   -0.07365157    0.05401586 0.00012825 0.00000000  0.25E+01      2.09
   2    8   14    0  -3177.19407201   -3177.19720228   -0.00313027    0.04403151 0.00001210 0.00000000  0.37E+00      3.65
   3   10   16    0  -3177.19722511   -3177.19722649   -0.00000139    0.00061241 0.00000001 0.00000000  0.89E-02      5.26
   4    5    8    0  -3177.19722649   -3177.19722649   -0.00000000    0.00000105 0.00000000 0.00000000  0.81E-05      6.39

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.23E-09)
                       Final energy:  -3177.19722649
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -3177.302041164331
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.15055304
 One electron energy                         -4396.14585547
 Two electron energy                          1218.84381430
 Virial ratio                                    1.92011686
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -3177.205600689775
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.24041645
 One electron energy                         -4396.80684919
 Two electron energy                          1219.60124850
 Virial ratio                                    1.92006499
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -3177.205600689024
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.24041645
 One electron energy                         -4396.80684924
 Two electron energy                          1219.60124855
 Virial ratio                                    1.92006499
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -3177.205600688130
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.24041645
 One electron energy                         -4396.80684923
 Two electron energy                          1219.60124854
 Virial ratio                                    1.92006499
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -3177.205600685904
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.24041640
 One electron energy                         -4396.80684888
 Two electron energy                          1219.60124820
 Virial ratio                                    1.92006499
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -3177.205600685734
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.24041641
 One electron energy                         -4396.80684899
 Two electron energy                          1219.60124831
 Virial ratio                                    1.92006499
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -3177.162624983351
 Nuclear energy                                  0.00000000
 Kinetic energy                               3452.87255025
 One electron energy                         -4391.62359451
 Two electron energy                          1214.46096952
 Virial ratio                                    1.92015056
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -3177.208656020668
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.35596376
 One electron energy                         -4397.85821816
 Two electron energy                          1220.64956213
 Virial ratio                                    1.92003509
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -3177.208656018475
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.35596372
 One electron energy                         -4397.85821792
 Two electron energy                          1220.64956190
 Virial ratio                                    1.92003509
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -3177.208656016709
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.35596369
 One electron energy                         -4397.85821773
 Two electron energy                          1220.64956171
 Virial ratio                                    1.92003509
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -3177.208656016096
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.35596368
 One electron energy                         -4397.85821766
 Two electron energy                          1220.64956164
 Virial ratio                                    1.92003509
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -3177.208656015108
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.35596367
 One electron energy                         -4397.85821755
 Two electron energy                          1220.64956154
 Virial ratio                                    1.92003509
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -3177.171718999578
 Nuclear energy                                  0.00000000
 Kinetic energy                               3452.74901991
 One electron energy                         -4390.84457850
 Two electron energy                          1213.67285950
 Virial ratio                                    1.92018612
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -3177.149318411854
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.02798053
 One electron energy                         -4394.69560251
 Two electron energy                          1217.54628410
 Virial ratio                                    1.92010529
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -3177.149318408118
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.02798052
 One electron energy                         -4394.69560248
 Two electron energy                          1217.54628407
 Virial ratio                                    1.92010529
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -3177.149318406186
 Nuclear energy                                  0.00000000
 Kinetic energy                               3453.02798051
 One electron energy                         -4394.69560249
 Two electron energy                          1217.54628408
 Virial ratio                                    1.92010529
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000076047
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.322938536365
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.677062553681
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000009499999
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.999989127204
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.048437509102
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000358770
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.951630120338
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.999931601277
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000458508
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999998782
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.999999995925
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.000000005293
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000603454
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.782244842832
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.217755476126
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999990177988
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.000008726054
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     2.950767212820
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000350571
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.049234728568
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.999999126638
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999998533967
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999999435
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.000000004641
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999995924
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999320499
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.894816620803
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     2.105181970193
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000322013
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     1.000002146743
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000795278078
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.999999290659
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999135151094
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000069272085
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000001007525
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000000001783
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999999434
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999998783
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 1   5 6 4 3 2 1 3 5 6 4   2 1 2 3 5 6 4 1 2 3   5 6 41310 91514 711
                                        812 2 3 5 6 4 11310  1514 9 812 711 2 3 5   6 4 113101514 812 9   711 2 3 5 6 4 1 2 5
                                        6 3 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 3 2 1 2 3 9 7   410 8 5 6 1 2 3 9 7  10 8 4 5 6 1 2 3 9 7
                                        810 4 5 6 1 2 3 5 4   7 9 810 6 1 2 3 5 6   410 8 7 9 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.23096     1  1  s    0.99779
    2.1     2.00000   -83.11834     1  2  s    1.01595
    3.1     2.00000   -13.96456     1  3  s    0.98243
    4.1     2.00000    -5.59946     1  1  d0   1.00014
    5.1     2.00000    -5.59946     1  1  d1-  1.00014
    6.1     2.00000    -5.59946     1  1  d1+  1.00014
    7.1     2.00000    -5.59946     1  1  d2-  1.00014
    8.1     2.00000    -5.59946     1  1  d2+  1.00014
    9.1     2.00000    -1.95632     1  4  s    1.02226
   10.1     0.79270    -0.09283     1  4  s   -0.34306    1  5  s    0.61635    1  6  s   -0.30487
   11.1     0.12974     0.06690     1  2  d2+ -0.91612
   12.1     0.12974     0.06690     1  2  d1- -0.91612
   13.1     0.12974     0.06690     1  2  d1+ -0.91612
   14.1     0.12974     0.06690     1  2  d2- -0.91612
   15.1     0.12974     0.06690     1  2  d0  -0.91612
   16.1     0.12596     0.02328     1  5  s    0.40061    1  6  s   -0.34624    1  7  s   -0.30586    1 12  s    1.20961
    1.2     2.00000   -73.66545     1  1  px   0.99999
    2.2     2.00000   -73.66545     1  1  py   0.99999
    3.2     2.00000   -73.66545     1  1  pz   0.99999
    4.2     2.00000   -10.81550     1  2  px   1.00016
    5.2     2.00000   -10.81550     1  2  py   1.00016
    6.2     2.00000   -10.81550     1  2  pz   1.00016
    7.2     2.00000    -1.10857     1  3  px   1.00687
    8.2     2.00000    -1.10857     1  3  py   1.00687
    9.2     2.00000    -1.10857     1  3  pz   1.00687
   10.2     0.14422     0.02835     1  4  px  -1.30741
   11.2     0.14422     0.02835     1  4  py  -1.30741
   12.2     0.14422     0.02835     1  4  pz  -1.30741
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.95834515     -0.00000000     -0.00000002     -0.00000001      0.00000000      0.00000000      0.01190516
 b00000a 000      0.00442249     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.69526628
 a00000b 000     -0.00442249      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.69526628
 b000a00 000     -0.00000000     -0.62285678      0.00023079      0.00006626      0.00014346     -0.00008217     -0.00000000
 a000b00 000      0.00000000      0.62285678     -0.00023079     -0.00006626     -0.00014346      0.00008217      0.00000000
 a00b000 000      0.00000000      0.00014333      0.00007900     -0.00012508      0.62285584      0.00110606      0.00000000
 b00a000 000     -0.00000000     -0.00014333     -0.00007900      0.00012508     -0.62285584     -0.00110606     -0.00000000
 a0b0000 000     -0.00000000     -0.00008245     -0.00022464      0.00052131     -0.00110591      0.62285561      0.00000000
 b0a0000 000      0.00000000      0.00008245      0.00022464     -0.00052131      0.00110591     -0.62285561     -0.00000000
 a0000b0 000      0.00000000      0.00021306      0.45185925      0.42868847      0.00002908     -0.00019575     -0.00000001
 b0000a0 000     -0.00000000     -0.00021306     -0.45185925     -0.42868847     -0.00002908      0.00019575      0.00000001
 ba00000 000      0.00000000      0.00011067      0.42868843     -0.45185901     -0.00014609      0.00053256     -0.00000000
 ab00000 000     -0.00000000     -0.00011067     -0.42868843      0.45185901      0.00014609     -0.00053256      0.00000000
 0000000 020     -0.15881869     -0.00000645      0.08774834     -0.36570434     -0.00008517      0.00033758      0.02320594
 0000000 200     -0.15881870     -0.00012220     -0.36058352      0.10685982      0.00006761     -0.00021938      0.02320593
 0000000 ba0      0.00000000     -0.32569870      0.00012068      0.00003465      0.00007502     -0.00004297      0.00000000
 0000000 ab0     -0.00000000      0.32569870     -0.00012068     -0.00003465     -0.00007502      0.00004297     -0.00000000
 0000000 a0b     -0.00000000      0.00007495      0.00004131     -0.00006541      0.32569820      0.00057837     -0.00000000
 0000000 b0a      0.00000000     -0.00007495     -0.00004131      0.00006541     -0.32569820     -0.00057837      0.00000000
 0000000 0ab     -0.00000000     -0.00004312     -0.00011747      0.00027260     -0.00057829      0.32569807     -0.00000000
 0000000 0ba      0.00000000      0.00004312      0.00011747     -0.00027260      0.00057829     -0.32569807      0.00000000
 0000000 002     -0.15881868      0.00012865      0.27283515      0.25884450      0.00001756     -0.00011820      0.02320596
 0000002 000     -0.01482942      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.14269160
 0000ba0 000      0.00000000      0.05482179     -0.00002031     -0.00000583     -0.00001263      0.00000723      0.00000000
 0000ab0 000     -0.00000000     -0.05482179      0.00002031      0.00000583      0.00001263     -0.00000723     -0.00000000
 0002000 000     -0.03360185      0.00000094     -0.01279105      0.05330868      0.00001242     -0.00004921     -0.04709870
 0020000 000     -0.03360185      0.00001781      0.05256222     -0.01557693     -0.00000986      0.00003198     -0.04709871
 
 Energy:      -3177.30204116  -3177.20560069  -3177.20560069  -3177.20560069  -3177.20560069  -3177.20560069  -3177.16262498
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000     -0.00000001      0.00000000      0.00000000     -0.00000000      0.00000000      1.00000000      0.00000000
 a000a00 000      0.00018830      0.99996685      0.00005163      0.00029092     -0.00032362     -0.00000000      0.00000000
 a00a000 000     -0.00000754      0.00032376     -0.00048254     -0.00038793      0.99996672      0.00000000     -0.00000000
 a0a0000 000      0.00014807     -0.00029107      0.00479478      0.99995534      0.00039034      0.00000000      0.00000000
 a0000a0 000      0.99986754     -0.00018753     -0.01409898     -0.00008051      0.00000076      0.00000001     -0.00000000
 aa00000 000      0.01409842     -0.00005273      0.99985595     -0.00479660      0.00048075     -0.00000000      0.00000000
 0000000 aa0     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.87998713
 0000000 a0a      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00002092
 0000000 0aa     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00003071
 0a00a00 000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.42485070
 00a00a0 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00001284
 000a0a0 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000875
 00a0a00 000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000505
 000aa00 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000741
 0aa0000 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000741
 0a0a000 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000505
 00aa000 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.21242534
 
 Energy:      -3177.20865602  -3177.20865602  -3177.20865602  -3177.20865602  -3177.20865602  -3177.17171900  -3177.14931841

 State:                8               9
 a00000a 000      0.00000000      0.00000000
 a000a00 000      0.00000000     -0.00000000
 a00a000 000      0.00000001      0.00000000
 a0a0000 000     -0.00000000      0.00000000
 a0000a0 000     -0.00000000     -0.00000000
 aa00000 000      0.00000000     -0.00000000
 0000000 aa0      0.00002092     -0.00003071
 0000000 a0a      0.87998712      0.00005617
 0000000 0aa     -0.00005617      0.87998712
 0a00a00 000     -0.00001010      0.00001483
 00a00a0 000      0.00002349     -0.36793153
 000a0a0 000     -0.36793152     -0.00002349
 00a0a00 000      0.21242536      0.00001356
 000aa00 000     -0.00001356      0.21242536
 0aa0000 000     -0.00001356      0.21242535
 0a0a000 000     -0.21242535     -0.00001356
 00aa000 000      0.00000505     -0.00000741
 
 Energy:      -3177.14931841  -3177.14931841
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       84.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.11       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.97      4.92      0.12      5.74
 REAL TIME  *        14.41 SEC
 DISK USED  *        85.34 MB (local),        1.50 GB (total)
 SF USED    *       138.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -3177.302041   0.0
    -3177.205601   6.0
    -3177.205601   6.0
    -3177.205601   6.0
    -3177.205601   6.0
    -3177.205601   6.0
    -3177.162625   0.0
    -3177.208656   6.0
    -3177.208656   6.0
    -3177.208656   6.0
    -3177.208656   6.0
    -3177.208656   6.0
    -3177.171719   0.0
    -3177.149318   2.0
    -3177.149318   2.0
    -3177.149318   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 38
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:    29620 conf    75790 CSFs
 N-1 el internal:     9955 conf    31960 CSFs
 N-2 el internal:     1621 conf     5743 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           9 (   3   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     124 (  68  56 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.26 sec, npass=  1  Memory used:   2.45 MW


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -3177.30204116
     2     -3177.20560069
     3     -3177.20560069
     4     -3177.20560069
     5     -3177.20560069
     6     -3177.20560069
     7     -3177.16262498

 Number of blocks in overlap matrix:   694   Smallest eigenvalue:  0.91D+00
 Number of N-2 electron functions:     748
 Number of N-1 electron functions:   31960

 Number of internal configurations:                38116
 Number of singly external configurations:       1982912
 Number of doubly external configurations:       2882448
 Total number of contracted configurations:      4903476
 Total number of uncontracted configurations:   24095670

 Diagonal Coupling coefficients finished.               Storage:20307871 words, CPU-Time:      6.99 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1774718 words, CPU-time:      0.45 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.30204116     0.00000000    -0.36528461  0.29D-01  0.44D-01    11.69
    1     2     2     1.00000000     0.00000000 -3177.20560069     0.00000000    -0.37134315  0.32D-01  0.48D-01    11.69
    1     3     3     1.00000000     0.00000000 -3177.20560069    -0.00000000    -0.37116257  0.32D-01  0.48D-01    11.69
    1     4     4     1.00000000     0.00000000 -3177.20560069     0.00000000    -0.37115712  0.32D-01  0.48D-01    11.69
    1     5     5     1.00000000     0.00000000 -3177.20560069    -0.00000000    -0.37130838  0.32D-01  0.48D-01    11.69
    1     6     6     1.00000000     0.00000000 -3177.20560069     0.00000000    -0.37126718  0.32D-01  0.48D-01    11.69
    1     7     7     1.00000000     0.00000000 -3177.16262498     0.00000000    -0.36226185  0.41D-01  0.43D-01    11.69
    2     1     1     1.06066840    -0.34439785 -3177.64643902    -0.34439785    -0.00629499  0.16D-02  0.55D-03   101.94
    2     2     2     1.06498657    -0.34399483 -3177.54959552    -0.34399483    -0.00649263  0.19D-02  0.66D-03   101.94
    2     3     3     1.06502988    -0.34398606 -3177.54958675    -0.34398606    -0.00650556  0.19D-02  0.66D-03   101.94
    2     4     4     1.06513445    -0.34395752 -3177.54955821    -0.34395752    -0.00653875  0.19D-02  0.66D-03   101.94
    2     5     5     1.06513793    -0.34395629 -3177.54955697    -0.34395629    -0.00653958  0.19D-02  0.66D-03   101.94
    2     6     6     1.06514670    -0.34395326 -3177.54955395    -0.34395326    -0.00654239  0.19D-02  0.66D-03   101.94
    2     7     7     1.06917988    -0.34139636 -3177.50402135    -0.34139636    -0.00741083  0.31D-02  0.75D-03   101.94
    3     1     1     1.06086428    -0.35076143 -3177.65280259    -0.00636358    -0.00017195  0.32D-04  0.22D-04   190.13
    3     2     2     1.06353598    -0.35049753 -3177.55609822    -0.00650270    -0.00019162  0.40D-04  0.30D-04   190.13
    3     3     3     1.06354012    -0.35049567 -3177.55609636    -0.00650960    -0.00019357  0.41D-04  0.30D-04   190.13
    3     4     4     1.06354324    -0.35049510 -3177.55609579    -0.00653758    -0.00019445  0.41D-04  0.31D-04   190.13
    3     5     5     1.06354108    -0.35049481 -3177.55609549    -0.00653852    -0.00019461  0.41D-04  0.31D-04   190.13
    3     6     6     1.06354092    -0.35049468 -3177.55609537    -0.00654142    -0.00019470  0.41D-04  0.31D-04   190.13
    3     7     7     1.06478451    -0.34867203 -3177.51129701    -0.00727566    -0.00024918  0.61D-04  0.42D-04   190.13
    4     1     1     1.06141045    -0.35094142 -3177.65298259    -0.00017999    -0.00000798  0.31D-05  0.81D-06   278.33
    4     2     2     1.06416246    -0.35070069 -3177.55630138    -0.00020316    -0.00001241  0.81D-05  0.10D-05   278.33
    4     3     3     1.06416438    -0.35070059 -3177.55630128    -0.00020493    -0.00001250  0.81D-05  0.10D-05   278.33
    4     4     4     1.06416439    -0.35070050 -3177.55630119    -0.00020540    -0.00001258  0.82D-05  0.10D-05   278.33
    4     5     5     1.06416446    -0.35070050 -3177.55630119    -0.00020569    -0.00001258  0.81D-05  0.10D-05   278.33
    4     6     6     1.06416472    -0.35070050 -3177.55630118    -0.00020582    -0.00001258  0.82D-05  0.10D-05   278.33
    4     7     7     1.06514960    -0.34892936 -3177.51155434    -0.00025733    -0.00001231  0.55D-05  0.15D-05   278.33
    5     1     1     1.06158189    -0.35095051 -3177.65299168    -0.00000909    -0.00000040  0.14D-06  0.48D-07   364.49
    5     2     2     1.06436781    -0.35071600 -3177.55631669    -0.00001530    -0.00000109  0.44D-06  0.11D-06   364.49
    5     3     3     1.06436707    -0.35071598 -3177.55631667    -0.00001539    -0.00000110  0.45D-06  0.11D-06   364.49
    5     4     4     1.06436715    -0.35071597 -3177.55631666    -0.00001547    -0.00000111  0.46D-06  0.11D-06   364.49
    5     5     5     1.06436688    -0.35071597 -3177.55631666    -0.00001547    -0.00000111  0.46D-06  0.11D-06   364.49
    5     6     6     1.06436677    -0.35071597 -3177.55631666    -0.00001547    -0.00000111  0.46D-06  0.11D-06   364.49
    5     7     7     1.06516661    -0.34894352 -3177.51156851    -0.00001416    -0.00000071  0.35D-06  0.98D-07   364.49
    6     1     1     1.06160886    -0.35095096 -3177.65299213    -0.00000045    -0.00000002  0.61D-08  0.29D-08   450.56
    6     2     2     1.06441413    -0.35071734 -3177.55631803    -0.00000135    -0.00000009  0.32D-07  0.97D-08   450.56
    6     3     3     1.06441371    -0.35071734 -3177.55631803    -0.00000136    -0.00000009  0.33D-07  0.10D-07   450.56
    6     4     4     1.06441388    -0.35071734 -3177.55631803    -0.00000137    -0.00000009  0.32D-07  0.99D-08   450.56
    6     5     5     1.06441373    -0.35071734 -3177.55631803    -0.00000137    -0.00000009  0.33D-07  0.10D-07   450.56
    6     6     6     1.06441371    -0.35071734 -3177.55631803    -0.00000137    -0.00000009  0.33D-07  0.10D-07   450.56
    6     7     7     1.06516792    -0.34894434 -3177.51156932    -0.00000082    -0.00000005  0.17D-07  0.93D-08   450.56
    7     1     1     1.06161403    -0.35095098 -3177.65299214    -0.00000002    -0.00000001  0.15D-08  0.78D-09   527.35
    7     2     2     1.06442583    -0.35071744 -3177.55631813    -0.00000010    -0.00000001  0.40D-08  0.80D-09   527.35
    7     3     3     1.06442587    -0.35071744 -3177.55631813    -0.00000010    -0.00000001  0.38D-08  0.77D-09   527.35
    7     4     4     1.06442588    -0.35071744 -3177.55631813    -0.00000010    -0.00000001  0.39D-08  0.79D-09   527.35
    7     5     5     1.06442587    -0.35071744 -3177.55631813    -0.00000010    -0.00000001  0.40D-08  0.80D-09   527.35
    7     6     6     1.06442586    -0.35071744 -3177.55631813    -0.00000010    -0.00000001  0.40D-08  0.80D-09   527.35
    7     7     7     1.06517649    -0.34894439 -3177.51156938    -0.00000006    -0.00000000  0.14D-08  0.56D-09   527.35


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   7.4%
 S   2.8%  44.9%
 P   0.6%  21.5%   8.5%

 Initialization:   1.5%
 Other:           12.8%

 Total CPU:      527.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/00000\222000           0.0424533  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.9469214
 2222222000000222000           0.9327129   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0363793
 222222/00\000222000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.8674086  -0.0000000
 222222/000\00222000          -0.0000000   0.8674086  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 222222/0\0000222000           0.0000000   0.0000000  -0.0000000   0.0012509   0.8674077   0.0000000  -0.0000000
 222222/0000\0222000          -0.0000000   0.0000000   0.8527957   0.1585471  -0.0002286  -0.0000000   0.0000000
 222222/\00000222000          -0.0000000  -0.0000000  -0.1585473   0.8527948  -0.0012299   0.0000000   0.0000000
 2222220000000222/\0          -0.0000000   0.4165752   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2222220000000222/0\          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.4165751   0.0000000
 22222200000002220/\          -0.0000000  -0.0000000  -0.0000000   0.0006008   0.4165747  -0.0000000  -0.0000000
 2222220000000222002          -0.1406900  -0.0000000   0.3344020   0.0621702  -0.0000897  -0.0000000   0.0364600
 2222220000000222020          -0.1406900  -0.0000000  -0.1133600  -0.3206855   0.0004625  -0.0000000   0.0364600
 2222220000000222200          -0.1406900   0.0000000  -0.2210420   0.2585153  -0.0003728   0.0000000   0.0364600
 2222220000002222000          -0.0096950   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.1527117
 2222220000/\0222000           0.0000000  -0.0738817   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2222220/000\0222000          -0.0000000   0.0000000   0.0135043  -0.0726370   0.0001048  -0.0000000  -0.0000000
 22222200/\000222000          -0.0000000   0.0639834  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222220/0\000222000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0639834  -0.0000000
 22222200/0\00222000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0639833  -0.0000000
 2222220/\0000222000          -0.0000000  -0.0000000   0.0000000  -0.0000923  -0.0639833  -0.0000000  -0.0000000
 222222000/\00222000           0.0000000   0.0000000  -0.0000000   0.0000923   0.0639833   0.0000000   0.0000000
 2222220000020222000          -0.0340469  -0.0000000   0.0513623   0.0095490  -0.0000138  -0.0000000  -0.0426879
 2222220200000222000          -0.0340469  -0.0000000  -0.0513622  -0.0095490   0.0000138  -0.0000000  -0.0426879
 2222220000200222000          -0.0340469  -0.0000000  -0.0513622  -0.0095490   0.0000138   0.0000000  -0.0426879

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966492   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.049686
 2           0.000000    0.966889   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.811215    0.526122    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000   -0.526121    0.811214   -0.000000    0.001394    0.000000
 5          -0.000000    0.000000    0.000759   -0.001170    0.000000    0.966888   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.966889   -0.000000    0.000000
 7          -0.053251    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.965014

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967767    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.001819
 2           0.000000    0.966889   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.966889   -0.000000   -0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.966889    0.000000   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.966889   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.966889    0.000000
 7          -0.001819    0.000000    0.000000    0.000000   -0.000000    0.000000    0.966480

 Energy contributions of internal configurations for state 1
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   397       0.00003552    -1.37648652       2222222000000222000             

 Energy contributions of internal configurations for state 2
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2659       0.00082835     3.19896572       2222220000000222110             
  3232       0.00024719    -3.34187051       2222221000100222000             

 Energy contributions of internal configurations for state 3
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   280       0.00053379     2.06139956       2222220000000222002             
  3216       0.00023893    -3.23022487       2222221000010222000             

 Energy contributions of internal configurations for state 4
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   281       0.00049089     1.89575685       2222220000000222020             
   282       0.00031901     1.23195913       2222220000000222200             
  3316       0.00023893    -3.23021777       2222221100000222000             

 Energy contributions of internal configurations for state 5
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2657       0.00082835     3.19896657       2222220000000222011             
  3282       0.00024719    -3.34187168       2222221010000222000             

 Energy contributions of internal configurations for state 6
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2658       0.00082835     3.19897197       2222220000000222101             
  3254       0.00024719    -3.34187723       2222221001000222000             


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96649199 (fixed)   0.96800141 (relaxed)   0.96776660 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00575474   -0.01171837   -0.24806142
 Singles      0.02258146   -0.07007038   -0.07304768
 Pairs        0.03938714   -0.01803926   -0.02984188
 Total        1.06772334   -0.09982801   -0.35095098
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.30164631
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.77059168
 One electron energy                -4395.94466841
 Two electron energy                 1218.29167627
 Virial quotient                       -0.92031976
 Correlation energy                    -0.35134583
 !MRCI STATE 1.1 Energy             -3177.652992143548

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.67678646 (Davidson, fixed reference)
 Cluster corrected energies         -3177.67660449 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.67678646 (Davidson, rotated reference)

 Cluster corrected energies         -3177.67562328 (Pople, fixed reference)
 Cluster corrected energies         -3177.67544054 (Pople, relaxed reference)
 Cluster corrected energies         -3177.67562328 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96688865 (fixed)   0.96751796 (relaxed)   0.96688865 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00492042   -0.00858010   -0.26641914
 Singles      0.02305023   -0.06746435   -0.07062845
 Pairs        0.04169260    0.00000000   -0.01366985
 Total        1.06966325   -0.07604445   -0.35071744
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20560069
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.68542466
 One electron energy                -4396.27663447
 Two electron energy                 1218.72031634
 Virial quotient                       -0.92031446
 Correlation energy                    -0.35071744
 !MRCI STATE 2.1 Energy             -3177.556318129630

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.58075025 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58026238 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.58075025 (Davidson, rotated reference)

 Cluster corrected energies         -3177.57959342 (Pople, fixed reference)
 Cluster corrected energies         -3177.57910227 (Pople, relaxed reference)
 Cluster corrected energies         -3177.57959342 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.81121498 (fixed)   0.96751794 (relaxed)   0.96688863 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00492042   -0.00858010   -0.26641916
 Singles      0.02305030   -0.06746433   -0.07062848
 Pairs        0.04169258    0.00000001   -0.01366980
 Total        1.06966330   -0.07604442   -0.35071744
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20560069
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.68544723
 One electron energy                -4396.27666685
 Two electron energy                 1218.72034872
 Virial quotient                       -0.92031445
 Correlation energy                    -0.35071744
 !MRCI STATE 3.1 Energy             -3177.556318129132

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.58075026 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58026240 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.58075026 (Davidson, rotated reference)

 Cluster corrected energies         -3177.57959344 (Pople, fixed reference)
 Cluster corrected energies         -3177.57910228 (Pople, relaxed reference)
 Cluster corrected energies         -3177.57959344 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.81121414 (fixed)   0.96751794 (relaxed)   0.96688863 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00492042   -0.00858010   -0.26641909
 Singles      0.02305032   -0.06746439   -0.07062848
 Pairs        0.04169256    0.00000000   -0.01366986
 Total        1.06966330   -0.07604449   -0.35071744
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20560069
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.68543480
 One electron energy                -4396.27665108
 Two electron energy                 1218.72033295
 Virial quotient                       -0.92031446
 Correlation energy                    -0.35071744
 !MRCI STATE 4.1 Energy             -3177.556318127309

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.58075026 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58026239 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.58075026 (Davidson, rotated reference)

 Cluster corrected energies         -3177.57959343 (Pople, fixed reference)
 Cluster corrected energies         -3177.57910228 (Pople, relaxed reference)
 Cluster corrected energies         -3177.57959343 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96688762 (fixed)   0.96751794 (relaxed)   0.96688863 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00492042   -0.00858010   -0.26641910
 Singles      0.02305027   -0.06746439   -0.07062846
 Pairs        0.04169260    0.00000000   -0.01366988
 Total        1.06966330   -0.07604448   -0.35071744
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20560069
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.68542483
 One electron energy                -4396.27663579
 Two electron energy                 1218.72031766
 Virial quotient                       -0.92031446
 Correlation energy                    -0.35071744
 !MRCI STATE 5.1 Energy             -3177.556318125527

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.58075026 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58026239 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.58075026 (Davidson, rotated reference)

 Cluster corrected energies         -3177.57959343 (Pople, fixed reference)
 Cluster corrected energies         -3177.57910228 (Pople, relaxed reference)
 Cluster corrected energies         -3177.57959343 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96688863 (fixed)   0.96751795 (relaxed)   0.96688863 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00492042   -0.00858010   -0.26641912
 Singles      0.02305027   -0.06746437   -0.07062846
 Pairs        0.04169260   -0.00000000   -0.01366987
 Total        1.06966329   -0.07604447   -0.35071744
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20560069
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.68542489
 One electron energy                -4396.27663586
 Two electron energy                 1218.72031773
 Virial quotient                       -0.92031446
 Correlation energy                    -0.35071744
 !MRCI STATE 6.1 Energy             -3177.556318125271

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.58075026 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58026239 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.58075026 (Davidson, rotated reference)

 Cluster corrected energies         -3177.57959343 (Pople, fixed reference)
 Cluster corrected energies         -3177.57910228 (Pople, relaxed reference)
 Cluster corrected energies         -3177.57959343 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96501371 (fixed)   0.96664556 (relaxed)   0.96648010 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00506141   -0.01088890   -0.01235244
 Singles      0.02656516   -0.07117086   -0.07513741
 Pairs        0.03894121   -0.26631556   -0.26145454
 Total        1.07056779   -0.34837532   -0.34894439
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.16301983
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.57968895
 One electron energy                -4391.26482831
 Two electron energy                 1213.75325893
 Virial quotient                       -0.92032968
 Correlation energy                    -0.34854954
 !MRCI STATE 7.1 Energy             -3177.511569378293

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.53616575 (Davidson, fixed reference)
 Cluster corrected energies         -3177.53603802 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.53616575 (Davidson, rotated reference)

 Cluster corrected energies         -3177.53501880 (Pople, fixed reference)
 Cluster corrected energies         -3177.53488990 (Pople, relaxed reference)
 Cluster corrected energies         -3177.53501880 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       84.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      270.50       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       583.40    572.42      4.92      0.12      5.74
 REAL TIME  *       605.92 SEC
 DISK USED  *       354.74 MB (local),        5.71 GB (total)
 SF USED    *         2.79 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -3177.67678646  AU                              
 SETTING HLSDIAG(2)     =     -3177.58075025  AU                              
 SETTING HLSDIAG(3)     =     -3177.58075026  AU                              
 SETTING HLSDIAG(4)     =     -3177.58075026  AU                              
 SETTING HLSDIAG(5)     =     -3177.58075026  AU                              
 SETTING HLSDIAG(6)     =     -3177.58075026  AU                              
 SETTING HLSDIAG(7)     =     -3177.53616575  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 38
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:    28449 conf   120789 CSFs
 N-1 el internal:     8065 conf    49051 CSFs
 N-2 el internal:     1171 conf     8695 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           9 (   3   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     124 (  68  56 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -3177.20865602
     2     -3177.20865602
     3     -3177.20865602
     4     -3177.20865602
     5     -3177.20865602
     6     -3177.17171900
     7     -3177.14931841
     8     -3177.14931841
     9     -3177.14931841

 Number of blocks in overlap matrix:   838   Smallest eigenvalue:  0.99D+00
 Number of N-2 electron functions:     910
 Number of N-1 electron functions:   49051

 Number of internal configurations:                60333
 Number of singly external configurations:       3042176
 Number of doubly external configurations:       3506816
 Total number of contracted configurations:      6609325
 Total number of uncontracted configurations:   36453781

 Diagonal Coupling coefficients finished.               Storage:28407415 words, CPU-Time:     16.12 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1823633 words, CPU-time:      0.56 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.20865602     0.00000000    -0.37993352  0.36D-01  0.49D-01    23.86
    1     2     2     1.00000000     0.00000000 -3177.20865602     0.00000000    -0.37994405  0.36D-01  0.49D-01    23.86
    1     3     3     1.00000000     0.00000000 -3177.20865602     0.00000000    -0.37981487  0.36D-01  0.49D-01    23.86
    1     4     4     1.00000000     0.00000000 -3177.20865602     0.00000000    -0.37996454  0.36D-01  0.49D-01    23.86
    1     5     5     1.00000000     0.00000000 -3177.20865602     0.00000000    -0.37996142  0.36D-01  0.49D-01    23.86
    1     6     6     1.00000000     0.00000000 -3177.17171900     0.00000000    -0.35626062  0.35D-01  0.41D-01    23.86
    1     7     7     1.00000000     0.00000000 -3177.14931841     0.00000000    -0.35860237  0.27D-01  0.44D-01    23.86
    1     8     8     1.00000000     0.00000000 -3177.14931841    -0.00000000    -0.35867947  0.27D-01  0.44D-01    23.86
    1     9     9     1.00000000     0.00000000 -3177.14931841    -0.00000000    -0.35867844  0.27D-01  0.44D-01    23.86
    2     1     1     1.06776086    -0.34872290 -3177.55737892    -0.34872290    -0.00679350  0.19D-02  0.63D-03   204.83
    2     2     2     1.06776602    -0.34869772 -3177.55735374    -0.34869772    -0.00682576  0.19D-02  0.64D-03   204.83
    2     3     3     1.06778612    -0.34869325 -3177.55734927    -0.34869325    -0.00683048  0.19D-02  0.64D-03   204.83
    2     4     4     1.06779843    -0.34868613 -3177.55734214    -0.34868613    -0.00683698  0.19D-02  0.64D-03   204.83
    2     5     5     1.06779493    -0.34868504 -3177.55734106    -0.34868504    -0.00683778  0.19D-02  0.64D-03   204.83
    2     6     6     1.06497840    -0.34083988 -3177.51255888    -0.34083988    -0.00536891  0.12D-02  0.45D-03   204.83
    2     7     7     1.05894831    -0.33709473 -3177.48641314    -0.33709473    -0.00599753  0.17D-02  0.52D-03   204.83
    2     8     8     1.05898287    -0.33706444 -3177.48638285    -0.33706444    -0.00603353  0.17D-02  0.53D-03   204.83
    2     9     9     1.05898002    -0.33706436 -3177.48638276    -0.33706436    -0.00603340  0.17D-02  0.53D-03   204.83
    3     1     1     1.06582569    -0.35562258 -3177.56427860    -0.00689968    -0.00015932  0.35D-04  0.20D-04   382.17
    3     2     2     1.06582749    -0.35562126 -3177.56427728    -0.00692354    -0.00016076  0.35D-04  0.21D-04   382.17
    3     3     3     1.06582701    -0.35562118 -3177.56427720    -0.00692793    -0.00016103  0.35D-04  0.21D-04   382.17
    3     4     4     1.06582394    -0.35562088 -3177.56427690    -0.00693476    -0.00016126  0.35D-04  0.21D-04   382.17
    3     5     5     1.06582509    -0.35562086 -3177.56427687    -0.00693582    -0.00016128  0.35D-04  0.21D-04   382.17
    3     6     6     1.06503519    -0.34648160 -3177.51820060    -0.00564172    -0.00011710  0.24D-04  0.13D-04   382.17
    3     7     7     1.05781226    -0.34317536 -3177.49249378    -0.00608063    -0.00015105  0.25D-04  0.22D-04   382.17
    3     8     8     1.05780508    -0.34317254 -3177.49249094    -0.00610809    -0.00015336  0.25D-04  0.23D-04   382.17
    3     9     9     1.05780596    -0.34317253 -3177.49249094    -0.00610818    -0.00015338  0.25D-04  0.23D-04   382.17
    4     1     1     1.06649175    -0.35579953 -3177.56445555    -0.00017695    -0.00000935  0.66D-05  0.60D-06   559.87
    4     2     2     1.06649129    -0.35579948 -3177.56445550    -0.00017822    -0.00000936  0.66D-05  0.60D-06   559.87
    4     3     3     1.06649138    -0.35579948 -3177.56445549    -0.00017829    -0.00000936  0.66D-05  0.60D-06   559.87
    4     4     4     1.06649322    -0.35579942 -3177.56445543    -0.00017853    -0.00000925  0.66D-05  0.58D-06   559.87
    4     5     5     1.06649125    -0.35579927 -3177.56445528    -0.00017841    -0.00000932  0.65D-05  0.60D-06   559.87
    4     6     6     1.06522566    -0.34661190 -3177.51833090    -0.00013030    -0.00000474  0.20D-05  0.45D-06   559.87
    4     7     7     1.05819033    -0.34333649 -3177.49265490    -0.00016113    -0.00000683  0.36D-05  0.57D-06   559.87
    4     8     8     1.05818888    -0.34333558 -3177.49265399    -0.00016304    -0.00000694  0.37D-05  0.58D-06   559.87
    4     9     9     1.05818856    -0.34333558 -3177.49265398    -0.00016305    -0.00000694  0.37D-05  0.58D-06   559.87
    5     1     1     1.06677458    -0.35581128 -3177.56446730    -0.00001175    -0.00000075  0.22D-06  0.87D-07   732.85
    5     2     2     1.06677451    -0.35581125 -3177.56446726    -0.00001177    -0.00000075  0.22D-06  0.87D-07   732.85
    5     3     3     1.06677447    -0.35581125 -3177.56446726    -0.00001177    -0.00000075  0.22D-06  0.87D-07   732.85
    5     4     4     1.06677428    -0.35581103 -3177.56446705    -0.00001162    -0.00000074  0.21D-06  0.87D-07   732.85
    5     5     5     1.06677403    -0.35581098 -3177.56446700    -0.00001172    -0.00000075  0.22D-06  0.87D-07   732.85
    5     6     6     1.06530382    -0.34661716 -3177.51833616    -0.00000526    -0.00000021  0.47D-07  0.29D-07   732.85
    5     7     7     1.05821112    -0.34334429 -3177.49266270    -0.00000780    -0.00000034  0.98D-07  0.37D-07   732.85
    5     8     8     1.05821061    -0.34334348 -3177.49266189    -0.00000790    -0.00000034  0.10D-06  0.37D-07   732.85
    5     9     9     1.05821054    -0.34334348 -3177.49266188    -0.00000790    -0.00000034  0.10D-06  0.37D-07   732.85
    6     1     1     1.06683006    -0.35581222 -3177.56446824    -0.00000093    -0.00000005  0.22D-07  0.39D-08   905.96
    6     2     2     1.06683003    -0.35581218 -3177.56446820    -0.00000093    -0.00000005  0.22D-07  0.39D-08   905.96
    6     3     3     1.06683001    -0.35581218 -3177.56446820    -0.00000093    -0.00000005  0.22D-07  0.39D-08   905.96
    6     4     4     1.06682951    -0.35581195 -3177.56446797    -0.00000092    -0.00000005  0.23D-07  0.38D-08   905.96
    6     5     5     1.06682935    -0.35581191 -3177.56446793    -0.00000093    -0.00000005  0.22D-07  0.39D-08   905.96
    6     6     6     1.06531912    -0.34661739 -3177.51833639    -0.00000023    -0.00000001  0.35D-08  0.81D-09   905.96
    6     7     7     1.05821749    -0.34334467 -3177.49266308    -0.00000038    -0.00000001  0.33D-08  0.17D-08   905.96
    6     8     8     1.05821704    -0.34334387 -3177.49266227    -0.00000039    -0.00000001  0.33D-08  0.18D-08   905.96
    6     9     9     1.05821702    -0.34334387 -3177.49266227    -0.00000039    -0.00000001  0.33D-08  0.17D-08   905.96
    7     1     1     1.06684337    -0.35581227 -3177.56446829    -0.00000005    -0.00000000  0.15D-08  0.31D-09  1020.72
    7     2     2     1.06684335    -0.35581223 -3177.56446825    -0.00000005    -0.00000000  0.15D-08  0.31D-09  1020.72
    7     3     3     1.06684334    -0.35581224 -3177.56446825    -0.00000005    -0.00000000  0.15D-08  0.31D-09  1020.72
    7     4     4     1.06684274    -0.35581201 -3177.56446803    -0.00000005    -0.00000000  0.16D-08  0.30D-09  1020.72
    7     5     5     1.06684262    -0.35581197 -3177.56446798    -0.00000005    -0.00000000  0.15D-08  0.31D-09  1020.72
    7     6     6     1.06531912    -0.34661739 -3177.51833639    -0.00000000    -0.00000001  0.35D-08  0.81D-09  1020.72
    7     7     7     1.05821749    -0.34334467 -3177.49266308    -0.00000000    -0.00000001  0.33D-08  0.17D-08  1020.72
    7     8     8     1.05821704    -0.34334387 -3177.49266227    -0.00000000    -0.00000001  0.33D-08  0.18D-08  1020.72
    7     9     9     1.05821702    -0.34334387 -3177.49266227    -0.00000000    -0.00000001  0.33D-08  0.17D-08  1020.72


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   7.3%
 S   2.7%  47.0%
 P   0.5%  22.6%   8.3%

 Initialization:   1.7%
 Other:           10.0%

 Total CPU:     1020.7 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/00000/222000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000029   0.9666242   0.0000000   0.0000000
                               0.0000000
 222222/0000/0222000          -0.0000000   0.0000000  -0.0000000   0.0005930   0.9659616   0.0000033  -0.0000000   0.0000000
                               0.0000000
 222222//00000222000          -0.0000000   0.0000135  -0.0000000   0.9659616  -0.0005930  -0.0000000  -0.0000000  -0.0000000
                              -0.0000000
 222222/00/000222000          -0.0000000  -0.0000000   0.9659615   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000009
                               0.0000000
 222222/0/0000222000          -0.0000000   0.9659615  -0.0000000  -0.0000135   0.0000000  -0.0000000  -0.0000000   0.0000000
                              -0.0000009
 222222/000/00222000           0.9659615   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                              -0.0000000
 2222220000000222//0          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.8471250  -0.0000000
                              -0.0000000
 2222220000000222/0/          -0.0000000  -0.0000000   0.0000007   0.0000000  -0.0000000  -0.0000000   0.0000000   0.8471244
                              -0.0000000
 22222200000002220//           0.0000000   0.0000007  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                               0.8471244
 2222220/00/00222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.4228628   0.0000000
                              -0.0000000
 222222000/0/0222000           0.0000000   0.0000000  -0.0000038  -0.0000000   0.0000000   0.0000000   0.0000000  -0.3662119
                               0.0000000
 22222200/00/0222000          -0.0000000  -0.0000038   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                              -0.3662119
 222222000//00222000          -0.0000000   0.0000002   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                               0.2114345
 22222200//000222000          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.2114345   0.0000000
                               0.0000000
 22222200/0/00222000           0.0000000   0.0000000   0.0000002  -0.0000000   0.0000000   0.0000000   0.0000000   0.2114344
                               0.0000000
 2222220/0/000222000          -0.0000000  -0.0000000   0.0000057  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.2114327
                               0.0000000
 2222220//0000222000          -0.0000000  -0.0000057   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                               0.2114327

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222000000/222000  28.1     0.0000000   0.0000000  -0.0000000   0.0000000   0.0000001  -0.0514417  -0.0000000   0.0000000
                              -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.965900   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000   -0.000000    0.004659    0.965889   -0.000000    0.000000    0.000000   -0.000000    0.000001
 3          -0.000000    0.000000   -0.000000    0.000000    0.965900    0.000000    0.000000    0.000001   -0.000000
 4           0.014211    0.000000    0.965784   -0.004658    0.000000   -0.000000    0.000000    0.000000    0.000000
 5           0.965795    0.000000   -0.014211    0.000068    0.000000   -0.000003    0.000000   -0.000000   -0.000000
 6           0.000003    0.000000   -0.000000    0.000000   -0.000000    0.966624   -0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970027    0.000000    0.000000
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000001    0.000000   -0.000000    0.970027    0.000000
 9           0.000000   -0.000000   -0.000000   -0.000001    0.000000    0.000000   -0.000000   -0.000000    0.970027

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.965900   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.965900   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.965900    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.965900    0.000000    0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.965900    0.000000    0.000000    0.000000    0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.966624   -0.000000    0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.970027    0.000000    0.000000
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.970027    0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.970027

 Energy contributions of internal configurations for state 7
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1929       0.00004207     1.37251014       2222220000000222110             
  2275       0.00011548    -1.09788240       2222220100100222000             

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1928       0.00004208     1.37271812       2222220000000222101             

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1927       0.00004208     1.37271820       2222220000000222011             


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96589973 (fixed)   0.96596849 (relaxed)   0.96589973 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00469734   -0.00994228   -0.26874025
 Singles      0.02507063   -0.06943315   -0.07310126
 Pairs        0.04208673   -0.00000000   -0.01397076
 Total        1.07185469   -0.07937543   -0.35581227
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20865602
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.71560971
 One electron energy                -4397.15464758
 Two electron energy                 1219.59017929
 Virial quotient                       -0.92030877
 Correlation energy                    -0.35581227
 !MRCI STATE 1.1 Energy             -3177.564468292033

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.59003507 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58998078 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.59003507 (Davidson, rotated reference)

 Cluster corrected energies         -3177.58852584 (Pople, fixed reference)
 Cluster corrected energies         -3177.58847179 (Pople, relaxed reference)
 Cluster corrected energies         -3177.58852584 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96588851 (fixed)   0.96596851 (relaxed)   0.96589974 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00469732   -0.00994226   -0.26874002
 Singles      0.02507059   -0.06943313   -0.07310123
 Pairs        0.04208675   -0.00000023   -0.01397098
 Total        1.07185465   -0.07937562   -0.35581223
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20865602
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.71561017
 One electron energy                -4397.15464895
 Two electron energy                 1219.59018069
 Virial quotient                       -0.92030877
 Correlation energy                    -0.35581224
 !MRCI STATE 2.1 Energy             -3177.564468253212

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.59003502 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58998072 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.59003502 (Davidson, rotated reference)

 Cluster corrected energies         -3177.58852578 (Pople, fixed reference)
 Cluster corrected energies         -3177.58847173 (Pople, relaxed reference)
 Cluster corrected energies         -3177.58852578 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96589975 (fixed)   0.96596851 (relaxed)   0.96589975 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00469732   -0.00994226   -0.26874024
 Singles      0.02507058   -0.06943313   -0.07310123
 Pairs        0.04208674    0.00000000   -0.01397077
 Total        1.07185465   -0.07937539   -0.35581224
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20865602
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.71561001
 One electron energy                -4397.15464856
 Two electron energy                 1219.59018031
 Virial quotient                       -0.92030877
 Correlation energy                    -0.35581224
 !MRCI STATE 3.1 Energy             -3177.564468252127

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.59003501 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58998072 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.59003501 (Davidson, rotated reference)

 Cluster corrected energies         -3177.58852578 (Pople, fixed reference)
 Cluster corrected energies         -3177.58847173 (Pople, relaxed reference)
 Cluster corrected energies         -3177.58852578 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96578419 (fixed)   0.96596874 (relaxed)   0.96589998 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00469741   -0.00994238   -0.26874068
 Singles      0.02506992   -0.06943259   -0.07310054
 Pairs        0.04208681   -0.00000000   -0.01397079
 Total        1.07185414   -0.07937497   -0.35581201
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20865602
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.71560791
 One electron energy                -4397.15464244
 Two electron energy                 1219.59017442
 Virial quotient                       -0.92030877
 Correlation energy                    -0.35581201
 !MRCI STATE 4.1 Energy             -3177.564468025477

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.59003459 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58998029 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.59003459 (Davidson, rotated reference)

 Cluster corrected energies         -3177.58852536 (Pople, fixed reference)
 Cluster corrected energies         -3177.58847131 (Pople, relaxed reference)
 Cluster corrected energies         -3177.58852536 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96579546 (fixed)   0.96596878 (relaxed)   0.96590001 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00469745   -0.00994240   -0.26874077
 Singles      0.02506975   -0.06943250   -0.07310041
 Pairs        0.04208685   -0.00000000   -0.01397079
 Total        1.07185406   -0.07937490   -0.35581197
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20865602
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.71561147
 One electron energy                -4397.15464505
 Two electron energy                 1219.59017707
 Virial quotient                       -0.92030877
 Correlation energy                    -0.35581196
 !MRCI STATE 5.1 Energy             -3177.564467982500

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.59003452 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58998022 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.59003452 (Davidson, rotated reference)

 Cluster corrected energies         -3177.58852528 (Pople, fixed reference)
 Cluster corrected energies         -3177.58847123 (Pople, relaxed reference)
 Cluster corrected energies         -3177.58852528 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96662419 (fixed)   0.96662419 (relaxed)   0.96662419 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00462726   -0.01075144   -0.25939230
 Singles      0.02733220   -0.07060703   -0.07482290
 Pairs        0.03828916    0.00000000   -0.01240219
 Total        1.07024863   -0.08135847   -0.34661739
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.17171900
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.54297371
 One electron energy                -4390.92079813
 Two electron energy                 1213.40246174
 Virial quotient                       -0.92034143
 Correlation energy                    -0.34661739
 !MRCI STATE 6.1 Energy             -3177.518336388821

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.54268579 (Davidson, fixed reference)
 Cluster corrected energies         -3177.54268579 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.54268579 (Davidson, rotated reference)

 Cluster corrected energies         -3177.54121875 (Pople, fixed reference)
 Cluster corrected energies         -3177.54121875 (Pople, relaxed reference)
 Cluster corrected energies         -3177.54121875 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.97002667 (fixed)   0.97012278 (relaxed)   0.97002667 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00428670   -0.00934262   -0.26344478
 Singles      0.01882666   -0.06483956   -0.06709088
 Pairs        0.03964039    0.00000000   -0.01280901
 Total        1.06275375   -0.07418218   -0.34334467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.14931841
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.60266705
 One electron energy                -4394.04168064
 Two electron energy                 1216.54901755
 Virial quotient                       -0.92031808
 Correlation energy                    -0.34334467
 !MRCI STATE 7.1 Energy             -3177.492663083474

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.51420925 (Davidson, fixed reference)
 Cluster corrected energies         -3177.51413696 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.51420925 (Davidson, rotated reference)

 Cluster corrected energies         -3177.51278934 (Pople, fixed reference)
 Cluster corrected energies         -3177.51271842 (Pople, relaxed reference)
 Cluster corrected energies         -3177.51278934 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.97002722 (fixed)   0.97012336 (relaxed)   0.97002722 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00428599   -0.00934198   -0.26344428
 Singles      0.01882619   -0.06483935   -0.06709065
 Pairs        0.03964036   -0.00000000   -0.01280893
 Total        1.06275255   -0.07418133   -0.34334387
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.14931841
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.60263159
 One electron energy                -4394.04161855
 Two electron energy                 1216.54895628
 Virial quotient                       -0.92031809
 Correlation energy                    -0.34334387
 !MRCI STATE 8.1 Energy             -3177.492662274365

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.51420798 (Davidson, fixed reference)
 Cluster corrected energies         -3177.51413566 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.51420798 (Davidson, rotated reference)

 Cluster corrected energies         -3177.51278808 (Pople, fixed reference)
 Cluster corrected energies         -3177.51271713 (Pople, relaxed reference)
 Cluster corrected energies         -3177.51278808 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.97002723 (fixed)   0.97012336 (relaxed)   0.97002723 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00428599   -0.00934198   -0.01017504
 Singles      0.01882620   -0.06483935   -0.06709065
 Pairs        0.03964034   -0.26916253   -0.26607818
 Total        1.06275253   -0.34334387   -0.34334387
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.14931841
 Nuclear energy                         0.00000000
 Kinetic energy                      3452.60263167
 One electron energy                -4394.04161876
 Two electron energy                 1216.54895649
 Virial quotient                       -0.92031809
 Correlation energy                    -0.34334387
 !MRCI STATE 9.1 Energy             -3177.492662272459

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.51420797 (Davidson, fixed reference)
 Cluster corrected energies         -3177.51413566 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.51420797 (Davidson, rotated reference)

 Cluster corrected energies         -3177.51278807 (Pople, fixed reference)
 Cluster corrected energies         -3177.51271713 (Pople, relaxed reference)
 Cluster corrected energies         -3177.51278807 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       84.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      736.49       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1771.28   1187.88    572.42      4.92      0.12      5.74
 REAL TIME  *      1825.68 SEC
 DISK USED  *       820.72 MB (local),       12.99 GB (total)
 SF USED    *         4.80 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =     -3177.59003507  AU                              
 SETTING HLSDIAG(9)     =     -3177.59003502  AU                              
 SETTING HLSDIAG(10)    =     -3177.59003501  AU                              
 SETTING HLSDIAG(11)    =     -3177.59003459  AU                              
 SETTING HLSDIAG(12)    =     -3177.59003452  AU                              
 SETTING HLSDIAG(13)    =     -3177.54268579  AU                              
 SETTING HLSDIAG(14)    =     -3177.51420925  AU                              
 SETTING HLSDIAG(15)    =     -3177.51420798  AU                              
 SETTING HLSDIAG(16)    =     -3177.51420797  AU                              


         HLSDIAG
    -3177.676786
    -3177.580750
    -3177.580750
    -3177.580750
    -3177.580750
    -3177.580750
    -3177.536166
    -3177.590035
    -3177.590035
    -3177.590035
    -3177.590035
    -3177.590035
    -3177.542686
    -3177.514209
    -3177.514208
    -3177.514208
                                                  

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

 Time for Seward_LS:      84.93 sec

       41157947. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    10063 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     84.93 sec, REAL time:     85.20 sec


 SORTLS1 read    41190906. and wrote    41190906. SO integrals in   176 records. CPU time:      0.24 sec, REAL time:      0.50 sec
 SORTLS2 read    41190906. and wrote    41190906. SO integrals in    48 records. CPU time:      0.08 sec, REAL time:      0.21 sec

 FILE SIZES: FILE 1:   747.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   747.9 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      713.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      736.49       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1857.15     85.85   1187.88    572.42      4.92      0.12      5.74
 REAL TIME  *      1912.48 SEC
 DISK USED  *       820.86 MB (local),       14.16 GB (total)
 SF USED    *         4.80 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:  -3177.652992  -3177.556318  -3177.556318  -3177.556318  -3177.556318  -3177.556318  -3177.511569
 Replaced energies:  -3177.676786  -3177.580750  -3177.580750  -3177.580750  -3177.580750  -3177.580750  -3177.536166

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:  -3177.564468  -3177.564468  -3177.564468  -3177.564468  -3177.564468  -3177.518336  -3177.492663  -3177.492662
                     -3177.492662
 Replaced energies:  -3177.590035  -3177.590035  -3177.590035  -3177.590035  -3177.590035  -3177.542686  -3177.514209  -3177.514208
                     -3177.514208



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -3177.67678646

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    2   2.1  0.0  0.0       0.00   21077.51       0.00       0.00       0.00       0.00       0.00      -0.00     -18.05      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -18.05

    3   3.1  0.0  0.0       0.00       0.00   21077.51       0.00       0.00       0.00       0.00       0.00       0.00      34.01
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      27.41      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   21077.51       0.00       0.00       0.00       0.03       0.00     -12.02
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      23.44      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   21077.51       0.00       0.00      18.04      -0.00       0.02
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.03       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   21077.51       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      18.04       0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   30862.68      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

    8   1.1  1.0  1.0      -0.00      -0.00       0.00       0.03      18.04       0.00      -0.00   19039.73       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00     -18.04       0.00      -0.00       0.00      -0.00

    9   2.1  1.0  1.0      -0.00     -18.05       0.00       0.00      -0.00       0.00       0.00       0.00   19039.74       0.00
                           -0.00       0.00     -27.41     -23.44       0.03      -0.00      -0.00      -0.00       0.00      25.05

   10   3.1  1.0  1.0       0.00      -0.00      34.01     -12.02       0.02      -0.00       0.00       0.00       0.00   19039.74
                            0.00      18.05       0.00       0.00      -0.00       0.00      -0.00       0.00     -25.05       0.00

   11   4.1  1.0  1.0      -0.00       0.00       0.00      -0.00      -0.00      18.02      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.03      18.06      -0.00       0.00     -50.10      -0.00      -0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00     -31.26       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.05      31.24      -0.00       0.00       0.03      -0.00       0.00

   13   6.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   14   7.1  1.0  1.0      -0.00       0.00       0.00      -0.09     -59.70       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     -59.70      -0.00       0.00      -0.00       0.00

   15   8.1  1.0  1.0      62.74      -0.00     -22.97     -64.99       0.09      -0.00      -4.53       0.00       0.00       0.00
                           -0.00      59.70       0.00      -0.00       0.00      -0.00       0.00       0.00       4.27       0.00

   16   9.1  1.0  1.0      -0.00     -59.70      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                          -62.74      -0.00      44.80     -52.39       0.08      -0.00       4.53       0.00      -0.00      -4.27

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -17.72      -0.00
                            0.00       0.00       9.32     -50.15       0.07      -0.00       0.00       0.00      -0.00     -17.72

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      17.72      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00     -25.52       0.00       0.00      -0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.04      25.52      -0.00       0.00      17.72      -0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -17.69
                            0.00      51.03       0.00       0.00       0.00       0.00      -0.00       0.00      17.73      -0.00

   21   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      30.69
                           -0.00      -0.03      -0.00      -0.00       0.00       0.00      -0.00       0.00      30.67      -0.00

   22   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.02      -0.00
                           88.74      -0.00      95.85      17.82      -0.03       0.00      -6.41       0.00      -0.00      -3.02

   24   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.12     -84.43       0.00      -0.00       3.02       0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.02      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      84.43       0.00      -0.00      -0.00      -0.00

   26   1.1  1.0 -1.0      -0.00      -0.00       0.00       0.03      18.04       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      18.04      -0.00      -0.00      -0.00      -0.00

   27   2.1  1.0 -1.0      -0.00     -18.05       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      27.41      23.44      -0.03       0.00       0.00      -0.00      -0.00      -0.00

   28   3.1  1.0 -1.0       0.00      -0.00      34.01     -12.02       0.02      -0.00       0.00       0.00       0.00       0.00
                           -0.00     -18.05      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   29   4.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      -0.00      18.02      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.03     -18.06       0.00      -0.00      -0.00      -0.00      -0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00     -31.26       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.05     -31.24       0.00      -0.00      -0.00      -0.00      -0.00

   31   6.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   32   7.1  1.0 -1.0      -0.00       0.00       0.00      -0.09     -59.70       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      59.70       0.00      -0.00      -0.00      -0.00

   33   8.1  1.0 -1.0      62.74      -0.00     -22.97     -64.99       0.09      -0.00      -4.53       0.00       0.00       0.00
                            0.00     -59.70      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   34   9.1  1.0 -1.0      -0.00     -59.70      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           62.74       0.00     -44.80      52.39      -0.08       0.00      -4.53      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00       0.00      -0.00      -0.00      62.74      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      62.74      -0.00      -0.00       0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00     -59.70       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00     -59.70       0.00      -0.00      -0.00       0.00     -51.03

    3   3.1  0.0  0.0       0.00       0.00      -0.00       0.00     -22.97      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00     -44.80      -9.32      -0.00      -0.00      -0.00

    4   4.1  0.0  0.0      -0.00      -0.00       0.00      -0.09     -64.99       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.05       0.00      -0.00       0.00      52.39      50.15      -0.00      -0.04      -0.00

    5   5.1  0.0  0.0      -0.00      -0.00       0.00     -59.70       0.09      -0.00       0.00       0.00       0.00       0.00
                          -18.06     -31.24       0.00       0.00      -0.00      -0.08      -0.07      -0.00     -25.52      -0.00

    6   6.1  0.0  0.0      18.02     -31.26       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      59.70       0.00       0.00       0.00      25.52       0.00      -0.00

    7   7.1  0.0  0.0      -0.00       0.00       0.00       0.00      -4.53      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -4.53      -0.00      -0.00      -0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      17.72       0.00      -0.00
                           50.10      -0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -17.72      -0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -17.72      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00      -4.27       0.00       0.00       0.00       0.00     -17.73

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     -17.69
                            0.00      -0.00       0.00      -0.00      -0.00       4.27      17.72      -0.00      -0.00       0.00

   11   4.1  1.0  1.0   19039.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00      17.69       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      17.73      -0.00       0.00

   12   5.1  1.0  1.0       0.00   19039.85       0.00       0.00       0.00       0.00       0.00      -0.00     -30.69      -0.00
                            0.00      -0.00      -0.00       4.90      -0.00       0.00       0.00      30.67      -0.00      -0.00

   13   6.1  1.0  1.0       0.00       0.00   29431.70       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      11.27      -0.00       0.00      -0.00       0.00       0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   35681.57       0.00       0.00      -0.00      -3.02       0.00       0.00
                           -0.00      -4.90     -11.27      -0.00       0.00       0.00       0.00      -0.00      -3.02      -0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   35681.85       0.00      -0.00      -0.00      -0.00      -3.02
                           -0.00       0.00       0.00      -0.00      -0.00    -160.86       3.02       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   35681.85      -3.02       0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00     160.86      -0.00      -0.00      -0.00      -0.00      -3.01

   17   1.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -3.02   19039.73       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -3.02       0.00       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00      -0.00      -0.00      -3.02      -0.00       0.00       0.00   19039.74       0.00       0.00
                          -17.73     -30.67      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0      17.69     -30.69      -0.00       0.00      -0.00      -0.00       0.00       0.00   19039.74       0.00
                            0.00       0.00      -0.00       3.02      -0.00       0.00      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00      -0.00       0.00       0.00      -3.02       0.00       0.00       0.00       0.00   19039.83
                           -0.00       0.00       0.00       0.00      -0.00       3.01      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0       0.00      -0.00      -0.00      -0.00      -1.75      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -1.76      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       7.97      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       7.97      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0      -0.00       0.00       0.00      -0.00       0.00     113.74       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    -113.74       0.00      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0       3.02       1.75      -7.97      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     113.74      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0      -0.00       0.00       0.00    -113.74       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.01       1.76      -7.97      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -17.72      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -17.72      -0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      17.72      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     -17.73

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      17.69
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      17.72      -0.00       0.00       0.00

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -17.69       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      17.73      -0.00      -0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      30.69       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      30.67      -0.00      -0.00

   31   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   32   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.02      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -3.02      -0.00

   33   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.02
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.02       0.00       0.00       0.00

   34   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       3.02      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.01


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00     -88.74      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     -18.05      -0.00       0.00       0.00
                            0.03       0.00       0.00      -0.00       0.00       0.00       0.00      18.05       0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      34.01       0.00       0.00
                            0.00       0.00     -95.85      -0.00       0.00      -0.00     -27.41       0.00       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.03       0.00     -12.02      -0.00      -0.00
                            0.00      -0.00     -17.82       0.12       0.00      -0.00     -23.44       0.00       0.03       0.05

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      18.04      -0.00       0.02      -0.00      -0.00
                           -0.00      -0.00       0.03      84.43      -0.00      -0.00       0.03      -0.00      18.06      31.24

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      18.02     -31.26
                           -0.00      -0.00      -0.00      -0.00     -84.43     -18.04      -0.00       0.00      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       6.41       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

    8   1.1  1.0  1.0      -0.00      -0.00       0.00       0.00       3.02       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -3.02       0.00       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       3.02       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          -30.67      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0      30.69       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       3.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00      -0.00      -0.00       3.02      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       3.01       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0      -0.00       0.00       0.00       1.75       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -1.76       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0      -0.00      -0.00       0.00      -7.97       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       7.97       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00    -113.74       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -113.74       0.00       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0      -1.75       7.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     113.74       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0      -0.00      -0.00     113.74      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.76      -7.97      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      17.72       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -17.72      -0.00      -0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00     -17.72      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -17.73     -30.67

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     -17.69      30.69
                            0.00       0.00       0.00       0.00       0.00      17.72      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      17.69       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      17.73      -0.00       0.00       0.00

   21   5.1  1.0  0.0   19039.85       0.00       0.00       0.00       0.00       0.00      -0.00     -30.69      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      30.67      -0.00      -0.00       0.00

   22   6.1  1.0  0.0       0.00   29431.70       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   23   7.1  1.0  0.0       0.00       0.00   35681.57       0.00       0.00      -0.00      -3.02       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -3.02      -0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   35681.85       0.00      -0.00      -0.00      -0.00      -3.02      -1.75
                           -0.00      -0.00      -0.00       0.00       0.00       3.02       0.00       0.00       0.00      -0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   35681.85      -3.02       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -3.01       1.76

   26   1.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -3.02   19039.73       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -3.02       0.00       0.00      -0.00       0.00     -50.10       0.03

   27   2.1  1.0 -1.0      -0.00      -0.00      -3.02      -0.00       0.00       0.00   19039.74       0.00       0.00       0.00
                          -30.67      -0.00       0.00      -0.00       0.00       0.00      -0.00     -25.05      -0.00      -0.00

   28   3.1  1.0 -1.0     -30.69      -0.00       0.00      -0.00      -0.00       0.00       0.00   19039.74       0.00       0.00
                            0.00      -0.00       3.02      -0.00       0.00      -0.00      25.05      -0.00      -0.00       0.00

   29   4.1  1.0 -1.0      -0.00       0.00       0.00      -3.02       0.00       0.00       0.00       0.00   19039.83       0.00
                            0.00       0.00       0.00      -0.00       3.01      50.10       0.00       0.00       0.00       0.00

   30   5.1  1.0 -1.0      -0.00      -0.00      -0.00      -1.75      -0.00       0.00       0.00       0.00       0.00   19039.85
                           -0.00       0.00      -0.00       0.00      -1.76      -0.03       0.00      -0.00      -0.00       0.00

   31   6.1  1.0 -1.0       0.00      -0.00      -0.00       7.97      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       7.97      -0.00      -0.00       0.00       0.00      -0.00

   32   7.1  1.0 -1.0       0.00       0.00      -0.00       0.00     113.74       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -113.74       0.00      -0.00       0.00      -0.00       0.00       4.90

   33   8.1  1.0 -1.0       1.75      -7.97      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     113.74      -0.00      -0.00      -0.00      -4.27      -0.00       0.00      -0.00

   34   9.1  1.0 -1.0       0.00       0.00    -113.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.76      -7.97      -0.00       0.00      -0.00      -0.00       0.00       4.27      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34

    1   1.1  0.0  0.0      -0.00      -0.00      62.74      -0.00
                           -0.00       0.00      -0.00     -62.74

    2   2.1  0.0  0.0      -0.00       0.00      -0.00     -59.70
                           -0.00      -0.00      59.70      -0.00

    3   3.1  0.0  0.0      -0.00       0.00     -22.97      -0.00
                           -0.00      -0.00       0.00      44.80

    4   4.1  0.0  0.0       0.00      -0.09     -64.99       0.00
                           -0.00       0.00      -0.00     -52.39

    5   5.1  0.0  0.0       0.00     -59.70       0.09      -0.00
                           -0.00      -0.00       0.00       0.08

    6   6.1  0.0  0.0       0.00       0.00      -0.00      -0.00
                            0.00     -59.70      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00      -4.53      -0.00
                           -0.00      -0.00       0.00       4.53

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0      -0.00       0.00       0.00       3.02
                            0.00      -0.00      -3.02       0.00

   18   2.1  1.0  0.0       0.00       3.02       0.00      -0.00
                           -0.00       0.00      -0.00       0.00

   19   3.1  1.0  0.0       0.00      -0.00       0.00       0.00
                           -0.00       3.02      -0.00       0.00

   20   4.1  1.0  0.0      -0.00      -0.00       3.02      -0.00
                            0.00       0.00      -0.00       3.01

   21   5.1  1.0  0.0       0.00       0.00       1.75       0.00
                            0.00      -0.00       0.00      -1.76

   22   6.1  1.0  0.0      -0.00       0.00      -7.97       0.00
                           -0.00      -0.00       0.00       7.97

   23   7.1  1.0  0.0      -0.00      -0.00      -0.00    -113.74
                            0.00       0.00    -113.74       0.00

   24   8.1  1.0  0.0       7.97       0.00       0.00       0.00
                           -0.00     113.74       0.00      -0.00

   25   9.1  1.0  0.0      -0.00     113.74      -0.00       0.00
                           -7.97      -0.00       0.00       0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00      -0.00       4.27      -0.00

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -4.27

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00      -4.90       0.00      -0.00

   31   6.1  1.0 -1.0   29431.70       0.00       0.00       0.00
                           -0.00     -11.27       0.00      -0.00

   32   7.1  1.0 -1.0       0.00   35681.57       0.00       0.00
                           11.27       0.00      -0.00      -0.00

   33   8.1  1.0 -1.0       0.00       0.00   35681.85       0.00
                           -0.00       0.00       0.00     160.86

   34   9.1  1.0 -1.0       0.00       0.00       0.00   35681.85
                            0.00       0.00    -160.86       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 34)

    The diagonal matrixelements are shifted by  -3177.67678646 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   21077.512       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   21077.508       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   21077.509       0.000       0.000       0.000       0.037
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   21077.509       0.000       0.000      25.519
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   21077.510       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   30862.678      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+             -0.000      -0.000       0.000       0.037      25.519       0.000      -0.000   19039.728
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000     -25.519       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.001      -0.000      48.091     -17.003       0.025      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      25.490      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000     -44.207       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000      -0.122     -84.431       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             88.733      -0.000     -32.490     -91.909       0.133      -0.000      -6.413       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000     -84.430      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       9.323     -50.148       0.072      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.001       0.000       0.000       0.000     -25.519       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.037      25.519      -0.000       0.000      25.054

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      51.026       0.000       0.000       0.000       0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.031      -0.000      -0.000       0.000       0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               88.738      -0.000      95.846      17.819      -0.026       0.000      -6.413       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.122     -84.433       0.000      -0.000       4.268

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      84.433       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000     -25.519       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000     -38.767     -33.151       0.048      -0.000      -0.000      -0.001

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      25.519       0.000       0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.001       0.037      25.544      -0.000       0.000     -50.101

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.064      44.176      -0.000       0.000       0.031

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000     -84.431      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      84.430       0.000      -0.000       0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -88.733      -0.000      63.352     -74.090       0.107      -0.000       6.413       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.000       0.001      -0.000       0.000      -0.000      -0.000      88.733      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>             -25.519      -0.000       0.000       0.000      -0.000       0.000      -0.000     -84.430
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000      48.091       0.000       0.000      -0.000       0.000     -32.490      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000     -17.003      -0.000      -0.000       0.000      -0.122     -91.909       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000       0.025      -0.000      -0.000       0.000     -84.431       0.133      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000      -0.000      25.490     -44.207       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -6.413      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          19039.740       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   19039.741       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   19039.834       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   19039.850       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   29431.695       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   35681.573       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   35681.852       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   35681.854
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000     -25.054      -0.000      -0.000       0.000      -0.000      -4.268       0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000     -25.077     -43.373      -0.000       0.000      -0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       4.268      -0.000       0.000

    4    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               25.077      -0.000       0.000       0.001       0.000       0.000      -0.000       4.262

    5    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               43.373      -0.000      -0.001       0.000       0.000      -0.000       0.000      -2.483

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      11.269

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -4.268      -0.000       0.000       0.000       0.000    -160.848       0.000

    8    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     160.848       0.000      -0.000

    9    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000      -4.262       2.483     -11.269      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000      50.101      -0.031      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      25.054       0.000       0.000      -0.000       0.000      -4.266       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -25.054       0.000       0.000      -0.000       0.000      -0.000      -0.000       4.266

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.003       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       4.904      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      11.271      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.003      -4.904     -11.271      -0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.266       0.000      -0.000       0.000       0.000      -0.000      -0.000    -160.855

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.266       0.000      -0.000      -0.000      -0.000     160.855      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000     -88.738      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.001       0.000     -51.026       0.031       0.000       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -9.323      -0.000      -0.000      -0.000       0.000       0.000     -95.846      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               50.148      -0.000      -0.037      -0.000       0.000      -0.000     -17.819       0.122

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.072      -0.000     -25.519      -0.000      -0.000      -0.000       0.026      84.433

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      25.519       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       6.413       0.000

    1    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000     -25.054      -0.000      -0.000       0.000      -0.000      -4.268

    2    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000     -25.077     -43.373      -0.000       0.000      -0.000

    3    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               25.054      -0.000       0.000       0.000       0.000      -0.000       4.268      -0.000

    4    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      25.077      -0.000       0.000       0.001       0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      43.373      -0.000      -0.001       0.000       0.000      -0.000       0.000

    6    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -4.268      -0.000       0.000       0.000       0.000    -160.848

    8    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                4.268       0.000       0.000       0.000      -0.000      -0.000     160.848       0.000

    9    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -4.262       2.483     -11.269      -0.000       0.000

    1    1  |1 0>           19039.728       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000   19039.740       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000   19039.741       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000   19039.834       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000   19039.850       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   29431.695       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   35681.573       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   35681.852
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      25.054       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-            -25.054       0.000       0.000      -0.000       0.000       0.000       4.268       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>-             -0.000      -0.000       0.000     -25.024      43.404       0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000      25.024       0.000       0.000      -0.000      -0.000       4.265
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000      -0.000     -43.404      -0.000       0.000       0.000       0.000       2.477
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000     -11.269
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>-             -0.000      -4.268       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>-             -0.000      -0.000      -0.000      -4.265      -2.477      11.269       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    9    1  |1 1>-             -4.268       0.000      -0.000       0.000      -0.000      -0.000     160.848      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.001      -0.000       0.000      -0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -25.519      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      38.767      -0.000      -0.001       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      33.151      -0.000      -0.037      -0.064       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.048       0.000     -25.544     -44.176       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -84.433      25.519       0.000      -0.000       0.000       0.000      -0.000      84.431

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.001      -0.000      50.101      -0.031      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.001       0.000      25.054       0.000       0.000      -0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -25.054       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.262     -50.101      -0.000      -0.000      -0.000      -0.000       0.000       0.003

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.483       0.031      -0.000       0.000       0.000      -0.000      -0.000       4.904

    6    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.269       0.000       0.000      -0.000      -0.000       0.000       0.000      11.271

    7    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.003      -4.904     -11.271      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       4.266       0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -4.266       0.000      -0.000      -0.000      -0.000

    1    1  |1 0>               0.000       0.000     -25.054      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      25.054       0.000      -0.000       0.000      -0.000      -0.000      -4.268
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      25.024     -43.404      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 0>               0.000      -0.000      -0.000     -25.024       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 0>               0.000      -0.000       0.000      43.404       0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    6    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       4.268      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       4.265       2.477     -11.269      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>           35681.854       4.268      -0.000       0.000      -0.000       0.000       0.000    -160.848
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              4.268   19039.728       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000       0.000   19039.740       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000   19039.741       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -0.000       0.000       0.000       0.000   19039.834       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   19039.850       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   29431.695       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-           -160.848       0.000       0.000       0.000       0.000       0.000       0.000   35681.573
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34

    1    1  |0 0>               0.000       0.000
                                0.000      88.733

    2    1  |0 0>               0.000       0.000
                              -84.430       0.000

    3    1  |0 0>               0.000       0.000
                               -0.000     -63.352

    4    1  |0 0>               0.000       0.000
                                0.000      74.090

    5    1  |0 0>               0.000       0.000
                               -0.000      -0.107

    6    1  |0 0>               0.000       0.000
                                0.000       0.000

    7    1  |0 0>               0.000       0.000
                               -0.000      -6.413

    1    1  |1 1>+              0.000       0.000
                               -0.000      -0.000

    2    1  |1 1>+              0.000       0.000
                               -4.266       0.000

    3    1  |1 1>+              0.000       0.000
                               -0.000       4.266

    4    1  |1 1>+              0.000       0.000
                                0.000      -0.000

    5    1  |1 1>+              0.000       0.000
                               -0.000       0.000

    6    1  |1 1>+              0.000       0.000
                               -0.000       0.000

    7    1  |1 1>+              0.000       0.000
                                0.000       0.000

    8    1  |1 1>+              0.000       0.000
                               -0.000    -160.855

    9    1  |1 1>+              0.000       0.000
                              160.855      -0.000

    1    1  |1 0>              -0.000      -4.268
                                0.000      -0.000

    2    1  |1 0>              -0.000       0.000
                                0.000      -0.000

    3    1  |1 0>              -0.000      -0.000
                                0.000      -0.000

    4    1  |1 0>              -4.265       0.000
                                0.000      -0.000

    5    1  |1 0>              -2.477      -0.000
                               -0.000      -0.000

    6    1  |1 0>              11.269      -0.000
                               -0.000      -0.000

    7    1  |1 0>               0.000     160.848
                                0.000       0.000

    8    1  |1 0>               0.000      -0.000
                               -0.000      -0.000

    9    1  |1 0>               0.000       0.000
                               -0.000      -0.000

    1    1  |1 1>-              0.000       0.000
                                0.000       0.000

    2    1  |1 1>-              0.000       0.000
                                0.000       0.000

    3    1  |1 1>-              0.000       0.000
                                0.000       0.000

    4    1  |1 1>-              0.000       0.000
                                0.000       0.000

    5    1  |1 1>-              0.000       0.000
                                0.000       0.000

    6    1  |1 1>-              0.000       0.000
                                0.000       0.000

    7    1  |1 1>-              0.000       0.000
                                0.000       0.000

    8    1  |1 1>-          35681.852       0.000
                                0.000       0.000

    9    1  |1 1>-              0.000   35681.854
                                0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -3177.67678950    -0.00000304       -0.67      0.00000000        0.00      0.0000
    2 -3177.59037729     0.08640917    18964.62      0.08641221    18965.29      2.3514
    3 -3177.59037729     0.08640917    18964.62      0.08641221    18965.29      2.3514
    4 -3177.59037725     0.08640921    18964.63      0.08641225    18965.30      2.3514
    5 -3177.59015786     0.08662860    19012.78      0.08663165    19013.45      2.3574
    6 -3177.59015781     0.08662864    19012.79      0.08663169    19013.46      2.3574
    7 -3177.59015752     0.08662894    19012.85      0.08663198    19013.52      2.3574
    8 -3177.59015749     0.08662896    19012.86      0.08663201    19013.53      2.3574
    9 -3177.59015749     0.08662897    19012.86      0.08663201    19013.53      2.3574
   10 -3177.58980673     0.08697973    19089.84      0.08698277    19090.51      2.3669
   11 -3177.58980660     0.08697986    19089.87      0.08698291    19090.54      2.3669
   12 -3177.58980660     0.08697986    19089.87      0.08698291    19090.54      2.3669
   13 -3177.58980659     0.08697987    19089.87      0.08698291    19090.54      2.3669
   14 -3177.58980648     0.08697997    19089.90      0.08698302    19090.57      2.3669
   15 -3177.58980648     0.08697997    19089.90      0.08698302    19090.57      2.3669
   16 -3177.58980645     0.08698001    19089.91      0.08698306    19090.57      2.3669
   17 -3177.58074603     0.09604043    21078.44      0.09604347    21079.11      2.6135
   18 -3177.58074603     0.09604043    21078.44      0.09604347    21079.11      2.6135
   19 -3177.58074602     0.09604044    21078.44      0.09604348    21079.11      2.6135
   20 -3177.58074601     0.09604044    21078.44      0.09604349    21079.11      2.6135
   21 -3177.58074600     0.09604045    21078.44      0.09604350    21079.11      2.6135
   22 -3177.54268598     0.13410048    29431.65      0.13410353    29432.32      3.6491
   23 -3177.54268598     0.13410048    29431.65      0.13410353    29432.32      3.6491
   24 -3177.54268598     0.13410048    29431.65      0.13410353    29432.32      3.6491
   25 -3177.53616587     0.14062058    30862.65      0.14062363    30863.32      3.8266
   26 -3177.51567101     0.16111545    35360.75      0.16111849    35361.42      4.3843
   27 -3177.51494129     0.16184516    35520.91      0.16184821    35521.58      4.4041
   28 -3177.51494129     0.16184517    35520.91      0.16184821    35521.58      4.4041
   29 -3177.51494068     0.16184577    35521.04      0.16184882    35521.71      4.4041
   30 -3177.51347154     0.16331491    35843.48      0.16331796    35844.15      4.4441
   31 -3177.51347132     0.16331514    35843.53      0.16331818    35844.20      4.4441
   32 -3177.51347132     0.16331514    35843.53      0.16331818    35844.20      4.4441
   33 -3177.51347065     0.16331581    35843.68      0.16331885    35844.34      4.4441
   34 -3177.51347065     0.16331581    35843.68      0.16331885    35844.34      4.4441

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999055 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000000  0.00000000 -0.03029489  0.00000273
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00483528 -0.02989166 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000001 -0.00000000  0.02989298 -0.00483499 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000482 -0.00000000 -0.00004309  0.00000710  0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000472 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000273  0.03029616
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002

   7    1  |0 0>          -0.00000156 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000008  0.54797276  0.00000000 -0.00000034 -0.00000165 -0.00000000  0.00000010
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00001327  0.00000000 -0.54792240 -0.00000000  0.00000000 -0.40837834  0.00003107
                          -0.00000000  0.00000000 -0.00000000 -0.00000191  0.00000000  0.00000000 -0.00000007  0.00000000

   3    1  |1 1>+         -0.00000004  0.00000000  0.00000001  0.00000000  0.39133135  0.71615434  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.54768598  0.00000008  0.00001327 -0.00000000  0.00000000 -0.00003099 -0.40738260
                           0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000020

   5    1  |1 1>+         -0.00000000 -0.31563989  0.00000004  0.00000324  0.00000000 -0.00000000  0.00006359  0.70672947
                           0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000035

   6    1  |1 1>+          0.00000000 -0.00000052  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00023478  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00250934 -0.00000000 -0.00000000 -0.00000000  0.00046841 -0.00025591 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00023585 -0.00000000  0.00000000 -0.00046215  0.00000004
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.81594010  0.01914212 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000020
                          -0.00000000 -0.54784968  0.00000008  0.00000564  0.00000000 -0.00000000  0.00004814  0.40853201

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000008 -0.54784665 -0.00000000 -0.00000032 -0.00000165 -0.00000000  0.00000010

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000013  0.00000000
                          -0.00000000  0.00000763 -0.00000000  0.00038982  0.00000000 -0.00000000  0.81580260 -0.00007911

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000220 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000650 -0.00000001  0.63211323  0.00000000  0.00000000 -0.00050421  0.00000005

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000048 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00250948 -0.00000000  0.00000000 -0.00000000 -0.00001252  0.00053370  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00023493 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00023493  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00046298

   1    1  |1 1>-          0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000020
                          -0.00000000  0.54797093 -0.00000008 -0.00000564  0.00000000 -0.00000000  0.00003675  0.40835790

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000004  0.00000000  0.00000763 -0.00000000  0.42448102 -0.69702168 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000191  0.00000000  0.00000000 -0.00000007  0.00000000
                          -0.00000000 -0.00000564  0.00000000 -0.54791755  0.00000000 -0.00000000  0.40838067 -0.00003675

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000008  0.54729985  0.00000000 -0.00000624  0.00000805 -0.00000000  0.00000010

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000004 -0.31631103 -0.00000000 -0.00000057 -0.00000287 -0.00000000  0.00000016

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000052  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00023479  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000004  0.00046143

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00023586  0.00000000 -0.00000000  0.00046215 -0.00000004

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00250934  0.00000000 -0.00000000 -0.00000000  0.00045589  0.00027760 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00001364  0.00000000  0.00000000  0.00000003
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000013 -0.00000087 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00004369  0.00000403  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.03029614 -0.00000001 -0.00000000  0.00001787  0.00000000 -0.00000000  0.00000499  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000001  0.00000000 -0.00001796 -0.00000000  0.00000001 -0.00000492 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.40835544 -0.00001953 -0.00000010  0.67781333  0.00000002  0.00000004 -0.27090161  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00047729 -0.00000002  0.57976968 -0.00003995  0.00000000  0.44353348
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000743 -0.00000000 -0.00000000  0.00000064

   3    1  |1 1>+          0.00000322  0.57738302  0.00000000  0.00001349 -0.00000000 -0.00000000 -0.00000784  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000009 -0.00000000  0.45811912  0.00000007 -0.00037429 -0.56925691 -0.00000008 -0.00005499
                           0.00000000  0.00000000 -0.00000140 -0.00000000 -0.00000001 -0.00000051 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000016 -0.00000000 -0.37848611 -0.00000005  0.00030265 -0.50714265 -0.00000007 -0.00003038
                          -0.00000000 -0.00000000  0.00000116  0.00000000  0.00000000 -0.00000045 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00046143 -0.00000000  0.00000000 -0.00000028 -0.00000000  0.00000000 -0.00000055  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000017 -0.00000000  0.00000000  0.00000093
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000074 -0.57729004 -0.00000000 -0.00001349  0.00000000  0.00000000  0.00000784 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000133  0.00000000  0.00000001 -0.00000052 -0.00000000 -0.00000000
                          -0.00000010  0.00000000  0.43605073  0.00000006 -0.00034063  0.58537925  0.00000008  0.00003504

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.40853189 -0.00000210 -0.00000006  0.43177523  0.00000002 -0.00000008  0.58854293 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000740  0.00000000  0.00000000  0.00000000
                           0.00000001  0.00000000  0.00045582 -0.00000002  0.57779318 -0.00000790 -0.00000000 -0.00295667

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000111
                          -0.00000000 -0.00000000  0.00001631 -0.00000000  0.00425121 -0.00005606  0.00000000  0.77486418

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00046298 -0.00000000 -0.00000000  0.00000057  0.00000000 -0.00000000  0.00000064 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000057  0.00000000 -0.00000000  0.00000064  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000207  0.00000000  0.00000001  0.00000025  0.00000000  0.00000000
                          -0.00000010 -0.00000000  0.67582117  0.00000010 -0.00054028 -0.27583334 -0.00000004 -0.00003121

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000320  0.57737774  0.00000000  0.00000706 -0.00000000 -0.00000000  0.00000003  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000736 -0.00000000 -0.00000000 -0.00000065
                           0.00000000 -0.00000000 -0.00045177  0.00000002 -0.57445927 -0.00003265  0.00000000  0.45039406

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.40824765  0.00001045  0.00000007 -0.46271492 -0.00000002 -0.00000008  0.56527711 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.70623162  0.00000182  0.00000005 -0.37421136 -0.00000001  0.00000007 -0.51057939  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000002  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000029  0.00000000 -0.00000000  0.00000055  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000018 -0.00000000  0.00000000  0.00000093

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000053  0.99950831 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000028 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.99628805 -0.08017403  0.00000303  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.08017399  0.99628746  0.00105437  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00008760 -0.00105073  0.99950771 -0.00000001 -0.00000000 -0.00000002  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000001  0.99950827  0.00000053  0.00000000  0.00000002 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00002583  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000035  0.00000478  0.01237092 -0.00000000 -0.00000000  0.00000076 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000018 -0.01237137 -0.00000000 -0.00000000 -0.00000073
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.02257744 -0.01008626  0.00000326 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.01235756  0.00000018 -0.00000000 -0.00000075  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000032  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.02143187 -0.00000001 -0.00000000 -0.00000043  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000055 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000200  0.99999652 -0.00007793
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000057 -0.00030941  0.00000016

   7    1  |1 1>+          0.00000016  0.00000220  0.00570522 -0.00000000 -0.00000000 -0.00185105  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00268648  0.00601423 -0.00000240  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00570499 -0.00000000 -0.00000014 -0.00185056
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00255510 -0.02459483  0.00000943 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000032  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.01237109  0.00000034 -0.00000000 -0.00000078  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000035  0.00000478  0.01237109 -0.00000000 -0.00000000 -0.00000078  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000016  0.02473740  0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001519  0.00000000  0.00000000  0.00000088

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000014 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006  0.00007793  0.99999657

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00655222 -0.00068070  0.00000045 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000016  0.00000220  0.00570517 -0.00000000 -0.00000000  0.00185058 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000015  0.00000000 -0.00000000  0.00000057 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00570517 -0.00000000  0.00000000  0.00185057 -0.00000014

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000032  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.01237092 -0.00000001  0.00000000  0.00000075 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.02002199 -0.01451181  0.00000634 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000001  0.01237137 -0.00000000 -0.00000000 -0.00000073

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000063  0.00000499  0.01238386 -0.00000000 -0.00000000  0.00000075 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000060  0.00000827  0.02141669 -0.00000000 -0.00000000 -0.00000043  0.00000000  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000057  0.00000000
                           0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000  0.99999657 -0.00000200 -0.00000006

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000015 -0.00000000 -0.00000000  0.00000057 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00570522  0.00000000  0.00000000  0.00185105 -0.00000014

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00570499 -0.00000000 -0.00000014 -0.00185057

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00386538  0.00533357 -0.00000195  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00001230  0.00434637 -0.00000000 -0.00000000  0.00000000 -0.00000105 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000002
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000233  0.00000000 -0.00000000 -0.00000000  0.00794413 -0.00000004 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000042 -0.00000000 -0.00000000 -0.00000000  0.00149692 -0.00001169  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000350 -0.00000000  0.00000000 -0.00000220 -0.00808445 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000352 -0.00000000  0.00000000 -0.00000000  0.00808446
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.99999695 -0.00246932  0.00000000 -0.00000000 -0.00000000  0.00000049 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00018220 -0.00000000 -0.00000000  0.00000000  0.00016714  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00018217 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000033 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000001 -0.00000015 -0.00000000  0.00000000  0.00000000 -0.00028889  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00018208 -0.00000000 -0.00000000  0.00000000 -0.00016678
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00010353 -0.00000000  0.00000000 -0.00000000  0.00028908
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00261744 -0.00000001  0.00000000 -0.00000000 -0.00000080
                           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.70741042  0.00000010  0.00000000  0.00000372  0.70677737  0.00000011
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00142558  0.57723504  0.00000000 -0.00000000  0.00000000 -0.41010722  0.00000433 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000233  0.70710134  0.00000000  0.00000000  0.00000215
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00126876  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000081 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00018234 -0.00000000  0.00000000 -0.00000000  0.00016697

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00018234  0.00000000  0.00000000  0.00000000  0.00016697  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000013  0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000038  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00021185 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000470  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000001  0.00261709 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00142578  0.57756106  0.00000000  0.00000000  0.00000000  0.81631322 -0.00000429 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.70679809 -0.00000010 -0.00000000  0.00000373  0.70738972  0.00000011

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000294  0.00000000  0.00000000  0.00000000 -0.00000006
                          -0.00000000 -0.00000000 -0.00000010  0.70679624  0.00000233  0.00000000 -0.00000011  0.70739157

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00018220  0.00000000  0.00000000 -0.00000000  0.00016714

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000015 -0.00000000 -0.00000000  0.00000000  0.00028971  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000033 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00018217  0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00018195 -0.00000000 -0.00000000 -0.00000000  0.00016713  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00010375  0.00000000  0.00000000  0.00000000  0.00028887  0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00261745  0.00000000  0.00000000  0.00000000 -0.00000080  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000294  0.00000000 -0.00000000 -0.00000000  0.00000006
                           0.00000000 -0.00000000 -0.00000010  0.70741226  0.00000233 -0.00000000  0.00000011 -0.70677553

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00126877  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000233  0.70710502 -0.00000000 -0.00000000 -0.00000215

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00142557 -0.57723300  0.00000000 -0.00000000 -0.00000000  0.40666852  0.00000004 -0.00000000

 State Sym Spin     / Nr.     33          34

   1    1  |0 0>          -0.00000001  0.00000000
                          -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00808417
                          -0.00000000  0.00000017

   3    1  |0 0>           0.00149682 -0.00000000
                           0.00000000  0.00000000

   4    1  |0 0>          -0.00794358 -0.00000000
                          -0.00000000 -0.00000000

   5    1  |0 0>           0.00001148  0.00000000
                          -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000002
                           0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000
                          -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00016696
                          -0.00000000  0.00000000

   3    1  |1 1>+         -0.00016767 -0.00000000
                           0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000
                           0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000
                          -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000218 -0.00000000
                          -0.00000000  0.00000000

   8    1  |1 1>+          0.70608766  0.00000000
                           0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.70708546
                           0.00000000 -0.00001486

   1    1  |1 0>           0.00000000  0.00000000
                          -0.00033413 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000
                           0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000001
                          -0.00000000  0.00033376

   5    1  |1 0>          -0.00000000 -0.00000000
                           0.00000000 -0.00000021

   6    1  |1 0>           0.00000000  0.00000000
                           0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000
                           0.00198413 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000
                          -0.00000218 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000
                           0.00000000 -0.00000215

   1    1  |1 1>-         -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000
                          -0.00016626 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000
                          -0.00000000  0.00016696

   4    1  |1 1>-          0.00000000 -0.00000000
                           0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000
                          -0.00000000  0.00000215

   8    1  |1 1>-          0.00000000 -0.00001486
                           0.00000000 -0.70708177

   9    1  |1 1>-         -0.00000000 -0.00000000
                           0.70807540  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -3177.67678950     -0.00000304       -0.67      0.00000000        0.00      0.0000
     2   1  -3177.59037729      0.08640917    18964.62      0.08641221    18965.29      2.3514
     3   1  -3177.59037729      0.08640917    18964.62      0.08641221    18965.29      2.3514
     4   1  -3177.59037725      0.08640921    18964.63      0.08641225    18965.30      2.3514
     5   1  -3177.59015786      0.08662860    19012.78      0.08663165    19013.45      2.3574
     6   1  -3177.59015781      0.08662864    19012.79      0.08663169    19013.46      2.3574
     7   1  -3177.59015752      0.08662894    19012.85      0.08663198    19013.52      2.3574
     8   1  -3177.59015749      0.08662896    19012.86      0.08663201    19013.53      2.3574
     9   1  -3177.59015749      0.08662897    19012.86      0.08663201    19013.53      2.3574
    10   1  -3177.58980673      0.08697973    19089.84      0.08698277    19090.51      2.3669
    11   1  -3177.58980660      0.08697986    19089.87      0.08698291    19090.54      2.3669
    12   1  -3177.58980660      0.08697986    19089.87      0.08698291    19090.54      2.3669
    13   1  -3177.58980659      0.08697987    19089.87      0.08698291    19090.54      2.3669
    14   1  -3177.58980648      0.08697997    19089.90      0.08698302    19090.57      2.3669
    15   1  -3177.58980648      0.08697997    19089.90      0.08698302    19090.57      2.3669
    16   1  -3177.58980645      0.08698001    19089.91      0.08698306    19090.57      2.3669
    17   1  -3177.58074603      0.09604043    21078.44      0.09604347    21079.11      2.6135
    18   1  -3177.58074603      0.09604043    21078.44      0.09604347    21079.11      2.6135
    19   1  -3177.58074602      0.09604044    21078.44      0.09604348    21079.11      2.6135
    20   1  -3177.58074601      0.09604044    21078.44      0.09604349    21079.11      2.6135
    21   1  -3177.58074600      0.09604045    21078.44      0.09604350    21079.11      2.6135
    22   1  -3177.54268598      0.13410048    29431.65      0.13410353    29432.32      3.6491
    23   1  -3177.54268598      0.13410048    29431.65      0.13410353    29432.32      3.6491
    24   1  -3177.54268598      0.13410048    29431.65      0.13410353    29432.32      3.6491
    25   1  -3177.53616587      0.14062058    30862.65      0.14062363    30863.32      3.8266
    26   1  -3177.51567101      0.16111545    35360.75      0.16111849    35361.42      4.3843
    27   1  -3177.51494129      0.16184516    35520.91      0.16184821    35521.58      4.4041
    28   1  -3177.51494129      0.16184517    35520.91      0.16184821    35521.58      4.4041
    29   1  -3177.51494068      0.16184577    35521.04      0.16184882    35521.71      4.4041
    30   1  -3177.51347154      0.16331491    35843.48      0.16331796    35844.15      4.4441
    31   1  -3177.51347132      0.16331514    35843.53      0.16331818    35844.20      4.4441
    32   1  -3177.51347132      0.16331514    35843.53      0.16331818    35844.20      4.4441
    33   1  -3177.51347065      0.16331581    35843.68      0.16331885    35844.34      4.4441
    34   1  -3177.51347065      0.16331581    35843.68      0.16331885    35844.34      4.4441

 E0 =  -3177.67678646 is the energy of the lowest zeroth-order state
 E1 =  -3177.67678950 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999055 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000000  0.00000000 -0.03029489  0.00000273
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00483528 -0.02989166 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000001 -0.00000000  0.02989298 -0.00483499 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000482 -0.00000000 -0.00004309  0.00000710  0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000472 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000273  0.03029616
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002

  7  1     7    1  |0 0>       -0.00000156 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000008  0.54797276  0.00000000 -0.00000034 -0.00000165 -0.00000000  0.00000010
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00001327  0.00000000 -0.54792240 -0.00000000  0.00000000 -0.40837834  0.00003107
                               -0.00000000  0.00000000 -0.00000000 -0.00000191  0.00000000  0.00000000 -0.00000007  0.00000000

 10  1     3    1  |1 1>+      -0.00000004  0.00000000  0.00000001  0.00000000  0.39133135  0.71615434  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.54768598  0.00000008  0.00001327 -0.00000000  0.00000000 -0.00003099 -0.40738260
                                0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000020

 12  1     5    1  |1 1>+      -0.00000000 -0.31563989  0.00000004  0.00000324  0.00000000 -0.00000000  0.00006359  0.70672947
                                0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000035

 13  1     6    1  |1 1>+       0.00000000 -0.00000052  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000  0.00023478  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00250934 -0.00000000 -0.00000000 -0.00000000  0.00046841 -0.00025591 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00023585 -0.00000000  0.00000000 -0.00046215  0.00000004
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.81594010  0.01914212 -0.00000000 -0.00000000

 18  1     2    1  |1 0>       -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000020
                               -0.00000000 -0.54784968  0.00000008  0.00000564  0.00000000 -0.00000000  0.00004814  0.40853201

 19  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000008 -0.54784665 -0.00000000 -0.00000032 -0.00000165 -0.00000000  0.00000010

 20  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000013  0.00000000
                               -0.00000000  0.00000763 -0.00000000  0.00038982  0.00000000 -0.00000000  0.81580260 -0.00007911

 21  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000220 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000650 -0.00000001  0.63211323  0.00000000  0.00000000 -0.00050421  0.00000005

 22  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000048 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 23  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00250948 -0.00000000  0.00000000 -0.00000000 -0.00001252  0.00053370  0.00000000  0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00023493 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 25  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00023493  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00046298

 26  1     1    1  |1 1>-       0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000020
                               -0.00000000  0.54797093 -0.00000008 -0.00000564  0.00000000 -0.00000000  0.00003675  0.40835790

 27  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000004  0.00000000  0.00000763 -0.00000000  0.42448102 -0.69702168 -0.00000000 -0.00000000

 28  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000191  0.00000000  0.00000000 -0.00000007  0.00000000
                               -0.00000000 -0.00000564  0.00000000 -0.54791755  0.00000000 -0.00000000  0.40838067 -0.00003675

 29  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000008  0.54729985  0.00000000 -0.00000624  0.00000805 -0.00000000  0.00000010

 30  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000004 -0.31631103 -0.00000000 -0.00000057 -0.00000287 -0.00000000  0.00000016

 31  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000052  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 32  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00023479  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000004  0.00046143

 33  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00023586  0.00000000 -0.00000000  0.00046215 -0.00000004

 34  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00250934  0.00000000 -0.00000000 -0.00000000  0.00045589  0.00027760 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00001364  0.00000000  0.00000000  0.00000003
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000013 -0.00000087 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00004369  0.00000403  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.03029614 -0.00000001 -0.00000000  0.00001787  0.00000000 -0.00000000  0.00000499  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000001  0.00000000 -0.00001796 -0.00000000  0.00000001 -0.00000492 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.40835544 -0.00001953 -0.00000010  0.67781333  0.00000002  0.00000004 -0.27090161  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00047729 -0.00000002  0.57976968 -0.00003995  0.00000000  0.44353348
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000743 -0.00000000 -0.00000000  0.00000064

 10  1     3    1  |1 1>+       0.00000322  0.57738302  0.00000000  0.00001349 -0.00000000 -0.00000000 -0.00000784  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000009 -0.00000000  0.45811912  0.00000007 -0.00037429 -0.56925691 -0.00000008 -0.00005499
                                0.00000000  0.00000000 -0.00000140 -0.00000000 -0.00000001 -0.00000051 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000016 -0.00000000 -0.37848611 -0.00000005  0.00030265 -0.50714265 -0.00000007 -0.00003038
                               -0.00000000 -0.00000000  0.00000116  0.00000000  0.00000000 -0.00000045 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00046143 -0.00000000  0.00000000 -0.00000028 -0.00000000  0.00000000 -0.00000055  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000017 -0.00000000  0.00000000  0.00000093
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000074 -0.57729004 -0.00000000 -0.00001349  0.00000000  0.00000000  0.00000784 -0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000133  0.00000000  0.00000001 -0.00000052 -0.00000000 -0.00000000
                               -0.00000010  0.00000000  0.43605073  0.00000006 -0.00034063  0.58537925  0.00000008  0.00003504

 19  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.40853189 -0.00000210 -0.00000006  0.43177523  0.00000002 -0.00000008  0.58854293 -0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000740  0.00000000  0.00000000  0.00000000
                                0.00000001  0.00000000  0.00045582 -0.00000002  0.57779318 -0.00000790 -0.00000000 -0.00295667

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000111
                               -0.00000000 -0.00000000  0.00001631 -0.00000000  0.00425121 -0.00005606  0.00000000  0.77486418

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003

 23  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00046298 -0.00000000 -0.00000000  0.00000057  0.00000000 -0.00000000  0.00000064 -0.00000000

 25  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000057  0.00000000 -0.00000000  0.00000064  0.00000000  0.00000000

 26  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000207  0.00000000  0.00000001  0.00000025  0.00000000  0.00000000
                               -0.00000010 -0.00000000  0.67582117  0.00000010 -0.00054028 -0.27583334 -0.00000004 -0.00003121

 27  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000320  0.57737774  0.00000000  0.00000706 -0.00000000 -0.00000000  0.00000003  0.00000000

 28  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000736 -0.00000000 -0.00000000 -0.00000065
                                0.00000000 -0.00000000 -0.00045177  0.00000002 -0.57445927 -0.00003265  0.00000000  0.45039406

 29  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.40824765  0.00001045  0.00000007 -0.46271492 -0.00000002 -0.00000008  0.56527711 -0.00000000

 30  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.70623162  0.00000182  0.00000005 -0.37421136 -0.00000001  0.00000007 -0.51057939  0.00000000

 31  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000002  0.00000000

 32  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000029  0.00000000 -0.00000000  0.00000055  0.00000000  0.00000000

 33  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000018 -0.00000000  0.00000000  0.00000093

 34  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000053  0.99950831 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000028 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.99628805 -0.08017403  0.00000303  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.08017399  0.99628746  0.00105437  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00008760 -0.00105073  0.99950771 -0.00000001 -0.00000000 -0.00000002  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000001  0.99950827  0.00000053  0.00000000  0.00000002 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00002583  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000035  0.00000478  0.01237092 -0.00000000 -0.00000000  0.00000076 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000018 -0.01237137 -0.00000000 -0.00000000 -0.00000073
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.02257744 -0.01008626  0.00000326 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.01235756  0.00000018 -0.00000000 -0.00000075  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000032  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.02143187 -0.00000001 -0.00000000 -0.00000043  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000055 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000200  0.99999652 -0.00007793
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000057 -0.00030941  0.00000016

 14  1     7    1  |1 1>+       0.00000016  0.00000220  0.00570522 -0.00000000 -0.00000000 -0.00185105  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00268648  0.00601423 -0.00000240  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00570499 -0.00000000 -0.00000014 -0.00185056
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00255510 -0.02459483  0.00000943 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000032  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.01237109  0.00000034 -0.00000000 -0.00000078  0.00000000

 19  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000035  0.00000478  0.01237109 -0.00000000 -0.00000000 -0.00000078  0.00000000  0.00000000

 20  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000016  0.02473740  0.00000000  0.00000000  0.00000000

 21  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001519  0.00000000  0.00000000  0.00000088

 22  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000014 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006  0.00007793  0.99999657

 23  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00655222 -0.00068070  0.00000045 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000016  0.00000220  0.00570517 -0.00000000 -0.00000000  0.00185058 -0.00000000 -0.00000000

 25  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000015  0.00000000 -0.00000000  0.00000057 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00570517 -0.00000000  0.00000000  0.00185057 -0.00000014

 26  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000032  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.01237092 -0.00000001  0.00000000  0.00000075 -0.00000000

 27  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.02002199 -0.01451181  0.00000634 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 28  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000001  0.01237137 -0.00000000 -0.00000000 -0.00000073

 29  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000063  0.00000499  0.01238386 -0.00000000 -0.00000000  0.00000075 -0.00000000 -0.00000000

 30  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000060  0.00000827  0.02141669 -0.00000000 -0.00000000 -0.00000043  0.00000000  0.00000000

 31  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000057  0.00000000
                                0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000  0.99999657 -0.00000200 -0.00000006

 32  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000015 -0.00000000 -0.00000000  0.00000057 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00570522  0.00000000  0.00000000  0.00185105 -0.00000014

 33  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00570499 -0.00000000 -0.00000014 -0.00185057

 34  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00386538  0.00533357 -0.00000195  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00001230  0.00434637 -0.00000000 -0.00000000  0.00000000 -0.00000105 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000002
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000233  0.00000000 -0.00000000 -0.00000000  0.00794413 -0.00000004 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000042 -0.00000000 -0.00000000 -0.00000000  0.00149692 -0.00001169  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000350 -0.00000000  0.00000000 -0.00000220 -0.00808445 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000352 -0.00000000  0.00000000 -0.00000000  0.00808446
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.99999695 -0.00246932  0.00000000 -0.00000000 -0.00000000  0.00000049 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00018220 -0.00000000 -0.00000000  0.00000000  0.00016714  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00018217 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000033 -0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000001 -0.00000015 -0.00000000  0.00000000  0.00000000 -0.00028889  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00018208 -0.00000000 -0.00000000  0.00000000 -0.00016678
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00010353 -0.00000000  0.00000000 -0.00000000  0.00028908
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00261744 -0.00000001  0.00000000 -0.00000000 -0.00000080
                                0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.70741042  0.00000010  0.00000000  0.00000372  0.70677737  0.00000011
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00142558  0.57723504  0.00000000 -0.00000000  0.00000000 -0.41010722  0.00000433 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000233  0.70710134  0.00000000  0.00000000  0.00000215
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00126876  0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000081 -0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00018234 -0.00000000  0.00000000 -0.00000000  0.00016697

 19  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00018234  0.00000000  0.00000000  0.00000000  0.00016697  0.00000000

 20  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000013  0.00000000  0.00000000 -0.00000000

 21  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000038  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00021185 -0.00000000 -0.00000000  0.00000000

 22  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000470  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000001  0.00261709 -0.00000000 -0.00000000  0.00000000

 23  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00142578  0.57756106  0.00000000  0.00000000  0.00000000  0.81631322 -0.00000429 -0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.70679809 -0.00000010 -0.00000000  0.00000373  0.70738972  0.00000011

 25  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000294  0.00000000  0.00000000  0.00000000 -0.00000006
                               -0.00000000 -0.00000000 -0.00000010  0.70679624  0.00000233  0.00000000 -0.00000011  0.70739157

 26  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00018220  0.00000000  0.00000000 -0.00000000  0.00016714

 27  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000015 -0.00000000 -0.00000000  0.00000000  0.00028971  0.00000000 -0.00000000

 28  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000033 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00018217  0.00000000  0.00000000  0.00000000

 29  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00018195 -0.00000000 -0.00000000 -0.00000000  0.00016713  0.00000000

 30  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00010375  0.00000000  0.00000000  0.00000000  0.00028887  0.00000000

 31  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00261745  0.00000000  0.00000000  0.00000000 -0.00000080  0.00000000

 32  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000294  0.00000000 -0.00000000 -0.00000000  0.00000006
                                0.00000000 -0.00000000 -0.00000010  0.70741226  0.00000233 -0.00000000  0.00000011 -0.70677553

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00126877  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000233  0.70710502 -0.00000000 -0.00000000 -0.00000215

 34  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00142557 -0.57723300  0.00000000 -0.00000000 -0.00000000  0.40666852  0.00000004 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34

  1  1     1    1  |0 0>       -0.00000001  0.00000000
                               -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00808417
                               -0.00000000  0.00000017

  3  1     3    1  |0 0>        0.00149682 -0.00000000
                                0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00794358 -0.00000000
                               -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00001148  0.00000000
                               -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000002
                                0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000
                               -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000
                                0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00016696
                               -0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00016767 -0.00000000
                                0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000
                                0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000
                               -0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000218 -0.00000000
                               -0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.70608766  0.00000000
                                0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000000  0.70708546
                                0.00000000 -0.00001486

 17  1     1    1  |1 0>        0.00000000  0.00000000
                               -0.00033413 -0.00000000

 18  1     2    1  |1 0>       -0.00000000  0.00000000
                                0.00000000  0.00000000

 19  1     3    1  |1 0>       -0.00000000  0.00000000
                               -0.00000000 -0.00000000

 20  1     4    1  |1 0>       -0.00000000  0.00000001
                               -0.00000000  0.00033376

 21  1     5    1  |1 0>       -0.00000000 -0.00000000
                                0.00000000 -0.00000021

 22  1     6    1  |1 0>        0.00000000  0.00000000
                                0.00000000  0.00000000

 23  1     7    1  |1 0>        0.00000000 -0.00000000
                                0.00198413 -0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000
                               -0.00000218 -0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000
                                0.00000000 -0.00000215

 26  1     1    1  |1 1>-      -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 27  1     2    1  |1 1>-      -0.00000000  0.00000000
                               -0.00016626 -0.00000000

 28  1     3    1  |1 1>-      -0.00000000  0.00000000
                               -0.00000000  0.00016696

 29  1     4    1  |1 1>-       0.00000000 -0.00000000
                                0.00000000 -0.00000000

 30  1     5    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 31  1     6    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000  0.00000000

 32  1     7    1  |1 1>-       0.00000000  0.00000000
                               -0.00000000  0.00000215

 33  1     8    1  |1 1>-       0.00000000 -0.00001486
                                0.00000000 -0.70708177

 34  1     9    1  |1 1>-      -0.00000000 -0.00000000
                                0.70807540  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.09%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.09%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%   30.03%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.02%    0.00%    0.00%   16.68%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   15.31%   51.29%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.60%
 12  1     5    1  |1 1>+         0.00%    9.96%    0.00%    0.00%    0.00%    0.00%    0.00%   49.95%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.58%    0.04%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%   16.69%
 19  1     3    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.55%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.96%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%   30.03%    0.00%    0.00%    0.00%    0.00%    0.00%   16.68%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   18.02%   48.58%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.02%    0.00%    0.00%   16.68%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%   29.95%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%   10.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+        16.68%    0.00%    0.00%   45.94%    0.00%    0.00%    7.34%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.61%    0.00%    0.00%   19.67%
 10  1     3    1  |1 1>+         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   20.99%    0.00%    0.00%   32.41%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%   14.33%    0.00%    0.00%   25.72%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%   19.01%    0.00%    0.00%   34.27%    0.00%    0.00%
 19  1     3    1  |1 0>         16.69%    0.00%    0.00%   18.64%    0.00%    0.00%   34.64%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.38%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.04%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%   45.67%    0.00%    0.00%    7.61%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.00%    0.00%    0.00%   20.29%
 29  1     4    1  |1 1>-        16.67%    0.00%    0.00%   21.41%    0.00%    0.00%   31.95%    0.00%
 30  1     5    1  |1 1>-        49.88%    0.00%    0.00%   14.00%    0.00%    0.00%   26.07%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.90%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         99.26%    0.64%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.64%   99.26%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   99.90%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   99.90%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.05%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.04%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  7  1     7    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%   50.04%    0.00%    0.00%    0.00%   49.95%    0.00%
 15  1     8    1  |1 1>+         0.00%   33.32%    0.00%    0.00%    0.00%   16.82%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%   33.36%    0.00%    0.00%    0.00%   66.64%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.04%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.04%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%   50.04%    0.00%    0.00%    0.00%   49.95%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%   33.32%    0.00%    0.00%    0.00%   16.54%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34

  1  1     1    1  |0 0>          0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.01%
  3  1     3    1  |0 0>          0.00%    0.00%
  4  1     4    1  |0 0>          0.01%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%
 15  1     8    1  |1 1>+        49.86%    0.00%
 16  1     9    1  |1 1>+         0.00%   50.00%
 17  1     1    1  |1 0>          0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%   50.00%
 34  1     9    1  |1 1>-        50.14%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      713.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      736.49       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8436.51   6579.35     85.85   1187.88    572.42      4.92      0.12      5.74
 REAL TIME  *      8585.77 SEC
 DISK USED  *       820.86 MB (local),       14.16 GB (total)
 SF USED    *         4.80 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK energy=  -3177.513470651316

              CI              CI           MULTI         RHF-SCF
  -3177.49266227  -3177.51156938  -3177.14931841  -3177.27927584
 **********************************************************************************************************************************
 Molpro calculation terminated
