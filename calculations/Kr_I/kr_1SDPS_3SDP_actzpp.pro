
 Working directory              : /wrk/irikura/molpro.fPq9gfJNvs/
 Global scratch directory       : /wrk/irikura/molpro.fPq9gfJNvs/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.fPq9gfJNvs/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Kr SO-CI
                                                                                 ! active space (8/8)
 memory,4000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Kr};
 
 basis=aug-cc-pwCVTZ-PP
 
 rhf
 
 {multi,wmk
     occ,8,9
     wf,sym=1,spin=0;state,10;
     wf,sym=1,spin=2;state,9;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=0;state,10; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,9; save,5202.2}
 hlsdiag(11) = energd
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5202.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 03-Jun-24          TIME: 08:15:26  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  64000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Kr   ECP ECP10MDF                 selected for group  1
 Library entry KR     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry KR     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry KR     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry KR     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry KR     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  KR     26.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   26
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

         1 0.237E-04 0.300E-02 0.164E-01 0.433E-01 0.433E-01 0.433E-01 0.433E-01 0.433E-01
         2 0.816E-02 0.816E-02 0.816E-02 0.149E-01 0.149E-01 0.149E-01 0.170E+00 0.170E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     18.088 MB (compressed) written to integral file ( 20.3%)

     Node minimum: 0.524 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     343760.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     343760      RECORD LENGTH: 524288

 Memory used in sort:       0.90 MW

 SORT1 READ    11031004. AND WROTE       67649. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.08 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     96 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      342884.  Node maximum:      348328. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.21      0.99
 REAL TIME  *         2.96 SEC
 DISK USED  *        29.18 MB (local),      540.04 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -462.19809361    -462.19809361     0.00D+00     0.15D+00     0     0       0.01      0.02    start
   2     -462.19809471      -0.00000110     0.44D-04     0.13D-03     1     0       0.00      0.02    diag
   3     -462.19809477      -0.00000005     0.67D-05     0.17D-04     2     0       0.00      0.02    diag
   4     -462.19809477      -0.00000000     0.28D-05     0.25D-05     3     0       0.01      0.03    diag
   5     -462.19809477      -0.00000000     0.53D-06     0.10D-05     0     0       0.00      0.03    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -462.198094767881
  RHF One-electron energy            -808.811910436269
  RHF Two-electron energy             346.613815668388
  RHF Kinetic energy                  329.242082585298
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.403824478143

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -10.80716     1  1  s    0.99203
    2.1     2.00000    -3.75376     1  1  d0   1.00004
    3.1     2.00000    -3.75376     1  1  d2-  0.68312    1  1  d1+  0.54563    1  1  d1-  0.43262
    4.1     2.00000    -3.75376     1  1  d1+  0.72121    1  1  d1- -0.67732
    5.1     2.00000    -3.75376     1  1  d2-  0.64013    1  1  d2+ -0.61503    1  1  d1- -0.39126
    6.1     2.00000    -3.75376     1  1  d2-  0.32017    1  1  d1+ -0.35108    1  1  d2+  0.75713    1  1  d1- -0.44841
    7.1     2.00000    -1.18803     1  2  s    0.94847
    1.2     2.00000    -8.48590     1  1  px   0.98962
    2.2     2.00000    -8.48590     1  1  py   0.71712    1  1  pz   0.69704
    3.2     2.00000    -8.48590     1  1  py  -0.68976    1  1  pz   0.70963
    4.2     2.00000    -0.52346     1  2  py   1.00050
    5.2     2.00000    -0.52346     1  2  px   1.00050
    6.2     2.00000    -0.52346     1  2  pz   1.00050


 HOMO      6.2    -0.523461 =     -14.2441eV
 LUMO      8.1     0.093554 =       2.5457eV
 LUMO-HOMO         0.617015 =      16.7898eV

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
 CPU TIMES  *         1.24      0.03      0.99
 REAL TIME  *         3.00 SEC
 DISK USED  *        29.60 MB (local),      546.73 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      79 (   39   40)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.126D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.637D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.535D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.675D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.761D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 4 5 6 1 1 3 5   6 4 2 1 3 5 2 6 4 1   2 3 5 6 4 1 2 3 5 4   6 812 7 91114151310
                                        2 6 4 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.171D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.493D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.540D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.115D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.629D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.148D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.138D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.138D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 1 2 3 1   2 3 6 4 5 810 7 9 5   410 8 6 9 7 1 2 310   8 5 4 6 7 9 1 2 3 8
                                       10 9 7 4 5 6 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263   0.05263
 Weight factors for state symmetry  2:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263
 
 Number of orbital rotations:  702  ( 30 closed/active, 354 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    39886
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   56    0   -461.76909133    -461.80212288   -0.03303156    0.25252018 0.00200714 0.00207542  0.97E+00     11.22
   2    9   42    0   -461.79178159    -461.79474339   -0.00296180    0.19646129 0.00010777 0.00022947  0.99E-01     19.85
   3    9   37    0   -461.79475938    -461.79475967   -0.00000029    0.00119019 0.00000115 0.00000546  0.43E-02     27.58
   4    5   23    0   -461.79475967    -461.79475967   -0.00000000    0.00000035 0.00000000 0.00000003  0.25E-04     32.61

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.15E-07)
                       Final energy:   -461.79475967
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -462.189789830750
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.88562869
 One electron energy                          -810.09115232
 Two electron energy                           347.90136249
 Virial ratio                                    2.40106070
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -461.774580441896
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.03415894
 One electron energy                          -802.61428350
 Two electron energy                           340.83970306
 Virial ratio                                    2.40342444
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -461.774580441896
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.03415894
 One electron energy                          -802.61428350
 Two electron energy                           340.83970306
 Virial ratio                                    2.40342444
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -461.774580441895
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.03415894
 One electron energy                          -802.61428350
 Two electron energy                           340.83970306
 Virial ratio                                    2.40342444
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -461.774580441894
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.03415894
 One electron energy                          -802.61428350
 Two electron energy                           340.83970306
 Virial ratio                                    2.40342444
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -461.774580441893
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.03415894
 One electron energy                          -802.61428350
 Two electron energy                           340.83970306
 Virial ratio                                    2.40342444
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -461.769429859313
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.02417813
 One electron energy                          -802.58396408
 Two electron energy                           340.81453422
 Virial ratio                                    2.40345136
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -461.769429859313
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.02417813
 One electron energy                          -802.58396408
 Two electron energy                           340.81453422
 Virial ratio                                    2.40345136
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -461.769429859312
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.02417813
 One electron energy                          -802.58396408
 Two electron energy                           340.81453422
 Virial ratio                                    2.40345136
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -461.734627082491
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.43202729
 One electron energy                          -804.09444123
 Two electron energy                           342.35981415
 Virial ratio                                    2.40160819
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -461.792989579330
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.98725366
 One electron energy                          -802.46022517
 Two electron energy                           340.66723559
 Virial ratio                                    2.40368049
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -461.778495042486
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.01037830
 One electron energy                          -802.53866438
 Two electron energy                           340.76016934
 Virial ratio                                    2.40353778
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -461.778495042486
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.01037830
 One electron energy                          -802.53866438
 Two electron energy                           340.76016934
 Virial ratio                                    2.40353778
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -461.778495042486
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.01037830
 One electron energy                          -802.53866438
 Two electron energy                           340.76016934
 Virial ratio                                    2.40353778
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -461.778495042486
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.01037830
 One electron energy                          -802.53866438
 Two electron energy                           340.76016934
 Virial ratio                                    2.40353778
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -461.778495042485
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.01037830
 One electron energy                          -802.53866438
 Two electron energy                           340.76016934
 Virial ratio                                    2.40353778
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -461.769786735431
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.02133881
 One electron energy                          -802.57280677
 Two electron energy                           340.80302004
 Virial ratio                                    2.40346455
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -461.769786735431
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.02133881
 One electron energy                          -802.57280677
 Two electron energy                           340.80302004
 Virial ratio                                    2.40346455
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -461.769786735431
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.02133881
 One electron energy                          -802.57280677
 Two electron energy                           340.80302004
 Virial ratio                                    2.40346455
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     2.321399852940
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     2.678008459868
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000612187176
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.011061322594
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.988918177422
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.568752055671
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.431255092469
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999992851859
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     3.015297927019
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.182210111113
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.817423035064
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.984612587721
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000456339082
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.996751569553
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.003335046399
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999913384048
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     2.676947613422
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     2.321977724651
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.001090367305
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.988823116357
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.011161178264
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.431251991732
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.568748123558
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999999884709
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     2.983976014822
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.813416529689
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.182234204327
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.016178791276
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.004194459886
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.003395376589
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.996765218397
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999839405014
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.001652533638
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000013815480
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.998297445519
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.000115561048
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.999920644314
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999995952596
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999996783972
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.000007263431
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000726058158
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.004373359198
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000342760609
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999208621003
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.995349201031
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999853053858
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999899735204
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000247210939
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 1 4   6 3 5 2 3 5 2 6 4 1   2 3 5 4 6 1 3 5 4 6   2 7 81211 914151310
                                        2 4 6 3 5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 1 2 1   2 3 6 4 5 810 7 9 4   510 8 6 9 7 1 2 3 8  10 4 5 6 7 9 1 2 3 8
                                       10 7 9 6 4 5 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.01603     1  1  s    0.99067
    2.1     2.00000    -3.98154     1  1  d0   1.00040
    3.1     2.00000    -3.98154     1  1  d1+  1.00040
    4.1     2.00000    -3.98154     1  1  d1- -1.00040
    5.1     2.00000    -3.98154     1  1  d2-  1.00040
    6.1     2.00000    -3.98154     1  1  d2+ -1.00040
    7.1     1.99874    -1.38401     1  2  s    0.97939
    8.1     0.00164     0.85463     1  2  s   -1.85897    1  3  s   -1.98544    1  4  s    2.37723    1  5  s    1.24201
    1.2     2.00000    -8.71318     1  1  pz   0.99989
    2.2     2.00000    -8.71318     1  1  py   0.99989
    3.2     2.00000    -8.71318     1  1  px   0.99989
    4.2     1.68373    -0.63769     1  2  px   1.10387
    5.2     1.68373    -0.63769     1  2  py   1.10387
    6.2     1.68373    -0.63769     1  2  pz   1.10387
    7.2     0.31614     0.07160     1  4  pz  -0.37733    1  7  pz   1.24355
    8.2     0.31614     0.07160     1  4  px  -0.37733    1  7  px   1.24355
    9.2     0.31614     0.07160     1  4  py  -0.37733    1  7  py   1.24355
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 222000      0.97985588      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 20 22ab00      0.07729065      0.00047470      0.00110780      0.00242186      0.57686562     -0.00184952     -0.00000000
 20 22ba00     -0.07729065     -0.00047470     -0.00110780     -0.00242186     -0.57686562      0.00184952      0.00000000
 20 b220a0     -0.07729065     -0.00140824      0.00125752      0.00145833      0.28683004     -0.50050727     -0.00000000
 20 a220b0      0.07729065      0.00140824     -0.00125752     -0.00145833     -0.28683004      0.50050727      0.00000000
 20 a2200b     -0.00000000     -0.01161175      0.00098037      0.49944797     -0.00208822      0.00029366     -0.00100528
 20 b2200a      0.00000000      0.01161175     -0.00098037     -0.49944797      0.00208822     -0.00029366      0.00100528
 20 2a20b0     -0.00000000     -0.01161175      0.00098037      0.49944797     -0.00208822      0.00029366      0.00100528
 20 2b20a0      0.00000000      0.01161175     -0.00098037     -0.49944797      0.00208822     -0.00029366     -0.00100528
 20 2a200b      0.07729065     -0.00188294      0.00014972     -0.00096353     -0.29003559     -0.49865775     -0.00000000
 20 2b200a     -0.07729065      0.00188294     -0.00014972      0.00096353      0.29003559      0.49865775      0.00000000
 20 a22b00      0.00000000      0.37351879     -0.33163548      0.00933716      0.00028487     -0.00169372     -0.37684031
 20 b22a00     -0.00000000     -0.37351879      0.33163548     -0.00933716     -0.00028487      0.00169372      0.37684031
 20 22a0b0     -0.00000000      0.37351879     -0.33163548      0.00933716      0.00028487     -0.00169372      0.37684031
 20 22b0a0      0.00000000     -0.37351879      0.33163548     -0.00933716     -0.00028487      0.00169372     -0.37684031
 20 2b2a00     -0.00000000     -0.33156374     -0.37363625     -0.00697123      0.00102143      0.00055918      0.32814132
 20 2a2b00      0.00000000      0.33156374      0.37363625      0.00697123     -0.00102143     -0.00055918     -0.32814132
 20 22a00b      0.00000000      0.33156374      0.37363625      0.00697123     -0.00102143     -0.00055918      0.32814132
 20 22b00a     -0.00000000     -0.33156374     -0.37363625     -0.00697123      0.00102143      0.00055918     -0.32814132
 
 Energy:     -462.18978983   -461.77458044   -461.77458044   -461.77458044   -461.77458044   -461.77458044   -461.76942986

 State:              8               9              10
 20 222000     -0.00000000      0.00000000     -0.18785665
 20 22ab00     -0.00000000     -0.00000000      0.40005497
 20 22ba00      0.00000000      0.00000000     -0.40005497
 20 b220a0     -0.00000000      0.00000000     -0.40005497
 20 a220b0      0.00000000     -0.00000000      0.40005497
 20 a2200b     -0.00089610     -0.49968444     -0.00000000
 20 b2200a      0.00089610      0.49968444      0.00000000
 20 2a20b0      0.00089610      0.49968444      0.00000000
 20 2b20a0     -0.00089610     -0.49968444     -0.00000000
 20 2a200b      0.00000000      0.00000000      0.40005497
 20 2b200a     -0.00000000     -0.00000000     -0.40005497
 20 a22b00      0.32814282      0.00016967      0.00000000
 20 b22a00     -0.32814282     -0.00016967     -0.00000000
 20 22a0b0     -0.32814282     -0.00016967      0.00000000
 20 22b0a0      0.32814282      0.00016967     -0.00000000
 20 2b2a00      0.37683928     -0.00133596     -0.00000000
 20 2a2b00     -0.37683928      0.00133596      0.00000000
 20 22a00b      0.37683928     -0.00133596     -0.00000000
 20 22b00a     -0.37683928      0.00133596      0.00000000
 
 Energy:     -461.76942986   -461.76942986   -461.73462708
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 22aa00      0.57681999      0.81580055      0.01771408     -0.00578158     -0.00376441      0.00386797      0.00000000
 20 a220a0      0.57681999     -0.40454947     -0.01604592     -0.00512162      0.70849341     -0.00002011     -0.00000000
 20 a2200a      0.00000000     -0.00394424      0.02747416      0.00110436     -0.00160190      0.70615579     -0.00856563
 20 2a20a0      0.00000000     -0.00394424      0.02747416      0.00110436     -0.00160190      0.70615579      0.00856563
 20 2a2a00      0.00000000      0.00115447      0.17408099      0.68481553      0.00955201     -0.00781578     -0.04027330
 20 22a00a      0.00000000      0.00115447      0.17408099      0.68481553      0.00955201     -0.00781578      0.04027330
 20 a22a00     -0.00000000     -0.01594185      0.68416674     -0.17426234      0.00513171     -0.02642352      0.70541041
 20 22a0a0     -0.00000000     -0.01594185      0.68416674     -0.17426234      0.00513171     -0.02642352     -0.70541041
 20 2a200a      0.57681999     -0.41125108     -0.00166816      0.01090320     -0.70472900     -0.00384787     -0.00000000
 
 Energy:     -461.79298958   -461.77849504   -461.77849504   -461.77849504   -461.77849504   -461.77849504   -461.76978674

 State:              8               9
 20 22aa00      0.00000000     -0.00000000
 20 a220a0     -0.00000000      0.00000000
 20 a2200a     -0.00707546     -0.70652369
 20 2a20a0      0.00707546      0.70652369
 20 2a2a00      0.70543176     -0.00657627
 20 22a00a     -0.70543176      0.00657627
 20 a22a00      0.04018860     -0.00895460
 20 22a0a0     -0.04018860      0.00895460
 20 2a200a     -0.00000000     -0.00000000
 
 Energy:     -461.76978674   -461.76978674
 


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
 CPU TIMES  *         7.55      6.31      0.03      0.99
 REAL TIME  *        37.05 SEC
 DISK USED  *        38.00 MB (local),      681.10 MB (total)
 SF USED    *        22.56 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -462.1897898  -0.0
    -461.7745804   6.0
    -461.7745804   6.0
    -461.7745804   6.0
    -461.7745804   6.0
    -461.7745804   6.0
    -461.7694299   2.0
    -461.7694299   2.0
    -461.7694299   2.0
    -461.7346271  -0.0
    -461.7929896  -0.0
    -461.7784950   6.0
    -461.7784950   6.0
    -461.7784950   6.0
    -461.7784950   6.0
    -461.7784950   6.0
    -461.7697867   2.0
    -461.7697867   2.0
    -461.7697867   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 26
 Maximum number of shells:             7
 Maximum number of spin couplings:   132

 Reference space:      603 conf      924 CSFs
 N elec internal:    45531 conf   130284 CSFs
 N-1 el internal:    56699 conf   278292 CSFs
 N-2 el internal:    37063 conf   282516 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      79 (  39  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -462.18978983
     2      -461.77458044
     3      -461.77458044
     4      -461.77458044
     5      -461.77458044
     6      -461.77458044
     7      -461.76942986
     8      -461.76942986
     9      -461.76942986
    10      -461.73462708

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1029D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3451D-06

 Number of blocks in overlap matrix:   941   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2854
 Number of N-1 electron functions:  278292

 Number of internal configurations:                65352
 Number of singly external configurations:      10992688
 Number of doubly external configurations:       4458714
 Total number of contracted configurations:     15516754
 Total number of uncontracted configurations:  450430772

 Diagonal Coupling coefficients finished.               Storage:  74669030 words, CPU-Time:    404.77 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2107435 words, CPU-time:      0.33 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -462.18978983    -0.00000000    -0.98214997  0.28D-01  0.54D-01   430.03
    1     2     2     1.00000000     0.00000000  -461.77458044    -0.00000000    -0.97869056  0.23D-01  0.57D-01   430.03
    1     3     3     1.00000000     0.00000000  -461.77458044     0.00000000    -0.97898753  0.23D-01  0.57D-01   430.03
    1     4     4     1.00000000     0.00000000  -461.77458044     0.00000000    -0.97866212  0.23D-01  0.57D-01   430.03
    1     5     5     1.00000000     0.00000000  -461.77458044    -0.00000000    -0.98546312  0.23D-01  0.61D-01   430.03
    1     6     6     1.00000000     0.00000000  -461.77458044     0.00000000    -0.98649452  0.23D-01  0.62D-01   430.03
    1     7     7     1.00000000     0.00000000  -461.76942986     0.00000000    -0.98176436  0.23D-01  0.58D-01   430.03
    1     8     8     1.00000000     0.00000000  -461.76942986    -0.00000000    -0.98185577  0.23D-01  0.58D-01   430.03
    1     9     9     1.00000000     0.00000000  -461.76942986     0.00000000    -0.98173187  0.23D-01  0.58D-01   430.03
    1    10    10     1.00000000     0.00000000  -461.73462708     0.00000000    -1.00636001  0.46D-01  0.61D-01   430.03
    2     1     1     1.06293598    -0.86165822  -463.05144805    -0.86165822    -0.02305013  0.31D-02  0.15D-02  1555.14
    2     2     2     1.05968447    -0.84795447  -462.62253491    -0.84795447    -0.01697458  0.14D-02  0.10D-02  1555.14
    2     3     3     1.05970533    -0.84794556  -462.62252600    -0.84794556    -0.01698206  0.14D-02  0.10D-02  1555.14
    2     4     4     1.05973690    -0.84790498  -462.62248542    -0.84790498    -0.01701441  0.14D-02  0.10D-02  1555.14
    2     5     5     1.06204423    -0.84738626  -462.62196670    -0.84738626    -0.01750567  0.14D-02  0.12D-02  1555.14
    2     6     6     1.06178708    -0.84732183  -462.62190228    -0.84732183    -0.01756114  0.14D-02  0.12D-02  1555.14
    2     7     7     1.06067313    -0.84881078  -462.61824064    -0.84881078    -0.01690436  0.13D-02  0.11D-02  1555.14
    2     8     8     1.06069427    -0.84880429  -462.61823415    -0.84880429    -0.01691031  0.13D-02  0.11D-02  1555.14
    2     9     9     1.06070844    -0.84876435  -462.61819421    -0.84876435    -0.01693452  0.13D-02  0.11D-02  1555.14
    2    10    10     1.07505269    -0.84856937  -462.58319645    -0.84856937    -0.02640858  0.64D-02  0.12D-02  1555.14
    3     1     1     1.06228493    -0.88529205  -463.07508188    -0.02363382    -0.00138411  0.43D-04  0.15D-03  2678.35
    3     2     2     1.05944915    -0.86428159  -462.63886203    -0.01632713    -0.00075402  0.28D-04  0.94D-04  2678.35
    3     3     3     1.05945020    -0.86428152  -462.63886196    -0.01633596    -0.00075419  0.28D-04  0.94D-04  2678.35
    3     4     4     1.05944227    -0.86427343  -462.63885387    -0.01636845    -0.00075814  0.28D-04  0.94D-04  2678.35
    3     5     5     1.05968415    -0.86423300  -462.63881344    -0.01684674    -0.00077437  0.28D-04  0.10D-03  2678.35
    3     6     6     1.05961897    -0.86422172  -462.63880216    -0.01689989    -0.00078041  0.28D-04  0.10D-03  2678.35
    3     7     7     1.06003128    -0.86511513  -462.63454499    -0.01630435    -0.00075650  0.27D-04  0.95D-04  2678.35
    3     8     8     1.06002909    -0.86511491  -462.63454477    -0.01631062    -0.00075650  0.27D-04  0.95D-04  2678.35
    3     9     9     1.06001846    -0.86510567  -462.63453553    -0.01634131    -0.00076154  0.27D-04  0.96D-04  2678.35
    3    10    10     1.06307123    -0.87330772  -462.60793480    -0.02473834    -0.00112860  0.80D-04  0.12D-03  2678.35
    4     1     1     1.06658718    -0.88697996  -463.07676979    -0.00168792    -0.00011121  0.40D-05  0.10D-04  3802.10
    4     2     2     1.06191451    -0.86522437  -462.63980482    -0.00094278    -0.00008111  0.29D-05  0.90D-05  3802.10
    4     3     3     1.06191540    -0.86522434  -462.63980478    -0.00094282    -0.00008114  0.29D-05  0.90D-05  3802.10
    4     4     4     1.06191028    -0.86522286  -462.63980330    -0.00094943    -0.00008206  0.29D-05  0.91D-05  3802.10
    4     5     5     1.06180862    -0.86521642  -462.63979686    -0.00098342    -0.00008893  0.31D-05  0.10D-04  3802.10
    4     6     6     1.06182621    -0.86521567  -462.63979612    -0.00099395    -0.00008923  0.31D-05  0.10D-04  3802.10
    4     7     7     1.06236576    -0.86606816  -462.63549802    -0.00095303    -0.00008213  0.32D-05  0.88D-05  3802.10
    4     8     8     1.06236654    -0.86606813  -462.63549799    -0.00095323    -0.00008215  0.31D-05  0.88D-05  3802.10
    4     9     9     1.06236110    -0.86606668  -462.63549654    -0.00096101    -0.00008309  0.32D-05  0.89D-05  3802.10
    4    10    10     1.06457716    -0.87462072  -462.60924780    -0.00131300    -0.00011677  0.44D-05  0.14D-04  3802.10
    5     1     1     1.06738581    -0.88711121  -463.07690104    -0.00013125    -0.00000901  0.17D-06  0.97D-06  4926.18
    5     2     2     1.06255688    -0.86532991  -462.63991035    -0.00010553    -0.00000837  0.32D-06  0.95D-06  4926.18
    5     3     3     1.06255716    -0.86532951  -462.63990996    -0.00010517    -0.00000861  0.32D-06  0.99D-06  4926.18
    5     4     4     1.06256815    -0.86532928  -462.63990973    -0.00010642    -0.00000857  0.32D-06  0.97D-06  4926.18
    5     5     5     1.06256814    -0.86532928  -462.63990972    -0.00011286    -0.00000858  0.32D-06  0.97D-06  4926.18
    5     6     6     1.06256880    -0.86532908  -462.63990952    -0.00011340    -0.00000870  0.32D-06  0.99D-06  4926.18
    5     7     7     1.06303721    -0.86617256  -462.63560242    -0.00010440    -0.00000792  0.27D-06  0.90D-06  4926.18
    5     8     8     1.06303718    -0.86617256  -462.63560242    -0.00010442    -0.00000792  0.27D-06  0.90D-06  4926.18
    5     9     9     1.06303723    -0.86617235  -462.63560221    -0.00010567    -0.00000805  0.27D-06  0.92D-06  4926.18
    5    10    10     1.06539903    -0.87477339  -462.60940047    -0.00015267    -0.00001476  0.59D-06  0.17D-05  4926.18
    6     1     1     1.06740597    -0.88712238  -463.07691221    -0.00001117    -0.00000096  0.24D-07  0.97D-07  6048.61
    6     2     2     1.06252131    -0.86534039  -462.63992083    -0.00001048    -0.00000116  0.54D-07  0.14D-06  6048.61
    6     3     3     1.06251940    -0.86534032  -462.63992076    -0.00001080    -0.00000120  0.54D-07  0.14D-06  6048.61
    6     4     4     1.06252253    -0.86534031  -462.63992075    -0.00001103    -0.00000123  0.54D-07  0.13D-06  6048.61
    6     5     5     1.06252252    -0.86534031  -462.63992075    -0.00001103    -0.00000123  0.55D-07  0.13D-06  6048.61
    6     6     6     1.06252185    -0.86534028  -462.63992072    -0.00001120    -0.00000125  0.56D-07  0.14D-06  6048.61
    6     7     7     1.06299892    -0.86618255  -462.63561241    -0.00000999    -0.00000106  0.54D-07  0.12D-06  6048.61
    6     8     8     1.06299894    -0.86618255  -462.63561241    -0.00000999    -0.00000106  0.54D-07  0.12D-06  6048.61
    6     9     9     1.06299831    -0.86618251  -462.63561237    -0.00001016    -0.00000108  0.55D-07  0.12D-06  6048.61
    6    10    10     1.06539014    -0.87479229  -462.60941937    -0.00001890    -0.00000244  0.15D-06  0.26D-06  6048.61
    7     1     1     1.06743384    -0.88712355  -463.07691338    -0.00000117    -0.00000012  0.50D-08  0.11D-07  7169.46
    7     2     2     1.06254248    -0.86534189  -462.63992233    -0.00000150    -0.00000022  0.11D-07  0.22D-07  7169.46
    7     3     3     1.06254254    -0.86534187  -462.63992231    -0.00000155    -0.00000022  0.12D-07  0.23D-07  7169.46
    7     4     4     1.06254144    -0.86534187  -462.63992231    -0.00000156    -0.00000022  0.11D-07  0.22D-07  7169.46
    7     5     5     1.06254147    -0.86534187  -462.63992231    -0.00000156    -0.00000022  0.11D-07  0.22D-07  7169.46
    7     6     6     1.06254115    -0.86534186  -462.63992231    -0.00000159    -0.00000022  0.11D-07  0.23D-07  7169.46
    7     7     7     1.06302027    -0.86618392  -462.63561378    -0.00000136    -0.00000019  0.94D-08  0.20D-07  7169.46
    7     8     8     1.06302029    -0.86618392  -462.63561378    -0.00000136    -0.00000019  0.94D-08  0.20D-07  7169.46
    7     9     9     1.06302004    -0.86618391  -462.63561377    -0.00000140    -0.00000020  0.96D-08  0.20D-07  7169.46
    7    10    10     1.06541854    -0.87479541  -462.60942250    -0.00000312    -0.00000051  0.31D-07  0.53D-07  7169.46
    8     1     1     1.06743991    -0.88712369  -463.07691352    -0.00000014    -0.00000002  0.58D-09  0.16D-08  8292.60
    8     2     2     1.06255438    -0.86534215  -462.63992259    -0.00000026    -0.00000004  0.20D-08  0.34D-08  8292.60
    8     3     3     1.06255420    -0.86534214  -462.63992258    -0.00000027    -0.00000004  0.21D-08  0.36D-08  8292.60
    8     4     4     1.06255342    -0.86534214  -462.63992258    -0.00000027    -0.00000004  0.22D-08  0.36D-08  8292.60
    8     5     5     1.06255348    -0.86534214  -462.63992258    -0.00000027    -0.00000004  0.22D-08  0.36D-08  8292.60
    8     6     6     1.06255349    -0.86534214  -462.63992258    -0.00000027    -0.00000004  0.22D-08  0.36D-08  8292.60
    8     7     7     1.06303191    -0.86618416  -462.63561401    -0.00000024    -0.00000003  0.18D-08  0.32D-08  8292.60
    8     8     8     1.06303192    -0.86618415  -462.63561401    -0.00000024    -0.00000003  0.18D-08  0.32D-08  8292.60
    8     9     9     1.06303184    -0.86618415  -462.63561401    -0.00000024    -0.00000004  0.19D-08  0.33D-08  8292.60
    8    10    10     1.06542336    -0.87479603  -462.60942312    -0.00000062    -0.00000011  0.69D-08  0.10D-07  8292.60
    9     1     1     1.06743983    -0.88712369  -463.07691352    -0.00000000    -0.00000002  0.60D-09  0.15D-08  9015.19
    9     2     2     1.06255438    -0.86534215  -462.63992259    -0.00000000    -0.00000004  0.20D-08  0.34D-08  9015.19
    9     3     3     1.06255419    -0.86534214  -462.63992258    -0.00000000    -0.00000004  0.21D-08  0.36D-08  9015.19
    9     4     4     1.06255342    -0.86534214  -462.63992258    -0.00000000    -0.00000004  0.22D-08  0.36D-08  9015.19
    9     5     5     1.06255348    -0.86534214  -462.63992258    -0.00000000    -0.00000004  0.22D-08  0.36D-08  9015.19
    9     6     6     1.06255349    -0.86534214  -462.63992258    -0.00000000    -0.00000004  0.22D-08  0.36D-08  9015.19
    9     7     7     1.06303191    -0.86618416  -462.63561401    -0.00000000    -0.00000003  0.18D-08  0.32D-08  9015.19
    9     8     8     1.06303192    -0.86618415  -462.63561401     0.00000000    -0.00000003  0.18D-08  0.32D-08  9015.19
    9     9     9     1.06303183    -0.86618415  -462.63561401    -0.00000000    -0.00000004  0.19D-08  0.33D-08  9015.19
    9    10    10     1.06543246    -0.87479618  -462.60942326    -0.00000015    -0.00000001  0.47D-09  0.85D-09  9015.19


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.8%
 S   0.4%  18.8%
 P   0.4%  52.0%  21.5%

 Initialization:   4.5%
 Other:            1.7%

 Total CPU:     9015.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222222000           0.9551594  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                            -0.0000000  -0.1415154
 222222202222/200\           0.0841983   0.7783949  -0.1424437  -0.0017701   0.0016199  -0.0081571  -0.0000000  -0.0000000
                             0.0000000   0.5521884
 22222220222/220\0           0.0841983  -0.2664833   0.7441637   0.0050639  -0.0003879  -0.0379777   0.0000000  -0.0000001
                            -0.0000000   0.5521884
 2222222022222/00\          -0.0000000   0.0145114   0.0401095  -0.0009690  -0.0027716   0.6840085  -0.0000000   0.6853490
                             0.0014483  -0.0000000
 222222202222/2\00          -0.0000000   0.0145114   0.0401094  -0.0009690  -0.0027717   0.6840093   0.0000001  -0.6853482
                            -0.0014483   0.0000000
 22222220222/2200\          -0.0000000  -0.0015274   0.0008899  -0.1410528   0.6706642   0.0024980   0.6852199  -0.0000282
                             0.0133748  -0.0000000
 222222202222/20\0           0.0000000  -0.0015275   0.0008899  -0.1410531   0.6706648   0.0024980  -0.6852192   0.0000282
                            -0.0133749   0.0000000
 22222220222/22\00           0.0000000   0.0004759  -0.0042300   0.6706559   0.1410512   0.0017596   0.0133748   0.0014480
                            -0.6852182   0.0000000
 2222222022222/0\0          -0.0000000   0.0004759  -0.0042300   0.6706561   0.1410513   0.0017596  -0.0133750  -0.0014480
                             0.6852180  -0.0000000
 2222222022222/\00           0.0841983  -0.5119114  -0.6017200  -0.0032939  -0.0012320   0.0461348   0.0000000   0.0000001
                            -0.0000000   0.5521884

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.967107    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.037805
 2          -0.000000    0.020540    0.000674   -0.002162    0.173076    0.954251    0.000000   -0.000000    0.000000    0.000000
 3           0.000000    0.056771   -0.005987    0.001260    0.952598   -0.173991    0.000000    0.000000   -0.000000   -0.000000
 4           0.000000   -0.001372    0.949251   -0.199647    0.005916   -0.002166    0.000000    0.000000    0.000000   -0.000000
 5          -0.000000   -0.003923    0.199645    0.949263    0.000596    0.001986    0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000    0.968151    0.002491    0.003536   -0.059520   -0.010037   -0.000001   -0.000000   -0.000000    0.000000
 7           0.000000    0.000000   -0.000000    0.000001   -0.000000   -0.000000   -0.000000   -0.018927    0.969643    0.000000
 8           0.000000    0.000001   -0.000000   -0.000000   -0.000000   -0.000000    0.969826   -0.002049   -0.000040    0.000000
 9           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.002049    0.969641    0.018927    0.000000
 10          0.041641   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.967800

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967844   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.001902
 2          -0.000000    0.970040    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.970040   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.970040    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.970040    0.000000    0.000000   -0.000000   -0.000000    0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.970040    0.000000    0.000000    0.000000   -0.000000
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.969828    0.000000   -0.000000   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.969828   -0.000000   -0.000000
 9           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.969828   -0.000000
 10          0.001902    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.968694


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96710731 (fixed)   0.96788214 (relaxed)   0.96784405 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010552   -0.00038606   -0.83071769
 Singles      0.01038800   -0.05567224   -0.06078263
 Pairs        0.05705895    0.05528966    0.00437663
 Total        1.06755247   -0.00076864   -0.88712369
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -462.18902379
 Nuclear energy                         0.00000000
 Kinetic energy                       329.55885694
 One electron energy                 -808.56637931
 Two electron energy                  345.48946579
 Virial quotient                       -1.40514176
 Correlation energy                    -0.88788973
 !MRCI STATE 1.1 Energy              -463.076913520588

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -463.13689266 (Davidson, fixed reference)
 Cluster corrected energies          -463.13681807 (Davidson, relaxed reference)
 Cluster corrected energies          -463.13689266 (Davidson, rotated reference)

 Cluster corrected energies          -463.13561402 (Pople, fixed reference)
 Cluster corrected energies          -463.13553666 (Pople, relaxed reference)
 Cluster corrected energies          -463.13561402 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95425080 (fixed)   0.97009236 (relaxed)   0.97003961 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016096   -0.00056448   -0.75317363
 Singles      0.01194466   -0.06506449   -0.07094918
 Pairs        0.05061978   -0.00000019   -0.04121934
 Total        1.06272541   -0.06562916   -0.86534215
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77458044
 Nuclear energy                         0.00000000
 Kinetic energy                       329.18393692
 One electron energy                 -801.86038864
 Two electron energy                  339.22046605
 Virial quotient                       -1.40541464
 Correlation energy                    -0.86534215
 !MRCI STATE 2.1 Energy              -462.639922589662

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69420153 (Davidson, fixed reference)
 Cluster corrected energies          -462.69410152 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69420153 (Davidson, rotated reference)

 Cluster corrected energies          -462.69281807 (Pople, fixed reference)
 Cluster corrected energies          -462.69271523 (Pople, relaxed reference)
 Cluster corrected energies          -462.69281807 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95259841 (fixed)   0.97009244 (relaxed)   0.97003969 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016097   -0.00056448   -0.75317416
 Singles      0.01194456   -0.06506426   -0.07094900
 Pairs        0.05061970    0.00000000   -0.04121899
 Total        1.06272523   -0.06562873   -0.86534214
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77458044
 Nuclear energy                         0.00000000
 Kinetic energy                       329.18386247
 One electron energy                 -801.86036859
 Two electron energy                  339.22044600
 Virial quotient                       -1.40541495
 Correlation energy                    -0.86534214
 !MRCI STATE 3.1 Energy              -462.639922584787

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69420137 (Davidson, fixed reference)
 Cluster corrected energies          -462.69410136 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69420137 (Davidson, rotated reference)

 Cluster corrected energies          -462.69281791 (Pople, fixed reference)
 Cluster corrected energies          -462.69271506 (Pople, relaxed reference)
 Cluster corrected energies          -462.69281791 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94925081 (fixed)   0.97009280 (relaxed)   0.97004004 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016097   -0.00056448   -0.75317407
 Singles      0.01194495   -0.06506493   -0.07094940
 Pairs        0.05061854    0.00000000   -0.04121867
 Total        1.06272446   -0.06562941   -0.86534214
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77458044
 Nuclear energy                         0.00000000
 Kinetic energy                       329.18375564
 One electron energy                 -801.86036426
 Two electron energy                  339.22044167
 Virial quotient                       -1.40541541
 Correlation energy                    -0.86534214
 !MRCI STATE 4.1 Energy              -462.639922581175

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69420070 (Davidson, fixed reference)
 Cluster corrected energies          -462.69410068 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69420070 (Davidson, rotated reference)

 Cluster corrected energies          -462.69281722 (Pople, fixed reference)
 Cluster corrected energies          -462.69271436 (Pople, relaxed reference)
 Cluster corrected energies          -462.69281722 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.94926279 (fixed)   0.97009277 (relaxed)   0.97004001 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016097   -0.00056448   -0.75317403
 Singles      0.01194496   -0.06506493   -0.07094943
 Pairs        0.05061860   -0.00000000   -0.04121869
 Total        1.06272452   -0.06562940   -0.86534214
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77458044
 Nuclear energy                         0.00000000
 Kinetic energy                       329.18377833
 One electron energy                 -801.86037296
 Two electron energy                  339.22045038
 Virial quotient                       -1.40541531
 Correlation energy                    -0.86534214
 !MRCI STATE 5.1 Energy              -462.639922579988

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69420075 (Davidson, fixed reference)
 Cluster corrected energies          -462.69410074 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69420075 (Davidson, rotated reference)

 Cluster corrected energies          -462.69281727 (Pople, fixed reference)
 Cluster corrected energies          -462.69271442 (Pople, relaxed reference)
 Cluster corrected energies          -462.69281727 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96815056 (fixed)   0.97009276 (relaxed)   0.97004001 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016097   -0.00056448   -0.75317402
 Singles      0.01194495   -0.06506492   -0.07094942
 Pairs        0.05061861   -0.00000000   -0.04121870
 Total        1.06272453   -0.06562940   -0.86534214
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77458044
 Nuclear energy                         0.00000000
 Kinetic energy                       329.18377928
 One electron energy                 -801.86037270
 Two electron energy                  339.22045013
 Virial quotient                       -1.40541531
 Correlation energy                    -0.86534214
 !MRCI STATE 6.1 Energy              -462.639922577898

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69420076 (Davidson, fixed reference)
 Cluster corrected energies          -462.69410074 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69420076 (Davidson, rotated reference)

 Cluster corrected energies          -462.69281728 (Pople, fixed reference)
 Cluster corrected energies          -462.69271442 (Pople, relaxed reference)
 Cluster corrected energies          -462.69281728 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96964330 (fixed)   0.96987459 (relaxed)   0.96982800 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014798   -0.00055731   -0.75244330
 Singles      0.01253323   -0.06632273   -0.07259029
 Pairs        0.05050800   -0.00000000   -0.04115056
 Total        1.06318921   -0.06688005   -0.86618416
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.76942986
 Nuclear energy                         0.00000000
 Kinetic energy                       329.18115438
 One electron energy                 -801.84643018
 Two electron energy                  339.21081616
 Virial quotient                       -1.40541343
 Correlation energy                    -0.86618416
 !MRCI STATE 7.1 Energy              -462.635614014320

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69034751 (Davidson, fixed reference)
 Cluster corrected energies          -462.69025904 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69034751 (Davidson, rotated reference)

 Cluster corrected energies          -462.68897432 (Pople, fixed reference)
 Cluster corrected energies          -462.68888326 (Pople, relaxed reference)
 Cluster corrected energies          -462.68897432 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96982583 (fixed)   0.96987459 (relaxed)   0.96982800 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014798   -0.00055731   -0.75244328
 Singles      0.01253324   -0.06632273   -0.07259030
 Pairs        0.05050801   -0.00000001   -0.04115058
 Total        1.06318922   -0.06688006   -0.86618415
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.76942986
 Nuclear energy                         0.00000000
 Kinetic energy                       329.18115357
 One electron energy                 -801.84642947
 Two electron energy                  339.21081546
 Virial quotient                       -1.40541343
 Correlation energy                    -0.86618415
 !MRCI STATE 8.1 Energy              -462.635614014249

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69034752 (Davidson, fixed reference)
 Cluster corrected energies          -462.69025904 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69034752 (Davidson, rotated reference)

 Cluster corrected energies          -462.68897433 (Pople, fixed reference)
 Cluster corrected energies          -462.68888327 (Pople, relaxed reference)
 Cluster corrected energies          -462.68897433 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96964117 (fixed)   0.96987462 (relaxed)   0.96982803 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014798   -0.00055731   -0.75244336
 Singles      0.01253321   -0.06632271   -0.07259025
 Pairs        0.05050795   -0.00000000   -0.04115054
 Total        1.06318914   -0.06688003   -0.86618415
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.76942986
 Nuclear energy                         0.00000000
 Kinetic energy                       329.18112160
 One electron energy                 -801.84641718
 Two electron energy                  339.21080317
 Virial quotient                       -1.40541357
 Correlation energy                    -0.86618415
 !MRCI STATE 9.1 Energy              -462.635614011996

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69034744 (Davidson, fixed reference)
 Cluster corrected energies          -462.69025897 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69034744 (Davidson, rotated reference)

 Cluster corrected energies          -462.68897425 (Pople, fixed reference)
 Cluster corrected energies          -462.68888319 (Pople, relaxed reference)
 Cluster corrected energies          -462.68897425 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96780003 (fixed)   0.96878326 (relaxed)   0.96869357 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023314   -0.00056969   -0.00118578
 Singles      0.01409286   -0.06842752   -0.07577638
 Pairs        0.05135485   -0.80530895   -0.79783403
 Total        1.06568085   -0.87430617   -0.87479618
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.73539313
 Nuclear energy                         0.00000000
 Kinetic energy                       329.31814055
 One electron energy                 -802.50130231
 Two electron energy                  339.89187904
 Virial quotient                       -1.40474929
 Correlation energy                    -0.87403014
 !MRCI STATE 10.1 Energy             -462.609423263565

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.66683031 (Davidson, fixed reference)
 Cluster corrected energies          -462.66665785 (Davidson, relaxed reference)
 Cluster corrected energies          -462.66683031 (Davidson, rotated reference)

 Cluster corrected energies          -462.66551347 (Pople, fixed reference)
 Cluster corrected energies          -462.66533521 (Pople, relaxed reference)
 Cluster corrected energies          -462.66551347 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1204.27       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     11240.18  11232.62      6.31      0.03      0.99
 REAL TIME  *     11419.78 SEC
 DISK USED  *         1.21 GB (local),       19.47 GB (total)
 SF USED    *        12.78 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -463.13689266  AU                              
 SETTING HLSDIAG(2)     =      -462.69420153  AU                              
 SETTING HLSDIAG(3)     =      -462.69420137  AU                              
 SETTING HLSDIAG(4)     =      -462.69420070  AU                              
 SETTING HLSDIAG(5)     =      -462.69420075  AU                              
 SETTING HLSDIAG(6)     =      -462.69420076  AU                              
 SETTING HLSDIAG(7)     =      -462.69034751  AU                              
 SETTING HLSDIAG(8)     =      -462.69034752  AU                              
 SETTING HLSDIAG(9)     =      -462.69034744  AU                              
 SETTING HLSDIAG(10)    =      -462.66683031  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 26
 Maximum number of shells:             6
 Maximum number of spin couplings:   297

 Reference space:      533 conf     1176 CSFs
 N elec internal:    44957 conf   215544 CSFs
 N-1 el internal:    55349 conf   505086 CSFs
 N-2 el internal:    33643 conf   537132 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      79 (  39  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -461.79298958
     2      -461.77849504
     3      -461.77849504
     4      -461.77849504
     5      -461.77849504
     6      -461.77849504
     7      -461.76978674
     8      -461.76978674
     9      -461.76978674

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1201D-06

 Number of blocks in overlap matrix:   888   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    2559
 Number of N-1 electron functions:  505086

 Number of internal configurations:               107628
 Number of singly external configurations:      19951026
 Number of doubly external configurations:       3997056
 Total number of contracted configurations:     24055710
 Total number of uncontracted configurations:  854157708

 Diagonal Coupling coefficients finished.               Storage: 101569800 words, CPU-Time:    712.32 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3217328 words, CPU-time:      0.29 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -461.79298958    -0.00000000    -0.98868390  0.25D-01  0.62D-01   743.69
    1     2     2     1.00000000     0.00000000  -461.77849504    -0.00000000    -0.98822502  0.24D-01  0.62D-01   743.69
    1     3     3     1.00000000     0.00000000  -461.77849504     0.00000000    -0.98748989  0.24D-01  0.62D-01   743.69
    1     4     4     1.00000000     0.00000000  -461.77849504     0.00000000    -0.98784526  0.24D-01  0.62D-01   743.69
    1     5     5     1.00000000     0.00000000  -461.77849504     0.00000000    -0.98917926  0.24D-01  0.63D-01   743.69
    1     6     6     1.00000000     0.00000000  -461.77849504     0.00000000    -0.98755733  0.24D-01  0.62D-01   743.69
    1     7     7     1.00000000     0.00000000  -461.76978674     0.00000000    -0.98771501  0.23D-01  0.62D-01   743.69
    1     8     8     1.00000000     0.00000000  -461.76978674     0.00000000    -0.98800014  0.23D-01  0.62D-01   743.69
    1     9     9     1.00000000     0.00000000  -461.76978674     0.00000000    -0.98765668  0.23D-01  0.62D-01   743.69
    2     1     1     1.06388605    -0.84619427  -462.63918385    -0.84619427    -0.01771711  0.16D-02  0.12D-02  2696.81
    2     2     2     1.06278227    -0.84788333  -462.62637838    -0.84788333    -0.01723658  0.14D-02  0.11D-02  2696.81
    2     3     3     1.06276712    -0.84784994  -462.62634498    -0.84784994    -0.01725833  0.14D-02  0.11D-02  2696.81
    2     4     4     1.06287712    -0.84777181  -462.62626685    -0.84777181    -0.01732956  0.14D-02  0.12D-02  2696.81
    2     5     5     1.06317879    -0.84752100  -462.62601605    -0.84752100    -0.01748340  0.14D-02  0.12D-02  2696.81
    2     6     6     1.06296781    -0.84736501  -462.62586005    -0.84736501    -0.01758280  0.14D-02  0.12D-02  2696.81
    2     7     7     1.06264739    -0.84883580  -462.61862254    -0.84883580    -0.01675861  0.13D-02  0.11D-02  2696.81
    2     8     8     1.06262555    -0.84882790  -462.61861464    -0.84882790    -0.01675898  0.13D-02  0.11D-02  2696.81
    2     9     9     1.06273827    -0.84874111  -462.61852785    -0.84874111    -0.01683972  0.13D-02  0.11D-02  2696.81
    3     1     1     1.06007615    -0.86302140  -462.65601098    -0.01682714    -0.00063903  0.22D-04  0.84D-04  4659.72
    3     2     2     1.06019325    -0.86428260  -462.64277764    -0.01639926    -0.00065260  0.23D-04  0.85D-04  4659.72
    3     3     3     1.06017828    -0.86427577  -462.64277081    -0.01642583    -0.00065688  0.23D-04  0.86D-04  4659.72
    3     4     4     1.06017123    -0.86427019  -462.64276523    -0.01649838    -0.00066020  0.23D-04  0.87D-04  4659.72
    3     5     5     1.06012358    -0.86420824  -462.64270329    -0.01668724    -0.00069556  0.24D-04  0.93D-04  4659.72
    3     6     6     1.06003195    -0.86418024  -462.64267528    -0.01681523    -0.00071366  0.24D-04  0.96D-04  4659.72
    3     7     7     1.06041058    -0.86480913  -462.63459586    -0.01597332    -0.00063972  0.24D-04  0.84D-04  4659.72
    3     8     8     1.06040281    -0.86480565  -462.63459239    -0.01597775    -0.00064180  0.24D-04  0.84D-04  4659.72
    3     9     9     1.06039254    -0.86480041  -462.63458714    -0.01605929    -0.00064485  0.24D-04  0.85D-04  4659.72
    4     1     1     1.06162339    -0.86378771  -462.65677729    -0.00076630    -0.00005888  0.20D-05  0.72D-05  6618.16
    4     2     2     1.06195238    -0.86507186  -462.64356691    -0.00078927    -0.00006173  0.22D-05  0.74D-05  6618.16
    4     3     3     1.06195012    -0.86507119  -462.64356624    -0.00079542    -0.00006229  0.22D-05  0.74D-05  6618.16
    4     4     4     1.06194238    -0.86507027  -462.64356531    -0.00080008    -0.00006282  0.22D-05  0.75D-05  6618.16
    4     5     5     1.06189947    -0.86506238  -462.64355743    -0.00085414    -0.00006965  0.24D-05  0.82D-05  6618.16
    4     6     6     1.06189794    -0.86506013  -462.64355518    -0.00087989    -0.00007127  0.25D-05  0.82D-05  6618.16
    4     7     7     1.06210399    -0.86558221  -462.63536895    -0.00077309    -0.00006178  0.22D-05  0.73D-05  6618.16
    4     8     8     1.06210288    -0.86558189  -462.63536862    -0.00077623    -0.00006207  0.22D-05  0.74D-05  6618.16
    4     9     9     1.06209477    -0.86558083  -462.63536757    -0.00078043    -0.00006265  0.23D-05  0.74D-05  6618.16
    5     1     1     1.06223416    -0.86386108  -462.65685066    -0.00007337    -0.00000458  0.20D-06  0.51D-06  8575.55
    5     2     2     1.06258891    -0.86514927  -462.64364431    -0.00007740    -0.00000515  0.21D-06  0.60D-06  8575.55
    5     3     3     1.06258870    -0.86514924  -462.64364429    -0.00007805    -0.00000517  0.21D-06  0.60D-06  8575.55
    5     4     4     1.06258548    -0.86514916  -462.64364420    -0.00007889    -0.00000547  0.22D-06  0.62D-06  8575.55
    5     5     5     1.06258919    -0.86514908  -462.64364412    -0.00008669    -0.00000527  0.21D-06  0.61D-06  8575.55
    5     6     6     1.06258596    -0.86514881  -462.64364386    -0.00008868    -0.00000569  0.22D-06  0.65D-06  8575.55
    5     7     7     1.06274488    -0.86565953  -462.63544627    -0.00007732    -0.00000512  0.19D-06  0.59D-06  8575.55
    5     8     8     1.06274472    -0.86565952  -462.63544626    -0.00007764    -0.00000513  0.19D-06  0.59D-06  8575.55
    5     9     9     1.06274578    -0.86565934  -462.63544607    -0.00007850    -0.00000524  0.20D-06  0.61D-06  8575.55
    6     1     1     1.06222049    -0.86386653  -462.65685611    -0.00000545    -0.00000046  0.26D-07  0.58D-07 10540.60
    6     2     2     1.06257502    -0.86515572  -462.64365076    -0.00000646    -0.00000060  0.34D-07  0.75D-07 10540.60
    6     3     3     1.06257374    -0.86515567  -462.64365071    -0.00000642    -0.00000064  0.35D-07  0.80D-07 10540.60
    6     4     4     1.06257802    -0.86515557  -462.64365061    -0.00000641    -0.00000060  0.34D-07  0.74D-07 10540.60
    6     5     5     1.06257773    -0.86515557  -462.64365061    -0.00000649    -0.00000060  0.34D-07  0.74D-07 10540.60
    6     6     6     1.06257760    -0.86515553  -462.64365057    -0.00000672    -0.00000062  0.35D-07  0.77D-07 10540.60
    6     7     7     1.06273595    -0.86566576  -462.63545249    -0.00000622    -0.00000059  0.33D-07  0.72D-07 10540.60
    6     8     8     1.06273581    -0.86566575  -462.63545249    -0.00000623    -0.00000059  0.33D-07  0.72D-07 10540.60
    6     9     9     1.06273560    -0.86566572  -462.63545246    -0.00000639    -0.00000061  0.34D-07  0.75D-07 10540.60
    7     1     1     1.06223318    -0.86386711  -462.65685669    -0.00000058    -0.00000008  0.48D-08  0.87D-08 12495.05
    7     2     2     1.06259184    -0.86515649  -462.64365153    -0.00000077    -0.00000010  0.61D-08  0.11D-07 12495.05
    7     3     3     1.06259146    -0.86515648  -462.64365152    -0.00000081    -0.00000011  0.62D-08  0.12D-07 12495.05
    7     4     4     1.06259265    -0.86515634  -462.64365138    -0.00000077    -0.00000010  0.60D-08  0.11D-07 12495.05
    7     5     5     1.06259259    -0.86515634  -462.64365138    -0.00000077    -0.00000010  0.59D-08  0.11D-07 12495.05
    7     6     6     1.06259250    -0.86515633  -462.64365137    -0.00000080    -0.00000011  0.62D-08  0.12D-07 12495.05
    7     7     7     1.06274931    -0.86566651  -462.63545325    -0.00000076    -0.00000010  0.59D-08  0.11D-07 12495.05
    7     8     8     1.06274927    -0.86566651  -462.63545325    -0.00000076    -0.00000010  0.59D-08  0.11D-07 12495.05
    7     9     9     1.06274911    -0.86566651  -462.63545324    -0.00000079    -0.00000011  0.61D-08  0.11D-07 12495.05
    8     1     1     1.06223688    -0.86386721  -462.65685679    -0.00000010    -0.00000001  0.74D-09  0.12D-08 14446.59
    8     2     2     1.06259862    -0.86515662  -462.64365166    -0.00000013    -0.00000002  0.89D-09  0.16D-08 14446.59
    8     3     3     1.06259846    -0.86515662  -462.64365166    -0.00000013    -0.00000002  0.96D-09  0.18D-08 14446.59
    8     4     4     1.06259850    -0.86515647  -462.64365151    -0.00000013    -0.00000002  0.89D-09  0.16D-08 14446.59
    8     5     5     1.06259850    -0.86515646  -462.64365151    -0.00000013    -0.00000002  0.89D-09  0.16D-08 14446.59
    8     6     6     1.06259841    -0.86515646  -462.64365150    -0.00000013    -0.00000002  0.93D-09  0.17D-08 14446.59
    8     7     7     1.06275584    -0.86566664  -462.63545338    -0.00000013    -0.00000002  0.96D-09  0.17D-08 14446.59
    8     8     8     1.06275592    -0.86566664  -462.63545338    -0.00000013    -0.00000002  0.92D-09  0.16D-08 14446.59
    8     9     9     1.06275593    -0.86566664  -462.63545337    -0.00000013    -0.00000002  0.93D-09  0.16D-08 14446.59


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.4%  27.1%
 P   0.3%  45.9%  19.7%

 Initialization:   4.9%
 Other:            1.1%

 Total CPU:    14446.6 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222202222/200/           0.5596197   0.7858823  -0.0949331  -0.0000000   0.0000689  -0.0000097   0.0000000   0.0000000
                            -0.0000000
 2222222022222//00           0.5596196  -0.3107267   0.7280607   0.0000001  -0.0001666   0.0000786  -0.0000000  -0.0000000
                             0.0000000
 2222222022222/00/           0.0000000  -0.0000434   0.0001383   0.0000013   0.6855413   0.0008532  -0.0000000   0.6853738
                            -0.0000000
 222222202222/2/00           0.0000000  -0.0000434   0.0001383   0.0000013   0.6855412   0.0008532   0.0000000  -0.6853737
                            -0.0000000
 22222220222/2200/           0.0000000  -0.0000000   0.0000000   0.6855410   0.0000000  -0.0010927  -0.0147045  -0.0000000
                            -0.6852159
 222222202222/20/0          -0.0000000   0.0000000   0.0000000   0.6855408   0.0000000  -0.0010927   0.0147045  -0.0000000
                             0.6852160
 2222222022222/0/0           0.0000000  -0.0000005  -0.0000744   0.0010927  -0.0008532   0.6855405   0.6852159   0.0000000
                            -0.0147045
 22222220222/22/00          -0.0000000  -0.0000005  -0.0000744   0.0010927  -0.0008532   0.6855403  -0.6852161  -0.0000000
                             0.0147045
 22222220222/220/0           0.5596197  -0.4751557  -0.6331275  -0.0000001   0.0000977  -0.0000689  -0.0000000   0.0000000
                             0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970184   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.116334   -0.000061   -0.000001    0.963024    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.963025    0.000196   -0.000105   -0.116334    0.000000    0.000000   -0.000000    0.000000
 4          -0.000000    0.000000    0.000002    0.001546   -0.000000    0.970024    0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000187    0.970025   -0.001207    0.000084    0.000000    0.000000   -0.000000    0.000000
 6          -0.000000    0.000104    0.001207    0.970024   -0.000012   -0.001546    0.000000    0.000000    0.000000
 7          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.969723    0.020810
 8           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.969946    0.000000    0.000000
 9           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.020810    0.969723

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970184   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.970026    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.970026   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.970026   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.970026   -0.000000   -0.000000    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970026    0.000000    0.000000   -0.000000
 7           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.969946   -0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.969946   -0.000000
 9           0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.969946


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97018404 (fixed)   0.97023940 (relaxed)   0.97018404 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016206   -0.00053659   -0.75150847
 Singles      0.01224487   -0.06559783   -0.07170066
 Pairs        0.05000209    0.00000000   -0.04065807
 Total        1.06240903   -0.06613442   -0.86386721
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79298958
 Nuclear energy                         0.00000000
 Kinetic energy                       329.15905026
 One electron energy                 -801.78006065
 Two electron energy                  339.12320386
 Virial quotient                       -1.40557234
 Correlation energy                    -0.86386721
 !MRCI STATE 1.1 Energy              -462.656856788593

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71076990 (Davidson, fixed reference)
 Cluster corrected energies          -462.71066516 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71076990 (Davidson, rotated reference)

 Cluster corrected energies          -462.70897113 (Pople, fixed reference)
 Cluster corrected energies          -462.70886441 (Pople, relaxed reference)
 Cluster corrected energies          -462.70897113 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96302447 (fixed)   0.97007302 (relaxed)   0.97002560 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014821   -0.00054794   -0.75217196
 Singles      0.01227264   -0.06590950   -0.07200801
 Pairs        0.05033525   -0.00000000   -0.04097664
 Total        1.06275611   -0.06645744   -0.86515662
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77849504
 Nuclear energy                         0.00000000
 Kinetic energy                       329.17280423
 One electron energy                 -801.82107599
 Two electron energy                  339.17742433
 Virial quotient                       -1.40547350
 Correlation energy                    -0.86515662
 !MRCI STATE 2.1 Energy              -462.643651659919

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69794552 (Davidson, fixed reference)
 Cluster corrected energies          -462.69785562 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69794552 (Davidson, rotated reference)

 Cluster corrected energies          -462.69614986 (Pople, fixed reference)
 Cluster corrected energies          -462.69605821 (Pople, relaxed reference)
 Cluster corrected energies          -462.69614986 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96302452 (fixed)   0.97007310 (relaxed)   0.97002567 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014821   -0.00054794   -0.75217215
 Singles      0.01227263   -0.06590942   -0.07200794
 Pairs        0.05033511   -0.00000000   -0.04097653
 Total        1.06275595   -0.06645736   -0.86515662
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77849504
 Nuclear energy                         0.00000000
 Kinetic energy                       329.17273182
 One electron energy                 -801.82105132
 Two electron energy                  339.17739966
 Virial quotient                       -1.40547380
 Correlation energy                    -0.86515662
 !MRCI STATE 3.1 Energy              -462.643651658161

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69794539 (Davidson, fixed reference)
 Cluster corrected energies          -462.69785549 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69794539 (Davidson, rotated reference)

 Cluster corrected energies          -462.69614972 (Pople, fixed reference)
 Cluster corrected energies          -462.69605807 (Pople, relaxed reference)
 Cluster corrected energies          -462.69614972 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97002442 (fixed)   0.97007308 (relaxed)   0.97002565 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014822   -0.00054794   -0.75217210
 Singles      0.01227266   -0.06590938   -0.07200784
 Pairs        0.05033512    0.00000008   -0.04097653
 Total        1.06275599   -0.06645723   -0.86515647
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77849504
 Nuclear energy                         0.00000000
 Kinetic energy                       329.17277378
 One electron energy                 -801.82107123
 Two electron energy                  339.17741972
 Virial quotient                       -1.40547362
 Correlation energy                    -0.86515647
 !MRCI STATE 4.1 Energy              -462.643651508726

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69794526 (Davidson, fixed reference)
 Cluster corrected energies          -462.69785536 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69794526 (Davidson, rotated reference)

 Cluster corrected energies          -462.69614960 (Pople, fixed reference)
 Cluster corrected energies          -462.69605794 (Pople, relaxed reference)
 Cluster corrected energies          -462.69614960 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97002488 (fixed)   0.97007308 (relaxed)   0.97002565 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014822   -0.00054794   -0.75217201
 Singles      0.01227266   -0.06590938   -0.07200785
 Pairs        0.05033512   -0.00000000   -0.04097660
 Total        1.06275599   -0.06645732   -0.86515646
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77849504
 Nuclear energy                         0.00000000
 Kinetic energy                       329.17277348
 One electron energy                 -801.82107070
 Two electron energy                  339.17741919
 Virial quotient                       -1.40547363
 Correlation energy                    -0.86515646
 !MRCI STATE 5.1 Energy              -462.643651505524

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69794526 (Davidson, fixed reference)
 Cluster corrected energies          -462.69785536 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69794526 (Davidson, rotated reference)

 Cluster corrected energies          -462.69614960 (Pople, fixed reference)
 Cluster corrected energies          -462.69605794 (Pople, relaxed reference)
 Cluster corrected energies          -462.69614960 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97002370 (fixed)   0.97007312 (relaxed)   0.97002569 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014822   -0.00054794   -0.75217212
 Singles      0.01227263   -0.06590933   -0.07200781
 Pairs        0.05033506   -0.00000000   -0.04097654
 Total        1.06275591   -0.06645727   -0.86515646
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77849504
 Nuclear energy                         0.00000000
 Kinetic energy                       329.17274286
 One electron energy                 -801.82105829
 Two electron energy                  339.17740679
 Virial quotient                       -1.40547376
 Correlation energy                    -0.86515646
 !MRCI STATE 6.1 Energy              -462.643651501705

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69794518 (Davidson, fixed reference)
 Cluster corrected energies          -462.69785527 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69794518 (Davidson, rotated reference)

 Cluster corrected energies          -462.69614951 (Pople, fixed reference)
 Cluster corrected energies          -462.69605785 (Pople, relaxed reference)
 Cluster corrected energies          -462.69614951 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96972275 (fixed)   0.97000083 (relaxed)   0.96994601 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016437   -0.00055894   -0.73677538
 Singles      0.01217723   -0.06551286   -0.07155090
 Pairs        0.05058893   -0.01715503   -0.05734036
 Total        1.06293052   -0.08322682   -0.86566664
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.76978674
 Nuclear energy                         0.00000000
 Kinetic energy                       329.18000173
 One electron energy                 -801.84010859
 Two electron energy                  339.20465521
 Virial quotient                       -1.40541786
 Correlation energy                    -0.86566664
 !MRCI STATE 7.1 Energy              -462.635453375687

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.68993023 (Davidson, fixed reference)
 Cluster corrected energies          -462.68982623 (Davidson, relaxed reference)
 Cluster corrected energies          -462.68993023 (Davidson, rotated reference)

 Cluster corrected energies          -462.68813649 (Pople, fixed reference)
 Cluster corrected energies          -462.68803043 (Pople, relaxed reference)
 Cluster corrected energies          -462.68813649 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96994597 (fixed)   0.97000079 (relaxed)   0.96994597 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016437   -0.00055894   -0.75291466
 Singles      0.01217723   -0.06551289   -0.07155094
 Pairs        0.05058900   -0.00000000   -0.04120104
 Total        1.06293061   -0.06607182   -0.86566664
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.76978674
 Nuclear energy                         0.00000000
 Kinetic energy                       329.18003406
 One electron energy                 -801.84012147
 Two electron energy                  339.20466810
 Virial quotient                       -1.40541772
 Correlation energy                    -0.86566664
 !MRCI STATE 8.1 Energy              -462.635453375034

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.68993030 (Davidson, fixed reference)
 Cluster corrected energies          -462.68982630 (Davidson, relaxed reference)
 Cluster corrected energies          -462.68993030 (Davidson, rotated reference)

 Cluster corrected energies          -462.68813656 (Pople, fixed reference)
 Cluster corrected energies          -462.68803050 (Pople, relaxed reference)
 Cluster corrected energies          -462.68813656 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.96972271 (fixed)   0.97000079 (relaxed)   0.96994597 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016437   -0.00055894   -0.00083285
 Singles      0.01217724   -0.06551289   -0.07155093
 Pairs        0.05058901   -0.79941077   -0.79328285
 Total        1.06293061   -0.86548260   -0.86566664
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.76978674
 Nuclear energy                         0.00000000
 Kinetic energy                       329.18003232
 One electron energy                 -801.84012129
 Two electron energy                  339.20466791
 Virial quotient                       -1.40541773
 Correlation energy                    -0.86566664
 !MRCI STATE 9.1 Energy              -462.635453373421

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.68993031 (Davidson, fixed reference)
 Cluster corrected energies          -462.68982630 (Davidson, relaxed reference)
 Cluster corrected energies          -462.68993031 (Davidson, rotated reference)

 Cluster corrected energies          -462.68813657 (Pople, fixed reference)
 Cluster corrected energies          -462.68803051 (Pople, relaxed reference)
 Cluster corrected energies          -462.68813657 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     2877.99       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     29018.30  17778.10  11232.62      6.31      0.03      0.99
 REAL TIME  *     29398.66 SEC
 DISK USED  *         2.85 GB (local),       45.62 GB (total)
 SF USED    *        17.87 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -462.71066516  AU                              
 SETTING HLSDIAG(12)    =      -462.69785562  AU                              
 SETTING HLSDIAG(13)    =      -462.69785549  AU                              
 SETTING HLSDIAG(14)    =      -462.69785536  AU                              
 SETTING HLSDIAG(15)    =      -462.69785536  AU                              
 SETTING HLSDIAG(16)    =      -462.69785527  AU                              
 SETTING HLSDIAG(17)    =      -462.68982623  AU                              
 SETTING HLSDIAG(18)    =      -462.68982630  AU                              
 SETTING HLSDIAG(19)    =      -462.68982630  AU                              


         HLSDIAG
    -463.1368927
    -462.6942015
    -462.6942014
    -462.6942007
    -462.6942008
    -462.6942008
    -462.6903475
    -462.6903475
    -462.6903474
    -462.6668303
    -462.7106652
    -462.6978556
    -462.6978555
    -462.6978554
    -462.6978554
    -462.6978553
    -462.6898262
    -462.6898263
    -462.6898263
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=  10

 Original energies:   -463.076914   -462.639923   -462.639923   -462.639923   -462.639923   -462.639923   -462.635614   -462.635614
                      -462.635614   -462.609423
 Replaced energies:   -463.136893   -462.694202   -462.694201   -462.694201   -462.694201   -462.694201   -462.690348   -462.690348
                      -462.690347   -462.666830

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:   -462.656857   -462.643652   -462.643652   -462.643652   -462.643652   -462.643652   -462.635453   -462.635453
                      -462.635453
 Replaced energies:   -462.710665   -462.697856   -462.697855   -462.697855   -462.697855   -462.697855   -462.689826   -462.689826
                      -462.689826



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -463.13689266

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   97159.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   97159.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   97159.66       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   97159.64       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   97159.64       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   98005.33       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   98005.33       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   98005.35       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  103166.76
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00      -0.00     -18.47      -2.00     946.39       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -946.57      -2.00       0.00

   12   2.1  1.0  1.0      -0.00      -0.11       1.00    -157.86     -33.16      -0.41      12.91       1.39    -659.57       0.00
                            0.00     -22.86     -62.99       1.52       4.35   -1073.69       0.00    -398.86      -0.84       0.00

   13   3.1  1.0  1.0      -0.00      -0.90       8.39   -1306.69    -274.96      -3.44      -1.67      -0.17      79.67      -0.00
                           -0.00      17.35      47.34      -1.13      -3.34     805.78       0.06    -531.46      -1.12       0.00

   14   4.1  1.0  1.0       0.00      13.86      37.25      -0.96      -2.72     671.35      -0.00     575.46       1.22      -0.00
                            0.00      -0.47       4.15    -658.33    -137.36      -1.72      10.31       1.22    -575.37       0.00

   15   5.1  1.0  1.0       0.00       1.80       0.77     138.68    -658.07      -2.55    -575.36       0.02     -11.29       0.00
                           -0.00    1266.17     450.67       1.67       1.98     -53.51       0.72       0.08       0.01      -0.00

   16   6.1  1.0  1.0      -0.00    -240.86   -1320.77      -8.17      -1.67      81.47      -0.72      -0.92      -0.01      -0.00
                            0.00       0.08       1.43    -137.36     658.34       2.47    -575.37      -0.04     -10.31       0.00

   17   7.1  1.0  1.0    -783.27     649.74    -119.67      -1.46       1.40     -19.07      -0.00     -14.37      -0.03    -865.64
                           -0.00      -1.28       0.82    -129.80     557.51       2.05    -669.12       0.06     -27.43      -0.00

   18   8.1  1.0  1.0      -0.00       1.28      -0.74     117.81    -560.17      -2.09    -669.56       0.03     -13.07      -0.00
                          783.45     222.58    -621.56      -4.23       0.32      31.72      -0.00       0.00       0.00     865.84

   19   9.1  1.0  1.0      16.81     -26.07     -30.94       0.84       2.29    -571.04       0.00    -669.53      -1.41      18.58
                           -0.00      -0.37       3.52    -557.50    -129.80      -1.51      27.43       1.41    -669.12       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00   -1338.40       0.06     -26.12      -0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       3.90      -2.27     360.13   -1712.03      -6.38    -368.80       0.02      -7.25       0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.66      -0.97     153.49    -730.72      -2.83     864.14       0.05      17.03      -0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1450.07   -1230.31      -9.49       2.78      42.90       0.00      -1.30      -0.00      -0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.69       5.80    -930.72    -195.70      -3.62     -16.08      -0.71     813.67      -0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      17.83      57.63      -2.47      -4.17     949.17       0.07    -813.83      -0.71      -0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -23.77     -30.11     -62.62       1.06       3.24    -806.61      -0.00     946.86       2.00     -26.27

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.56      -5.00     792.19     166.61       2.08      18.48       2.00    -946.89       0.00

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1107.71    -604.17    -709.58      -3.91      -1.53      71.82       0.00     -20.32      -0.04   -1224.20

   29   1.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00      -0.00     -18.47      -2.00     946.39       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     946.57       2.00      -0.00

   30   2.1  1.0 -1.0      -0.00      -0.11       1.00    -157.86     -33.16      -0.41      12.91       1.39    -659.57       0.00
                           -0.00      22.86      62.99      -1.52      -4.35    1073.69      -0.00     398.86       0.84      -0.00

   31   3.1  1.0 -1.0      -0.00      -0.90       8.39   -1306.69    -274.96      -3.44      -1.67      -0.17      79.67      -0.00
                            0.00     -17.35     -47.34       1.13       3.34    -805.78      -0.06     531.46       1.12      -0.00

   32   4.1  1.0 -1.0       0.00      13.86      37.25      -0.96      -2.72     671.35      -0.00     575.46       1.22      -0.00
                           -0.00       0.47      -4.15     658.33     137.36       1.72     -10.31      -1.22     575.37      -0.00

   33   5.1  1.0 -1.0       0.00       1.80       0.77     138.68    -658.07      -2.55    -575.36       0.02     -11.29       0.00
                            0.00   -1266.17    -450.67      -1.67      -1.98      53.51      -0.72      -0.08      -0.01       0.00

   34   6.1  1.0 -1.0      -0.00    -240.86   -1320.77      -8.17      -1.67      81.47      -0.72      -0.92      -0.01      -0.00
                           -0.00      -0.08      -1.43     137.36    -658.34      -2.47     575.37       0.04      10.31      -0.00

   35   7.1  1.0 -1.0    -783.27     649.74    -119.67      -1.46       1.40     -19.07      -0.00     -14.37      -0.03    -865.64
                            0.00       1.28      -0.82     129.80    -557.51      -2.05     669.12      -0.06      27.43       0.00

   36   8.1  1.0 -1.0      -0.00       1.28      -0.74     117.81    -560.17      -2.09    -669.56       0.03     -13.07      -0.00
                         -783.45    -222.58     621.56       4.23      -0.32     -31.72       0.00      -0.00      -0.00    -865.84

   37   9.1  1.0 -1.0      16.81     -26.07     -30.94       0.84       2.29    -571.04       0.00    -669.53      -1.41      18.58
                            0.00       0.37      -3.52     557.50     129.80       1.51     -27.43      -1.41     669.12      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00      -0.00    -783.27      -0.00      16.81       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00    -783.45       0.00       0.00

    2   2.1  0.0  0.0      -0.00      -0.11      -0.90      13.86       1.80    -240.86     649.74       1.28     -26.07       0.00
                            0.00      22.86     -17.35       0.47   -1266.17      -0.08       1.28    -222.58       0.37       0.00

    3   3.1  0.0  0.0       0.00       1.00       8.39      37.25       0.77   -1320.77    -119.67      -0.74     -30.94       0.00
                            0.00      62.99     -47.34      -4.15    -450.67      -1.43      -0.82     621.56      -3.52       0.00

    4   4.1  0.0  0.0       0.00    -157.86   -1306.69      -0.96     138.68      -8.17      -1.46     117.81       0.84       0.00
                            0.00      -1.52       1.13     658.33      -1.67     137.36     129.80       4.23     557.50       0.00

    5   5.1  0.0  0.0       0.00     -33.16    -274.96      -2.72    -658.07      -1.67       1.40    -560.17       2.29       0.00
                            0.00      -4.35       3.34     137.36      -1.98    -658.34    -557.51      -0.32     129.80      -0.00

    6   6.1  0.0  0.0      -0.00      -0.41      -3.44     671.35      -2.55      81.47     -19.07      -2.09    -571.04       0.00
                           -0.00    1073.69    -805.78       1.72      53.51      -2.47      -2.05     -31.72       1.51      -0.00

    7   7.1  0.0  0.0     -18.47      12.91      -1.67      -0.00    -575.36      -0.72      -0.00    -669.56       0.00       0.00
                           -0.00      -0.00      -0.06     -10.31      -0.72     575.37     669.12       0.00     -27.43    1338.40

    8   8.1  0.0  0.0      -2.00       1.39      -0.17     575.46       0.02      -0.92     -14.37       0.03    -669.53       0.00
                          946.57     398.86     531.46      -1.22      -0.08       0.04      -0.06      -0.00      -1.41      -0.06

    9   9.1  0.0  0.0     946.39    -659.57      79.67       1.22     -11.29      -0.01      -0.03     -13.07      -1.41       0.00
                            2.00       0.84       1.12     575.37      -0.01      10.31      27.43      -0.00     669.12      26.12

   10  10.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -0.00    -865.64      -0.00      18.58       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -865.84      -0.00       0.00

   11   1.1  1.0  1.0   93546.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02
                            0.02      -0.01       0.02       0.00      -0.01       0.03      33.16      -0.02    1546.74      -0.00

   12   2.1  1.0  1.0       0.00   96357.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02
                            0.01       0.00      -0.00   -1506.27       0.01       2.45       9.15       0.01     429.15      -0.01

   13   3.1  1.0  1.0       0.00       0.00   96357.52       0.00       0.00       0.00       0.00       0.00       0.00      -0.01
                           -0.02       0.00       0.02    -642.86      -0.11       0.86     -21.39       0.08   -1005.54      -0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00   96357.55       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1506.27     642.86       0.00       1.27       0.07       0.00      -1.53      -0.00       0.02

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   96357.55       0.00       0.00       0.00       0.00      -0.01
                            0.01      -0.01       0.11      -1.27      -0.04    -818.85     946.80       1.21     -20.09       0.03

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   96357.57       0.00       0.00       0.00       0.00
                           -0.03      -2.45      -0.86      -0.07     818.85       0.01       1.17    -946.94      -0.14      -0.03

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   98119.74       0.00       0.00    1093.76
                          -33.16      -9.15      21.39      -0.00    -946.80      -1.17       0.03     811.53       0.00      -0.00

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   98119.73       0.00       0.00
                            0.02      -0.01      -0.08       1.53      -1.21     946.94    -811.53       0.01      17.43   -1094.03

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   98119.72     -23.47
                        -1546.74    -429.15    1005.54       0.00      20.09       0.14      -0.00     -17.43      -0.00      -0.01

   20   1.1  1.0  0.0      -0.02       0.02      -0.01       0.00      -0.01       0.00    1093.76       0.00     -23.47   93546.12
                            0.00       0.01       0.00      -0.02      -0.03       0.03       0.00    1094.03       0.01       0.00

   21   2.1  1.0  0.0      -0.02       0.03      -0.00      -0.19       0.17    -138.88    -767.55       0.01      16.43       0.00
                            0.00      -0.00       0.15      -0.02     926.23       1.15      -0.01     464.17       0.02      -0.00

   22   3.1  1.0  0.0       0.00      -0.02       0.01      -1.95       1.42   -1149.69      92.72      -0.01      -1.85       0.00
                            0.00      -0.13      -0.00       0.06    -695.14      -0.84       0.00     618.52       0.07      -0.00

   23   4.1  1.0  0.0       0.00       0.19       1.95      -0.00     579.02       0.70      -0.01     669.71       0.00       0.00
                            0.00      -0.00      -0.06      -0.00      -0.71     579.02     669.52       0.00     -15.43      -0.00

   24   5.1  1.0  0.0       0.00      -0.10      -1.39    -578.91      -0.03       0.78      14.01      -0.02     669.74       0.00
                           -0.01    -926.11     695.18       0.63      -0.06       0.04       0.02      -0.11       0.94      -0.00

   25   6.1  1.0  0.0      -0.00     138.87    1149.69      -0.67      -1.16      -0.02       0.04      -1.07       0.91       0.00
                           -0.01      -1.10       0.88    -579.02      -0.09       0.01     -15.44       0.07    -669.52      -0.00

   26   7.1  1.0  0.0   -1093.71     767.50     -92.72       0.06     -14.31      -0.03      -0.01     -12.31       0.08       0.00
                           -0.01       0.05       0.02    -669.47      -0.04      15.46      -0.00       0.00    -574.03      -0.00

   27   8.1  1.0  0.0      -0.00       0.06       0.03    -669.55      -0.03       0.72      12.01      -0.01     574.10       0.00
                        -1093.97    -464.03    -618.39      -0.07       0.04      -0.09      -0.00      -0.02       0.10      -0.00

   28   9.1  1.0  0.0      23.47     -16.43       1.85      -0.00    -669.50      -0.81       0.01    -573.90      -0.00       0.00
                           -0.00      -0.00      -0.07      15.43      -0.83     669.47     574.04       0.00      -0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1093.71
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1093.97

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      23.47
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      23.77       0.00    1107.71       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.11
                           -3.90      -1.66   -1450.07       0.69     -17.83      30.11      -0.56     604.17      -0.00     -22.86

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.00
                            2.27       0.97    1230.31      -5.80     -57.63      62.62       5.00     709.58      -0.00     -62.99

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -157.86
                         -360.13    -153.49       9.49     930.72       2.47      -1.06    -792.19       3.91      -0.00       1.52

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -33.16
                         1712.03     730.72      -2.78     195.70       4.17      -3.24    -166.61       1.53      -0.00       4.35

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.41
                            6.38       2.83     -42.90       3.62    -949.17     806.61      -2.08     -71.82       0.00   -1073.69

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -18.47      12.91
                          368.80    -864.14      -0.00      16.08      -0.07       0.00     -18.48      -0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.00       1.39
                           -0.02      -0.05       1.30       0.71     813.83    -946.86      -2.00      20.32    -946.57    -398.86

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     946.39    -659.57
                            7.25     -17.03       0.00    -813.67       0.71      -2.00     946.89       0.04      -2.00      -0.84

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      26.27      -0.00    1224.20       0.00       0.00

   11   1.1  1.0  1.0      -0.02       0.00       0.00       0.00      -0.00   -1093.71      -0.00      23.47       0.00       0.00
                           -0.00      -0.00      -0.00       0.01       0.01       0.01    1093.97       0.00       0.00       0.00

   12   2.1  1.0  1.0       0.03      -0.02       0.19      -0.10     138.87     767.50       0.06     -16.43       0.00       0.00
                            0.00       0.13       0.00     926.11       1.10      -0.05     464.03       0.00       0.00       0.00

   13   3.1  1.0  1.0      -0.00       0.01       1.95      -1.39    1149.69     -92.72       0.03       1.85       0.00       0.00
                           -0.15       0.00       0.06    -695.18      -0.88      -0.02     618.39       0.07       0.00       0.00

   14   4.1  1.0  1.0      -0.19      -1.95      -0.00    -578.91      -0.67       0.06    -669.55      -0.00       0.00       0.00
                            0.02      -0.06       0.00      -0.63     579.02     669.47       0.07     -15.43       0.00       0.00

   15   5.1  1.0  1.0       0.17       1.42     579.02      -0.03      -1.16     -14.31      -0.03    -669.50       0.00       0.00
                         -926.23     695.14       0.71       0.06       0.09       0.04      -0.04       0.83       0.00       0.00

   16   6.1  1.0  1.0    -138.88   -1149.69       0.70       0.78      -0.02      -0.03       0.72      -0.81       0.00       0.00
                           -1.15       0.84    -579.02      -0.04      -0.01     -15.46       0.09    -669.47       0.00       0.00

   17   7.1  1.0  1.0    -767.55      92.72      -0.01      14.01       0.04      -0.01      12.01       0.01       0.00       0.00
                            0.01      -0.00    -669.52      -0.02      15.44       0.00       0.00    -574.04       0.00       0.00

   18   8.1  1.0  1.0       0.01      -0.01     669.71      -0.02      -1.07     -12.31      -0.01    -573.90       0.00       0.00
                         -464.17    -618.52      -0.00       0.11      -0.07      -0.00       0.02      -0.00       0.00       0.00

   19   9.1  1.0  1.0      16.43      -1.85       0.00     669.74       0.91       0.08     574.10      -0.00       0.00       0.00
                           -0.02      -0.07      15.43      -0.94     669.52     574.03      -0.10       0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02      -0.02
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   21   2.1  1.0  0.0   96357.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02       0.03
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.00

   22   3.1  1.0  0.0       0.00   96357.52       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.15

   23   4.1  1.0  0.0       0.00       0.00   96357.55       0.00       0.00       0.00       0.00       0.00       0.00      -0.19
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02       0.02

   24   5.1  1.0  0.0       0.00       0.00       0.00   96357.55       0.00       0.00       0.00       0.00      -0.01       0.17
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.03    -926.23

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   96357.57       0.00       0.00       0.00       0.00    -138.88
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.03      -1.15

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   98119.74       0.00       0.00    1093.76    -767.55
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.01

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   98119.73       0.00       0.00       0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00   -1094.03    -464.17

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   98119.72     -23.47      16.43
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.01      -0.02

   29   1.1  1.0 -1.0       0.02      -0.01       0.00      -0.01       0.00    1093.76       0.00     -23.47   93546.12       0.00
                            0.01       0.00      -0.02      -0.03       0.03       0.00    1094.03       0.01      -0.02       0.01

   30   2.1  1.0 -1.0       0.03      -0.00      -0.19       0.17    -138.88    -767.55       0.01      16.43       0.00   96357.49
                           -0.00       0.15      -0.02     926.23       1.15      -0.01     464.17       0.02      -0.01      -0.00

   31   3.1  1.0 -1.0      -0.02       0.01      -1.95       1.42   -1149.69      92.72      -0.01      -1.85       0.00       0.00
                           -0.13      -0.00       0.06    -695.14      -0.84       0.00     618.52       0.07       0.02      -0.00

   32   4.1  1.0 -1.0       0.19       1.95      -0.00     579.02       0.70      -0.01     669.71       0.00       0.00       0.00
                           -0.00      -0.06      -0.00      -0.71     579.02     669.52       0.00     -15.43       0.00   -1506.27

   33   5.1  1.0 -1.0      -0.10      -1.39    -578.91      -0.03       0.78      14.01      -0.02     669.74       0.00       0.00
                         -926.11     695.18       0.63      -0.06       0.04       0.02      -0.11       0.94      -0.01       0.01

   34   6.1  1.0 -1.0     138.87    1149.69      -0.67      -1.16      -0.02       0.04      -1.07       0.91       0.00       0.00
                           -1.10       0.88    -579.02      -0.09       0.01     -15.44       0.07    -669.52       0.03       2.45

   35   7.1  1.0 -1.0     767.50     -92.72       0.06     -14.31      -0.03      -0.01     -12.31       0.08       0.00       0.00
                            0.05       0.02    -669.47      -0.04      15.46      -0.00       0.00    -574.03      33.16       9.15

   36   8.1  1.0 -1.0       0.06       0.03    -669.55      -0.03       0.72      12.01      -0.01     574.10       0.00       0.00
                         -464.03    -618.39      -0.07       0.04      -0.09      -0.00      -0.02       0.10      -0.02       0.01

   37   9.1  1.0 -1.0     -16.43       1.85      -0.00    -669.50      -0.81       0.01    -573.90      -0.00       0.00       0.00
                           -0.00      -0.07      15.43      -0.83     669.47     574.04       0.00      -0.00    1546.74     429.15


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0      -0.00       0.00       0.00      -0.00    -783.27      -0.00      16.81
                           -0.00       0.00      -0.00       0.00      -0.00     783.45      -0.00

    2   2.1  0.0  0.0      -0.90      13.86       1.80    -240.86     649.74       1.28     -26.07
                           17.35      -0.47    1266.17       0.08      -1.28     222.58      -0.37

    3   3.1  0.0  0.0       8.39      37.25       0.77   -1320.77    -119.67      -0.74     -30.94
                           47.34       4.15     450.67       1.43       0.82    -621.56       3.52

    4   4.1  0.0  0.0   -1306.69      -0.96     138.68      -8.17      -1.46     117.81       0.84
                           -1.13    -658.33       1.67    -137.36    -129.80      -4.23    -557.50

    5   5.1  0.0  0.0    -274.96      -2.72    -658.07      -1.67       1.40    -560.17       2.29
                           -3.34    -137.36       1.98     658.34     557.51       0.32    -129.80

    6   6.1  0.0  0.0      -3.44     671.35      -2.55      81.47     -19.07      -2.09    -571.04
                          805.78      -1.72     -53.51       2.47       2.05      31.72      -1.51

    7   7.1  0.0  0.0      -1.67      -0.00    -575.36      -0.72      -0.00    -669.56       0.00
                            0.06      10.31       0.72    -575.37    -669.12      -0.00      27.43

    8   8.1  0.0  0.0      -0.17     575.46       0.02      -0.92     -14.37       0.03    -669.53
                         -531.46       1.22       0.08      -0.04       0.06       0.00       1.41

    9   9.1  0.0  0.0      79.67       1.22     -11.29      -0.01      -0.03     -13.07      -1.41
                           -1.12    -575.37       0.01     -10.31     -27.43       0.00    -669.12

   10  10.1  0.0  0.0      -0.00      -0.00       0.00      -0.00    -865.64      -0.00      18.58
                            0.00       0.00      -0.00       0.00      -0.00     865.84       0.00

   11   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00      -0.00   -1093.71      -0.00      23.47
                           -0.00      -0.00       0.01       0.01       0.01    1093.97       0.00

   21   2.1  1.0  0.0      -0.02       0.19      -0.10     138.87     767.50       0.06     -16.43
                            0.13       0.00     926.11       1.10      -0.05     464.03       0.00

   22   3.1  1.0  0.0       0.01       1.95      -1.39    1149.69     -92.72       0.03       1.85
                            0.00       0.06    -695.18      -0.88      -0.02     618.39       0.07

   23   4.1  1.0  0.0      -1.95      -0.00    -578.91      -0.67       0.06    -669.55      -0.00
                           -0.06       0.00      -0.63     579.02     669.47       0.07     -15.43

   24   5.1  1.0  0.0       1.42     579.02      -0.03      -1.16     -14.31      -0.03    -669.50
                          695.14       0.71       0.06       0.09       0.04      -0.04       0.83

   25   6.1  1.0  0.0   -1149.69       0.70       0.78      -0.02      -0.03       0.72      -0.81
                            0.84    -579.02      -0.04      -0.01     -15.46       0.09    -669.47

   26   7.1  1.0  0.0      92.72      -0.01      14.01       0.04      -0.01      12.01       0.01
                           -0.00    -669.52      -0.02      15.44       0.00       0.00    -574.04

   27   8.1  1.0  0.0      -0.01     669.71      -0.02      -1.07     -12.31      -0.01    -573.90
                         -618.52      -0.00       0.11      -0.07      -0.00       0.02      -0.00

   28   9.1  1.0  0.0      -1.85       0.00     669.74       0.91       0.08     574.10      -0.00
                           -0.07      15.43      -0.94     669.52     574.03      -0.10       0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02      -0.00       0.01      -0.03     -33.16       0.02   -1546.74

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1506.27      -0.01      -2.45      -9.15      -0.01    -429.15

   31   3.1  1.0 -1.0   96357.52       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02     642.86       0.11      -0.86      21.39      -0.08    1005.54

   32   4.1  1.0 -1.0       0.00   96357.55       0.00       0.00       0.00       0.00       0.00
                         -642.86      -0.00      -1.27      -0.07      -0.00       1.53       0.00

   33   5.1  1.0 -1.0       0.00       0.00   96357.55       0.00       0.00       0.00       0.00
                           -0.11       1.27       0.04     818.85    -946.80      -1.21      20.09

   34   6.1  1.0 -1.0       0.00       0.00       0.00   96357.57       0.00       0.00       0.00
                            0.86       0.07    -818.85      -0.01      -1.17     946.94       0.14

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   98119.74       0.00       0.00
                          -21.39       0.00     946.80       1.17      -0.03    -811.53      -0.00

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   98119.73       0.00
                            0.08      -1.53       1.21    -946.94     811.53      -0.01     -17.43

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   98119.72
                        -1005.54      -0.00     -20.09      -0.14       0.00      17.43       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by   -463.13689266 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   97159.473       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   97159.508       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   97159.655       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   97159.644       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   97159.643       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   98005.333       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   98005.332
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000     -26.124      -2.828
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -0.158       1.409    -223.245     -46.891      -0.586      18.258       1.971
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000      -1.274      11.858   -1847.943    -388.853      -4.862      -2.363      -0.238
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      19.596      52.685      -1.363      -3.850     949.426      -0.002     813.829
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       2.544       1.087     196.121    -930.645      -3.611    -813.675       0.034
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000    -340.624   -1867.847     -11.553      -2.366     115.210      -1.013      -1.297
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+          -1107.711     918.870    -169.234      -2.066       1.983     -26.967      -0.000     -20.319
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000       1.804      -1.051     166.613    -792.197      -2.951    -946.896       0.039
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             23.771     -36.864     -43.757       1.189       3.232    -807.566       0.000    -946.856
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.001       0.000   -1338.403       0.055

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       3.899      -2.272     360.132   -1712.027      -6.377    -368.803       0.016

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       1.662      -0.974     153.487    -730.715      -2.825     864.137       0.052

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1450.070   -1230.307      -9.488       2.780      42.897       0.000      -1.297

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.686       5.801    -930.716    -195.701      -3.623     -16.080      -0.707

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      17.826      57.630      -2.471      -4.175     949.170       0.074    -813.830

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -23.771     -30.110     -62.616       1.061       3.242    -806.606      -0.000     946.855

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.562      -4.997     792.188     166.612       2.078      18.482       2.001

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1107.712    -604.169    -709.579      -3.914      -1.525      71.817       0.000     -20.319

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.001       0.000   -1338.655

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -32.327     -89.079       2.151       6.152   -1518.421       0.001    -564.072

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      24.538      66.951      -1.593      -4.718    1139.548       0.088    -751.605

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.660       5.873    -931.021    -194.262      -2.436      14.585       1.719

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1790.628     637.343       2.359       2.801     -75.674       1.013       0.116

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.112       2.026    -194.262     931.037       3.499    -813.700      -0.051

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -1.816       1.158    -183.572     788.441       2.905    -946.280       0.082

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1107.967     314.773    -879.015      -5.982       0.458      44.860      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.523       4.973    -788.431    -183.570      -2.141      38.794       2.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000      -0.000      -0.158      -1.274      19.596       2.544    -340.624
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       1.409      11.858      52.685       1.087   -1867.847
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000    -223.245   -1847.943      -1.363     196.121     -11.553
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000     -46.891    -388.853      -3.850    -930.645      -2.366
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000      -0.000      -0.586      -4.862     949.426      -3.611     115.210
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000     -26.124      18.258      -2.363      -0.002    -813.675      -1.013
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000      -2.828       1.971      -0.238     813.829       0.034      -1.297
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           98005.347       0.000    1338.400    -932.767     112.674       1.720     -15.964      -0.011
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000  103166.762       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+           1338.400       0.000   93546.125       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+           -932.767       0.000       0.000   96357.492       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+            112.674      -0.000       0.000       0.000   96357.523       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              1.720      -0.000       0.000       0.000       0.000   96357.550       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+            -15.964       0.000       0.000       0.000       0.000       0.000   96357.551       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.011      -0.000       0.000       0.000       0.000       0.000       0.000   96357.569
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.043   -1224.204       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+            -18.482      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -2.001      26.271       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.026       0.004      -0.007       0.001      -0.002       0.000
                              -26.124      -0.000       0.000       0.004      -0.001      -0.016      -0.013       0.022

    2    1  |1 0>               0.000       0.000       0.004       0.038      -0.013       0.001       0.048      -0.005
                               -7.250       0.000      -0.004       0.000       0.197      -0.013    1309.799       1.592

    3    1  |1 0>               0.000       0.000      -0.007      -0.013       0.013       0.002       0.021       0.002
                               17.032      -0.000       0.001      -0.197       0.000       0.091    -983.103      -1.219

    4    1  |1 0>               0.000       0.000       0.001       0.001       0.002      -0.001       0.077       0.025
                               -0.001      -0.000       0.016       0.013      -0.091       0.000      -0.952     818.856

    5    1  |1 0>               0.000       0.000      -0.002       0.048       0.021       0.077      -0.039      -0.264
                              813.673      -0.000       0.013   -1309.799     983.103       0.952       0.000       0.092

    6    1  |1 0>               0.000       0.000       0.000      -0.005       0.002       0.025      -0.264      -0.028
                               -0.705      -0.000      -0.022      -1.592       1.219    -818.856      -0.092       0.000

    7    1  |1 0>               0.000       0.000       0.036      -0.040       0.006       0.036      -0.217       0.010
                                2.001     -26.271      -0.006       0.040       0.010    -946.813      -0.041      21.845

    8    1  |1 0>               0.000       0.000       0.000       0.054       0.014       0.113      -0.037      -0.247
                             -946.893       0.000   -1547.152    -656.342    -874.628      -0.052       0.110      -0.112

    9    1  |1 0>               0.000       0.000      -0.001      -0.001       0.001      -0.001       0.173       0.073
                               -0.043   -1224.203      -0.010      -0.015      -0.102      21.827      -1.253     946.812

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.829       0.000       0.019      -0.007       0.022       0.003      -0.007       0.029

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.192       0.000       0.007       0.002      -0.005   -1506.274       0.006       2.454

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.587       0.000      -0.022       0.005       0.023    -642.858      -0.112       0.860

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -813.699       0.000      -0.003    1506.274     642.858       0.001       1.268       0.072

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.020      -0.000       0.007      -0.006       0.112      -1.268      -0.042    -818.850

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.585       0.000      -0.029      -2.454      -0.860      -0.072     818.850       0.006

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -38.794      -0.000     -33.160      -9.149      21.392      -0.000    -946.800      -1.169

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1224.485       0.022      -0.008      -0.080       1.528      -1.208     946.941

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -946.278       0.000   -1546.743    -429.150    1005.540       0.001      20.087       0.140

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>           -1107.711      -0.000      23.771       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |0 0>             918.870       1.804     -36.864       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -3.899      -1.662   -1450.070       0.686

    3    1  |0 0>            -169.234      -1.051     -43.757       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       2.272       0.974    1230.307      -5.801

    4    1  |0 0>              -2.066     166.613       1.189       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -360.132    -153.487       9.488     930.716

    5    1  |0 0>               1.983    -792.197       3.232       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.001    1712.027     730.715      -2.780     195.701

    6    1  |0 0>             -26.967      -2.951    -807.566       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       6.377       2.825     -42.897       3.623

    7    1  |0 0>              -0.000    -946.896       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1338.403     368.803    -864.137      -0.000      16.080

    8    1  |0 0>             -20.319       0.039    -946.856       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.055      -0.016      -0.052       1.297       0.707

    9    1  |0 0>              -0.043     -18.482      -2.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      26.124       7.250     -17.032       0.001    -813.673

   10    1  |0 0>           -1224.204      -0.000      26.271       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000      -0.026       0.004      -0.007       0.001      -0.002
                                0.000       0.000       0.000       0.000       0.004      -0.001      -0.016      -0.013

    2    1  |1 1>+              0.000       0.000       0.000       0.004       0.038      -0.013       0.001       0.048
                                0.000       0.000       0.000      -0.004       0.000       0.197      -0.013    1309.799

    3    1  |1 1>+              0.000       0.000       0.000      -0.007      -0.013       0.013       0.002       0.021
                                0.000       0.000       0.000       0.001      -0.197       0.000       0.091    -983.103

    4    1  |1 1>+              0.000       0.000       0.000       0.001       0.001       0.002      -0.001       0.077
                                0.000       0.000       0.000       0.016       0.013      -0.091       0.000      -0.952

    5    1  |1 1>+              0.000       0.000       0.000      -0.002       0.048       0.021       0.077      -0.039
                                0.000       0.000       0.000       0.013   -1309.799     983.103       0.952       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.005       0.002       0.025      -0.264
                                0.000       0.000       0.000      -0.022      -1.592       1.219    -818.856      -0.092

    7    1  |1 1>+          98119.741       0.000       0.000       0.036      -0.040       0.006       0.036      -0.217
                                0.000       0.000       0.000      -0.006       0.040       0.010    -946.813      -0.041

    8    1  |1 1>+              0.000   98119.725       0.000       0.000       0.054       0.014       0.113      -0.037
                                0.000       0.000       0.000   -1547.152    -656.342    -874.628      -0.052       0.110

    9    1  |1 1>+              0.000       0.000   98119.725      -0.001      -0.001       0.001      -0.001       0.173
                                0.000       0.000       0.000      -0.010      -0.015      -0.102      21.827      -1.253

    1    1  |1 0>               0.036       0.000      -0.001   93546.125       0.000       0.000       0.000       0.000
                                0.006    1547.152       0.010       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.040       0.054      -0.001       0.000   96357.492       0.000       0.000       0.000
                               -0.040     656.342       0.015      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.006       0.014       0.001       0.000       0.000   96357.523       0.000       0.000
                               -0.010     874.628       0.102      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.036       0.113      -0.001       0.000       0.000       0.000   96357.550       0.000
                              946.813       0.052     -21.827      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.217      -0.037       0.173       0.000       0.000       0.000       0.000   96357.551
                                0.041      -0.110       1.253      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.010      -0.247       0.073       0.000       0.000       0.000       0.000       0.000
                              -21.845       0.112    -946.812      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.017      -0.211       0.062       0.000       0.000       0.000       0.000       0.000
                                0.000       0.003    -811.805      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.211      -0.017       0.140       0.000       0.000       0.000       0.000       0.000
                               -0.003       0.000       0.068      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.062       0.140      -0.004       0.000       0.000       0.000       0.000       0.000
                              811.805      -0.068       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.027       0.014      -0.001       0.005
                               33.160      -0.022    1546.743      -0.003      -0.008      -0.002       0.012       0.023

    2    1  |1 1>-              0.000       0.000       0.000       0.027       0.000      -0.011       0.263      -0.193
                                9.149       0.008     429.150      -0.008       0.006      -0.008       0.016      -0.082

    3    1  |1 1>-              0.000       0.000       0.000      -0.014       0.011       0.000       2.754      -1.989
                              -21.392       0.080   -1005.540      -0.002      -0.008       0.001      -0.001      -0.025

    4    1  |1 1>-              0.000       0.000       0.000       0.001      -0.263      -2.754       0.000    -818.783
                                0.000      -1.528      -0.001       0.012       0.016      -0.001       0.001       0.057

    5    1  |1 1>-              0.000       0.000       0.000      -0.005       0.193       1.989     818.783       0.000
                              946.800       1.208     -20.087       0.023      -0.082      -0.025       0.057       0.078

    6    1  |1 1>-              0.000       0.000       0.000       0.002    -196.401   -1625.903       0.966       1.374
                                1.169    -946.941      -0.140      -0.014      -0.036      -0.030      -0.005       0.040

    7    1  |1 1>-              0.000       0.000       0.000    1546.777   -1085.447     131.126      -0.049      20.026
                                0.032     811.530       0.001       0.002      -0.029      -0.016      -0.038       0.014

    8    1  |1 1>-              0.000       0.000       0.000       0.001      -0.037      -0.029     946.995       0.012
                             -811.530       0.015      17.431      -0.043      -0.099      -0.087       0.052       0.047

    9    1  |1 1>-              0.000       0.000       0.000     -33.192      23.232      -2.621       0.003     946.982
                               -0.001     -17.431      -0.002      -0.007      -0.010      -0.002       0.001      -0.073

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      23.771       0.000    1107.712      -0.000      -0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -17.826      30.110      -0.562     604.169       0.000      32.327     -24.538       0.660

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -57.630      62.616       4.997     709.579       0.000      89.079     -66.951      -5.873

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.471      -1.061    -792.188       3.914       0.000      -2.151       1.593     931.021

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.175      -3.242    -166.612       1.525       0.000      -6.152       4.718     194.262

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -949.170     806.606      -2.078     -71.817      -0.001    1518.421   -1139.548       2.436

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.074       0.000     -18.482      -0.000      -0.000      -0.001      -0.088     -14.585

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              813.830    -946.855      -2.001      20.319    1338.655     564.072     751.605      -1.719

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.705      -2.001     946.893       0.043       2.829       1.192       1.587     813.699

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      26.271      -0.000    1224.203      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.036       0.000      -0.001       0.000       0.000       0.000       0.000
                                0.022       0.006    1547.152       0.010       0.019      -0.007       0.022       0.003

    2    1  |1 1>+             -0.005      -0.040       0.054      -0.001       0.000       0.000       0.000       0.000
                                1.592      -0.040     656.342       0.015       0.007       0.002      -0.005   -1506.274

    3    1  |1 1>+              0.002       0.006       0.014       0.001       0.000       0.000       0.000       0.000
                               -1.219      -0.010     874.628       0.102      -0.022       0.005       0.023    -642.858

    4    1  |1 1>+              0.025       0.036       0.113      -0.001       0.000       0.000       0.000       0.000
                              818.856     946.813       0.052     -21.827      -0.003    1506.274     642.858       0.001

    5    1  |1 1>+             -0.264      -0.217      -0.037       0.173       0.000       0.000       0.000       0.000
                                0.092       0.041      -0.110       1.253       0.007      -0.006       0.112      -1.268

    6    1  |1 1>+             -0.028       0.010      -0.247       0.073       0.000       0.000       0.000       0.000
                                0.000     -21.845       0.112    -946.812      -0.029      -2.454      -0.860      -0.072

    7    1  |1 1>+              0.010      -0.017      -0.211       0.062       0.000       0.000       0.000       0.000
                               21.845       0.000       0.003    -811.805     -33.160      -9.149      21.392      -0.000

    8    1  |1 1>+             -0.247      -0.211      -0.017       0.140       0.000       0.000       0.000       0.000
                               -0.112      -0.003       0.000       0.068       0.022      -0.008      -0.080       1.528

    9    1  |1 1>+              0.073       0.062       0.140      -0.004       0.000       0.000       0.000       0.000
                              946.812     811.805      -0.068       0.000   -1546.743    -429.150    1005.540       0.001

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.027      -0.014       0.001
                                0.000       0.000       0.000       0.000       0.003       0.008       0.002      -0.012

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.027       0.000       0.011      -0.263
                                0.000       0.000       0.000       0.000       0.008      -0.006       0.008      -0.016

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.014      -0.011       0.000      -2.754
                                0.000       0.000       0.000       0.000       0.002       0.008      -0.001       0.001

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.001       0.263       2.754       0.000
                                0.000       0.000       0.000       0.000      -0.012      -0.016       0.001      -0.001

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.005      -0.193      -1.989    -818.783
                                0.000       0.000       0.000       0.000      -0.023       0.082       0.025      -0.057

    6    1  |1 0>           96357.569       0.000       0.000       0.000      -0.002     196.401    1625.903      -0.966
                                0.000       0.000       0.000       0.000       0.014       0.036       0.030       0.005

    7    1  |1 0>               0.000   98119.741       0.000       0.000   -1546.777    1085.447    -131.126       0.049
                               -0.000       0.000       0.000       0.000      -0.002       0.029       0.016       0.038

    8    1  |1 0>               0.000       0.000   98119.725       0.000      -0.001       0.037       0.029    -946.995
                               -0.000      -0.000       0.000       0.000       0.043       0.099       0.087      -0.052

    9    1  |1 0>               0.000       0.000       0.000   98119.725      33.192     -23.232       2.621      -0.003
                               -0.000      -0.000      -0.000       0.000       0.007       0.010       0.002      -0.001

    1    1  |1 1>-             -0.002   -1546.777      -0.001      33.192   93546.125       0.000       0.000       0.000
                               -0.014       0.002      -0.043      -0.007       0.000       0.000       0.000       0.000

    2    1  |1 1>-            196.401    1085.447       0.037     -23.232       0.000   96357.492       0.000       0.000
                               -0.036      -0.029      -0.099      -0.010       0.000       0.000       0.000       0.000

    3    1  |1 1>-           1625.903    -131.126       0.029       2.621       0.000       0.000   96357.523       0.000
                               -0.030      -0.016      -0.087      -0.002       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -0.966       0.049    -946.995      -0.003       0.000       0.000       0.000   96357.550
                               -0.005      -0.038       0.052       0.001       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -1.374     -20.026      -0.012    -946.982       0.000       0.000       0.000       0.000
                                0.040       0.014       0.047      -0.073       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000      -0.049       1.259      -1.218       0.000       0.000       0.000       0.000
                               -0.020      -0.012       0.015       0.034       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.049       0.000      17.199      -0.052       0.000       0.000       0.000       0.000
                               -0.012       0.006       0.001      -0.005       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -1.259     -17.199       0.000    -811.757       0.000       0.000       0.000       0.000
                                0.015       0.001       0.027      -0.068       0.000       0.000       0.000       0.000

    9    1  |1 1>-              1.218       0.052     811.757       0.000       0.000       0.000       0.000       0.000
                                0.034      -0.005      -0.068       0.001       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000   -1107.967       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                            -1790.628      -0.112       1.816    -314.773       0.523

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             -637.343      -2.026      -1.158     879.015      -4.973

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -2.359     194.262     183.572       5.982     788.431

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -2.801    -931.037    -788.441      -0.458     183.570

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               75.674      -3.499      -2.905     -44.860       2.141

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -1.013     813.700     946.280       0.000     -38.794

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.116       0.051      -0.082      -0.000      -2.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.020      14.585      38.794      -0.000     946.278

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000   -1224.485      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.007       0.029      33.160      -0.022    1546.743

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.006       2.454       9.149       0.008     429.150

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.112       0.860     -21.392       0.080   -1005.540

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                1.268       0.072       0.000      -1.528      -0.001

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.042    -818.850     946.800       1.208     -20.087

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              818.850       0.006       1.169    -946.941      -0.140

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             -946.800      -1.169       0.032     811.530       0.001

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -1.208     946.941    -811.530       0.015      17.431

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               20.087       0.140      -0.001     -17.431      -0.002

    1    1  |1 0>              -0.005       0.002    1546.777       0.001     -33.192
                               -0.023       0.014      -0.002       0.043       0.007

    2    1  |1 0>               0.193    -196.401   -1085.447      -0.037      23.232
                                0.082       0.036       0.029       0.099       0.010

    3    1  |1 0>               1.989   -1625.903     131.126      -0.029      -2.621
                                0.025       0.030       0.016       0.087       0.002

    4    1  |1 0>             818.783       0.966      -0.049     946.995       0.003
                               -0.057       0.005       0.038      -0.052      -0.001

    5    1  |1 0>               0.000       1.374      20.026       0.012     946.982
                               -0.078      -0.040      -0.014      -0.047       0.073

    6    1  |1 0>              -1.374       0.000       0.049      -1.259       1.218
                               -0.040       0.020       0.012      -0.015      -0.034

    7    1  |1 0>             -20.026      -0.049       0.000     -17.199       0.052
                               -0.014       0.012      -0.006      -0.001       0.005

    8    1  |1 0>              -0.012       1.259      17.199       0.000     811.757
                               -0.047      -0.015      -0.001      -0.027       0.068

    9    1  |1 0>            -946.982      -1.218      -0.052    -811.757       0.000
                                0.073      -0.034       0.005       0.068      -0.001

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          96357.551       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   96357.569       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   98119.741       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   98119.725       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   98119.725
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -463.13706091    -0.00016824      -36.92      0.00000000        0.00      0.0000
    2  -462.71482497     0.42206770    92633.15      0.42223594    92670.08     11.4896
    3  -462.71482483     0.42206783    92633.18      0.42223607    92670.11     11.4896
    4  -462.71482459     0.42206807    92633.23      0.42223631    92670.16     11.4896
    5  -462.70531821     0.43157446    94719.64      0.43174270    94756.57     11.7483
    6  -462.70531791     0.43157476    94719.71      0.43174300    94756.64     11.7483
    7  -462.70531753     0.43157514    94719.79      0.43174338    94756.72     11.7483
    8  -462.70531749     0.43157517    94719.80      0.43174341    94756.73     11.7483
    9  -462.70531742     0.43157525    94719.82      0.43174349    94756.74     11.7483
   10  -462.70531665     0.43157601    94719.99      0.43174425    94756.91     11.7484
   11  -462.70531630     0.43157636    94720.06      0.43174460    94756.99     11.7484
   12  -462.70509708     0.43179559    94768.18      0.43196383    94805.10     11.7543
   13  -462.70509660     0.43179606    94768.28      0.43196430    94805.21     11.7543
   14  -462.70509643     0.43179624    94768.32      0.43196448    94805.24     11.7544
   15  -462.70509634     0.43179632    94768.34      0.43196456    94805.26     11.7544
   16  -462.70509577     0.43179689    94768.46      0.43196513    94805.39     11.7544
   17  -462.70026354     0.43662912    95829.02      0.43679736    95865.94     11.8859
   18  -462.70026340     0.43662926    95829.05      0.43679750    95865.97     11.8859
   19  -462.70026323     0.43662944    95829.08      0.43679768    95866.01     11.8859
   20  -462.69851232     0.43838035    96213.37      0.43854859    96250.29     11.9335
   21  -462.69851201     0.43838066    96213.43      0.43854890    96250.36     11.9335
   22  -462.69851117     0.43838149    96213.62      0.43854974    96250.54     11.9335
   23  -462.69851083     0.43838183    96213.69      0.43855007    96250.62     11.9336
   24  -462.69851039     0.43838227    96213.79      0.43855051    96250.71     11.9336
   25  -462.68690923     0.44998344    98759.95      0.45015168    98796.87     12.2493
   26  -462.68116649     0.45572618   100020.33      0.45589442   100057.26     12.4055
   27  -462.68116624     0.45572642   100020.39      0.45589467   100057.31     12.4055
   28  -462.68116554     0.45572712   100020.54      0.45589536   100057.47     12.4055
   29  -462.67824349     0.45864918   100661.86      0.45881742   100698.78     12.4851
   30  -462.67824289     0.45864977   100661.99      0.45881801   100698.91     12.4851
   31  -462.67824283     0.45864983   100662.00      0.45881808   100698.93     12.4851
   32  -462.67824269     0.45864998   100662.03      0.45881822   100698.96     12.4851
   33  -462.67824256     0.45865010   100662.06      0.45881835   100698.99     12.4851
   34  -462.67754876     0.45934390   100814.33      0.45951214   100851.26     12.5040
   35  -462.67754838     0.45934428   100814.42      0.45951252   100851.34     12.5040
   36  -462.67754756     0.45934511   100814.60      0.45951335   100851.52     12.5040
   37  -462.66218126     0.47471140   104187.11      0.47487964   104224.03     12.9221

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99981486  0.00000016  0.00000012 -0.00000015 -0.00000010 -0.00000028 -0.00000013 -0.00000008
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000096 -0.00000001  0.00000113 -0.00023375  0.00135289  0.00010732  0.00012244
                          -0.00000000  0.00000568 -0.00000194 -0.00000076  0.00005615  0.00016605  0.00009246  0.00001960

   3    1  |0 0>          -0.00000000 -0.00000454 -0.00000090 -0.00000317  0.00047632  0.00096681  0.00003532  0.00005615
                          -0.00000000  0.00000284  0.00000182  0.00000420  0.00020803 -0.00021956  0.00006732 -0.00000634

   4    1  |0 0>           0.00000000 -0.00000029  0.00000259 -0.00000385 -0.00050452  0.00004505  0.00006569  0.00001786
                          -0.00000000 -0.00000161  0.00000161 -0.00000078 -0.00034929 -0.00021001  0.00001879 -0.00001254

   5    1  |0 0>           0.00000000 -0.00000539  0.00000219 -0.00000103  0.00017951 -0.00014091 -0.00012350 -0.00006764
                          -0.00000000 -0.00000017 -0.00000317 -0.00000152 -0.00046193  0.00043256  0.00001786  0.00004402

   6    1  |0 0>          -0.00000000 -0.00000585  0.00000199 -0.00000219  0.00092530 -0.00013355  0.00001515  0.00012362
                           0.00000000 -0.00000037  0.00000017 -0.00000022 -0.00000004  0.00013393  0.00014397  0.00010891

   7    1  |0 0>           0.00000000  0.09027184 -0.04824249  0.01113562  0.00000555  0.00000470 -0.00000929 -0.00000177
                          -0.00000000 -0.08610317 -0.05137635  0.05559125 -0.00004912  0.00000109  0.00001805  0.00000609

   8    1  |0 0>           0.00000000 -0.02579586 -0.03027655  0.07860207  0.00000118 -0.00000043  0.00000164  0.00000460
                           0.00000000  0.03637572 -0.11161574 -0.04693918  0.00001345  0.00001132  0.00000316 -0.00000060

   9    1  |0 0>          -0.00000000 -0.05622624  0.01362935 -0.10673190  0.00000906 -0.00000943  0.00000221 -0.00000132
                          -0.00000000 -0.05505674 -0.07222850 -0.02753278  0.00000815  0.00002108  0.00000110  0.00000442

  10    1  |0 0>           0.00039534 -0.00000159 -0.00000118  0.00000147  0.00000130  0.00000347  0.00000157  0.00000097
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.35393700 -0.08941491  0.65439850 -0.00000400 -0.00000297  0.00000007 -0.00000011
                          -0.00000000  0.32656775  0.43370959  0.17422201  0.00000826 -0.00000177  0.00000054  0.00000228

   2    1  |1 1>+          0.00000000  0.00519299 -0.00130925  0.00960533 -0.01314882  0.04331195  0.34390976  0.00873105
                          -0.00000000  0.00479498  0.00636609  0.00255099 -0.22311702 -0.24207622 -0.05198044  0.48152527

   3    1  |1 1>+          0.00000000 -0.00062250  0.00015896 -0.00116233  0.00162953  0.02280889  0.18316018  0.02381858
                          -0.00000000 -0.00057712 -0.00076062 -0.00030772  0.26516604  0.22056600 -0.01654581  0.21606886

   4    1  |1 1>+          0.00000000 -0.00201947 -0.00236862  0.00613540 -0.07024601  0.10274286 -0.16153841  0.44191462
                          -0.00000000  0.00284005 -0.00874982 -0.00368132  0.01477761 -0.02792055  0.44663906  0.12286128

   5    1  |1 1>+          0.00000001 -0.00698053  0.00376384 -0.00070410  0.01788142 -0.00731524  0.11261546  0.07762534
                          -0.00000002  0.00681739  0.00412461 -0.00429723 -0.20178409  0.44705462 -0.14269384 -0.02435580

   6    1  |1 1>+         -0.00000001 -0.00001271  0.00000290 -0.00001931  0.19820561  0.08129502 -0.10198778 -0.04843038
                          -0.00000001  0.00001143  0.00002937  0.00001432 -0.05517404  0.04501205 -0.10409331 -0.04073085

   7    1  |1 1>+          0.01110431  0.00075600  0.00088275 -0.00230081 -0.00004845  0.00034518  0.00001706  0.00002480
                          -0.00000001 -0.00106313  0.00328051  0.00138631  0.00001007  0.00004533  0.00000822 -0.00000288

   8    1  |1 1>+          0.00000001 -0.12217546  0.06573602 -0.01238477 -0.00004881  0.00003622  0.00002682  0.00001921
                          -0.00000002  0.11944337  0.07230917 -0.07542166  0.00007328 -0.00004056  0.00001158 -0.00000527

   9    1  |1 1>+         -0.00023829  0.03550364  0.04143701 -0.10737091 -0.00026434  0.00000067 -0.00000228 -0.00002746
                           0.00000000 -0.04966892  0.15311028  0.06437489  0.00002331 -0.00002089 -0.00003474 -0.00002665

   1    1  |1 0>          -0.00000001  0.53263228  0.32246413 -0.33634751  0.00001982  0.00000183 -0.00001191 -0.00000461
                          -0.00000000  0.54481533 -0.29311244  0.05525750  0.00000159  0.00000396 -0.00000609 -0.00000331

   2    1  |1 0>          -0.00000001 -0.00310138 -0.00187268  0.00196280 -0.12412025  0.39220480 -0.10238029 -0.01262781
                           0.00000000 -0.00316876  0.00169639 -0.00031628 -0.02281842 -0.00878427 -0.08463029 -0.06304253

   3    1  |1 0>          -0.00000001  0.00724819  0.00438430 -0.00457919  0.42543709  0.02245133  0.18407180  0.07213598
                          -0.00000000  0.00741972 -0.00398673  0.00075479 -0.06094669 -0.12327427  0.11328838  0.03902249

   4    1  |1 0>           0.00000000  0.00001059 -0.00000945 -0.00000338 -0.05535144  0.04498347 -0.10327626 -0.04047073
                          -0.00000001 -0.00000187  0.00000589 -0.00000703 -0.19789309 -0.08006894  0.10261157  0.04796006

   5    1  |1 0>           0.00000003  0.00417640  0.00557111  0.00225497  0.38349819  0.34399649  0.00594817  0.01119269
                          -0.00000000 -0.00455089  0.00114998 -0.00838494 -0.00794913 -0.00500315 -0.03874264 -0.02141241

   6    1  |1 0>           0.00000000  0.00283124 -0.00873841 -0.00367187 -0.07010151  0.08303153 -0.01152676  0.01961617
                           0.00000003  0.00204148  0.00236764 -0.00615451 -0.36304748  0.37238633  0.13113938  0.07474945

   7    1  |1 0>           0.00000000 -0.04967856  0.15312021  0.06438037 -0.00000472  0.00002637  0.00004124  0.00002662
                           0.00023832 -0.03549576 -0.04143931  0.10736647 -0.00026402  0.00001025 -0.00000445 -0.00003187

   8    1  |1 0>           0.00000003 -0.07323766 -0.09726111 -0.03905379  0.00015756  0.00003572 -0.00000881  0.00000219
                           0.00000000  0.07936541 -0.02005574  0.14674230 -0.00012118  0.00000656  0.00000670 -0.00000049

   9    1  |1 0>          -0.00000002  0.00106805 -0.00329183 -0.00137699  0.00007186 -0.00002923  0.00002964 -0.00000286
                           0.01110429  0.00075904  0.00089008 -0.00230277 -0.00000135 -0.00047170 -0.00001183 -0.00002867

   1    1  |1 1>-         -0.00000000 -0.22156016  0.68296719  0.28717253 -0.00000629 -0.00000243  0.00000193  0.00000036
                           0.00000000 -0.15835204 -0.18483120  0.47892243  0.00001019 -0.00001137  0.00000150  0.00000138

   2    1  |1 1>-         -0.00000000  0.00196486 -0.00606749 -0.00255185 -0.00521413  0.01567406 -0.40972913 -0.11553355
                          -0.00000000  0.00139874  0.00164456 -0.00425738 -0.02019031  0.04968417 -0.16414516  0.39770272

   3    1  |1 1>-         -0.00000000  0.00262396 -0.00807960 -0.00340290  0.06433334 -0.07104540 -0.16361356 -0.06754128
                           0.00000000  0.00187173  0.00218325 -0.00565939  0.33220301 -0.32921817 -0.19377799  0.09907276

   4    1  |1 1>-          0.00000000 -0.00419287 -0.00556551 -0.00221884  0.09143423  0.03648547 -0.05117762  0.53338745
                           0.00000000  0.00451810 -0.00113744  0.00838042  0.00679219 -0.05128419 -0.40736359 -0.02804202

   5    1  |1 1>-         -0.00000001  0.00001830 -0.00000864 -0.00000731  0.05487931 -0.04486123  0.10326367  0.04046297
                           0.00000002  0.00000967 -0.00000486 -0.00000496  0.19785433  0.07887937 -0.10258868 -0.04800721

   6    1  |1 1>-          0.00000000 -0.00682561 -0.00413383  0.00430658  0.30622607  0.29304864  0.09922852  0.05712146
                           0.00000001 -0.00696987  0.00375574 -0.00070406 -0.07226922 -0.11952923  0.04667929 -0.00754515

   7    1  |1 1>-         -0.00000000 -0.12098497 -0.07438190  0.07456949  0.00012416 -0.00004880 -0.00000776 -0.00001063
                           0.00000000 -0.12044094  0.06528304 -0.00923748  0.00005865 -0.00003407 -0.00003668 -0.00001926

   8    1  |1 1>-         -0.00000001 -0.00000077 -0.00000077 -0.00000026  0.00006219 -0.00007443  0.00002158  0.00000003
                          -0.01110686  0.00000511  0.00000450 -0.00000810 -0.00005866 -0.00015018 -0.00000569 -0.00001066

   9    1  |1 1>-         -0.00000000 -0.07064700 -0.09567758 -0.04068166 -0.00016422 -0.00005851  0.00000807 -0.00000556
                           0.00000000  0.08196671 -0.02145480  0.14696949  0.00012854 -0.00000989 -0.00000456 -0.00000077

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000015 -0.00000042 -0.00000061  0.00000022 -0.00000012  0.00000013 -0.00000011  0.00000058
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00005982  0.00068414  0.00071806  0.02237218  0.15110244  0.20974665 -0.07969477  0.13733158
                           0.00029323 -0.00010793 -0.00029277  0.49547391  0.22008176  0.08552052  0.08530356  0.03198778

   3    1  |0 0>           0.00023264  0.00142678  0.00072213  0.06131790 -0.27979212 -0.07593291 -0.09845114  0.31011823
                           0.00014488  0.00004750  0.00053732  0.20422718 -0.32445195 -0.09847568 -0.20919655  0.08937478

   4    1  |0 0>           0.00009762 -0.00023530 -0.00007183  0.20718209 -0.27397011  0.05337200  0.15085468 -0.15816462
                           0.00015977  0.00106024  0.00005310  0.01885057  0.19485161 -0.13214461  0.05905310  0.41735364

   5    1  |0 0>          -0.00025912  0.00025701  0.00074333 -0.13340573  0.06311074 -0.11674080 -0.31701985  0.04843261
                          -0.00023922  0.00088542  0.00018929 -0.02767866 -0.04157143 -0.32012308  0.37971657  0.12108692

   6    1  |0 0>           0.00001371  0.00032961  0.00108622 -0.06102116 -0.12698422  0.42382600  0.07586139  0.24690109
                          -0.00000568  0.00002774  0.00017803 -0.21214352 -0.11133106  0.13871838  0.24147338  0.03019299

   7    1  |0 0>          -0.00001550  0.00001328 -0.00001021 -0.00002340 -0.00002584 -0.00000072  0.00000436 -0.00000660
                           0.00001418 -0.00004112  0.00005432  0.00000169  0.00002253 -0.00004028  0.00001932  0.00000966

   8    1  |0 0>           0.00000034 -0.00000404  0.00000777  0.00000022  0.00000066  0.00000453 -0.00000224  0.00000764
                          -0.00000104  0.00001664 -0.00000188 -0.00000376 -0.00000498  0.00000997 -0.00000148 -0.00001022

   9    1  |0 0>          -0.00000535 -0.00000083 -0.00000062 -0.00000317  0.00000123  0.00000512  0.00000233  0.00000681
                           0.00000053  0.00003592  0.00000278 -0.00000345 -0.00000215  0.00000723  0.00000293 -0.00001385

  10    1  |0 0>           0.00000187  0.00000515  0.00000751 -0.00000273  0.00000146 -0.00000158  0.00000142 -0.00000725
                          -0.00000001  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000350 -0.00000458 -0.00000394 -0.00001335  0.00000576  0.00000001  0.00000121  0.00000373
                           0.00000052 -0.00004209 -0.00000329 -0.00000491 -0.00000503 -0.00000290  0.00000247  0.00002063

   2    1  |1 1>+         -0.15009120  0.02275091 -0.06272114  0.01945986 -0.02891336  0.00352189  0.00951306 -0.01691231
                          -0.18366083 -0.26807111 -0.01339634  0.00123462  0.02094969 -0.02230954  0.01578963  0.05119844

   3    1  |1 1>+         -0.04789694 -0.03273305  0.01323813  0.16793169 -0.24287501  0.02852014  0.07951123 -0.13944311
                          -0.02113366  0.36491617  0.00676957  0.01074875  0.17619914 -0.18578102  0.13192471  0.41221727

   4    1  |1 1>+          0.15569769 -0.01719552  0.11054408  0.02731501  0.06711784 -0.20411367 -0.03353003 -0.12865897
                          -0.20745985  0.00317980 -0.02991123  0.09123725  0.06000952 -0.06560517 -0.11071213 -0.01667013

   5    1  |1 1>+          0.21574412 -0.07253733  0.01941865 -0.08288927  0.05682082 -0.05986486 -0.16455084  0.03887306
                          -0.09329058 -0.15365856 -0.41018931 -0.01626906 -0.03984862 -0.13708994  0.17305485  0.01662229

   6    1  |1 1>+         -0.17980964 -0.19858532  0.32279617  0.06697151 -0.23219407 -0.06079686 -0.10999186  0.30153496
                          -0.26756774  0.01019777  0.09755592  0.29113497 -0.26097126 -0.08758129 -0.19683847  0.09085681

   7    1  |1 1>+         -0.00002478  0.00014282  0.00012013  0.00301920  0.05163933  0.05262922 -0.01619903  0.01829891
                           0.00005008 -0.00001530 -0.00009220  0.11575329  0.07046920  0.02474133  0.02929491  0.00347045

   8    1  |1 1>+          0.00004852 -0.00004821 -0.00016914  0.03806232 -0.02572707  0.02730301  0.07493682 -0.01778954
                           0.00007609 -0.00016204  0.00002907  0.00718143  0.01807503  0.06280556 -0.07906640 -0.00722763

   9    1  |1 1>+          0.00000286 -0.00013423 -0.00029354  0.01237990  0.02964017 -0.09422330 -0.01489619 -0.05916340
                          -0.00000174  0.00001604 -0.00005299  0.03913660  0.02609500 -0.03041475 -0.05097128 -0.00776867

   1    1  |1 0>          -0.00001041  0.00001800 -0.00002428 -0.00000316 -0.00000664  0.00001261 -0.00000927 -0.00000508
                          -0.00001027  0.00000197 -0.00000231 -0.00001226 -0.00001603  0.00000439  0.00000223  0.00000378

   2    1  |1 0>          -0.05590382 -0.17656006 -0.35125867  0.02862863  0.07221538  0.25340949 -0.31897105 -0.02803333
                          -0.14353894  0.06585049 -0.01383948 -0.15411133  0.10348512 -0.10992121 -0.30145673  0.07149728

   3    1  |1 0>           0.21048564 -0.34579991  0.05544273  0.01194819  0.03141788  0.10708777 -0.13574437 -0.01182775
                           0.37103135  0.01625742  0.02071075 -0.06516674  0.04457429 -0.04695170 -0.12888758  0.03103194

   4    1  |1 0>          -0.26805274  0.01032014  0.09697156  0.23188580  0.36037101  0.12729537  0.19786535 -0.03331882
                           0.18055507  0.20038853 -0.32161600  0.02376395 -0.28414609 -0.20939781 -0.00400811  0.08615145

   5    1  |1 0>           0.06073482  0.50726066  0.01323253 -0.00530966 -0.08807070  0.09320392 -0.06641446 -0.21054701
                          -0.01735387  0.04481989 -0.04290224  0.08288606 -0.12151990  0.01473542  0.03993764 -0.07028387

   6    1  |1 0>          -0.11756861  0.06448705 -0.02329760 -0.09002711 -0.06092197  0.06538542  0.11000427  0.01675226
                           0.20103956 -0.00476356  0.41069039  0.02683817  0.06788556 -0.20362220 -0.03342695 -0.13004883

   7    1  |1 0>           0.00000456 -0.00000307  0.00005837 -0.03896034 -0.02812347  0.02972765  0.04968112  0.00816084
                           0.00000308 -0.00012653 -0.00031343  0.01208626  0.03131825 -0.09334273 -0.01451981 -0.06043532

   8    1  |1 0>          -0.00002717 -0.00032570 -0.00002759 -0.00248044 -0.04046329  0.04269548 -0.03031959 -0.09509772
                           0.00000641 -0.00004261  0.00002946  0.03845696 -0.05577577  0.00657204  0.01827559 -0.03208154

   9    1  |1 0>           0.00008279 -0.00000401  0.00005733  0.12480967 -0.02403947 -0.00791920 -0.03078780  0.02234747
                          -0.00003248 -0.00042175 -0.00021094 -0.01687338  0.02691376 -0.01151317  0.03349274 -0.07730051

   1    1  |1 1>-          0.00000677 -0.00000763  0.00000767  0.00001388  0.00000379 -0.00000629  0.00000359 -0.00000676
                          -0.00000056 -0.00000886  0.00002732  0.00000432 -0.00000160 -0.00000133  0.00000341  0.00000238

   2    1  |1 1>-          0.20454894 -0.01061139  0.03019129  0.14580081  0.09667886 -0.10471516 -0.17616907 -0.02693721
                           0.11936148 -0.01444249  0.05333498 -0.04356405 -0.10750461  0.32591418  0.05341124  0.20577510

   3    1  |1 1>-          0.19855209 -0.06465947  0.03498394 -0.11058508 -0.07272199  0.07860009  0.13217327  0.02010321
                          -0.13870613 -0.00258525 -0.36506783  0.03314038  0.08057695 -0.24465729 -0.03997147 -0.15369494

   4    1  |1 1>-         -0.14673898  0.14870445 -0.00340962 -0.00551114 -0.08857800  0.09318974 -0.06616313 -0.20890399
                           0.14875232  0.01428421  0.03135768  0.08396817 -0.12199656  0.01450038  0.04028270 -0.07040538

   5    1  |1 1>-          0.26807449 -0.00984080 -0.09742407  0.52292477  0.09899743  0.03979983  0.00168703  0.05728397
                          -0.18032657 -0.20119768  0.32140424 -0.04194836 -0.05091663 -0.14988039  0.10790347 -0.21493588

   6    1  |1 1>-          0.15580382 -0.44107460 -0.19219539 -0.01555290 -0.03927854 -0.13839377  0.17336382  0.01740041
                           0.24310850  0.05995138  0.00879134  0.08317533 -0.05592064  0.05962686  0.16448999 -0.03885723

   7    1  |1 1>-          0.00005869 -0.00010395 -0.00003615  0.00723218  0.01891002  0.06192791 -0.07842114 -0.00519345
                          -0.00006725  0.00007088  0.00015121 -0.03890520  0.02689178 -0.02744199 -0.07530760  0.01846058

   8    1  |1 1>-          0.00003283  0.00001156  0.00014958  0.00905820 -0.09453032 -0.03266771 -0.06009650  0.01888108
                          -0.00007021 -0.00031430 -0.00014290 -0.01383855  0.07856090  0.04113626  0.01728803 -0.05896556

   9    1  |1 1>-          0.00002422  0.00027659  0.00002987  0.00233323  0.04007159 -0.04404003  0.03200326  0.09526156
                          -0.00001181  0.00004430 -0.00003401 -0.03762744  0.05520577 -0.00597491 -0.01666397  0.03170250

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000014  0.00000038 -0.00000026  0.00000076  0.00000022  0.00000028  0.00000019  0.00000088
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000897 -0.00008303  0.00004969  0.19231497  0.01421283 -0.13499020 -0.05714852  0.09048050
                           0.00000474  0.00000559 -0.00000052 -0.16728334  0.07739372 -0.05163037 -0.38864980  0.00936310

   3    1  |0 0>           0.00002074 -0.00004759  0.00002672  0.20080442 -0.05744674 -0.13229251 -0.02181994 -0.15146090
                          -0.00002330  0.00002081 -0.00001538 -0.19477027 -0.24130785 -0.20814134  0.17416136 -0.01551622

   4    1  |0 0>           0.00004066  0.00007973 -0.00001397 -0.15693398  0.28313030  0.00096464  0.24715530  0.04430827
                           0.00000897 -0.00008154  0.00013886 -0.19077543 -0.04323008 -0.05855363 -0.01747970 -0.21165415

   5    1  |0 0>          -0.00000205  0.00005352 -0.00001093 -0.14502400  0.06141911  0.23879749 -0.04907045 -0.03437815
                           0.00000655 -0.00005912  0.00005738 -0.13537076 -0.00431047 -0.21967021 -0.05905357  0.31482378

   6    1  |0 0>          -0.00006720  0.00012190 -0.00006273 -0.06908894  0.07581143 -0.17264779 -0.04145155 -0.27309206
                          -0.00000079  0.00005225 -0.00008213  0.07931927  0.30878270 -0.18542670  0.02217230 -0.03882436

   7    1  |0 0>           0.09554267 -0.25576086  0.19204166 -0.00004233  0.00025834  0.00005027  0.00015227  0.00001404
                          -0.11472993  0.50023539 -0.32352814  0.00004740 -0.00001826  0.00000140  0.00002320  0.00007832

   8    1  |0 0>           0.48024804  0.34798546  0.31891232  0.00004586 -0.00004988 -0.00002005 -0.00002347  0.00000180
                           0.15838902  0.01689655  0.02598786  0.00001682  0.00003152  0.00001935  0.00001067  0.00002571

   9    1  |0 0>           0.19513374 -0.02792215 -0.11193397  0.00002310 -0.00002491 -0.00004664 -0.00005704 -0.00002994
                          -0.40420965  0.20415582  0.47226223  0.00007032  0.00004077  0.00000679 -0.00000369  0.00003568

  10    1  |0 0>           0.00000197 -0.00000549  0.00000379 -0.00001163 -0.00000332 -0.00000419 -0.00000283 -0.00001346
                           0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000004  0.00000001  0.00000012 -0.00000000

   1    1  |1 1>+         -0.01396297  0.00172438  0.00844793 -0.00000611  0.00000835  0.00000191 -0.00000379  0.00000062
                           0.02921994 -0.01412467 -0.03474222 -0.00001637  0.00000288  0.00000133  0.00000689  0.00000003

   2    1  |1 1>+          0.09408288 -0.01154815 -0.05693937  0.00739700 -0.01163507 -0.00204460 -0.00936682 -0.00149464
                          -0.19684340  0.09505294  0.23418304  0.00855085  0.00166996  0.00409911  0.00123986  0.00577247

   3    1  |1 1>+         -0.01137391  0.00135104  0.00690017  0.06142002 -0.09651081 -0.01676075 -0.07704725 -0.01216741
                           0.02377501 -0.01141595 -0.02836819  0.07089762  0.01356303  0.03381720  0.01015904  0.04730089

   4    1  |1 1>+         -0.20518753 -0.14855353 -0.13602487 -0.00888393  0.01210004 -0.03071277 -0.00733841 -0.04677472
                          -0.06725545 -0.00741018 -0.01150523  0.01097359  0.04961031 -0.03295077  0.00403339 -0.00677437

   5    1  |1 1>+          0.04241074 -0.10941200  0.08102190  0.01852612 -0.00020715 -0.03906002  0.01664599  0.00735903
                          -0.05235536  0.21522209 -0.13413923  0.01549860 -0.00099423  0.03405897  0.00893659 -0.05881703

   6    1  |1 1>+          0.00037194  0.00010980  0.00031608 -0.07855371  0.01899937  0.04803725  0.00929527  0.03880451
                           0.00004460  0.00026944 -0.00015071  0.07612213  0.08114255  0.06801798 -0.03345275  0.00405412

   7    1  |1 1>+          0.00501571  0.00369531  0.00328025 -0.20978312 -0.02941288  0.14005149  0.07008421 -0.16828092
                           0.00163509  0.00016593  0.00028553  0.17808647 -0.15052731  0.01095797  0.56188581 -0.01938310

   8    1  |1 1>+          0.04828353 -0.12458801  0.09228797 -0.12930034  0.00242529  0.27367087 -0.11610451 -0.05188260
                          -0.05961507  0.24509864 -0.15278339 -0.10902840  0.00622372 -0.23931274 -0.06225836  0.41282280

   9    1  |1 1>+          0.23360898  0.16922610  0.15487238 -0.05693302  0.08514333 -0.21903507 -0.05320293 -0.32470576
                           0.07657829  0.00846549  0.01305367  0.07256691  0.35066278 -0.23209664  0.01656314 -0.04708018

   1    1  |1 0>           0.00890815 -0.03662584  0.02282603 -0.00000131 -0.00000036  0.00000311  0.00000173 -0.00000164
                           0.00721698 -0.01861704  0.01379065  0.00000223  0.00000098  0.00000518 -0.00000074  0.00000056

   2    1  |1 0>           0.02372927 -0.09752935  0.06077471 -0.02857974  0.00163539 -0.06274200 -0.01632643  0.10829413
                           0.01921279 -0.04956888  0.03671507  0.03387688 -0.00057142 -0.07175718  0.03046473  0.01362414

   3    1  |1 0>          -0.05561250  0.22856259 -0.14241907 -0.01219959  0.00069675 -0.02678271 -0.00695224  0.04623034
                          -0.04506162  0.11616471 -0.08604934  0.01448088 -0.00030612 -0.03061996  0.01295725  0.00582084

   4    1  |1 0>          -0.00010269 -0.00002372 -0.00001137 -0.00034055 -0.07442489 -0.03047951  0.13682561 -0.00599554
                           0.00032303  0.00025092  0.00020623  0.00525142  0.01618911 -0.00700709 -0.01060941  0.05380916

   5    1  |1 0>          -0.17160744  0.08293994  0.20423412 -0.03563179 -0.00677001 -0.01708863 -0.00512103 -0.02387783
                          -0.08228075  0.00991408  0.04950813  0.03088782 -0.04856204 -0.00839596 -0.03881473 -0.00608185

   6    1  |1 0>          -0.06747043 -0.00725744 -0.01130470 -0.01091416 -0.04935399  0.03307974 -0.00430011  0.00675492
                           0.20510724  0.14849474  0.13611846 -0.00870903  0.01193993 -0.03080711 -0.00739630 -0.04694725

   7    1  |1 0>           0.07658264  0.00837925  0.01319050 -0.06873321 -0.34283895  0.23705190 -0.02507750  0.04761509
                          -0.23371229 -0.16901966 -0.15495253 -0.05330876  0.08341237 -0.22107658 -0.05311863 -0.32932966

   8    1  |1 0>           0.19558392 -0.09456473 -0.23247509 -0.25049310 -0.04799898 -0.11949655 -0.03588193 -0.16719016
                           0.09342473 -0.01158628 -0.05654729  0.21692865 -0.34091570 -0.05920108 -0.27223799 -0.04300036

   9    1  |1 0>          -0.00163501 -0.00020583 -0.00027550  0.35677225  0.21303281  0.24105578  0.16393389  0.00422616
                           0.00505205  0.00349294  0.00340960  0.38118279 -0.05286677 -0.23605172 -0.06697251 -0.04808879

   1    1  |1 1>-         -0.01144330 -0.00125056 -0.00196769  0.00001430 -0.00000076 -0.00000746 -0.00000656 -0.00000328
                           0.03491745  0.02526707  0.02315420  0.00001460  0.00000351  0.00000044  0.00000244 -0.00000312

   2    1  |1 1>-         -0.04660977 -0.00512502 -0.00798396  0.01739734  0.07918447 -0.05287280  0.00651597 -0.01084088
                           0.14221690  0.10293830  0.09428245  0.01400772 -0.01928509  0.04925225  0.01178020  0.07487749

   3    1  |1 1>-         -0.06211440 -0.00682441 -0.01062096 -0.01309522 -0.05949004  0.03967562 -0.00486955  0.00813379
                           0.18947410  0.13725579  0.12559563 -0.01050159  0.01443832 -0.03698486 -0.00886646 -0.05613787

   4    1  |1 1>-          0.17180126 -0.08328194 -0.20405225 -0.03566942 -0.00686458 -0.01699240 -0.00511220 -0.02396672
                           0.08213371 -0.01025859 -0.04953721  0.03088328 -0.04858013 -0.00839941 -0.03888229 -0.00616264

   5    1  |1 1>-         -0.00006026  0.00026867 -0.00016502  0.07577990  0.00675107  0.03730945  0.10334904 -0.00179548
                          -0.00008151  0.00009724 -0.00010236  0.08389945 -0.00282230 -0.05500329 -0.01984743  0.01513127

   6    1  |1 1>-          0.05205711 -0.21507664  0.13447744  0.01570002 -0.00086090  0.03422433  0.00901555 -0.05883898
                           0.04228591 -0.10937235  0.08112393 -0.01842231  0.00053786  0.03900286 -0.01646208 -0.00736622

   7    1  |1 1>-          0.06379490 -0.24710607  0.14777842 -0.10366796  0.00726622 -0.23669628 -0.06149005  0.41624708
                           0.05028710 -0.12483972  0.09105141  0.12457913  0.00510600 -0.27229965  0.12204756  0.05280600

   8    1  |1 1>-          0.00001667 -0.00001028  0.00000215  0.17872703  0.36364420  0.23015119 -0.39804264  0.02361529
                           0.00002738 -0.00003748  0.00001840  0.17150391 -0.08227899 -0.09599804  0.00312891 -0.21634277

   9    1  |1 1>-          0.19424233 -0.08912696 -0.23597393  0.25269614  0.04782961  0.12460313  0.03722159  0.15828938
                           0.09243532 -0.00875797 -0.05854542 -0.21962603  0.34084638  0.06501648  0.26964842  0.04185457

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.01750658 -0.00000138 -0.00000045 -0.00000057  0.00000013  0.00000072  0.00000027 -0.00000030
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00003757  0.00001948  0.00000733  0.00006035 -0.15596609  0.42751096  0.19778729 -0.05563697
                           0.00000696  0.00000894 -0.00004447  0.00002745  0.13249542  0.00700425 -0.14567787  0.01901157

   3    1  |0 0>          -0.00003101  0.00006256  0.00002879 -0.00004024  0.35168539  0.31489471  0.01591741 -0.12602105
                           0.00000636 -0.00000357  0.00004644 -0.00002315 -0.23571049 -0.02959193  0.12826786  0.03593190

   4    1  |0 0>           0.00000047 -0.00000244 -0.00000825 -0.00000885  0.01683698  0.12410249 -0.29470532  0.14736042
                           0.00001259  0.00004015  0.00002712 -0.00001151  0.07363411  0.07553283 -0.19146765  0.21804375

   5    1  |0 0>           0.00000654 -0.00000337  0.00004512 -0.00000896 -0.20073223  0.12714795 -0.27215152  0.10067661
                          -0.00000988  0.00012371  0.00001987  0.00001065 -0.26591260  0.13300337 -0.12031282 -0.13675621

   6    1  |0 0>           0.00001082 -0.00000286 -0.00001309  0.00000133 -0.04858970  0.04302228  0.09524422  0.28920103
                          -0.00000154  0.00002120 -0.00000426 -0.00002108  0.05581642  0.06018150  0.21242876  0.37540861

   7    1  |0 0>           0.00002185 -0.06127185  0.39945812  0.07207541 -0.00009755  0.00009348  0.00001692 -0.00002909
                          -0.00003983 -0.12327518 -0.08036237 -0.30403912 -0.00009331 -0.00005007 -0.00004829 -0.00003918

   8    1  |0 0>           0.00001789  0.22192935  0.01444986  0.32596184  0.00030831 -0.00021368 -0.00008285  0.00017877
                           0.00000272  0.05601088 -0.33197060  0.11657654 -0.00023403  0.00009222 -0.00004147  0.00009809

   9    1  |0 0>          -0.00000052 -0.01555828 -0.04643375  0.08466254 -0.00003453 -0.00012782  0.00024025 -0.00015507
                           0.00001417  0.45936829  0.06362470 -0.24086199 -0.00008736 -0.00023527  0.00011647  0.00006926

  10    1  |0 0>          -0.43359503  0.00004865  0.00001571  0.00001993 -0.00000608 -0.00003181 -0.00001190  0.00001334
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000009  0.00000001 -0.00000009  0.00000001

   1    1  |1 1>+          0.00000181 -0.00146415 -0.00533305  0.00811078 -0.00002103 -0.00007654  0.00013698 -0.00009346
                          -0.00001390  0.04530186  0.00647239 -0.02312899 -0.00005299 -0.00013631  0.00006881  0.00004498

   2    1  |1 1>+          0.00000004  0.01447010  0.05305242 -0.08071022  0.00286559 -0.01539682  0.03625861 -0.01754721
                          -0.00004901 -0.45137659 -0.06441600  0.22981253 -0.00201692 -0.01070213  0.02239926 -0.01960230

   3    1  |1 1>+          0.00000091 -0.00173672 -0.00647600  0.00974759  0.02382526 -0.12747681  0.30039827 -0.14527052
                           0.00000002  0.05449398  0.00777090 -0.02770394 -0.01659546 -0.08872388  0.18547824 -0.16232277

   4    1  |1 1>+          0.00004316  0.18930879  0.01224099  0.27813739 -0.01382237  0.03011207  0.04465213  0.12306211
                          -0.00000118  0.04858153 -0.28307456  0.09899303  0.02038179  0.02547600  0.09535052  0.16589482

   5    1  |1 1>+         -0.00000351  0.05252345 -0.33987511 -0.06290328  0.08791969 -0.04283071  0.09044224 -0.03057477
                           0.00000597  0.09740732  0.06745357  0.26339603  0.12096338 -0.05050937  0.03393444  0.07800458

   6    1  |1 1>+          0.00001704 -0.00027102 -0.00046364 -0.00050868 -0.28153788 -0.33769512 -0.03794255  0.13206936
                          -0.00001348  0.00005174  0.00050715  0.00017768  0.18550872  0.02709825 -0.07533880 -0.01504224

   7    1  |1 1>+         -0.52003670  0.00114282  0.00008517  0.00163421 -0.15313240  0.25653415  0.13384869 -0.02857937
                          -0.00000953  0.00028550 -0.00165284  0.00058166  0.12089171  0.00752300 -0.12217064  0.00040779

   8    1  |1 1>+          0.00000226 -0.01398286  0.09048240  0.01677167  0.12240674 -0.06055831  0.12624414 -0.04243113
                          -0.00001796 -0.02600651 -0.01797313 -0.07018645  0.16938034 -0.07035689  0.04734224  0.10887978

   9    1  |1 1>+          0.01120586  0.05043501  0.00326337  0.07399793  0.02166111 -0.04810390 -0.06521315 -0.17113493
                          -0.00000327  0.01289798 -0.07539719  0.02635958 -0.03040617 -0.03574869 -0.13068318 -0.23180862

   1    1  |1 0>          -0.00001182 -0.01122291 -0.00776572 -0.03028078 -0.00007449 -0.00004512 -0.00002644 -0.00002339
                          -0.00000633  0.00604459 -0.03913564 -0.00722397  0.00006811 -0.00006711 -0.00001731  0.00002551

   2    1  |1 0>          -0.00002645 -0.04406938 -0.03056283 -0.11937205 -0.22297353  0.09281520 -0.06231386 -0.14340165
                          -0.00000708  0.02380293 -0.15408211 -0.02850134  0.16113432 -0.07963961  0.16636702 -0.05596311

   3    1  |1 0>           0.00000903  0.10348489  0.07167340  0.27973441 -0.09519718  0.03959235 -0.02660636 -0.06117028
                           0.00000332 -0.05575738  0.36093507  0.06683813  0.06879563 -0.03403429  0.07102527 -0.02389828

   4    1  |1 0>           0.00000095  0.00006935 -0.00039891  0.00012513 -0.22329972 -0.02255301  0.16569575  0.00137461
                          -0.00001459 -0.00032299 -0.00003043 -0.00037892 -0.30581964  0.10793767  0.12635158  0.03959404

   5    1  |1 0>          -0.00000489 -0.39378083 -0.05583890  0.20031420  0.00838973  0.04473602 -0.09329728  0.08197813
                          -0.00000076 -0.01239468 -0.04632740  0.07074824  0.01198349 -0.06426346  0.15125814 -0.07332075

   6    1  |1 0>           0.00000024  0.04809992 -0.28311945  0.09929341 -0.01974653 -0.02531595 -0.09587632 -0.16583715
                          -0.00000215 -0.18933797 -0.01227819 -0.27804998 -0.01289231  0.03041891  0.04470540  0.12270063

   7    1  |1 0>          -0.00000060  0.01293126 -0.07538426  0.02635036  0.02677362  0.03509272  0.13314171  0.23177400
                          -0.01116270 -0.05045583 -0.00326690 -0.07400207  0.01637096 -0.05079549 -0.06449888 -0.16905852

   8    1  |1 0>          -0.00000945 -0.10491619 -0.01496854  0.05334761 -0.01175509 -0.06257295  0.13050565 -0.11406429
                           0.00000381 -0.00336503 -0.01230845  0.01874776 -0.01668975  0.08976620 -0.21138764  0.10226769

   9    1  |1 0>          -0.00002208 -0.00027212  0.00160800 -0.00055958 -0.06923520 -0.01562016 -0.00999912  0.00809176
                          -0.52001959  0.00106415  0.00006738  0.00160540 -0.12020891 -0.36342386 -0.09279275  0.10848087

   1    1  |1 1>-          0.00000104  0.00560712 -0.03257227  0.01140071 -0.00013987  0.00005158 -0.00002192  0.00006329
                           0.00001344 -0.02176662 -0.00140463 -0.03205788 -0.00018438  0.00012490  0.00005084 -0.00010933

   2    1  |1 1>-         -0.00000251  0.03367957 -0.19620037  0.06860416  0.03213126  0.04067503  0.15272032  0.26541059
                          -0.00003006 -0.13120951 -0.00847827 -0.19278026  0.02139466 -0.04906057 -0.07152709 -0.19651512

   3    1  |1 1>-         -0.00000076  0.04486127 -0.26142046  0.09147108 -0.02413077 -0.03051106 -0.11462270 -0.19920370
                          -0.00003243 -0.17484156 -0.01127619 -0.25686131 -0.01605575  0.03688958  0.05370822  0.14747883

   4    1  |1 1>-          0.00004519  0.39360963  0.05608886 -0.20091015  0.00855840  0.04458760 -0.09335025  0.08187326
                          -0.00000115  0.01270941  0.04571814 -0.07050574  0.01183469 -0.06414513  0.15111678 -0.07310741

   5    1  |1 1>-         -0.00001449  0.00011291  0.00013273  0.00030579 -0.03799742  0.00476506  0.09058139 -0.01324804
                          -0.00001518 -0.00001941  0.00043806  0.00014448 -0.02402040  0.44541681  0.16439322 -0.09300315

   6    1  |1 1>-         -0.00001435 -0.09813233 -0.06758352 -0.26305236  0.12120344 -0.05049376  0.03412639  0.07779113
                           0.00000151  0.05247601 -0.33992730 -0.06281372 -0.08766390  0.04397906 -0.09046708  0.03042813

   7    1  |1 1>-          0.00000207  0.02365852  0.01763760  0.07130956  0.16932834 -0.06918493  0.04444357  0.11122398
                          -0.00000323 -0.01405762  0.09024297  0.01716783 -0.12178680  0.05840183 -0.12174646  0.04032542

   8    1  |1 1>-         -0.00001263 -0.00000334  0.00002513 -0.00001011 -0.19016108 -0.02315191  0.11219842  0.00768147
                           0.52017317 -0.00008311 -0.00002795  0.00001239 -0.27337970 -0.10685750  0.04108632  0.07990038

   9    1  |1 1>-         -0.00005041 -0.10541708 -0.01532377  0.05179887  0.00795176  0.06365078 -0.13127075  0.11186543
                           0.00000004 -0.00303399 -0.01424780  0.01838214  0.01936864 -0.09079892  0.21363854 -0.10286279

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>           0.00000007  0.00000018  0.00000074  0.00000022  0.00798517
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.13417301  0.00009350  0.00020995 -0.00019049  0.00000345
                          -0.19178483 -0.00013930 -0.00000647  0.00015017 -0.00000015

   3    1  |0 0>           0.08728303  0.00004695  0.00014185  0.00024139  0.00000355
                           0.15006617  0.00024889 -0.00002032 -0.00008949  0.00000008

   4    1  |0 0>           0.33747165 -0.00009494 -0.00006409  0.00005951 -0.00000014
                          -0.09915348  0.00004082  0.00000965  0.00000713 -0.00000020

   5    1  |0 0>          -0.21525066  0.00018693  0.00001533  0.00008785 -0.00000049
                           0.18636451  0.00003649  0.00042733  0.00016031  0.00000076

   6    1  |0 0>          -0.15320106 -0.00007476 -0.00010078  0.00002161 -0.00000010
                           0.17352379  0.00001392  0.00005471  0.00007523  0.00000002

   7    1  |0 0>          -0.00006643 -0.39905220  0.00220577 -0.05737644 -0.00000155
                           0.00000638  0.00733675  0.11063938 -0.19829247  0.00000206

   8    1  |0 0>           0.00001817 -0.01324344  0.35759239 -0.19467912  0.00000026
                           0.00001123 -0.20637880 -0.00922449  0.07416483 -0.00000031

   9    1  |0 0>           0.00023917 -0.10905830  0.00757150  0.12208017  0.00000017
                          -0.00020277  0.01370544  0.27186534  0.33640893  0.00000084

  10    1  |0 0>          -0.00000300 -0.00000847 -0.00003517 -0.00001038  0.90110776
                          -0.00000012 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00014739 -0.07192878  0.00482355  0.08783223  0.00000083
                          -0.00012256  0.00993852  0.19161541  0.24168241  0.00000247

   2    1  |1 1>+         -0.03004013 -0.02071913  0.00142624  0.02530967  0.00000022
                           0.00625714  0.00284580  0.05515208  0.06967408  0.00000345

   3    1  |1 1>+         -0.24866661  0.00253859 -0.00011684 -0.00312486  0.00000077
                           0.05174170 -0.00038457 -0.00674631 -0.00845950 -0.00000019

   4    1  |1 1>+         -0.06614569  0.00236921 -0.06389939  0.03482295 -0.00000219
                           0.07780155  0.03685772  0.00158975 -0.01334916  0.00000009

   5    1  |1 1>+          0.12331219 -0.07175894  0.00039965 -0.00983008  0.00000190
                          -0.08959476  0.00134713  0.02050111 -0.03424504 -0.00000647

   6    1  |1 1>+         -0.06395831 -0.00015116 -0.00007269 -0.00026498 -0.00000689
                          -0.08980096 -0.00025639  0.00004450  0.00004388 -0.00000182

   7    1  |1 1>+         -0.10239894  0.00041855 -0.00938174  0.00497034 -0.25023107
                          -0.15598124  0.00534074  0.00022517 -0.00186027 -0.00000209

   8    1  |1 1>+          0.17207615  0.49588748 -0.00290535  0.06791469  0.00000382
                          -0.12522807 -0.00942908 -0.14361932  0.23690722 -0.00000479

   9    1  |1 1>+          0.09441833  0.01669913 -0.44204590  0.24046249  0.00536690
                          -0.10549980  0.25509008  0.01068561 -0.09264268  0.00000045

   1    1  |1 0>           0.00000200  0.00540852  0.08237512 -0.13620173 -0.00000101
                           0.00004440  0.28504334 -0.00166082  0.03905814  0.00000083

   2    1  |1 0>           0.16499963 -0.00059189 -0.00904792  0.01562570 -0.00000010
                           0.22662447 -0.03265157  0.00016678 -0.00450045  0.00000073

   3    1  |1 0>           0.07041999  0.00144902  0.02213556 -0.03625019 -0.00000386
                           0.09671502  0.07603756 -0.00045808  0.01038333 -0.00000076

   4    1  |1 0>           0.20978080  0.00029937 -0.00000714 -0.00017497  0.00000055
                          -0.14436579  0.00003145  0.00015900 -0.00031847 -0.00000142

   5    1  |1 0>          -0.02595876  0.00245671  0.04815243  0.06085159  0.00000992
                          -0.12516956  0.01809322 -0.00128416 -0.02207637  0.00000001

   6    1  |1 0>          -0.07830303  0.03682036  0.00159797 -0.01333957  0.00000023
                          -0.06597239 -0.00239482  0.06383006 -0.03482537  0.00000972

   7    1  |1 0>           0.10847137  0.25509803  0.01074330 -0.09252988  0.00000101
                           0.09235546 -0.01660161  0.44216984 -0.24049916 -0.00535966

   8    1  |1 0>           0.03620104  0.01725686  0.33335678  0.42058888  0.00001210
                           0.17463446  0.12513602 -0.00844042 -0.15279678 -0.00000026

   9    1  |1 0>          -0.01664332 -0.00539329 -0.00024857  0.00201097 -0.00000427
                           0.00540618  0.00027177 -0.00967474  0.00512072 -0.25024282

   1    1  |1 1>-          0.00000583 -0.14662768 -0.00615639  0.05321239 -0.00000043
                          -0.00000996  0.00957011 -0.25412155  0.13820147 -0.00000118

   2    1  |1 1>-          0.12467111  0.02555823  0.00112306 -0.00922536 -0.00000022
                           0.10565466 -0.00161277  0.04432463 -0.02415080  0.00000187

   3    1  |1 1>-         -0.09353259  0.03401534  0.00142002 -0.01239837 -0.00000002
                          -0.07930215 -0.00224890  0.05892934 -0.03212779  0.00000262

   4    1  |1 1>-         -0.02620642 -0.00246887 -0.04811158 -0.06070868 -0.00000307
                          -0.12544192 -0.01817476  0.00126736  0.02203573  0.00000019

   5    1  |1 1>-          0.12046685  0.00004598  0.00003730 -0.00014053 -0.00000167
                          -0.07989463  0.00018663  0.00022931 -0.00007652  0.00000879

   6    1  |1 1>-         -0.08951322 -0.00136378 -0.02081612  0.03420105  0.00000211
                          -0.12312057 -0.07153888  0.00043279 -0.00979772  0.00000149

   7    1  |1 1>-         -0.12598390  0.00976237  0.15018799 -0.22802826 -0.00000056
                          -0.17564462  0.49871516 -0.00304927  0.06471691  0.00000125

   8    1  |1 1>-          0.13936956  0.00021436 -0.00001388 -0.00010247 -0.00000215
                          -0.09700870 -0.00000802 -0.00001398 -0.00021019  0.25029276

   9    1  |1 1>-         -0.03389168  0.01712004  0.33035069  0.42560392  0.00000422
                          -0.17138245  0.11453898 -0.00830531 -0.15432761 -0.00000014


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -463.13706091     -0.00016824      -36.92      0.00000000        0.00      0.0000
     2   1   -462.71482497      0.42206770    92633.15      0.42223594    92670.08     11.4896
     3   1   -462.71482483      0.42206783    92633.18      0.42223607    92670.11     11.4896
     4   1   -462.71482459      0.42206807    92633.23      0.42223631    92670.16     11.4896
     5   1   -462.70531821      0.43157446    94719.64      0.43174270    94756.57     11.7483
     6   1   -462.70531791      0.43157476    94719.71      0.43174300    94756.64     11.7483
     7   1   -462.70531753      0.43157514    94719.79      0.43174338    94756.72     11.7483
     8   1   -462.70531749      0.43157517    94719.80      0.43174341    94756.73     11.7483
     9   1   -462.70531742      0.43157525    94719.82      0.43174349    94756.74     11.7483
    10   1   -462.70531665      0.43157601    94719.99      0.43174425    94756.91     11.7484
    11   1   -462.70531630      0.43157636    94720.06      0.43174460    94756.99     11.7484
    12   1   -462.70509708      0.43179559    94768.18      0.43196383    94805.10     11.7543
    13   1   -462.70509660      0.43179606    94768.28      0.43196430    94805.21     11.7543
    14   1   -462.70509643      0.43179624    94768.32      0.43196448    94805.24     11.7544
    15   1   -462.70509634      0.43179632    94768.34      0.43196456    94805.26     11.7544
    16   1   -462.70509577      0.43179689    94768.46      0.43196513    94805.39     11.7544
    17   1   -462.70026354      0.43662912    95829.02      0.43679736    95865.94     11.8859
    18   1   -462.70026340      0.43662926    95829.05      0.43679750    95865.97     11.8859
    19   1   -462.70026323      0.43662944    95829.08      0.43679768    95866.01     11.8859
    20   1   -462.69851232      0.43838035    96213.37      0.43854859    96250.29     11.9335
    21   1   -462.69851201      0.43838066    96213.43      0.43854890    96250.36     11.9335
    22   1   -462.69851117      0.43838149    96213.62      0.43854974    96250.54     11.9335
    23   1   -462.69851083      0.43838183    96213.69      0.43855007    96250.62     11.9336
    24   1   -462.69851039      0.43838227    96213.79      0.43855051    96250.71     11.9336
    25   1   -462.68690923      0.44998344    98759.95      0.45015168    98796.87     12.2493
    26   1   -462.68116649      0.45572618   100020.33      0.45589442   100057.26     12.4055
    27   1   -462.68116624      0.45572642   100020.39      0.45589467   100057.31     12.4055
    28   1   -462.68116554      0.45572712   100020.54      0.45589536   100057.47     12.4055
    29   1   -462.67824349      0.45864918   100661.86      0.45881742   100698.78     12.4851
    30   1   -462.67824289      0.45864977   100661.99      0.45881801   100698.91     12.4851
    31   1   -462.67824283      0.45864983   100662.00      0.45881808   100698.93     12.4851
    32   1   -462.67824269      0.45864998   100662.03      0.45881822   100698.96     12.4851
    33   1   -462.67824256      0.45865010   100662.06      0.45881835   100698.99     12.4851
    34   1   -462.67754876      0.45934390   100814.33      0.45951214   100851.26     12.5040
    35   1   -462.67754838      0.45934428   100814.42      0.45951252   100851.34     12.5040
    36   1   -462.67754756      0.45934511   100814.60      0.45951335   100851.52     12.5040
    37   1   -462.66218126      0.47471140   104187.11      0.47487964   104224.03     12.9221

 E0 =   -463.13689266 is the energy of the lowest zeroth-order state
 E1 =   -463.13706091 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99981486  0.00000016  0.00000012 -0.00000015 -0.00000010 -0.00000028 -0.00000013 -0.00000008
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000096 -0.00000001  0.00000113 -0.00023375  0.00135289  0.00010732  0.00012244
                               -0.00000000  0.00000568 -0.00000194 -0.00000076  0.00005615  0.00016605  0.00009246  0.00001960

  3  1     3    1  |0 0>       -0.00000000 -0.00000454 -0.00000090 -0.00000317  0.00047632  0.00096681  0.00003532  0.00005615
                               -0.00000000  0.00000284  0.00000182  0.00000420  0.00020803 -0.00021956  0.00006732 -0.00000634

  4  1     4    1  |0 0>        0.00000000 -0.00000029  0.00000259 -0.00000385 -0.00050452  0.00004505  0.00006569  0.00001786
                               -0.00000000 -0.00000161  0.00000161 -0.00000078 -0.00034929 -0.00021001  0.00001879 -0.00001254

  5  1     5    1  |0 0>        0.00000000 -0.00000539  0.00000219 -0.00000103  0.00017951 -0.00014091 -0.00012350 -0.00006764
                               -0.00000000 -0.00000017 -0.00000317 -0.00000152 -0.00046193  0.00043256  0.00001786  0.00004402

  6  1     6    1  |0 0>       -0.00000000 -0.00000585  0.00000199 -0.00000219  0.00092530 -0.00013355  0.00001515  0.00012362
                                0.00000000 -0.00000037  0.00000017 -0.00000022 -0.00000004  0.00013393  0.00014397  0.00010891

  7  1     7    1  |0 0>        0.00000000  0.09027184 -0.04824249  0.01113562  0.00000555  0.00000470 -0.00000929 -0.00000177
                               -0.00000000 -0.08610317 -0.05137635  0.05559125 -0.00004912  0.00000109  0.00001805  0.00000609

  8  1     8    1  |0 0>        0.00000000 -0.02579586 -0.03027655  0.07860207  0.00000118 -0.00000043  0.00000164  0.00000460
                                0.00000000  0.03637572 -0.11161574 -0.04693918  0.00001345  0.00001132  0.00000316 -0.00000060

  9  1     9    1  |0 0>       -0.00000000 -0.05622624  0.01362935 -0.10673190  0.00000906 -0.00000943  0.00000221 -0.00000132
                               -0.00000000 -0.05505674 -0.07222850 -0.02753278  0.00000815  0.00002108  0.00000110  0.00000442

 10  1    10    1  |0 0>        0.00039534 -0.00000159 -0.00000118  0.00000147  0.00000130  0.00000347  0.00000157  0.00000097
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000000  0.35393700 -0.08941491  0.65439850 -0.00000400 -0.00000297  0.00000007 -0.00000011
                               -0.00000000  0.32656775  0.43370959  0.17422201  0.00000826 -0.00000177  0.00000054  0.00000228

 12  1     2    1  |1 1>+       0.00000000  0.00519299 -0.00130925  0.00960533 -0.01314882  0.04331195  0.34390976  0.00873105
                               -0.00000000  0.00479498  0.00636609  0.00255099 -0.22311702 -0.24207622 -0.05198044  0.48152527

 13  1     3    1  |1 1>+       0.00000000 -0.00062250  0.00015896 -0.00116233  0.00162953  0.02280889  0.18316018  0.02381858
                               -0.00000000 -0.00057712 -0.00076062 -0.00030772  0.26516604  0.22056600 -0.01654581  0.21606886

 14  1     4    1  |1 1>+       0.00000000 -0.00201947 -0.00236862  0.00613540 -0.07024601  0.10274286 -0.16153841  0.44191462
                               -0.00000000  0.00284005 -0.00874982 -0.00368132  0.01477761 -0.02792055  0.44663906  0.12286128

 15  1     5    1  |1 1>+       0.00000001 -0.00698053  0.00376384 -0.00070410  0.01788142 -0.00731524  0.11261546  0.07762534
                               -0.00000002  0.00681739  0.00412461 -0.00429723 -0.20178409  0.44705462 -0.14269384 -0.02435580

 16  1     6    1  |1 1>+      -0.00000001 -0.00001271  0.00000290 -0.00001931  0.19820561  0.08129502 -0.10198778 -0.04843038
                               -0.00000001  0.00001143  0.00002937  0.00001432 -0.05517404  0.04501205 -0.10409331 -0.04073085

 17  1     7    1  |1 1>+       0.01110431  0.00075600  0.00088275 -0.00230081 -0.00004845  0.00034518  0.00001706  0.00002480
                               -0.00000001 -0.00106313  0.00328051  0.00138631  0.00001007  0.00004533  0.00000822 -0.00000288

 18  1     8    1  |1 1>+       0.00000001 -0.12217546  0.06573602 -0.01238477 -0.00004881  0.00003622  0.00002682  0.00001921
                               -0.00000002  0.11944337  0.07230917 -0.07542166  0.00007328 -0.00004056  0.00001158 -0.00000527

 19  1     9    1  |1 1>+      -0.00023829  0.03550364  0.04143701 -0.10737091 -0.00026434  0.00000067 -0.00000228 -0.00002746
                                0.00000000 -0.04966892  0.15311028  0.06437489  0.00002331 -0.00002089 -0.00003474 -0.00002665

 20  1     1    1  |1 0>       -0.00000001  0.53263228  0.32246413 -0.33634751  0.00001982  0.00000183 -0.00001191 -0.00000461
                               -0.00000000  0.54481533 -0.29311244  0.05525750  0.00000159  0.00000396 -0.00000609 -0.00000331

 21  1     2    1  |1 0>       -0.00000001 -0.00310138 -0.00187268  0.00196280 -0.12412025  0.39220480 -0.10238029 -0.01262781
                                0.00000000 -0.00316876  0.00169639 -0.00031628 -0.02281842 -0.00878427 -0.08463029 -0.06304253

 22  1     3    1  |1 0>       -0.00000001  0.00724819  0.00438430 -0.00457919  0.42543709  0.02245133  0.18407180  0.07213598
                               -0.00000000  0.00741972 -0.00398673  0.00075479 -0.06094669 -0.12327427  0.11328838  0.03902249

 23  1     4    1  |1 0>        0.00000000  0.00001059 -0.00000945 -0.00000338 -0.05535144  0.04498347 -0.10327626 -0.04047073
                               -0.00000001 -0.00000187  0.00000589 -0.00000703 -0.19789309 -0.08006894  0.10261157  0.04796006

 24  1     5    1  |1 0>        0.00000003  0.00417640  0.00557111  0.00225497  0.38349819  0.34399649  0.00594817  0.01119269
                               -0.00000000 -0.00455089  0.00114998 -0.00838494 -0.00794913 -0.00500315 -0.03874264 -0.02141241

 25  1     6    1  |1 0>        0.00000000  0.00283124 -0.00873841 -0.00367187 -0.07010151  0.08303153 -0.01152676  0.01961617
                                0.00000003  0.00204148  0.00236764 -0.00615451 -0.36304748  0.37238633  0.13113938  0.07474945

 26  1     7    1  |1 0>        0.00000000 -0.04967856  0.15312021  0.06438037 -0.00000472  0.00002637  0.00004124  0.00002662
                                0.00023832 -0.03549576 -0.04143931  0.10736647 -0.00026402  0.00001025 -0.00000445 -0.00003187

 27  1     8    1  |1 0>        0.00000003 -0.07323766 -0.09726111 -0.03905379  0.00015756  0.00003572 -0.00000881  0.00000219
                                0.00000000  0.07936541 -0.02005574  0.14674230 -0.00012118  0.00000656  0.00000670 -0.00000049

 28  1     9    1  |1 0>       -0.00000002  0.00106805 -0.00329183 -0.00137699  0.00007186 -0.00002923  0.00002964 -0.00000286
                                0.01110429  0.00075904  0.00089008 -0.00230277 -0.00000135 -0.00047170 -0.00001183 -0.00002867

 29  1     1    1  |1 1>-      -0.00000000 -0.22156016  0.68296719  0.28717253 -0.00000629 -0.00000243  0.00000193  0.00000036
                                0.00000000 -0.15835204 -0.18483120  0.47892243  0.00001019 -0.00001137  0.00000150  0.00000138

 30  1     2    1  |1 1>-      -0.00000000  0.00196486 -0.00606749 -0.00255185 -0.00521413  0.01567406 -0.40972913 -0.11553355
                               -0.00000000  0.00139874  0.00164456 -0.00425738 -0.02019031  0.04968417 -0.16414516  0.39770272

 31  1     3    1  |1 1>-      -0.00000000  0.00262396 -0.00807960 -0.00340290  0.06433334 -0.07104540 -0.16361356 -0.06754128
                                0.00000000  0.00187173  0.00218325 -0.00565939  0.33220301 -0.32921817 -0.19377799  0.09907276

 32  1     4    1  |1 1>-       0.00000000 -0.00419287 -0.00556551 -0.00221884  0.09143423  0.03648547 -0.05117762  0.53338745
                                0.00000000  0.00451810 -0.00113744  0.00838042  0.00679219 -0.05128419 -0.40736359 -0.02804202

 33  1     5    1  |1 1>-      -0.00000001  0.00001830 -0.00000864 -0.00000731  0.05487931 -0.04486123  0.10326367  0.04046297
                                0.00000002  0.00000967 -0.00000486 -0.00000496  0.19785433  0.07887937 -0.10258868 -0.04800721

 34  1     6    1  |1 1>-       0.00000000 -0.00682561 -0.00413383  0.00430658  0.30622607  0.29304864  0.09922852  0.05712146
                                0.00000001 -0.00696987  0.00375574 -0.00070406 -0.07226922 -0.11952923  0.04667929 -0.00754515

 35  1     7    1  |1 1>-      -0.00000000 -0.12098497 -0.07438190  0.07456949  0.00012416 -0.00004880 -0.00000776 -0.00001063
                                0.00000000 -0.12044094  0.06528304 -0.00923748  0.00005865 -0.00003407 -0.00003668 -0.00001926

 36  1     8    1  |1 1>-      -0.00000001 -0.00000077 -0.00000077 -0.00000026  0.00006219 -0.00007443  0.00002158  0.00000003
                               -0.01110686  0.00000511  0.00000450 -0.00000810 -0.00005866 -0.00015018 -0.00000569 -0.00001066

 37  1     9    1  |1 1>-      -0.00000000 -0.07064700 -0.09567758 -0.04068166 -0.00016422 -0.00005851  0.00000807 -0.00000556
                                0.00000000  0.08196671 -0.02145480  0.14696949  0.00012854 -0.00000989 -0.00000456 -0.00000077


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000015 -0.00000042 -0.00000061  0.00000022 -0.00000012  0.00000013 -0.00000011  0.00000058
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00005982  0.00068414  0.00071806  0.02237218  0.15110244  0.20974665 -0.07969477  0.13733158
                                0.00029323 -0.00010793 -0.00029277  0.49547391  0.22008176  0.08552052  0.08530356  0.03198778

  3  1     3    1  |0 0>        0.00023264  0.00142678  0.00072213  0.06131790 -0.27979212 -0.07593291 -0.09845114  0.31011823
                                0.00014488  0.00004750  0.00053732  0.20422718 -0.32445195 -0.09847568 -0.20919655  0.08937478

  4  1     4    1  |0 0>        0.00009762 -0.00023530 -0.00007183  0.20718209 -0.27397011  0.05337200  0.15085468 -0.15816462
                                0.00015977  0.00106024  0.00005310  0.01885057  0.19485161 -0.13214461  0.05905310  0.41735364

  5  1     5    1  |0 0>       -0.00025912  0.00025701  0.00074333 -0.13340573  0.06311074 -0.11674080 -0.31701985  0.04843261
                               -0.00023922  0.00088542  0.00018929 -0.02767866 -0.04157143 -0.32012308  0.37971657  0.12108692

  6  1     6    1  |0 0>        0.00001371  0.00032961  0.00108622 -0.06102116 -0.12698422  0.42382600  0.07586139  0.24690109
                               -0.00000568  0.00002774  0.00017803 -0.21214352 -0.11133106  0.13871838  0.24147338  0.03019299

  7  1     7    1  |0 0>       -0.00001550  0.00001328 -0.00001021 -0.00002340 -0.00002584 -0.00000072  0.00000436 -0.00000660
                                0.00001418 -0.00004112  0.00005432  0.00000169  0.00002253 -0.00004028  0.00001932  0.00000966

  8  1     8    1  |0 0>        0.00000034 -0.00000404  0.00000777  0.00000022  0.00000066  0.00000453 -0.00000224  0.00000764
                               -0.00000104  0.00001664 -0.00000188 -0.00000376 -0.00000498  0.00000997 -0.00000148 -0.00001022

  9  1     9    1  |0 0>       -0.00000535 -0.00000083 -0.00000062 -0.00000317  0.00000123  0.00000512  0.00000233  0.00000681
                                0.00000053  0.00003592  0.00000278 -0.00000345 -0.00000215  0.00000723  0.00000293 -0.00001385

 10  1    10    1  |0 0>        0.00000187  0.00000515  0.00000751 -0.00000273  0.00000146 -0.00000158  0.00000142 -0.00000725
                               -0.00000001  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 1>+      -0.00000350 -0.00000458 -0.00000394 -0.00001335  0.00000576  0.00000001  0.00000121  0.00000373
                                0.00000052 -0.00004209 -0.00000329 -0.00000491 -0.00000503 -0.00000290  0.00000247  0.00002063

 12  1     2    1  |1 1>+      -0.15009120  0.02275091 -0.06272114  0.01945986 -0.02891336  0.00352189  0.00951306 -0.01691231
                               -0.18366083 -0.26807111 -0.01339634  0.00123462  0.02094969 -0.02230954  0.01578963  0.05119844

 13  1     3    1  |1 1>+      -0.04789694 -0.03273305  0.01323813  0.16793169 -0.24287501  0.02852014  0.07951123 -0.13944311
                               -0.02113366  0.36491617  0.00676957  0.01074875  0.17619914 -0.18578102  0.13192471  0.41221727

 14  1     4    1  |1 1>+       0.15569769 -0.01719552  0.11054408  0.02731501  0.06711784 -0.20411367 -0.03353003 -0.12865897
                               -0.20745985  0.00317980 -0.02991123  0.09123725  0.06000952 -0.06560517 -0.11071213 -0.01667013

 15  1     5    1  |1 1>+       0.21574412 -0.07253733  0.01941865 -0.08288927  0.05682082 -0.05986486 -0.16455084  0.03887306
                               -0.09329058 -0.15365856 -0.41018931 -0.01626906 -0.03984862 -0.13708994  0.17305485  0.01662229

 16  1     6    1  |1 1>+      -0.17980964 -0.19858532  0.32279617  0.06697151 -0.23219407 -0.06079686 -0.10999186  0.30153496
                               -0.26756774  0.01019777  0.09755592  0.29113497 -0.26097126 -0.08758129 -0.19683847  0.09085681

 17  1     7    1  |1 1>+      -0.00002478  0.00014282  0.00012013  0.00301920  0.05163933  0.05262922 -0.01619903  0.01829891
                                0.00005008 -0.00001530 -0.00009220  0.11575329  0.07046920  0.02474133  0.02929491  0.00347045

 18  1     8    1  |1 1>+       0.00004852 -0.00004821 -0.00016914  0.03806232 -0.02572707  0.02730301  0.07493682 -0.01778954
                                0.00007609 -0.00016204  0.00002907  0.00718143  0.01807503  0.06280556 -0.07906640 -0.00722763

 19  1     9    1  |1 1>+       0.00000286 -0.00013423 -0.00029354  0.01237990  0.02964017 -0.09422330 -0.01489619 -0.05916340
                               -0.00000174  0.00001604 -0.00005299  0.03913660  0.02609500 -0.03041475 -0.05097128 -0.00776867

 20  1     1    1  |1 0>       -0.00001041  0.00001800 -0.00002428 -0.00000316 -0.00000664  0.00001261 -0.00000927 -0.00000508
                               -0.00001027  0.00000197 -0.00000231 -0.00001226 -0.00001603  0.00000439  0.00000223  0.00000378

 21  1     2    1  |1 0>       -0.05590382 -0.17656006 -0.35125867  0.02862863  0.07221538  0.25340949 -0.31897105 -0.02803333
                               -0.14353894  0.06585049 -0.01383948 -0.15411133  0.10348512 -0.10992121 -0.30145673  0.07149728

 22  1     3    1  |1 0>        0.21048564 -0.34579991  0.05544273  0.01194819  0.03141788  0.10708777 -0.13574437 -0.01182775
                                0.37103135  0.01625742  0.02071075 -0.06516674  0.04457429 -0.04695170 -0.12888758  0.03103194

 23  1     4    1  |1 0>       -0.26805274  0.01032014  0.09697156  0.23188580  0.36037101  0.12729537  0.19786535 -0.03331882
                                0.18055507  0.20038853 -0.32161600  0.02376395 -0.28414609 -0.20939781 -0.00400811  0.08615145

 24  1     5    1  |1 0>        0.06073482  0.50726066  0.01323253 -0.00530966 -0.08807070  0.09320392 -0.06641446 -0.21054701
                               -0.01735387  0.04481989 -0.04290224  0.08288606 -0.12151990  0.01473542  0.03993764 -0.07028387

 25  1     6    1  |1 0>       -0.11756861  0.06448705 -0.02329760 -0.09002711 -0.06092197  0.06538542  0.11000427  0.01675226
                                0.20103956 -0.00476356  0.41069039  0.02683817  0.06788556 -0.20362220 -0.03342695 -0.13004883

 26  1     7    1  |1 0>        0.00000456 -0.00000307  0.00005837 -0.03896034 -0.02812347  0.02972765  0.04968112  0.00816084
                                0.00000308 -0.00012653 -0.00031343  0.01208626  0.03131825 -0.09334273 -0.01451981 -0.06043532

 27  1     8    1  |1 0>       -0.00002717 -0.00032570 -0.00002759 -0.00248044 -0.04046329  0.04269548 -0.03031959 -0.09509772
                                0.00000641 -0.00004261  0.00002946  0.03845696 -0.05577577  0.00657204  0.01827559 -0.03208154

 28  1     9    1  |1 0>        0.00008279 -0.00000401  0.00005733  0.12480967 -0.02403947 -0.00791920 -0.03078780  0.02234747
                               -0.00003248 -0.00042175 -0.00021094 -0.01687338  0.02691376 -0.01151317  0.03349274 -0.07730051

 29  1     1    1  |1 1>-       0.00000677 -0.00000763  0.00000767  0.00001388  0.00000379 -0.00000629  0.00000359 -0.00000676
                               -0.00000056 -0.00000886  0.00002732  0.00000432 -0.00000160 -0.00000133  0.00000341  0.00000238

 30  1     2    1  |1 1>-       0.20454894 -0.01061139  0.03019129  0.14580081  0.09667886 -0.10471516 -0.17616907 -0.02693721
                                0.11936148 -0.01444249  0.05333498 -0.04356405 -0.10750461  0.32591418  0.05341124  0.20577510

 31  1     3    1  |1 1>-       0.19855209 -0.06465947  0.03498394 -0.11058508 -0.07272199  0.07860009  0.13217327  0.02010321
                               -0.13870613 -0.00258525 -0.36506783  0.03314038  0.08057695 -0.24465729 -0.03997147 -0.15369494

 32  1     4    1  |1 1>-      -0.14673898  0.14870445 -0.00340962 -0.00551114 -0.08857800  0.09318974 -0.06616313 -0.20890399
                                0.14875232  0.01428421  0.03135768  0.08396817 -0.12199656  0.01450038  0.04028270 -0.07040538

 33  1     5    1  |1 1>-       0.26807449 -0.00984080 -0.09742407  0.52292477  0.09899743  0.03979983  0.00168703  0.05728397
                               -0.18032657 -0.20119768  0.32140424 -0.04194836 -0.05091663 -0.14988039  0.10790347 -0.21493588

 34  1     6    1  |1 1>-       0.15580382 -0.44107460 -0.19219539 -0.01555290 -0.03927854 -0.13839377  0.17336382  0.01740041
                                0.24310850  0.05995138  0.00879134  0.08317533 -0.05592064  0.05962686  0.16448999 -0.03885723

 35  1     7    1  |1 1>-       0.00005869 -0.00010395 -0.00003615  0.00723218  0.01891002  0.06192791 -0.07842114 -0.00519345
                               -0.00006725  0.00007088  0.00015121 -0.03890520  0.02689178 -0.02744199 -0.07530760  0.01846058

 36  1     8    1  |1 1>-       0.00003283  0.00001156  0.00014958  0.00905820 -0.09453032 -0.03266771 -0.06009650  0.01888108
                               -0.00007021 -0.00031430 -0.00014290 -0.01383855  0.07856090  0.04113626  0.01728803 -0.05896556

 37  1     9    1  |1 1>-       0.00002422  0.00027659  0.00002987  0.00233323  0.04007159 -0.04404003  0.03200326  0.09526156
                               -0.00001181  0.00004430 -0.00003401 -0.03762744  0.05520577 -0.00597491 -0.01666397  0.03170250


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000014  0.00000038 -0.00000026  0.00000076  0.00000022  0.00000028  0.00000019  0.00000088
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000897 -0.00008303  0.00004969  0.19231497  0.01421283 -0.13499020 -0.05714852  0.09048050
                                0.00000474  0.00000559 -0.00000052 -0.16728334  0.07739372 -0.05163037 -0.38864980  0.00936310

  3  1     3    1  |0 0>        0.00002074 -0.00004759  0.00002672  0.20080442 -0.05744674 -0.13229251 -0.02181994 -0.15146090
                               -0.00002330  0.00002081 -0.00001538 -0.19477027 -0.24130785 -0.20814134  0.17416136 -0.01551622

  4  1     4    1  |0 0>        0.00004066  0.00007973 -0.00001397 -0.15693398  0.28313030  0.00096464  0.24715530  0.04430827
                                0.00000897 -0.00008154  0.00013886 -0.19077543 -0.04323008 -0.05855363 -0.01747970 -0.21165415

  5  1     5    1  |0 0>       -0.00000205  0.00005352 -0.00001093 -0.14502400  0.06141911  0.23879749 -0.04907045 -0.03437815
                                0.00000655 -0.00005912  0.00005738 -0.13537076 -0.00431047 -0.21967021 -0.05905357  0.31482378

  6  1     6    1  |0 0>       -0.00006720  0.00012190 -0.00006273 -0.06908894  0.07581143 -0.17264779 -0.04145155 -0.27309206
                               -0.00000079  0.00005225 -0.00008213  0.07931927  0.30878270 -0.18542670  0.02217230 -0.03882436

  7  1     7    1  |0 0>        0.09554267 -0.25576086  0.19204166 -0.00004233  0.00025834  0.00005027  0.00015227  0.00001404
                               -0.11472993  0.50023539 -0.32352814  0.00004740 -0.00001826  0.00000140  0.00002320  0.00007832

  8  1     8    1  |0 0>        0.48024804  0.34798546  0.31891232  0.00004586 -0.00004988 -0.00002005 -0.00002347  0.00000180
                                0.15838902  0.01689655  0.02598786  0.00001682  0.00003152  0.00001935  0.00001067  0.00002571

  9  1     9    1  |0 0>        0.19513374 -0.02792215 -0.11193397  0.00002310 -0.00002491 -0.00004664 -0.00005704 -0.00002994
                               -0.40420965  0.20415582  0.47226223  0.00007032  0.00004077  0.00000679 -0.00000369  0.00003568

 10  1    10    1  |0 0>        0.00000197 -0.00000549  0.00000379 -0.00001163 -0.00000332 -0.00000419 -0.00000283 -0.00001346
                                0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000004  0.00000001  0.00000012 -0.00000000

 11  1     1    1  |1 1>+      -0.01396297  0.00172438  0.00844793 -0.00000611  0.00000835  0.00000191 -0.00000379  0.00000062
                                0.02921994 -0.01412467 -0.03474222 -0.00001637  0.00000288  0.00000133  0.00000689  0.00000003

 12  1     2    1  |1 1>+       0.09408288 -0.01154815 -0.05693937  0.00739700 -0.01163507 -0.00204460 -0.00936682 -0.00149464
                               -0.19684340  0.09505294  0.23418304  0.00855085  0.00166996  0.00409911  0.00123986  0.00577247

 13  1     3    1  |1 1>+      -0.01137391  0.00135104  0.00690017  0.06142002 -0.09651081 -0.01676075 -0.07704725 -0.01216741
                                0.02377501 -0.01141595 -0.02836819  0.07089762  0.01356303  0.03381720  0.01015904  0.04730089

 14  1     4    1  |1 1>+      -0.20518753 -0.14855353 -0.13602487 -0.00888393  0.01210004 -0.03071277 -0.00733841 -0.04677472
                               -0.06725545 -0.00741018 -0.01150523  0.01097359  0.04961031 -0.03295077  0.00403339 -0.00677437

 15  1     5    1  |1 1>+       0.04241074 -0.10941200  0.08102190  0.01852612 -0.00020715 -0.03906002  0.01664599  0.00735903
                               -0.05235536  0.21522209 -0.13413923  0.01549860 -0.00099423  0.03405897  0.00893659 -0.05881703

 16  1     6    1  |1 1>+       0.00037194  0.00010980  0.00031608 -0.07855371  0.01899937  0.04803725  0.00929527  0.03880451
                                0.00004460  0.00026944 -0.00015071  0.07612213  0.08114255  0.06801798 -0.03345275  0.00405412

 17  1     7    1  |1 1>+       0.00501571  0.00369531  0.00328025 -0.20978312 -0.02941288  0.14005149  0.07008421 -0.16828092
                                0.00163509  0.00016593  0.00028553  0.17808647 -0.15052731  0.01095797  0.56188581 -0.01938310

 18  1     8    1  |1 1>+       0.04828353 -0.12458801  0.09228797 -0.12930034  0.00242529  0.27367087 -0.11610451 -0.05188260
                               -0.05961507  0.24509864 -0.15278339 -0.10902840  0.00622372 -0.23931274 -0.06225836  0.41282280

 19  1     9    1  |1 1>+       0.23360898  0.16922610  0.15487238 -0.05693302  0.08514333 -0.21903507 -0.05320293 -0.32470576
                                0.07657829  0.00846549  0.01305367  0.07256691  0.35066278 -0.23209664  0.01656314 -0.04708018

 20  1     1    1  |1 0>        0.00890815 -0.03662584  0.02282603 -0.00000131 -0.00000036  0.00000311  0.00000173 -0.00000164
                                0.00721698 -0.01861704  0.01379065  0.00000223  0.00000098  0.00000518 -0.00000074  0.00000056

 21  1     2    1  |1 0>        0.02372927 -0.09752935  0.06077471 -0.02857974  0.00163539 -0.06274200 -0.01632643  0.10829413
                                0.01921279 -0.04956888  0.03671507  0.03387688 -0.00057142 -0.07175718  0.03046473  0.01362414

 22  1     3    1  |1 0>       -0.05561250  0.22856259 -0.14241907 -0.01219959  0.00069675 -0.02678271 -0.00695224  0.04623034
                               -0.04506162  0.11616471 -0.08604934  0.01448088 -0.00030612 -0.03061996  0.01295725  0.00582084

 23  1     4    1  |1 0>       -0.00010269 -0.00002372 -0.00001137 -0.00034055 -0.07442489 -0.03047951  0.13682561 -0.00599554
                                0.00032303  0.00025092  0.00020623  0.00525142  0.01618911 -0.00700709 -0.01060941  0.05380916

 24  1     5    1  |1 0>       -0.17160744  0.08293994  0.20423412 -0.03563179 -0.00677001 -0.01708863 -0.00512103 -0.02387783
                               -0.08228075  0.00991408  0.04950813  0.03088782 -0.04856204 -0.00839596 -0.03881473 -0.00608185

 25  1     6    1  |1 0>       -0.06747043 -0.00725744 -0.01130470 -0.01091416 -0.04935399  0.03307974 -0.00430011  0.00675492
                                0.20510724  0.14849474  0.13611846 -0.00870903  0.01193993 -0.03080711 -0.00739630 -0.04694725

 26  1     7    1  |1 0>        0.07658264  0.00837925  0.01319050 -0.06873321 -0.34283895  0.23705190 -0.02507750  0.04761509
                               -0.23371229 -0.16901966 -0.15495253 -0.05330876  0.08341237 -0.22107658 -0.05311863 -0.32932966

 27  1     8    1  |1 0>        0.19558392 -0.09456473 -0.23247509 -0.25049310 -0.04799898 -0.11949655 -0.03588193 -0.16719016
                                0.09342473 -0.01158628 -0.05654729  0.21692865 -0.34091570 -0.05920108 -0.27223799 -0.04300036

 28  1     9    1  |1 0>       -0.00163501 -0.00020583 -0.00027550  0.35677225  0.21303281  0.24105578  0.16393389  0.00422616
                                0.00505205  0.00349294  0.00340960  0.38118279 -0.05286677 -0.23605172 -0.06697251 -0.04808879

 29  1     1    1  |1 1>-      -0.01144330 -0.00125056 -0.00196769  0.00001430 -0.00000076 -0.00000746 -0.00000656 -0.00000328
                                0.03491745  0.02526707  0.02315420  0.00001460  0.00000351  0.00000044  0.00000244 -0.00000312

 30  1     2    1  |1 1>-      -0.04660977 -0.00512502 -0.00798396  0.01739734  0.07918447 -0.05287280  0.00651597 -0.01084088
                                0.14221690  0.10293830  0.09428245  0.01400772 -0.01928509  0.04925225  0.01178020  0.07487749

 31  1     3    1  |1 1>-      -0.06211440 -0.00682441 -0.01062096 -0.01309522 -0.05949004  0.03967562 -0.00486955  0.00813379
                                0.18947410  0.13725579  0.12559563 -0.01050159  0.01443832 -0.03698486 -0.00886646 -0.05613787

 32  1     4    1  |1 1>-       0.17180126 -0.08328194 -0.20405225 -0.03566942 -0.00686458 -0.01699240 -0.00511220 -0.02396672
                                0.08213371 -0.01025859 -0.04953721  0.03088328 -0.04858013 -0.00839941 -0.03888229 -0.00616264

 33  1     5    1  |1 1>-      -0.00006026  0.00026867 -0.00016502  0.07577990  0.00675107  0.03730945  0.10334904 -0.00179548
                               -0.00008151  0.00009724 -0.00010236  0.08389945 -0.00282230 -0.05500329 -0.01984743  0.01513127

 34  1     6    1  |1 1>-       0.05205711 -0.21507664  0.13447744  0.01570002 -0.00086090  0.03422433  0.00901555 -0.05883898
                                0.04228591 -0.10937235  0.08112393 -0.01842231  0.00053786  0.03900286 -0.01646208 -0.00736622

 35  1     7    1  |1 1>-       0.06379490 -0.24710607  0.14777842 -0.10366796  0.00726622 -0.23669628 -0.06149005  0.41624708
                                0.05028710 -0.12483972  0.09105141  0.12457913  0.00510600 -0.27229965  0.12204756  0.05280600

 36  1     8    1  |1 1>-       0.00001667 -0.00001028  0.00000215  0.17872703  0.36364420  0.23015119 -0.39804264  0.02361529
                                0.00002738 -0.00003748  0.00001840  0.17150391 -0.08227899 -0.09599804  0.00312891 -0.21634277

 37  1     9    1  |1 1>-       0.19424233 -0.08912696 -0.23597393  0.25269614  0.04782961  0.12460313  0.03722159  0.15828938
                                0.09243532 -0.00875797 -0.05854542 -0.21962603  0.34084638  0.06501648  0.26964842  0.04185457


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.01750658 -0.00000138 -0.00000045 -0.00000057  0.00000013  0.00000072  0.00000027 -0.00000030
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00003757  0.00001948  0.00000733  0.00006035 -0.15596609  0.42751096  0.19778729 -0.05563697
                                0.00000696  0.00000894 -0.00004447  0.00002745  0.13249542  0.00700425 -0.14567787  0.01901157

  3  1     3    1  |0 0>       -0.00003101  0.00006256  0.00002879 -0.00004024  0.35168539  0.31489471  0.01591741 -0.12602105
                                0.00000636 -0.00000357  0.00004644 -0.00002315 -0.23571049 -0.02959193  0.12826786  0.03593190

  4  1     4    1  |0 0>        0.00000047 -0.00000244 -0.00000825 -0.00000885  0.01683698  0.12410249 -0.29470532  0.14736042
                                0.00001259  0.00004015  0.00002712 -0.00001151  0.07363411  0.07553283 -0.19146765  0.21804375

  5  1     5    1  |0 0>        0.00000654 -0.00000337  0.00004512 -0.00000896 -0.20073223  0.12714795 -0.27215152  0.10067661
                               -0.00000988  0.00012371  0.00001987  0.00001065 -0.26591260  0.13300337 -0.12031282 -0.13675621

  6  1     6    1  |0 0>        0.00001082 -0.00000286 -0.00001309  0.00000133 -0.04858970  0.04302228  0.09524422  0.28920103
                               -0.00000154  0.00002120 -0.00000426 -0.00002108  0.05581642  0.06018150  0.21242876  0.37540861

  7  1     7    1  |0 0>        0.00002185 -0.06127185  0.39945812  0.07207541 -0.00009755  0.00009348  0.00001692 -0.00002909
                               -0.00003983 -0.12327518 -0.08036237 -0.30403912 -0.00009331 -0.00005007 -0.00004829 -0.00003918

  8  1     8    1  |0 0>        0.00001789  0.22192935  0.01444986  0.32596184  0.00030831 -0.00021368 -0.00008285  0.00017877
                                0.00000272  0.05601088 -0.33197060  0.11657654 -0.00023403  0.00009222 -0.00004147  0.00009809

  9  1     9    1  |0 0>       -0.00000052 -0.01555828 -0.04643375  0.08466254 -0.00003453 -0.00012782  0.00024025 -0.00015507
                                0.00001417  0.45936829  0.06362470 -0.24086199 -0.00008736 -0.00023527  0.00011647  0.00006926

 10  1    10    1  |0 0>       -0.43359503  0.00004865  0.00001571  0.00001993 -0.00000608 -0.00003181 -0.00001190  0.00001334
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000009  0.00000001 -0.00000009  0.00000001

 11  1     1    1  |1 1>+       0.00000181 -0.00146415 -0.00533305  0.00811078 -0.00002103 -0.00007654  0.00013698 -0.00009346
                               -0.00001390  0.04530186  0.00647239 -0.02312899 -0.00005299 -0.00013631  0.00006881  0.00004498

 12  1     2    1  |1 1>+       0.00000004  0.01447010  0.05305242 -0.08071022  0.00286559 -0.01539682  0.03625861 -0.01754721
                               -0.00004901 -0.45137659 -0.06441600  0.22981253 -0.00201692 -0.01070213  0.02239926 -0.01960230

 13  1     3    1  |1 1>+       0.00000091 -0.00173672 -0.00647600  0.00974759  0.02382526 -0.12747681  0.30039827 -0.14527052
                                0.00000002  0.05449398  0.00777090 -0.02770394 -0.01659546 -0.08872388  0.18547824 -0.16232277

 14  1     4    1  |1 1>+       0.00004316  0.18930879  0.01224099  0.27813739 -0.01382237  0.03011207  0.04465213  0.12306211
                               -0.00000118  0.04858153 -0.28307456  0.09899303  0.02038179  0.02547600  0.09535052  0.16589482

 15  1     5    1  |1 1>+      -0.00000351  0.05252345 -0.33987511 -0.06290328  0.08791969 -0.04283071  0.09044224 -0.03057477
                                0.00000597  0.09740732  0.06745357  0.26339603  0.12096338 -0.05050937  0.03393444  0.07800458

 16  1     6    1  |1 1>+       0.00001704 -0.00027102 -0.00046364 -0.00050868 -0.28153788 -0.33769512 -0.03794255  0.13206936
                               -0.00001348  0.00005174  0.00050715  0.00017768  0.18550872  0.02709825 -0.07533880 -0.01504224

 17  1     7    1  |1 1>+      -0.52003670  0.00114282  0.00008517  0.00163421 -0.15313240  0.25653415  0.13384869 -0.02857937
                               -0.00000953  0.00028550 -0.00165284  0.00058166  0.12089171  0.00752300 -0.12217064  0.00040779

 18  1     8    1  |1 1>+       0.00000226 -0.01398286  0.09048240  0.01677167  0.12240674 -0.06055831  0.12624414 -0.04243113
                               -0.00001796 -0.02600651 -0.01797313 -0.07018645  0.16938034 -0.07035689  0.04734224  0.10887978

 19  1     9    1  |1 1>+       0.01120586  0.05043501  0.00326337  0.07399793  0.02166111 -0.04810390 -0.06521315 -0.17113493
                               -0.00000327  0.01289798 -0.07539719  0.02635958 -0.03040617 -0.03574869 -0.13068318 -0.23180862

 20  1     1    1  |1 0>       -0.00001182 -0.01122291 -0.00776572 -0.03028078 -0.00007449 -0.00004512 -0.00002644 -0.00002339
                               -0.00000633  0.00604459 -0.03913564 -0.00722397  0.00006811 -0.00006711 -0.00001731  0.00002551

 21  1     2    1  |1 0>       -0.00002645 -0.04406938 -0.03056283 -0.11937205 -0.22297353  0.09281520 -0.06231386 -0.14340165
                               -0.00000708  0.02380293 -0.15408211 -0.02850134  0.16113432 -0.07963961  0.16636702 -0.05596311

 22  1     3    1  |1 0>        0.00000903  0.10348489  0.07167340  0.27973441 -0.09519718  0.03959235 -0.02660636 -0.06117028
                                0.00000332 -0.05575738  0.36093507  0.06683813  0.06879563 -0.03403429  0.07102527 -0.02389828

 23  1     4    1  |1 0>        0.00000095  0.00006935 -0.00039891  0.00012513 -0.22329972 -0.02255301  0.16569575  0.00137461
                               -0.00001459 -0.00032299 -0.00003043 -0.00037892 -0.30581964  0.10793767  0.12635158  0.03959404

 24  1     5    1  |1 0>       -0.00000489 -0.39378083 -0.05583890  0.20031420  0.00838973  0.04473602 -0.09329728  0.08197813
                               -0.00000076 -0.01239468 -0.04632740  0.07074824  0.01198349 -0.06426346  0.15125814 -0.07332075

 25  1     6    1  |1 0>        0.00000024  0.04809992 -0.28311945  0.09929341 -0.01974653 -0.02531595 -0.09587632 -0.16583715
                               -0.00000215 -0.18933797 -0.01227819 -0.27804998 -0.01289231  0.03041891  0.04470540  0.12270063

 26  1     7    1  |1 0>       -0.00000060  0.01293126 -0.07538426  0.02635036  0.02677362  0.03509272  0.13314171  0.23177400
                               -0.01116270 -0.05045583 -0.00326690 -0.07400207  0.01637096 -0.05079549 -0.06449888 -0.16905852

 27  1     8    1  |1 0>       -0.00000945 -0.10491619 -0.01496854  0.05334761 -0.01175509 -0.06257295  0.13050565 -0.11406429
                                0.00000381 -0.00336503 -0.01230845  0.01874776 -0.01668975  0.08976620 -0.21138764  0.10226769

 28  1     9    1  |1 0>       -0.00002208 -0.00027212  0.00160800 -0.00055958 -0.06923520 -0.01562016 -0.00999912  0.00809176
                               -0.52001959  0.00106415  0.00006738  0.00160540 -0.12020891 -0.36342386 -0.09279275  0.10848087

 29  1     1    1  |1 1>-       0.00000104  0.00560712 -0.03257227  0.01140071 -0.00013987  0.00005158 -0.00002192  0.00006329
                                0.00001344 -0.02176662 -0.00140463 -0.03205788 -0.00018438  0.00012490  0.00005084 -0.00010933

 30  1     2    1  |1 1>-      -0.00000251  0.03367957 -0.19620037  0.06860416  0.03213126  0.04067503  0.15272032  0.26541059
                               -0.00003006 -0.13120951 -0.00847827 -0.19278026  0.02139466 -0.04906057 -0.07152709 -0.19651512

 31  1     3    1  |1 1>-      -0.00000076  0.04486127 -0.26142046  0.09147108 -0.02413077 -0.03051106 -0.11462270 -0.19920370
                               -0.00003243 -0.17484156 -0.01127619 -0.25686131 -0.01605575  0.03688958  0.05370822  0.14747883

 32  1     4    1  |1 1>-       0.00004519  0.39360963  0.05608886 -0.20091015  0.00855840  0.04458760 -0.09335025  0.08187326
                               -0.00000115  0.01270941  0.04571814 -0.07050574  0.01183469 -0.06414513  0.15111678 -0.07310741

 33  1     5    1  |1 1>-      -0.00001449  0.00011291  0.00013273  0.00030579 -0.03799742  0.00476506  0.09058139 -0.01324804
                               -0.00001518 -0.00001941  0.00043806  0.00014448 -0.02402040  0.44541681  0.16439322 -0.09300315

 34  1     6    1  |1 1>-      -0.00001435 -0.09813233 -0.06758352 -0.26305236  0.12120344 -0.05049376  0.03412639  0.07779113
                                0.00000151  0.05247601 -0.33992730 -0.06281372 -0.08766390  0.04397906 -0.09046708  0.03042813

 35  1     7    1  |1 1>-       0.00000207  0.02365852  0.01763760  0.07130956  0.16932834 -0.06918493  0.04444357  0.11122398
                               -0.00000323 -0.01405762  0.09024297  0.01716783 -0.12178680  0.05840183 -0.12174646  0.04032542

 36  1     8    1  |1 1>-      -0.00001263 -0.00000334  0.00002513 -0.00001011 -0.19016108 -0.02315191  0.11219842  0.00768147
                                0.52017317 -0.00008311 -0.00002795  0.00001239 -0.27337970 -0.10685750  0.04108632  0.07990038

 37  1     9    1  |1 1>-      -0.00005041 -0.10541708 -0.01532377  0.05179887  0.00795176  0.06365078 -0.13127075  0.11186543
                                0.00000004 -0.00303399 -0.01424780  0.01838214  0.01936864 -0.09079892  0.21363854 -0.10286279


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>        0.00000007  0.00000018  0.00000074  0.00000022  0.00798517
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.13417301  0.00009350  0.00020995 -0.00019049  0.00000345
                               -0.19178483 -0.00013930 -0.00000647  0.00015017 -0.00000015

  3  1     3    1  |0 0>        0.08728303  0.00004695  0.00014185  0.00024139  0.00000355
                                0.15006617  0.00024889 -0.00002032 -0.00008949  0.00000008

  4  1     4    1  |0 0>        0.33747165 -0.00009494 -0.00006409  0.00005951 -0.00000014
                               -0.09915348  0.00004082  0.00000965  0.00000713 -0.00000020

  5  1     5    1  |0 0>       -0.21525066  0.00018693  0.00001533  0.00008785 -0.00000049
                                0.18636451  0.00003649  0.00042733  0.00016031  0.00000076

  6  1     6    1  |0 0>       -0.15320106 -0.00007476 -0.00010078  0.00002161 -0.00000010
                                0.17352379  0.00001392  0.00005471  0.00007523  0.00000002

  7  1     7    1  |0 0>       -0.00006643 -0.39905220  0.00220577 -0.05737644 -0.00000155
                                0.00000638  0.00733675  0.11063938 -0.19829247  0.00000206

  8  1     8    1  |0 0>        0.00001817 -0.01324344  0.35759239 -0.19467912  0.00000026
                                0.00001123 -0.20637880 -0.00922449  0.07416483 -0.00000031

  9  1     9    1  |0 0>        0.00023917 -0.10905830  0.00757150  0.12208017  0.00000017
                               -0.00020277  0.01370544  0.27186534  0.33640893  0.00000084

 10  1    10    1  |0 0>       -0.00000300 -0.00000847 -0.00003517 -0.00001038  0.90110776
                               -0.00000012 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 1>+       0.00014739 -0.07192878  0.00482355  0.08783223  0.00000083
                               -0.00012256  0.00993852  0.19161541  0.24168241  0.00000247

 12  1     2    1  |1 1>+      -0.03004013 -0.02071913  0.00142624  0.02530967  0.00000022
                                0.00625714  0.00284580  0.05515208  0.06967408  0.00000345

 13  1     3    1  |1 1>+      -0.24866661  0.00253859 -0.00011684 -0.00312486  0.00000077
                                0.05174170 -0.00038457 -0.00674631 -0.00845950 -0.00000019

 14  1     4    1  |1 1>+      -0.06614569  0.00236921 -0.06389939  0.03482295 -0.00000219
                                0.07780155  0.03685772  0.00158975 -0.01334916  0.00000009

 15  1     5    1  |1 1>+       0.12331219 -0.07175894  0.00039965 -0.00983008  0.00000190
                               -0.08959476  0.00134713  0.02050111 -0.03424504 -0.00000647

 16  1     6    1  |1 1>+      -0.06395831 -0.00015116 -0.00007269 -0.00026498 -0.00000689
                               -0.08980096 -0.00025639  0.00004450  0.00004388 -0.00000182

 17  1     7    1  |1 1>+      -0.10239894  0.00041855 -0.00938174  0.00497034 -0.25023107
                               -0.15598124  0.00534074  0.00022517 -0.00186027 -0.00000209

 18  1     8    1  |1 1>+       0.17207615  0.49588748 -0.00290535  0.06791469  0.00000382
                               -0.12522807 -0.00942908 -0.14361932  0.23690722 -0.00000479

 19  1     9    1  |1 1>+       0.09441833  0.01669913 -0.44204590  0.24046249  0.00536690
                               -0.10549980  0.25509008  0.01068561 -0.09264268  0.00000045

 20  1     1    1  |1 0>        0.00000200  0.00540852  0.08237512 -0.13620173 -0.00000101
                                0.00004440  0.28504334 -0.00166082  0.03905814  0.00000083

 21  1     2    1  |1 0>        0.16499963 -0.00059189 -0.00904792  0.01562570 -0.00000010
                                0.22662447 -0.03265157  0.00016678 -0.00450045  0.00000073

 22  1     3    1  |1 0>        0.07041999  0.00144902  0.02213556 -0.03625019 -0.00000386
                                0.09671502  0.07603756 -0.00045808  0.01038333 -0.00000076

 23  1     4    1  |1 0>        0.20978080  0.00029937 -0.00000714 -0.00017497  0.00000055
                               -0.14436579  0.00003145  0.00015900 -0.00031847 -0.00000142

 24  1     5    1  |1 0>       -0.02595876  0.00245671  0.04815243  0.06085159  0.00000992
                               -0.12516956  0.01809322 -0.00128416 -0.02207637  0.00000001

 25  1     6    1  |1 0>       -0.07830303  0.03682036  0.00159797 -0.01333957  0.00000023
                               -0.06597239 -0.00239482  0.06383006 -0.03482537  0.00000972

 26  1     7    1  |1 0>        0.10847137  0.25509803  0.01074330 -0.09252988  0.00000101
                                0.09235546 -0.01660161  0.44216984 -0.24049916 -0.00535966

 27  1     8    1  |1 0>        0.03620104  0.01725686  0.33335678  0.42058888  0.00001210
                                0.17463446  0.12513602 -0.00844042 -0.15279678 -0.00000026

 28  1     9    1  |1 0>       -0.01664332 -0.00539329 -0.00024857  0.00201097 -0.00000427
                                0.00540618  0.00027177 -0.00967474  0.00512072 -0.25024282

 29  1     1    1  |1 1>-       0.00000583 -0.14662768 -0.00615639  0.05321239 -0.00000043
                               -0.00000996  0.00957011 -0.25412155  0.13820147 -0.00000118

 30  1     2    1  |1 1>-       0.12467111  0.02555823  0.00112306 -0.00922536 -0.00000022
                                0.10565466 -0.00161277  0.04432463 -0.02415080  0.00000187

 31  1     3    1  |1 1>-      -0.09353259  0.03401534  0.00142002 -0.01239837 -0.00000002
                               -0.07930215 -0.00224890  0.05892934 -0.03212779  0.00000262

 32  1     4    1  |1 1>-      -0.02620642 -0.00246887 -0.04811158 -0.06070868 -0.00000307
                               -0.12544192 -0.01817476  0.00126736  0.02203573  0.00000019

 33  1     5    1  |1 1>-       0.12046685  0.00004598  0.00003730 -0.00014053 -0.00000167
                               -0.07989463  0.00018663  0.00022931 -0.00007652  0.00000879

 34  1     6    1  |1 1>-      -0.08951322 -0.00136378 -0.02081612  0.03420105  0.00000211
                               -0.12312057 -0.07153888  0.00043279 -0.00979772  0.00000149

 35  1     7    1  |1 1>-      -0.12598390  0.00976237  0.15018799 -0.22802826 -0.00000056
                               -0.17564462  0.49871516 -0.00304927  0.06471691  0.00000125

 36  1     8    1  |1 1>-       0.13936956  0.00021436 -0.00001388 -0.00010247 -0.00000215
                               -0.09700870 -0.00000802 -0.00001398 -0.00021019  0.25029276

 37  1     9    1  |1 1>-      -0.03389168  0.01712004  0.33035069  0.42560392  0.00000422
                               -0.17138245  0.11453898 -0.00830531 -0.15432761 -0.00000014



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    1.56%    0.50%    0.32%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.20%    1.34%    0.84%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.62%    0.54%    1.21%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%   23.19%   19.61%   45.86%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    5.00%    6.05%   12.10%   23.19%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    7.03%    4.92%    3.38%    4.73%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.01%    0.01%    0.52%    1.13%   22.56%   21.04%
 15  1     5    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    4.10%   19.99%    3.30%    0.66%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    4.23%    0.86%    2.12%    0.40%
 17  1     7    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    2.92%    0.95%    0.58%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.37%    2.52%    1.57%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%   58.05%   18.99%   11.62%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.59%   15.39%    1.76%    0.41%
 22  1     3    1  |1 0>          0.00%    0.01%    0.00%    0.00%   18.47%    1.57%    4.67%    0.67%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    4.22%    0.84%    2.12%    0.39%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.01%   14.71%   11.84%    0.15%    0.06%
 25  1     6    1  |1 0>          0.00%    0.00%    0.01%    0.01%   13.67%   14.56%    1.73%    0.60%
 26  1     7    1  |1 0>          0.00%    0.37%    2.52%    1.57%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    1.17%    0.99%    2.31%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%    7.42%   50.06%   31.18%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.04%    0.27%   19.48%   17.15%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.01%    0.00%   11.45%   11.34%    6.43%    1.44%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.84%    0.40%   16.86%   28.53%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    4.22%    0.82%    2.12%    0.39%
 34  1     6    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    9.90%   10.02%    1.20%    0.33%
 35  1     7    1  |1 1>-         0.00%    2.91%    0.98%    0.56%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    1.17%    0.96%    2.33%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%   24.60%    7.13%    5.13%    1.36%    1.99%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    4.55%   18.36%    1.55%    5.35%   10.42%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    4.33%   11.30%    2.03%    2.62%   19.92%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    1.86%    0.57%   11.61%   24.47%    1.70%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    4.87%    2.85%   19.89%    6.41%    6.19%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         5.63%    7.24%    0.41%    0.04%    0.13%    0.05%    0.03%    0.29%
 13  1     3    1  |1 1>+         0.27%   13.42%    0.02%    2.83%    9.00%    3.53%    2.37%   18.94%
 14  1     4    1  |1 1>+         6.73%    0.03%    1.31%    0.91%    0.81%    4.60%    1.34%    1.68%
 15  1     5    1  |1 1>+         5.52%    2.89%   16.86%    0.71%    0.48%    2.24%    5.70%    0.18%
 16  1     6    1  |1 1>+        10.39%    3.95%   11.37%    8.92%   12.20%    1.14%    5.08%    9.92%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    1.34%    0.76%    0.34%    0.11%    0.03%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.15%    0.10%    0.47%    1.19%    0.04%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.17%    0.16%    0.98%    0.28%    0.36%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          2.37%    3.55%   12.36%    2.46%    1.59%    7.63%   19.26%    0.59%
 22  1     3    1  |1 0>         18.20%   11.98%    0.35%    0.44%    0.30%    1.37%    3.50%    0.11%
 23  1     4    1  |1 0>         10.45%    4.03%   11.28%    5.43%   21.06%    6.01%    3.92%    0.85%
 24  1     5    1  |1 0>          0.40%   25.93%    0.20%    0.69%    2.25%    0.89%    0.60%    4.93%
 25  1     6    1  |1 0>          5.42%    0.42%   16.92%    0.88%    0.83%    4.57%    1.32%    1.72%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.17%    0.18%    0.96%    0.27%    0.37%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.15%    0.47%    0.19%    0.13%    1.01%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    1.59%    0.13%    0.02%    0.21%    0.65%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         5.61%    0.03%    0.38%    2.32%    2.09%   11.72%    3.39%    4.31%
 31  1     3    1  |1 1>-         5.87%    0.42%   13.45%    1.33%    1.18%    6.60%    1.91%    2.40%
 32  1     4    1  |1 1>-         4.37%    2.23%    0.10%    0.71%    2.27%    0.89%    0.60%    4.86%
 33  1     5    1  |1 1>-        10.44%    4.06%   11.28%   27.52%    1.24%    2.40%    1.16%    4.95%
 34  1     6    1  |1 1>-         8.34%   19.81%    3.70%    0.72%    0.47%    2.27%    5.71%    0.18%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.16%    0.11%    0.46%    1.18%    0.04%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    1.51%    0.28%    0.39%    0.38%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.14%    0.47%    0.20%    0.13%    1.01%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    6.50%    0.62%    2.09%   15.43%    0.83%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    7.83%    6.15%    6.08%    3.08%    2.32%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    6.10%    8.20%    0.34%    6.14%    4.68%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    3.94%    0.38%   10.53%    0.59%   10.03%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    1.11%   10.11%    6.42%    0.22%    7.61%
  7  1     7    1  |0 0>          2.23%   31.56%   14.16%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>         25.57%   12.14%   10.24%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>         20.15%    4.25%   23.56%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.10%    0.02%    0.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         4.76%    0.92%    5.81%    0.01%    0.01%    0.00%    0.01%    0.00%
 13  1     3    1  |1 1>+         0.07%    0.01%    0.09%    0.88%    0.95%    0.14%    0.60%    0.24%
 14  1     4    1  |1 1>+         4.66%    2.21%    1.86%    0.02%    0.26%    0.20%    0.01%    0.22%
 15  1     5    1  |1 1>+         0.45%    5.83%    2.46%    0.06%    0.00%    0.27%    0.04%    0.35%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    1.20%    0.69%    0.69%    0.12%    0.15%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    7.57%    2.35%    1.97%   32.06%    2.87%
 18  1     8    1  |1 1>+         0.59%    7.56%    3.19%    2.86%    0.00%   13.22%    1.74%   17.31%
 19  1     9    1  |1 1>+         6.04%    2.87%    2.42%    0.85%   13.02%   10.18%    0.31%   10.77%
 20  1     1    1  |1 0>          0.01%    0.17%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.09%    1.20%    0.50%    0.20%    0.00%    0.91%    0.12%    1.19%
 22  1     3    1  |1 0>          0.51%    6.57%    2.77%    0.04%    0.00%    0.17%    0.02%    0.22%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.58%    0.10%    1.88%    0.29%
 24  1     5    1  |1 0>          3.62%    0.70%    4.42%    0.22%    0.24%    0.04%    0.15%    0.06%
 25  1     6    1  |1 0>          4.66%    2.21%    1.87%    0.02%    0.26%    0.20%    0.01%    0.22%
 26  1     7    1  |1 0>          6.05%    2.86%    2.42%    0.76%   12.45%   10.51%    0.35%   11.07%
 27  1     8    1  |1 0>          4.70%    0.91%    5.72%   10.98%   11.85%    1.78%    7.54%    2.98%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%   27.26%    4.82%   11.38%    3.14%    0.23%
 29  1     1    1  |1 1>-         0.14%    0.06%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         2.24%    1.06%    0.90%    0.05%    0.66%    0.52%    0.02%    0.57%
 31  1     3    1  |1 1>-         3.98%    1.89%    1.59%    0.03%    0.37%    0.29%    0.01%    0.32%
 32  1     4    1  |1 1>-         3.63%    0.70%    4.41%    0.22%    0.24%    0.04%    0.15%    0.06%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    1.28%    0.01%    0.44%    1.11%    0.02%
 34  1     6    1  |1 1>-         0.45%    5.82%    2.47%    0.06%    0.00%    0.27%    0.04%    0.35%
 35  1     7    1  |1 1>-         0.66%    7.66%    3.01%    2.63%    0.01%   13.02%    1.87%   17.61%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    6.14%   13.90%    6.22%   15.84%    4.74%
 37  1     9    1  |1 1>-         4.63%    0.80%    5.91%   11.21%   11.85%    1.98%    7.41%    2.68%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    4.19%   18.28%    6.03%    0.35%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   17.92%   10.00%    1.67%    1.72%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.57%    2.11%   12.35%    6.93%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   11.10%    3.39%    8.85%    2.88%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.55%    0.55%    5.42%   22.46%
  7  1     7    1  |0 0>          0.00%    1.90%   16.60%    9.76%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    5.24%   11.04%   11.98%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%   21.13%    0.62%    6.52%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>         18.80%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.21%    0.01%    0.06%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%   20.40%    0.70%    5.93%    0.00%    0.04%    0.18%    0.07%
 13  1     3    1  |1 1>+         0.00%    0.30%    0.01%    0.09%    0.08%    2.41%   12.46%    4.75%
 14  1     4    1  |1 1>+         0.00%    3.82%    8.03%    8.72%    0.06%    0.16%    1.11%    4.27%
 15  1     5    1  |1 1>+         0.00%    1.22%   12.01%    7.33%    2.24%    0.44%    0.93%    0.70%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   11.37%   11.48%    0.71%    1.77%
 17  1     7    1  |1 1>+        27.04%    0.00%    0.00%    0.00%    3.81%    6.59%    3.28%    0.08%
 18  1     8    1  |1 1>+         0.00%    0.09%    0.85%    0.52%    4.37%    0.86%    1.82%    1.37%
 19  1     9    1  |1 1>+         0.01%    0.27%    0.57%    0.62%    0.14%    0.36%    2.13%    8.30%
 20  1     1    1  |1 0>          0.00%    0.02%    0.16%    0.10%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.25%    2.47%    1.51%    7.57%    1.50%    3.16%    2.37%
 22  1     3    1  |1 0>          0.00%    1.38%   13.54%    8.27%    1.38%    0.27%    0.58%    0.43%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   14.34%    1.22%    4.34%    0.16%
 24  1     5    1  |1 0>          0.00%   15.52%    0.53%    4.51%    0.02%    0.61%    3.16%    1.21%
 25  1     6    1  |1 0>          0.00%    3.82%    8.03%    8.72%    0.06%    0.16%    1.12%    4.26%
 26  1     7    1  |1 0>          0.01%    0.27%    0.57%    0.62%    0.10%    0.38%    2.19%    8.23%
 27  1     8    1  |1 0>          0.00%    1.10%    0.04%    0.32%    0.04%    1.20%    6.17%    2.35%
 28  1     9    1  |1 0>         27.04%    0.00%    0.00%    0.00%    1.92%   13.23%    0.87%    1.18%
 29  1     1    1  |1 1>-         0.00%    0.05%    0.11%    0.12%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    1.84%    3.86%    4.19%    0.15%    0.41%    2.84%   10.91%
 31  1     3    1  |1 1>-         0.00%    3.26%    6.85%    7.43%    0.08%    0.23%    1.60%    6.14%
 32  1     4    1  |1 1>-         0.00%   15.51%    0.52%    4.53%    0.02%    0.61%    3.16%    1.20%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.20%   19.84%    3.52%    0.88%
 34  1     6    1  |1 1>-         0.00%    1.24%   12.01%    7.31%    2.24%    0.45%    0.93%    0.70%
 35  1     7    1  |1 1>-         0.00%    0.08%    0.85%    0.54%    4.35%    0.82%    1.68%    1.40%
 36  1     8    1  |1 1>-        27.06%    0.00%    0.00%    0.00%   11.09%    1.20%    1.43%    0.64%
 37  1     9    1  |1 1>-         0.00%    1.11%    0.04%    0.30%    0.04%    1.23%    6.29%    2.31%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          5.48%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          3.01%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>         12.37%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          8.11%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          5.36%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%   15.93%    1.22%    4.26%    0.00%
  8  1     8    1  |0 0>          0.00%    4.28%   12.80%    4.34%    0.00%
  9  1     9    1  |0 0>          0.00%    1.21%    7.40%   12.81%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%   81.20%
 11  1     1    1  |1 1>+         0.00%    0.53%    3.67%    6.61%    0.00%
 12  1     2    1  |1 1>+         0.09%    0.04%    0.30%    0.55%    0.00%
 13  1     3    1  |1 1>+         6.45%    0.00%    0.00%    0.01%    0.00%
 14  1     4    1  |1 1>+         1.04%    0.14%    0.41%    0.14%    0.00%
 15  1     5    1  |1 1>+         2.32%    0.52%    0.04%    0.13%    0.00%
 16  1     6    1  |1 1>+         1.22%    0.00%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         3.48%    0.00%    0.01%    0.00%    6.26%
 18  1     8    1  |1 1>+         4.53%   24.60%    2.06%    6.07%    0.00%
 19  1     9    1  |1 1>+         2.00%    6.53%   19.55%    6.64%    0.00%
 20  1     1    1  |1 0>          0.00%    8.13%    0.68%    2.01%    0.00%
 21  1     2    1  |1 0>          7.86%    0.11%    0.01%    0.03%    0.00%
 22  1     3    1  |1 0>          1.43%    0.58%    0.05%    0.14%    0.00%
 23  1     4    1  |1 0>          6.48%    0.00%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          1.63%    0.03%    0.23%    0.42%    0.00%
 25  1     6    1  |1 0>          1.05%    0.14%    0.41%    0.14%    0.00%
 26  1     7    1  |1 0>          2.03%    6.54%   19.56%    6.64%    0.00%
 27  1     8    1  |1 0>          3.18%    1.60%   11.12%   20.02%    0.00%
 28  1     9    1  |1 0>          0.03%    0.00%    0.01%    0.00%    6.26%
 29  1     1    1  |1 1>-         0.00%    2.16%    6.46%    2.19%    0.00%
 30  1     2    1  |1 1>-         2.67%    0.07%    0.20%    0.07%    0.00%
 31  1     3    1  |1 1>-         1.50%    0.12%    0.35%    0.12%    0.00%
 32  1     4    1  |1 1>-         1.64%    0.03%    0.23%    0.42%    0.00%
 33  1     5    1  |1 1>-         2.09%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         2.32%    0.51%    0.04%    0.13%    0.00%
 35  1     7    1  |1 1>-         4.67%   24.88%    2.26%    5.62%    0.00%
 36  1     8    1  |1 1>-         2.88%    0.00%    0.00%    0.00%    6.26%
 37  1     9    1  |1 1>-         3.05%    1.34%   10.92%   20.50%    0.00%


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

              2       7     2877.99       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *   2023229.471994211.16  17778.10  11232.62      6.31      0.03      0.99
 REAL TIME  *   2033612.21 SEC
 DISK USED  *         2.85 GB (local),       45.62 GB (total)
 SF USED    *        17.87 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -462.662181260813

              CI              CI           MULTI         RHF-SCF
   -462.63545337   -462.60942326   -461.76978674   -462.19809477
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
