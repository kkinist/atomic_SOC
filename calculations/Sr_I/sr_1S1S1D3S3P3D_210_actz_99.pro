
 Working directory              : /wrk/irikura/molpro.83XbH1A8Y0/
 Global scratch directory       : /wrk/irikura/molpro.83XbH1A8Y0/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.83XbH1A8Y0/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Sr SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (2/10) adds 4d orbitals
 {multi
     closed,9,9
     occ,16,12
     wf,sym=1,spin=0;state,7;
       weight,99,1,1,1,1,1,1
     wf,sym=1,spin=2;state,9;
       weight,all,1
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
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 05-Mar-24          TIME: 16:07:04  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  45000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry SR     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SR     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SR     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SR     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         238
 NUMBER OF SYMMETRY AOS:          211
 NUMBER OF CONTRACTIONS:           93   (   45Ag  +   48Au  )
 NUMBER OF INNER CORE ORBITALS:    14   (    8Ag  +    6Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     17.302 MB (compressed) written to integral file ( 17.4%)

     Node minimum: 0.262 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     162345.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     162345      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ    10953812. AND WROTE       36458. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.10 SEC
 SORT2 READ     1037967. AND WROTE     4879686. INTEGRALS IN    240 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      161323.  Node maximum:      165900. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.624E-03 0.367E-02 0.929E-02 0.929E-02 0.929E-02 0.929E-02 0.929E-02 0.284E-01
         2 0.333E-02 0.333E-02 0.333E-02 0.745E-02 0.745E-02 0.745E-02 0.928E-01 0.928E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.23      2.87
 REAL TIME  *         4.39 SEC
 DISK USED  *        29.46 MB (local),     1011.77 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   10   9

 Initial occupancy:  10   9

 NELEC=   38   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -3177.27784108   -3177.27784108     0.00D+00     0.19D+00     0     0       0.00      0.01    start
   2    -3177.27784113      -0.00000005     0.20D-04     0.52D-04     1     0       0.00      0.01    diag
   3    -3177.27784113      -0.00000000     0.43D-05     0.18D-04     2     0       0.00      0.01    diag
   4    -3177.27784113      -0.00000000     0.89D-06     0.95D-05     3     0       0.01      0.02    diag
   5    -3177.27784113      -0.00000000     0.80D-07     0.54D-05     4     0       0.00      0.02    diag
   6    -3177.27784113      -0.00000000     0.32D-07     0.28D-05     5     0       0.00      0.02    diag
   7    -3177.27784113       0.00000000     0.77D-08     0.14D-06     0     0       0.00      0.02    diag

 Final occupancy:  10   9

 !RHF STATE 1.1 Energy              -3177.277841133261
  RHF One-electron energy           -4396.585097306509
  RHF Two-electron energy            1219.307256173248
  RHF Kinetic energy                 3454.572331531404
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.919731166759

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.20921     1  1  s    0.99995
    2.1     2.00000   -83.10582     1  2  s    1.00054
    3.1     2.00000   -13.95403     1  3  s    0.99701
    4.1     2.00000    -5.58737     1  1  d0   0.99943
    5.1     2.00000    -5.58737     1  1  d2-  0.99679
    6.1     2.00000    -5.58737     1  1  d1+  0.97648
    7.1     2.00000    -5.58737     1  1  d1-  0.97805
    8.1     2.00000    -5.58737     1  1  d2+  0.99804
    9.1     2.00000    -1.94831     1  4  s    1.00244
   10.1     2.00000    -0.18122     1  5  s    0.99877
    1.2     2.00000   -73.65117     1  1  px   0.99997
    2.2     2.00000   -73.65117     1  1  py   0.99993
    3.2     2.00000   -73.65117     1  1  pz   0.99994
    4.2     2.00000   -10.80369     1  2  pz   1.00005
    5.2     2.00000   -10.80369     1  2  px   1.00005
    6.2     2.00000   -10.80369     1  2  py   1.00005
    7.2     2.00000    -1.09510     1  3  px   0.99983
    8.2     2.00000    -1.09510     1  3  pz   0.99983
    9.2     2.00000    -1.09510     1  3  py   0.99983


 HOMO     10.1    -0.181218 =      -4.9312eV
 LUMO     10.2     0.009844 =       0.2679eV
 LUMO-HOMO         0.191062 =       5.1991eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.26      0.03      2.87
 REAL TIME  *         4.43 SEC
 DISK USED  *        29.90 MB (local),        1.00 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  18 (    9    9)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      65 (   29   36)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.356D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.118D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.232D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.210D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.101D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.160D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.304D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.304D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.780D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.787D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 1   1 2 4 6 5 3 6 4 3 5   2 1 2 4 6 3 5 1 2 4   6 3 5 2 6 4 3 5 1 2
                                        6 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.161D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.142D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.306D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.796D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.981D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.105D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.699D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.921D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.651D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.651D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 3 2 3   1 2 3 1 2 3 1 2 5 4  10 8 6 9 7 3 1 2 810   6 5 4 9 7 3 1 2 4 5
                                        6 9 710 8 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.86842   0.00877   0.00877   0.00877   0.00877   0.00877   0.00877
 Weight factors for state symmetry  2:    0.00877   0.00877   0.00877   0.00877   0.00877   0.00877   0.00877   0.00877
                                          0.00877
 
 Number of orbital rotations:  986  ( 90 closed/active, 585 closed/virtual, 0 active/active, 311 active/virtual )
 Total number of variables:    1608
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   19   36    5  -3177.25865442   -3177.28818511   -0.02953069    0.00829335 0.00000853 0.00000000  0.24E+01      1.08
   2    9   16    0  -3177.28630141   -3177.28745477   -0.00115336    0.00797796 0.00000924 0.00000000  0.44E+00      1.91
   3    8   16    0  -3177.28745795   -3177.28745804   -0.00000009    0.00003208 0.00000000 0.00000000  0.70E-02      2.59
   4    2    4    0  -3177.28745804   -3177.28745804   -0.00000000    0.00000002 0.00000000 0.00000000  0.27E-05      2.96

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.16E-08)
                       Final energy:  -3177.28745804
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -3177.302866961947
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.56632262
 One electron energy                         -4396.59860825
 Two electron energy                          1219.29574129
 Virial ratio                                    1.91974001
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -3177.203211058503
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.69064562
 One electron energy                         -4397.66550642
 Two electron energy                          1220.46229536
 Virial ratio                                    1.91967807
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -3177.203211057839
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.69064560
 One electron energy                         -4397.66550639
 Two electron energy                          1220.46229533
 Virial ratio                                    1.91967807
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -3177.203211057790
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.69064560
 One electron energy                         -4397.66550641
 Two electron energy                          1220.46229535
 Virial ratio                                    1.91967807
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -3177.203211057757
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.69064560
 One electron energy                         -4397.66550642
 Two electron energy                          1220.46229536
 Virial ratio                                    1.91967807
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -3177.203211057095
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.69064558
 One electron energy                         -4397.66550641
 Two electron energy                          1220.46229535
 Virial ratio                                    1.91967807
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -3177.154276176829
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.41960215
 One electron energy                         -4392.95124585
 Two electron energy                          1215.79696967
 Virial ratio                                    1.91973606
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -3177.206801252428
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.73684857
 One electron energy                         -4398.28694112
 Two electron energy                          1221.08013987
 Virial ratio                                    1.91966681
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -3177.206801251698
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.73684855
 One electron energy                         -4398.28694115
 Two electron energy                          1221.08013990
 Virial ratio                                    1.91966681
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -3177.206801251692
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.73684855
 One electron energy                         -4398.28694114
 Two electron energy                          1221.08013989
 Virial ratio                                    1.91966681
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -3177.206801251679
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.73684855
 One electron energy                         -4398.28694114
 Two electron energy                          1221.08013989
 Virial ratio                                    1.91966681
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -3177.206801251023
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.73684853
 One electron energy                         -4398.28694118
 Two electron energy                          1221.08013993
 Virial ratio                                    1.91966681
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -3177.169799967776
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.26615352
 One electron energy                         -4392.08766372
 Two electron energy                          1214.91786375
 Virial ratio                                    1.91978141
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -3177.137416565732
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.69037318
 One electron energy                         -4396.88996213
 Two electron energy                          1219.75254557
 Virial ratio                                    1.91965909
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -3177.137416565383
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.69037317
 One electron energy                         -4396.88996216
 Two electron energy                          1219.75254559
 Virial ratio                                    1.91965909
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -3177.137416565181
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.69037318
 One electron energy                         -4396.88996219
 Two electron energy                          1219.75254562
 Virial ratio                                    1.91965909
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.044153914978
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000003122
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999996871
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000171
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     2.955846499400
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999663326309
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000626281
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.999999342873
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000035550
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.000336536513
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999999999
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.000000000314
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999677
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.956486650054
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000001929
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000120
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999999998080
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.043512947408
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000336711487
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.999999336725
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000621187
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000033373
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     2.999663425451
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999999999
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999999687
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000000324
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999359434968
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999994949
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000003008
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000001749
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000640553192
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.999999962204
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000036994
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000035940
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999931077
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.000000038036
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000000000002
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999999999
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999999
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 5 6 3 1 1   3 5 2 6 4 1 2 4 6 3   5 1 2 4 6 3 5 1 2 4   5 6 3 2 4 6 3 5 1 2
                                        4 6 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 3 2 2   1 3 3 1 2 3 1 2 4 5   810 6 9 7 3 1 2 810   6 4 5 9 7 3 1 2 4 5
                                        6 9 710 8 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.20637     1  1  s    0.99995
    2.1     2.00000   -83.10269     1  2  s    1.00055
    3.1     2.00000   -13.95089     1  3  s    0.99691
    4.1     2.00000    -5.58454     1  1  d0   1.00002
    5.1     2.00000    -5.58454     1  1  d1+  1.00002
    6.1     2.00000    -5.58454     1  1  d2+  1.00002
    7.1     2.00000    -5.58454     1  1  d1-  1.00002
    8.1     2.00000    -5.58454     1  1  d2-  1.00002
    9.1     2.00000    -1.94520     1  4  s    1.00110
   10.1     1.69290    -0.15644     1  5  s    1.10240
   11.1     0.02115     0.09471     1  2  d2-  0.96609
   12.1     0.02115     0.09471     1  2  d2+  0.96609
   13.1     0.02115     0.09471     1  2  d0   0.96609
   14.1     0.02115     0.09471     1  2  d1-  0.96609
   15.1     0.02115     0.09471     1  2  d1+  0.96609
   16.1     0.01890     0.04725     1  5  s   -1.26623    1  7  s    0.79267    1 10  s    0.98859
    1.2     2.00000   -73.64820     1  1  px   1.00000
    2.2     2.00000   -73.64820     1  1  py   1.00000
    3.2     2.00000   -73.64820     1  1  pz   1.00000
    4.2     2.00000   -10.80084     1  2  pz   1.00006
    5.2     2.00000   -10.80084     1  2  px   1.00006
    6.2     2.00000   -10.80084     1  2  py   1.00006
    7.2     2.00000    -1.09326     1  3  px   0.99953
    8.2     2.00000    -1.09326     1  3  pz   0.99953
    9.2     2.00000    -1.09326     1  3  py   0.99953
   10.2     0.06082     0.05657     1  4  py   1.02227    1  5  py   0.26357    1  6  py  -0.25762
   11.2     0.06082     0.05657     1  4  px   1.02227    1  5  px   0.26357    1  6  px  -0.25762
   12.2     0.06082     0.05657     1  4  pz   1.02227    1  5  pz   0.26357    1  6  pz  -0.25762
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.95879281      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.01872925
 b00000a 000      0.00078550      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.69476599
 a00000b 000     -0.00078550     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.69476599
 b0000a0 000     -0.00000000     -0.00000068     -0.00001607     -0.00000211     -0.63319070     -0.00000535     -0.00000000
 a0000b0 000      0.00000000      0.00000068      0.00001607      0.00000211      0.63319070      0.00000535      0.00000000
 a000b00 000     -0.00000000     -0.00000060     -0.00002041      0.63319070     -0.00000211      0.00000369      0.00000000
 b000a00 000      0.00000000      0.00000060      0.00002041     -0.63319070      0.00000211     -0.00000369     -0.00000000
 ab00000 000      0.00000000      0.00000097      0.63319070      0.00002041     -0.00001607      0.00000045      0.00000000
 ba00000 000     -0.00000000     -0.00000097     -0.63319070     -0.00002041      0.00001607     -0.00000045     -0.00000000
 a0b0000 000      0.00000000      0.63314000     -0.00000096      0.00000065     -0.00000062     -0.00801283      0.00000000
 b0a0000 000     -0.00000000     -0.63314000      0.00000096     -0.00000065      0.00000062      0.00801283     -0.00000000
 b00a000 000      0.00000000     -0.00801283      0.00000046      0.00000368      0.00000536     -0.63314000     -0.00000000
 a00b000 000     -0.00000000      0.00801283     -0.00000046     -0.00000368     -0.00000536      0.63314000      0.00000000
 0000000 002     -0.15816444     -0.00442053      0.00000025      0.00000203      0.00000296     -0.34929184      0.03385025
 0000000 200     -0.15816444      0.30470586     -0.00000059     -0.00000071     -0.00000177      0.17081762      0.03385025
 0000000 ba0      0.00000000      0.00000046      0.30251982      0.00000975     -0.00000768      0.00000021      0.00000000
 0000000 ab0     -0.00000000     -0.00000046     -0.30251982     -0.00000975      0.00000768     -0.00000021     -0.00000000
 0000000 b0a     -0.00000000     -0.00000029     -0.00000975      0.30251982     -0.00000101      0.00000176      0.00000000
 0000000 a0b      0.00000000      0.00000029      0.00000975     -0.30251982      0.00000101     -0.00000176     -0.00000000
 0000000 0ab     -0.00000000     -0.00000033     -0.00000768     -0.00000101     -0.30251982     -0.00000256     -0.00000000
 0000000 0ba      0.00000000      0.00000033      0.00000768      0.00000101      0.30251982      0.00000256      0.00000000
 0000000 020     -0.15816444     -0.30028533      0.00000033     -0.00000132     -0.00000118      0.17847421      0.03385025
 0000002 000     -0.02481855      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.16189072
 0b0a000 000     -0.00000000     -0.00000009     -0.06041279     -0.00000195      0.00000153     -0.00000004      0.00000000
 0a0b000 000      0.00000000      0.00000009      0.06041279      0.00000195     -0.00000153      0.00000004     -0.00000000
 0002000 000     -0.03178426     -0.00076451      0.00000004      0.00000035      0.00000051     -0.06040795      0.03034312
 0200000 000     -0.03178425      0.00076451     -0.00000004     -0.00000035     -0.00000051      0.06040795      0.03034312
 0020000 000     -0.03178425      0.00076451     -0.00000004     -0.00000035     -0.00000051      0.06040795      0.03034311
 00ab000 000     -0.00000000      0.06040795     -0.00000009      0.00000006     -0.00000006     -0.00076451      0.00000000
 00ba000 000      0.00000000     -0.06040795      0.00000009     -0.00000006      0.00000006      0.00076451     -0.00000000
 0000020 000     -0.03178425     -0.05269707      0.00000010      0.00000012      0.00000031     -0.02954189      0.03034312
 0b00a00 000      0.00000000      0.00000006      0.00000133      0.00000017      0.05231901      0.00000044      0.00000000
 0a00b00 000     -0.00000000     -0.00000006     -0.00000133     -0.00000017     -0.05231901     -0.00000044     -0.00000000
 00b00a0 000      0.00000000      0.00000006      0.00000133      0.00000017      0.05231901      0.00000044     -0.00000000
 00a00b0 000     -0.00000000     -0.00000006     -0.00000133     -0.00000017     -0.05231901     -0.00000044      0.00000000
 0a000b0 000      0.00000000      0.00000005      0.00000169     -0.05231901      0.00000017     -0.00000031     -0.00000000
 0b000a0 000     -0.00000000     -0.00000005     -0.00000169      0.05231901     -0.00000017      0.00000031      0.00000000
 00b0a00 000      0.00000000      0.00000005      0.00000169     -0.05231901      0.00000017     -0.00000031     -0.00000000
 00a0b00 000     -0.00000000     -0.00000005     -0.00000169      0.05231901     -0.00000017      0.00000031      0.00000000
 0000ab0 000     -0.00000000     -0.00000008     -0.05231901     -0.00000169      0.00000133     -0.00000004      0.00000000
 0000ba0 000      0.00000000      0.00000008      0.05231901      0.00000169     -0.00000133      0.00000004     -0.00000000
 0000200 000     -0.03178425      0.05193257     -0.00000006      0.00000023      0.00000020     -0.03086606      0.03034312
 
 Energy:      -3177.30286696  -3177.20321106  -3177.20321106  -3177.20321106  -3177.20321106  -3177.20321106  -3177.15427618
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      1.00000000      0.00000000
 a0a0000 000      0.99967137     -0.00000168     -0.00000045     -0.00000159      0.00009716      0.00000000      0.00000000
 a00a000 000     -0.00009716     -0.00000991     -0.00000822     -0.00000511      0.99967137     -0.00000000      0.00000000
 aa00000 000      0.00000159      0.00011114     -0.00010952      0.99967137      0.00000511      0.00000000     -0.00000000
 a000a00 000      0.00000045      0.00045666      0.99967127      0.00010947      0.00000822     -0.00000000     -0.00000000
 a0000a0 000      0.00000168      0.99967127     -0.00045665     -0.00011119      0.00000990      0.00000000     -0.00000000
 0000000 a0a      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000093
 0000000 0aa      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000063
 0000000 aa0     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.82707126
 0aa0000 000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.50275491
 000a0a0 000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000033
 000aa00 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000049
 00a00a0 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000019
 00a0a00 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000028
 0a00a00 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000019
 0a000a0 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000028
 0000aa0 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.25137745
 
 Energy:      -3177.20680125  -3177.20680125  -3177.20680125  -3177.20680125  -3177.20680125  -3177.16979997  -3177.13741657

 State:                8               9
 a00000a 000     -0.00000000     -0.00000000
 a0a0000 000     -0.00000000     -0.00000000
 a00a000 000     -0.00000000      0.00000000
 aa00000 000     -0.00000000      0.00000000
 a000a00 000      0.00000000      0.00000000
 a0000a0 000      0.00000000      0.00000000
 0000000 a0a      0.82707127      0.00001462
 0000000 0aa     -0.00001462      0.82707127
 0000000 aa0      0.00000093      0.00000063
 0aa0000 000     -0.00000056     -0.00000038
 000a0a0 000     -0.00000770      0.43539852
 000aa00 000      0.43539852      0.00000770
 00a00a0 000      0.00000444     -0.25137746
 00a0a00 000      0.25137746      0.00000444
 0a00a00 000      0.00000444     -0.25137746
 0a000a0 000     -0.25137746     -0.00000444
 0000aa0 000     -0.00000028     -0.00000019
 
 Energy:      -3177.13741657  -3177.13741657
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.52       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.69       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.58      2.32      0.03      2.87
 REAL TIME  *         7.87 SEC
 DISK USED  *        50.27 MB (local),        1.60 GB (total)
 SF USED    *        51.69 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -3177.302867  -0.0
    -3177.203211   6.0
    -3177.203211   6.0
    -3177.203211   6.0
    -3177.203211   6.0
    -3177.203211   6.0
    -3177.154276  -0.0
    -3177.206801   6.0
    -3177.206801   6.0
    -3177.206801   6.0
    -3177.206801   6.0
    -3177.206801   6.0
    -3177.169800  -0.0
    -3177.137417   2.0
    -3177.137417   2.0
    -3177.137417   2.0
                                                  


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
 Number of external orbitals:      65 (  29  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.06 sec, npass=  1  Memory used:   1.01 MW


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -3177.30286696
     2     -3177.20321106
     3     -3177.20321106
     4     -3177.20321106
     5     -3177.20321106
     6     -3177.20321106
     7     -3177.15427618

 Number of blocks in overlap matrix:   694   Smallest eigenvalue:  0.87D+00
 Number of N-2 electron functions:     748
 Number of N-1 electron functions:   31960

 Number of internal configurations:                38116
 Number of singly external configurations:       1037888
 Number of doubly external configurations:        793233
 Total number of contracted configurations:      1869237
 Total number of uncontracted configurations:    7137666

 Diagonal Coupling coefficients finished.               Storage:20307871 words, CPU-Time:      4.84 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1082838 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.30286696    -0.00000000    -0.26875656  0.27D-01  0.37D-01     8.48
    1     2     2     1.00000000     0.00000000 -3177.20321106     0.00000000    -0.27733341  0.34D-01  0.40D-01     8.48
    1     3     3     1.00000000     0.00000000 -3177.20321106    -0.00000000    -0.27740574  0.35D-01  0.40D-01     8.48
    1     4     4     1.00000000     0.00000000 -3177.20321106    -0.00000000    -0.27755655  0.35D-01  0.40D-01     8.48
    1     5     5     1.00000000     0.00000000 -3177.20321106     0.00000000    -0.27760513  0.35D-01  0.40D-01     8.48
    1     6     6     1.00000000     0.00000000 -3177.20321106    -0.00000000    -0.27732074  0.34D-01  0.40D-01     8.48
    1     7     7     1.00000000     0.00000000 -3177.15427618    -0.00000000    -0.27639037  0.57D-01  0.37D-01     8.48
    2     1     1     1.05396783    -0.26236738 -3177.56523434    -0.26236738    -0.00427423  0.10D-02  0.38D-03    50.83
    2     2     2     1.06184844    -0.26344938 -3177.46666044    -0.26344938    -0.00448695  0.13D-02  0.49D-03    50.83
    2     3     3     1.06191249    -0.26344307 -3177.46665413    -0.26344307    -0.00449571  0.13D-02  0.49D-03    50.83
    2     4     4     1.06199549    -0.26342664 -3177.46663770    -0.26342664    -0.00451015  0.13D-02  0.49D-03    50.83
    2     5     5     1.06205374    -0.26341445 -3177.46662551    -0.26341445    -0.00452124  0.13D-02  0.49D-03    50.83
    2     6     6     1.06205986    -0.26341154 -3177.46662259    -0.26341154    -0.00452345  0.13D-02  0.49D-03    50.83
    2     7     7     1.07633988    -0.26296079 -3177.41723696    -0.26296079    -0.00730572  0.38D-02  0.88D-03    50.83
    3     1     1     1.05535602    -0.26676302 -3177.56962998    -0.00439564    -0.00011229  0.26D-04  0.13D-04    93.09
    3     2     2     1.06159753    -0.26804047 -3177.47125153    -0.00459109    -0.00013292  0.36D-04  0.20D-04    93.09
    3     3     3     1.06160661    -0.26804015 -3177.47125121    -0.00459707    -0.00013343  0.36D-04  0.21D-04    93.09
    3     4     4     1.06160838    -0.26803917 -3177.47125022    -0.00461252    -0.00013373  0.36D-04  0.21D-04    93.09
    3     5     5     1.06160912    -0.26803905 -3177.47125011    -0.00462460    -0.00013382  0.36D-04  0.21D-04    93.09
    3     6     6     1.06160960    -0.26803885 -3177.47124991    -0.00462732    -0.00013414  0.36D-04  0.21D-04    93.09
    3     7     7     1.06775480    -0.26977951 -3177.42405568    -0.00681872    -0.00027026  0.81D-04  0.44D-04    93.09
    4     1     1     1.05581683    -0.26688727 -3177.56975423    -0.00012425    -0.00000574  0.25D-05  0.52D-06   133.61
    4     2     2     1.06221746    -0.26819445 -3177.47140551    -0.00015398    -0.00001172  0.97D-05  0.88D-06   133.61
    4     3     3     1.06221931    -0.26819442 -3177.47140548    -0.00015427    -0.00001175  0.97D-05  0.89D-06   133.61
    4     4     4     1.06221914    -0.26819433 -3177.47140539    -0.00015517    -0.00001183  0.98D-05  0.89D-06   133.61
    4     5     5     1.06221914    -0.26819433 -3177.47140539    -0.00015528    -0.00001183  0.98D-05  0.89D-06   133.61
    4     6     6     1.06221895    -0.26819432 -3177.47140538    -0.00015547    -0.00001184  0.98D-05  0.90D-06   133.61
    4     7     7     1.06771477    -0.27005620 -3177.42433237    -0.00027669    -0.00001328  0.59D-05  0.17D-05   133.61
    5     1     1     1.05595634    -0.26689404 -3177.56976100    -0.00000677    -0.00000027  0.12D-06  0.25D-07   172.49
    5     2     2     1.06245978    -0.26820983 -3177.47142089    -0.00001539    -0.00000120  0.55D-06  0.13D-06   172.49
    5     3     3     1.06245907    -0.26820982 -3177.47142088    -0.00001540    -0.00000121  0.56D-06  0.13D-06   172.49
    5     4     4     1.06245904    -0.26820982 -3177.47142087    -0.00001549    -0.00000122  0.57D-06  0.13D-06   172.49
    5     5     5     1.06245888    -0.26820982 -3177.47142087    -0.00001549    -0.00000122  0.57D-06  0.13D-06   172.49
    5     6     6     1.06245866    -0.26820981 -3177.47142087    -0.00001549    -0.00000122  0.57D-06  0.13D-06   172.49
    5     7     7     1.06750499    -0.27007187 -3177.42434805    -0.00001567    -0.00000082  0.64D-06  0.73D-07   172.49
    6     1     1     1.05597647    -0.26689434 -3177.56976130    -0.00000031    -0.00000001  0.50D-08  0.19D-08   211.36
    6     2     2     1.06248119    -0.26821131 -3177.47142236    -0.00000147    -0.00000011  0.49D-07  0.12D-07   211.36
    6     3     3     1.06248090    -0.26821131 -3177.47142236    -0.00000148    -0.00000011  0.50D-07  0.12D-07   211.36
    6     4     4     1.06248020    -0.26821130 -3177.47142236    -0.00000149    -0.00000011  0.52D-07  0.12D-07   211.36
    6     5     5     1.06248023    -0.26821130 -3177.47142236    -0.00000149    -0.00000011  0.52D-07  0.12D-07   211.36
    6     6     6     1.06248041    -0.26821130 -3177.47142236    -0.00000149    -0.00000011  0.52D-07  0.12D-07   211.36
    6     7     7     1.06740285    -0.27007282 -3177.42434900    -0.00000096    -0.00000007  0.37D-07  0.10D-07   211.36
    7     1     1     1.05597839    -0.26689435 -3177.56976131    -0.00000001    -0.00000001  0.19D-08  0.11D-08   247.11
    7     2     2     1.06248919    -0.26821143 -3177.47142249    -0.00000012    -0.00000001  0.65D-08  0.92D-09   247.11
    7     3     3     1.06248920    -0.26821143 -3177.47142249    -0.00000013    -0.00000001  0.63D-08  0.90D-09   247.11
    7     4     4     1.06248915    -0.26821143 -3177.47142249    -0.00000013    -0.00000001  0.65D-08  0.93D-09   247.11
    7     5     5     1.06248916    -0.26821143 -3177.47142249    -0.00000013    -0.00000001  0.65D-08  0.93D-09   247.11
    7     6     6     1.06248910    -0.26821143 -3177.47142249    -0.00000013    -0.00000001  0.66D-08  0.94D-09   247.11
    7     7     7     1.06739031    -0.27007291 -3177.42434908    -0.00000008    -0.00000001  0.30D-08  0.11D-08   247.11


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  12.9%
 S   6.4%  36.9%
 P   0.8%  23.7%   9.5%

 Initialization:   2.1%
 Other:            7.6%

 Total CPU:      247.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/00000\222000          -0.0456517  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.9448087
 2222222000000222000           0.9343833   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0538883
 222222/\00000222000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8811607  -0.0000000
 222222/000\00222000           0.0000000   0.0000000   0.0000000   0.0000000   0.8811606   0.0000000  -0.0000000
 222222/0000\0222000          -0.0000000  -0.0000000   0.0000000   0.8811606   0.0000000   0.0000000   0.0000000
 222222/00\000222000          -0.0000000  -0.0081648   0.8811229   0.0000000  -0.0000000  -0.0000000  -0.0000000
 222222/0\0000222000           0.0000000   0.8811229   0.0081648  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 22222200000002220/\           0.0000000   0.0000000  -0.0000000  -0.3839887   0.0000000   0.0000000  -0.0000000
 2222220000000222/0\          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.3839886   0.0000000  -0.0000000
 2222220000000222/\0          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.3839886   0.0000000
 2222220000000222002          -0.1406659   0.0029051  -0.3135117   0.0000000   0.0000000  -0.0000000   0.0106121
 2222220000000222020          -0.1406659  -0.2729617   0.1542400  -0.0000000   0.0000000   0.0000000   0.0106122
 2222220000000222200          -0.1406659   0.2700566   0.1592717  -0.0000000   0.0000000   0.0000000   0.0106122
 2222220000002222000          -0.0187705  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1773521
 2222220/0\000222000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0823667  -0.0000000
 22222200/\000222000          -0.0000000   0.0823633   0.0007632  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 22222200/00\0222000           0.0000000  -0.0000000  -0.0000000  -0.0713317  -0.0000000  -0.0000000   0.0000000
 22222200/0\00222000          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0713317   0.0000000  -0.0000000
 2222220000/\0222000          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0713317   0.0000000
 2222220/00\00222000           0.0000000  -0.0000000   0.0000000  -0.0713316  -0.0000000  -0.0000000   0.0000000
 2222220/000\0222000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0713316  -0.0000000   0.0000000
 2222220002000222000          -0.0332141   0.0005397  -0.0582398  -0.0000000   0.0000000   0.0000000   0.0275183
 2222220020000222000          -0.0332141  -0.0005397   0.0582395   0.0000000   0.0000000   0.0000000   0.0275183
 2222220200000222000          -0.0332140  -0.0005397   0.0582395   0.0000000   0.0000000  -0.0000000   0.0275183
 2222220000200222000          -0.0332140   0.0507067  -0.0286524  -0.0000000  -0.0000000  -0.0000000   0.0275183
 2222220000020222000          -0.0332140  -0.0501670  -0.0295871  -0.0000000  -0.0000000  -0.0000000   0.0275183

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968420    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.043640
 2          -0.000000    0.966933   -0.000000   -0.000000   -0.000000   -0.021173    0.000000
 3          -0.000000    0.021173   -0.000000    0.000000    0.000000    0.966933   -0.000000
 4           0.000000    0.000000    0.000000    0.000000    0.967165   -0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.967165   -0.000000   -0.000000    0.000000
 6          -0.000000    0.000000    0.967165   -0.000000   -0.000000    0.000000    0.000000
 7           0.045611   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.963293

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969402    0.000000    0.000000    0.000000    0.000000   -0.000000    0.001103
 2           0.000000    0.967165    0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.967165   -0.000000    0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.967165   -0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.967165   -0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.967165   -0.000000
 7           0.001103    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.964372

 Energy contributions of internal configurations for state 1
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   397       0.00004564    -1.55661501       2222222000000222000             

 Energy contributions of internal configurations for state 2
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   281       0.00044849     1.55371514       2222220000000222020             
   282       0.00043899     1.52081850       2222220000000222200             
  3282       0.00022789    -3.26087505       2222221010000222000             

 Energy contributions of internal configurations for state 3
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   280       0.00059164     2.04963336       2222220000000222002             
  3254       0.00022789    -3.26087942       2222221001000222000             

 Energy contributions of internal configurations for state 4
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2657       0.00088752     3.07468587       2222220000000222011             
  3216       0.00022790    -3.26113155       2222221000010222000             

 Energy contributions of internal configurations for state 5
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2658       0.00088752     3.07468785       2222220000000222101             
  3232       0.00022790    -3.26113431       2222221000100222000             

 Energy contributions of internal configurations for state 6
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2659       0.00088752     3.07469116       2222220000000222110             
  3316       0.00022790    -3.26113988       2222221100000222000             


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96841998 (fixed)   0.96973453 (relaxed)   0.96940211 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00771343   -0.01442342   -0.20018134
 Singles      0.02282036   -0.06852499   -0.07011847
 Pairs        0.03358981    0.01258965    0.00340545
 Total        1.06412360   -0.07035875   -0.26689435
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.30255044
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.12716063
 One electron energy                -4396.18738673
 Two electron energy                 1218.61762542
 Virial quotient                       -0.91993422
 Correlation energy                    -0.26721087
 !MRCI STATE 1.1 Energy             -3177.569761312751

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.58689584 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58670093 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.58689584 (Davidson, rotated reference)

 Cluster corrected energies         -3177.58600957 (Pople, fixed reference)
 Cluster corrected energies         -3177.58581502 (Pople, relaxed reference)
 Cluster corrected energies         -3177.58600957 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96693312 (fixed)   0.96786075 (relaxed)   0.96716490 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00617710   -0.01044246   -0.18819204
 Singles      0.02694878   -0.06868107   -0.07100677
 Pairs        0.03592641    0.00000000   -0.00901263
 Total        1.06905229   -0.07912353   -0.26821143
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20321106
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.04515195
 One electron energy                -4396.83500156
 Two electron energy                 1219.36357907
 Virial quotient                       -0.91992759
 Correlation energy                    -0.26821143
 !MRCI STATE 2.1 Energy             -3177.471422488952

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.48994310 (Davidson, fixed reference)
 Cluster corrected energies         -3177.48953095 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.48994310 (Davidson, rotated reference)

 Cluster corrected energies         -3177.48905721 (Pople, fixed reference)
 Cluster corrected energies         -3177.48864275 (Pople, relaxed reference)
 Cluster corrected energies         -3177.48905721 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96693311 (fixed)   0.96786075 (relaxed)   0.96716489 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00617710   -0.01044246   -0.18819208
 Singles      0.02694879   -0.06868103   -0.07100677
 Pairs        0.03592642    0.00000001   -0.00901258
 Total        1.06905230   -0.07912349   -0.26821143
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20321106
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.04516555
 One electron energy                -4396.83502166
 Two electron energy                 1219.36359917
 Virial quotient                       -0.91992758
 Correlation energy                    -0.26821143
 !MRCI STATE 3.1 Energy             -3177.471422488494

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.48994310 (Davidson, fixed reference)
 Cluster corrected energies         -3177.48953095 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.48994310 (Davidson, rotated reference)

 Cluster corrected energies         -3177.48905721 (Pople, fixed reference)
 Cluster corrected energies         -3177.48864275 (Pople, relaxed reference)
 Cluster corrected energies         -3177.48905721 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96716492 (fixed)   0.96786077 (relaxed)   0.96716492 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00617708   -0.01044246   -0.18819214
 Singles      0.02694868   -0.06868097   -0.07100672
 Pairs        0.03592647    0.00000000   -0.00901257
 Total        1.06905224   -0.07912343   -0.26821143
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20321106
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.04514360
 One electron energy                -4396.83499190
 Two electron energy                 1219.36356941
 Virial quotient                       -0.91992759
 Correlation energy                    -0.26821143
 !MRCI STATE 4.1 Energy             -3177.471422488401

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.48994309 (Davidson, fixed reference)
 Cluster corrected energies         -3177.48953094 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.48994309 (Davidson, rotated reference)

 Cluster corrected energies         -3177.48905719 (Pople, fixed reference)
 Cluster corrected energies         -3177.48864274 (Pople, relaxed reference)
 Cluster corrected energies         -3177.48905719 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96716492 (fixed)   0.96786077 (relaxed)   0.96716492 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00617709   -0.01044246   -0.18819211
 Singles      0.02694870   -0.06868100   -0.07100673
 Pairs        0.03592646   -0.00000000   -0.00901259
 Total        1.06905224   -0.07912346   -0.26821143
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20321106
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.04514399
 One electron energy                -4396.83499236
 Two electron energy                 1219.36356988
 Virial quotient                       -0.91992759
 Correlation energy                    -0.26821143
 !MRCI STATE 5.1 Energy             -3177.471422488392

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.48994309 (Davidson, fixed reference)
 Cluster corrected energies         -3177.48953094 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.48994309 (Davidson, rotated reference)

 Cluster corrected energies         -3177.48905720 (Pople, fixed reference)
 Cluster corrected energies         -3177.48864274 (Pople, relaxed reference)
 Cluster corrected energies         -3177.48905720 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96716494 (fixed)   0.96786079 (relaxed)   0.96716494 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00617709   -0.01044246   -0.18819207
 Singles      0.02694868   -0.06868106   -0.07100674
 Pairs        0.03592643   -0.00000000   -0.00901262
 Total        1.06905220   -0.07912352   -0.26821143
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20321106
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.04514537
 One electron energy                -4396.83499064
 Two electron energy                 1219.36356816
 Virial quotient                       -0.91992759
 Correlation energy                    -0.26821143
 !MRCI STATE 6.1 Energy             -3177.471422488346

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.48994308 (Davidson, fixed reference)
 Cluster corrected energies         -3177.48953093 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.48994308 (Davidson, rotated reference)

 Cluster corrected energies         -3177.48905718 (Pople, fixed reference)
 Cluster corrected energies         -3177.48864273 (Pople, relaxed reference)
 Cluster corrected energies         -3177.48905718 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96329297 (fixed)   0.96495870 (relaxed)   0.96437156 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00736754   -0.01326787   -0.01449941
 Singles      0.03419050   -0.07347722   -0.07691997
 Pairs        0.03369631   -0.18299491   -0.17865353
 Total        1.07525435   -0.26974000   -0.27007291
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.15459270
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.99792890
 One electron energy                -4392.09790589
 Two electron energy                 1214.67355680
 Virial quotient                       -0.91992654
 Correlation energy                    -0.26975638
 !MRCI STATE 7.1 Energy             -3177.424349084043

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.44464943 (Davidson, fixed reference)
 Cluster corrected energies         -3177.44429656 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.44464943 (Davidson, rotated reference)

 Cluster corrected energies         -3177.44377858 (Pople, fixed reference)
 Cluster corrected energies         -3177.44342002 (Pople, relaxed reference)
 Cluster corrected energies         -3177.44377858 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.52       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      106.17       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       300.20    294.60      2.32      0.03      2.87
 REAL TIME  *       314.66 SEC
 DISK USED  *       155.75 MB (local),        4.69 GB (total)
 SF USED    *         1.12 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -3177.58689584  AU                              
 SETTING HLSDIAG(2)     =     -3177.48994310  AU                              
 SETTING HLSDIAG(3)     =     -3177.48994310  AU                              
 SETTING HLSDIAG(4)     =     -3177.48994309  AU                              
 SETTING HLSDIAG(5)     =     -3177.48994309  AU                              
 SETTING HLSDIAG(6)     =     -3177.48994308  AU                              
 SETTING HLSDIAG(7)     =     -3177.44464943  AU                              


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
 Number of external orbitals:      65 (  29  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -3177.20680125
     2     -3177.20680125
     3     -3177.20680125
     4     -3177.20680125
     5     -3177.20680125
     6     -3177.16979997
     7     -3177.13741657
     8     -3177.13741657
     9     -3177.13741657

 Number of blocks in overlap matrix:   856   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     910
 Number of N-1 electron functions:   49051

 Number of internal configurations:                60333
 Number of singly external configurations:       1593566
 Number of doubly external configurations:        965086
 Total number of contracted configurations:      2618985
 Total number of uncontracted configurations:   10795554

 Diagonal Coupling coefficients finished.               Storage:28407271 words, CPU-Time:     11.62 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1122195 words, CPU-time:      0.12 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.20680125    -0.00000000    -0.28426232  0.38D-01  0.41D-01    17.63
    1     2     2     1.00000000     0.00000000 -3177.20680125    -0.00000000    -0.28427256  0.38D-01  0.41D-01    17.63
    1     3     3     1.00000000     0.00000000 -3177.20680125     0.00000000    -0.28428321  0.38D-01  0.41D-01    17.63
    1     4     4     1.00000000     0.00000000 -3177.20680125    -0.00000000    -0.28427899  0.38D-01  0.41D-01    17.63
    1     5     5     1.00000000     0.00000000 -3177.20680125    -0.00000000    -0.28417094  0.38D-01  0.41D-01    17.63
    1     6     6     1.00000000     0.00000000 -3177.16979997     0.00000000    -0.26705308  0.39D-01  0.35D-01    17.63
    1     7     7     1.00000000     0.00000000 -3177.13741657    -0.00000000    -0.27594222  0.42D-01  0.39D-01    17.63
    1     8     8     1.00000000     0.00000000 -3177.13741657    -0.00000000    -0.27595939  0.42D-01  0.39D-01    17.63
    1     9     9     1.00000000     0.00000000 -3177.13741657    -0.00000000    -0.27592375  0.42D-01  0.39D-01    17.63
    2     1     1     1.06340836    -0.26734519 -3177.47414644    -0.26734519    -0.00506307  0.16D-02  0.51D-03   100.13
    2     2     2     1.06342805    -0.26732441 -3177.47412566    -0.26732441    -0.00509061  0.16D-02  0.52D-03   100.13
    2     3     3     1.06343240    -0.26732045 -3177.47412170    -0.26732045    -0.00509397  0.16D-02  0.52D-03   100.13
    2     4     4     1.06343761    -0.26731940 -3177.47412066    -0.26731940    -0.00509429  0.16D-02  0.52D-03   100.13
    2     5     5     1.06344088    -0.26731614 -3177.47411739    -0.26731614    -0.00509746  0.16D-02  0.52D-03   100.13
    2     6     6     1.06344626    -0.26080941 -3177.43060938    -0.26080941    -0.00456651  0.15D-02  0.46D-03   100.13
    2     7     7     1.06702215    -0.26075035 -3177.39816692    -0.26075035    -0.00491756  0.16D-02  0.54D-03   100.13
    2     8     8     1.06700352    -0.26074851 -3177.39816507    -0.26074851    -0.00492253  0.16D-02  0.55D-03   100.13
    2     9     9     1.06702697    -0.26074024 -3177.39815681    -0.26074024    -0.00493042  0.16D-02  0.54D-03   100.13
    3     1     1     1.06253223    -0.27254173 -3177.47934299    -0.00519655    -0.00013595  0.43D-04  0.18D-04   183.02
    3     2     2     1.06253274    -0.27254069 -3177.47934194    -0.00521628    -0.00013741  0.43D-04  0.18D-04   183.02
    3     3     3     1.06253433    -0.27254065 -3177.47934190    -0.00522020    -0.00013714  0.43D-04  0.18D-04   183.02
    3     4     4     1.06253155    -0.27254054 -3177.47934179    -0.00522114    -0.00013746  0.43D-04  0.18D-04   183.02
    3     5     5     1.06253163    -0.27254042 -3177.47934167    -0.00522428    -0.00013758  0.43D-04  0.18D-04   183.02
    3     6     6     1.06241168    -0.26547182 -3177.43527178    -0.00466241    -0.00012413  0.35D-04  0.16D-04   183.02
    3     7     7     1.06296877    -0.26567532 -3177.40309188    -0.00492496    -0.00012557  0.27D-04  0.21D-04   183.02
    3     8     8     1.06297061    -0.26567420 -3177.40309076    -0.00492569    -0.00012579  0.27D-04  0.21D-04   183.02
    3     9     9     1.06296977    -0.26567385 -3177.40309042    -0.00493361    -0.00012630  0.27D-04  0.21D-04   183.02
    4     1     1     1.06341607    -0.27270626 -3177.47950752    -0.00016453    -0.00001165  0.99D-05  0.74D-06   262.93
    4     2     2     1.06341572    -0.27270619 -3177.47950744    -0.00016550    -0.00001166  0.99D-05  0.74D-06   262.93
    4     3     3     1.06341573    -0.27270618 -3177.47950744    -0.00016553    -0.00001166  0.99D-05  0.74D-06   262.93
    4     4     4     1.06341777    -0.27270591 -3177.47950716    -0.00016537    -0.00001151  0.99D-05  0.71D-06   262.93
    4     5     5     1.06341511    -0.27270581 -3177.47950706    -0.00016539    -0.00001161  0.99D-05  0.73D-06   262.93
    4     6     6     1.06281169    -0.26560684 -3177.43540680    -0.00013502    -0.00000633  0.34D-05  0.65D-06   262.93
    4     7     7     1.06269729    -0.26581130 -3177.40322787    -0.00013599    -0.00000665  0.41D-05  0.71D-06   262.93
    4     8     8     1.06269778    -0.26581058 -3177.40322715    -0.00013638    -0.00000671  0.42D-05  0.72D-06   262.93
    4     9     9     1.06269768    -0.26581058 -3177.40322714    -0.00013673    -0.00000670  0.42D-05  0.71D-06   262.93
    5     1     1     1.06378295    -0.27272207 -3177.47952332    -0.00001581    -0.00000099  0.38D-06  0.11D-06   339.83
    5     2     2     1.06378293    -0.27272201 -3177.47952326    -0.00001582    -0.00000099  0.38D-06  0.11D-06   339.83
    5     3     3     1.06378282    -0.27272201 -3177.47952326    -0.00001582    -0.00000099  0.38D-06  0.11D-06   339.83
    5     4     4     1.06378187    -0.27272158 -3177.47952283    -0.00001567    -0.00000098  0.38D-06  0.11D-06   339.83
    5     5     5     1.06378214    -0.27272149 -3177.47952275    -0.00001569    -0.00000097  0.37D-06  0.11D-06   339.83
    5     6     6     1.06283123    -0.26561399 -3177.43541396    -0.00000715    -0.00000029  0.14D-06  0.28D-07   339.83
    5     7     7     1.06247220    -0.26581934 -3177.40323591    -0.00000804    -0.00000040  0.17D-06  0.59D-07   339.83
    5     8     8     1.06247255    -0.26581869 -3177.40323525    -0.00000811    -0.00000040  0.18D-06  0.59D-07   339.83
    5     9     9     1.06247193    -0.26581869 -3177.40323525    -0.00000811    -0.00000040  0.17D-06  0.59D-07   339.83
    6     1     1     1.06382176    -0.27272329 -3177.47952455    -0.00000123    -0.00000007  0.34D-07  0.61D-08   416.87
    6     2     2     1.06382169    -0.27272323 -3177.47952448    -0.00000123    -0.00000007  0.34D-07  0.61D-08   416.87
    6     3     3     1.06382165    -0.27272323 -3177.47952448    -0.00000123    -0.00000007  0.34D-07  0.61D-08   416.87
    6     4     4     1.06382060    -0.27272280 -3177.47952405    -0.00000122    -0.00000007  0.34D-07  0.61D-08   416.87
    6     5     5     1.06382047    -0.27272271 -3177.47952396    -0.00000121    -0.00000007  0.34D-07  0.60D-08   416.87
    6     6     6     1.06282739    -0.26561431 -3177.43541428    -0.00000033    -0.00000002  0.11D-07  0.18D-08   416.87
    6     7     7     1.06240897    -0.26581981 -3177.40323638    -0.00000048    -0.00000002  0.57D-08  0.43D-08   416.87
    6     8     8     1.06240913    -0.26581917 -3177.40323573    -0.00000048    -0.00000002  0.58D-08  0.43D-08   416.87
    6     9     9     1.06240899    -0.26581917 -3177.40323573    -0.00000048    -0.00000002  0.57D-08  0.43D-08   416.87
    7     1     1     1.06383396    -0.27272337 -3177.47952462    -0.00000008    -0.00000000  0.35D-08  0.40D-09   493.77
    7     2     2     1.06383388    -0.27272331 -3177.47952456    -0.00000008    -0.00000000  0.35D-08  0.40D-09   493.77
    7     3     3     1.06383387    -0.27272331 -3177.47952456    -0.00000008    -0.00000000  0.35D-08  0.40D-09   493.77
    7     4     4     1.06383276    -0.27272288 -3177.47952413    -0.00000008    -0.00000000  0.35D-08  0.40D-09   493.77
    7     5     5     1.06383253    -0.27272278 -3177.47952404    -0.00000008    -0.00000000  0.34D-08  0.39D-09   493.77
    7     6     6     1.06282095    -0.26561434 -3177.43541431    -0.00000002    -0.00000000  0.15D-08  0.11D-09   493.77
    7     7     7     1.06240075    -0.26581984 -3177.40323641    -0.00000003    -0.00000000  0.74D-09  0.19D-09   493.77
    7     8     8     1.06240089    -0.26581920 -3177.40323576    -0.00000003    -0.00000000  0.75D-09  0.19D-09   493.77
    7     9     9     1.06240085    -0.26581920 -3177.40323576    -0.00000003    -0.00000000  0.74D-09  0.19D-09   493.77


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  11.4%
 S   6.2%  38.6%
 P   0.7%  23.7%  10.6%

 Initialization:   2.4%
 Other:            6.2%

 Total CPU:      493.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/00000/222000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000046   0.9671357  -0.0000000   0.0000000
                               0.0000000
 222222/00/000222000           0.0000000  -0.0000000  -0.0000000  -0.0001061   0.9665458   0.0000051   0.0000000  -0.0000000
                               0.0000000
 222222/0/0000222000          -0.0000000   0.0000000   0.0000000   0.9665457   0.0001061   0.0000000   0.0000000  -0.0000000
                              -0.0000000
 222222/000/00222000           0.0000000  -0.0000000   0.9665452  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000002
                              -0.0000000
 222222/0000/0222000           0.0000000   0.9665452   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                               0.0000002
 222222//00000222000           0.9665452  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                               0.0000000
 2222220000000222//0          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.7970268   0.0000000
                              -0.0000000
 22222200000002220//          -0.0000000  -0.0000001  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                               0.7970254
 2222220000000222/0/          -0.0000000  -0.0000000  -0.0000001   0.0000000   0.0000000  -0.0000000  -0.0000000   0.7970254
                              -0.0000000
 2222220//0000222000          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.4910878   0.0000000
                               0.0000000
 222222000//00222000           0.0000000   0.0000000  -0.0000057  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.4252956
                               0.0000000
 222222000/0/0222000           0.0000000  -0.0000057   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                               0.4252956
 2222220/00/00222000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                              -0.2455487
 2222220/000/0222000          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.2455484
                              -0.0000000
 2222220000//0222000           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.2455476   0.0000000
                              -0.0000000
 22222200/0/00222000           0.0000000   0.0000000   0.0000094  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.2455469
                               0.0000000
 22222200/00/0222000           0.0000000  -0.0000094  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                              -0.2455466

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222000000/222000  28.1     0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0511916   0.0000000   0.0000000
                               0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.000000    0.966385   -0.000000    0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.966385   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.966385    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 4           0.966386    0.000000   -0.000000    0.000000   -0.000106   -0.000000   -0.000000   -0.000000    0.000000
 5           0.000106   -0.000000    0.000000    0.000000    0.966386   -0.000005   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000005    0.967136    0.000000   -0.000000    0.000000
 7           0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.967820   -0.000000   -0.000000
 8           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.967820   -0.000000
 9          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.967820

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966385   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.966385    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.966385   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.966386    0.000000   -0.000000    0.000000    0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.966386    0.000000   -0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.967136    0.000000    0.000000    0.000000
 7          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.967820    0.000000    0.000000
 8           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.967820    0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.967820


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96638523 (fixed)   0.96656476 (relaxed)   0.96638523 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00652736   -0.01238750   -0.19038380
 Singles      0.02831879   -0.07064475   -0.07318859
 Pairs        0.03593184    0.00000000   -0.00915098
 Total        1.07077799   -0.08303225   -0.27272337
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20680125
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.05656097
 One electron energy                -4397.47053783
 Two electron energy                 1219.99101321
 Virial quotient                       -0.91992689
 Correlation energy                    -0.27272337
 !MRCI STATE 1.1 Energy             -3177.479524624820

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.49882744 (Davidson, fixed reference)
 Cluster corrected energies         -3177.49871896 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.49882744 (Davidson, rotated reference)

 Cluster corrected energies         -3177.49767220 (Pople, fixed reference)
 Cluster corrected energies         -3177.49756443 (Pople, relaxed reference)
 Cluster corrected energies         -3177.49767220 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96638527 (fixed)   0.96656481 (relaxed)   0.96638527 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00652734   -0.01238747   -0.19038385
 Singles      0.02831868   -0.07064471   -0.07318853
 Pairs        0.03593187    0.00000005   -0.00915093
 Total        1.07077788   -0.08303213   -0.27272331
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20680125
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.05656201
 One electron energy                -4397.47053949
 Two electron energy                 1219.99101493
 Virial quotient                       -0.91992689
 Correlation energy                    -0.27272331
 !MRCI STATE 2.1 Energy             -3177.479524564130

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.49882734 (Davidson, fixed reference)
 Cluster corrected energies         -3177.49871887 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.49882734 (Davidson, rotated reference)

 Cluster corrected energies         -3177.49767211 (Pople, fixed reference)
 Cluster corrected energies         -3177.49756434 (Pople, relaxed reference)
 Cluster corrected energies         -3177.49767211 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96638528 (fixed)   0.96656481 (relaxed)   0.96638528 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00652734   -0.01238747   -0.19038380
 Singles      0.02831867   -0.07064471   -0.07318853
 Pairs        0.03593187   -0.00000000   -0.00915098
 Total        1.07077788   -0.08303218   -0.27272331
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20680125
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.05656156
 One electron energy                -4397.47053891
 Two electron energy                 1219.99101435
 Virial quotient                       -0.91992689
 Correlation energy                    -0.27272331
 !MRCI STATE 3.1 Energy             -3177.479524564109

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.49882734 (Davidson, fixed reference)
 Cluster corrected energies         -3177.49871887 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.49882734 (Davidson, rotated reference)

 Cluster corrected energies         -3177.49767210 (Pople, fixed reference)
 Cluster corrected energies         -3177.49756433 (Pople, relaxed reference)
 Cluster corrected energies         -3177.49767210 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96638572 (fixed)   0.96656527 (relaxed)   0.96638572 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00652746   -0.01238762   -0.19038439
 Singles      0.02831744   -0.07064386   -0.07318747
 Pairs        0.03593199    0.00000000   -0.00915102
 Total        1.07077689   -0.08303148   -0.27272288
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20680125
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.05655871
 One electron energy                -4397.47052227
 Two electron energy                 1219.99099814
 Virial quotient                       -0.91992689
 Correlation energy                    -0.27272288
 !MRCI STATE 4.1 Energy             -3177.479524131889

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.49882661 (Davidson, fixed reference)
 Cluster corrected energies         -3177.49871813 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.49882661 (Davidson, rotated reference)

 Cluster corrected energies         -3177.49767138 (Pople, fixed reference)
 Cluster corrected energies         -3177.49756360 (Pople, relaxed reference)
 Cluster corrected energies         -3177.49767138 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96638579 (fixed)   0.96656535 (relaxed)   0.96638580 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00652752   -0.01238766   -0.19038449
 Singles      0.02831720   -0.07064370   -0.07318727
 Pairs        0.03593200    0.00000000   -0.00915102
 Total        1.07077672   -0.08303136   -0.27272278
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.20680125
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.05655785
 One electron energy                -4397.47052289
 Two electron energy                 1219.99099885
 Virial quotient                       -0.91992689
 Correlation energy                    -0.27272278
 !MRCI STATE 5.1 Energy             -3177.479524035420

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.49882646 (Davidson, fixed reference)
 Cluster corrected energies         -3177.49871798 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.49882646 (Davidson, rotated reference)

 Cluster corrected energies         -3177.49767123 (Pople, fixed reference)
 Cluster corrected energies         -3177.49756345 (Pople, relaxed reference)
 Cluster corrected energies         -3177.49767123 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96713572 (fixed)   0.96713572 (relaxed)   0.96713572 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00592372   -0.01298533   -0.18390076
 Singles      0.03007435   -0.07057637   -0.07348528
 Pairs        0.03311873   -0.00000000   -0.00822830
 Total        1.06911680   -0.08356170   -0.26561434
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.16979997
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.95011839
 One electron energy                -4391.75642458
 Two electron energy                 1214.32101027
 Virial quotient                       -0.91994247
 Correlation energy                    -0.26561434
 !MRCI STATE 6.1 Energy             -3177.435414305554

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.45377272 (Davidson, fixed reference)
 Cluster corrected energies         -3177.45377272 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.45377272 (Davidson, rotated reference)

 Cluster corrected energies         -3177.45265090 (Pople, fixed reference)
 Cluster corrected energies         -3177.45265090 (Pople, relaxed reference)
 Cluster corrected energies         -3177.45265090 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96781986 (fixed)   0.96783909 (relaxed)   0.96781986 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00489936   -0.01057063   -0.18664274
 Singles      0.02735989   -0.06786131   -0.07037567
 Pairs        0.03534659   -0.00000000   -0.00880143
 Total        1.06760583   -0.07843194   -0.26581984
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.13741657
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.02654018
 One electron energy                -4395.34300119
 Two electron energy                 1217.93976478
 Virial quotient                       -0.91991280
 Correlation energy                    -0.26581984
 !MRCI STATE 7.1 Energy             -3177.403236408361

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.42120738 (Davidson, fixed reference)
 Cluster corrected energies         -3177.42119610 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.42120738 (Davidson, rotated reference)

 Cluster corrected energies         -3177.42008871 (Pople, fixed reference)
 Cluster corrected energies         -3177.42007756 (Pople, relaxed reference)
 Cluster corrected energies         -3177.42008871 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.96782015 (fixed)   0.96783939 (relaxed)   0.96782015 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00489863   -0.01057003   -0.18664206
 Singles      0.02735999   -0.06786131   -0.07037571
 Pairs        0.03534658   -0.00000000   -0.00880142
 Total        1.06760521   -0.07843135   -0.26581920
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.13741657
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.02650352
 One electron energy                -4395.34295278
 Two electron energy                 1217.93971702
 Virial quotient                       -0.91991281
 Correlation energy                    -0.26581920
 !MRCI STATE 8.1 Energy             -3177.403235760978

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.42120652 (Davidson, fixed reference)
 Cluster corrected energies         -3177.42119524 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.42120652 (Davidson, rotated reference)

 Cluster corrected energies         -3177.42008786 (Pople, fixed reference)
 Cluster corrected energies         -3177.42007670 (Pople, relaxed reference)
 Cluster corrected energies         -3177.42008786 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.96782017 (fixed)   0.96783941 (relaxed)   0.96782017 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00489863   -0.01057003   -0.01112039
 Singles      0.02735996   -0.06786130   -0.07037571
 Pairs        0.03534657   -0.18738786   -0.18432310
 Total        1.06760516   -0.26581920   -0.26581920
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.13741657
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.02650609
 One electron energy                -4395.34295631
 Two electron energy                 1217.93972055
 Virial quotient                       -0.91991281
 Correlation energy                    -0.26581920
 !MRCI STATE 9.1 Energy             -3177.403235760884

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.42120651 (Davidson, fixed reference)
 Cluster corrected energies         -3177.42119522 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.42120651 (Davidson, rotated reference)

 Cluster corrected energies         -3177.42008785 (Pople, fixed reference)
 Cluster corrected energies         -3177.42007669 (Pople, relaxed reference)
 Cluster corrected energies         -3177.42008785 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       49.52       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      296.16       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       963.41    663.20    294.60      2.32      0.03      2.87
 REAL TIME  *       999.65 SEC
 DISK USED  *       345.74 MB (local),       10.25 GB (total)
 SF USED    *         1.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =     -3177.49882744  AU                              
 SETTING HLSDIAG(9)     =     -3177.49882734  AU                              
 SETTING HLSDIAG(10)    =     -3177.49882734  AU                              
 SETTING HLSDIAG(11)    =     -3177.49882661  AU                              
 SETTING HLSDIAG(12)    =     -3177.49882646  AU                              
 SETTING HLSDIAG(13)    =     -3177.45377272  AU                              
 SETTING HLSDIAG(14)    =     -3177.42120738  AU                              
 SETTING HLSDIAG(15)    =     -3177.42120652  AU                              
 SETTING HLSDIAG(16)    =     -3177.42120651  AU                              


         HLSDIAG
    -3177.586896
    -3177.489943
    -3177.489943
    -3177.489943
    -3177.489943
    -3177.489943
    -3177.444649
    -3177.498827
    -3177.498827
    -3177.498827
    -3177.498827
    -3177.498826
    -3177.453773
    -3177.421207
    -3177.421207
    -3177.421207
                                                  

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

 Time for Seward_LS:      30.87 sec

        5931683. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1453 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     30.88 sec, REAL time:     31.02 sec


 SORTLS1 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.10 sec, REAL time:      0.13 sec
 SORTLS2 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:   147.2 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   147.2 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      140.38       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      296.16       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       995.56     32.11    663.20    294.60      2.32      0.03      2.87
 REAL TIME  *      1032.11 SEC
 DISK USED  *       345.79 MB (local),       10.58 GB (total)
 SF USED    *         1.99 GB
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

 Original energies:  -3177.569761  -3177.471422  -3177.471422  -3177.471422  -3177.471422  -3177.471422  -3177.424349
 Replaced energies:  -3177.586896  -3177.489943  -3177.489943  -3177.489943  -3177.489943  -3177.489943  -3177.444649

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:  -3177.479525  -3177.479525  -3177.479525  -3177.479524  -3177.479524  -3177.435414  -3177.403236  -3177.403236
                     -3177.403236
 Replaced energies:  -3177.498827  -3177.498827  -3177.498827  -3177.498827  -3177.498826  -3177.453773  -3177.421207  -3177.421207
                     -3177.421207



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -3177.58689584

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00   21278.67       0.00       0.00       0.00       0.00       0.00      -0.00     -18.61      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      18.02

    3   3.1  0.0  0.0       0.00       0.00   21278.66       0.00       0.00       0.00       0.00       0.00      31.55      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      31.89

    4   4.1  0.0  0.0       0.00       0.00       0.00   21278.67       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      18.33      -0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   21278.67       0.00       0.00      18.33       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   21278.67       0.00       0.00       0.00     -18.33
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00     -18.33      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   31219.48       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   1.1  1.0  1.0      -0.00      -0.00       0.00       0.00      18.33       0.00       0.00   19328.78       0.00       0.00
                            0.00       0.00       0.00     -18.33       0.00       0.00      -0.00      -0.00      -0.00       0.00

    9   2.1  1.0  1.0      -0.00     -18.61      31.55      -0.00       0.00       0.00       0.00       0.00   19328.80       0.00
                            0.00       0.00       0.00       0.00       0.00      18.33      -0.00       0.00       0.00     -24.39

   10   3.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       0.00     -18.33       0.00       0.00       0.00   19328.80
                            0.00     -18.02     -31.89      -0.00       0.00       0.00      -0.00      -0.00      24.39      -0.00

   11   4.1  1.0  1.0      -0.00       0.00       0.00      18.33      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      18.32      -0.00       0.00     -48.76       0.00      -0.00

   12   5.1  1.0  1.0       0.00      -0.00      -0.00     -31.74       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      31.74       0.00      -0.00      -0.01      -0.00       0.00

   13   6.1  1.0  1.0      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   14   7.1  1.0  1.0      -0.00       0.00      -0.00       0.00     -63.78       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -63.78       0.00       0.00      -0.00      -0.00      -0.00       0.00

   15   8.1  1.0  1.0       0.00      -0.00      -0.00       0.00      -0.00      63.78      -0.00       0.00       0.00       0.00
                          -71.13      64.11     -36.22       0.00       0.00       0.00      17.29      -0.00       5.27      -0.00

   16   9.1  1.0  1.0      71.13      63.43      37.41      -0.00      -0.00      -0.00     -17.29       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00     -63.78       0.00      -0.00      -0.00      -5.27

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -17.24
                           -0.00     -51.80      -0.48       0.00       0.00       0.00       0.00       0.00     -17.24      -0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      25.92      -0.00      -0.00      17.24      -0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      17.24      -0.00       0.00
                            0.00      -0.00      -0.00     -25.92      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -17.24      -0.00
                            0.00       0.00       0.00      -0.00       0.00      51.83      -0.00      -0.00       0.00      17.24

   21   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      29.86       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.01      -0.00      -0.00      -0.00      29.86

   22   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.73
                         -100.60      -0.97     104.15      -0.00      -0.00       0.00      24.45      -0.00      -3.73      -0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.73      -0.00       0.00
                           -0.00       0.00       0.00     -90.20       0.00       0.00      -0.00      -0.00       0.00      -0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00      90.20      -0.00       0.00      -3.73       0.00       0.00

   26   1.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      18.33       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      18.33      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   27   2.1  1.0 -1.0      -0.00     -18.61      31.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     -18.33       0.00      -0.00      -0.00      -0.00

   28   3.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00     -18.33       0.00       0.00       0.00       0.00
                           -0.00      18.02      31.89       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   29   4.1  1.0 -1.0      -0.00       0.00       0.00      18.33      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     -18.32       0.00      -0.00      -0.00      -0.00      -0.00

   30   5.1  1.0 -1.0       0.00      -0.00      -0.00     -31.74       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -31.74      -0.00       0.00      -0.00      -0.00      -0.00

   31   6.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   7.1  1.0 -1.0      -0.00       0.00      -0.00       0.00     -63.78       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      63.78      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   33   8.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      -0.00      63.78      -0.00       0.00       0.00       0.00
                           71.13     -64.11      36.22      -0.00      -0.00      -0.00     -17.29      -0.00      -0.00      -0.00

   34   9.1  1.0 -1.0      71.13      63.43      37.41      -0.00      -0.00      -0.00     -17.29       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      63.78      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00       0.00      -0.00      -0.00       0.00      71.13       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      71.13       0.00       0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00      -0.00      -0.00       0.00      -0.00      63.43       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00     -64.11      -0.00      51.80      -0.00       0.00      -0.00

    3   3.1  0.0  0.0       0.00      -0.00      -0.00      -0.00      -0.00      37.41       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      36.22      -0.00       0.48       0.00       0.00      -0.00

    4   4.1  0.0  0.0      18.33     -31.74       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      63.78      -0.00       0.00      -0.00      -0.00      25.92       0.00

    5   5.1  0.0  0.0      -0.00       0.00      -0.00     -63.78      -0.00      -0.00       0.00       0.00       0.00       0.00
                          -18.32     -31.74       0.00      -0.00      -0.00       0.00      -0.00     -25.92       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00      -0.00       0.00      63.78      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      63.78      -0.00       0.00      -0.00     -51.83

    7   7.1  0.0  0.0      -0.00      -0.00       0.00       0.00      -0.00     -17.29       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     -17.29      -0.00      -0.00       0.00       0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      17.24      -0.00
                           48.76       0.01      -0.00       0.00       0.00       0.00      -0.00     -17.24      -0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -17.24
                           -0.00       0.00      -0.00       0.00      -5.27       0.00      17.24       0.00       0.00      -0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -17.24       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.00       5.27       0.00      -0.00       0.00     -17.24

   11   4.1  1.0  1.0   19328.96       0.00       0.00       0.00       0.00       0.00       0.00      17.24       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      17.24      -0.00

   12   5.1  1.0  1.0       0.00   19328.99       0.00       0.00       0.00       0.00      -0.00     -29.86      -0.00      -0.00
                           -0.00      -0.00       0.00       6.07       0.00       0.00      -0.00      -0.00      29.86      -0.00

   13   6.1  1.0  1.0       0.00       0.00   29217.15       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      15.60       0.00      -0.00       0.00      -0.00       0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   36364.41       0.00       0.00       0.00       0.00      -3.73       0.00
                            0.00      -6.07     -15.60       0.00       0.00       0.00      -0.00      -3.73      -0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   36364.60       0.00       3.73       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     177.04      -0.00       0.00      -0.00       3.72

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   36364.60       0.00       0.00      -0.00       3.72
                           -0.00      -0.00       0.00      -0.00    -177.04      -0.00      -3.73       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00      -0.00      -0.00       0.00       3.73       0.00   19328.78       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       3.73       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0      17.24     -29.86      -0.00       0.00       0.00       0.00       0.00   19328.80       0.00       0.00
                           -0.00       0.00       0.00       3.73      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00      -0.00      -0.00      -3.73      -0.00      -0.00       0.00       0.00   19328.80       0.00
                          -17.24     -29.86      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.00       3.72       0.00       0.00       0.00   19328.96
                            0.00       0.00       0.00      -0.00      -3.72      -0.00      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0       0.00      -0.00       0.00      -0.00       0.00       2.16       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       2.16      -0.00      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.00     -11.03       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00     -11.03       0.00      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0      -0.00       0.00       0.00      -0.00    -125.19      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00     125.19      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0       0.00      -0.00       0.00     125.19       0.00       0.00       0.00       0.00       0.00       0.00
                            3.72      -2.16      11.03       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0      -3.72      -2.16      11.03       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -125.19      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -17.24       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -17.24      -0.00       0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      17.24
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      17.24      -0.00       0.00      -0.00

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      17.24      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     -17.24

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -17.24      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      17.24       0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      29.86       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      29.86      -0.00

   31   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   32   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.73      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.73      -0.00       0.00

   33   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -3.73      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       3.72

   34   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -3.72
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.73       0.00       0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00     100.60       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     -18.61      -0.00       0.00      -0.00
                            0.00       0.00       0.97      -0.00      -0.00       0.00       0.00     -18.02       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      31.55      -0.00       0.00      -0.00
                            0.00      -0.00    -104.15      -0.00       0.00       0.00       0.00     -31.89       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      18.33     -31.74
                           -0.00       0.00       0.00      90.20      -0.00     -18.33       0.00      -0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      18.33       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00     -90.20       0.00       0.00       0.00      18.32      31.74

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -18.33       0.00       0.00
                           -0.01       0.00      -0.00      -0.00       0.00       0.00      18.33       0.00      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00     -24.45       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00      -0.00      -3.73      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       3.73       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0      29.86       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       3.73      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       3.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -29.86      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00      -0.00       0.00      -3.72       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -3.72      -0.00       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      -2.16       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       2.16      -0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00      11.03       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -11.03       0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0      -0.00      -0.00      -0.00     125.19       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     125.19       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00      -0.00    -125.19       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -2.16      11.03       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       2.16     -11.03      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -125.19      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      17.24      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00     -17.24      -0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -17.24      29.86
                            0.00       0.00       0.00       0.00       0.00      17.24       0.00       0.00      -0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00     -17.24       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -17.24     -29.86

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      17.24       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      17.24      -0.00       0.00

   21   5.1  1.0  0.0   19328.99       0.00       0.00       0.00       0.00      -0.00     -29.86      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      29.86      -0.00       0.00

   22   6.1  1.0  0.0       0.00   29217.15       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   23   7.1  1.0  0.0       0.00       0.00   36364.41       0.00       0.00       0.00       0.00      -3.73       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -3.73      -0.00       0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   36364.60       0.00       3.73       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       3.72      -2.16

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   36364.60       0.00       0.00      -0.00       3.72       2.16
                           -0.00      -0.00      -0.00      -0.00       0.00      -3.73       0.00       0.00       0.00       0.00

   26   1.1  1.0 -1.0      -0.00      -0.00       0.00       3.73       0.00   19328.78       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       3.73       0.00       0.00      -0.00     -48.76      -0.01

   27   2.1  1.0 -1.0     -29.86      -0.00       0.00       0.00       0.00       0.00   19328.80       0.00       0.00       0.00
                            0.00       0.00       3.73      -0.00      -0.00      -0.00      -0.00      24.39       0.00      -0.00

   28   3.1  1.0 -1.0      -0.00      -0.00      -3.73      -0.00      -0.00       0.00       0.00   19328.80       0.00       0.00
                          -29.86      -0.00       0.00       0.00      -0.00       0.00     -24.39       0.00      -0.00       0.00

   29   4.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       3.72       0.00       0.00       0.00   19328.96       0.00
                            0.00       0.00      -0.00      -3.72      -0.00      48.76      -0.00       0.00      -0.00      -0.00

   30   5.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       2.16       0.00       0.00       0.00       0.00   19328.99
                           -0.00       0.00      -0.00       2.16      -0.00       0.01       0.00      -0.00       0.00       0.00

   31   6.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00     -11.03       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -11.03       0.00      -0.00      -0.00       0.00       0.00       0.00

   32   7.1  1.0 -1.0       0.00       0.00      -0.00    -125.19      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     125.19       0.00       0.00      -0.00      -0.00       6.07

   33   8.1  1.0 -1.0      -0.00       0.00     125.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.16      11.03       0.00       0.00       0.00       0.00      -5.27       0.00       0.00       0.00

   34   9.1  1.0 -1.0      -2.16      11.03       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -125.19      -0.00       0.00       0.00       0.00       5.27       0.00       0.00


   Nr   State  S   Sz       31         32         33         34

    1   1.1  0.0  0.0      -0.00      -0.00       0.00      71.13
                            0.00       0.00     -71.13      -0.00

    2   2.1  0.0  0.0      -0.00       0.00      -0.00      63.43
                           -0.00      -0.00      64.11       0.00

    3   3.1  0.0  0.0      -0.00      -0.00      -0.00      37.41
                           -0.00       0.00     -36.22       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00      -0.00
                           -0.00     -63.78       0.00      -0.00

    5   5.1  0.0  0.0      -0.00     -63.78      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00

    6   6.1  0.0  0.0      -0.00       0.00      63.78      -0.00
                            0.00       0.00       0.00     -63.78

    7   7.1  0.0  0.0       0.00       0.00      -0.00     -17.29
                            0.00      -0.00      17.29       0.00

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

   17   1.1  1.0  0.0       0.00      -0.00      -3.73      -0.00
                           -0.00       0.00       0.00       3.73

   18   2.1  1.0  0.0       0.00      -0.00      -0.00      -0.00
                            0.00       3.73      -0.00      -0.00

   19   3.1  1.0  0.0       0.00       3.73       0.00       0.00
                           -0.00       0.00       0.00      -0.00

   20   4.1  1.0  0.0       0.00      -0.00       0.00      -3.72
                            0.00      -0.00      -3.72      -0.00

   21   5.1  1.0  0.0      -0.00       0.00      -0.00      -2.16
                            0.00      -0.00       2.16      -0.00

   22   6.1  1.0  0.0       0.00       0.00       0.00      11.03
                           -0.00       0.00     -11.03       0.00

   23   7.1  1.0  0.0      -0.00      -0.00     125.19       0.00
                           -0.00      -0.00      -0.00     125.19

   24   8.1  1.0  0.0      -0.00    -125.19       0.00      -0.00
                           11.03       0.00      -0.00       0.00

   25   9.1  1.0  0.0     -11.03      -0.00       0.00      -0.00
                           -0.00    -125.19      -0.00      -0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00      -0.00       5.27      -0.00

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -5.27

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00      -6.07      -0.00      -0.00

   31   6.1  1.0 -1.0   29217.15       0.00       0.00       0.00
                            0.00     -15.60      -0.00       0.00

   32   7.1  1.0 -1.0       0.00   36364.41       0.00       0.00
                           15.60      -0.00      -0.00      -0.00

   33   8.1  1.0 -1.0       0.00       0.00   36364.60       0.00
                            0.00       0.00       0.00    -177.04

   34   9.1  1.0 -1.0       0.00       0.00       0.00   36364.60
                           -0.00       0.00     177.04       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 34)

    The diagonal matrixelements are shifted by  -3177.58689584 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   21278.666       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   21278.665       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   21278.669       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   21278.668       0.000       0.000      25.919
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   21278.671       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   31219.479       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+             -0.000      -0.000       0.000       0.000      25.919       0.000       0.000   19328.779
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.001     -26.318      44.615      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000     -25.919       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000      25.921      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.000      -0.000     -44.880       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000      -0.000       0.000     -90.200       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      90.196      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            100.599      89.701      52.900      -0.000      -0.000      -0.000     -24.446       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000     -51.796      -0.480       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      25.919      -0.000      -0.000      24.386

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -25.919      -0.000       0.000      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      51.825      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.006      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -100.601      -0.965     104.146      -0.000      -0.000       0.000      24.445      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000     -90.200       0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      90.200      -0.000       0.000      -5.274

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -25.919       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      25.919      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001     -25.487     -45.095      -0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      25.912      -0.000       0.000     -48.760

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      44.886       0.000      -0.000      -0.005

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -90.200       0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -100.599      90.666     -51.228       0.000       0.000       0.000      24.446      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000     -90.196       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.001      -0.000      -0.000       0.000      -0.000      -0.000       0.000     100.599
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>             -26.318      -0.000       0.000      -0.000      -0.000       0.000      -0.000      89.701
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              44.615      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      52.900
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000      -0.000      25.921     -44.880       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.000       0.000      -0.000     -90.200      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000     -25.919       0.000       0.000      -0.000       0.000      90.196      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000     -24.446
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          19328.800       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   19328.800       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   19328.961       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   19328.994       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   29217.147       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   36364.413       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   36364.601       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   36364.604
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                              -24.386      -0.000       0.000       0.000      -0.000       0.000       0.000       5.274

    2    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       5.273      -0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000     -24.375     -42.230      -0.000       0.000       0.000      -0.000

    4    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      24.375       0.000       0.000       0.000      -0.000      -5.267      -0.000

    5    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      42.230      -0.000       0.000       0.000      -0.000       3.051      -0.000

    6    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000     -15.599       0.000

    7    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -5.273      -0.000       0.000       0.000      -0.000       0.000      -0.000     177.038

    8    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       5.267      -3.051      15.599       0.000       0.000       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000    -177.038      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      48.760       0.005      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -24.386      -0.000       0.000      -0.000       0.000      -5.271       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               24.386      -0.000       0.000      -0.000       0.000      -0.000       0.000       5.271

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.001       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       6.068       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      15.603       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.001      -6.068     -15.603       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.271      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000     177.044

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -5.271      -0.000      -0.000       0.000      -0.000    -177.044      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000     100.601       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               51.796      -0.000       0.000      -0.000       0.000       0.000       0.965      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.480       0.000       0.000      -0.000       0.000      -0.000    -104.146      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      25.919       0.000      -0.000       0.000       0.000      90.200

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -25.919       0.000      -0.000       0.000       0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -51.825      -0.006       0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000     -24.445       0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000     -24.386      -0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               24.386       0.000       0.000      -0.000       0.000       0.000       5.273      -0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000     -24.375     -42.230      -0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000      24.375       0.000       0.000       0.000      -0.000      -5.267

    5    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000      42.230      -0.000       0.000       0.000      -0.000       3.051

    6    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000     -15.599

    7    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -5.273      -0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000       5.267      -3.051      15.599       0.000       0.000

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -5.274       0.000       0.000       0.000       0.000      -0.000    -177.038      -0.000

    1    1  |1 0>           19328.779       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000   19328.800       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000   19328.800       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000   19328.961       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000   19328.994       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   29217.147       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   36364.413       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   36364.601
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000      24.386      -0.000       0.000       0.000      -0.000      -5.274
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000      -0.000     -24.384      42.225       0.000      -0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    3    1  |1 1>-            -24.386       0.000       0.000      -0.000       0.000       0.000       5.273       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-              0.000      24.384       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 1>-             -0.000     -42.225      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    6    1  |1 1>-             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000      -5.273       0.000      -0.000      -0.000       0.000     177.038
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    8    1  |1 1>-              5.274       0.000      -0.000      -0.000       0.000      -0.000    -177.038       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000      -0.000       5.266       3.052     -15.599      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.001       0.000      -0.000      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      25.487      -0.000      -0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      45.095      -0.000      -0.000       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      25.919      -0.000       0.000      -0.000      -0.000       0.000      90.200

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -90.200      -0.000      -0.000      -0.000     -25.912     -44.886       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -25.919      -0.000       0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.274      -0.000      -0.000       0.000      48.760       0.005      -0.000       0.000

    2    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -24.386      -0.000       0.000      -0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      24.386      -0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -48.760       0.000      -0.000       0.000       0.000       0.000      -0.001

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.005      -0.000       0.000      -0.000      -0.000       0.000       6.068

    6    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      15.603

    7    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              177.038      -0.000      -0.000       0.000       0.001      -6.068     -15.603       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       5.271      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -5.271      -0.000      -0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000     -24.386       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000      24.384     -42.225      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000      24.386      -0.000       0.000       0.000      -0.000      -0.000      -5.273
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 0>               0.000      -0.000     -24.384      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000      42.225       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000      -0.000      -0.000       5.273      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000      -5.274      -0.000       0.000       0.000      -0.000       0.000     177.038
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>           36364.604      -0.000      -0.000       0.000      -5.266      -3.052      15.599       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-             -0.000   19328.779       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000       0.000   19328.800       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000   19328.800       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -5.266       0.000       0.000       0.000   19328.961       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -3.052       0.000       0.000       0.000       0.000   19328.994       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             15.599       0.000       0.000       0.000       0.000       0.000   29217.147       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   36364.413
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34

    1    1  |0 0>               0.000       0.000
                              100.599       0.000

    2    1  |0 0>               0.000       0.000
                              -90.666      -0.000

    3    1  |0 0>               0.000       0.000
                               51.228      -0.000

    4    1  |0 0>               0.000       0.000
                               -0.000       0.000

    5    1  |0 0>               0.000       0.000
                               -0.000       0.000

    6    1  |0 0>               0.000       0.000
                               -0.000      90.196

    7    1  |0 0>               0.000       0.000
                              -24.446      -0.000

    1    1  |1 1>+              0.000       0.000
                                0.000       0.000

    2    1  |1 1>+              0.000       0.000
                               -5.271       0.000

    3    1  |1 1>+              0.000       0.000
                                0.000       5.271

    4    1  |1 1>+              0.000       0.000
                                0.000       0.000

    5    1  |1 1>+              0.000       0.000
                                0.000       0.000

    6    1  |1 1>+              0.000       0.000
                                0.000      -0.000

    7    1  |1 1>+              0.000       0.000
                                0.000       0.000

    8    1  |1 1>+              0.000       0.000
                               -0.000     177.044

    9    1  |1 1>+              0.000       0.000
                             -177.044      -0.000

    1    1  |1 0>               5.274       0.000
                                0.000       0.000

    2    1  |1 0>               0.000       0.000
                                0.000       0.000

    3    1  |1 0>              -0.000      -0.000
                               -0.000       0.000

    4    1  |1 0>              -0.000       5.266
                               -0.000       0.000

    5    1  |1 0>               0.000       3.052
                               -0.000       0.000

    6    1  |1 0>              -0.000     -15.599
                               -0.000       0.000

    7    1  |1 0>            -177.038      -0.000
                                0.000      -0.000

    8    1  |1 0>               0.000       0.000
                                0.000       0.000

    9    1  |1 0>              -0.000       0.000
                                0.000       0.000

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

    8    1  |1 1>-          36364.601       0.000
                                0.000       0.000

    9    1  |1 1>-              0.000   36364.604
                                0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -3177.58689968    -0.00000384       -0.84      0.00000000        0.00      0.0000
    2 -3177.49916034     0.08773549    19255.72      0.08773934    19256.56      2.3875
    3 -3177.49916034     0.08773550    19255.72      0.08773934    19256.56      2.3875
    4 -3177.49916027     0.08773557    19255.73      0.08773941    19256.57      2.3875
    5 -3177.49894784     0.08794799    19302.35      0.08795183    19303.20      2.3933
    6 -3177.49894778     0.08794806    19302.37      0.08795190    19303.21      2.3933
    7 -3177.49894726     0.08794857    19302.48      0.08795242    19303.32      2.3933
    8 -3177.49894721     0.08794863    19302.49      0.08795247    19303.34      2.3933
    9 -3177.49894721     0.08794863    19302.49      0.08795247    19303.34      2.3933
   10 -3177.49860515     0.08829069    19377.57      0.08829453    19378.41      2.4026
   11 -3177.49860492     0.08829092    19377.62      0.08829476    19378.46      2.4026
   12 -3177.49860492     0.08829092    19377.62      0.08829476    19378.46      2.4026
   13 -3177.49860492     0.08829092    19377.62      0.08829476    19378.46      2.4026
   14 -3177.49860473     0.08829111    19377.66      0.08829495    19378.50      2.4026
   15 -3177.49860473     0.08829111    19377.66      0.08829495    19378.50      2.4026
   16 -3177.49860466     0.08829118    19377.67      0.08829502    19378.52      2.4026
   17 -3177.48993866     0.09695718    21279.64      0.09696102    21280.48      2.6384
   18 -3177.48993865     0.09695719    21279.64      0.09696103    21280.49      2.6384
   19 -3177.48993863     0.09695721    21279.65      0.09696105    21280.49      2.6384
   20 -3177.48993863     0.09695721    21279.65      0.09696105    21280.49      2.6384
   21 -3177.48993862     0.09695722    21279.65      0.09696106    21280.49      2.6384
   22 -3177.45377304     0.13312280    29217.08      0.13312664    29217.92      3.6226
   23 -3177.45377304     0.13312280    29217.08      0.13312664    29217.92      3.6226
   24 -3177.45377304     0.13312280    29217.08      0.13312664    29217.92      3.6226
   25 -3177.44465113     0.14224471    31219.10      0.14224855    31219.95      3.8708
   26 -3177.42281457     0.16408127    36011.68      0.16408511    36012.52      4.4650
   27 -3177.42201327     0.16488257    36187.54      0.16488641    36188.38      4.4868
   28 -3177.42201326     0.16488257    36187.54      0.16488642    36188.39      4.4868
   29 -3177.42201286     0.16488298    36187.63      0.16488682    36188.47      4.4868
   30 -3177.42039558     0.16650026    36542.58      0.16650410    36543.43      4.5308
   31 -3177.42039543     0.16650041    36542.62      0.16650425    36543.46      4.5308
   32 -3177.42039542     0.16650041    36542.62      0.16650426    36543.46      4.5308
   33 -3177.42039497     0.16650087    36542.72      0.16650471    36543.56      4.5308
   34 -3177.42039497     0.16650087    36542.72      0.16650471    36543.56      4.5308

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99998829 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000008  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.03213423 -0.00012124  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00012129  0.03213181 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000895  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000890  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.03215554
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000 -0.03215436  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000

   7    1  |0 0>          -0.00000656 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000004  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.54816972 -0.00000015 -0.00000000  0.00000000 -0.00000000  0.00000000  0.40855051
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000017

   2    1  |1 1>+          0.00000006 -0.00000000  0.00000000  0.00000000  0.41184051 -0.70449107  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.54808021  0.00000000 -0.00000000 -0.40859830  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000052  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000015 -0.54728854 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000048
                          -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002

   5    1  |1 1>+         -0.00000000 -0.00000009 -0.31582144 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000083
                          -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00000091 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00028376 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00054189
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00028449 -0.00000000  0.00000000  0.00054229 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00279351 -0.00000000 -0.00000000  0.00000000 -0.00054079 -0.00031611 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.81613462  0.00448341  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000017
                          -0.00000000 -0.54794375  0.00000015  0.00000000  0.00000000 -0.00000000  0.00000000  0.40890016

   3    1  |1 0>          -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002
                          -0.00000000 -0.00000015 -0.54794241 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000048

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000103  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00007033 -0.00000000  0.00000000  0.81551295 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.63183347  0.00000000  0.00000000  0.00009115 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000085 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00279358  0.00000000  0.00000000 -0.00000000  0.00000344 -0.00062647  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00028411  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00028411 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00054276

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002
                          -0.00000000  0.00000015  0.54817062  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000048

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000052  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.54808246 -0.00000000  0.00000000  0.40859706 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000005  0.00000000  0.00000000 -0.00000000  0.40407731  0.70897051 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000017
                           0.00000000  0.54735704 -0.00000015 -0.00000000  0.00000000 -0.00000000  0.00000000  0.40752345

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000030
                          -0.00000000 -0.31570193  0.00000009  0.00000000  0.00000000 -0.00000000  0.00000000  0.70624161

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000091  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00028376 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00279351  0.00000000 -0.00000000 -0.00000000 -0.00054423  0.00031015 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00028449  0.00000000 -0.00000000 -0.00054229  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000686  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000012  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.03215554  0.00000000 -0.00000000 -0.00003506  0.00000000  0.00000000 -0.00001190 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000004 -0.00000000  0.00003511 -0.00000000 -0.00000000  0.00001186  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002830  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000048 -0.00000000  0.68111133 -0.00000017 -0.00000006 -0.26174663  0.00000000 -0.00000000
                          -0.00000002 -0.00000000 -0.00000002  0.00000001 -0.00000000 -0.00000001 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.57740017  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.00000005  0.00000003  0.57644386  0.00000000 -0.00000000  0.44743210
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000035 -0.00000000 -0.00000000 -0.00000005

   4    1  |1 1>+         -0.40767733  0.00000000  0.00000012  0.47127642 -0.00000003 -0.00000000 -0.55856998 -0.00000000
                           0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000001 -0.00000000  0.00000000

   5    1  |1 1>+          0.70615341  0.00000000 -0.00000009 -0.36700526  0.00000002 -0.00000000 -0.51613384 -0.00000000
                          -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000001 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000002 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000  0.00000003 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000009 -0.00000000  0.00000000 -0.00000021  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000036 -0.00000000  0.00000000 -0.00000061
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.57724818 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000002  0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000002 -0.00000001  0.00000000
                           0.00000048 -0.00000000  0.42373944 -0.00000010 -0.00000004  0.59399553 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000001 -0.00000000  0.00000000
                           0.40890024 -0.00000000  0.00000010  0.42268019 -0.00000002  0.00000000  0.59475093  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000035  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000005  0.00000003  0.57814248  0.00000000  0.00000000  0.00057402

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000009
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00082142 -0.00000000 -0.00000000  0.77510368

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00054275 -0.00000000 -0.00000000 -0.00000061  0.00000000 -0.00000000 -0.00000047  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000061  0.00000000  0.00000000 -0.00000047  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.40854936  0.00000000  0.00000017  0.68157694 -0.00000004 -0.00000000 -0.26053171 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000035 -0.00000000  0.00000000  0.00000005
                           0.00000000  0.00000000 -0.00000005 -0.00000003 -0.57746262 -0.00000000 -0.00000000  0.44611487

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.57740244  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>-          0.00000002 -0.00000000 -0.00000002  0.00000001 -0.00000000 -0.00000001 -0.00000001 -0.00000000
                           0.00000048  0.00000000 -0.47019887  0.00000012  0.00000004  0.55952257 -0.00000000  0.00000000

   5    1  |1 1>-          0.00000004 -0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000001  0.00000001 -0.00000000
                           0.00000083  0.00000000 -0.36802888  0.00000009  0.00000003 -0.51535668  0.00000000  0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00054189  0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000021  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000035 -0.00000000 -0.00000000 -0.00000061

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00380272  0.99944141  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.99944149  0.00380272  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000005  0.99944796 -0.00000000  0.00000003  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.99944796  0.00000005  0.00000000  0.00000000 -0.00000003 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.99944800 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000034 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.01313018  0.00000000  0.00000000 -0.00000000  0.00000119  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.02265251 -0.01324654 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.01313083 -0.00000000  0.00000000 -0.00000114
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.01313281 -0.00000000 -0.00000118 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.02273842  0.00000000 -0.00000068 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000  0.99999479  0.00063465 -0.00000007
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000012  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00589331  0.00000000  0.00000000  0.00000142 -0.00223854 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00589300  0.00000000 -0.00000000  0.00223792
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00343388 -0.00587373 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00014331 -0.02623996 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.01313056  0.00000000  0.00000000  0.00000000 -0.00000123 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.01313056  0.00000000 -0.00000123 -0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.02625655  0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000287  0.00000000 -0.00000000  0.00000137

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000030
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000007 -0.00000002  0.99999499

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00680469  0.00003716 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00589321 -0.00000000 -0.00223793 -0.00000142  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                           0.00000000  0.00000000 -0.00589321 -0.00000000 -0.00000000  0.00000142 -0.00223793 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.01313018  0.00000000  0.00000118  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.01313081 -0.00000000  0.00000000 -0.00000114

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.02279585 -0.01299834 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.01312782  0.00000000  0.00000000 -0.00000000  0.00000118  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.02274130  0.00000000  0.00000000  0.00000000 -0.00000068 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000011 -0.00000266 -0.00000000
                           0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000 -0.00063465  0.99999479  0.00000002

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00589331 -0.00000000  0.00223854  0.00000142 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00336952 -0.00591088 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00589300  0.00000000 -0.00000000  0.00223792

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00004931 -0.00483829  0.00000000  0.00000000  0.00000000  0.00000073  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00012550 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000001  0.00000211 -0.00000000 -0.00000000  0.00000000  0.00835302  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000226 -0.00000000  0.00000000  0.00000000 -0.00835468 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000230 -0.00000000  0.00000000 -0.00000000  0.00835468
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.99996097  0.00883501 -0.00000000  0.00000000 -0.00000000 -0.00000143 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00022019  0.00000000 -0.00000000  0.00000000 -0.00020382
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000003 -0.00000013 -0.00000000  0.00000000 -0.00000000 -0.00035401 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00022012 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000092  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00021986 -0.00000000 -0.00000000 -0.00000000  0.00020355  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00012609 -0.00000000 -0.00000000  0.00000000 -0.00035226 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00316535 -0.00000000 -0.00000000 -0.00000000  0.00000041  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000005  0.70729339 -0.00000000 -0.00000000  0.00000006 -0.70689175
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.70709964 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00296818  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00510081 -0.57725291  0.00000000  0.00000000  0.00000000  0.40425005  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000235 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00022027 -0.00000000 -0.00000000  0.00000000 -0.00020367

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00022027 -0.00000000 -0.00000000  0.00000000 -0.00020367 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000107 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00025487 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001329  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00316487  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00510083  0.57745415  0.00000000 -0.00000000  0.00000000  0.81636028  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.70691560 -0.00000005 -0.00000000 -0.00000000  0.70726955  0.00000006

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000005  0.70691292 -0.00000000  0.00000000 -0.00000006  0.70727223

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00022019  0.00000000  0.00000000  0.00000000 -0.00020382 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000092  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00022012  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000003  0.00000013 -0.00000000  0.00000000  0.00000000  0.00035166  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00021989  0.00000000 -0.00000000  0.00000000 -0.00020347

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00012604 -0.00000000 -0.00000000  0.00000000 -0.00035230

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00316535 -0.00000000  0.00000000 -0.00000000  0.00000042

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.70729071  0.00000005  0.00000000 -0.00000000  0.70689443  0.00000006

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00510081  0.57725585  0.00000000 -0.00000000 -0.00000000 -0.41239271 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00296815  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.70709427  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34

   1    1  |0 0>           0.00000001 -0.00000000
                           0.00000000  0.00000000

   2    1  |0 0>           0.00835251 -0.00000000
                          -0.00000000 -0.00000000

   3    1  |0 0>           0.00012550 -0.00000000
                          -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000
                          -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00835431
                           0.00000000 -0.00000003

   7    1  |0 0>          -0.00000003  0.00000000
                           0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000
                           0.00000000  0.00000000

   2    1  |1 1>+          0.00020162 -0.00000000
                          -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00020365
                           0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000
                           0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000
                           0.00000000  0.00000000

   8    1  |1 1>+         -0.00000001 -0.70707933
                           0.00000000 -0.00000254

   9    1  |1 1>+          0.70942263 -0.00000001
                          -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000
                           0.00040753 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000
                          -0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000
                           0.00000000  0.00040691

   5    1  |1 0>           0.00000000 -0.00000000
                          -0.00000000  0.00000005

   6    1  |1 0>          -0.00000000  0.00000000
                          -0.00000000 -0.00000001

   7    1  |1 0>           0.00000000  0.00000000
                           0.00469942 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000
                           0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000
                          -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000
                           0.00000000  0.00020364

   3    1  |1 1>-          0.00000000  0.00000000
                           0.00020568 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000
                          -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000
                           0.70471797 -0.00000001

   9    1  |1 1>-          0.00000000 -0.00000254
                           0.00000001  0.70708470


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -3177.58689968     -0.00000384       -0.84      0.00000000        0.00      0.0000
     2   1  -3177.49916034      0.08773549    19255.72      0.08773934    19256.56      2.3875
     3   1  -3177.49916034      0.08773550    19255.72      0.08773934    19256.56      2.3875
     4   1  -3177.49916027      0.08773557    19255.73      0.08773941    19256.57      2.3875
     5   1  -3177.49894784      0.08794799    19302.35      0.08795183    19303.20      2.3933
     6   1  -3177.49894778      0.08794806    19302.37      0.08795190    19303.21      2.3933
     7   1  -3177.49894726      0.08794857    19302.48      0.08795242    19303.32      2.3933
     8   1  -3177.49894721      0.08794863    19302.49      0.08795247    19303.34      2.3933
     9   1  -3177.49894721      0.08794863    19302.49      0.08795247    19303.34      2.3933
    10   1  -3177.49860515      0.08829069    19377.57      0.08829453    19378.41      2.4026
    11   1  -3177.49860492      0.08829092    19377.62      0.08829476    19378.46      2.4026
    12   1  -3177.49860492      0.08829092    19377.62      0.08829476    19378.46      2.4026
    13   1  -3177.49860492      0.08829092    19377.62      0.08829476    19378.46      2.4026
    14   1  -3177.49860473      0.08829111    19377.66      0.08829495    19378.50      2.4026
    15   1  -3177.49860473      0.08829111    19377.66      0.08829495    19378.50      2.4026
    16   1  -3177.49860466      0.08829118    19377.67      0.08829502    19378.52      2.4026
    17   1  -3177.48993866      0.09695718    21279.64      0.09696102    21280.48      2.6384
    18   1  -3177.48993865      0.09695719    21279.64      0.09696103    21280.49      2.6384
    19   1  -3177.48993863      0.09695721    21279.65      0.09696105    21280.49      2.6384
    20   1  -3177.48993863      0.09695721    21279.65      0.09696105    21280.49      2.6384
    21   1  -3177.48993862      0.09695722    21279.65      0.09696106    21280.49      2.6384
    22   1  -3177.45377304      0.13312280    29217.08      0.13312664    29217.92      3.6226
    23   1  -3177.45377304      0.13312280    29217.08      0.13312664    29217.92      3.6226
    24   1  -3177.45377304      0.13312280    29217.08      0.13312664    29217.92      3.6226
    25   1  -3177.44465113      0.14224471    31219.10      0.14224855    31219.95      3.8708
    26   1  -3177.42281457      0.16408127    36011.68      0.16408511    36012.52      4.4650
    27   1  -3177.42201327      0.16488257    36187.54      0.16488641    36188.38      4.4868
    28   1  -3177.42201326      0.16488257    36187.54      0.16488642    36188.39      4.4868
    29   1  -3177.42201286      0.16488298    36187.63      0.16488682    36188.47      4.4868
    30   1  -3177.42039558      0.16650026    36542.58      0.16650410    36543.43      4.5308
    31   1  -3177.42039543      0.16650041    36542.62      0.16650425    36543.46      4.5308
    32   1  -3177.42039542      0.16650041    36542.62      0.16650426    36543.46      4.5308
    33   1  -3177.42039497      0.16650087    36542.72      0.16650471    36543.56      4.5308
    34   1  -3177.42039497      0.16650087    36542.72      0.16650471    36543.56      4.5308

 E0 =  -3177.58689584 is the energy of the lowest zeroth-order state
 E1 =  -3177.58689968 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99998829 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000008  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.03213423 -0.00012124  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00012129  0.03213181 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000895  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000890  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.03215554
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000 -0.03215436  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000

  7  1     7    1  |0 0>       -0.00000656 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000004  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.54816972 -0.00000015 -0.00000000  0.00000000 -0.00000000  0.00000000  0.40855051
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000017

  9  1     2    1  |1 1>+       0.00000006 -0.00000000  0.00000000  0.00000000  0.41184051 -0.70449107  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.54808021  0.00000000 -0.00000000 -0.40859830  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000052  0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000015 -0.54728854 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000048
                               -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002

 12  1     5    1  |1 1>+      -0.00000000 -0.00000009 -0.31582144 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000083
                               -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004

 13  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00000091 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00028376 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00054189
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00028449 -0.00000000  0.00000000  0.00054229 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+      -0.00279351 -0.00000000 -0.00000000  0.00000000 -0.00054079 -0.00031611 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.81613462  0.00448341  0.00000000 -0.00000000

 18  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000017
                               -0.00000000 -0.54794375  0.00000015  0.00000000  0.00000000 -0.00000000  0.00000000  0.40890016

 19  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002
                               -0.00000000 -0.00000015 -0.54794241 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000048

 20  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000103  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00007033 -0.00000000  0.00000000  0.81551295 -0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.63183347  0.00000000  0.00000000  0.00009115 -0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000085 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 23  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00279358  0.00000000  0.00000000 -0.00000000  0.00000344 -0.00062647  0.00000000 -0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00028411  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00028411 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00054276

 26  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002
                               -0.00000000  0.00000015  0.54817062  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000048

 27  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000052  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.54808246 -0.00000000  0.00000000  0.40859706 -0.00000000

 28  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000005  0.00000000  0.00000000 -0.00000000  0.40407731  0.70897051 -0.00000000  0.00000000

 29  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000017
                                0.00000000  0.54735704 -0.00000015 -0.00000000  0.00000000 -0.00000000  0.00000000  0.40752345

 30  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000030
                               -0.00000000 -0.31570193  0.00000009  0.00000000  0.00000000 -0.00000000  0.00000000  0.70624161

 31  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000091  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

 32  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00028376 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00279351  0.00000000 -0.00000000 -0.00000000 -0.00054423  0.00031015 -0.00000000  0.00000000

 34  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00028449  0.00000000 -0.00000000 -0.00054229  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000686  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000012  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.03215554  0.00000000 -0.00000000 -0.00003506  0.00000000  0.00000000 -0.00001190 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000004 -0.00000000  0.00003511 -0.00000000 -0.00000000  0.00001186  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002830  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000048 -0.00000000  0.68111133 -0.00000017 -0.00000006 -0.26174663  0.00000000 -0.00000000
                               -0.00000002 -0.00000000 -0.00000002  0.00000001 -0.00000000 -0.00000001 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000  0.57740017  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.00000005  0.00000003  0.57644386  0.00000000 -0.00000000  0.44743210
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000035 -0.00000000 -0.00000000 -0.00000005

 11  1     4    1  |1 1>+      -0.40767733  0.00000000  0.00000012  0.47127642 -0.00000003 -0.00000000 -0.55856998 -0.00000000
                                0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000001 -0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.70615341  0.00000000 -0.00000009 -0.36700526  0.00000002 -0.00000000 -0.51613384 -0.00000000
                               -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000001 -0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000002 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000  0.00000003 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000009 -0.00000000  0.00000000 -0.00000021  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000036 -0.00000000  0.00000000 -0.00000061
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.57724818 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     2    1  |1 0>        0.00000002  0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000002 -0.00000001  0.00000000
                                0.00000048 -0.00000000  0.42373944 -0.00000010 -0.00000004  0.59399553 -0.00000000 -0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000001 -0.00000000  0.00000000
                                0.40890024 -0.00000000  0.00000010  0.42268019 -0.00000002  0.00000000  0.59475093  0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000035  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000005  0.00000003  0.57814248  0.00000000  0.00000000  0.00057402

 21  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000009
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00082142 -0.00000000 -0.00000000  0.77510368

 22  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004

 23  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00054275 -0.00000000 -0.00000000 -0.00000061  0.00000000 -0.00000000 -0.00000047  0.00000000

 25  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000061  0.00000000  0.00000000 -0.00000047  0.00000000 -0.00000000

 26  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.40854936  0.00000000  0.00000017  0.68157694 -0.00000004 -0.00000000 -0.26053171 -0.00000000

 27  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000035 -0.00000000  0.00000000  0.00000005
                                0.00000000  0.00000000 -0.00000005 -0.00000003 -0.57746262 -0.00000000 -0.00000000  0.44611487

 28  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.57740244  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     4    1  |1 1>-       0.00000002 -0.00000000 -0.00000002  0.00000001 -0.00000000 -0.00000001 -0.00000001 -0.00000000
                                0.00000048  0.00000000 -0.47019887  0.00000012  0.00000004  0.55952257 -0.00000000  0.00000000

 30  1     5    1  |1 1>-       0.00000004 -0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000001  0.00000001 -0.00000000
                                0.00000083  0.00000000 -0.36802888  0.00000009  0.00000003 -0.51535668  0.00000000  0.00000000

 31  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000

 32  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00054189  0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000021  0.00000000

 33  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000035 -0.00000000 -0.00000000 -0.00000061


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00380272  0.99944141  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.99944149  0.00380272  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000005  0.99944796 -0.00000000  0.00000003  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.99944796  0.00000005  0.00000000  0.00000000 -0.00000003 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.99944800 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000034 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.01313018  0.00000000  0.00000000 -0.00000000  0.00000119  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.02265251 -0.01324654 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.01313083 -0.00000000  0.00000000 -0.00000114
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.01313281 -0.00000000 -0.00000118 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.02273842  0.00000000 -0.00000068 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000  0.99999479  0.00063465 -0.00000007
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000012  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00589331  0.00000000  0.00000000  0.00000142 -0.00223854 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00589300  0.00000000 -0.00000000  0.00223792
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00343388 -0.00587373 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00014331 -0.02623996 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.01313056  0.00000000  0.00000000  0.00000000 -0.00000123 -0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.01313056  0.00000000 -0.00000123 -0.00000000  0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.02625655  0.00000000 -0.00000000 -0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000287  0.00000000 -0.00000000  0.00000137

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000030
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000007 -0.00000002  0.99999499

 23  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00680469  0.00003716 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00589321 -0.00000000 -0.00223793 -0.00000142  0.00000000

 25  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                                0.00000000  0.00000000 -0.00589321 -0.00000000 -0.00000000  0.00000142 -0.00223793 -0.00000000

 26  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.01313018  0.00000000  0.00000118  0.00000000 -0.00000000

 27  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.01313081 -0.00000000  0.00000000 -0.00000114

 28  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.02279585 -0.01299834 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.01312782  0.00000000  0.00000000 -0.00000000  0.00000118  0.00000000

 30  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.02274130  0.00000000  0.00000000  0.00000000 -0.00000068 -0.00000000

 31  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000011 -0.00000266 -0.00000000
                                0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000 -0.00063465  0.99999479  0.00000002

 32  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00589331 -0.00000000  0.00223854  0.00000142 -0.00000000

 33  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00336952 -0.00591088 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 34  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00589300  0.00000000 -0.00000000  0.00223792


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00004931 -0.00483829  0.00000000  0.00000000  0.00000000  0.00000073  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00012550 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000001  0.00000211 -0.00000000 -0.00000000  0.00000000  0.00835302  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000226 -0.00000000  0.00000000  0.00000000 -0.00835468 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000230 -0.00000000  0.00000000 -0.00000000  0.00835468
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.99996097  0.00883501 -0.00000000  0.00000000 -0.00000000 -0.00000143 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00022019  0.00000000 -0.00000000  0.00000000 -0.00020382
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000003 -0.00000013 -0.00000000  0.00000000 -0.00000000 -0.00035401 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00022012 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000092  0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00021986 -0.00000000 -0.00000000 -0.00000000  0.00020355  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00012609 -0.00000000 -0.00000000  0.00000000 -0.00035226 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00316535 -0.00000000 -0.00000000 -0.00000000  0.00000041  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000005  0.70729339 -0.00000000 -0.00000000  0.00000006 -0.70689175
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.70709964 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00296818  0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00510081 -0.57725291  0.00000000  0.00000000  0.00000000  0.40425005  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000235 -0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00022027 -0.00000000 -0.00000000  0.00000000 -0.00020367

 19  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00022027 -0.00000000 -0.00000000  0.00000000 -0.00020367 -0.00000000

 20  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000107 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00025487 -0.00000000 -0.00000000  0.00000000

 22  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001329  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00316487  0.00000000 -0.00000000 -0.00000000

 23  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00510083  0.57745415  0.00000000 -0.00000000  0.00000000  0.81636028  0.00000000 -0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.70691560 -0.00000005 -0.00000000 -0.00000000  0.70726955  0.00000006

 25  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000005  0.70691292 -0.00000000  0.00000000 -0.00000006  0.70727223

 26  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00022019  0.00000000  0.00000000  0.00000000 -0.00020382 -0.00000000

 27  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000092  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00022012  0.00000000  0.00000000 -0.00000000

 28  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000003  0.00000013 -0.00000000  0.00000000  0.00000000  0.00035166  0.00000000 -0.00000000

 29  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00021989  0.00000000 -0.00000000  0.00000000 -0.00020347

 30  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00012604 -0.00000000 -0.00000000  0.00000000 -0.00035230

 31  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00316535 -0.00000000  0.00000000 -0.00000000  0.00000042

 32  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.70729071  0.00000005  0.00000000 -0.00000000  0.70689443  0.00000006

 33  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00510081  0.57725585  0.00000000 -0.00000000 -0.00000000 -0.41239271 -0.00000000  0.00000000

 34  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00296815  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.70709427  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34

  1  1     1    1  |0 0>        0.00000001 -0.00000000
                                0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00835251 -0.00000000
                               -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00012550 -0.00000000
                               -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000
                               -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000
                               -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00835431
                                0.00000000 -0.00000003

  7  1     7    1  |0 0>       -0.00000003  0.00000000
                                0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000
                                0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00020162 -0.00000000
                               -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00020365
                                0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000000
                                0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000
                               -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000
                               -0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000
                                0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000001 -0.70707933
                                0.00000000 -0.00000254

 16  1     9    1  |1 1>+       0.70942263 -0.00000001
                               -0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000
                                0.00040753 -0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000
                               -0.00000000  0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000000
                                0.00000000  0.00040691

 21  1     5    1  |1 0>        0.00000000 -0.00000000
                               -0.00000000  0.00000005

 22  1     6    1  |1 0>       -0.00000000  0.00000000
                               -0.00000000 -0.00000001

 23  1     7    1  |1 0>        0.00000000  0.00000000
                                0.00469942 -0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000
                                0.00000000  0.00000000

 26  1     1    1  |1 1>-       0.00000000  0.00000000
                               -0.00000000  0.00000000

 27  1     2    1  |1 1>-       0.00000000 -0.00000000
                                0.00000000  0.00020364

 28  1     3    1  |1 1>-       0.00000000  0.00000000
                                0.00020568 -0.00000000

 29  1     4    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 30  1     5    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 31  1     6    1  |1 1>-       0.00000000  0.00000000
                               -0.00000000 -0.00000000

 32  1     7    1  |1 1>-      -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 33  1     8    1  |1 1>-       0.00000000  0.00000000
                                0.70471797 -0.00000001

 34  1     9    1  |1 1>-       0.00000000 -0.00000254
                                0.00000001  0.70708470



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.10%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%   30.05%    0.00%    0.00%    0.00%    0.00%    0.00%   16.69%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.96%   49.63%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%   30.04%    0.00%    0.00%   16.70%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   29.95%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    9.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.61%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%   30.02%    0.00%    0.00%    0.00%    0.00%    0.00%   16.72%
 19  1     3    1  |1 0>          0.00%    0.00%   30.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.51%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.92%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%   30.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%   30.04%    0.00%    0.00%   16.70%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.33%   50.26%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%   29.96%    0.00%    0.00%    0.00%    0.00%    0.00%   16.61%
 30  1     5    1  |1 1>-         0.00%    9.97%    0.00%    0.00%    0.00%    0.00%    0.00%   49.88%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%   46.39%    0.00%    0.00%    6.85%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.23%    0.00%    0.00%   20.02%
 11  1     4    1  |1 1>+        16.62%    0.00%    0.00%   22.21%    0.00%    0.00%   31.20%    0.00%
 12  1     5    1  |1 1>+        49.87%    0.00%    0.00%   13.47%    0.00%    0.00%   26.64%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%   33.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%   17.96%    0.00%    0.00%   35.28%    0.00%    0.00%
 19  1     3    1  |1 0>         16.72%    0.00%    0.00%   17.87%    0.00%    0.00%   35.37%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.42%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.08%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-        16.69%    0.00%    0.00%   46.45%    0.00%    0.00%    6.79%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.35%    0.00%    0.00%   19.90%
 28  1     3    1  |1 1>-         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%   22.11%    0.00%    0.00%   31.31%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%   13.54%    0.00%    0.00%   26.56%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%   99.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         99.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%   99.89%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   99.89%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.89%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.05%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.05%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>         99.99%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%   50.03%    0.00%    0.00%    0.00%   49.97%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%   33.32%    0.00%    0.00%    0.00%   16.34%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%   33.35%    0.00%    0.00%    0.00%   66.64%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%   49.97%    0.00%    0.00%    0.00%   50.02%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%   49.97%    0.00%    0.00%    0.00%   50.02%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%   50.03%    0.00%    0.00%    0.00%   49.97%    0.00%
 33  1     8    1  |1 1>-         0.00%   33.32%    0.00%    0.00%    0.00%   17.01%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34

  1  1     1    1  |0 0>          0.00%    0.00%
  2  1     2    1  |0 0>          0.01%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.01%
  7  1     7    1  |0 0>          0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%   50.00%
 16  1     9    1  |1 1>+        50.33%    0.00%
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
 33  1     8    1  |1 1>-        49.66%    0.00%
 34  1     9    1  |1 1>-         0.00%   50.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      140.38       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      296.16       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8005.32   7009.76     32.11    663.20    294.60      2.32      0.03      2.87
 REAL TIME  *      8115.06 SEC
 DISK USED  *       345.79 MB (local),       10.58 GB (total)
 SF USED    *         1.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -3177.420394966956

              CI              CI           MULTI         RHF-SCF
  -3177.40323576  -3177.42434908  -3177.13741657  -3177.27784113
 **********************************************************************************************************************************
 Molpro calculation terminated
