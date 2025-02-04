
 Working directory              : /wrk/irikura/molpro.AwBP1KcgcR/
 Global scratch directory       : /wrk/irikura/molpro.AwBP1KcgcR/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.AwBP1KcgcR/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   I SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 05-Oct-24          TIME: 12:34:49  
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

     28.836 MB (compressed) written to integral file ( 17.5%)

     Node minimum: 1.573 MB, node maximum: 3.670 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     847287.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     847287      RECORD LENGTH: 524288

 Memory used in sort:       1.40 MW

 SORT1 READ    21109381. AND WROTE      166541. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.10 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN    120 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

 Node minimum:      845957.  Node maximum:      852384. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.47      1.17
 REAL TIME  *         3.35 SEC
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
   3     -294.74616668      -0.00204954     0.26D-02     0.21D-02     2     0       0.01      0.03    diag
   4     -294.74648011      -0.00031343     0.44D-03     0.85D-03     3     0       0.00      0.03    diag
   5     -294.74653920      -0.00005909     0.14D-03     0.53D-03     4     0       0.01      0.04    diag
   6     -294.74654357      -0.00000437     0.33D-04     0.18D-03     5     0       0.00      0.04    diag
   7     -294.74654371      -0.00000014     0.45D-05     0.24D-04     6     0       0.01      0.05    diag
   8     -294.74654372      -0.00000001     0.98D-06     0.95D-05     7     0       0.00      0.05    fixocc
   9     -294.74654372      -0.00000000     0.70D-07     0.30D-06     8     0       0.01      0.06    diag
  10     -294.74654372      -0.00000000     0.13D-07     0.34D-07     0     0       0.00      0.06    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -294.746543715315
  RHF One-electron energy            -520.925437582748
  RHF Two-electron energy             226.178893867433
  RHF Kinetic energy                  110.887384553766
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.658071023151

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45092     1  1  s    1.00263
    2.1     2.00000    -2.00367     1  1  d0   0.99954
    3.1     2.00000    -2.00367     1  1  d1-  0.99832
    4.1     2.00000    -2.00367     1  1  d2-  0.34112    1  1  d1+  0.72848    1  1  d2+  0.59330
    5.1     2.00000    -2.00367     1  1  d1+ -0.63678    1  1  d2+  0.76866
    6.1     2.00000    -2.00367     1  1  d2-  0.93922
    7.1     2.00000    -0.60771     1  2  s    0.97222
    1.2     2.00000    -5.27630     1  1  pz   0.99607
    2.2     2.00000    -5.27630     1  1  px   1.00022
    3.2     2.00000    -5.27630     1  1  py   0.99607
    4.2     2.00000    -0.12598     1  2  py   0.87696
    5.2     2.00000    -0.12598     1  2  px   0.87696
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
 CPU TIMES  *         1.53      0.06      1.17
 REAL TIME  *         4.27 SEC
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.194D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.701D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.563D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.479D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.345D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 5 3 1 1 2 3   5 4 6 1 2 3 5 6 4 1   2 3 5 4 6 1 2 5 3 6   4 2 3 5 6 4 8121514
                                        711 91310 1 2 5 3 6   4 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.837D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.837D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.218D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.350D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.199D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.476D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.189D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.593D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 1 2 3   1 2 810 6 4 5 9 7 1   2 310 8 6 5 4 9 7 6   4 5 7 9 810 3 1 2 7
                                        9 6 4 510 8 1 2 3 6   7 9 4 5 810 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762   0.04762   0.04762   0.04762
 Weight factors for state symmetry  2:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762
 
 Number of orbital rotations:  796  ( 24 closed/active, 426 closed/virtual, 0 active/active, 346 active/virtual )
 Total number of variables:    9616
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   23    0   -294.30614990    -294.44373901   -0.13758912    0.39259614 0.00164276 0.00158064  0.87E+00      1.36
   2    8   24    0   -294.40942432    -294.41827709   -0.00885277    0.26109115 0.00003913 0.00005506  0.22E+00      3.18
   3    7   19    0   -294.41833180    -294.41833304   -0.00000123    0.00276635 0.00000002 0.00000005  0.94E-03      4.67
   4   24   48    0   -294.41833304    -294.41833304   -0.00000000    0.00000093 0.00000002 0.00000000  0.41E-06      7.99

 CONVERGENCE REACHED!  Final gradient:    0.00000018 ( 0.18E-06)
                       Final energy:   -294.41833304
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -294.640689662282
 Nuclear energy                                  0.00000000
 Kinetic energy                                111.40408225
 One electron energy                          -515.24905956
 Two electron energy                           220.60836990
 Virial ratio                                    3.64479258
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -294.640689662279
 Nuclear energy                                  0.00000000
 Kinetic energy                                111.40408224
 One electron energy                          -515.24905956
 Two electron energy                           220.60836989
 Virial ratio                                    3.64479258
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -294.640689662242
 Nuclear energy                                  0.00000000
 Kinetic energy                                111.40408225
 One electron energy                          -515.24905956
 Two electron energy                           220.60836990
 Virial ratio                                    3.64479258
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -294.381193594966
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.50404898
 One electron energy                          -508.05504467
 Two electron energy                           213.67385108
 Virial ratio                                    3.66398559
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -294.381193594962
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.50404898
 One electron energy                          -508.05504467
 Two electron energy                           213.67385108
 Virial ratio                                    3.66398559
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -294.381193594956
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.50404898
 One electron energy                          -508.05504467
 Two electron energy                           213.67385108
 Virial ratio                                    3.66398559
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -294.381193594955
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.50404898
 One electron energy                          -508.05504467
 Two electron energy                           213.67385107
 Virial ratio                                    3.66398559
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -294.381193594953
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.50404898
 One electron energy                          -508.05504467
 Two electron energy                           213.67385108
 Virial ratio                                    3.66398559
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -294.375936387259
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.50195168
 One electron energy                          -508.04842114
 Two electron energy                           213.67248475
 Virial ratio                                    3.66398857
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -294.375386792853
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.58054609
 One electron energy                          -508.38307570
 Two electron energy                           214.00768891
 Virial ratio                                    3.66209019
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -294.375386792848
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.58054609
 One electron energy                          -508.38307570
 Two electron energy                           214.00768891
 Virial ratio                                    3.66209019
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -294.375386792844
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.58054609
 One electron energy                          -508.38307570
 Two electron energy                           214.00768891
 Virial ratio                                    3.66209019
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -294.387822461317
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.48913036
 One electron energy                          -508.00272773
 Two electron energy                           213.61490527
 Virial ratio                                    3.66440528
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -294.387822461306
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.48913036
 One electron energy                          -508.00272773
 Two electron energy                           213.61490527
 Virial ratio                                    3.66440528
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -294.387822461305
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.48913036
 One electron energy                          -508.00272773
 Two electron energy                           213.61490527
 Virial ratio                                    3.66440528
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -294.383039501572
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.49456657
 One electron energy                          -508.02235316
 Two electron energy                           213.63931365
 Virial ratio                                    3.66423091
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -294.383039501572
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.49456657
 One electron energy                          -508.02235316
 Two electron energy                           213.63931365
 Virial ratio                                    3.66423091
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -294.383039501563
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.49456657
 One electron energy                          -508.02235315
 Two electron energy                           213.63931365
 Virial ratio                                    3.66423091
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -294.383039501562
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.49456657
 One electron energy                          -508.02235316
 Two electron energy                           213.63931365
 Virial ratio                                    3.66423091
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -294.383039501559
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.49456657
 One electron energy                          -508.02235316
 Two electron energy                           213.63931365
 Virial ratio                                    3.66423091
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -294.376195164375
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.49949805
 One electron energy                          -508.03860192
 Two electron energy                           213.66240675
 Virial ratio                                    3.66405007
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999905539
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999999581
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.000000094877
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.651525828456
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000001106305
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     3.348410001958
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.000065375921
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     3.999997687384
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>    -0.000000000002
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     0.999999357380
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     0.000000702720
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>     0.999999939899
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999999979
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999999999992
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>    -0.000000000004
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     0.799280267522
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000000009060
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000014112
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     4.000000000011
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     3.200384015560
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>    -0.000000000003
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999983633399
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.000016366967
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999999631
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.395092454180
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.999999117717
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     2.604939278266
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     3.999961403524
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.000007746337
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>    -0.000000000002
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     0.999999999667
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     0.999999939892
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>     0.000000060439
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999992572
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.000000018853
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     1.000000000002
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.215187073378
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000024176933
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.999974040226
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000000000002
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     2.785199119430
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>    -0.000000000003
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000016461059
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999983633449
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999905489
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.953381717378
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.999999775993
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.046650719790
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999973220570
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999994566293
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>    -0.000000000002
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     0.000000642951
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     0.999999357387
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     0.999999999660
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000007448
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999981155
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     1.000000000002
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.985532659114
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.999975814021
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.000025945677
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000000000002
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.014416865026
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>    -0.000000000003
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     1.999999999997
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     1.999999999997
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     1.999999999997
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000015
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000015
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     6.000000000015
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     6.000000000015
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     6.000000000015
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>    -0.000000000007
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     1.999999999998
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     1.999999999998
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     1.999999999998
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000015
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000015
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000015
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000015
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000015
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>    -0.000000000008
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 5 2 4 1 1 6 3   5 2 4 1 6 3 5 2 4 1   6 3 5 2 4 1 6 5 3 2   4 6 3 5 2 411131014
                                       15 812 7 9 1 6 3 5 2   4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 1 3 2 2   3 1 5 7 9 810 6 4 2   3 1 5 7 9 810 6 4 5   7 910 8 6 4 2 3 1 5
                                        9 7 810 6 4 2 3 1 5   9 7 810 6 4 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.93349     1  1  s    1.00117
    2.1     2.00000    -2.48500     1  1  d1-  1.00109
    3.1     2.00000    -2.48500     1  1  d2-  1.00109
    4.1     2.00000    -2.48500     1  1  d2+  1.00109
    5.1     2.00000    -2.48500     1  1  d0   1.00109
    6.1     2.00000    -2.48500     1  1  d1+  1.00109
    7.1     1.99982    -1.02816     1  2  s    1.04199
    1.2     2.00000    -5.75774     1  1  py   0.99950
    2.2     2.00000    -5.75774     1  1  pz   0.99950
    3.2     2.00000    -5.75774     1  1  px   0.99950
    4.2     1.38044    -0.44690     1  2  px   1.11549
    5.2     1.38044    -0.44690     1  2  pz   1.11549
    6.2     1.38043    -0.44690     1  2  py   1.11549
    7.2     0.28629     0.00889     1  7  px   0.36377    1  8  px   0.79173
    8.2     0.28629     0.00889     1  7  pz   0.36377    1  8  pz   0.79173
    9.2     0.28629     0.00889     1  7  py   0.36377    1  8  py   0.79173
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a22000      -0.00030403     -0.00002024      0.98920583     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2 22a000      -0.00400190      0.98919779      0.00001901      0.00000000     -0.00000000      0.00000000      0.00000003
 2 2a2000       0.98919774      0.00400189      0.00030411     -0.00000000     -0.00000008      0.00000000     -0.00000000
 2 a2a0b0       0.00000000     -0.00000000      0.00000000      0.07194177      0.00008781      0.66249391     -0.00350662
 2 2aab00      -0.00000000      0.00000000      0.00000000      0.60971629     -0.00112808      0.26894545     -0.00143739
 2 2aa00b       0.07500672      0.00030345      0.00002306      0.00115688      0.57711827     -0.00020160      0.00003420
 2 aa2b00      -0.07500663     -0.00030345     -0.00002306      0.00115688      0.57711827     -0.00020160      0.00003420
 2 aa20b0      -0.00002305     -0.00000153      0.07500728     -0.00022313     -0.00012673      0.00155398     -0.00004700
 2 a2a00b      -0.00002305     -0.00000153      0.07500733      0.00022313      0.00012673     -0.00155398      0.00004700
 2 2aa0b0       0.00030345     -0.07500667     -0.00000144      0.00001369     -0.00003317      0.00305330      0.57711140
 2 a2ab00       0.00030345     -0.07500664     -0.00000144     -0.00001369      0.00003317     -0.00305330     -0.57711140
 2 aa200b       0.00000000     -0.00000000      0.00000000     -0.53777452      0.00121589      0.39354846     -0.00206922
 2 a2ba00      -0.00005286      0.01306521      0.00000025      0.00000691     -0.00001676      0.00154235      0.29152392
 2 2ab0a0      -0.00005286      0.01306522      0.00000025     -0.00000691      0.00001676     -0.00154235     -0.29152392
 2 ab2a00       0.01306521      0.00005286      0.00000402     -0.00058439     -0.29152739      0.00010184     -0.00001728
 2 2ba00a      -0.01306521     -0.00005286     -0.00000402     -0.00058439     -0.29152739      0.00010184     -0.00001728
 2 b2a00a       0.00000402      0.00000027     -0.01306532     -0.00011271     -0.00006402      0.00078498     -0.00002374
 2 ba20a0       0.00000402      0.00000027     -0.01306532      0.00011271      0.00006402     -0.00078498      0.00002374
 2 b2a0a0      -0.00000000      0.00000000      0.00000000     -0.03006908     -0.00005596     -0.33188782      0.00175656
 2 a2b0a0       0.00000000      0.00000000     -0.00000000     -0.04187270     -0.00003185     -0.33060609      0.00175006
 2 2baa00       0.00000000     -0.00000000     -0.00000000     -0.30725403      0.00057075     -0.12904125      0.00069002
 2 2aba00       0.00000000     -0.00000000     -0.00000000     -0.30246226      0.00055734     -0.13990420      0.00074737
 2 2ab00a      -0.06194151     -0.00025059     -0.00001904     -0.00057249     -0.28559088      0.00009976     -0.00001693
 2 ba2a00       0.06194142      0.00025059      0.00001904     -0.00057249     -0.28559088      0.00009976     -0.00001693
 2 a2b00a       0.00001904      0.00000127     -0.06194201     -0.00011042     -0.00006271      0.00076900     -0.00002326
 2 ab20a0       0.00001904      0.00000127     -0.06194196      0.00011042      0.00006271     -0.00076900      0.00002326
 2 2ba0a0      -0.00025059      0.06194146      0.00000119     -0.00000677      0.00001642     -0.00151095     -0.28558748
 2 b2aa00      -0.00025059      0.06194142      0.00000119      0.00000677     -0.00001642      0.00151095      0.28558748
 2 ab200a       0.00000000      0.00000000      0.00000000      0.27239318     -0.00061329     -0.19198362      0.00100918
 2 ba200a      -0.00000000      0.00000000     -0.00000000      0.26538133     -0.00060259     -0.20156484      0.00106004
 2 22000a      -0.00017357      0.04290418      0.00000082      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 2020a0       0.04290413      0.00017357      0.00001319      0.00000000      0.00000000     -0.00000000      0.00000000
 2 022a00      -0.00001319     -0.00000088      0.04290444      0.00000000      0.00000000     -0.00000000      0.00000000
 
 Energy:     -294.64068966   -294.64068966   -294.64068966   -294.38119359   -294.38119359   -294.38119359   -294.38119359

 State:              8               9              10              11              12
 2 a22000      -0.00000005     -0.00000000      0.00009047     -0.11285352      0.00002767
 2 22a000      -0.00000000      0.00000000      0.00000206      0.00002767      0.11285348
 2 2a2000       0.00000000      0.00000000     -0.11285349     -0.00009047      0.00000208
 2 a2a0b0       0.00175633     -0.47128806     -0.00000000      0.00000000      0.00000000
 2 2aab00       0.00048881      0.47128806      0.00000000     -0.00000000     -0.00000000
 2 2aa00b      -0.00012772     -0.00000000      0.55924223      0.00044831     -0.00001031
 2 aa2b00      -0.00012772      0.00000000     -0.55924224     -0.00044831      0.00001031
 2 aa20b0      -0.57711733      0.00000000     -0.00044831      0.55924222     -0.00013710
 2 a2a00b       0.57711733      0.00000000     -0.00044831      0.55924222     -0.00013710
 2 2aa0b0      -0.00003878      0.00000000      0.00001020      0.00013711      0.55924240
 2 a2ab00       0.00003878      0.00000000      0.00001020      0.00013711      0.55924241
 2 aa200b       0.00126752      0.47128806     -0.00000000     -0.00000000     -0.00000000
 2 a2ba00      -0.00001959     -0.00000000     -0.00000662     -0.00008899     -0.36298557
 2 2ab0a0       0.00001959     -0.00000000     -0.00000662     -0.00008899     -0.36298557
 2 ab2a00       0.00006452     -0.00000000      0.36298547      0.00029098     -0.00000669
 2 2ba00a       0.00006452      0.00000000     -0.36298547     -0.00029098      0.00000669
 2 b2a00a      -0.29152691     -0.00000000      0.00029098     -0.36298546      0.00008899
 2 ba20a0       0.29152691     -0.00000000      0.00029098     -0.36298546      0.00008899
 2 b2a0a0      -0.00088217      0.23564403      0.00000000     -0.00000000     -0.00000000
 2 a2b0a0      -0.00087416      0.23564403      0.00000000     -0.00000000     -0.00000000
 2 2baa00      -0.00022885     -0.23564403     -0.00000000      0.00000000      0.00000000
 2 2aba00      -0.00025996     -0.23564403     -0.00000000      0.00000000      0.00000000
 2 2ab00a       0.00006320      0.00000000     -0.19625677     -0.00015733      0.00000362
 2 ba2a00       0.00006320     -0.00000000      0.19625678      0.00015733     -0.00000362
 2 a2b00a      -0.28559042     -0.00000000      0.00015733     -0.19625676      0.00004811
 2 ab20a0       0.28559042     -0.00000000      0.00015733     -0.19625677      0.00004811
 2 2ba0a0       0.00001919     -0.00000000     -0.00000358     -0.00004812     -0.19625683
 2 b2aa00      -0.00001919     -0.00000000     -0.00000358     -0.00004812     -0.19625683
 2 ab200a      -0.00062221     -0.23564403      0.00000000      0.00000000      0.00000000
 2 ba200a      -0.00064531     -0.23564403      0.00000000      0.00000000      0.00000000
 2 22000a       0.00000000      0.00000000      0.00000249      0.00003346      0.13648953
 2 2020a0      -0.00000000      0.00000000     -0.13648948     -0.00010941      0.00000252
 2 022a00       0.00000000     -0.00000000      0.00010941     -0.13648947      0.00003346
 
 Energy:     -294.38119359   -294.37593639   -294.37538679   -294.37538679   -294.37538679
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a2a0a0       0.00000000     -0.00000000      0.00000000      0.04909645     -0.00016773     -0.00006051      0.00000018
 2 2aaa00      -0.00000000      0.00000000     -0.00000000      0.73026064     -0.00221603      0.00000949      0.00000265
 2 aa20a0      -0.00000337     -0.00000226      0.70700444     -0.00000246      0.00003592     -0.00000370      0.70699534
 2 2aa0a0       0.00006094      0.70700444      0.00000226      0.00004258      0.00200688     -0.70699249     -0.00000381
 2 a2a00a      -0.00000337     -0.00000226      0.70700443      0.00000246     -0.00003592      0.00000370     -0.70699535
 2 2aa00a      -0.70700443      0.00006094     -0.00000337      0.00213693      0.70698927      0.00200700     -0.00003590
 2 aa2a00       0.70700443     -0.00006094      0.00000337      0.00213693      0.70698927      0.00200700     -0.00003590
 2 a2aa00       0.00006094      0.70700443      0.00000226     -0.00004258     -0.00200688      0.70699250      0.00000381
 2 aa200a      -0.00000000      0.00000000     -0.00000000     -0.68116418      0.00204830     -0.00006999     -0.00000247
 
 Energy:     -294.38782246   -294.38782246   -294.38782246   -294.38303950   -294.38303950   -294.38303950   -294.38303950

 State:              8               9
 2 a2a0a0       0.81489022     -0.57716950
 2 2aaa00       0.36492609      0.57716950
 2 aa20a0       0.00000000      0.00000000
 2 2aa0a0      -0.00005465     -0.00000000
 2 a2a00a      -0.00000000     -0.00000000
 2 2aa00a       0.00001692     -0.00000000
 2 aa2a00       0.00001692      0.00000000
 2 a2aa00       0.00005465     -0.00000000
 2 aa200a       0.44996413      0.57716950
 
 Energy:     -294.38303950   -294.37619516
 


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
 CPU TIMES  *         7.36      5.82      0.06      1.17
 REAL TIME  *        13.41 SEC
 DISK USED  *        39.97 MB (local),      541.67 MB (total)
 SF USED    *        26.63 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -294.6406897   2.0
    -294.6406897   2.0
    -294.6406897   2.0
    -294.3811936   6.0
    -294.3811936   6.0
    -294.3811936   6.0
    -294.3811936   6.0
    -294.3811936   6.0
    -294.3759364  -0.0
    -294.3753868   2.0
    -294.3753868   2.0
    -294.3753868   2.0
    -294.3878225   2.0
    -294.3878225   2.0
    -294.3878225   2.0
    -294.3830395   6.0
    -294.3830395   6.0
    -294.3830395   6.0
    -294.3830395   6.0
    -294.3830395   6.0
    -294.3761952  -0.0
                                                  


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
     1      -294.64068966
     2      -294.64068966
     3      -294.64068966
     4      -294.38119359
     5      -294.38119359
     6      -294.38119359
     7      -294.38119359
     8      -294.38119359
     9      -294.37593639
    10      -294.37538679
    11      -294.37538679
    12      -294.37538679

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1470D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.8294D-07

 Number of blocks in overlap matrix:  1176   Smallest eigenvalue:  0.83D-07
 Number of N-2 electron functions:    2960
 Number of N-1 electron functions:  132244

 Number of internal configurations:                29358
 Number of singly external configurations:       6348776
 Number of doubly external configurations:       6824096
 Total number of contracted configurations:     13202230
 Total number of uncontracted configurations:  319907094

 Diagonal Coupling coefficients finished.               Storage:  34375919 words, CPU-Time:    154.73 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1756068 words, CPU-time:      0.30 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.64068966     0.00000000    -0.97756745  0.50D-01  0.11D+00   165.82
    1     2     2     1.00000000     0.00000000  -294.64068966     0.00000000    -0.97766553  0.50D-01  0.11D+00   165.82
    1     3     3     1.00000000     0.00000000  -294.64068966     0.00000000    -0.97773411  0.50D-01  0.11D+00   165.82
    1     4     4     1.00000000     0.00000000  -294.38119359     0.00000000    -0.94437044  0.34D-01  0.11D+00   165.82
    1     5     5     1.00000000     0.00000000  -294.38119359     0.00000000    -0.94250463  0.34D-01  0.11D+00   165.82
    1     6     6     1.00000000     0.00000000  -294.38119359     0.00000000    -0.94477499  0.34D-01  0.11D+00   165.82
    1     7     7     1.00000000     0.00000000  -294.38119359     0.00000000    -0.94261210  0.34D-01  0.11D+00   165.82
    1     8     8     1.00000000     0.00000000  -294.38119359     0.00000000    -0.94269436  0.34D-01  0.11D+00   165.82
    1     9     9     1.00000000     0.00000000  -294.37593639     0.00000000    -0.94551066  0.34D-01  0.11D+00   165.82
    1    10    10     1.00000000     0.00000000  -294.37538679     0.00000000    -0.95134471  0.42D-01  0.11D+00   165.82
    1    11    11     1.00000000     0.00000000  -294.37538679    -0.00000000    -0.95140911  0.42D-01  0.11D+00   165.82
    1    12    12     1.00000000     0.00000000  -294.37538679    -0.00000000    -0.95122609  0.41D-01  0.11D+00   165.82
    2     1     1     1.10197359    -0.78001625  -295.42070592    -0.78001625    -0.02540399  0.54D-02  0.19D-02   944.51
    2     2     2     1.10191843    -0.77999006  -295.42067972    -0.77999006    -0.02539038  0.54D-02  0.19D-02   944.51
    2     3     3     1.10187829    -0.77990014  -295.42058980    -0.77990014    -0.02546972  0.54D-02  0.19D-02   944.51
    2     4     4     1.09201736    -0.76148498  -295.14267858    -0.76148498    -0.01858200  0.21D-02  0.16D-02   944.51
    2     5     5     1.09200007    -0.76145267  -295.14264627    -0.76145267    -0.01860455  0.21D-02  0.16D-02   944.51
    2     6     6     1.09207872    -0.76141445  -295.14260804    -0.76141445    -0.01866128  0.21D-02  0.16D-02   944.51
    2     7     7     1.09229858    -0.76116236  -295.14235595    -0.76116236    -0.01894125  0.21D-02  0.16D-02   944.51
    2     8     8     1.09246301    -0.76106480  -295.14225839    -0.76106480    -0.01907343  0.21D-02  0.17D-02   944.51
    2     9     9     1.09288615    -0.76160147  -295.13753786    -0.76160147    -0.01910895  0.21D-02  0.17D-02   944.51
    2    10    10     1.09615695    -0.76127576  -295.13666255    -0.76127576    -0.02094904  0.36D-02  0.16D-02   944.51
    2    11    11     1.09621200    -0.76127194  -295.13665874    -0.76127194    -0.02096179  0.36D-02  0.16D-02   944.51
    2    12    12     1.09623844    -0.76124098  -295.13662777    -0.76124098    -0.02099909  0.36D-02  0.16D-02   944.51
    3     1     1     1.09184518    -0.80512485  -295.44581451    -0.02510860    -0.00097221  0.80D-04  0.14D-03  1719.56
    3     2     2     1.09180569    -0.80511694  -295.44580661    -0.02512689    -0.00097574  0.80D-04  0.14D-03  1719.56
    3     3     3     1.09177236    -0.80509812  -295.44578778    -0.02519798    -0.00098783  0.81D-04  0.14D-03  1719.56
    3     4     4     1.08597892    -0.77928907  -295.16048266    -0.01780409    -0.00048250  0.32D-04  0.75D-04  1719.56
    3     5     5     1.08597368    -0.77928451  -295.16047811    -0.01783184    -0.00048646  0.33D-04  0.76D-04  1719.56
    3     6     6     1.08595938    -0.77928291  -295.16047651    -0.01786846    -0.00048631  0.32D-04  0.76D-04  1719.56
    3     7     7     1.08598687    -0.77927691  -295.16047051    -0.01811456    -0.00049101  0.32D-04  0.77D-04  1719.56
    3     8     8     1.08597131    -0.77927181  -295.16046540    -0.01820701    -0.00049394  0.32D-04  0.78D-04  1719.56
    3     9     9     1.08698900    -0.78067595  -295.15661233    -0.01907448    -0.00054847  0.53D-04  0.80D-04  1719.56
    3    10    10     1.08698965    -0.78122425  -295.15661104    -0.01994849    -0.00054989  0.53D-04  0.80D-04  1719.56
    3    11    11     1.08697680    -0.78122154  -295.15660833    -0.01994959    -0.00055074  0.53D-04  0.80D-04  1719.56
    3    12    12     1.08632989    -0.78046574  -295.15585253    -0.01922476    -0.00051985  0.36D-04  0.83D-04  1719.56
    4     1     1     1.09367387    -0.80625361  -295.44694327    -0.00112876    -0.00008573  0.49D-05  0.13D-04  2498.93
    4     2     2     1.09366878    -0.80625342  -295.44694308    -0.00113647    -0.00008612  0.49D-05  0.13D-04  2498.93
    4     3     3     1.09365380    -0.80625062  -295.44694028    -0.00115249    -0.00008811  0.51D-05  0.13D-04  2498.93
    4     4     4     1.08685180    -0.77987476  -295.16106836    -0.00058570    -0.00005080  0.20D-05  0.90D-05  2498.93
    4     5     5     1.08684354    -0.77987468  -295.16106827    -0.00059017    -0.00005135  0.20D-05  0.91D-05  2498.93
    4     6     6     1.08684905    -0.77987409  -295.16106768    -0.00059117    -0.00005120  0.20D-05  0.91D-05  2498.93
    4     7     7     1.08684811    -0.77987383  -295.16106742    -0.00059691    -0.00005150  0.20D-05  0.91D-05  2498.93
    4     8     8     1.08683774    -0.77987327  -295.16106687    -0.00060146    -0.00005212  0.20D-05  0.92D-05  2498.93
    4     9     9     1.08752583    -0.78131967  -295.15725606    -0.00064373    -0.00005119  0.25D-05  0.91D-05  2498.93
    4    10    10     1.08752464    -0.78186921  -295.15725600    -0.00064496    -0.00005122  0.25D-05  0.92D-05  2498.93
    4    11    11     1.08752054    -0.78186850  -295.15725529    -0.00064696    -0.00005162  0.25D-05  0.92D-05  2498.93
    4    12    12     1.08721382    -0.78110656  -295.15649336    -0.00064083    -0.00005477  0.22D-05  0.94D-05  2498.93
    5     1     1     1.09453725    -0.80635998  -295.44704964    -0.00010637    -0.00000729  0.21D-06  0.11D-05  3274.05
    5     2     2     1.09453907    -0.80635988  -295.44704954    -0.00010646    -0.00000734  0.21D-06  0.11D-05  3274.05
    5     3     3     1.09453561    -0.80635971  -295.44704937    -0.00010909    -0.00000748  0.21D-06  0.12D-05  3274.05
    5     4     4     1.08732938    -0.77994523  -295.16113883    -0.00007047    -0.00000549  0.25D-06  0.88D-06  3274.05
    5     5     5     1.08732870    -0.77994493  -295.16113852    -0.00007025    -0.00000565  0.26D-06  0.91D-06  3274.05
    5     6     6     1.08733352    -0.77994485  -295.16113844    -0.00007076    -0.00000566  0.25D-06  0.91D-06  3274.05
    5     7     7     1.08733273    -0.77994476  -295.16113836    -0.00007094    -0.00000573  0.26D-06  0.92D-06  3274.05
    5     8     8     1.08733251    -0.77994472  -295.16113831    -0.00007145    -0.00000572  0.26D-06  0.92D-06  3274.05
    5     9     9     1.08793964    -0.78139038  -295.15732677    -0.00007071    -0.00000612  0.30D-06  0.10D-05  3274.05
    5    10    10     1.08793976    -0.78193996  -295.15732676    -0.00007075    -0.00000612  0.30D-06  0.10D-05  3274.05
    5    11    11     1.08793993    -0.78193984  -295.15732663    -0.00007134    -0.00000618  0.30D-06  0.10D-05  3274.05
    5    12    12     1.08773031    -0.78118085  -295.15656764    -0.00007429    -0.00000540  0.25D-06  0.85D-06  3274.05
    6     1     1     1.09458911    -0.80636882  -295.44705848    -0.00000884    -0.00000069  0.42D-07  0.99D-07  4047.34
    6     2     2     1.09458980    -0.80636880  -295.44705846    -0.00000892    -0.00000071  0.44D-07  0.10D-06  4047.34
    6     3     3     1.09458794    -0.80636878  -295.44705844    -0.00000907    -0.00000072  0.44D-07  0.10D-06  4047.34
    6     4     4     1.08735483    -0.77995203  -295.16114563    -0.00000680    -0.00000063  0.26D-07  0.11D-06  4047.34
    6     5     5     1.08735483    -0.77995196  -295.16114555    -0.00000703    -0.00000067  0.29D-07  0.11D-06  4047.34
    6     6     6     1.08735446    -0.77995195  -295.16114555    -0.00000710    -0.00000068  0.30D-07  0.12D-06  4047.34
    6     7     7     1.08735524    -0.77995194  -295.16114553    -0.00000717    -0.00000066  0.28D-07  0.11D-06  4047.34
    6     8     8     1.08735468    -0.77995191  -295.16114550    -0.00000719    -0.00000068  0.30D-07  0.12D-06  4047.34
    6     9     9     1.08797179    -0.78139814  -295.15733453    -0.00000776    -0.00000074  0.33D-07  0.13D-06  4047.34
    6    10    10     1.08797175    -0.78194770  -295.15733450    -0.00000774    -0.00000074  0.33D-07  0.13D-06  4047.34
    6    11    11     1.08797159    -0.78194769  -295.15733449    -0.00000785    -0.00000075  0.33D-07  0.13D-06  4047.34
    6    12    12     1.08775991    -0.78118746  -295.15657425    -0.00000661    -0.00000058  0.23D-07  0.10D-06  4047.34
    7     1     1     1.09462275    -0.80636965  -295.44705931    -0.00000083    -0.00000009  0.80D-08  0.12D-07  4822.65
    7     2     2     1.09462289    -0.80636965  -295.44705931    -0.00000085    -0.00000009  0.81D-08  0.12D-07  4822.65
    7     3     3     1.09462238    -0.80636964  -295.44705930    -0.00000086    -0.00000009  0.82D-08  0.12D-07  4822.65
    7     4     4     1.08737822    -0.77995286  -295.16114646    -0.00000083    -0.00000011  0.94D-08  0.16D-07  4822.65
    7     5     5     1.08737803    -0.77995285  -295.16114644    -0.00000089    -0.00000012  0.10D-07  0.17D-07  4822.65
    7     6     6     1.08737811    -0.77995284  -295.16114644    -0.00000089    -0.00000012  0.10D-07  0.17D-07  4822.65
    7     7     7     1.08737814    -0.77995280  -295.16114640    -0.00000086    -0.00000012  0.11D-07  0.17D-07  4822.65
    7     8     8     1.08737842    -0.77995279  -295.16114638    -0.00000088    -0.00000011  0.94D-08  0.16D-07  4822.65
    7     9     9     1.08799759    -0.78139909  -295.15733548    -0.00000095    -0.00000012  0.12D-07  0.18D-07  4822.65
    7    10    10     1.08799752    -0.78194867  -295.15733546    -0.00000096    -0.00000013  0.12D-07  0.19D-07  4822.65
    7    11    11     1.08799748    -0.78194865  -295.15733544    -0.00000096    -0.00000012  0.11D-07  0.18D-07  4822.65
    7    12    12     1.08778304    -0.78118821  -295.15657500    -0.00000075    -0.00000009  0.80D-08  0.14D-07  4822.65
    8     1     1     1.09462509    -0.80636975  -295.44705941    -0.00000010    -0.00000001  0.57D-09  0.17D-08  5603.19
    8     2     2     1.09462509    -0.80636975  -295.44705941    -0.00000010    -0.00000001  0.58D-09  0.17D-08  5603.19
    8     3     3     1.09462493    -0.80636974  -295.44705941    -0.00000011    -0.00000001  0.59D-09  0.18D-08  5603.19
    8     4     4     1.08737670    -0.77995300  -295.16114660    -0.00000014    -0.00000002  0.76D-09  0.30D-08  5603.19
    8     5     5     1.08737660    -0.77995299  -295.16114659    -0.00000015    -0.00000002  0.83D-09  0.33D-08  5603.19
    8     6     6     1.08737664    -0.77995299  -295.16114659    -0.00000015    -0.00000002  0.82D-09  0.33D-08  5603.19
    8     7     7     1.08737653    -0.77995295  -295.16114655    -0.00000015    -0.00000002  0.86D-09  0.34D-08  5603.19
    8     8     8     1.08737661    -0.77995292  -295.16114652    -0.00000014    -0.00000002  0.75D-09  0.30D-08  5603.19
    8     9     9     1.08799417    -0.78139925  -295.15733564    -0.00000016    -0.00000002  0.10D-08  0.36D-08  5603.19
    8    10    10     1.08799410    -0.78194883  -295.15733562    -0.00000016    -0.00000002  0.11D-08  0.37D-08  5603.19
    8    11    11     1.08799415    -0.78194881  -295.15733560    -0.00000016    -0.00000002  0.10D-08  0.36D-08  5603.19
    8    12    12     1.08778169    -0.78118832  -295.15657512    -0.00000012    -0.00000001  0.67D-09  0.24D-08  5603.19


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   7.0%
 P   0.3%  54.8%  29.4%

 Initialization:   2.8%
 Other:            5.0%

 Total CPU:     5603.2 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222/000           0.0056119   0.0056930   0.9491396  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                           -0.0012614   0.0776191  -0.0003066   0.0000000
 2222222222/22000          -0.0217807   0.9489069  -0.0055628   0.0000000  -0.0000000   0.0000000  -0.0000001   0.0000000
                           -0.0776198  -0.0012619  -0.0001296  -0.0000000
 22222222222/2000           0.9489066   0.0217470  -0.0057409  -0.0000000   0.0000003   0.0000001   0.0000000  -0.0000000
                            0.0001346  -0.0003044  -0.0776294  -0.0000000
 22222222222//\00          -0.0000000  -0.0000000   0.0000000   0.7767033   0.0090700  -0.0748679   0.0076935   0.0591329
                           -0.0000002  -0.0000003  -0.0000003   0.5533907
 2222222222/2/0\0           0.0000000  -0.0000000  -0.0000000   0.3375681   0.0064455  -0.0305215   0.0017529   0.7053917
                            0.0000004   0.0000003   0.0000001  -0.5533958
 2222222222/2/00\          -0.0015237   0.0663843  -0.0003892  -0.0079673  -0.0029061  -0.0120849   0.6776166   0.0016324
                            0.6592437   0.0107178   0.0011007   0.0000003
 2222222222//20\0          -0.0015237   0.0663842  -0.0003892   0.0079671   0.0029063   0.0120847  -0.6776152  -0.0016325
                            0.6592450   0.0107180   0.0011006   0.0000004
 22222222222//00\           0.0663843   0.0015214  -0.0004016   0.0124791   0.6455521   0.2059959   0.0065963  -0.0029738
                           -0.0011429   0.0025857   0.6593294   0.0000001
 2222222222//2\00          -0.0663842  -0.0015214   0.0004016   0.0124790   0.6455577   0.2059977   0.0065965  -0.0029739
                            0.0011427  -0.0025858  -0.6593232  -0.0000004
 22222222222//0\0          -0.0003926  -0.0003983  -0.0664005   0.0642950  -0.2063222   0.6423010   0.0113289  -0.0011199
                           -0.0107133   0.6592410  -0.0026040   0.0000004
 2222222222/2/\00          -0.0003926  -0.0003983  -0.0664004  -0.0642951   0.2063227  -0.6423024  -0.0113287   0.0011198
                           -0.0107136   0.6592394  -0.0026040   0.0000003
 2222222222//200\          -0.0000000  -0.0000000   0.0000000  -0.4391370  -0.0026242   0.0443466  -0.0059405   0.6462725
                           -0.0000002  -0.0000002  -0.0000002   0.5533845
 22222222222020/0           0.0385397   0.0008832  -0.0002332  -0.0000000   0.0000006   0.0000002   0.0000000  -0.0000000
                            0.0002221  -0.0005026  -0.1281502  -0.0000000
 2222222222022/00          -0.0008846   0.0385397  -0.0002259   0.0000000  -0.0000000   0.0000000  -0.0000002   0.0000000
                           -0.1281344  -0.0020832  -0.0002139  -0.0000001
 222222222222000/           0.0002279   0.0002312   0.0385493   0.0000000   0.0000000  -0.0000001   0.0000000  -0.0000000
                           -0.0020823   0.1281335  -0.0005061   0.0000001
 2222222222/\2/00          -0.0317076  -0.0007267   0.0001918  -0.0000753  -0.0038956  -0.0012431  -0.0000398   0.0000180
                           -0.0001928   0.0004363   0.1112541   0.0000000
 22222222222/\00/          -0.0317075  -0.0007267   0.0001918   0.0000753   0.0038947   0.0012428   0.0000398  -0.0000179
                           -0.0001928   0.0004363   0.1112540   0.0000000
 2222222222/\20/0           0.0007278  -0.0317075   0.0001859   0.0000481   0.0000175   0.0000729  -0.0040883  -0.0000099
                            0.1112402   0.0018085   0.0001857   0.0000001
 2222222222/2\00/           0.0007278  -0.0317076   0.0001859  -0.0000481  -0.0000175  -0.0000729   0.0040884   0.0000098
                            0.1112399   0.0018085   0.0001857   0.0000001
 2222222222/2\/00          -0.0001875  -0.0001902  -0.0317152   0.0003880  -0.0012450   0.0038759   0.0000683  -0.0000068
                            0.0018078  -0.1112398   0.0004394  -0.0000001
 22222222222/\0/0          -0.0001875  -0.0001902  -0.0317152  -0.0003879   0.0012449  -0.0038755  -0.0000684   0.0000068
                            0.0018078  -0.1112393   0.0004394  -0.0000001

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955033    0.005648   -0.021921    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.029125
             0.000669    0.000172
 2           0.021887    0.005730    0.955034   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000667
            -0.029125    0.000175
 3          -0.005778    0.955268   -0.005599    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000176
             0.000171    0.029132
 4           0.000000    0.000000   -0.000000    0.903215    0.017656    0.308399    0.090969   -0.011273   -0.000001    0.000000
            -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.009153    0.913377    0.006858   -0.291920   -0.004112    0.000000   -0.000004
             0.000000    0.000000
 6          -0.000000    0.000000   -0.000000   -0.088186    0.291459   -0.027103    0.908774   -0.017098    0.000000   -0.000001
            -0.000000   -0.000001
 7          -0.000000   -0.000000    0.000000    0.009832    0.009333    0.000986    0.016029    0.958739    0.000000   -0.000000
             0.000001    0.000000
 8           0.000000    0.000000   -0.000000   -0.309624   -0.004208    0.907595   -0.001584    0.002310    0.000008    0.000000
            -0.000000   -0.000000
 9          -0.000054    0.000504    0.031022    0.000000   -0.000000    0.000000    0.000000   -0.000001   -0.000000   -0.001661
             0.958056   -0.015569
 10          0.000122   -0.031022    0.000504   -0.000000   -0.000000    0.000000    0.000001   -0.000000   -0.000000    0.003758
             0.015576    0.958050
 11          0.031026    0.000123    0.000052   -0.000000    0.000004   -0.000000   -0.000000    0.000000   -0.000000    0.958175
             0.001599   -0.003784
 12          0.000000   -0.000000    0.000000    0.000004   -0.000000   -0.000007    0.000000   -0.000000    0.958791    0.000000
             0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955745   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000022   -0.000002
             0.000900    0.000000
 2          -0.000000    0.955745    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000900    0.000009
             0.000022    0.000000
 3           0.000000    0.000000    0.955745    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000009   -0.000900
            -0.000002   -0.000000
 4           0.000000   -0.000000    0.000000    0.958969    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.958969    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.958969   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958969    0.000000    0.000000   -0.000000
             0.000000    0.000000
 8          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.958969    0.000000    0.000000
            -0.000000   -0.000000
 9          -0.000022    0.000900    0.000009    0.000000   -0.000000    0.000000    0.000000    0.000000    0.958685   -0.000000
            -0.000000    0.000000
 10         -0.000002    0.000009   -0.000900   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.958685
            -0.000000   -0.000000
 11          0.000900    0.000022   -0.000002    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.958685    0.000000
 12          0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.958791


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95503344 (fixed)   0.95579502 (relaxed)   0.95574540 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011552   -0.00006986   -0.70027395
 Singles      0.01297066   -0.03963625   -0.04576226
 Pairs        0.08166536   -0.00020067   -0.06033354
 Total        1.09475154   -0.03990678   -0.80636975
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.64042768
 Nuclear energy                         0.00000000
 Kinetic energy                       111.61459383
 One electron energy                 -514.04229221
 Two electron energy                  218.59523279
 Virial quotient                       -2.64702893
 Correlation energy                    -0.80663173
 !MRCI STATE 1.2 Energy              -295.447059413696

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52348901 (Davidson, fixed reference)
 Cluster corrected energies          -295.52339732 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52348901 (Davidson, rotated reference)

 Cluster corrected energies          -295.52306467 (Pople, fixed reference)
 Cluster corrected energies          -295.52296585 (Pople, relaxed reference)
 Cluster corrected energies          -295.52306467 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95503374 (fixed)   0.95579502 (relaxed)   0.95574541 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011552   -0.00006986   -0.70027129
 Singles      0.01297068   -0.03963626   -0.04576228
 Pairs        0.08166534   -0.00020357   -0.06033618
 Total        1.09475153   -0.03990969   -0.80636975
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.64042768
 Nuclear energy                         0.00000000
 Kinetic energy                       111.61458990
 One electron energy                 -514.04228589
 Two electron energy                  218.59522648
 Virial quotient                       -2.64702903
 Correlation energy                    -0.80663173
 !MRCI STATE 2.2 Energy              -295.447059412433

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52348901 (Davidson, fixed reference)
 Cluster corrected energies          -295.52339732 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52348901 (Davidson, rotated reference)

 Cluster corrected energies          -295.52306467 (Pople, fixed reference)
 Cluster corrected energies          -295.52296585 (Pople, relaxed reference)
 Cluster corrected energies          -295.52306467 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95526788 (fixed)   0.95579509 (relaxed)   0.95574547 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011552   -0.00006986   -0.66945560
 Singles      0.01297063   -0.03963619   -0.04576223
 Pairs        0.08166523   -0.03393927   -0.09115192
 Total        1.09475138   -0.07364532   -0.80636974
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.64042768
 Nuclear energy                         0.00000000
 Kinetic energy                       111.61458982
 One electron energy                 -514.04228720
 Two electron energy                  218.59522779
 Virial quotient                       -2.64702903
 Correlation energy                    -0.80663173
 !MRCI STATE 3.2 Energy              -295.447059407024

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52348887 (Davidson, fixed reference)
 Cluster corrected energies          -295.52339719 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52348887 (Davidson, rotated reference)

 Cluster corrected energies          -295.52306453 (Pople, fixed reference)
 Cluster corrected energies          -295.52296570 (Pople, relaxed reference)
 Cluster corrected energies          -295.52306453 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.90321507 (fixed)   0.95897455 (relaxed)   0.95896906 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002484   -0.00007419   -0.67252136
 Singles      0.01414912   -0.04867023   -0.05491058
 Pairs        0.07322975    0.00000007   -0.05252106
 Total        1.08740371   -0.04874434   -0.77995300
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38119359
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17212073
 One electron energy                 -507.85144226
 Two electron energy                  212.69029566
 Virial quotient                       -2.65499250
 Correlation energy                    -0.77995300
 !MRCI STATE 4.2 Energy              -295.161146595376

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22931738 (Davidson, fixed reference)
 Cluster corrected energies          -295.22930768 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22931738 (Davidson, rotated reference)

 Cluster corrected energies          -295.22849989 (Pople, fixed reference)
 Cluster corrected energies          -295.22848956 (Pople, relaxed reference)
 Cluster corrected energies          -295.22849989 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.91337669 (fixed)   0.95897459 (relaxed)   0.95896910 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002484   -0.00007419   -0.67252099
 Singles      0.01414916   -0.04867026   -0.05491061
 Pairs        0.07322961   -0.00000035   -0.05252139
 Total        1.08740361   -0.04874480   -0.77995299
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38119359
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17211799
 One electron energy                 -507.85144629
 Two electron energy                  212.69029970
 Virial quotient                       -2.65499256
 Correlation energy                    -0.77995299
 !MRCI STATE 5.2 Energy              -295.161146589695

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22931730 (Davidson, fixed reference)
 Cluster corrected energies          -295.22930759 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22931730 (Davidson, rotated reference)

 Cluster corrected energies          -295.22849980 (Pople, fixed reference)
 Cluster corrected energies          -295.22848948 (Pople, relaxed reference)
 Cluster corrected energies          -295.22849980 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.90877381 (fixed)   0.95897457 (relaxed)   0.95896909 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002484   -0.00007419   -0.67252215
 Singles      0.01414917   -0.04867020   -0.05491057
 Pairs        0.07322964    0.00000088   -0.05252027
 Total        1.08740365   -0.04874351   -0.77995299
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38119359
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17211824
 One electron energy                 -507.85144829
 Two electron energy                  212.69030171
 Virial quotient                       -2.65499256
 Correlation energy                    -0.77995299
 !MRCI STATE 6.2 Energy              -295.161146585356

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22931732 (Davidson, fixed reference)
 Cluster corrected energies          -295.22930762 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22931732 (Davidson, rotated reference)

 Cluster corrected energies          -295.22849983 (Pople, fixed reference)
 Cluster corrected energies          -295.22848950 (Pople, relaxed reference)
 Cluster corrected energies          -295.22849983 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95873882 (fixed)   0.95897462 (relaxed)   0.95896913 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002484   -0.00007419   -0.67252134
 Singles      0.01414907   -0.04867015   -0.05491050
 Pairs        0.07322963   -0.00000010   -0.05252111
 Total        1.08740354   -0.04874443   -0.77995295
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38119359
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17211753
 One electron energy                 -507.85144431
 Two electron energy                  212.69029776
 Virial quotient                       -2.65499257
 Correlation energy                    -0.77995295
 !MRCI STATE 7.2 Energy              -295.161146549746

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22931720 (Davidson, fixed reference)
 Cluster corrected energies          -295.22930749 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22931720 (Davidson, rotated reference)

 Cluster corrected energies          -295.22849970 (Pople, fixed reference)
 Cluster corrected energies          -295.22848937 (Pople, relaxed reference)
 Cluster corrected energies          -295.22849970 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.90759528 (fixed)   0.95897459 (relaxed)   0.95896910 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002484   -0.00007419   -0.67252138
 Singles      0.01414896   -0.04867014   -0.05491044
 Pairs        0.07322982    0.00000003   -0.05252110
 Total        1.08740362   -0.04874430   -0.77995292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38119359
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17212257
 One electron energy                 -507.85143706
 Two electron energy                  212.69029055
 Virial quotient                       -2.65499245
 Correlation energy                    -0.77995292
 !MRCI STATE 8.2 Energy              -295.161146517672

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22931723 (Davidson, fixed reference)
 Cluster corrected energies          -295.22930752 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22931723 (Davidson, rotated reference)

 Cluster corrected energies          -295.22849973 (Pople, fixed reference)
 Cluster corrected energies          -295.22848940 (Pople, relaxed reference)
 Cluster corrected energies          -295.22849973 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95805571 (fixed)   0.95869922 (relaxed)   0.95868541 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004882   -0.00010923   -0.68387634
 Singles      0.01464752   -0.04924672   -0.05578502
 Pairs        0.07335095    0.01189912   -0.04173789
 Total        1.08804728   -0.03745683   -0.78139925
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37564877
 Nuclear energy                         0.00000000
 Kinetic energy                       111.19638502
 One electron energy                 -507.98409288
 Two electron energy                  212.82675724
 Virial quotient                       -2.65437888
 Correlation energy                    -0.78168686
 !MRCI STATE 9.2 Energy              -295.157335637078

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22616104 (Davidson, fixed reference)
 Cluster corrected energies          -295.22613653 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22616104 (Davidson, rotated reference)

 Cluster corrected energies          -295.22537432 (Pople, fixed reference)
 Cluster corrected energies          -295.22534821 (Pople, relaxed reference)
 Cluster corrected energies          -295.22537432 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95804970 (fixed)   0.95869925 (relaxed)   0.95868543 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004882   -0.00010923   -0.00049876
 Singles      0.01464753   -0.04924666   -0.05579239
 Pairs        0.07335087   -0.73219766   -0.72565768
 Total        1.08804721   -0.78155355   -0.78194883
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37564877
 Nuclear energy                         0.00000000
 Kinetic energy                       111.19638300
 One electron energy                 -507.98409320
 Two electron energy                  212.82675758
 Virial quotient                       -2.65437893
 Correlation energy                    -0.78168685
 !MRCI STATE 10.2 Energy             -295.157335620530

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22616097 (Davidson, fixed reference)
 Cluster corrected energies          -295.22613646 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22616097 (Davidson, rotated reference)

 Cluster corrected energies          -295.22537425 (Pople, fixed reference)
 Cluster corrected energies          -295.22534814 (Pople, relaxed reference)
 Cluster corrected energies          -295.22537425 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95817485 (fixed)   0.95869923 (relaxed)   0.95868541 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004882   -0.00010923   -0.67610335
 Singles      0.01464751   -0.04924672   -0.05579238
 Pairs        0.07335094    0.00289214   -0.05005307
 Total        1.08804726   -0.04646380   -0.78194881
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37564877
 Nuclear energy                         0.00000000
 Kinetic energy                       111.19638474
 One electron energy                 -507.98409252
 Two electron energy                  212.82675692
 Virial quotient                       -2.65437888
 Correlation energy                    -0.78168683
 !MRCI STATE 11.2 Energy             -295.157335599973

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22616098 (Davidson, fixed reference)
 Cluster corrected energies          -295.22613648 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22616098 (Davidson, rotated reference)

 Cluster corrected energies          -295.22537426 (Pople, fixed reference)
 Cluster corrected energies          -295.22534815 (Pople, relaxed reference)
 Cluster corrected energies          -295.22537426 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95879131 (fixed)   0.95879578 (relaxed)   0.95879131 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002320   -0.00007532   -0.67282618
 Singles      0.01450615   -0.04930112   -0.05574250
 Pairs        0.07327759   -0.00000035   -0.05261965
 Total        1.08780693   -0.04937679   -0.78118832
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37593639
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17220361
 One electron energy                 -507.84403297
 Two electron energy                  212.68745785
 Virial quotient                       -2.65494940
 Correlation energy                    -0.78063873
 !MRCI STATE 12.2 Energy             -295.156575115746

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22512061 (Davidson, fixed reference)
 Cluster corrected energies          -295.22511268 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22512061 (Davidson, rotated reference)

 Cluster corrected energies          -295.22432272 (Pople, fixed reference)
 Cluster corrected energies          -295.22431428 (Pople, relaxed reference)
 Cluster corrected energies          -295.22432272 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1229.07       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      7400.64   7393.27      5.82      0.06      1.17
 REAL TIME  *      7587.16 SEC
 DISK USED  *         1.24 GB (local),       14.92 GB (total)
 SF USED    *        12.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -295.52348901  AU                              
 SETTING HLSDIAG(2)     =      -295.52348901  AU                              
 SETTING HLSDIAG(3)     =      -295.52348887  AU                              
 SETTING HLSDIAG(4)     =      -295.22931738  AU                              
 SETTING HLSDIAG(5)     =      -295.22931730  AU                              
 SETTING HLSDIAG(6)     =      -295.22931732  AU                              
 SETTING HLSDIAG(7)     =      -295.22931720  AU                              
 SETTING HLSDIAG(8)     =      -295.22931723  AU                              
 SETTING HLSDIAG(9)     =      -295.22616104  AU                              
 SETTING HLSDIAG(10)    =      -295.22616097  AU                              
 SETTING HLSDIAG(11)    =      -295.22616098  AU                              
 SETTING HLSDIAG(12)    =      -295.22512061  AU                              


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


 Number of p-space configurations:  18

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.38782246
     2      -294.38782246
     3      -294.38782246
     4      -294.38303950
     5      -294.38303950
     6      -294.38303950
     7      -294.38303950
     8      -294.38303950
     9      -294.37619516

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1469D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1397D-06

 Number of blocks in overlap matrix:   913   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    2184
 Number of N-1 electron functions:  107720

 Number of internal configurations:                21432
 Number of singly external configurations:       5171200
 Number of doubly external configurations:       5032848
 Total number of contracted configurations:     10225480
 Total number of uncontracted configurations:  256637568

 Diagonal Coupling coefficients finished.               Storage:  19082132 words, CPU-Time:     47.13 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1670562 words, CPU-time:      0.22 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.38782246     0.00000000    -0.94063240  0.36D-01  0.11D+00    53.53
    1     2     2     1.00000000     0.00000000  -294.38782246    -0.00000000    -0.94080400  0.36D-01  0.11D+00    53.53
    1     3     3     1.00000000     0.00000000  -294.38782246     0.00000000    -0.94085193  0.36D-01  0.11D+00    53.53
    1     4     4     1.00000000     0.00000000  -294.38303950     0.00000000    -0.94089920  0.35D-01  0.11D+00    53.53
    1     5     5     1.00000000     0.00000000  -294.38303950     0.00000000    -0.94391913  0.34D-01  0.11D+00    53.53
    1     6     6     1.00000000     0.00000000  -294.38303950     0.00000000    -0.94106007  0.35D-01  0.11D+00    53.53
    1     7     7     1.00000000     0.00000000  -294.38303950    -0.00000000    -0.94109576  0.35D-01  0.11D+00    53.53
    1     8     8     1.00000000     0.00000000  -294.38303950     0.00000000    -0.94503625  0.34D-01  0.11D+00    53.53
    1     9     9     1.00000000     0.00000000  -294.37619516     0.00000000    -0.94532245  0.34D-01  0.11D+00    53.53
    2     1     1     1.09225476    -0.75989753  -295.14771999    -0.75989753    -0.01930912  0.23D-02  0.16D-02   433.35
    2     2     2     1.09221500    -0.75983144  -295.14765390    -0.75983144    -0.01933043  0.23D-02  0.16D-02   433.35
    2     3     3     1.09229827    -0.75981196  -295.14763442    -0.75981196    -0.01939220  0.24D-02  0.16D-02   433.35
    2     4     4     1.09184212    -0.76063007  -295.14366957    -0.76063007    -0.01906804  0.21D-02  0.16D-02   433.35
    2     5     5     1.09180146    -0.76056515  -295.14360466    -0.76056515    -0.01908488  0.21D-02  0.16D-02   433.35
    2     6     6     1.09188827    -0.76054129  -295.14358080    -0.76054129    -0.01915037  0.22D-02  0.16D-02   433.35
    2     7     7     1.09249142    -0.76051385  -295.14355335    -0.76051385    -0.01929825  0.21D-02  0.17D-02   433.35
    2     8     8     1.09265991    -0.76043762  -295.14347712    -0.76043762    -0.01940337  0.21D-02  0.17D-02   433.35
    2     9     9     1.09291571    -0.76094753  -295.13714270    -0.76094753    -0.01936352  0.21D-02  0.18D-02   433.35
    3     1     1     1.08557073    -0.77852419  -295.16634665    -0.01862666    -0.00053547  0.37D-04  0.82D-04   813.91
    3     2     2     1.08555323    -0.77851262  -295.16633508    -0.01868118    -0.00054274  0.37D-04  0.84D-04   813.91
    3     3     3     1.08552346    -0.77849530  -295.16631776    -0.01868334    -0.00054923  0.37D-04  0.85D-04   813.91
    3     4     4     1.08587079    -0.77903157  -295.16207108    -0.01840151    -0.00051974  0.33D-04  0.83D-04   813.91
    3     5     5     1.08579285    -0.77901302  -295.16205253    -0.01844787    -0.00052789  0.33D-04  0.84D-04   813.91
    3     6     6     1.08567187    -0.77901115  -295.16205065    -0.01846986    -0.00053245  0.35D-04  0.83D-04   813.91
    3     7     7     1.08565370    -0.77899964  -295.16203914    -0.01848579    -0.00053987  0.35D-04  0.84D-04   813.91
    3     8     8     1.08562680    -0.77898575  -295.16202525    -0.01854814    -0.00054500  0.35D-04  0.85D-04   813.91
    3     9     9     1.08606771    -0.77956491  -295.15576007    -0.01861737    -0.00054539  0.42D-04  0.87D-04   813.91
    4     1     1     1.08658537    -0.77917734  -295.16699980    -0.00065315    -0.00005432  0.20D-05  0.92D-05  1191.92
    4     2     2     1.08657874    -0.77917546  -295.16699792    -0.00066284    -0.00005562  0.21D-05  0.94D-05  1191.92
    4     3     3     1.08656863    -0.77917173  -295.16699419    -0.00067643    -0.00005809  0.22D-05  0.97D-05  1191.92
    4     4     4     1.08676422    -0.77966680  -295.16270630    -0.00063523    -0.00005430  0.20D-05  0.94D-05  1191.92
    4     5     5     1.08675341    -0.77966443  -295.16270393    -0.00065140    -0.00005599  0.21D-05  0.95D-05  1191.92
    4     6     6     1.08675003    -0.77966387  -295.16270337    -0.00065272    -0.00005648  0.21D-05  0.96D-05  1191.92
    4     7     7     1.08674685    -0.77966272  -295.16270222    -0.00066308    -0.00005718  0.21D-05  0.97D-05  1191.92
    4     8     8     1.08673873    -0.77965989  -295.16269939    -0.00067414    -0.00005906  0.22D-05  0.99D-05  1191.92
    4     9     9     1.08700907    -0.78024165  -295.15643681    -0.00067674    -0.00005862  0.22D-05  0.10D-04  1191.92
    5     1     1     1.08711081    -0.77925093  -295.16707339    -0.00007359    -0.00000543  0.27D-06  0.84D-06  1570.30
    5     2     2     1.08711026    -0.77925083  -295.16707329    -0.00007537    -0.00000553  0.28D-06  0.85D-06  1570.30
    5     3     3     1.08711015    -0.77925052  -295.16707298    -0.00007879    -0.00000576  0.29D-06  0.87D-06  1570.30
    5     4     4     1.08729358    -0.77974087  -295.16278037    -0.00007407    -0.00000538  0.26D-06  0.84D-06  1570.30
    5     5     5     1.08729701    -0.77974079  -295.16278029    -0.00007636    -0.00000551  0.27D-06  0.84D-06  1570.30
    5     6     6     1.08730557    -0.77974064  -295.16278014    -0.00007677    -0.00000564  0.26D-06  0.88D-06  1570.30
    5     7     7     1.08730506    -0.77974053  -295.16278003    -0.00007780    -0.00000574  0.27D-06  0.89D-06  1570.30
    5     8     8     1.08730537    -0.77974029  -295.16277979    -0.00008040    -0.00000592  0.28D-06  0.90D-06  1570.30
    5     9     9     1.08757442    -0.78032138  -295.15651655    -0.00007973    -0.00000568  0.28D-06  0.89D-06  1570.30
    6     1     1     1.08712564    -0.77925757  -295.16708003    -0.00000664    -0.00000054  0.25D-07  0.88D-07  1947.43
    6     2     2     1.08712612    -0.77925757  -295.16708003    -0.00000674    -0.00000053  0.24D-07  0.87D-07  1947.43
    6     3     3     1.08712419    -0.77925751  -295.16707998    -0.00000699    -0.00000056  0.26D-07  0.90D-07  1947.43
    6     4     4     1.08731889    -0.77974753  -295.16278703    -0.00000666    -0.00000056  0.25D-07  0.94D-07  1947.43
    6     5     5     1.08731852    -0.77974752  -295.16278702    -0.00000673    -0.00000057  0.26D-07  0.95D-07  1947.43
    6     6     6     1.08731753    -0.77974747  -295.16278697    -0.00000683    -0.00000059  0.27D-07  0.97D-07  1947.43
    6     7     7     1.08731822    -0.77974743  -295.16278693    -0.00000691    -0.00000055  0.24D-07  0.94D-07  1947.43
    6     8     8     1.08731948    -0.77974737  -295.16278687    -0.00000708    -0.00000055  0.25D-07  0.95D-07  1947.43
    6     9     9     1.08760027    -0.78032830  -295.15652346    -0.00000692    -0.00000061  0.25D-07  0.11D-06  1947.43
    7     1     1     1.08714677    -0.77925824  -295.16708071    -0.00000067    -0.00000008  0.66D-08  0.12D-07  2326.06
    7     2     2     1.08714691    -0.77925823  -295.16708069    -0.00000066    -0.00000008  0.66D-08  0.12D-07  2326.06
    7     3     3     1.08714623    -0.77925821  -295.16708067    -0.00000069    -0.00000008  0.68D-08  0.12D-07  2326.06
    7     4     4     1.08734015    -0.77974824  -295.16278774    -0.00000071    -0.00000009  0.73D-08  0.13D-07  2326.06
    7     5     5     1.08734005    -0.77974824  -295.16278774    -0.00000072    -0.00000009  0.73D-08  0.13D-07  2326.06
    7     6     6     1.08733968    -0.77974821  -295.16278771    -0.00000074    -0.00000009  0.75D-08  0.13D-07  2326.06
    7     7     7     1.08734094    -0.77974814  -295.16278764    -0.00000071    -0.00000009  0.72D-08  0.13D-07  2326.06
    7     8     8     1.08734149    -0.77974808  -295.16278758    -0.00000071    -0.00000009  0.73D-08  0.13D-07  2326.06
    7     9     9     1.08762377    -0.78032910  -295.15652427    -0.00000080    -0.00000010  0.87D-08  0.16D-07  2326.06
    8     1     1     1.08714621    -0.77925834  -295.16708080    -0.00000010    -0.00000001  0.56D-09  0.20D-08  2706.27
    8     2     2     1.08714626    -0.77925833  -295.16708079    -0.00000010    -0.00000001  0.56D-09  0.20D-08  2706.27
    8     3     3     1.08714604    -0.77925831  -295.16708077    -0.00000010    -0.00000001  0.56D-09  0.20D-08  2706.27
    8     4     4     1.08734039    -0.77974835  -295.16278785    -0.00000011    -0.00000001  0.65D-09  0.24D-08  2706.27
    8     5     5     1.08734045    -0.77974835  -295.16278785    -0.00000011    -0.00000001  0.63D-09  0.24D-08  2706.27
    8     6     6     1.08734022    -0.77974832  -295.16278783    -0.00000011    -0.00000001  0.65D-09  0.23D-08  2706.27
    8     7     7     1.08734057    -0.77974825  -295.16278775    -0.00000011    -0.00000001  0.65D-09  0.23D-08  2706.27
    8     8     8     1.08734045    -0.77974819  -295.16278769    -0.00000011    -0.00000001  0.65D-09  0.24D-08  2706.27
    8     9     9     1.08762316    -0.78032924  -295.15652440    -0.00000013    -0.00000002  0.90D-09  0.31D-08  2706.27


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.5%   9.5%
 P   0.3%  58.2%  23.7%

 Initialization:   1.8%
 Other:            5.5%

 Total CPU:     2706.3 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/0/0          -0.0000001  -0.0000000   0.0000000   0.0004555   0.0000466   0.0012494   0.1877719   0.7600080
                           -0.5533960
 2222222222//200/          -0.0000001  -0.0000000  -0.0000001   0.0010949  -0.0012107   0.0023881   0.7520677   0.2173851
                            0.5533975
 2222222222//2/00           0.0022437   0.0110016   0.6779717   0.0020758   0.0078297   0.6779230  -0.0019604  -0.0006319
                           -0.0000000
 22222222222//00/          -0.0022437  -0.0110015  -0.6779663   0.0020759   0.0078296   0.6779287  -0.0019605  -0.0006318
                           -0.0000000
 2222222222/2/00/           0.6776413   0.0237637  -0.0026282  -0.6360130  -0.2347707   0.0046606   0.0004535   0.0002760
                            0.0000000
 2222222222//20/0           0.6776392   0.0237636  -0.0026282   0.6360149   0.2347715  -0.0046605  -0.0004534  -0.0002759
                           -0.0000000
 2222222222/2//00          -0.0238032   0.6775584  -0.0109161  -0.2348060   0.6359796  -0.0066222   0.0014582  -0.0002476
                            0.0000000
 22222222222//0/0          -0.0238029   0.6775537  -0.0109160   0.2348076  -0.6359841   0.0066223  -0.0014582   0.0002476
                           -0.0000000
 22222222222///00          -0.0000000   0.0000000   0.0000001  -0.0006393   0.0012572  -0.0011387  -0.5642958   0.5426203
                            0.5533980

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.003174   -0.033668    0.958475   -0.000000    0.000000   -0.000000   -0.000001   -0.000000    0.000000
 2           0.015561    0.958356    0.033612    0.000000    0.000000    0.000003   -0.000000   -0.000000    0.000000
 3           0.958940   -0.015440   -0.003717    0.000004    0.000000   -0.000000    0.000000    0.000000    0.000000
 4          -0.000000    0.000001    0.000001    0.002936   -0.001198   -0.332130    0.899630    0.000617    0.000000
 5           0.000000   -0.000003    0.000001    0.011075    0.001746    0.899584    0.332079   -0.000027   -0.000000
 6          -0.000004    0.000000    0.000000    0.958913   -0.002418   -0.009367   -0.006592    0.001649    0.000000
 7           0.000000    0.000000    0.000000   -0.002773   -0.918813    0.002063   -0.000641    0.274634    0.000000
 8          -0.000000    0.000000    0.000000   -0.000894    0.274637   -0.000350   -0.000390    0.918819   -0.000002
 9          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000001    0.958859

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959072    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.959072    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.959072   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.958986    0.000000   -0.000000   -0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.958986    0.000000   -0.000000    0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.958986   -0.000000   -0.000000    0.000000
 7           0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958986    0.000000    0.000000
 8           0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.958986   -0.000000
 9           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.958859


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95847536 (fixed)   0.95907797 (relaxed)   0.95907175 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002268   -0.00005893   -0.67181220
 Singles      0.01429643   -0.04890136   -0.05523070
 Pairs        0.07285175   -0.00000000   -0.05221544
 Total        1.08717087   -0.04896030   -0.77925834
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38782246
 Nuclear energy                         0.00000000
 Kinetic energy                       111.16319025
 One electron energy                 -507.82860962
 Two electron energy                  212.66152881
 Virial quotient                       -2.65525917
 Correlation energy                    -0.77925834
 !MRCI STATE 1.2 Energy              -295.167080803350

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23500943 (Davidson, fixed reference)
 Cluster corrected energies          -295.23499844 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23500943 (Davidson, rotated reference)

 Cluster corrected energies          -295.23352834 (Pople, fixed reference)
 Cluster corrected energies          -295.23351678 (Pople, relaxed reference)
 Cluster corrected energies          -295.23352834 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95835623 (fixed)   0.95907795 (relaxed)   0.95907172 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002268   -0.00005893   -0.67181224
 Singles      0.01429641   -0.04890128   -0.05523064
 Pairs        0.07285182   -0.00000000   -0.05221545
 Total        1.08717092   -0.04896021   -0.77925833
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38782246
 Nuclear energy                         0.00000000
 Kinetic energy                       111.16318815
 One electron energy                 -507.82860945
 Two electron energy                  212.66152866
 Virial quotient                       -2.65525922
 Correlation energy                    -0.77925833
 !MRCI STATE 2.2 Energy              -295.167080789450

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23500945 (Davidson, fixed reference)
 Cluster corrected energies          -295.23499846 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23500945 (Davidson, rotated reference)

 Cluster corrected energies          -295.23352837 (Pople, fixed reference)
 Cluster corrected energies          -295.23351681 (Pople, relaxed reference)
 Cluster corrected energies          -295.23352837 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95894032 (fixed)   0.95907804 (relaxed)   0.95907182 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002268   -0.00005893   -0.67181226
 Singles      0.01429644   -0.04890137   -0.05523068
 Pairs        0.07285158   -0.00000000   -0.05221536
 Total        1.08717070   -0.04896031   -0.77925831
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38782246
 Nuclear energy                         0.00000000
 Kinetic energy                       111.16318984
 One electron energy                 -507.82861161
 Two electron energy                  212.66153084
 Virial quotient                       -2.65525918
 Correlation energy                    -0.77925831
 !MRCI STATE 3.2 Energy              -295.167080767925

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23500926 (Davidson, fixed reference)
 Cluster corrected energies          -295.23499827 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23500926 (Davidson, rotated reference)

 Cluster corrected energies          -295.23352817 (Pople, fixed reference)
 Cluster corrected energies          -295.23351661 (Pople, relaxed reference)
 Cluster corrected energies          -295.23352817 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.89962971 (fixed)   0.95899149 (relaxed)   0.95898606 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002278   -0.00006585   -0.67208012
 Singles      0.01429516   -0.04896958   -0.05528937
 Pairs        0.07304722   -0.00000002   -0.05237886
 Total        1.08736515   -0.04903546   -0.77974835
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38303950
 Nuclear energy                         0.00000000
 Kinetic energy                       111.16699728
 One electron energy                 -507.83540631
 Two electron energy                  212.67261846
 Virial quotient                       -2.65512963
 Correlation energy                    -0.77974835
 !MRCI STATE 4.2 Energy              -295.162787849840

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23091068 (Davidson, fixed reference)
 Cluster corrected energies          -295.23090109 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23091068 (Davidson, rotated reference)

 Cluster corrected energies          -295.22943654 (Pople, fixed reference)
 Cluster corrected energies          -295.22942645 (Pople, relaxed reference)
 Cluster corrected energies          -295.22943654 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.89958428 (fixed)   0.95899146 (relaxed)   0.95898603 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002278   -0.00006585   -0.67208005
 Singles      0.01429521   -0.04896964   -0.05528940
 Pairs        0.07304723   -0.00000000   -0.05237891
 Total        1.08736522   -0.04903549   -0.77974835
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38303950
 Nuclear energy                         0.00000000
 Kinetic energy                       111.16699750
 One electron energy                 -507.83540619
 Two electron energy                  212.67261834
 Virial quotient                       -2.65512962
 Correlation energy                    -0.77974835
 !MRCI STATE 5.2 Energy              -295.162787849443

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23091073 (Davidson, fixed reference)
 Cluster corrected energies          -295.23090114 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23091073 (Davidson, rotated reference)

 Cluster corrected energies          -295.22943659 (Pople, fixed reference)
 Cluster corrected energies          -295.22942650 (Pople, relaxed reference)
 Cluster corrected energies          -295.22943659 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95891326 (fixed)   0.95899156 (relaxed)   0.95898613 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002278   -0.00006585   -0.67208026
 Singles      0.01429514   -0.04896953   -0.05528934
 Pairs        0.07304707   -0.00000001   -0.05237872
 Total        1.08736499   -0.04903539   -0.77974832
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38303950
 Nuclear energy                         0.00000000
 Kinetic energy                       111.16699551
 One electron energy                 -507.83540777
 Two electron energy                  212.67261995
 Virial quotient                       -2.65512967
 Correlation energy                    -0.77974832
 !MRCI STATE 6.2 Energy              -295.162787826487

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23091053 (Davidson, fixed reference)
 Cluster corrected energies          -295.23090094 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23091053 (Davidson, rotated reference)

 Cluster corrected energies          -295.22943638 (Pople, fixed reference)
 Cluster corrected energies          -295.22942629 (Pople, relaxed reference)
 Cluster corrected energies          -295.22943638 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.91881343 (fixed)   0.95899141 (relaxed)   0.95898598 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002277   -0.00006583   -0.67208023
 Singles      0.01429492   -0.04896924   -0.05528912
 Pairs        0.07304764   -0.00000002   -0.05237890
 Total        1.08736533   -0.04903510   -0.77974825
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38303950
 Nuclear energy                         0.00000000
 Kinetic energy                       111.16699474
 One electron energy                 -507.83539241
 Two electron energy                  212.67260466
 Virial quotient                       -2.65512969
 Correlation energy                    -0.77974825
 !MRCI STATE 7.2 Energy              -295.162787747971

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23091071 (Davidson, fixed reference)
 Cluster corrected energies          -295.23090112 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23091071 (Davidson, rotated reference)

 Cluster corrected energies          -295.22943658 (Pople, fixed reference)
 Cluster corrected energies          -295.22942648 (Pople, relaxed reference)
 Cluster corrected energies          -295.22943658 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.91881853 (fixed)   0.95899146 (relaxed)   0.95898603 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002277   -0.00006583   -0.67208151
 Singles      0.01429476   -0.04896916   -0.05528904
 Pairs        0.07304767    0.00000127   -0.05237763
 Total        1.08736521   -0.04903372   -0.77974819
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38303950
 Nuclear energy                         0.00000000
 Kinetic energy                       111.16699689
 One electron energy                 -507.83538726
 Two electron energy                  212.67259957
 Virial quotient                       -2.65512963
 Correlation energy                    -0.77974819
 !MRCI STATE 8.2 Energy              -295.162787691489

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23091056 (Davidson, fixed reference)
 Cluster corrected energies          -295.23090096 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23091056 (Davidson, rotated reference)

 Cluster corrected energies          -295.22943642 (Pople, fixed reference)
 Cluster corrected energies          -295.22942632 (Pople, relaxed reference)
 Cluster corrected energies          -295.22943642 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95885907 (fixed)   0.95886721 (relaxed)   0.95885907 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002762   -0.00006379   -0.00007846
 Singles      0.01430712   -0.04889664   -0.05522482
 Pairs        0.07331847   -0.73136881   -0.72502596
 Total        1.08765320   -0.78032924   -0.78032924
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37619516
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17094009
 One electron energy                 -507.83774512
 Two electron energy                  212.68122072
 Virial quotient                       -2.65497912
 Correlation energy                    -0.78032924
 !MRCI STATE 9.2 Energy              -295.156524400871

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22492275 (Davidson, fixed reference)
 Cluster corrected energies          -295.22490834 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22492275 (Davidson, rotated reference)

 Cluster corrected energies          -295.22345929 (Pople, fixed reference)
 Cluster corrected energies          -295.22344412 (Pople, relaxed reference)
 Cluster corrected energies          -295.22345929 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1941.94       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10581.90   3181.25   7393.27      5.82      0.06      1.17
 REAL TIME  *     10851.42 SEC
 DISK USED  *         1.93 GB (local),       23.28 GB (total)
 SF USED    *        12.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -295.23500943  AU                              
 SETTING HLSDIAG(14)    =      -295.23500945  AU                              
 SETTING HLSDIAG(15)    =      -295.23500926  AU                              
 SETTING HLSDIAG(16)    =      -295.23091068  AU                              
 SETTING HLSDIAG(17)    =      -295.23091073  AU                              
 SETTING HLSDIAG(18)    =      -295.23091053  AU                              
 SETTING HLSDIAG(19)    =      -295.23091071  AU                              
 SETTING HLSDIAG(20)    =      -295.23091056  AU                              
 SETTING HLSDIAG(21)    =      -295.22492275  AU                              


         HLSDIAG
    -295.5234890
    -295.5234890
    -295.5234889
    -295.2293174
    -295.2293173
    -295.2293173
    -295.2293172
    -295.2293172
    -295.2261610
    -295.2261610
    -295.2261610
    -295.2251206
    -295.2350094
    -295.2350095
    -295.2350093
    -295.2309107
    -295.2309107
    -295.2309105
    -295.2309107
    -295.2309106
    -295.2249228
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -295.447059   -295.447059   -295.447059   -295.161147   -295.161147   -295.161147   -295.161147   -295.161147
                      -295.157336   -295.157336   -295.157336   -295.156575
 Replaced energies:   -295.523489   -295.523489   -295.523489   -295.229317   -295.229317   -295.229317   -295.229317   -295.229317
                      -295.226161   -295.226161   -295.226161   -295.225121

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -295.167081   -295.167081   -295.167081   -295.162788   -295.162788   -295.162788   -295.162788   -295.162788
                      -295.156524
 Replaced energies:   -295.235009   -295.235009   -295.235009   -295.230911   -295.230911   -295.230911   -295.230911   -295.230911
                      -295.224923



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -295.52348901

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -15.57     -59.00     105.97       0.53      -4.95       1.88     220.52       0.73      -2.64

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.57      -0.00    2574.21     -17.70      64.54    -201.03      -2.26       5.41      -1.18     115.45

    3   3.2  0.5  0.5       0.00       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           59.00   -2574.21      -0.00      -3.01      -1.30      -2.54     211.90      -0.83     115.48       1.20

    4   4.2  0.5  0.5       0.00       0.00       0.00   64563.21       0.00       0.00       0.00       0.00       0.00       0.00
                         -105.97      17.70       3.01      -0.00    1637.96     515.61     -74.57       7.53      85.78     -10.88

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   64563.23       0.00       0.00       0.00       0.00       0.00
                           -0.53     -64.54       1.30   -1637.96      -0.00     156.20     272.90     789.92    -272.17      -8.29

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   64563.22       0.00       0.00       0.00       0.00
                            4.95     201.03       2.54    -515.61    -156.20       0.00    -914.09     250.44     847.73      -2.01

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   64563.25       0.00       0.00       0.00
                           -1.88       2.26    -211.90      74.57    -272.90     914.09       0.00       6.36       0.42     894.36

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64563.24       0.00       0.00
                         -220.52      -5.41       0.83      -7.53    -789.92    -250.44      -6.36      -0.00       0.10      -1.52

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   65255.95       0.00
                           -0.73       1.18    -115.48     -85.78     272.17    -847.73      -0.42      -0.10       0.00    -334.97

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   65255.96
                            2.64    -115.45      -1.20      10.88       8.29       2.01    -894.36       1.52     334.97       0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.45      -0.20     445.29       8.95     -41.76       5.82     930.93      -1.31      -0.58

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -311.06      -7.13       1.88       0.00       0.02       0.00      -0.00       0.00       2.99      -6.77

   13   1.2  0.5 -0.5       0.00   -2574.84      15.44       1.59      -3.73       2.38    -211.89       0.71     115.44       1.89
                            0.00     -15.09   -2574.21     -14.55      63.37    -201.71      -3.50       0.78       1.88    -115.45

   14   2.2  0.5 -0.5    2574.84      -0.00     -15.22       3.13     201.83      64.57      -2.80       0.27       2.85      -0.41
                           15.09       0.00     -59.09    -243.29      -2.57      18.42      -2.50     -18.47       0.04      -2.65

   15   3.2  0.5 -0.5     -15.44      15.22      -0.00    -137.35      -2.01      13.47      -0.59     202.09      -0.70      -0.01
                         2574.21      59.09      -0.00      -2.36    -202.23     -63.34      -2.03       1.04       0.19       0.25

   16   4.2  0.5 -0.5      -1.59      -3.13     137.35       0.00    -491.45    1501.37       7.30    -104.95      -7.03    -579.75
                           14.55     243.29       2.36      -0.00     -92.47     -13.68     142.80     -21.71    1025.00       0.53

   17   5.2  0.5 -0.5       3.73    -201.83       2.01     491.45       0.00      -9.53    -906.53     326.26    -851.76     -17.33
                          -63.37       2.57     202.23      92.47      -0.00     951.97      12.70     -10.98      26.28    -852.70

   18   6.2  0.5 -0.5      -2.38     -64.57     -13.47   -1501.37       9.53      -0.00    -305.96   -1022.95    -272.74      54.03
                          201.71     -18.42      63.34      13.68    -951.97      -0.00     -23.37     -30.56     -95.84    -270.10

   19   7.2  0.5 -0.5     211.89       2.80       0.59      -7.30     906.53     305.96       0.00     -22.28     -10.13      -4.47
                            3.50       2.50       2.03    -142.80     -12.70      23.37      -0.00    1907.35      10.27      -8.48

   20   8.2  0.5 -0.5      -0.71      -0.27    -202.09     104.95    -326.26    1022.95      22.28       0.00      -9.94     852.82
                           -0.78      18.47      -1.04      21.71      10.98      30.56   -1907.35       0.00      77.95       5.19

   21   9.2  0.5 -0.5    -115.44      -2.85       0.70       7.03     851.76     272.74      10.13       9.94       0.00       1.32
                           -1.88      -0.04      -0.19   -1025.00     -26.28      95.84     -10.27     -77.95       0.00      -0.56

   22  10.2  0.5 -0.5      -1.89       0.41       0.01     579.75      17.33     -54.03       4.47    -852.82      -1.32      -0.00
                          115.45       2.65      -0.25      -0.53     852.70     270.10       8.48      -5.19       0.56      -0.00

   23  11.2  0.5 -0.5      -2.84     115.45      -0.68       8.25       5.24      16.63    -894.27       1.21    -334.93      -5.44
                            0.23       0.68     115.49     -86.63     268.90    -848.55     -15.00       1.36      -5.44     334.92

   24  12.2  0.5 -0.5       1.84       1.87     311.14      -0.00       0.00      -0.00      -0.00      -0.00      28.03   -1725.01
                            7.14    -311.06       1.82      -0.00       0.00      -0.00       0.01       0.00   -1725.01     -28.04

   25   1.2  1.5  1.5    -441.66     -11.58       2.69      -2.54     548.99     176.51       7.34      16.65       1.47       3.78
                           15.49       0.37       1.37     658.44      27.49     -59.12       6.68      51.83       0.01       3.01

   26   2.2  1.5  1.5     -15.33      -7.51       0.14     374.21      21.45     -31.76      14.57    -546.28      15.37       0.40
                         -440.52     -10.05       9.84      11.63    -543.59    -185.53      -5.50       4.36      -1.91      19.14

   27   3.2  1.5  1.5      11.84    -440.96       2.57     -12.81      -4.62     -10.31     574.11      10.20     950.63      15.45
                            9.71       2.82     441.73     -57.07     184.25    -543.23      -9.56       0.68     -15.41     948.98

   28   4.2  1.5  1.5    -424.33     -11.11       1.84    -336.24    -515.17    -132.20      -9.75    -222.14      -0.68      -1.00
                         -156.29      -3.16      -0.44     -78.28     192.83      69.79      -0.13    1072.31       0.70       0.81

   29   5.2  1.5  1.5    -156.52      -8.80       1.79     880.55    -176.48    -142.60      -1.04     608.88      -5.18      -1.59
                          423.26       8.83      -7.78     -40.71    -509.55    -165.75      -7.56     398.50      -1.75       7.27

   30   6.2  1.5  1.5      13.46    -451.22       1.03      -2.36       6.05      12.39    -573.84      -7.73    -475.78      -6.05
                           -7.10      -2.06    -452.41     -53.56     179.28    -540.04      -6.42      -6.92      -6.94     477.54

   31   7.2  1.5  1.5      -2.70      -1.70    -502.24     -28.05      96.84    -300.34      -3.61       1.92      -7.24     529.56
                           -7.67     376.78      -0.91      -9.10      -5.08     -12.90     790.32       1.14     397.03       5.08

   32   8.2  1.5  1.5      -0.68      -0.45    -145.17     103.60    -333.35    1038.52      18.85      -2.05      -2.04     153.15
                            8.16    -362.29       2.55      -9.57      -3.48     -14.10     821.78       1.50    -381.70      -6.66

   33   9.2  1.5  1.5       4.63       4.70     783.41       0.00      -0.03       0.09       0.00       0.00       7.97    -489.66
                          -17.98     783.28      -4.59      -0.01      -0.00       0.00       0.32      -0.00     490.46       7.98

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.42      14.81    -510.07     -64.52     202.51    -631.14      12.13      -1.10     -20.72   -1096.08

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           11.57    -508.91     -14.91       0.19       9.84      -9.82    -662.92     -12.75    1097.34     -20.59

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.18       8.21       1.93    -332.15      -7.16      32.33       8.99    -689.88     -17.74       3.97

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.60     183.40     489.00     -59.69     187.77    -582.66    -239.84       2.25     198.63    -514.36

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.26    -487.72     183.76     -42.66      69.06    -225.54     617.48       8.51    -512.11    -199.38

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.10       5.05      -3.61   -1187.05     -16.02     119.82     -19.74     574.96       5.31       3.86

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -144.63      -4.44       0.53     -20.08   -1217.56    -388.43     -10.97       3.95      -0.92      -0.26

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -585.90     -13.24       3.32       6.96     301.26      96.30       2.84      -1.92       1.29      -2.21

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -904.41     -20.73       5.47      -0.00      -0.63      -0.20      -0.01       0.01       0.99      -2.23

   43   1.2  1.5 -0.5    -254.99      -6.68       1.55      -1.47     316.96     101.91       4.24       9.62       0.85       2.18
                           -8.94      -0.21      -0.79    -380.15     -15.87      34.14      -3.85     -29.92      -0.01      -1.74

   44   2.2  1.5 -0.5      -8.85      -4.34       0.08     216.05      12.38     -18.34       8.41    -315.40       8.88       0.23
                          254.33       5.80      -5.68      -6.72     313.84     107.12       3.17      -2.52       1.11     -11.05

   45   3.2  1.5 -0.5       6.83    -254.59       1.48      -7.40      -2.67      -5.95     331.46       5.89     548.85       8.92
                           -5.61      -1.63    -255.03      32.95    -106.38     313.63       5.52      -0.39       8.90    -547.90

   46   4.2  1.5 -0.5    -244.99      -6.42       1.06    -194.13    -297.43     -76.33      -5.63    -128.26      -0.40      -0.58
                           90.23       1.83       0.25      45.20    -111.33     -40.30       0.08    -619.10      -0.40      -0.47

   47   5.2  1.5 -0.5     -90.37      -5.08       1.03     508.39    -101.89     -82.33      -0.60     351.54      -2.99      -0.92
                         -244.37      -5.10       4.49      23.50     294.19      95.69       4.36    -230.07       1.01      -4.20

   48   6.2  1.5 -0.5       7.77    -260.51       0.60      -1.36       3.49       7.15    -331.30      -4.46    -274.69      -3.49
                            4.10       1.19     261.20      30.93    -103.51     311.79       3.70       4.00       4.01    -275.71

   49   7.2  1.5 -0.5      -1.56      -0.98    -289.97     -16.20      55.91    -173.40      -2.08       1.11      -4.18     305.74
                            4.43    -217.53       0.52       5.25       2.93       7.45    -456.29      -0.66    -229.22      -2.93

   50   8.2  1.5 -0.5      -0.39      -0.26     -83.81      59.81    -192.46     599.59      10.88      -1.18      -1.18      88.42
                           -4.71     209.17      -1.47       5.53       2.01       8.14    -474.45      -0.87     220.37       3.84

   51   9.2  1.5 -0.5       2.68       2.71     452.30       0.00      -0.02       0.05       0.00       0.00       4.60    -282.71
                           10.38    -452.23       2.65       0.00       0.00      -0.00      -0.18       0.00    -283.17      -4.61

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

    1   1.2  0.5  0.5       0.00       0.00       0.00    2574.84     -15.44      -1.59       3.73      -2.38     211.89      -0.71
                            0.01     311.06      -0.00     -15.09   -2574.21     -14.55      63.37    -201.71      -3.50       0.78

    2   2.2  0.5  0.5       0.00       0.00   -2574.84      -0.00      15.22      -3.13    -201.83     -64.57       2.80      -0.27
                           -0.45       7.13      15.09      -0.00     -59.09    -243.29      -2.57      18.42      -2.50     -18.47

    3   3.2  0.5  0.5       0.00       0.00      15.44     -15.22      -0.00     137.35       2.01     -13.47       0.59    -202.09
                            0.20      -1.88    2574.21      59.09       0.00      -2.36    -202.23     -63.34      -2.03       1.04

    4   4.2  0.5  0.5       0.00       0.00       1.59       3.13    -137.35       0.00     491.45   -1501.37      -7.30     104.95
                         -445.29      -0.00      14.55     243.29       2.36       0.00     -92.47     -13.68     142.80     -21.71

    5   5.2  0.5  0.5       0.00       0.00      -3.73     201.83      -2.01    -491.45       0.00       9.53     906.53    -326.26
                           -8.95      -0.02     -63.37       2.57     202.23      92.47       0.00     951.97      12.70     -10.98

    6   6.2  0.5  0.5       0.00       0.00       2.38      64.57      13.47    1501.37      -9.53      -0.00     305.96    1022.95
                           41.76      -0.00     201.71     -18.42      63.34      13.68    -951.97       0.00     -23.37     -30.56

    7   7.2  0.5  0.5       0.00       0.00    -211.89      -2.80      -0.59       7.30    -906.53    -305.96       0.00      22.28
                           -5.82       0.00       3.50       2.50       2.03    -142.80     -12.70      23.37       0.00    1907.35

    8   8.2  0.5  0.5       0.00       0.00       0.71       0.27     202.09    -104.95     326.26   -1022.95     -22.28       0.00
                         -930.93      -0.00      -0.78      18.47      -1.04      21.71      10.98      30.56   -1907.35      -0.00

    9   9.2  0.5  0.5       0.00       0.00     115.44       2.85      -0.70      -7.03    -851.76    -272.74     -10.13      -9.94
                            1.31      -2.99      -1.88      -0.04      -0.19   -1025.00     -26.28      95.84     -10.27     -77.95

   10  10.2  0.5  0.5       0.00       0.00       1.89      -0.41      -0.01    -579.75     -17.33      54.03      -4.47     852.82
                            0.58       6.77     115.45       2.65      -0.25      -0.53     852.70     270.10       8.48      -5.19

   11  11.2  0.5  0.5   65255.96       0.00       2.84    -115.45       0.68      -8.25      -5.24     -16.63     894.27      -1.21
                            0.00    1725.22       0.23       0.68     115.49     -86.63     268.90    -848.55     -15.00       1.36

   12  12.2  0.5  0.5       0.00   65484.29      -1.84      -1.87    -311.14       0.00      -0.00       0.00       0.00       0.00
                        -1725.22       0.00       7.14    -311.06       1.82      -0.00       0.00      -0.00       0.01       0.00

   13   1.2  0.5 -0.5       2.84      -1.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.23      -7.14      -0.00      15.57      59.00    -105.97      -0.53       4.95      -1.88    -220.52

   14   2.2  0.5 -0.5    -115.45      -1.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.68     311.06     -15.57       0.00   -2574.21      17.70     -64.54     201.03       2.26      -5.41

   15   3.2  0.5 -0.5       0.68    -311.14       0.00       0.00       0.03       0.00       0.00       0.00       0.00       0.00
                         -115.49      -1.82     -59.00    2574.21       0.00       3.01       1.30       2.54    -211.90       0.83

   16   4.2  0.5 -0.5      -8.25       0.00       0.00       0.00       0.00   64563.21       0.00       0.00       0.00       0.00
                           86.63       0.00     105.97     -17.70      -3.01       0.00   -1637.96    -515.61      74.57      -7.53

   17   5.2  0.5 -0.5      -5.24      -0.00       0.00       0.00       0.00       0.00   64563.23       0.00       0.00       0.00
                         -268.90      -0.00       0.53      64.54      -1.30    1637.96       0.00    -156.20    -272.90    -789.92

   18   6.2  0.5 -0.5     -16.63       0.00       0.00       0.00       0.00       0.00       0.00   64563.22       0.00       0.00
                          848.55       0.00      -4.95    -201.03      -2.54     515.61     156.20      -0.00     914.09    -250.44

   19   7.2  0.5 -0.5     894.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64563.25       0.00
                           15.00      -0.01       1.88      -2.26     211.90     -74.57     272.90    -914.09      -0.00      -6.36

   20   8.2  0.5 -0.5      -1.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64563.24
                           -1.36      -0.00     220.52       5.41      -0.83       7.53     789.92     250.44       6.36       0.00

   21   9.2  0.5 -0.5     334.93     -28.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.44    1725.01       0.73      -1.18     115.48      85.78    -272.17     847.73       0.42       0.10

   22  10.2  0.5 -0.5       5.44    1725.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -334.92      28.04      -2.64     115.45       1.20     -10.88      -8.29      -2.01     894.36      -1.52

   23  11.2  0.5 -0.5       0.00      -6.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       2.88       0.01      -0.45       0.20    -445.29      -8.95      41.76      -5.82    -930.93

   24  12.2  0.5 -0.5       6.81      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.88      -0.00     311.06       7.13      -1.88      -0.00      -0.02      -0.00       0.00      -0.00

   25   1.2  1.5  1.5     948.71     -32.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -33.39    -910.63      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5      33.30     911.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          950.03     -31.93      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5      -2.11     -14.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.05       3.49      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5    -448.07       0.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -164.78       1.66      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5    -165.40      -1.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          446.28       0.61      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5       2.48       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.53      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5      -1.77      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.68       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5      -0.40      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.79      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5       1.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.81       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00    -254.99      -6.68       1.55      -1.47     316.96     101.91       4.24       9.62
                            4.24      -3.45       8.94       0.21       0.79     380.15      15.87     -34.14       3.85      29.92

   35   2.2  1.5  0.5       0.00       0.00      -8.85      -4.34       0.08     216.05      12.38     -18.34       8.41    -315.40
                            1.96     -17.09    -254.33      -5.80       5.68       6.72    -313.84    -107.12      -3.17       2.52

   36   3.2  1.5  0.5       0.00       0.00       6.83    -254.59       1.48      -7.40      -2.67      -5.95     331.46       5.89
                           -0.02   -1052.34       5.61       1.63     255.03     -32.95     106.38    -313.63      -5.52       0.39

   37   4.2  1.5  0.5       0.00       0.00    -244.99      -6.42       1.06    -194.13    -297.43     -76.33      -5.63    -128.26
                            2.00       0.02     -90.23      -1.83      -0.25     -45.20     111.33      40.30      -0.08     619.10

   38   5.2  1.5  0.5       0.00       0.00     -90.37      -5.08       1.03     508.39    -101.89     -82.33      -0.60     351.54
                           -0.13       0.02     244.37       5.10      -4.49     -23.50    -294.19     -95.69      -4.36     230.07

   39   6.2  1.5  0.5       0.00       0.00       7.77    -260.51       0.60      -1.36       3.49       7.15    -331.30      -4.46
                           -1.04       1.95      -4.10      -1.19    -261.20     -30.93     103.51    -311.79      -3.70      -4.00

   40   7.2  1.5  0.5       0.00       0.00      -1.56      -0.98    -289.97     -16.20      55.91    -173.40      -2.08       1.11
                         -152.68      -0.00      -4.43     217.53      -0.52      -5.25      -2.93      -7.45     456.29       0.66

   41   8.2  1.5  0.5       0.00       0.00      -0.39      -0.26     -83.81      59.81    -192.46     599.59      10.88      -1.18
                         -617.76      -0.00       4.71    -209.17       1.47      -5.53      -2.01      -8.14     474.45       0.87

   42   9.2  1.5  0.5       0.00       0.00       2.68       2.71     452.30       0.00      -0.02       0.05       0.00       0.00
                         -565.97       0.00     -10.38     452.23      -2.65      -0.00      -0.00       0.00       0.18      -0.00

   43   1.2  1.5 -0.5     547.74     -18.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           19.27     525.75      -3.42      14.81    -510.07     -64.52     202.51    -631.14      12.13      -1.10

   44   2.2  1.5 -0.5      19.23     526.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -548.50      18.43      11.57    -508.91     -14.91       0.19       9.84      -9.82    -662.92     -12.75

   45   3.2  1.5 -0.5      -1.22      -8.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           11.00      -2.02      -0.18       8.21       1.93    -332.15      -7.16      32.33       8.99    -689.88

   46   4.2  1.5 -0.5    -258.69       0.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           95.13      -0.96      -1.60     183.40     489.00     -59.69     187.77    -582.66    -239.84       2.25

   47   5.2  1.5 -0.5     -95.50      -1.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -257.66      -0.35      12.26    -487.72     183.76     -42.66      69.06    -225.54     617.48       8.51

   48   6.2  1.5 -0.5       1.43       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.77       0.01      -1.10       5.05      -3.61   -1187.05     -16.02     119.82     -19.74     574.96

   49   7.2  1.5 -0.5      -1.02      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.97      -0.00    -144.63      -4.44       0.53     -20.08   -1217.56    -388.43     -10.97       3.95

   50   8.2  1.5 -0.5      -0.23      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.46       0.00    -585.90     -13.24       3.32       6.96     301.26      96.30       2.84      -1.92

   51   9.2  1.5 -0.5       1.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.47      -0.00    -904.41     -20.73       5.47      -0.00      -0.63      -0.20      -0.01       0.01

   52   1.2  1.5 -1.5       0.00       0.00    -441.66     -11.58       2.69      -2.54     548.99     176.51       7.34      16.65
                           -0.00      -0.00     -15.49      -0.37      -1.37    -658.44     -27.49      59.12      -6.68     -51.83

   53   2.2  1.5 -1.5       0.00       0.00     -15.33      -7.51       0.14     374.21      21.45     -31.76      14.57    -546.28
                           -0.00      -0.00     440.52      10.05      -9.84     -11.63     543.59     185.53       5.50      -4.36

   54   3.2  1.5 -1.5       0.00       0.00      11.84    -440.96       2.57     -12.81      -4.62     -10.31     574.11      10.20
                           -0.00      -0.00      -9.71      -2.82    -441.73      57.07    -184.25     543.23       9.56      -0.68

   55   4.2  1.5 -1.5       0.00       0.00    -424.33     -11.11       1.84    -336.24    -515.17    -132.20      -9.75    -222.14
                           -0.00      -0.00     156.29       3.16       0.44      78.28    -192.83     -69.79       0.13   -1072.31

   56   5.2  1.5 -1.5       0.00       0.00    -156.52      -8.80       1.79     880.55    -176.48    -142.60      -1.04     608.88
                           -0.00      -0.00    -423.26      -8.83       7.78      40.71     509.55     165.75       7.56    -398.50

   57   6.2  1.5 -1.5       0.00       0.00      13.46    -451.22       1.03      -2.36       6.05      12.39    -573.84      -7.73
                           -0.00      -0.00       7.10       2.06     452.41      53.56    -179.28     540.04       6.42       6.92

   58   7.2  1.5 -1.5       0.00       0.00      -2.70      -1.70    -502.24     -28.05      96.84    -300.34      -3.61       1.92
                           -0.00      -0.00       7.67    -376.78       0.91       9.10       5.08      12.90    -790.32      -1.14

   59   8.2  1.5 -1.5       0.00       0.00      -0.68      -0.45    -145.17     103.60    -333.35    1038.52      18.85      -2.05
                           -0.00      -0.00      -8.16     362.29      -2.55       9.57       3.48      14.10    -821.78      -1.50

   60   9.2  1.5 -1.5       0.00       0.00       4.63       4.70     783.41       0.00      -0.03       0.09       0.00       0.00
                           -0.00      -0.00      17.98    -783.28       4.59       0.01       0.00      -0.00      -0.32       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5    -115.44      -1.89      -2.84       1.84    -441.66     -15.33      11.84    -424.33    -156.52      13.46
                            1.88    -115.45      -0.23      -7.14     -15.49     440.52      -9.71     156.29    -423.26       7.10

    2   2.2  0.5  0.5      -2.85       0.41     115.45       1.87     -11.58      -7.51    -440.96     -11.11      -8.80    -451.22
                            0.04      -2.65      -0.68     311.06      -0.37      10.05      -2.82       3.16      -8.83       2.06

    3   3.2  0.5  0.5       0.70       0.01      -0.68     311.14       2.69       0.14       2.57       1.84       1.79       1.03
                            0.19       0.25    -115.49      -1.82      -1.37      -9.84    -441.73       0.44       7.78     452.41

    4   4.2  0.5  0.5       7.03     579.75       8.25      -0.00      -2.54     374.21     -12.81    -336.24     880.55      -2.36
                         1025.00       0.53      86.63       0.00    -658.44     -11.63      57.07      78.28      40.71      53.56

    5   5.2  0.5  0.5     851.76      17.33       5.24       0.00     548.99      21.45      -4.62    -515.17    -176.48       6.05
                           26.28    -852.70    -268.90      -0.00     -27.49     543.59    -184.25    -192.83     509.55    -179.28

    6   6.2  0.5  0.5     272.74     -54.03      16.63      -0.00     176.51     -31.76     -10.31    -132.20    -142.60      12.39
                          -95.84    -270.10     848.55       0.00      59.12     185.53     543.23     -69.79     165.75     540.04

    7   7.2  0.5  0.5      10.13       4.47    -894.27      -0.00       7.34      14.57     574.11      -9.75      -1.04    -573.84
                           10.27      -8.48      15.00      -0.01      -6.68       5.50       9.56       0.13       7.56       6.42

    8   8.2  0.5  0.5       9.94    -852.82       1.21      -0.00      16.65    -546.28      10.20    -222.14     608.88      -7.73
                           77.95       5.19      -1.36      -0.00     -51.83      -4.36      -0.68   -1072.31    -398.50       6.92

    9   9.2  0.5  0.5       0.00      -1.32    -334.93      28.03       1.47      15.37     950.63      -0.68      -5.18    -475.78
                           -0.00      -0.56       5.44    1725.01      -0.01       1.91      15.41      -0.70       1.75       6.94

   10  10.2  0.5  0.5       1.32      -0.00      -5.44   -1725.01       3.78       0.40      15.45      -1.00      -1.59      -6.05
                            0.56       0.00    -334.92      28.04      -3.01     -19.14    -948.98      -0.81      -7.27    -477.54

   11  11.2  0.5  0.5     334.93       5.44       0.00       6.81     948.71      33.30      -2.11    -448.07    -165.40       2.48
                           -5.44     334.92       0.00       2.88      33.39    -950.03      19.05     164.78    -446.28       6.53

   12  12.2  0.5  0.5     -28.03    1725.01      -6.81      -0.00     -32.01     911.20     -14.68       0.67      -1.81       0.01
                        -1725.01     -28.04      -2.88       0.00     910.63      31.93      -3.49      -1.66      -0.61       0.01

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.73       2.64      -0.01    -311.06       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.18    -115.45       0.45      -7.13       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -115.48      -1.20      -0.20       1.88       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -85.78      10.88     445.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          272.17       8.29       8.95       0.02       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -847.73       2.01     -41.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.42    -894.36       5.82      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.10       1.52     930.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   65255.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     334.97      -1.31       2.99       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   65255.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -334.97      -0.00      -0.58      -6.77       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   65255.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.31       0.58      -0.00   -1725.22       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   65484.29       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.99       6.77    1725.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   63313.95       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00   -1338.42      21.72    -545.72    1332.18     -13.71

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   63313.94       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    1338.42       0.00      -4.43    1332.08     545.50     -10.43

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   63313.99       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -21.72       4.43      -0.00     -20.78     -13.36      -2.44

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64213.52       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     545.72   -1332.08      20.78       0.00    1339.84     -18.87

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64213.51       0.00
                           -0.00      -0.00      -0.00      -0.00   -1332.18    -545.50      13.36   -1339.84      -0.00       9.07

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64213.55
                           -0.00      -0.00      -0.00      -0.00      13.71      10.43       2.44      18.87      -9.07       0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -1.81       7.32     398.67     -10.37     -31.87   -2601.51

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       5.85      26.79    1613.65       2.61       7.09     642.75

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       7.80      38.25    2357.26      -0.00       0.00      -0.01

   34   1.2  1.5  0.5       0.85       2.18     547.74     -18.48      -0.00     -12.44    -772.27       0.01       8.59     830.75
                            0.01       1.74     -19.27    -525.75      -0.00      -3.00     -27.09       1.65      -4.46     -27.75

   35   2.2  1.5  0.5       8.88       0.23      19.23     526.08      12.44      -0.00     -27.13     -13.90      -2.85      26.30
                           -1.11      11.05     548.50     -18.43       3.00       0.00     772.37       7.24      -3.11     830.70

   36   3.2  1.5  0.5     548.85       8.92      -1.22      -8.48     772.27      27.13       0.00    -779.64    -287.85       2.54
                           -8.90     547.90     -11.00       2.02      27.09    -772.37      -0.00     287.79    -779.76      -5.27

   37   4.2  1.5  0.5      -0.40      -0.58    -258.69       0.39      -0.01      13.90     779.64      -0.00      -7.88    -725.77
                            0.40       0.47     -95.13       0.96      -1.65      -7.24    -287.79      -0.00      -3.46    -271.80

   38   5.2  1.5  0.5      -2.99      -0.92     -95.50      -1.05      -8.59       2.85     287.85       7.88       0.00    -267.81
                           -1.01       4.20     257.66       0.35       4.46       3.11     779.76       3.46       0.00     724.32

   39   6.2  1.5  0.5    -274.69      -3.49       1.43       0.01    -830.75     -26.30      -2.54     725.77     267.81       0.00
                           -4.01     275.71      -3.77      -0.01      27.75    -830.70       5.27     271.80    -724.32      -0.00

   40   7.2  1.5  0.5      -4.18     305.74      -1.02      -0.02     -29.97     921.43     -15.41    -150.90     402.27      -3.66
                          229.22       2.93       0.97       0.00    -691.48     -21.82       4.43    1005.30     373.49      -5.73

   41   8.2  1.5  0.5      -1.18      88.42      -0.23      -0.00      -8.58     266.34      -4.63     514.13   -1394.60      14.84
                         -220.37      -3.84      -0.46      -0.00     664.82      24.08      -2.89    1046.02     386.88      -7.95

   42   9.2  1.5  0.5       4.60    -282.71       1.12       0.00      47.78   -1360.13      21.91      -0.00       0.00      -0.00
                          283.17       4.61       0.47       0.00   -1360.30     -47.70       5.28      -0.00      -0.00      -0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.72   -1096.08       4.24      -3.45      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1097.34     -20.59       1.96     -17.09      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.74       3.97      -0.02   -1052.34      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          198.63    -514.36       2.00       0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -512.11    -199.38      -0.13       0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.31       3.86      -1.04       1.95      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.92      -0.26    -152.68      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.29      -2.21    -617.76      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.99      -2.23    -565.97       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5       1.47       3.78     948.71     -32.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -3.01      33.39     910.63      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5      15.37       0.40      33.30     911.20       0.00       0.00       0.00       0.00       0.00       0.00
                            1.91     -19.14    -950.03      31.93      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5     950.63      15.45      -2.11     -14.68       0.00       0.00       0.00       0.00       0.00       0.00
                           15.41    -948.98      19.05      -3.49      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5      -0.68      -1.00    -448.07       0.67       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.70      -0.81     164.78      -1.66      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5      -5.18      -1.59    -165.40      -1.81       0.00       0.00       0.00       0.00       0.00       0.00
                            1.75      -7.27    -446.28      -0.61      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5    -475.78      -6.05       2.48       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            6.94    -477.54       6.53       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5      -7.24     529.56      -1.77      -0.03       0.00       0.00       0.00       0.00       0.00       0.00
                         -397.03      -5.08      -1.68      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5      -2.04     153.15      -0.40      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          381.70       6.66       0.79       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5       7.97    -489.66       1.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -490.46      -7.98      -0.81      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5      -2.70      -0.68       4.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.67      -8.16      17.98       3.42     -11.57       0.18       1.60     -12.26       1.10     144.63

    2   2.2  0.5  0.5      -1.70      -0.45       4.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -376.78     362.29    -783.28     -14.81     508.91      -8.21    -183.40     487.72      -5.05       4.44

    3   3.2  0.5  0.5    -502.24    -145.17     783.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.91      -2.55       4.59     510.07      14.91      -1.93    -489.00    -183.76       3.61      -0.53

    4   4.2  0.5  0.5     -28.05     103.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.10       9.57       0.01      64.52      -0.19     332.15      59.69      42.66    1187.05      20.08

    5   5.2  0.5  0.5      96.84    -333.35      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.08       3.48       0.00    -202.51      -9.84       7.16    -187.77     -69.06      16.02    1217.56

    6   6.2  0.5  0.5    -300.34    1038.52       0.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.90      14.10      -0.00     631.14       9.82     -32.33     582.66     225.54    -119.82     388.43

    7   7.2  0.5  0.5      -3.61      18.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -790.32    -821.78      -0.32     -12.13     662.92      -8.99     239.84    -617.48      19.74      10.97

    8   8.2  0.5  0.5       1.92      -2.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.14      -1.50       0.00       1.10      12.75     689.88      -2.25      -8.51    -574.96      -3.95

    9   9.2  0.5  0.5      -7.24      -2.04       7.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -397.03     381.70    -490.46      20.72   -1097.34      17.74    -198.63     512.11      -5.31       0.92

   10  10.2  0.5  0.5     529.56     153.15    -489.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.08       6.66      -7.98    1096.08      20.59      -3.97     514.36     199.38      -3.86       0.26

   11  11.2  0.5  0.5      -1.77      -0.40       1.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.68       0.79      -0.81      -4.24      -1.96       0.02      -2.00       0.13       1.04     152.68

   12  12.2  0.5  0.5      -0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01       3.45      17.09    1052.34      -0.02      -0.02      -1.95       0.00

   13   1.2  0.5 -0.5       0.00       0.00       0.00    -254.99      -8.85       6.83    -244.99     -90.37       7.77      -1.56
                            0.00       0.00       0.00      -8.94     254.33      -5.61      90.23    -244.37       4.10       4.43

   14   2.2  0.5 -0.5       0.00       0.00       0.00      -6.68      -4.34    -254.59      -6.42      -5.08    -260.51      -0.98
                            0.00       0.00       0.00      -0.21       5.80      -1.63       1.83      -5.10       1.19    -217.53

   15   3.2  0.5 -0.5       0.00       0.00       0.00       1.55       0.08       1.48       1.06       1.03       0.60    -289.97
                            0.00       0.00       0.00      -0.79      -5.68    -255.03       0.25       4.49     261.20       0.52

   16   4.2  0.5 -0.5       0.00       0.00       0.00      -1.47     216.05      -7.40    -194.13     508.39      -1.36     -16.20
                            0.00       0.00       0.00    -380.15      -6.72      32.95      45.20      23.50      30.93       5.25

   17   5.2  0.5 -0.5       0.00       0.00       0.00     316.96      12.38      -2.67    -297.43    -101.89       3.49      55.91
                            0.00       0.00       0.00     -15.87     313.84    -106.38    -111.33     294.19    -103.51       2.93

   18   6.2  0.5 -0.5       0.00       0.00       0.00     101.91     -18.34      -5.95     -76.33     -82.33       7.15    -173.40
                            0.00       0.00       0.00      34.14     107.12     313.63     -40.30      95.69     311.79       7.45

   19   7.2  0.5 -0.5       0.00       0.00       0.00       4.24       8.41     331.46      -5.63      -0.60    -331.30      -2.08
                            0.00       0.00       0.00      -3.85       3.17       5.52       0.08       4.36       3.70    -456.29

   20   8.2  0.5 -0.5       0.00       0.00       0.00       9.62    -315.40       5.89    -128.26     351.54      -4.46       1.11
                            0.00       0.00       0.00     -29.92      -2.52      -0.39    -619.10    -230.07       4.00      -0.66

   21   9.2  0.5 -0.5       0.00       0.00       0.00       0.85       8.88     548.85      -0.40      -2.99    -274.69      -4.18
                            0.00       0.00       0.00      -0.01       1.11       8.90      -0.40       1.01       4.01    -229.22

   22  10.2  0.5 -0.5       0.00       0.00       0.00       2.18       0.23       8.92      -0.58      -0.92      -3.49     305.74
                            0.00       0.00       0.00      -1.74     -11.05    -547.90      -0.47      -4.20    -275.71      -2.93

   23  11.2  0.5 -0.5       0.00       0.00       0.00     547.74      19.23      -1.22    -258.69     -95.50       1.43      -1.02
                            0.00       0.00       0.00      19.27    -548.50      11.00      95.13    -257.66       3.77      -0.97

   24  12.2  0.5 -0.5       0.00       0.00       0.00     -18.48     526.08      -8.48       0.39      -1.05       0.01      -0.02
                            0.00       0.00       0.00     525.75      18.43      -2.02      -0.96      -0.35       0.01      -0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00      -0.00      12.44     772.27      -0.01      -8.59    -830.75     -29.97
                            1.81      -5.85      -7.80       0.00      -3.00     -27.09       1.65      -4.46     -27.75     691.48

   26   2.2  1.5  1.5       0.00       0.00       0.00     -12.44      -0.00      27.13      13.90       2.85     -26.30     921.43
                           -7.32     -26.79     -38.25       3.00      -0.00     772.37       7.24      -3.11     830.70      21.82

   27   3.2  1.5  1.5       0.00       0.00       0.00    -772.27     -27.13       0.00     779.64     287.85      -2.54     -15.41
                         -398.67   -1613.65   -2357.26      27.09    -772.37       0.00     287.79    -779.76      -5.27      -4.43

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.01     -13.90    -779.64      -0.00       7.88     725.77    -150.90
                           10.37      -2.61       0.00      -1.65      -7.24    -287.79       0.00      -3.46    -271.80   -1005.30

   29   5.2  1.5  1.5       0.00       0.00       0.00       8.59      -2.85    -287.85      -7.88       0.00     267.81     402.27
                           31.87      -7.09      -0.00       4.46       3.11     779.76       3.46      -0.00     724.32    -373.49

   30   6.2  1.5  1.5       0.00       0.00       0.00     830.75      26.30       2.54    -725.77    -267.81       0.00      -3.66
                         2601.51    -642.75       0.01      27.75    -830.70       5.27     271.80    -724.32       0.00       5.73

   31   7.2  1.5  1.5   64213.51       0.00       0.00      29.97    -921.43      15.41     150.90    -402.27       3.66       0.00
                           -0.00       4.28      -0.00    -691.48     -21.82       4.43    1005.30     373.49      -5.73       0.00

   32   8.2  1.5  1.5       0.00   64213.55       0.00       8.58    -266.34       4.63    -514.13    1394.60     -14.84       3.04
                           -4.28      -0.00       0.00     664.82      24.08      -2.89    1046.02     386.88      -7.95      -0.31

   33   9.2  1.5  1.5       0.00       0.00   65527.72     -47.78    1360.13     -21.91       0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00   -1360.30     -47.70       5.28      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5      29.97       8.58     -47.78   63313.95       0.00       0.00       0.00       0.00       0.00       0.00
                          691.48    -664.82    1360.30      -0.00    -446.14       7.24    -181.91     444.06      -4.57       0.60

   35   2.2  1.5  0.5    -921.43    -266.34    1360.13       0.00   63313.94       0.00       0.00       0.00       0.00       0.00
                           21.82     -24.08      47.70     446.14       0.00      -1.48     444.03     181.83      -3.48      -2.44

   36   3.2  1.5  0.5      15.41       4.63     -21.91       0.00       0.00   63313.99       0.00       0.00       0.00       0.00
                           -4.43       2.89      -5.28      -7.24       1.48      -0.00      -6.93      -4.45      -0.81    -132.89

   37   4.2  1.5  0.5     150.90    -514.13       0.00       0.00       0.00       0.00   64213.52       0.00       0.00       0.00
                        -1005.30   -1046.02       0.00     181.91    -444.03       6.93       0.00     446.61      -6.29       3.46

   38   5.2  1.5  0.5    -402.27    1394.60      -0.00       0.00       0.00       0.00       0.00   64213.51       0.00       0.00
                         -373.49    -386.88       0.00    -444.06    -181.83       4.45    -446.61      -0.00       3.02      10.62

   39   6.2  1.5  0.5       3.66     -14.84       0.00       0.00       0.00       0.00       0.00       0.00   64213.55       0.00
                            5.73       7.95       0.00       4.57       3.48       0.81       6.29      -3.02       0.00     867.17

   40   7.2  1.5  0.5       0.00       3.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64213.51
                           -0.00       0.31       0.00      -0.60       2.44     132.89      -3.46     -10.62    -867.17      -0.00

   41   8.2  1.5  0.5      -3.04      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.31       0.00       0.00       1.95       8.93     537.88       0.87       2.36     214.25      -1.43

   42   9.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       2.60      12.75     785.75      -0.00       0.00      -0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00      -0.00     -14.37    -891.74       0.01       9.92     959.27      34.60
                           -0.00      -0.00      -0.00      -0.00      -3.46     -31.28       1.90      -5.15     -32.05     798.45

   44   2.2  1.5 -0.5       0.00       0.00       0.00      14.37      -0.00     -31.33     -16.05      -3.29      30.36   -1063.98
                           -0.00      -0.00      -0.00       3.46       0.00     891.86       8.36      -3.59     959.22      25.19

   45   3.2  1.5 -0.5       0.00       0.00       0.00     891.74      31.33       0.00    -900.25    -332.38       2.93      17.79
                           -0.00      -0.00      -0.00      31.28    -891.86      -0.00     332.31    -900.39      -6.08      -5.12

   46   4.2  1.5 -0.5       0.00       0.00       0.00      -0.01      16.05     900.25      -0.00      -9.10    -838.04     174.24
                           -0.00      -0.00      -0.00      -1.90      -8.36    -332.31      -0.00      -3.99    -313.85   -1160.82

   47   5.2  1.5 -0.5       0.00       0.00       0.00      -9.92       3.29     332.38       9.10       0.00    -309.24    -464.50
                           -0.00      -0.00      -0.00       5.15       3.59     900.39       3.99       0.00     836.37    -431.26

   48   6.2  1.5 -0.5       0.00       0.00       0.00    -959.27     -30.36      -2.93     838.04     309.24       0.00       4.23
                           -0.00      -0.00      -0.00      32.05    -959.22       6.08     313.85    -836.37      -0.00       6.61

   49   7.2  1.5 -0.5       0.00       0.00       0.00     -34.60    1063.98     -17.79    -174.24     464.50      -4.23       0.00
                           -0.00      -0.00      -0.00    -798.45     -25.19       5.12    1160.82     431.26      -6.61      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00      -9.91     307.54      -5.35     593.66   -1610.35      17.13      -3.51
                           -0.00      -0.00      -0.00     767.66      27.81      -3.34    1207.84     446.73      -9.19      -0.35

   51   9.2  1.5 -0.5       0.00       0.00       0.00      55.17   -1570.55      25.30      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00   -1570.74     -55.08       6.09      -0.00      -0.00      -0.00      -0.00

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

    1   1.2  0.5  0.5       0.00       0.00    -254.99      -8.85       6.83    -244.99     -90.37       7.77      -1.56      -0.39
                          585.90     904.41       8.94    -254.33       5.61     -90.23     244.37      -4.10      -4.43       4.71

    2   2.2  0.5  0.5       0.00       0.00      -6.68      -4.34    -254.59      -6.42      -5.08    -260.51      -0.98      -0.26
                           13.24      20.73       0.21      -5.80       1.63      -1.83       5.10      -1.19     217.53    -209.17

    3   3.2  0.5  0.5       0.00       0.00       1.55       0.08       1.48       1.06       1.03       0.60    -289.97     -83.81
                           -3.32      -5.47       0.79       5.68     255.03      -0.25      -4.49    -261.20      -0.52       1.47

    4   4.2  0.5  0.5       0.00       0.00      -1.47     216.05      -7.40    -194.13     508.39      -1.36     -16.20      59.81
                           -6.96       0.00     380.15       6.72     -32.95     -45.20     -23.50     -30.93      -5.25      -5.53

    5   5.2  0.5  0.5       0.00       0.00     316.96      12.38      -2.67    -297.43    -101.89       3.49      55.91    -192.46
                         -301.26       0.63      15.87    -313.84     106.38     111.33    -294.19     103.51      -2.93      -2.01

    6   6.2  0.5  0.5       0.00       0.00     101.91     -18.34      -5.95     -76.33     -82.33       7.15    -173.40     599.59
                          -96.30       0.20     -34.14    -107.12    -313.63      40.30     -95.69    -311.79      -7.45      -8.14

    7   7.2  0.5  0.5       0.00       0.00       4.24       8.41     331.46      -5.63      -0.60    -331.30      -2.08      10.88
                           -2.84       0.01       3.85      -3.17      -5.52      -0.08      -4.36      -3.70     456.29     474.45

    8   8.2  0.5  0.5       0.00       0.00       9.62    -315.40       5.89    -128.26     351.54      -4.46       1.11      -1.18
                            1.92      -0.01      29.92       2.52       0.39     619.10     230.07      -4.00       0.66       0.87

    9   9.2  0.5  0.5       0.00       0.00       0.85       8.88     548.85      -0.40      -2.99    -274.69      -4.18      -1.18
                           -1.29      -0.99       0.01      -1.11      -8.90       0.40      -1.01      -4.01     229.22    -220.37

   10  10.2  0.5  0.5       0.00       0.00       2.18       0.23       8.92      -0.58      -0.92      -3.49     305.74      88.42
                            2.21       2.23       1.74      11.05     547.90       0.47       4.20     275.71       2.93      -3.84

   11  11.2  0.5  0.5       0.00       0.00     547.74      19.23      -1.22    -258.69     -95.50       1.43      -1.02      -0.23
                          617.76     565.97     -19.27     548.50     -11.00     -95.13     257.66      -3.77       0.97      -0.46

   12  12.2  0.5  0.5       0.00       0.00     -18.48     526.08      -8.48       0.39      -1.05       0.01      -0.02      -0.00
                            0.00      -0.00    -525.75     -18.43       2.02       0.96       0.35      -0.01       0.00      -0.00

   13   1.2  0.5 -0.5      -0.39       2.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.71      10.38       3.42     -11.57       0.18       1.60     -12.26       1.10     144.63     585.90

   14   2.2  0.5 -0.5      -0.26       2.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          209.17    -452.23     -14.81     508.91      -8.21    -183.40     487.72      -5.05       4.44      13.24

   15   3.2  0.5 -0.5     -83.81     452.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.47       2.65     510.07      14.91      -1.93    -489.00    -183.76       3.61      -0.53      -3.32

   16   4.2  0.5 -0.5      59.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.53       0.00      64.52      -0.19     332.15      59.69      42.66    1187.05      20.08      -6.96

   17   5.2  0.5 -0.5    -192.46      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.01       0.00    -202.51      -9.84       7.16    -187.77     -69.06      16.02    1217.56    -301.26

   18   6.2  0.5 -0.5     599.59       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.14      -0.00     631.14       9.82     -32.33     582.66     225.54    -119.82     388.43     -96.30

   19   7.2  0.5 -0.5      10.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -474.45      -0.18     -12.13     662.92      -8.99     239.84    -617.48      19.74      10.97      -2.84

   20   8.2  0.5 -0.5      -1.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.87       0.00       1.10      12.75     689.88      -2.25      -8.51    -574.96      -3.95       1.92

   21   9.2  0.5 -0.5      -1.18       4.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          220.37    -283.17      20.72   -1097.34      17.74    -198.63     512.11      -5.31       0.92      -1.29

   22  10.2  0.5 -0.5      88.42    -282.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.84      -4.61    1096.08      20.59      -3.97     514.36     199.38      -3.86       0.26       2.21

   23  11.2  0.5 -0.5      -0.23       1.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.46      -0.47      -4.24      -1.96       0.02      -2.00       0.13       1.04     152.68     617.76

   24  12.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       3.45      17.09    1052.34      -0.02      -0.02      -1.95       0.00       0.00

   25   1.2  1.5  1.5      -8.58      47.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -664.82    1360.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5     266.34   -1360.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -24.08      47.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5      -4.63      21.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.89      -5.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5     514.13      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1046.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5   -1394.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -386.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5      14.84      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5      -3.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00      -0.00      14.37     891.74      -0.01      -9.92    -959.27     -34.60      -9.91
                           -1.95      -2.60       0.00      -3.46     -31.28       1.90      -5.15     -32.05     798.45    -767.66

   35   2.2  1.5  0.5       0.00       0.00     -14.37      -0.00      31.33      16.05       3.29     -30.36    1063.98     307.54
                           -8.93     -12.75       3.46      -0.00     891.86       8.36      -3.59     959.22      25.19     -27.81

   36   3.2  1.5  0.5       0.00       0.00    -891.74     -31.33       0.00     900.25     332.38      -2.93     -17.79      -5.35
                         -537.88    -785.75      31.28    -891.86       0.00     332.31    -900.39      -6.08      -5.12       3.34

   37   4.2  1.5  0.5       0.00       0.00       0.01     -16.05    -900.25      -0.00       9.10     838.04    -174.24     593.66
                           -0.87       0.00      -1.90      -8.36    -332.31       0.00      -3.99    -313.85   -1160.82   -1207.84

   38   5.2  1.5  0.5       0.00       0.00       9.92      -3.29    -332.38      -9.10       0.00     309.24     464.50   -1610.35
                           -2.36      -0.00       5.15       3.59     900.39       3.99      -0.00     836.37    -431.26    -446.73

   39   6.2  1.5  0.5       0.00       0.00     959.27      30.36       2.93    -838.04    -309.24       0.00      -4.23      17.13
                         -214.25       0.00      32.05    -959.22       6.08     313.85    -836.37       0.00       6.61       9.19

   40   7.2  1.5  0.5       0.00       0.00      34.60   -1063.98      17.79     174.24    -464.50       4.23       0.00      -3.51
                            1.43      -0.00    -798.45     -25.19       5.12    1160.82     431.26      -6.61       0.00       0.35

   41   8.2  1.5  0.5   64213.55       0.00       9.91    -307.54       5.35    -593.66    1610.35     -17.13       3.51      -0.00
                           -0.00       0.00     767.66      27.81      -3.34    1207.84     446.73      -9.19      -0.35      -0.00

   42   9.2  1.5  0.5       0.00   65527.72     -55.17    1570.55     -25.30       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00   -1570.74     -55.08       6.09      -0.00      -0.00      -0.00      -0.00      -0.00

   43   1.2  1.5 -0.5       9.91     -55.17   63313.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -767.66    1570.74       0.00     446.14      -7.24     181.91    -444.06       4.57      -0.60       1.95

   44   2.2  1.5 -0.5    -307.54    1570.55       0.00   63313.94       0.00       0.00       0.00       0.00       0.00       0.00
                          -27.81      55.08    -446.14      -0.00       1.48    -444.03    -181.83       3.48       2.44       8.93

   45   3.2  1.5 -0.5       5.35     -25.30       0.00       0.00   63313.99       0.00       0.00       0.00       0.00       0.00
                            3.34      -6.09       7.24      -1.48       0.00       6.93       4.45       0.81     132.89     537.88

   46   4.2  1.5 -0.5    -593.66       0.00       0.00       0.00       0.00   64213.52       0.00       0.00       0.00       0.00
                        -1207.84       0.00    -181.91     444.03      -6.93      -0.00    -446.61       6.29      -3.46       0.87

   47   5.2  1.5 -0.5    1610.35      -0.00       0.00       0.00       0.00       0.00   64213.51       0.00       0.00       0.00
                         -446.73       0.00     444.06     181.83      -4.45     446.61       0.00      -3.02     -10.62       2.36

   48   6.2  1.5 -0.5     -17.13       0.00       0.00       0.00       0.00       0.00       0.00   64213.55       0.00       0.00
                            9.19       0.00      -4.57      -3.48      -0.81      -6.29       3.02      -0.00    -867.17     214.25

   49   7.2  1.5 -0.5       3.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64213.51       0.00
                            0.35       0.00       0.60      -2.44    -132.89       3.46      10.62     867.17       0.00      -1.43

   50   8.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64213.55
                            0.00       0.00      -1.95      -8.93    -537.88      -0.87      -2.36    -214.25       1.43       0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -2.60     -12.75    -785.75       0.00      -0.00       0.00      -0.00       0.00

   52   1.2  1.5 -1.5       0.00       0.00      -0.00     -12.44    -772.27       0.01       8.59     830.75      29.97       8.58
                           -0.00      -0.00      -0.00      -3.00     -27.09       1.65      -4.46     -27.75     691.48    -664.82

   53   2.2  1.5 -1.5       0.00       0.00      12.44      -0.00     -27.13     -13.90      -2.85      26.30    -921.43    -266.34
                           -0.00      -0.00       3.00       0.00     772.37       7.24      -3.11     830.70      21.82     -24.08

   54   3.2  1.5 -1.5       0.00       0.00     772.27      27.13       0.00    -779.64    -287.85       2.54      15.41       4.63
                           -0.00      -0.00      27.09    -772.37      -0.00     287.79    -779.76      -5.27      -4.43       2.89

   55   4.2  1.5 -1.5       0.00       0.00      -0.01      13.90     779.64      -0.00      -7.88    -725.77     150.90    -514.13
                           -0.00      -0.00      -1.65      -7.24    -287.79      -0.00      -3.46    -271.80   -1005.30   -1046.02

   56   5.2  1.5 -1.5       0.00       0.00      -8.59       2.85     287.85       7.88       0.00    -267.81    -402.27    1394.60
                           -0.00      -0.00       4.46       3.11     779.76       3.46       0.00     724.32    -373.49    -386.88

   57   6.2  1.5 -1.5       0.00       0.00    -830.75     -26.30      -2.54     725.77     267.81       0.00       3.66     -14.84
                           -0.00      -0.00      27.75    -830.70       5.27     271.80    -724.32      -0.00       5.73       7.95

   58   7.2  1.5 -1.5       0.00       0.00     -29.97     921.43     -15.41    -150.90     402.27      -3.66       0.00       3.04
                           -0.00      -0.00    -691.48     -21.82       4.43    1005.30     373.49      -5.73      -0.00       0.31

   59   8.2  1.5 -1.5       0.00       0.00      -8.58     266.34      -4.63     514.13   -1394.60      14.84      -3.04      -0.00
                           -0.00      -0.00     664.82      24.08      -2.89    1046.02     386.88      -7.95      -0.31       0.00

   60   9.2  1.5 -1.5       0.00       0.00      47.78   -1360.13      21.91      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00   -1360.30     -47.70       5.28      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5       2.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       2.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          452.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5     452.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5       4.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          283.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5    -282.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5       1.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00    -441.66     -15.33      11.84    -424.33    -156.52      13.46      -2.70      -0.68       4.63
                          904.41      15.49    -440.52       9.71    -156.29     423.26      -7.10      -7.67       8.16     -17.98

   14   2.2  0.5 -0.5       0.00     -11.58      -7.51    -440.96     -11.11      -8.80    -451.22      -1.70      -0.45       4.70
                           20.73       0.37     -10.05       2.82      -3.16       8.83      -2.06     376.78    -362.29     783.28

   15   3.2  0.5 -0.5       0.00       2.69       0.14       2.57       1.84       1.79       1.03    -502.24    -145.17     783.41
                           -5.47       1.37       9.84     441.73      -0.44      -7.78    -452.41      -0.91       2.55      -4.59

   16   4.2  0.5 -0.5       0.00      -2.54     374.21     -12.81    -336.24     880.55      -2.36     -28.05     103.60       0.00
                            0.00     658.44      11.63     -57.07     -78.28     -40.71     -53.56      -9.10      -9.57      -0.01

   17   5.2  0.5 -0.5       0.00     548.99      21.45      -4.62    -515.17    -176.48       6.05      96.84    -333.35      -0.03
                            0.63      27.49    -543.59     184.25     192.83    -509.55     179.28      -5.08      -3.48      -0.00

   18   6.2  0.5 -0.5       0.00     176.51     -31.76     -10.31    -132.20    -142.60      12.39    -300.34    1038.52       0.09
                            0.20     -59.12    -185.53    -543.23      69.79    -165.75    -540.04     -12.90     -14.10       0.00

   19   7.2  0.5 -0.5       0.00       7.34      14.57     574.11      -9.75      -1.04    -573.84      -3.61      18.85       0.00
                            0.01       6.68      -5.50      -9.56      -0.13      -7.56      -6.42     790.32     821.78       0.32

   20   8.2  0.5 -0.5       0.00      16.65    -546.28      10.20    -222.14     608.88      -7.73       1.92      -2.05       0.00
                           -0.01      51.83       4.36       0.68    1072.31     398.50      -6.92       1.14       1.50      -0.00

   21   9.2  0.5 -0.5       0.00       1.47      15.37     950.63      -0.68      -5.18    -475.78      -7.24      -2.04       7.97
                           -0.99       0.01      -1.91     -15.41       0.70      -1.75      -6.94     397.03    -381.70     490.46

   22  10.2  0.5 -0.5       0.00       3.78       0.40      15.45      -1.00      -1.59      -6.05     529.56     153.15    -489.66
                            2.23       3.01      19.14     948.98       0.81       7.27     477.54       5.08      -6.66       7.98

   23  11.2  0.5 -0.5       0.00     948.71      33.30      -2.11    -448.07    -165.40       2.48      -1.77      -0.40       1.94
                          565.97     -33.39     950.03     -19.05    -164.78     446.28      -6.53       1.68      -0.79       0.81

   24  12.2  0.5 -0.5       0.00     -32.01     911.20     -14.68       0.67      -1.81       0.01      -0.03      -0.00       0.00
                           -0.00    -910.63     -31.93       3.49       1.66       0.61      -0.01       0.00      -0.00       0.01

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

   34   1.2  1.5  0.5      55.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1570.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.2  1.5  0.5   -1570.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           55.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5      25.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00      -0.00      12.44     772.27      -0.01      -8.59    -830.75     -29.97      -8.58      47.78
                            2.60       0.00      -3.00     -27.09       1.65      -4.46     -27.75     691.48    -664.82    1360.30

   44   2.2  1.5 -0.5       0.00     -12.44      -0.00      27.13      13.90       2.85     -26.30     921.43     266.34   -1360.13
                           12.75       3.00      -0.00     772.37       7.24      -3.11     830.70      21.82     -24.08      47.70

   45   3.2  1.5 -0.5       0.00    -772.27     -27.13       0.00     779.64     287.85      -2.54     -15.41      -4.63      21.91
                          785.75      27.09    -772.37       0.00     287.79    -779.76      -5.27      -4.43       2.89      -5.28

   46   4.2  1.5 -0.5       0.00       0.01     -13.90    -779.64      -0.00       7.88     725.77    -150.90     514.13      -0.00
                           -0.00      -1.65      -7.24    -287.79       0.00      -3.46    -271.80   -1005.30   -1046.02       0.00

   47   5.2  1.5 -0.5       0.00       8.59      -2.85    -287.85      -7.88       0.00     267.81     402.27   -1394.60       0.00
                            0.00       4.46       3.11     779.76       3.46      -0.00     724.32    -373.49    -386.88       0.00

   48   6.2  1.5 -0.5       0.00     830.75      26.30       2.54    -725.77    -267.81       0.00      -3.66      14.84      -0.00
                           -0.00      27.75    -830.70       5.27     271.80    -724.32       0.00       5.73       7.95       0.00

   49   7.2  1.5 -0.5       0.00      29.97    -921.43      15.41     150.90    -402.27       3.66       0.00      -3.04      -0.00
                            0.00    -691.48     -21.82       4.43    1005.30     373.49      -5.73       0.00       0.31       0.00

   50   8.2  1.5 -0.5       0.00       8.58    -266.34       4.63    -514.13    1394.60     -14.84       3.04      -0.00       0.00
                           -0.00     664.82      24.08      -2.89    1046.02     386.88      -7.95      -0.31      -0.00       0.00

   51   9.2  1.5 -0.5   65527.72     -47.78    1360.13     -21.91       0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00   -1360.30     -47.70       5.28      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   52   1.2  1.5 -1.5     -47.78   63313.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1360.30       0.00    1338.42     -21.72     545.72   -1332.18      13.71      -1.81       5.85       7.80

   53   2.2  1.5 -1.5    1360.13       0.00   63313.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           47.70   -1338.42      -0.00       4.43   -1332.08    -545.50      10.43       7.32      26.79      38.25

   54   3.2  1.5 -1.5     -21.91       0.00       0.00   63313.99       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.28      21.72      -4.43       0.00      20.78      13.36       2.44     398.67    1613.65    2357.26

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00   64213.52       0.00       0.00       0.00       0.00       0.00
                            0.00    -545.72    1332.08     -20.78      -0.00   -1339.84      18.87     -10.37       2.61      -0.00

   56   5.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00   64213.51       0.00       0.00       0.00       0.00
                            0.00    1332.18     545.50     -13.36    1339.84       0.00      -9.07     -31.87       7.09       0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   64213.55       0.00       0.00       0.00
                            0.00     -13.71     -10.43      -2.44     -18.87       9.07      -0.00   -2601.51     642.75      -0.01

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64213.51       0.00       0.00
                            0.00       1.81      -7.32    -398.67      10.37      31.87    2601.51       0.00      -4.28       0.00

   59   8.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64213.55       0.00
                            0.00      -5.85     -26.79   -1613.65      -2.61      -7.09    -642.75       4.28       0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   65527.72
                           -0.00      -7.80     -38.25   -2357.26       0.00      -0.00       0.01      -0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -295.53541215    -0.01192314    -2616.83      0.00000000        0.00      0.0000
     2  -295.53541215    -0.01192314    -2616.83      0.00000000        0.00      0.0000
     3  -295.53541206    -0.01192305    -2616.81      0.00000010        0.02      0.0000
     4  -295.53541206    -0.01192305    -2616.81      0.00000010        0.02      0.0000
     5  -295.50016730     0.02332171     5118.52      0.03524486     7735.35      0.9591
     6  -295.50016730     0.02332171     5118.52      0.03524486     7735.35      0.9591
     7  -295.24682720     0.27666181    60720.25      0.28858495    63337.08      7.8528
     8  -295.24682720     0.27666181    60720.25      0.28858495    63337.08      7.8528
     9  -295.24682402     0.27666499    60720.95      0.28858813    63337.77      7.8529
    10  -295.24682402     0.27666499    60720.95      0.28858813    63337.77      7.8529
    11  -295.24681885     0.27667016    60722.08      0.28859330    63338.91      7.8530
    12  -295.24681885     0.27667016    60722.08      0.28859330    63338.91      7.8530
    13  -295.24623839     0.27725062    60849.48      0.28917376    63466.30      7.8688
    14  -295.24623839     0.27725062    60849.48      0.28917376    63466.30      7.8688
    15  -295.24623708     0.27725193    60849.77      0.28917508    63466.59      7.8689
    16  -295.24623708     0.27725193    60849.77      0.28917508    63466.59      7.8689
    17  -295.24380543     0.27968358    61383.45      0.29160673    64000.28      7.9350
    18  -295.24380543     0.27968358    61383.45      0.29160673    64000.28      7.9350
    19  -295.24312196     0.28036705    61533.46      0.29229020    64150.28      7.9536
    20  -295.24312196     0.28036705    61533.46      0.29229020    64150.28      7.9536
    21  -295.24312163     0.28036737    61533.53      0.29229052    64150.35      7.9536
    22  -295.24312163     0.28036737    61533.53      0.29229052    64150.35      7.9536
    23  -295.24312145     0.28036756    61533.57      0.29229070    64150.39      7.9536
    24  -295.24312145     0.28036756    61533.57      0.29229070    64150.39      7.9536
    25  -295.24312144     0.28036757    61533.57      0.29229071    64150.40      7.9536
    26  -295.24312144     0.28036757    61533.57      0.29229071    64150.40      7.9536
    27  -295.24261012     0.28087889    61645.79      0.29280204    64262.62      7.9675
    28  -295.24261012     0.28087889    61645.79      0.29280204    64262.62      7.9675
    29  -295.24260479     0.28088422    61646.96      0.29280737    64263.79      7.9677
    30  -295.24260479     0.28088422    61646.96      0.29280737    64263.79      7.9677
    31  -295.24258248     0.28090653    61651.86      0.29282967    64268.68      7.9683
    32  -295.24258248     0.28090653    61651.86      0.29282967    64268.68      7.9683
    33  -295.23469312     0.28879589    63383.37      0.30071903    66000.20      8.1830
    34  -295.23469312     0.28879589    63383.37      0.30071903    66000.20      8.1830
    35  -295.23469082     0.28879819    63383.88      0.30072133    66000.70      8.1830
    36  -295.23469082     0.28879819    63383.88      0.30072133    66000.70      8.1830
    37  -295.22054056     0.30294845    66489.50      0.31487159    69106.33      8.5681
    38  -295.22054056     0.30294845    66489.50      0.31487159    69106.33      8.5681
    39  -295.21860922     0.30487979    66913.38      0.31680293    69530.21      8.6206
    40  -295.21860922     0.30487979    66913.38      0.31680293    69530.21      8.6206
    41  -295.21858949     0.30489952    66917.71      0.31682266    69534.54      8.6212
    42  -295.21858949     0.30489952    66917.71      0.31682266    69534.54      8.6212
    43  -295.21858917     0.30489984    66917.78      0.31682298    69534.61      8.6212
    44  -295.21858917     0.30489984    66917.78      0.31682298    69534.61      8.6212
    45  -295.21744959     0.30603942    67167.89      0.31796256    69784.72      8.6522
    46  -295.21744959     0.30603942    67167.89      0.31796256    69784.72      8.6522
    47  -295.21744881     0.30604020    67168.06      0.31796335    69784.89      8.6522
    48  -295.21744881     0.30604020    67168.06      0.31796335    69784.89      8.6522
    49  -295.21601022     0.30747879    67483.79      0.31940193    70100.62      8.6914
    50  -295.21601022     0.30747879    67483.79      0.31940193    70100.62      8.6914
    51  -295.21600867     0.30748034    67484.13      0.31940348    70100.96      8.6914
    52  -295.21600867     0.30748034    67484.13      0.31940348    70100.96      8.6914
    53  -295.21513079     0.30835822    67676.81      0.32028136    70293.63      8.7153
    54  -295.21513079     0.30835822    67676.81      0.32028136    70293.63      8.7153
    55  -295.20604811     0.31744090    69670.22      0.32936404    72287.05      8.9625
    56  -295.20604811     0.31744090    69670.22      0.32936404    72287.05      8.9625
    57  -295.20391549     0.31957352    70138.28      0.33149666    72755.11      9.0205
    58  -295.20391549     0.31957352    70138.28      0.33149666    72755.11      9.0205
    59  -295.20391471     0.31957430    70138.45      0.33149744    72755.28      9.0205
    60  -295.20391471     0.31957430    70138.45      0.33149744    72755.28      9.0205


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.049823077  -0.691683230  -0.429977605   0.021449926   0.010027595   0.577118021   0.000000084   0.000003288
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.026120263  -0.016262905  -0.002393786  -0.511731756   0.403054419  -0.007003298   0.000002906  -0.000000948
                        -0.004427555   0.004148761   0.030173399   0.634411011  -0.412980553   0.010667333   0.000008637   0.000000749

    3    3.2  0.5  0.5   0.365248463  -0.030060153  -0.008658600  -0.294513455  -0.412994291   0.007175869   0.000004824   0.000000375
                         0.617561737  -0.042279931   0.001788366  -0.248901893  -0.402667068   0.020223161  -0.000001218   0.000000488

    4    4.2  0.5  0.5   0.000129827   0.000066903  -0.000114544   0.000162363  -0.000000001  -0.000000008   0.014250744  -0.001434594
                         0.000181476   0.000460661  -0.004404138   0.000334619   0.000000001  -0.000000098  -0.000524902  -0.031396684

    5    5.2  0.5  0.5  -0.000149394   0.002251912  -0.003647043  -0.000854529  -0.000000030  -0.000000397  -0.026176844  -0.059601064
                        -0.000520818  -0.000007481   0.000021992  -0.000643816  -0.000000005   0.000000004   0.000070739  -0.002240672

    6    6.2  0.5  0.5   0.001165434   0.000626984  -0.000996463   0.002944972   0.000000037  -0.000000128   0.092121060  -0.008929457
                         0.001658101  -0.000191859   0.000403977   0.002333430   0.000000046   0.000000008  -0.028139492   0.015886001

    7    7.2  0.5  0.5  -0.003788383   0.000287142  -0.000023567  -0.000012693   0.000000110  -0.000000005  -0.013280915   0.006580655
                         0.002304305  -0.000189245  -0.000019011   0.000171245  -0.000000108   0.000000003  -0.052919462  -0.005333036

    8    8.2  0.5  0.5   0.000022290  -0.000028300   0.000040967  -0.000039488   0.000000000   0.000000002   0.003815309  -0.000690250
                        -0.000327200  -0.004413353  -0.000475997   0.000015875   0.000000003   0.000000067   0.001396590  -0.027282541

    9    9.2  0.5  0.5  -0.000046894  -0.000000643  -0.000012145   0.000773821   0.001780690  -0.000094374   0.000081216  -0.000028331
                        -0.000002921  -0.000005576  -0.000045338  -0.000948761  -0.001864069   0.000048601   0.000228292   0.000016900

   10   10.2  0.5  0.5   0.000547919  -0.000047345  -0.000014486  -0.000434114   0.001864947  -0.000038505  -0.000170126  -0.000009770
                         0.000927479  -0.000063556   0.000002215  -0.000383530   0.001781153  -0.000089925   0.000044062  -0.000019107

   11   11.2  0.5  0.5   0.000075010   0.001039157   0.000645532  -0.000014233   0.000093033   0.002578353  -0.000033521   0.000761576
                         0.000002129  -0.000000287  -0.000001107  -0.000024229  -0.000041632   0.000000982   0.000104218  -0.000021038

   12   12.2  0.5  0.5  -0.000000000  -0.000000000   0.000000006   0.000000009   0.000108498  -0.000001885  -0.000019770   0.000003860
                        -0.000000013  -0.000000146   0.000000322  -0.000000004   0.000335944   0.008905404  -0.000010263   0.000142042

   13    1.2  0.5 -0.5  -0.592219358   0.042658532  -0.013210103  -0.264805026  -0.405473895   0.007045228   0.000001020  -0.000000026
                         0.357354060  -0.025740799   0.016899483   0.338761034   0.410677648  -0.007135644   0.000003126  -0.000000080

   14    2.2  0.5 -0.5  -0.016067737  -0.024651647   0.814979357  -0.025246567   0.012511288   0.577056885   0.000000418  -0.000009113
                         0.004849964   0.009704005  -0.012464728  -0.016696559   0.002511145   0.003339686  -0.000001133  -0.000000083

   15    3.2  0.5 -0.5  -0.003893834   0.006333800  -0.014720811  -0.006741443   0.009349167  -0.003624977   0.000000580  -0.000000338
                         0.051730488   0.717459980  -0.385322754   0.005720363   0.019314824   0.576794515   0.000000205  -0.000004964

   16    4.2  0.5 -0.5  -0.000180716  -0.000017400   0.000163640   0.003399290  -0.000000064  -0.000000002  -0.030293185  -0.003921168
                        -0.000428983   0.000222454   0.000333996   0.002802567  -0.000000074   0.000000000   0.008374533  -0.013710714

   17    5.2  0.5 -0.5   0.001931952  -0.000141167   0.000019033  -0.002263387   0.000000281  -0.000000018  -0.020616746   0.008052075
                        -0.001157032  -0.000523108  -0.001069746   0.002859806  -0.000000279   0.000000025  -0.055966573   0.024907755

   18    6.2  0.5 -0.5   0.000635946  -0.000141196   0.000024726  -0.000931956   0.000000096  -0.000000006   0.012332842  -0.001821711
                        -0.000159657   0.002021781   0.003757279   0.000536279  -0.000000086  -0.000000059  -0.013416453  -0.096305773

   19    7.2  0.5 -0.5   0.000343624   0.004434120   0.000142733   0.000000464   0.000000006   0.000000154  -0.003028878   0.054428866
                         0.000013681   0.000015700   0.000095462   0.000030275  -0.000000001  -0.000000002   0.007910259  -0.003788231

   20    8.2  0.5 -0.5   0.002255902  -0.000188130   0.000036826   0.000400248   0.000000046  -0.000000002  -0.026151075  -0.002511113
                         0.003793335  -0.000268633  -0.000021334   0.000260870   0.000000048  -0.000000002   0.007806074  -0.003193956

   21    9.2  0.5 -0.5   0.000002330   0.000038641  -0.001224052   0.000028240   0.000100890   0.002577557   0.000007279  -0.000242224
                         0.000005106  -0.000026729   0.000025359   0.000037490  -0.000033010   0.000042525  -0.000032175  -0.000006401

   22   10.2  0.5 -0.5  -0.000007701   0.000010048  -0.000034814  -0.000010666  -0.000036938   0.000042812  -0.000021195   0.000010880
                         0.000078877   0.001077187  -0.000578220   0.000010048  -0.000090580  -0.002578508  -0.000003362   0.000175403

   23   11.2  0.5 -0.5   0.000889875  -0.000063124  -0.000010324   0.000398428  -0.001810811   0.000094989   0.000216219  -0.000088681
                        -0.000536629   0.000040576  -0.000026135  -0.000507905   0.001835448  -0.000036953   0.000730541   0.000064194

   24   12.2  0.5 -0.5   0.000000075  -0.000000007  -0.000000008  -0.000000250   0.006338417  -0.000162829   0.000136234   0.000015889
                         0.000000125  -0.000000012   0.000000004  -0.000000203   0.006255453  -0.000313236  -0.000040388   0.000015611

   25    1.2  1.5  1.5  -0.000340931  -0.004771121  -0.002964068   0.000066065   0.000144657   0.003879110  -0.004302258   0.060705309
                        -0.000022605   0.000170437   0.000109492   0.000129116  -0.000052322  -0.000135039   0.010758768   0.005090445

   26    2.2  1.5  1.5   0.000085903  -0.000174467  -0.000107581  -0.000191953   0.000052096   0.000135235   0.033417494  -0.006464317
                        -0.000396397  -0.004753258  -0.002951678   0.000187343   0.000144317   0.003867394   0.019433836  -0.206990429

   27    3.2  1.5  1.5   0.004431824  -0.000274255   0.000076966  -0.005202665  -0.000005852  -0.000014812   0.137425009  -0.063984470
                        -0.002567009   0.000343046   0.000332583   0.006426551   0.000002305  -0.000062428   0.481703958   0.051805595

   28    4.2  1.5  1.5  -0.000307507  -0.004144931  -0.002576816   0.000029104   0.000173558   0.003869184  -0.006963422   0.106763582
                        -0.000123229  -0.001524769  -0.000943896   0.000128621  -0.000018776   0.001426124   0.015315339   0.005730503

   29    5.2  1.5  1.5  -0.000184410  -0.001524361  -0.000946430   0.000097695   0.000084391   0.001425778   0.001511327   0.038514344
                         0.000318323   0.004131909   0.002571515  -0.000011636  -0.000220121  -0.003856741   0.006519701  -0.027340896

   30    6.2  1.5  1.5  -0.003772804   0.000298089   0.000054245  -0.001687566   0.005771441  -0.000317739  -0.012597263   0.005081785
                         0.002290835  -0.000234704   0.000093667   0.002150278  -0.005877235   0.000191584  -0.045118815  -0.004111851

   31    7.2  1.5  1.5   0.002556429  -0.000217215   0.000082651   0.001278330  -0.005721527   0.000144646   0.020800891   0.002052765
                         0.004238023  -0.000288413  -0.000020549   0.000971146  -0.005613245   0.000272654  -0.005759093   0.002831750

   32    8.2  1.5  1.5   0.000793022  -0.000091118  -0.000176151  -0.003859855   0.001404515  -0.000037631   0.270787884   0.027155710
                         0.001391666  -0.000089071   0.000041427  -0.003114899   0.001397060  -0.000068339  -0.077474444   0.035870615

   33    9.2  1.5  1.5  -0.004434349   0.000459220   0.000491631   0.011089152  -0.000000237  -0.000000005  -0.000065143  -0.000005659
                        -0.007636854   0.000504626  -0.000112821   0.008977496  -0.000000257   0.000000015   0.000032202  -0.000009559

   34    1.2  1.5  0.5  -0.007225583   0.000509889   0.000023117   0.001119149   0.001516338  -0.000062483   0.143839157  -0.071227923
                         0.004403342  -0.000397229  -0.000016709  -0.000841653  -0.001647795   0.000043564   0.541529894   0.052538887

   35    2.2  1.5  0.5  -0.001605869   0.000146014  -0.000286884  -0.006362980   0.001648007   0.000029017   0.301272466   0.031554955
                        -0.002001009   0.000151467   0.000081223  -0.005144906   0.001512523  -0.000077086  -0.065099916   0.041336044

   36    3.2  1.5  0.5   0.000254736   0.002750430   0.001712030   0.000053873   0.000137076   0.004475418  -0.018508548   0.253109361
                         0.000033203  -0.000002567  -0.000003973   0.000022535  -0.000073630   0.000002063   0.036767840  -0.009798582

   37    4.2  1.5  0.5   0.001746365  -0.000105948   0.000098972  -0.001424556  -0.006463805   0.000280833  -0.022421537   0.013715221
                        -0.002108875   0.000188733   0.000123467   0.004189603   0.003036356  -0.000030876  -0.104911390  -0.009078527

   38    5.2  1.5  0.5   0.002105193  -0.000219220  -0.000079466  -0.004185284   0.003020156  -0.000035276  -0.029951710   0.001538321
                         0.001739653  -0.000101851   0.000092606  -0.001416986   0.006456141  -0.000279905  -0.032563185  -0.006520260

   39    6.2  1.5  0.5  -0.000237404  -0.002736722   0.004420167  -0.000046273  -0.000015111  -0.000005756   0.007282115  -0.135778114
                        -0.000054683   0.000046761  -0.000092761  -0.000117432  -0.000083271   0.000016501  -0.019803847   0.005586499

   40    7.2  1.5  0.5  -0.000032119   0.000052037  -0.000087621  -0.000147859   0.000038370  -0.000000881  -0.032990632   0.008364312
                         0.000129114   0.001601471  -0.004958237   0.000105490   0.000081997   0.001978396  -0.011404593   0.217309688

   41    8.2  1.5  0.5   0.000032335  -0.000010578   0.000009849  -0.000067863   0.000097922  -0.000001730   0.015260279  -0.003549356
                        -0.000369090  -0.004949129  -0.001604212   0.000047346   0.000298442   0.008015218   0.005407733  -0.101673979

   42    9.2  1.5  0.5   0.000078951  -0.000007219  -0.000013997  -0.000330156   0.000000016   0.000000008   0.000068765  -0.000014517
                        -0.001058365  -0.014236861  -0.008847938   0.000236710  -0.000000031  -0.000000120   0.000020498  -0.000539837

   43    1.2  1.5 -0.5  -0.000641793  -0.008461507   0.001352340  -0.000027401  -0.000074900  -0.002237927  -0.027854783   0.559436765
                        -0.000076676  -0.000037088  -0.000363391   0.000007923   0.000013856  -0.000078687   0.084011087  -0.031222352

   44    2.2  1.5 -0.5  -0.000046763  -0.000341136   0.000134761   0.000240672   0.000075241  -0.000081551  -0.049084833   0.031557075
                         0.000205124   0.002542927   0.008181651  -0.000176001   0.000033511   0.002235397  -0.017177395   0.306606016

   45    3.2  1.5 -0.5  -0.002356246   0.000200951   0.000015424  -0.001057497   0.003142889  -0.000148703  -0.069192123   0.029213633
                         0.001418796  -0.000160036  -0.000056322   0.001346389  -0.003186160   0.000045812  -0.243665367  -0.029000070

   46    4.2  1.5 -0.5   0.000188220   0.002584776  -0.004178134   0.000036322   0.000219280   0.006702040   0.004376700  -0.106691741
                         0.000106855   0.000903370  -0.001457853   0.000154014  -0.000178148  -0.002466354  -0.015854698   0.011224862

   47    5.2  1.5 -0.5   0.000135075   0.000903685  -0.001461156   0.000121900   0.000174396   0.002472282   0.005721540  -0.040247365
                        -0.000200464  -0.002577127   0.004170069  -0.000005576   0.000221759   0.006685127  -0.003484854  -0.018374316

   48    6.2  1.5 -0.5   0.002367341  -0.000175014   0.000064022  -0.002795277  -0.000015786  -0.000048639   0.036803598  -0.016568422
                        -0.001373874   0.000169473   0.000108778   0.003425333  -0.000007497  -0.000069258   0.130814374   0.013065564

   49    7.2  1.5 -0.5   0.000782836  -0.000094206  -0.000174171  -0.003852422  -0.001408447   0.000031391  -0.209186447  -0.021074895
                         0.001398064  -0.000093954   0.000051525  -0.003122601  -0.001389363   0.000084914   0.059451599  -0.027826163

   50    8.2  1.5 -0.5  -0.002547881   0.000218374  -0.000079096  -0.001269956  -0.005704851   0.000143573   0.097760374   0.009874338
                        -0.004242910   0.000299309   0.000024308  -0.000980207  -0.005630133   0.000279362  -0.028162121   0.012830321

   51    9.2  1.5 -0.5  -0.007349209   0.000614396  -0.000389823  -0.006962294   0.000000091  -0.000000034   0.000517716   0.000040816
                        -0.012193334   0.000865383   0.000114336  -0.005460099   0.000000078  -0.000000010  -0.000153642   0.000059016

   52    1.2  1.5 -1.5  -0.004173090   0.000280227   0.000061038  -0.001911708  -0.002821494   0.000138866   0.023668475  -0.008893710
                         0.002319043  -0.000195494   0.000131567   0.002267831   0.002665502  -0.000066178   0.056132437   0.007427141

   53    2.2  1.5 -1.5   0.002306364  -0.000278346   0.000265815   0.002259246   0.002657027  -0.000066095  -0.198786804  -0.028840539
                         0.004159877  -0.000295014  -0.000035854   0.001902572   0.002813402  -0.000138466   0.058057141  -0.025741526

   54    3.2  1.5 -1.5  -0.000412049  -0.005120759   0.008267307  -0.000214628  -0.000034017  -0.000005752   0.029404373  -0.500571928
                        -0.000152024   0.000091802  -0.000141117  -0.000265462  -0.000054401   0.000002545  -0.076897431   0.018763825

   55    4.2  1.5 -1.5  -0.002761128   0.000199622   0.000083411  -0.000843296  -0.001703596   0.000135300   0.038562954  -0.012400135
                         0.003446961  -0.000264380   0.000102142   0.002611469   0.003755286  -0.000110312   0.099720608   0.011370379

   56    5.2  1.5 -1.5  -0.003439885   0.000322352  -0.000069333  -0.002608853  -0.003746189   0.000215930  -0.014046383  -0.006666924
                        -0.002750189   0.000177273   0.000069804  -0.000838035  -0.001695100   0.000094601   0.045095215   0.000585440

   57    6.2  1.5 -1.5   0.000376482   0.004413822   0.002733413  -0.000040389   0.000359570   0.008237167  -0.002332828   0.046800893
                         0.000046948   0.000012217  -0.000005296  -0.000100423  -0.000091500   0.000022289   0.006106535  -0.002018623

   58    7.2  1.5 -1.5  -0.000036972   0.000000734  -0.000022145   0.000067091   0.000092395  -0.000025464   0.003328800  -0.000976797
                         0.000359162   0.004949361   0.001605229  -0.000052462   0.000294493   0.008015219   0.001073194  -0.021561310

   59    8.2  1.5 -1.5  -0.000031997   0.000040010  -0.000076975  -0.000141122  -0.000022191  -0.000007360   0.042524434  -0.010337388
                         0.000123338   0.001601255  -0.004959349   0.000113268  -0.000074792  -0.001981006   0.014690341  -0.281463152

   60    9.2  1.5 -1.5   0.000132473  -0.000148845   0.000243647   0.000391662   0.000000014   0.000000017  -0.000010843  -0.000010409
                        -0.000669314  -0.008829657   0.014265530  -0.000317853   0.000000007   0.000000349  -0.000002415   0.000071918


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000001862   0.000006054  -0.000000062   0.000007104  -0.000201109   0.006926871  -0.007375257  -0.000103309
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000014325  -0.000005932  -0.000011444  -0.000001501  -0.008443068  -0.000971097  -0.000699882   0.001229439
                         0.000009991  -0.000002875   0.000010826   0.000000174   0.004916769   0.000446453   0.000300535   0.001899133

    3    3.2  0.5  0.5   0.000014226  -0.000004498   0.000009688   0.000000259  -0.001418475  -0.000403922  -0.000228030  -0.008055118
                        -0.000020289   0.000008710   0.000009566   0.000000674  -0.002491543  -0.000733514  -0.000535990   0.005326941

    4    4.2  0.5  0.5  -0.007313635  -0.002374077   0.000131468   0.001063457   0.002359478   0.000852434   0.000786646  -0.006568967
                         0.037030848   0.087823272  -0.001821907   0.025129055  -0.003721046   0.079292613   0.025442623   0.002445145

    5    5.2  0.5  0.5  -0.022951720  -0.073523640   0.000343556  -0.027580272  -0.020999711   0.056549503   0.051928134   0.006593413
                        -0.011237015   0.003086900  -0.003350187   0.001373841  -0.019703097  -0.000739638  -0.000439498   0.001820433

    6    6.2  0.5  0.5  -0.023592021  -0.018058756   0.007301319  -0.008710885   0.034825908   0.020697164   0.018195877  -0.017252695
                         0.017957880  -0.018555017   0.004745970  -0.001614137   0.065085120  -0.000551059  -0.000211228   0.014937555

    7    7.2  0.5  0.5  -0.027053847   0.010772215  -0.058511001  -0.006728693  -0.016262318   0.002172203   0.003088578  -0.044693190
                        -0.017972649   0.006440599   0.054581341   0.001944391   0.010588375  -0.000480681  -0.000672950  -0.066825932

    8    8.2  0.5  0.5  -0.000881916   0.000152505   0.004256866  -0.005883083  -0.000572974  -0.000163730  -0.000164320   0.002363892
                         0.006473078   0.016733919   0.006695048  -0.095990944   0.001237889   0.025493715  -0.080768821  -0.000609898

    9    9.2  0.5  0.5  -0.000178158   0.000078364   0.000018620  -0.000010355  -0.258033012  -0.034988464  -0.015879448   0.035147212
                        -0.000120817   0.000044208  -0.000015935  -0.000000395   0.149303918   0.013394651   0.009012925   0.059798601

   10   10.2  0.5  0.5  -0.000069587   0.000032665  -0.000076958  -0.000001766   0.040476992   0.011498810   0.007247079   0.245812443
                         0.000090165  -0.000034551  -0.000061001   0.000011646   0.077329484   0.022465652   0.016439168  -0.161692736

   11   11.2  0.5  0.5   0.000650930   0.001687853  -0.000081763   0.001213867  -0.012345587   0.210377656  -0.225508983  -0.001685184
                         0.000105299   0.000016478   0.000056999  -0.000056962   0.003837087   0.000381593   0.000261206   0.001084333

   12   12.2  0.5  0.5  -0.000079517  -0.000017526  -0.000044921   0.000049329   0.000019244   0.000002801  -0.000001884   0.000010324
                         0.000473642   0.001209971  -0.000057607   0.000829414   0.000064143  -0.000372268  -0.000362417   0.000025949

   13    1.2  0.5 -0.5   0.000004904  -0.000001508  -0.000004887  -0.000000043  -0.005999423  -0.000174183   0.000056832  -0.004057267
                         0.000003550  -0.000001092   0.000005156   0.000000045   0.003462436   0.000100526   0.000086272  -0.006158977

   14    2.2  0.5 -0.5  -0.000006491  -0.000017462   0.000001159  -0.000015730   0.001064237  -0.009770290  -0.002262277  -0.000134045
                        -0.000001150  -0.000000308  -0.000000969   0.000000858  -0.000098732  -0.000038140   0.000018061  -0.000749792

   15    3.2  0.5 -0.5   0.000001465   0.000000374   0.000000311  -0.000000278  -0.000016811   0.000016858  -0.000017184  -0.000573042
                        -0.000009693  -0.000024776   0.000000652  -0.000013612  -0.000837205   0.002866980   0.009657170   0.000104434

   16    4.2  0.5 -0.5   0.049576780  -0.015790813   0.017505989   0.001412706   0.038896568   0.003903551   0.001571805   0.021679538
                        -0.072530726   0.034284445   0.018059365   0.001157969   0.069102114   0.002043431   0.006830775  -0.013339547

   17    5.2  0.5 -0.5  -0.057745413   0.025180760   0.019970946   0.002667773  -0.049347727  -0.008339326  -0.005147379   0.028199623
                        -0.045614931   0.004356756  -0.019071448   0.002055426   0.027625988   0.027561850  -0.004504616   0.043606256

   18    6.2  0.5 -0.5  -0.025508661   0.008579442   0.004821189   0.001578526  -0.018201443  -0.002370151  -0.002983118   0.009833500
                         0.004440217   0.028380664  -0.007432436  -0.008563979   0.009868319  -0.073778717   0.022624921   0.015311330

   19    7.2  0.5 -0.5   0.012502490   0.032453358   0.006040166  -0.079865498  -0.002121635  -0.019377595   0.080391991   0.001137113
                         0.001099848   0.001306261  -0.003545753   0.004915508   0.000669466  -0.001041870   0.000560478   0.002949432

   20    8.2  0.5 -0.5   0.009936353  -0.003081463  -0.065618857  -0.001930465   0.012884987  -0.001115023  -0.000791104  -0.067539342
                        -0.013465371   0.005760477  -0.070306739  -0.007695316   0.021998486  -0.000785742  -0.002309570   0.044295223

   21    9.2  0.5 -0.5   0.000089400   0.000215159   0.000006837   0.000024375   0.036999206  -0.298115051  -0.069272141  -0.001209011
                         0.000010144   0.000006608  -0.000007787  -0.000002551  -0.005887962  -0.000334133   0.003545373  -0.018218891

   22   10.2  0.5 -0.5   0.000006199   0.000003493   0.000009668  -0.000008672   0.001270366  -0.003596114  -0.000198627   0.017714880
                         0.000047142   0.000113842   0.000006730   0.000097818   0.025205442  -0.087208393  -0.294224843  -0.002991557

   23   11.2  0.5 -0.5   0.001376857  -0.000589014  -0.000876421  -0.000097617  -0.182019171  -0.012610610   0.000021539  -0.123838593
                         0.000976414  -0.000296413   0.000841786   0.000020128   0.105488982   0.002847678   0.002003786  -0.188463186

   24   12.2  0.5 -0.5   0.000695334  -0.000213335   0.000568017   0.000010906  -0.000188506  -0.000015395  -0.000027349  -0.000303686
                        -0.000990378   0.000430288   0.000606397   0.000072233  -0.000321025  -0.000065174   0.000005654   0.000197800

   25    1.2  1.5  1.5   0.229005725   0.589132091  -0.011436438   0.164507130   0.013756677  -0.228175861   0.245148224   0.000132801
                         0.042210417   0.022484107   0.005687857   0.006484128  -0.005366039   0.007335761  -0.008853732  -0.001450014

   26    2.2  1.5  1.5   0.032941260   0.026498278   0.023569628  -0.022404522   0.010425187  -0.006528744   0.009481870  -0.003086848
                        -0.150808999  -0.390293162   0.029240493  -0.462721260   0.009028860  -0.225700927   0.240486567  -0.004471595

   27    3.2  1.5  1.5   0.008685286  -0.007037326   0.176101193   0.019617418   0.358456094   0.062049317   0.034027689  -0.217515789
                         0.009878172   0.004286137  -0.164514922   0.003125026  -0.210910288  -0.023339309  -0.022934263  -0.325976556

   28    4.2  1.5  1.5   0.027888739   0.058304340  -0.016350852   0.231056570  -0.005994420   0.092009537  -0.099043693  -0.000738663
                        -0.030510586  -0.087042607   0.009183939   0.000709589  -0.000000025   0.034496250  -0.036611214  -0.000143708

   29    5.2  1.5  1.5  -0.006051025   0.017318644  -0.002954694   0.082307769  -0.001237008   0.034135337  -0.036413116  -0.000491085
                         0.094835108   0.238366639   0.005982236  -0.045895311   0.006224946  -0.092814936   0.099545495  -0.000720164

   30    6.2  1.5  1.5   0.053208316  -0.023253186   0.069789247   0.005997543  -0.085049680  -0.006331319   0.000808585  -0.058355032
                         0.036161760  -0.014073695  -0.065591677  -0.001205977   0.049372790   0.002121719  -0.000656256  -0.088086371

   31    7.2  1.5  1.5   0.037130098  -0.011587167  -0.085693564  -0.002430481   0.035702675  -0.000504617  -0.000667112  -0.104595882
                        -0.052943089   0.023438191  -0.091727478  -0.010204742   0.061284560   0.001664220  -0.001924793   0.069260641

   32    8.2  1.5  1.5  -0.004948119   0.001740204  -0.073439631  -0.002065976  -0.062928537  -0.006877921  -0.004676415  -0.058158137
                         0.007327146  -0.003067551  -0.078892570  -0.008874546  -0.107548204  -0.016198269  -0.008518672   0.039138685

   33    9.2  1.5  1.5   0.000078269  -0.000031556   0.000000057   0.000002634  -0.155356777  -0.019885995  -0.014064953  -0.240624532
                        -0.000112102   0.000049599  -0.000014683  -0.000021017  -0.264337913  -0.045100773  -0.025808442   0.160575421

   34    1.2  1.5  0.5  -0.139292835   0.057780247  -0.024588911  -0.001526934   0.011547652  -0.020339657  -0.021255982   0.281260351
                        -0.089125270   0.027505330   0.045306299   0.002000315  -0.025456089   0.010629327   0.009228161   0.421755222

   35    2.2  1.5  0.5   0.100180656  -0.036736019  -0.318929507  -0.000111182   0.253601851   0.020098136   0.009095196  -0.036354106
                        -0.155482535   0.066569556  -0.339363587  -0.038197861   0.433155013   0.050803198   0.020337158   0.043122409

   36    3.2  1.5  0.5  -0.137424012  -0.348622918  -0.029839642   0.515043571  -0.011479120   0.130659972  -0.140105307  -0.000838876
                        -0.018468384  -0.006179099   0.029066024  -0.031686866  -0.004495405  -0.000560681  -0.000197228  -0.001867161

   37    4.2  1.5  0.5   0.052184492  -0.024019860   0.117740383   0.010312981  -0.065950277  -0.012371453  -0.006878106   0.079579468
                         0.076678735  -0.026822051  -0.033562049   0.002488582   0.080601443   0.011846964   0.007589515   0.058012835

   38    5.2  1.5  0.5   0.078056030  -0.025103390  -0.073383668   0.002901765  -0.080432547  -0.012847083  -0.008649412  -0.057622228
                        -0.054321175   0.025237186  -0.137708091  -0.013042961  -0.065955922  -0.012224190  -0.006759609   0.079354491

   39    6.2  1.5  0.5   0.068133047   0.177953068  -0.013731276   0.205800509   0.017822426  -0.104764326  -0.097682283  -0.000426434
                         0.011646615   0.003211508   0.011207892  -0.012700264  -0.001357282  -0.000298029  -0.000461573  -0.011054532

   40    7.2  1.5  0.5  -0.012600797  -0.003297762  -0.000241834  -0.000634419  -0.002276023  -0.000555066  -0.000329877  -0.009893874
                         0.076547638   0.196956194  -0.000366447   0.003290539  -0.017629221   0.123912892   0.070499346   0.000814362

   41    8.2  1.5  0.5  -0.001136347  -0.000423640   0.004554568  -0.006378336  -0.001284176   0.000107542   0.000092291   0.002238101
                         0.007279527   0.018611538   0.006816088  -0.099352307  -0.001344491   0.070758380  -0.125877805  -0.000604143

   42    9.2  1.5  0.5   0.000071005   0.000008455   0.000032962  -0.000029567   0.005363211   0.000615925   0.000426811   0.000480907
                        -0.000441566  -0.001154847   0.000051095  -0.000775948   0.016213049  -0.290226072   0.310575542   0.001100743

   43    1.2  1.5 -0.5  -0.062932333  -0.165093232  -0.002502199   0.049797339  -0.022929483  -0.022725894   0.506928660   0.003987002
                        -0.011602656  -0.009488531  -0.000267935   0.013322924   0.000960742  -0.016275579   0.002861241   0.022827166

   44    2.2  1.5 -0.5  -0.009279696  -0.010027141   0.027645889  -0.026887785  -0.007987101  -0.003131737   0.016011863  -0.021986723
                         0.075464747   0.184690116   0.026358941  -0.464930879  -0.054047259   0.501923656  -0.054081267   0.003592577

   45    3.2  1.5 -0.5   0.286014792  -0.122146041   0.377321623   0.041623085   0.113445994   0.007695111  -0.002020723   0.077239261
                         0.199428330  -0.065626101  -0.351997628  -0.001660343  -0.064825528  -0.009631413   0.000326626   0.116891542

   46    4.2  1.5 -0.5   0.035185085   0.087235094   0.005288718  -0.105357496  -0.016636796   0.097409201   0.092223890  -0.002554126
                        -0.007641066  -0.031510126  -0.009196743   0.062361904  -0.004076817   0.036843983   0.034541784   0.009918948

   47    5.2  1.5 -0.5   0.005535073   0.031372805   0.011462296  -0.049458298  -0.005016638   0.036694880   0.034568790   0.010403062
                         0.035163315   0.089773498   0.006866939  -0.147995128   0.017009166  -0.097329667  -0.091773935   0.003504419

   48    6.2  1.5 -0.5  -0.146028687   0.062018704   0.150797939   0.017580652  -0.090588319  -0.016114603  -0.009466079   0.054122310
                        -0.101750826   0.030519438  -0.140624066  -0.002255096   0.052625176   0.007733088   0.005725196   0.081319229

   49    7.2  1.5 -0.5  -0.112824449   0.034680872  -0.002824582  -0.000099581  -0.062419319  -0.006840784  -0.004762743  -0.058691576
                         0.161472169  -0.069394222  -0.001803295  -0.000427610  -0.107044577  -0.016406504  -0.008710236   0.039058489

   50    8.2  1.5 -0.5  -0.010570705   0.003348273   0.067717681   0.001813507  -0.035275840   0.000440185   0.000726709   0.105068076
                         0.015324132  -0.006562916   0.072978626   0.007994644  -0.061338202  -0.001806378   0.002201358  -0.069324813

   51    9.2  1.5 -0.5   0.000670357  -0.000201420   0.000542810   0.000014406   0.145604629   0.003459062   0.001183771  -0.259592218
                        -0.000940407   0.000399314   0.000555272   0.000059073   0.251059443   0.016723094  -0.000203940   0.170497009

   52    1.2  1.5 -1.5   0.490393210  -0.210251410  -0.108466912  -0.011995711   0.201291914   0.014597023   0.001137831   0.127467007
                         0.327256253  -0.100098381   0.123853012   0.004387113  -0.107701450  -0.002228781  -0.000908580   0.209590559

   53    2.2  1.5 -1.5  -0.207404955   0.061751785  -0.320410125  -0.005006757  -0.107163304   0.004516217   0.005432301   0.206043223
                         0.331683728  -0.141475078  -0.334589718  -0.037221851  -0.198744960  -0.013031064   0.000117877  -0.124377992

   54    3.2  1.5 -1.5  -0.003186968  -0.012827841  -0.011227808   0.240546867  -0.065407739   0.415886651   0.391878115  -0.000432821
                        -0.007598563   0.002908434   0.016387348  -0.014628551   0.010801330   0.003494889   0.002318663   0.041032630

   55    4.2  1.5 -1.5  -0.003814395  -0.004698923  -0.158440568  -0.017913893  -0.062447108  -0.005191807   0.000526361  -0.085059322
                         0.104696045  -0.041068208   0.168179156   0.005548652   0.075868997   0.002996367   0.000537791  -0.062569528

   56    5.2  1.5 -1.5   0.153807348  -0.050710143  -0.089932555  -0.006374335  -0.075958991  -0.004182959   0.000871554   0.063097553
                        -0.182925913   0.080366623   0.028161748  -0.001971093  -0.063325076  -0.004773154   0.000013922  -0.085169944

   57    6.2  1.5 -1.5  -0.027088390  -0.064305135  -0.005001261   0.095615208   0.006544163  -0.098341539   0.105661931  -0.000103213
                        -0.002235771  -0.001909786   0.003523108  -0.005526207  -0.001327107  -0.000249630   0.000273530   0.001036258

   58    7.2  1.5 -1.5   0.004358395   0.000969883  -0.005734114   0.007618929   0.001268923   0.000288956  -0.000298465  -0.001974359
                        -0.025780140  -0.064658133  -0.008784300   0.125296724   0.001189160  -0.070925276   0.125448180   0.000501768

   59    8.2  1.5 -1.5  -0.000389222  -0.000288588  -0.005019477   0.006734004  -0.002139771  -0.000744363  -0.000690302  -0.009686411
                         0.003505236   0.008836723  -0.007604649   0.107573557  -0.017467430   0.124603623   0.070097996   0.000781071

   60    9.2  1.5 -1.5   0.000003524   0.000002338  -0.000017065   0.000010696  -0.005320448  -0.002425026  -0.001722284  -0.029289675
                        -0.000058681  -0.000136702  -0.000012547   0.000010060  -0.049002300   0.306601337   0.289277834   0.002452257


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000834768  -0.004442369   0.000000000   0.000011612   0.000000003  -0.000013783   0.000000091   0.000005235
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.004434230   0.000834235  -0.000003740  -0.000000039   0.000019317   0.000000591  -0.000006467   0.000000256
                        -0.000349436   0.000038109  -0.000013724   0.000000297   0.000017755  -0.000000175   0.000002701   0.000000584

    3    3.2  0.5  0.5  -0.000342668   0.000064788  -0.000024507   0.000000401   0.000015005   0.000000240  -0.000006641  -0.000000685
                         0.004402234  -0.000933675   0.000006775   0.000000853  -0.000016130  -0.000000867   0.000005054   0.000000167

    4    4.2  0.5  0.5   0.000008217   0.000017005  -0.000453027   0.000057505   0.000165492  -0.000233535  -0.000083426  -0.000346029
                        -0.000069865  -0.000216025  -0.000238446  -0.001543295  -0.000293845   0.009261598   0.000271192   0.000326674

    5    5.2  0.5  0.5   0.000169392   0.000879390   0.001064197   0.006072550   0.000220126  -0.010643351   0.000333994   0.001761013
                         0.000090519  -0.000032494  -0.000596708  -0.000147312   0.000230451   0.000100153  -0.000655089  -0.000801883

    6    6.2  0.5  0.5   0.000094419   0.000282236  -0.003124276   0.001978575   0.000316812  -0.003411165  -0.001229946   0.000595850
                        -0.000257790   0.000072557   0.000333737   0.000200675  -0.000123536  -0.000906032   0.002191701  -0.000288775

    7    7.2  0.5  0.5  -0.000060926   0.000053082   0.005511504   0.000991601   0.000257102  -0.000075350  -0.000224446   0.000012363
                        -0.000016532  -0.000004943   0.020329846  -0.000424438   0.000086767   0.000135177   0.000360803  -0.000000548

    8    8.2  0.5  0.5   0.000003939   0.000003290  -0.000776695   0.000349844  -0.000075112   0.000114610  -0.000016074   0.000218509
                         0.000052182   0.000339929  -0.000087581  -0.015765366   0.000161190  -0.004692590  -0.000029359   0.002023514

    9    9.2  0.5  0.5   0.326878283  -0.069861425   0.000342815   0.000036762  -0.001589947  -0.000080866   0.000656097   0.000006217
                         0.022450495  -0.002090729   0.001246299  -0.000021788  -0.001437162  -0.000001111   0.000555088   0.000039262

   10   10.2  0.5  0.5  -0.022226529   0.003384500  -0.001324021   0.000017598   0.001373419   0.000011057  -0.000597491  -0.000047462
                         0.327472162  -0.069374934   0.000364433   0.000038159  -0.001522330  -0.000075115   0.000658130   0.000007824

   11   11.2  0.5  0.5   0.069994181   0.327861625  -0.000004809  -0.001255578  -0.000065195   0.002077901   0.000022935  -0.000835191
                         0.001305344  -0.000213996   0.000038040  -0.000000809  -0.000046934   0.000006343  -0.000039538   0.000333224

   12   12.2  0.5  0.5  -0.004838610   0.000911103  -0.000067279   0.000002318   0.000095579  -0.000013338   0.000076466  -0.000671967
                         0.131211635   0.620813019  -0.000020694  -0.002331484  -0.000111303   0.004049873   0.000039223  -0.001526249

   13    1.2  0.5 -0.5   0.004426941  -0.000831869   0.000002867  -0.000000000  -0.000010051  -0.000000002   0.000004928  -0.000000085
                         0.000369919  -0.000069512   0.000011253  -0.000000000  -0.000009432  -0.000000002   0.000001768  -0.000000031

   14    2.2  0.5 -0.5  -0.000834511  -0.004447928   0.000000278   0.000014223   0.000000311  -0.000026236   0.000000438   0.000005175
                        -0.000031491  -0.000021019  -0.000000112   0.000000236   0.000000532  -0.000000272  -0.000000463   0.000004727

   15    3.2  0.5 -0.5   0.000013185   0.000025099   0.000000925  -0.000000514  -0.000000418   0.000000096  -0.000000589   0.000004544
                        -0.000935828  -0.004415479   0.000000178   0.000025421   0.000000797  -0.000022030  -0.000000389   0.000006999

   16    4.2  0.5 -0.5   0.000001042   0.000002370  -0.001481306   0.000342927   0.006167393   0.000080400  -0.000215372  -0.000013063
                        -0.000216690   0.000070307   0.000436807   0.000380120  -0.006913393  -0.000327518  -0.000424343   0.000283433

   17    5.2  0.5 -0.5  -0.000873630   0.000176341   0.001356731   0.000315450  -0.007692630  -0.000318213   0.001386729  -0.000093131
                        -0.000105608  -0.000076099   0.005920882  -0.001178587  -0.007356249   0.000017414   0.001349505  -0.000729398

   18    6.2  0.5 -0.5  -0.000287297   0.000072625   0.000683026   0.000448069  -0.003107427  -0.000146485   0.000463314   0.000417490
                         0.000048804   0.000264757   0.001867753   0.003109938  -0.001673570  -0.000306877   0.000473041   0.002478310

   19    7.2  0.5 -0.5  -0.000052486  -0.000062091  -0.000166441  -0.021061253   0.000037556  -0.000246854   0.000011452   0.000089407
                        -0.000009346   0.000011401   0.001065701  -0.000320827  -0.000150134  -0.000112664   0.000004691   0.000415405

   20    8.2  0.5 -0.5  -0.000031584   0.000008270  -0.015190787   0.000276657  -0.003127553  -0.000055530   0.000889061   0.000025045
                         0.000338474  -0.000051673   0.004231919   0.000731018   0.003500279   0.000168940  -0.001830827  -0.000022205

   21    9.2  0.5 -0.5   0.069792891   0.327612492  -0.000012035  -0.001292356  -0.000059728   0.002142841   0.000019111  -0.000805015
                         0.003733933   0.004846821   0.000041004  -0.000024453  -0.000054526   0.000040014  -0.000034856   0.000300894

   22   10.2  0.5 -0.5   0.002404145   0.005119462   0.000041323  -0.000026210  -0.000043338   0.000040225  -0.000042031   0.000340119
                        -0.069415823  -0.328185658   0.000007630   0.001373010   0.000062340  -0.002049915  -0.000023393   0.000821248

   23   11.2  0.5 -0.5  -0.326705133   0.069859786  -0.000310821  -0.000035675   0.001519552   0.000079658  -0.000673581  -0.000008235
                        -0.027514481   0.004527646  -0.001216498   0.000014053   0.001417277   0.000010389  -0.000595710  -0.000044961

   24   12.2  0.5 -0.5  -0.052603400   0.006104264  -0.002258715   0.000036666   0.002761591   0.000006468  -0.001147937  -0.000085220
                         0.618581051  -0.131158847   0.000577954   0.000060086  -0.002962307  -0.000146567   0.001209635   0.000011094

   25    1.2  1.5  1.5  -0.049786755  -0.235134333   0.000001931   0.000764046   0.000024643  -0.000870503  -0.000008890   0.000499083
                        -0.000104269   0.008498074  -0.000023596  -0.000014934   0.000022019   0.000080159   0.000026190  -0.000237144

   26    2.2  1.5  1.5   0.000065170  -0.008583685   0.000009916   0.000036506  -0.000050949  -0.000022439  -0.000034125   0.000320566
                        -0.049127522  -0.232048709  -0.000006543   0.000723271   0.000067095  -0.002415083  -0.000020416   0.000678128

   27    3.2  1.5  1.5   0.000377170   0.000886126  -0.000288231  -0.000051410  -0.000189566  -0.000003784  -0.000079083  -0.000012197
                         0.000815984   0.003740023  -0.001043796   0.000007709  -0.000166842   0.000042818  -0.000179173  -0.000023677

   28    4.2  1.5  1.5   0.008516903   0.039623590  -0.000034064   0.340771140   0.012343150  -0.384729777   0.006052377  -0.134578743
                         0.002770443   0.011995898  -0.015540378  -0.063599432   0.003366046   0.161614154  -0.006370437  -0.007047026

   29    5.2  1.5  1.5   0.004228581   0.014401646   0.011465595   0.128986031  -0.002699866  -0.138657084  -0.005345246   0.036702558
                        -0.006576324  -0.032658650  -0.000592219   0.190854450   0.013901844  -0.438053972  -0.005410679   0.278285242

   30    6.2  1.5  1.5   0.076785386  -0.016498054   0.098145244   0.013283419   0.058979566   0.005103360  -0.180615941   0.001359533
                         0.006390356  -0.000370803   0.357521340  -0.009216862   0.049953381   0.001912313   0.100651702   0.019869330

   31    7.2  1.5  1.5   0.006289269  -0.000731301  -0.335534783   0.006052355  -0.079946300   0.002509120  -0.256373505  -0.029792218
                        -0.076531970   0.016208038   0.088900090   0.015420659   0.089603762   0.003522557   0.014586343   0.004020235

   32    8.2  1.5  1.5  -0.001700150   0.000198539  -0.236540867   0.004602060  -0.190702571  -0.003575043  -0.020617279   0.009327293
                         0.019101463  -0.004048009   0.063818492   0.012123470   0.204793785   0.010396015   0.186910653   0.000606342

   33    9.2  1.5  1.5   0.000026184  -0.000000212  -0.000211554   0.000002104  -0.000167432   0.000005711  -0.000128299  -0.000013269
                        -0.000333472   0.000061663   0.000062525   0.000011439   0.000185195   0.000005587   0.000010342   0.000005664

   34    1.2  1.5  0.5  -0.135330224   0.027698095  -0.000068298  -0.000000863   0.000742415   0.000028842  -0.000465916   0.000001053
                        -0.006750975   0.000323209  -0.000430290   0.000003804   0.000656542  -0.000006357  -0.000264230  -0.000012569

   35    2.2  1.5  0.5   0.005756355  -0.004690885  -0.000784760   0.000056784  -0.000466333  -0.000031560   0.000315619   0.000035633
                        -0.134530302   0.028470980   0.000208542   0.000044214   0.000559312   0.000030854  -0.000355549  -0.000011914

   36    3.2  1.5  0.5  -0.056695203  -0.269974968   0.000032731   0.002138154   0.000051477  -0.001750964  -0.000021170   0.000566839
                         0.000103411  -0.000066087  -0.000087725   0.000021726   0.000031517  -0.000000988   0.000040239  -0.000292041

   37    4.2  1.5  0.5  -0.060449097   0.012987284  -0.198336973  -0.006056817  -0.252483880  -0.010279800  -0.359086796   0.000816162
                        -0.028187733   0.005533984  -0.115334686   0.010006785  -0.071339077   0.002409852  -0.336840033  -0.012054603

   38    5.2  1.5  0.5  -0.028324078   0.005430124   0.421262758  -0.017271115   0.158924353   0.002563418  -0.311138723  -0.018911287
                         0.060075255  -0.012941580  -0.182842517  -0.020344645  -0.302263526  -0.012817212  -0.046515183  -0.002875122

   39    6.2  1.5  0.5  -0.000293724  -0.003870260  -0.007593213  -0.412947022  -0.005209881   0.221922843   0.004471744  -0.165187735
                        -0.000613485   0.000257561   0.022540039  -0.004525860  -0.000062980   0.001741619   0.003888802   0.004404844

   40    7.2  1.5  0.5  -0.000099031   0.000037009  -0.004806021   0.003789897   0.009388984  -0.001842750  -0.005366335   0.073133115
                         0.003456337   0.015560102  -0.001988315  -0.134914650  -0.013956087   0.486271147  -0.003952964   0.172437791

   41    8.2  1.5  0.5  -0.000561633   0.000107805  -0.011858349   0.014392029  -0.002143929   0.004814459  -0.020853477   0.245563585
                         0.016408887   0.077720222  -0.002799514  -0.229923194   0.005240336  -0.208363112  -0.012931571   0.540545899

   42    9.2  1.5  0.5  -0.000007484   0.000001247   0.000010881  -0.000010188   0.000001296   0.000000079  -0.000000107  -0.000000540
                        -0.000022716   0.000024096   0.000004178   0.000247074   0.000003884  -0.000100856   0.000001461  -0.000085764

   43    1.2  1.5 -0.5   0.027628812   0.135422376  -0.000003473  -0.000433831  -0.000016682   0.000990641   0.000003254  -0.000527778
                         0.001984350   0.004541497   0.000001776   0.000040067  -0.000024372   0.000029281  -0.000012186   0.000091354

   44    2.2  1.5 -0.5  -0.002303798   0.005466054  -0.000056867   0.000008305   0.000001901   0.000042684  -0.000029516   0.000176997
                        -0.028762712  -0.134542410  -0.000044108  -0.000811954   0.000044095  -0.000726962  -0.000023248   0.000441251

   45    3.2  1.5 -0.5  -0.269042841   0.056489688  -0.000549023  -0.000076926   0.001277484   0.000059104  -0.000434905  -0.000006337
                        -0.022415116   0.004824095  -0.002066579   0.000053379   0.001197460   0.000012243  -0.000466317  -0.000045025

   46    4.2  1.5 -0.5   0.013402997   0.062586365  -0.008201316  -0.160738148   0.005847006  -0.232929166   0.003302925  -0.451747788
                        -0.004433305  -0.023056204   0.008340215  -0.163715890   0.008791711  -0.120753374  -0.011621973   0.195776579

   47    5.2  1.5 -0.5   0.004333613   0.023223206   0.023979370  -0.073159061   0.006901532  -0.090950000   0.018771154  -0.308567087
                         0.013348803   0.062225174   0.011712635   0.453366793  -0.011100491   0.329163009   0.003680611  -0.061296990

   48    6.2  1.5 -0.5  -0.003835371   0.000343789   0.106353853   0.019967085  -0.163018607  -0.003842158   0.153994504   0.005522351
                        -0.000578945  -0.000586896   0.399042083  -0.012923845  -0.150591218  -0.003519182   0.059933987  -0.002150098

   49    7.2  1.5 -0.5   0.001332579  -0.000189124   0.129801032  -0.003113485  -0.331410317  -0.002703637  -0.127072649  -0.006386049
                        -0.015502980   0.003452579  -0.036986730  -0.004166226   0.355851410   0.016601679   0.137607363   0.001908365

   50    8.2  1.5 -0.5   0.006579239  -0.000806695   0.219249566  -0.005640981   0.139071607   0.002022589  -0.413691100  -0.023995539
                        -0.077441321   0.016398666  -0.070720815  -0.010799864  -0.155233546  -0.005288354   0.425853284   0.005129047

   51    9.2  1.5 -0.5   0.000003249   0.000009350  -0.000236907   0.000006735   0.000068958   0.000003603   0.000029473   0.000000392
                        -0.000023909  -0.000022014   0.000070882   0.000009512  -0.000073599  -0.000001946  -0.000080543  -0.000001411

   52    1.2  1.5 -1.5   0.233610066  -0.049622527   0.000174192   0.000022388  -0.000579921  -0.000033037   0.000389670  -0.000000477
                         0.028048333  -0.004041865   0.000744074  -0.000007697  -0.000654134  -0.000000807   0.000391763   0.000027654

   53    2.2  1.5 -1.5   0.027876705  -0.004025934   0.000709888   0.000003892  -0.001668997  -0.000008761   0.000530752   0.000039015
                        -0.230528030   0.048962327  -0.000143220  -0.000011224   0.001745731   0.000083790  -0.000530022  -0.000007691

   54    3.2  1.5 -1.5  -0.001194483   0.000443807  -0.000005225   0.001082646   0.000026541   0.000252401  -0.000019476   0.000134947
                         0.003653245  -0.000781743  -0.000051722   0.000021564  -0.000033812   0.000008058   0.000018167  -0.000141937

   55    4.2  1.5 -1.5  -0.040484882   0.008718020   0.022515900   0.015067564  -0.169954005  -0.011304039  -0.129051525  -0.003545317
                         0.008654756  -0.002051614   0.345923246  -0.003804344  -0.381119105  -0.005991854  -0.038817562  -0.008040177

   56    5.2  1.5 -1.5  -0.011632124   0.003666281   0.216794673  -0.002257295  -0.400868345  -0.007544244   0.128529849   0.006858505
                        -0.033744459   0.006905600   0.077864542  -0.011256785   0.224547634   0.011984779  -0.249539238  -0.003287554

   57    6.2  1.5 -1.5   0.016471633   0.077050837  -0.005651405  -0.370685081   0.005029976  -0.077191047   0.007990014   0.136011309
                         0.001004288   0.000025801   0.015147983  -0.006824071   0.002097752  -0.003933401  -0.018242761   0.155736349

   58    7.2  1.5 -1.5  -0.000620892  -0.000105436   0.016437636  -0.003294297   0.004240135  -0.003018528  -0.026684046   0.236384119
                         0.016212643   0.076789883   0.002057146   0.347096477  -0.000851675   0.120046380  -0.013845589   0.100312935

   59    8.2  1.5 -1.5   0.000139231  -0.000103655   0.012884429  -0.003433739   0.004507033  -0.001078941   0.008984045  -0.043718403
                        -0.004050483  -0.019176695   0.001465929   0.244974674  -0.010027199   0.279833524   0.002579339   0.182891681

   60    9.2  1.5 -1.5  -0.000004923  -0.000001675   0.000011605  -0.000008350   0.000007988  -0.000004637  -0.000010577   0.000117268
                         0.000061467   0.000334495  -0.000000785   0.000220442  -0.000000166   0.000249618  -0.000009813   0.000053064


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000000117   0.000006458  -0.000022899   0.000004169  -0.000001169  -0.000011405   0.000001436  -0.000007324
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000012531  -0.000001273  -0.000000972  -0.000001330  -0.000005177   0.000000554  -0.000005343  -0.000000971
                         0.000014485   0.000000015   0.000001122   0.000005576  -0.000017597   0.000001727   0.000007494   0.000001325

    3    3.2  0.5  0.5  -0.000001268   0.000000810  -0.000006239  -0.000033418   0.000007077  -0.000000540   0.000009002   0.000001690
                        -0.000005100   0.000000139  -0.000000836  -0.000007376  -0.000001996   0.000000089   0.000006217   0.000000931

    4    4.2  0.5  0.5   0.000095863   0.000315420   0.003299641  -0.019050909  -0.049777664  -0.001837482   0.036362489   0.016427542
                         0.000068080   0.001526649  -0.192706188   0.040678306   0.082917592   0.648623068   0.028706691   0.037165135

    5    5.2  0.5  0.5  -0.000751787  -0.000033438   0.263175836  -0.018487949   0.078361331  -0.365705592  -0.221294432   0.450165410
                        -0.000308862   0.000644911   0.003107141   0.002289179  -0.039430788   0.015045901  -0.098357798  -0.013392609

    6    6.2  0.5  0.5   0.001848402   0.000098928   0.065122974  -0.112516979  -0.371997406  -0.075289161   0.381154199   0.228371473
                         0.000647746   0.000166752   0.017564572  -0.017899223   0.100046182  -0.082622451   0.306847345   0.052352244

    7    7.2  0.5  0.5  -0.000062552  -0.000000836   0.014470001   0.098110737  -0.043422244   0.006808181   0.280745699   0.054888283
                         0.000105284   0.000005208  -0.091639328  -0.460438202  -0.122091838   0.020072705  -0.372227812  -0.069260881

    8    8.2  0.5  0.5   0.000014879  -0.000446024  -0.003705175   0.009938510  -0.006628408   0.002538878   0.001270528  -0.002709002
                        -0.000134975   0.000977584   0.645776784  -0.122136165   0.023821614   0.193469967  -0.011566657   0.054512113

    9    9.2  0.5  0.5  -0.000189815   0.000021845   0.000002209  -0.000057701  -0.000061487   0.000009333   0.000047100   0.000006548
                        -0.000208779  -0.000069908   0.000044016   0.000248463  -0.000206138   0.000016347  -0.000075165  -0.000012580

   10   10.2  0.5  0.5   0.000154838   0.000072880   0.000043493   0.000236695  -0.000014463  -0.000001417  -0.000063752  -0.000015726
                        -0.000255648   0.000016662   0.000027452   0.000058268   0.000001469   0.000006869  -0.000053471  -0.000009949

   11   11.2  0.5  0.5   0.000070672  -0.000083006  -0.000519399   0.000094947  -0.000008093  -0.000093582   0.000115136  -0.000683032
                         0.000017708  -0.000283025  -0.000001698   0.000019021  -0.000006765  -0.000001517   0.000009916  -0.000011147

   12   12.2  0.5  0.5  -0.000043879   0.000569217   0.000002397  -0.000028447   0.000000792   0.000001064  -0.000007652   0.000014285
                         0.000134382   0.000026233  -0.000237821   0.000037010  -0.000005083  -0.000058424   0.000060864  -0.000382896

   13    1.2  0.5 -0.5   0.000003223   0.000000058   0.000000901   0.000004949  -0.000003256   0.000000334  -0.000004337  -0.000000851
                        -0.000005595  -0.000000101  -0.000004070  -0.000022358  -0.000010931   0.000001121   0.000005902   0.000001158

   14    2.2  0.5 -0.5  -0.000000649   0.000018807  -0.000005731   0.000001306   0.000001813   0.000018343  -0.000001643   0.000009202
                         0.000001096  -0.000003628   0.000000093  -0.000000706   0.000000038  -0.000000063  -0.000000002   0.000000132

   15    3.2  0.5 -0.5   0.000000284  -0.000003786  -0.000000020   0.000000531  -0.000000069  -0.000000108   0.000000251  -0.000000320
                        -0.000000771  -0.000003644   0.000034223  -0.000006272  -0.000000543  -0.000007353  -0.000001913   0.000010936

   16    4.2  0.5 -0.5  -0.001165395   0.000011139  -0.043834042  -0.188865780   0.621097819  -0.065253359  -0.020223213   0.001603338
                        -0.001035375   0.000117049   0.009810119  -0.038422388  -0.186956573   0.071380264  -0.035243908   0.046300476

   17    5.2  0.5 -0.5  -0.000575508   0.000107643  -0.006230358  -0.053838923  -0.089997092   0.015415565   0.277336606   0.051766068
                        -0.000292949  -0.000805601   0.017556401   0.257628696  -0.354778075  -0.086357661  -0.354841747  -0.236570827

   18    6.2  0.5 -0.5  -0.000095109  -0.000361401  -0.006838786   0.003076377  -0.100679723   0.010331612   0.093030564   0.021594550
                        -0.000168959   0.001924982   0.113726354   0.067379907  -0.048564601   0.385077351  -0.215033954   0.488843014

   19    7.2  0.5 -0.5  -0.000004930   0.000122453   0.470760341  -0.092600963   0.021181006   0.129407418   0.088314247  -0.466194724
                        -0.000001876  -0.000001646   0.003708831  -0.005675292   0.000793592   0.006754883  -0.003222893   0.005845540

   20    8.2  0.5 -0.5  -0.001069722  -0.000124383   0.121397928   0.631318381   0.186141184  -0.020937427  -0.045533289  -0.010073421
                        -0.000101504  -0.000054484   0.016690114   0.135935590  -0.052806570   0.013154058  -0.030093667  -0.005824773

   21    9.2  0.5 -0.5   0.000071480  -0.000086157  -0.000255061   0.000042498   0.000018331   0.000215113   0.000014015  -0.000088461
                         0.000015967  -0.000268693   0.000002645   0.000011669   0.000004277   0.000000071   0.000002172  -0.000006550

   22   10.2  0.5 -0.5   0.000021943  -0.000298811  -0.000005741   0.000017404   0.000006179   0.000002721  -0.000001294  -0.000005343
                        -0.000071468   0.000006554  -0.000243693   0.000048398  -0.000003320   0.000014280   0.000018563  -0.000083036

   23   11.2  0.5 -0.5   0.000203807  -0.000019934   0.000001947   0.000110585  -0.000028174   0.000008795  -0.000395442  -0.000060181
                         0.000213204   0.000070076  -0.000096814  -0.000507493  -0.000089254   0.000005825   0.000557030   0.000098655

   24   12.2  0.5 -0.5   0.000261407   0.000138345  -0.000042283  -0.000232719  -0.000055688   0.000004645   0.000317020   0.000053579
                        -0.000506323   0.000029059   0.000019777  -0.000049053   0.000017701  -0.000002211   0.000215202   0.000029872

   25    1.2  1.5  1.5  -0.000050001   0.000033237  -0.021560822   0.004084091   0.006021905   0.055732400   0.003889207  -0.021764481
                        -0.000007240   0.000183764  -0.001874291   0.001093897   0.001185668   0.000939827   0.000463876  -0.001015414

   26    2.2  1.5  1.5   0.000023257  -0.000263580  -0.000948831   0.001115649   0.000550603   0.001940215  -0.000091576  -0.001016358
                        -0.000067019  -0.000031261   0.052180466  -0.009521794  -0.003181087  -0.029585463  -0.004077932   0.025885420

   27    3.2  1.5  1.5   0.000173318   0.000013018  -0.000249374  -0.003937096  -0.003471855   0.000301938  -0.028401303  -0.004931525
                        -0.000100031   0.000013479   0.002628820   0.017906747  -0.011593746   0.001638233   0.039146403   0.006890407

   28    4.2  1.5  1.5   0.000195036   0.138632102   0.251238653  -0.047823069  -0.001720408  -0.005390926  -0.016090314   0.085990079
                         0.017190553  -0.101560977   0.009155086  -0.005784904   0.011259870   0.093833691   0.002725905  -0.019019021

   29    5.2  1.5  1.5   0.003673764  -0.025325903   0.093159891  -0.015828943   0.005724819  -0.002624794  -0.005598122   0.031397407
                        -0.006297343   0.057314480  -0.022265689   0.001368978  -0.028762063  -0.254550845  -0.009826759   0.053118046

   30    6.2  1.5  1.5  -0.381368013  -0.032762095   0.000627093   0.018034384  -0.023771178   0.004949727  -0.010424054  -0.002464354
                         0.428212207  -0.010665510  -0.015583658  -0.083937428  -0.079719872   0.011250115   0.013897736   0.002078511

   31    7.2  1.5  1.5  -0.347046188   0.024203456  -0.023775417  -0.124170114  -0.067275558   0.007297508  -0.050915365  -0.009512001
                        -0.416571876  -0.030461833  -0.003566404  -0.026735481   0.019956837  -0.005070424  -0.037083390  -0.006493395

   32    8.2  1.5  1.5   0.282470072  -0.000734265  -0.016910727  -0.085314795   0.094475969  -0.009556432  -0.233477477  -0.043703205
                         0.201933744   0.021191478  -0.001366494  -0.018748317  -0.027794960   0.004630107  -0.169648125  -0.030050096

   33    9.2  1.5  1.5  -0.000167540   0.000008758  -0.000160751  -0.000835105   0.000480385  -0.000044845   0.000039160   0.000007973
                        -0.000198334  -0.000012300  -0.000029821  -0.000183421  -0.000142397   0.000016851   0.000021190   0.000002763

   34    1.2  1.5  0.5  -0.000075948  -0.000019145  -0.000042505   0.000163666  -0.009794613   0.001665202  -0.026922117  -0.004780279
                         0.000322531   0.000032391  -0.001343577  -0.007798641  -0.031823368   0.003306482   0.034711197   0.006516225

   35    2.2  1.5  0.5  -0.000030670  -0.000035132   0.006980448   0.040899877   0.009896439  -0.001865380   0.030945097   0.005687481
                         0.000199630   0.000004553   0.001020638   0.008611569  -0.004158034   0.000948312   0.024388018   0.004337473

   36    3.2  1.5  0.5  -0.000050106  -0.000072798  -0.050564258   0.008752374  -0.005339481  -0.045145046   0.000572431  -0.005391259
                        -0.000023429   0.000229709  -0.000239225   0.000408818  -0.001063363   0.000118909  -0.000433294  -0.000126387

   37    4.2  1.5  0.5   0.077242251  -0.015895100   0.013296556   0.072386345   0.001263321   0.002718749  -0.027550317  -0.005034081
                         0.293461357   0.032823824  -0.020075288  -0.104433200  -0.135047886   0.015326722   0.052592170   0.010276582

   38    5.2  1.5  0.5  -0.132130266   0.011688907  -0.020759129  -0.120507392  -0.116238176   0.011208110  -0.031436696  -0.006715691
                        -0.127105820  -0.006172110  -0.011962186  -0.070419854  -0.015603417  -0.001304531   0.003910769   0.000343758

   39    6.2  1.5  0.5   0.012376469  -0.199193052   0.203179688  -0.037384389  -0.022716703  -0.226929463   0.016801396  -0.088930770
                        -0.006125855  -0.003686806   0.000759129  -0.003692354  -0.003431818  -0.000143706  -0.000014662   0.000399219

   40    7.2  1.5  0.5   0.003728040  -0.059762637  -0.000928786   0.001257876   0.002799978   0.000467441   0.001773826  -0.001381830
                        -0.008338892   0.003877017   0.045037506  -0.008509693  -0.015275954  -0.141800023  -0.051960977   0.282901455

   41    8.2  1.5  0.5   0.025957183  -0.211629983   0.000359098  -0.001420158   0.001847592  -0.000017435  -0.000619863   0.000578868
                        -0.030899439  -0.050113009  -0.118271447   0.022151467  -0.006796181  -0.057451067   0.014832706  -0.080976267

   42    9.2  1.5  0.5   0.000001230   0.000000980   0.000001294   0.000011851  -0.000013300   0.000001737   0.000009552  -0.000004334
                        -0.000003060  -0.000094810   0.000901601  -0.000169568   0.000042072   0.000364799  -0.000110590   0.000640928

   43    1.2  1.5 -0.5   0.000037624  -0.000317385  -0.007649735   0.001302644  -0.003644291  -0.033295207   0.008081598  -0.043913110
                        -0.000000421  -0.000095190  -0.001525498   0.000331849  -0.000651814  -0.000300644   0.000006023   0.001142950

   44    2.2  1.5 -0.5   0.000021483  -0.000188290  -0.000430431   0.000511963  -0.000376230  -0.001159303   0.000127837  -0.001330731
                        -0.000028170  -0.000073075   0.041794422  -0.007036067   0.002058492   0.010671681   0.007151557  -0.039377704

   45    3.2  1.5 -0.5   0.000235382  -0.000004710  -0.001492241  -0.010693430   0.012775905  -0.002543632   0.003090326   0.000688113
                         0.000051585   0.000055112   0.008633910   0.049421169   0.043299718  -0.004813599  -0.004419449  -0.000204747

   46    4.2  1.5 -0.5   0.036376323  -0.215727529  -0.117608327   0.022474331  -0.015464968  -0.129065464   0.011262206  -0.058694679
                         0.002611656  -0.213418765   0.048107771  -0.008644075   0.001770528   0.039769755   0.002028010  -0.008938174

   47    5.2  1.5 -0.5  -0.011182941   0.044181484  -0.042714093   0.007193456  -0.001949925  -0.048142338   0.004253398  -0.021765285
                         0.007047505   0.177939013  -0.132877739   0.022853654  -0.011114015  -0.106944357  -0.005208385   0.023018088

   48    6.2  1.5 -0.5   0.096237315   0.011486073   0.004473708   0.043166208   0.064930877  -0.009775058   0.052977834   0.009959961
                        -0.174441520  -0.007666369  -0.037298954  -0.198542792   0.217441907  -0.020791205  -0.071429618  -0.013530938

   49    7.2  1.5 -0.5   0.033191380   0.009086606  -0.008580446  -0.044174024   0.135763766  -0.013840600   0.228797934   0.042923703
                        -0.049849133   0.000932202  -0.000610803  -0.008825825  -0.040934883   0.007045029   0.166393053   0.029336757

   50    8.2  1.5 -0.5   0.062217104   0.039731568   0.021934946   0.115554406   0.055064496  -0.005985746  -0.065598508  -0.012320148
                        -0.208392878  -0.007067761   0.003400361   0.025208003  -0.016386783   0.003711135  -0.047479750  -0.008282956

   51    9.2  1.5 -0.5  -0.000082642   0.000003265  -0.000168123  -0.000880017  -0.000350109   0.000036523   0.000519066   0.000094776
                        -0.000046478   0.000000462  -0.000025073  -0.000196101   0.000102493  -0.000024758   0.000376003   0.000057783

   52    1.2  1.5 -1.5  -0.000142641   0.000018686  -0.000185472   0.002829319   0.016813482  -0.002855692  -0.012068516  -0.001928988
                        -0.000120530  -0.000046940  -0.004223980  -0.021456397   0.053144055  -0.005432695   0.018140414   0.003408829

   53    2.2  1.5 -1.5  -0.000104485  -0.000069681   0.009537896   0.051152534  -0.027799920   0.002891457  -0.021461884  -0.003232031
                         0.000243997  -0.000013301   0.000968385   0.010349857   0.010306723  -0.001435950  -0.014507773  -0.002488351

   54    3.2  1.5 -1.5  -0.000005181  -0.000173193  -0.018334439   0.002620593   0.001656247   0.012102414  -0.008472690   0.048363107
                        -0.000018008   0.000100248  -0.000025605   0.000324610  -0.000178381   0.000017071  -0.000105694   0.000291126

   55    4.2  1.5 -1.5   0.157204284   0.014798291  -0.004686416  -0.045354245   0.088388398  -0.010299936   0.066241649   0.011723818
                        -0.069428412   0.008750072   0.047943180   0.247280547  -0.031958015   0.004863722  -0.058034996  -0.011352571

   56    5.2  1.5 -1.5  -0.062305132  -0.007290507  -0.004757286  -0.041871547  -0.244703943   0.025930211  -0.024215377  -0.004604358
                        -0.006664942   0.000039856   0.015159082   0.086146965   0.070164111  -0.013698685  -0.056753322  -0.010329765

   57    6.2  1.5 -1.5  -0.007112292   0.561415592   0.085851320  -0.015350947   0.012195052   0.083188500  -0.003134144   0.017371775
                         0.033712361  -0.116703835   0.000530740  -0.002755374   0.001531537   0.000019934   0.000755240  -0.000171475

   58    7.2  1.5 -1.5   0.038476966  -0.187723997  -0.000729579   0.001655766  -0.002775762   0.000082511  -0.000399293   0.000262984
                        -0.005766594  -0.508657925   0.127013665  -0.023984331   0.008441443   0.070173137   0.011510122  -0.062987960

   59    8.2  1.5 -1.5  -0.018728983   0.033974338  -0.000131328   0.002320225   0.001708803  -0.000336961  -0.001660517   0.001529457
                        -0.009941987   0.345560880   0.087350423  -0.016806444  -0.010480614  -0.098479211   0.053011519  -0.288599861

   60    9.2  1.5 -1.5   0.000015030  -0.000088226  -0.000001381   0.000005622   0.000003345  -0.000000691   0.000002494  -0.000006111
                        -0.000001449  -0.000244177   0.000855009  -0.000163397  -0.000047790  -0.000501045  -0.000008061   0.000044104


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5  -0.000653090  -0.010587006   0.000773126   0.007526274  -0.003910499  -0.000000445  -0.000000622  -0.000006856
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000878612  -0.000301394   0.004694237  -0.000829695   0.000001199  -0.003281153  -0.000003137   0.000000198
                         0.000875175   0.000015936  -0.011987110   0.001261596  -0.000023346  -0.002136688  -0.000002456   0.000000280

    3    3.2  0.5  0.5  -0.007542511   0.000390359   0.004952194  -0.000614071   0.000000678  -0.002130713  -0.000000619   0.000000066
                         0.009127504  -0.000537390   0.002039291  -0.000431944  -0.000090307   0.003272974   0.000001262  -0.000000040

    4    4.2  0.5  0.5   0.005361321  -0.004081473   0.011638559  -0.006471919  -0.000014269   0.000026585  -0.015769454   0.006435129
                        -0.012182708  -0.045535714  -0.023494521  -0.266480799  -0.000225121  -0.000033027   0.018850489   0.002967544

    5    5.2  0.5  0.5  -0.030111084  -0.149175196  -0.095673236  -0.202657536  -0.000683574  -0.000061857   0.062921058   0.237045046
                         0.024322684  -0.000041771  -0.019794788   0.003072705  -0.000000214   0.000068064  -0.069783710   0.003225454

    6    6.2  0.5  0.5   0.061178301  -0.051901583   0.210631775  -0.089350330  -0.000219605   0.000161452  -0.136059106   0.091630612
                        -0.086368058   0.010467466   0.088966056   0.007594053   0.000031166  -0.000257949   0.199192833  -0.014452893

    7    7.2  0.5  0.5   0.210523856  -0.013874012  -0.005140916  -0.000720792  -0.000005726  -0.000190679   0.199975725  -0.010821690
                         0.170794668  -0.009106655   0.025802455  -0.004271150  -0.000005603  -0.000138247   0.141746222  -0.014277370

    8    8.2  0.5  0.5  -0.000976186   0.001190043  -0.002222538   0.001813592   0.000008556  -0.000008246   0.000854119  -0.001251308
                         0.015042634   0.267608426  -0.004510829  -0.046274407   0.000003852   0.000004918   0.001364676   0.012112140

    9    9.2  0.5  0.5  -0.034457031   0.001567728  -0.199446330   0.043084770  -0.005643303   0.192313833  -0.000304002   0.000030182
                        -0.040940167  -0.000438115   0.504906246  -0.053043398   0.001407072   0.122391722  -0.000208343   0.000022723

   10   10.2  0.5  0.5  -0.318485119   0.015535579   0.206865091  -0.024782167  -0.000522076  -0.122944238   0.000116114  -0.000010913
                         0.384484826  -0.022666258   0.091238716  -0.018765347  -0.005274075   0.193152352  -0.000192161   0.000015684

   11   11.2  0.5  0.5   0.025954150   0.446783554  -0.037057906  -0.316726914   0.228558506   0.004508202  -0.000014783  -0.000152988
                        -0.000101454  -0.000064097   0.012631758  -0.001348262   0.000035991   0.003472584   0.000001214   0.000005143

   12   12.2  0.5  0.5  -0.000001020   0.000000733   0.000001503  -0.000001283  -0.000013355  -0.005722077  -0.000004860  -0.000004137
                         0.000006538   0.000098203   0.000018012   0.000171380   0.325334362   0.005253358  -0.000004556  -0.000033749

   13    1.2  0.5 -0.5  -0.008189084   0.000505167   0.002715916  -0.000278989  -0.000000371   0.003264258  -0.000005686   0.000000516
                        -0.006709963   0.000413923  -0.007019159   0.000721033  -0.000000245   0.002153280  -0.000003830   0.000000347

   14    2.2  0.5 -0.5  -0.000223029  -0.001234289  -0.001475993  -0.012873380  -0.003915464   0.000011854   0.000000320   0.000003974
                        -0.000203347   0.000120093   0.000318534   0.000052300  -0.000023153  -0.000020148  -0.000000122  -0.000000284

   15    3.2  0.5 -0.5  -0.000038649   0.000049215   0.000181248   0.000114847   0.000023637   0.000049161   0.000000033  -0.000000192
                         0.000663080   0.011840539   0.000728566   0.005354414  -0.003905348  -0.000075756   0.000000070   0.000001393

   16    4.2  0.5 -0.5  -0.032017219   0.003574308   0.246190093  -0.026111345   0.000004005   0.000135872   0.006995126   0.002548175
                         0.032635216  -0.012821328   0.102197555   0.002376178   0.000042208  -0.000180061   0.001133761   0.024444292

   17    5.2  0.5 -0.5  -0.115413973   0.007875490  -0.075996247   0.016063415  -0.000014156   0.000570726   0.198406621  -0.013201365
                        -0.094513786   0.037897849   0.187893823  -0.096369956  -0.000090877   0.000376225   0.129751955  -0.093029832

   18    6.2  0.5 -0.5  -0.033511843   0.007417798  -0.039325146   0.006963448  -0.000007266   0.000166153   0.067924023   0.001566461
                        -0.040991444  -0.105580311   0.080589602   0.228543681   0.000304224   0.000146939   0.063177387   0.241220669

   19    7.2  0.5 -0.5  -0.016503321  -0.271089239   0.003723260   0.025919046  -0.000235292   0.000007865  -0.016951658  -0.245047152
                        -0.001749215  -0.001318176   0.002213504   0.004516496   0.000010404  -0.000001524   0.005795998   0.005845974

   20    8.2  0.5 -0.5   0.170528672  -0.008778823   0.043810923  -0.003404872  -0.000004175  -0.000009263   0.005728713  -0.001470792
                        -0.206241747   0.012254226   0.015007093  -0.003700553  -0.000008646  -0.000001496  -0.010744839   0.000654699

   21    9.2  0.5 -0.5   0.000934969   0.052600190   0.065016857   0.542857856   0.227926366   0.003935912   0.000037727   0.000368531
                         0.001332498  -0.009828750  -0.021040622  -0.003808374   0.003730307   0.004281975  -0.000001985  -0.000002966

   22   10.2  0.5 -0.5  -0.002348880   0.002665739   0.008558112   0.010442216   0.003730822   0.003339920  -0.000000290   0.000011048
                         0.027378755   0.499253689   0.029883989   0.225850901  -0.228930552  -0.004115017  -0.000019105  -0.000224246

   23   11.2  0.5 -0.5   0.345547906  -0.020011319  -0.113036000   0.025153279   0.005675333  -0.190807265  -0.000124014   0.000011583
                         0.283217572  -0.016528016   0.295872639  -0.030002704  -0.000416312  -0.125823605  -0.000089733   0.000009266

   24   12.2  0.5 -0.5   0.000062807  -0.000003355  -0.000160295   0.000016256  -0.001883746  -0.179131239  -0.000022286   0.000006576
                        -0.000075495   0.000005704  -0.000060647   0.000007902  -0.007536010   0.271577698   0.000025681  -0.000001063

   25    1.2  1.5  1.5   0.004108773   0.078432807  -0.006392801  -0.055647237   0.412651886   0.006918902   0.010917107   0.126553947
                        -0.000099834  -0.002798581   0.002766994   0.001681830  -0.014487924   0.007027096  -0.001207866   0.004010176

   26    2.2  1.5  1.5  -0.001326073   0.002850051  -0.003148528  -0.001545691   0.014458027  -0.007023709   0.001591085   0.003555431
                         0.003385420   0.079123656  -0.004194225  -0.055997082   0.412882683   0.006916534  -0.008619094  -0.134137406

   27    3.2  1.5  1.5  -0.074896827   0.004142339  -0.049046087   0.010776828  -0.001609973   0.000263134   0.212735089  -0.014890014
                        -0.062255613   0.001009918   0.126174427  -0.012751400  -0.006649032  -0.000016535   0.145510266  -0.012731434

   28    4.2  1.5  1.5   0.004262310   0.073729269  -0.006686205  -0.052094298  -0.048942420  -0.000829486  -0.011831173  -0.150346759
                         0.001807072   0.027299658  -0.000024967  -0.019581764  -0.018050017  -0.001225937   0.006441569   0.047548923

   29    5.2  1.5  1.5   0.002365225   0.027155108  -0.000509592  -0.019422891  -0.018045712  -0.002059448  -0.006599974  -0.056291274
                        -0.003326788  -0.074051509   0.007237044   0.052260414   0.048843496  -0.000344565  -0.008953121  -0.126730024

   30    6.2  1.5  1.5   0.060941027  -0.004087425  -0.019919510   0.004665299   0.002769385  -0.087185160   0.006682942   0.000502321
                         0.049650282  -0.001774032   0.052162503  -0.005683959  -0.001119794  -0.057195571   0.005457868   0.000646479

   31    7.2  1.5  1.5   0.057298799  -0.002864177   0.033072526  -0.003043462  -0.000561800  -0.055560026  -0.063883439   0.006512543
                        -0.070111789   0.003916397   0.012338816  -0.002533329  -0.002236234   0.084775039   0.093353031  -0.006442868

   32    8.2  1.5  1.5   0.022880350  -0.000691859  -0.083547296   0.008940344   0.000155451   0.013701245  -0.278466704   0.028631024
                        -0.027477645   0.001680000  -0.032506969   0.006964061   0.000541660  -0.020602091   0.407638341  -0.027605578

   33    9.2  1.5  1.5  -0.191373898   0.007022299   0.388907056  -0.042102828   0.000000813  -0.000164211   0.000015370   0.000000872
                         0.230454950  -0.013684416   0.151467619  -0.032590456  -0.000006888   0.000240297  -0.000003865  -0.000000006

   34    1.2  1.5  0.5   0.114088050  -0.006853268   0.010096867  -0.001561897  -0.003891685   0.203596880   0.185172715  -0.012480072
                         0.092428600  -0.004217789  -0.010958624   0.001592509   0.001576316   0.124271944   0.135665408  -0.013787256

   35    2.2  1.5  0.5  -0.017776615   0.000666604  -0.132686563   0.014276976   0.006164679  -0.124153599   0.128884394  -0.012652315
                         0.030302685  -0.001669077  -0.051799673   0.011097887  -0.005463268   0.203734959  -0.174301077   0.011515200

   36    3.2  1.5  0.5  -0.002618524  -0.045639089   0.005780577   0.032092072   0.476875445   0.009043566  -0.001336090   0.013278614
                        -0.000948044   0.000058641  -0.000356559  -0.000050626   0.000104738   0.004674890   0.002138817  -0.000137194

   37    4.2  1.5  0.5  -0.052929684   0.003030399  -0.001415760   0.003240141  -0.002147973   0.053773195   0.089048372  -0.006179090
                        -0.018727248   0.000324059   0.078208825  -0.009654977  -0.000285757   0.072906258   0.030284301  -0.004760067

   38    5.2  1.5  0.5   0.018652672   0.000303677  -0.077997302   0.010407744  -0.000239369   0.072807744  -0.010611652   0.003712448
                        -0.052858345   0.002961451  -0.001352649   0.003126690   0.002127458  -0.053376494   0.074953459  -0.004659641

   39    6.2  1.5  0.5   0.002764051   0.056113194   0.010444893   0.078028829   0.000169923  -0.001007612   0.012594885   0.166895869
                         0.001275331  -0.000425209  -0.003107433  -0.000471543  -0.000189374   0.000389549  -0.003885930  -0.002589201

   40    7.2  1.5  0.5   0.000631830  -0.000519075  -0.003450297  -0.000327007   0.000010005   0.000500008  -0.008337846  -0.003433674
                        -0.001771597  -0.035902839  -0.010935386  -0.089573643  -0.025051410  -0.000603596  -0.038847546  -0.491354760

   41    8.2  1.5  0.5  -0.000399826   0.000063916  -0.001365771   0.000193145   0.000006255   0.001732261   0.002147998   0.000579150
                         0.004965614   0.090365707  -0.003874627  -0.035551138  -0.101419499  -0.001634527   0.010498345   0.130073292

   42    9.2  1.5  0.5  -0.001393711   0.000143041  -0.011384768   0.001250615  -0.000001397   0.000004819  -0.000004887  -0.000002202
                         0.023282026   0.420017014  -0.033746623  -0.297946361   0.000069706  -0.000011623   0.000015931   0.000106314

   43    1.2  1.5 -0.5   0.007974227   0.146828015   0.002048830   0.013863776  -0.238380131  -0.002380570   0.018053310   0.229372468
                         0.001081075   0.000814309  -0.000881988  -0.005462042  -0.008373713  -0.003458738  -0.004463029  -0.009072381

   44    2.2  1.5 -0.5   0.000542228   0.005455340   0.005198160   0.000428454  -0.008548532   0.002137620   0.004060746   0.009521750
                        -0.001713525  -0.034705907   0.017319765   0.142438572   0.238430225   0.007954945   0.016619003   0.216567285

   45    3.2  1.5 -0.5   0.035264818  -0.002626300  -0.011627893   0.002418501  -0.010123232   0.398125766  -0.010936612   0.000086717
                         0.028971064  -0.000926285   0.029911465  -0.005262419  -0.001077428   0.262499668  -0.007531994  -0.002520348

   46    4.2  1.5 -0.5  -0.002549409  -0.052810469  -0.010173663  -0.073450065  -0.085031922  -0.001950353   0.007784175   0.090775116
                        -0.001669983  -0.019060841  -0.000462252  -0.026901907   0.031248218  -0.000944228  -0.000495991   0.024629857

   47    5.2  1.5 -0.5  -0.002111840  -0.019073312  -0.000839701  -0.026884436  -0.031384424   0.000971654  -0.000475951   0.033072075
                         0.002098224   0.052708022   0.010834770   0.073230020  -0.084646533  -0.001907686  -0.005938687  -0.068094538

   48    6.2  1.5 -0.5  -0.043134244   0.002946298  -0.028597092   0.006667179   0.000626595   0.000037565  -0.136976628   0.008275267
                        -0.035893013   0.000765362   0.072601149  -0.008619782   0.000880005   0.000251645  -0.095385211   0.010259218

   49    7.2  1.5 -0.5   0.023156450  -0.000634101  -0.083420240   0.008953502  -0.000085013  -0.013785978   0.277347211  -0.028617890
                        -0.027441977   0.001770785  -0.032628332   0.007163940  -0.000779172   0.020916980  -0.405610422   0.027562073

   50    8.2  1.5 -0.5  -0.057322532   0.002837901  -0.033225429   0.003120708  -0.000545954  -0.055840497  -0.073146847   0.007646532
                         0.069857659  -0.004094325  -0.012648779   0.002671937  -0.002318263   0.084662587   0.107558986  -0.007507310

   51    9.2  1.5 -0.5  -0.266314207   0.013677930  -0.278322267   0.027364519   0.000002377   0.000037217  -0.000057567   0.000004847
                         0.324793866  -0.018892046  -0.106349957   0.022795408  -0.000012356  -0.000058956   0.000089406  -0.000015943

   52    1.2  1.5 -1.5   0.058894312  -0.003114875  -0.021649257   0.004887449   0.009644907  -0.336480331   0.107203913  -0.008379843
                         0.051874823  -0.002681331   0.051290869  -0.004963568  -0.002055984  -0.239316665   0.067374359  -0.007100732

   53    2.2  1.5 -1.5   0.052352491  -0.001119931   0.051666269  -0.002775450  -0.002054460  -0.239418794  -0.071988084   0.003495484
                        -0.059396065   0.003459088   0.021648535  -0.004449902  -0.009641064   0.336689449   0.113239571  -0.008037532

   54    3.2  1.5 -1.5   0.003844191   0.097390069   0.015781125   0.135371564   0.000210544   0.005005141  -0.019462267  -0.257732557
                         0.001844208  -0.000685884  -0.005449250  -0.000210359   0.000158695  -0.004663712   0.002241000   0.001839743

   55    4.2  1.5 -1.5   0.074332143  -0.004442219  -0.000536280   0.002389485  -0.001367458   0.050793383  -0.098133715   0.006214117
                         0.025612671  -0.001303644   0.055650460  -0.006244703   0.000566593   0.011882583  -0.123429422   0.011952206

   56    5.2  1.5 -1.5  -0.025928715   0.000278984  -0.055748054   0.006933308  -0.001908840  -0.011831705  -0.117486630   0.010475739
                         0.074489782  -0.004072343  -0.000744392   0.002136289  -0.000846393   0.050708437   0.073662056  -0.003738572

   57    6.2  1.5 -1.5  -0.004286004  -0.078606050   0.006984488   0.055835948  -0.104271356  -0.001695119   0.000777785  -0.008591901
                        -0.001218360  -0.000219301  -0.002299853   0.000245903  -0.000264150  -0.002459676  -0.000255562   0.000793265

   58    7.2  1.5 -1.5   0.000266733   0.000115507   0.001264378  -0.000427047   0.000302297   0.001700320   0.001802130   0.000832369
                        -0.004844639  -0.090547237   0.003752568   0.035296685  -0.101358929  -0.001557329   0.008981987   0.113115823

   59    8.2  1.5 -1.5   0.000529616  -0.000282905  -0.003268635  -0.000167971   0.000092655  -0.000428021   0.008324435   0.003229266
                        -0.001737981  -0.035755438  -0.010850988  -0.089648343   0.024741901   0.000366549   0.038890967   0.493662125

   60    9.2  1.5 -1.5  -0.003241307   0.001967751   0.015201398   0.000921657  -0.000004756   0.000003114   0.000000720  -0.000010589
                         0.015035620   0.299548962   0.051026497   0.417361100  -0.000291007  -0.000006197   0.000000493  -0.000011793


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5   0.000003050  -0.000003402   0.000000933   0.000035336   0.010925527  -0.001039360   0.000682325  -0.003878395
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000027872  -0.000002349   0.000000098  -0.000002290   0.000639672  -0.000574689  -0.007121716   0.000701739
                         0.000001647  -0.000012888  -0.000007635  -0.000001293   0.000274108   0.002119220   0.008716722   0.001844341

    3    3.2  0.5  0.5  -0.000001419   0.000005265   0.000028637  -0.000000079   0.000672319   0.008043488  -0.005524245  -0.001234319
                         0.000009424  -0.000003764   0.000003020  -0.000001392   0.000823865   0.003511743  -0.005003535   0.000901606

    4    4.2  0.5  0.5   0.138590417   0.042380886   0.043019725  -0.012493442   0.003979766  -0.020208885   0.017777441   0.019704624
                        -0.011350952   0.292370507  -0.010115840   0.077704109  -0.021496560  -0.001878625  -0.027431033   0.188519539

    5    5.2  0.5  0.5  -0.012564169  -0.126317718  -0.018643293  -0.124678832   0.065673850   0.027287718   0.020628075   0.178809980
                         0.133661208   0.033344215   0.014897120  -0.012599436  -0.005095883   0.023449630  -0.001905436  -0.019735340

    6    6.2  0.5  0.5  -0.011019202  -0.133639939   0.066674985  -0.049855944   0.007398536  -0.115328120  -0.116857037   0.030404095
                        -0.155086560  -0.016991907   0.014707305   0.009008334  -0.000065542  -0.037288964  -0.093096902  -0.018380430

    7    7.2  0.5  0.5   0.041655796   0.020797290  -0.023020460  -0.001986936   0.012767540   0.072207189  -0.028790748   0.011538383
                        -0.005969400  -0.008720389   0.230681589  -0.003747469  -0.016853037  -0.177401937   0.020950630   0.008293574

    8    8.2  0.5  0.5   0.020520846   0.006120889   0.003721166   0.003312003  -0.002208576   0.004756137  -0.009457103  -0.009109077
                        -0.035101726   0.074415755  -0.008168292  -0.328680973  -0.192419965   0.019938399  -0.001175527  -0.019582694

    9    9.2  0.5  0.5  -0.000137533   0.000064760  -0.000037716   0.000028181   0.013978919  -0.016963750  -0.265708085   0.028979936
                        -0.000000938   0.000075062   0.000523739  -0.000004794   0.010380407   0.079032487   0.319937514   0.068437356

   10   10.2  0.5  0.5   0.000065939  -0.000426334  -0.000910251  -0.000027982  -0.025501100  -0.296775789   0.200250762   0.045991767
                        -0.000873504   0.000149146  -0.000067679   0.000114178  -0.030250068  -0.128697763   0.187282344  -0.032478779

   11   11.2  0.5  0.5   0.000045815  -0.000143830   0.000013680   0.000379434   0.403633022  -0.039504199   0.019061097  -0.141420409
                         0.000050322   0.000015500   0.000011880  -0.000012047   0.000166987   0.001676519   0.008165260   0.001505884

   12   12.2  0.5  0.5   0.000195384   0.000072622   0.000034758  -0.000013311  -0.000012267   0.000024500  -0.000063474  -0.000049685
                         0.000016383   0.000394248  -0.000011422   0.000255917  -0.000188597   0.000018228   0.000040353  -0.000438507

   13    1.2  0.5 -0.5   0.000003374   0.000003024  -0.000004074   0.000000108  -0.000391786  -0.004118372  -0.002143748  -0.000377149
                        -0.000000436  -0.000000391   0.000035100  -0.000000927   0.000962690   0.010119593   0.003232073   0.000568618

   14    2.2  0.5 -0.5   0.000000678   0.000027431  -0.000001020   0.000007596  -0.002179522   0.000012764  -0.001149107   0.011200572
                        -0.000013083  -0.000005205  -0.000002424   0.000000782  -0.000266543   0.000695810  -0.001604239  -0.001116814

   15    3.2  0.5 -0.5  -0.000005704  -0.000002615  -0.000001374   0.000000301  -0.000220706   0.000509662  -0.001433615  -0.001116234
                        -0.000003059  -0.000009164  -0.000000239  -0.000028795  -0.008773900   0.000933280   0.000530269  -0.007369305

   16    4.2  0.5 -0.5  -0.004566474   0.138902386   0.078626314   0.015007848  -0.005877683  -0.021411011  -0.146211778  -0.032686057
                         0.295390928  -0.006501916  -0.003452160  -0.041566711   0.019426299  -0.004416924  -0.120623400  -0.000347374

   17    5.2  0.5 -0.5   0.129549132  -0.029588235   0.001857953  -0.016947055  -0.011433748  -0.029475705   0.115282125  -0.012989885
                         0.016882682  -0.130949277  -0.125300059   0.016801603  -0.034114134   0.058908450  -0.138103310   0.016137256

   18    6.2  0.5 -0.5   0.130360803   0.008944784   0.014695829  -0.006922736  -0.008934579  -0.002849582   0.032122980  -0.012990904
                        -0.033976745   0.155220021  -0.048485027  -0.067925946   0.120876860   0.006828068  -0.015177727  -0.148841650

   19    7.2  0.5 -0.5  -0.021743283   0.042077309  -0.003493422  -0.231797430   0.191534136  -0.020422571  -0.000533737   0.033373100
                        -0.005983485   0.000582319  -0.002405709  -0.003726754  -0.000009166   0.005472983  -0.014199746  -0.012412584

   20    8.2  0.5 -0.5   0.003465375   0.024849682  -0.326871363   0.008542820  -0.016674796  -0.177393355   0.011284337   0.004247700
                         0.074586601   0.032182753  -0.034601497  -0.002754688  -0.011921064  -0.074578269   0.018415236  -0.008530867

   21    9.2  0.5 -0.5  -0.000054607  -0.000136279  -0.000008011  -0.000524595  -0.079597039   0.004345337  -0.041014079   0.413488674
                         0.000082741   0.000018554   0.000027441  -0.000022914  -0.014078859   0.016860637  -0.061978655  -0.044586041

   22   10.2  0.5 -0.5   0.000441931   0.000177328   0.000116643  -0.000037709   0.007334730  -0.018406008   0.052487828   0.045385493
                         0.000093285   0.000857853  -0.000014633   0.000911984   0.323396327  -0.035022730  -0.020375025   0.270398227

   23   11.2  0.5 -0.5   0.000144630   0.000038989  -0.000055709  -0.000010223  -0.016443937  -0.151994601  -0.079423801  -0.003731307
                        -0.000003059  -0.000055778   0.000375516  -0.000014959   0.035958161   0.373921497   0.117020766   0.020397897

   24   12.2  0.5 -0.5  -0.000021504   0.000191674   0.000255745   0.000015353  -0.000007649  -0.000170061   0.000337968   0.000068713
                         0.000400304  -0.000041285   0.000016280  -0.000033209  -0.000029563  -0.000082453   0.000283786  -0.000030591

   25    1.2  1.5  1.5  -0.010673916  -0.258294521   0.006504811  -0.097863141  -0.038427409   0.003822169  -0.001892541   0.014244433
                         0.122752489   0.043108826   0.032190313  -0.017381435   0.001381466  -0.000134243  -0.001025851  -0.000732094

   26    2.2  1.5  1.5   0.075423186   0.022504372   0.020702384  -0.010867940  -0.001411174   0.000075413   0.001431500   0.000524770
                         0.029309029   0.144337932   0.002063155   0.253135096  -0.039462071   0.004317471  -0.002835804   0.013622145

   27    3.2  1.5  1.5  -0.076505499   0.012823825  -0.006532227   0.010549591  -0.004145920  -0.010511264   0.042688640  -0.006129791
                        -0.006407708   0.034034969   0.079273017  -0.001521897   0.002331132   0.021262042  -0.050617489  -0.011168943

   28    4.2  1.5  1.5  -0.022218929   0.004150708  -0.010295279   0.438308886  -0.309262827   0.031349465  -0.012946767   0.108961066
                        -0.028713844  -0.161787244  -0.004929715   0.029224337  -0.113875242   0.009539961  -0.012439580   0.039134876

   29    5.2  1.5  1.5   0.196355604   0.079394807   0.049131239   0.150554834  -0.114000986   0.012727591  -0.011349824   0.039072901
                        -0.022409426   0.390794833  -0.020677878  -0.056926738   0.307653400  -0.034595054   0.012240307  -0.109445541

   30    6.2  1.5  1.5  -0.134235835  -0.013734891   0.020185355   0.008800336   0.015394991   0.122593285   0.065216553   0.002672235
                        -0.001514948   0.051151810  -0.175654810   0.009850774  -0.033594383  -0.304285361  -0.095787773  -0.016564025

   31    7.2  1.5  1.5   0.001483845   0.036297027  -0.208334755   0.007440298  -0.031223593  -0.320501454  -0.033781989  -0.004375766
                         0.092388246   0.019073503  -0.023248133  -0.006915309  -0.017076644  -0.131561570  -0.012580277  -0.010628965

   32    8.2  1.5  1.5   0.011133829  -0.083390934  -0.111132293  -0.007265250  -0.000513558  -0.026810278   0.263945530   0.056262460
                        -0.176277939   0.020494964  -0.006626824   0.022151298  -0.017282398  -0.019181600   0.218710324  -0.027926627

   33    9.2  1.5  1.5  -0.000080276   0.000457974   0.001563648   0.000019873   0.001337876   0.016926708  -0.042792987  -0.009244649
                         0.000906467  -0.000215814   0.000139922  -0.000113346   0.003584600   0.008408879  -0.036026834   0.005079005

   34    1.2  1.5  0.5  -0.165583782   0.002073073   0.003648464   0.017028445   0.004279857   0.021987223  -0.017610845   0.003693959
                        -0.005359096   0.074165895  -0.064452653   0.009219285  -0.005108671  -0.054331916   0.015404846   0.004102162

   35    2.2  1.5  0.5  -0.009613831  -0.006736952   0.202717113  -0.008583044   0.003665393   0.029744454   0.041715583   0.008736444
                        -0.036130564  -0.018355953   0.019075809   0.000621375  -0.000873474   0.008855738   0.034047261  -0.002889146

   36    3.2  1.5  0.5  -0.029350059   0.199061628  -0.015245752  -0.268983022   0.022877094  -0.002872871   0.000512740  -0.007883903
                        -0.080094484  -0.028683575  -0.019675013   0.001491280   0.000038843   0.000094166  -0.000176467   0.000069995

   37    4.2  1.5  0.5  -0.201285890  -0.035398651   0.123775533   0.015876007  -0.017217893  -0.012138181   0.110217546  -0.047363536
                        -0.061913968   0.078071889  -0.200624996   0.018159708   0.014932623   0.114183295  -0.305135027  -0.039417963

   38    5.2  1.5  0.5  -0.075191421   0.061902157  -0.252507848   0.022686510  -0.016244314  -0.113542515   0.305720110   0.036299836
                         0.150543392   0.051774891  -0.109595601  -0.008004883  -0.016985142  -0.011921554   0.111139948  -0.046570929

   39    6.2  1.5  0.5   0.033231153   0.357923613  -0.004115233   0.335053893  -0.115037896   0.016884947   0.024623236  -0.323228580
                        -0.182447716  -0.071976458  -0.045967364   0.014579768   0.008136916  -0.016612416   0.054054711   0.038850050

   40    7.2  1.5  0.5   0.092436779   0.034911605   0.022835963  -0.007592853   0.008313401  -0.015919473   0.054762717   0.037331781
                         0.007394528   0.191787075  -0.004786454   0.079883393   0.031730432  -0.007179715  -0.031023828   0.340872277

   41    8.2  1.5  0.5   0.031605166   0.010158210   0.007503841   0.000282717  -0.001825067   0.004779167  -0.006594697  -0.007561879
                        -0.021878562   0.086864906  -0.006686842  -0.202302151  -0.346425203   0.035831246  -0.009326729   0.034740821

   42    9.2  1.5  0.5   0.000426868   0.000156133   0.000101072  -0.000017696   0.000013941   0.000145140   0.001209907   0.000193296
                        -0.000140220   0.001038270  -0.000063087  -0.001285568  -0.056219534   0.005655045  -0.002838833   0.019927309

   43    1.2  1.5 -0.5  -0.007447803   0.163531949  -0.007194722  -0.064443532  -0.058612130   0.006345113   0.001376746  -0.022571913
                        -0.073820105  -0.026533193  -0.017977740  -0.003806174  -0.000115080  -0.002038437   0.005345805   0.006161160

   44    2.2  1.5 -0.5  -0.004329238   0.004904721  -0.001606714  -0.004421268  -0.003009673   0.002190709  -0.007236670  -0.005315473
                         0.019067911  -0.037064635   0.008454184   0.203564650   0.030888485  -0.003065756   0.005683592  -0.053583128

   45    3.2  1.5 -0.5   0.201096102   0.018844604  -0.032490580  -0.017786252   0.001170147   0.008587531   0.004416088   0.000430472
                         0.002938896  -0.083195152   0.267017700  -0.017412303  -0.002625454  -0.021204180  -0.006531385  -0.000329753

   46    4.2  1.5 -0.5  -0.045111125   0.191692653  -0.016208393  -0.213556609   0.110335909  -0.020321377  -0.006669308   0.315206970
                        -0.072892186  -0.087196765  -0.017863667   0.099821573   0.031798544   0.010318950  -0.061258474   0.076810533

   47    5.2  1.5 -0.5   0.054757272   0.093862497   0.010566887  -0.079754959   0.031757649   0.009608926  -0.058874436   0.076365245
                        -0.059280330   0.139667084  -0.021612422  -0.263458831  -0.109660740   0.021448574   0.004508914  -0.316204401

   48    6.2  1.5 -0.5   0.364196044  -0.056336450   0.024143549  -0.045186466  -0.021751753  -0.050900165   0.211037518  -0.031436385
                         0.025517931  -0.176685266  -0.334500777  -0.009387063   0.009377367   0.103484782  -0.247889506  -0.050398108

   49    7.2  1.5 -0.5   0.010047759  -0.090727160  -0.080226112  -0.007387145  -0.000649257  -0.026256066   0.263432145   0.056123404
                        -0.194679596   0.019178623  -0.001666990   0.022131909  -0.017451544  -0.019660924   0.219524660  -0.028488533

   50    8.2  1.5 -0.5  -0.001056601  -0.034148175   0.200985926  -0.007507326   0.031386607   0.320182776   0.033131130   0.004127298
                        -0.087450470  -0.017648233   0.023041222   0.006682930   0.017933197   0.132275250   0.012900963   0.010650977

   51    9.2  1.5 -0.5   0.000021799  -0.000441317   0.001274957  -0.000074319   0.005183183   0.052077688   0.016499641   0.003034515
                        -0.001049717  -0.000084364   0.000165783   0.000093125   0.002266100   0.021179013   0.011175726   0.000560860

   52    1.2  1.5 -1.5   0.261689150  -0.026315699  -0.005983564  -0.031225793   0.001565105   0.015764754   0.008483576   0.000191189
                         0.009654986  -0.120372713  -0.099214443  -0.010172446  -0.003489619  -0.035072023  -0.011465983  -0.002144185

   53    2.2  1.5 -1.5  -0.003823054   0.071045657   0.252700249   0.000337239  -0.003970561  -0.036019163  -0.011061994  -0.003154475
                         0.146031742  -0.038732296   0.018386762  -0.020802202  -0.001697318  -0.016182286  -0.007966837  -0.000374520

   54    3.2  1.5 -1.5  -0.008356785  -0.075053674  -0.002727941  -0.079497533  -0.023655838   0.003721976   0.005919485  -0.065778004
                         0.035397651   0.016158469   0.010303804  -0.002650178   0.001721171  -0.002961373   0.011281814   0.007596344

   55    4.2  1.5 -1.5  -0.024848271  -0.018356295  -0.021500194   0.003709974   0.002980931   0.011101373   0.027614087  -0.003210352
                        -0.159921556   0.031324305   0.438755608   0.010794950  -0.032633018  -0.329374903  -0.112434490  -0.017665095

   56    5.2  1.5 -1.5  -0.028662930   0.197608403  -0.073903642   0.026204022   0.036840768   0.327931595   0.112803973   0.016474011
                         0.397746871  -0.002936771   0.142988333  -0.046419851   0.001251864   0.010378232   0.027933524  -0.002692691

   57    6.2  1.5 -1.5   0.020176366  -0.132935039   0.008770564   0.176810693   0.328050868  -0.036919387   0.015280735  -0.115872900
                         0.048970084   0.018703740   0.009877291   0.000199289   0.001150173   0.001595975   0.006928701   0.001402577

   58    7.2  1.5 -1.5  -0.033553665  -0.010367226  -0.007726944  -0.000924383   0.001043907  -0.004047247   0.006439015   0.008188880
                         0.023567440  -0.091816722   0.006593472   0.209625836   0.346451351  -0.035357380   0.009521623  -0.035105959

   59    8.2  1.5 -1.5   0.085329713   0.033630692   0.022841169  -0.006229054   0.007660525  -0.015813956   0.054371312   0.036369382
                         0.009640097   0.173397954  -0.004663136   0.111155298   0.032063080  -0.006990266  -0.031450299   0.340849992

   60    9.2  1.5 -1.5  -0.000481853  -0.000195770  -0.000114882   0.000041273  -0.001408074   0.002815866  -0.009342501  -0.006369631
                        -0.000155349  -0.000888707   0.000006674  -0.001569353  -0.018847812   0.002590400   0.004896682  -0.055575177


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5   0.000736141   0.000660015  -0.000236833  -0.003073448   0.006747705   0.001201839   0.000014565  -0.009163735
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.001115352   0.001019942  -0.000505669  -0.000009884  -0.001031632   0.005790084  -0.008414526  -0.000013898
                        -0.001932586   0.001942750   0.000482460  -0.000072706   0.000662685  -0.003482141  -0.003595920  -0.000061101

    3    3.2  0.5  0.5   0.001391333  -0.001359644   0.001562220  -0.000079013   0.000619633  -0.003478611  -0.003604189  -0.000005858
                        -0.000767370   0.000702485   0.001809273  -0.000132830   0.001182646  -0.005741994   0.008436468  -0.000196583

    4    4.2  0.5  0.5   0.000147410   0.020857750   0.021576761   0.002811890  -0.000014859  -0.000020014  -0.000013273   0.000004997
                         0.277248664   0.266806625   0.006604783  -0.055380949  -0.000982768  -0.000208885   0.000015319   0.000144047

    5    5.2  0.5  0.5   0.298298074   0.198673251  -0.046546652   0.116890781  -0.000525550  -0.000027152   0.000020214   0.000382271
                        -0.040495470   0.030670309  -0.062524598   0.000802413  -0.000016172   0.000090589  -0.000004736   0.000004888

    6    6.2  0.5  0.5  -0.089169386   0.250994055   0.169787576   0.019195668  -0.000133738  -0.000183235  -0.000019940   0.000118870
                         0.070295330  -0.114174868   0.180573976  -0.013143231   0.000140468  -0.000273113   0.000060485  -0.000022745

    7    7.2  0.5  0.5   0.026425478  -0.021165237  -0.282370299   0.023523179   0.000002862  -0.000065929   0.000100728  -0.000000787
                         0.059503021  -0.047581099   0.250907351  -0.018453825  -0.000007771   0.000035090   0.000046480   0.000005874

    8    8.2  0.5  0.5  -0.001371346  -0.006306611  -0.001843471  -0.001558187  -0.000003209   0.000009268   0.000004149  -0.000002957
                        -0.036045676  -0.040829204  -0.029814217  -0.384652696   0.000278252   0.000051817  -0.000000737  -0.000103600

    9    9.2  0.5  0.5  -0.011284505   0.010015202  -0.004736269   0.000656223   0.047508050  -0.228238794  -0.281926168   0.007045229
                        -0.019580422   0.019666687   0.004937759  -0.000749272  -0.026906388   0.141259284  -0.117019955  -0.002101063

   10   10.2  0.5  0.5  -0.013521630   0.013168021  -0.015494425   0.000860302   0.025941286  -0.141897943   0.117259282   0.000913682
                         0.007179800  -0.006520962  -0.017834086   0.001312079   0.047185653  -0.229065159  -0.282518284   0.006535061

   11   11.2  0.5  0.5   0.006038328   0.005851498  -0.002507402  -0.030787635  -0.268980004  -0.054102133  -0.006168808  -0.305506775
                        -0.000427825   0.000466807   0.000094675  -0.000004072  -0.000553108   0.002942005  -0.003543426  -0.000038460

   12   12.2  0.5  0.5   0.000014276   0.000015757   0.000021810   0.000011323  -0.000592612   0.003313731  -0.007087087  -0.000010076
                         0.001050659   0.001062965  -0.000005354   0.000223499   0.494374419   0.099731858   0.008314610   0.486676723

   13    1.2  0.5 -0.5  -0.000332395   0.000370734  -0.002313918   0.000178305   0.001032964  -0.005799559   0.008405199   0.000013359
                        -0.000570205   0.000635972   0.002022836  -0.000155875  -0.000614331   0.003449150   0.003650571   0.000005802

   14    2.2  0.5 -0.5  -0.002192054  -0.002231324   0.000040411   0.000698243   0.006756425   0.001225411   0.000037089  -0.009150519
                         0.000097248   0.000009702   0.000061243   0.000030418   0.000033198   0.000042241  -0.000050506  -0.000053843

   15    3.2  0.5 -0.5   0.000077845   0.000037749   0.000027938   0.000014646  -0.000054746   0.000071954   0.000083686   0.000054999
                         0.001528417   0.001588471   0.000152008   0.002390353   0.006713288   0.001333199  -0.000177977  -0.009173938

   16    4.2  0.5 -0.5  -0.241005691   0.239596755   0.038566806  -0.011897537   0.000089572  -0.000489580  -0.000061967  -0.000006072
                         0.116348949  -0.139499959   0.039844167   0.019173638   0.000189764  -0.000852271   0.000130132  -0.000019339

   17    5.2  0.5 -0.5  -0.126552246   0.115243047   0.087475864  -0.006107762  -0.000069642   0.000443437  -0.000352576   0.000016654
                        -0.156193014   0.278101896  -0.077537550  -0.077708503  -0.000063981  -0.000282539  -0.000147803   0.000012396

   18    6.2  0.5 -0.5  -0.027766312   0.015822737   0.023102328  -0.008981095  -0.000017883   0.000186747  -0.000099969   0.000005806
                        -0.274340934  -0.112437777  -0.002738727   0.247697641   0.000328399   0.000052369  -0.000068216  -0.000063422

   19    7.2  0.5 -0.5   0.051765767   0.064714583   0.029855645   0.377727614  -0.000074602  -0.000006432  -0.000001619   0.000110906
                        -0.005677466  -0.007137094  -0.001588738   0.003055245   0.000003540  -0.000005216   0.000005702  -0.000002505

   20    8.2  0.5 -0.5   0.038449559  -0.031831455   0.251991867  -0.018234777  -0.000018521   0.000144989   0.000043984   0.000003512
                        -0.015113857   0.016968495   0.290620411  -0.023659646  -0.000049273   0.000237514  -0.000093846   0.000002329

   21    9.2  0.5 -0.5  -0.022034407  -0.022599124   0.000987198   0.006815672  -0.268374041  -0.054585954  -0.005625051  -0.305206905
                         0.001252089   0.000112061   0.000132204   0.000600262  -0.004744081   0.001158500  -0.004733764  -0.004977839

   22   10.2  0.5 -0.5  -0.000998014  -0.000606910  -0.000215866  -0.000072430  -0.004870596   0.001823196  -0.003441433  -0.004994205
                        -0.014660275  -0.015297570  -0.001554051  -0.023624703   0.269410747   0.053815538   0.005630131   0.305845349

   23   11.2  0.5 -0.5  -0.003350205   0.002671399  -0.023176518   0.001950069  -0.048003867   0.230901864   0.280233507  -0.007069780
                        -0.004820173   0.005432133   0.020266413  -0.001579006   0.025126180  -0.137966944   0.121669932   0.000792638

   24   12.2  0.5 -0.5  -0.000926259   0.000914882  -0.000138574  -0.000019944  -0.048130733   0.253213286  -0.193868920  -0.003188143
                         0.000521715  -0.000516797  -0.000175719   0.000010324  -0.087411995   0.424605051   0.446395648  -0.010449655

   25    1.2  1.5  1.5   0.037815217   0.038045332  -0.014036540  -0.170560377  -0.082489190  -0.016609403   0.002158212   0.122711444
                        -0.004189614   0.001499020   0.000297875   0.005973420   0.002827000   0.001129775   0.001712767  -0.004302399

   26    2.2  1.5  1.5   0.001848118   0.000629944   0.000683115  -0.006012550  -0.002801154  -0.001117707  -0.001711333   0.004301771
                         0.036195878   0.041746846  -0.015279396  -0.170516961  -0.083082548  -0.016751325   0.002151693   0.122500880

   27    3.2  1.5  1.5  -0.107080772   0.096091616   0.072648648  -0.003370168   0.000115332   0.001138940  -0.000129615  -0.000473176
                        -0.185377670   0.182512353  -0.060306010   0.004165776   0.001451971  -0.000360749  -0.000107217  -0.001968232

   28    4.2  1.5  1.5  -0.019313757  -0.018197439   0.007377386   0.086601864  -0.144287702  -0.030109972   0.002551346   0.136139933
                        -0.006280756  -0.008510331   0.002390474   0.031947747  -0.053370183  -0.008903937   0.002853990   0.050401747

   29    5.2  1.5  1.5  -0.005757790  -0.008067637   0.003571747   0.031928491  -0.052820157  -0.013129491   0.005710225   0.050186351
                         0.020699041   0.019166212  -0.007831076  -0.086368437   0.143333007   0.030667713   0.000224650  -0.136461394

   30    6.2  1.5  1.5   0.010823770  -0.008699923   0.068212775  -0.006359960   0.055306171  -0.263260126   0.266717861  -0.007231434
                         0.015863530  -0.017745458  -0.059986777   0.005905143  -0.031553128   0.157736464   0.115035351   0.003339483

   31    7.2  1.5  1.5   0.002068243  -0.003584538  -0.062559786   0.004887303  -0.029093078   0.153526468   0.111616618   0.001767647
                        -0.002614989   0.001699161  -0.071409029   0.005636692  -0.052317198   0.255736101  -0.259115869   0.005738379

   32    8.2  1.5  1.5  -0.058532792   0.058425636  -0.003692817  -0.000808862   0.007200709  -0.037545248  -0.027926206  -0.000512263
                         0.034191421  -0.030583093  -0.005099482  -0.000154196   0.013009344  -0.063555359   0.063619972  -0.001446017

   33    9.2  1.5  1.5   0.380365384  -0.377058701   0.124523926  -0.002910322  -0.000205378   0.001132281   0.000044608  -0.000006582
                        -0.220079483   0.198047267   0.149344236  -0.008283476  -0.000360474   0.001922534  -0.000099446   0.000002202

   34    1.2  1.5  0.5   0.032007240  -0.030035177  -0.187152483   0.014753254   0.008046691  -0.040654471   0.065922373  -0.001037656
                         0.072652610  -0.068170074   0.168683288  -0.012072628  -0.004982596   0.026133153   0.025925610   0.000515117

   35    2.2  1.5  0.5   0.144022492  -0.146946496  -0.101834478   0.012194715   0.003331329  -0.025858823  -0.025833400   0.001777217
                        -0.083504190   0.073362524  -0.101221658   0.009742851   0.008162315  -0.039509801   0.065845205  -0.001504373

   36    3.2  1.5  0.5  -0.024834715  -0.019570000   0.010476013   0.097577990  -0.095628155  -0.018718630   0.002623451   0.141591215
                         0.002388658  -0.002250863   0.001086654  -0.000096049  -0.000231683   0.001192515   0.000910011   0.000026689

   37    4.2  1.5  0.5   0.050785653  -0.047131605  -0.015521675   0.001174627  -0.053066154   0.261321537  -0.182115889   0.005639149
                         0.042439424  -0.043293309   0.025634634  -0.000840757   0.007767325  -0.048402626  -0.173972402   0.000494366

   38    5.2  1.5  0.5  -0.040504357   0.042727855  -0.024881940   0.001166526   0.008064008  -0.049047949  -0.173920054   0.000318629
                         0.050481893  -0.047014494  -0.013562244   0.000990980   0.053131023  -0.261861218   0.181460639  -0.005618194

   39    6.2  1.5  0.5   0.064925985   0.066393440   0.001557774   0.029390689  -0.000951823  -0.000442496   0.002552875  -0.000471533
                        -0.003761142   0.000259452  -0.000406072  -0.000631124  -0.001127113   0.003073725  -0.001556666   0.000529470

   40    7.2  1.5  0.5  -0.003314930   0.000026744  -0.000501939  -0.000746903   0.000183415  -0.000950961  -0.001071880  -0.000006084
                        -0.066201113  -0.068204828   0.000572944  -0.006488867  -0.073529537  -0.015262994   0.001749522   0.069773603

   41    8.2  1.5  0.5  -0.000529302   0.001125486   0.000128228   0.000106098   0.000367492  -0.002040191  -0.003977456  -0.000006535
                        -0.005465046  -0.004611330   0.007657747   0.094606175  -0.298254693  -0.060016800   0.004772555   0.282116671

   42    9.2  1.5  0.5  -0.007919610   0.008046175  -0.000005874  -0.000116243   0.000012349  -0.000013658  -0.000002496  -0.000003613
                        -0.138274575  -0.136162689   0.051114204   0.609955217   0.000288731   0.000053319   0.000001888  -0.000065261

   43    1.2  1.5 -0.5  -0.074020190  -0.078885937  -0.019053118  -0.251923622   0.048300151   0.009462918  -0.000746555  -0.070793617
                         0.008383459   0.008937226   0.000620914  -0.003819963   0.001680184   0.000169334  -0.000885850  -0.002482003

   44    2.2  1.5 -0.5  -0.010625002  -0.000390766  -0.002768674  -0.010047928   0.002029509  -0.001309010   0.001030807  -0.002535839
                        -0.163897657  -0.166479053   0.015361271   0.143231016  -0.047176098  -0.008718236   0.002087840   0.070686102

   45    3.2  1.5 -0.5  -0.011800377   0.010443575  -0.073527111   0.007171916   0.016697968  -0.082072649   0.129881511  -0.002768815
                        -0.015773471   0.022658343   0.064150116  -0.007713060  -0.008543246   0.049080323   0.056381433  -0.000210424

   46    4.2  1.5 -0.5  -0.061138550  -0.062241100  -0.001437703  -0.028557681  -0.249343683  -0.049579963   0.005369305   0.236346744
                        -0.018914978  -0.022501839   0.000140114  -0.009083814   0.091975474   0.020449335   0.001793032  -0.087021895

   47    5.2  1.5 -0.5  -0.019098576  -0.023213947  -0.000226018  -0.009806761  -0.091696690  -0.020227498  -0.001945874   0.087234913
                         0.060591061   0.060416365   0.001513850   0.026587080  -0.250137393  -0.049787370   0.005280076   0.235724879

   48    6.2  1.5 -0.5   0.033661053  -0.029448518  -0.022542858   0.001440070   0.001951481  -0.000241945  -0.000221576  -0.001721427
                         0.057228399  -0.057985468   0.018868769  -0.000719551   0.002415638   0.001455271  -0.000673488  -0.002444804

   49    7.2  1.5 -0.5  -0.058910502   0.058862365  -0.003708422  -0.000754989  -0.006984479   0.037742929   0.027790238   0.000286195
                         0.034372257  -0.030476190  -0.005376882  -0.000100996  -0.013604425   0.063103865  -0.064000456   0.002031710

   50    8.2  1.5 -0.5  -0.003417037   0.004987965   0.062186605  -0.004943522  -0.028924613   0.152771431   0.112381262   0.001746968
                         0.003294684  -0.002295015   0.071296323  -0.005849711  -0.052626471   0.256157933  -0.258766821   0.005962008

   51    9.2  1.5 -0.5  -0.113582384   0.123447549   0.401538760  -0.033646008   0.000038994  -0.000136973  -0.000029313   0.000001537
                         0.075525234  -0.062795549   0.459142684  -0.038478669   0.000038845  -0.000254472   0.000058420   0.000002726

   52    1.2  1.5 -1.5  -0.020455343   0.015424890  -0.132341904   0.010763792  -0.014853046   0.072343363  -0.110839944   0.002661882
                        -0.032113445   0.034779538   0.107759659  -0.009014099   0.007519020  -0.039735326  -0.052831013  -0.000711221

   53    2.2  1.5 -1.5  -0.036383464   0.032201330   0.107701625  -0.010570664   0.007601937  -0.040060840  -0.052746555  -0.000712502
                         0.020480221  -0.016632243   0.132334972  -0.011053852   0.014968858  -0.072840135   0.110647060  -0.002655331

   54    3.2  1.5 -1.5  -0.206070720  -0.214080477  -0.005279079  -0.094386563   0.001163303   0.000643062   0.001218096  -0.000161598
                         0.008900325   0.000849524  -0.000918176   0.002412002  -0.000272121   0.001306902  -0.001616811   0.000046707

   55    4.2  1.5 -1.5   0.016516853  -0.015152860   0.044173366  -0.003980912  -0.021327776   0.096732632  -0.144949454   0.003477105
                         0.011435301  -0.013522571  -0.081050941   0.006655263   0.023043795  -0.119624894  -0.008004578  -0.001601365

   56    5.2  1.5 -1.5  -0.012495198   0.014982729   0.080882810  -0.007843215  -0.026960694   0.118664153   0.008330205   0.005327051
                         0.016622289  -0.015398710   0.044010299  -0.003545011  -0.019647217   0.096193236  -0.145158498   0.002068736

   57    6.2  1.5 -1.5   0.019712209   0.019155968  -0.008674805  -0.090836802  -0.306896851  -0.063663554   0.005302491   0.290466869
                        -0.001420829   0.001361790  -0.000259923  -0.000267193  -0.001004519   0.001150772   0.005943852   0.000739609

   58    7.2  1.5 -1.5   0.000337286  -0.001217555  -0.000030353   0.000100681   0.001232059  -0.001737309  -0.003907336  -0.000846936
                         0.003952505   0.003103765  -0.007460368  -0.094936643  -0.298278078  -0.059837097   0.004559199   0.282132214

   59    8.2  1.5 -1.5  -0.003002630   0.000060736  -0.000507485  -0.000576077   0.000217274   0.000460934   0.001045912  -0.000270203
                        -0.065877650  -0.067787443   0.000648455  -0.006269749   0.073816544   0.014862059  -0.001122250  -0.069478779

   60    9.2  1.5 -1.5   0.018795085   0.001426171   0.003260791   0.004542387  -0.000009541  -0.000007740   0.000005160   0.000001299
                         0.425491162   0.439443706   0.008151883   0.194394639  -0.002231167  -0.000414804   0.000004642   0.000108985


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5   0.000093071  -0.000162620  -0.000041105  -0.000195478
                         0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000177161  -0.000105356  -0.000067252   0.000016949
                         0.000138067   0.000085768  -0.000016022  -0.000000908

    3    3.2  0.5  0.5  -0.000029588  -0.000021581   0.000030609  -0.000002689
                        -0.000048181  -0.000033171  -0.000260240   0.000063777

    4    4.2  0.5  0.5   0.021121110  -0.006202899  -0.006685828   0.017074374
                         0.193192946  -0.278284911   0.024860108   0.115312781

    5    5.2  0.5  0.5   0.069223992  -0.239889046   0.059221631   0.236579383
                        -0.072332951  -0.030646846   0.031268148  -0.016672942

    6    6.2  0.5  0.5   0.218924337   0.043087608   0.014086598   0.070797827
                         0.206014592   0.153924854  -0.090085287  -0.001923758

    7    7.2  0.5  0.5  -0.058513733  -0.027101369   0.336648348  -0.076048910
                         0.063730534   0.028771183   0.032714611  -0.004331226

    8    8.2  0.5  0.5  -0.006075472   0.003567608   0.000412274  -0.005966130
                         0.052245626  -0.108348315  -0.076281011  -0.330378199

    9    9.2  0.5  0.5   0.190950480   0.107781332   0.070214924  -0.023125721
                        -0.146032032  -0.090543931   0.019719785   0.000202748

   10   10.2  0.5  0.5  -0.030134833  -0.022752083   0.032370329  -0.003375716
                        -0.053571864  -0.036629836  -0.268349712   0.065914985

   11   11.2  0.5  0.5  -0.097278022   0.179705577   0.043471751   0.199023651
                        -0.003622712  -0.002552081  -0.000376011   0.000544627

   12   12.2  0.5  0.5  -0.000003125   0.000014160  -0.000002709  -0.000008140
                        -0.000077845   0.000145346  -0.000052773  -0.000230569

   13    1.2  0.5 -0.5  -0.000124267  -0.000071121   0.000194799  -0.000040963
                         0.000104894   0.000060034   0.000016275  -0.000003422

   14    2.2  0.5 -0.5  -0.000135831   0.000224437  -0.000016814  -0.000068352
                         0.000002417  -0.000008769  -0.000002316   0.000010367

   15    3.2  0.5 -0.5   0.000004905  -0.000008468  -0.000002631   0.000008835
                         0.000039268  -0.000055903   0.000063780   0.000261885

   16    4.2  0.5 -0.5   0.174761836   0.108475181  -0.026615823  -0.004592808
                         0.216654722   0.161253684   0.113490835  -0.025330444

   17    5.2  0.5 -0.5  -0.163545057  -0.099554924  -0.234369824   0.061619343
                         0.178154422  -0.010622330  -0.036312220  -0.026228900

   18    6.2  0.5 -0.5  -0.066360246  -0.034407426  -0.070391849   0.006537353
                        -0.145415681   0.298640263  -0.007811576   0.090945336

   19    7.2  0.5 -0.5  -0.039267978   0.085821785   0.076145479   0.338203268
                        -0.004504565   0.010957151   0.002015505  -0.004572301

   20    8.2  0.5 -0.5   0.072614020   0.038342563   0.033452100  -0.005940174
                         0.080494033   0.036005063  -0.328734400   0.076050489

   21    9.2  0.5 -0.5   0.140765438  -0.240111250   0.023028549   0.071612972
                        -0.000332203   0.011577032   0.002127449  -0.013805352

   22   10.2  0.5 -0.5   0.006241117  -0.011527627  -0.002123966   0.009915633
                         0.042666739  -0.060375215   0.065967185   0.270113100

   23   11.2  0.5 -0.5   0.138969640   0.071999035  -0.198377988   0.043289512
                        -0.113965111  -0.065515468  -0.016027609   0.003994083

   24   12.2  0.5 -0.5  -0.000082932  -0.000047824   0.000027308  -0.000007093
                        -0.000120201  -0.000061502  -0.000229090   0.000052365

   25    1.2  1.5  1.5  -0.071798943   0.133047646   0.032988674   0.147184275
                        -0.000554750  -0.006819234  -0.002094157  -0.004590842

   26    2.2  1.5  1.5   0.003012523   0.008243968   0.006280215   0.003519247
                        -0.074405518   0.131046419   0.032701329   0.147294122

   27    3.2  1.5  1.5   0.178993270   0.105201952   0.251032376  -0.066234063
                        -0.131900536  -0.088260888   0.033827408  -0.004231638

   28    4.2  1.5  1.5  -0.060417057   0.113632509   0.027369532   0.125605343
                        -0.025326064   0.040050617   0.009434453   0.046843928

   29    5.2  1.5  1.5  -0.023733635   0.040722525   0.007700262   0.047229387
                         0.060122157  -0.114245981  -0.028144012  -0.125399599

   30    6.2  1.5  1.5   0.093648881   0.047792009  -0.133450189   0.028086658
                        -0.077202534  -0.043058889  -0.009734935   0.004583752

   31    7.2  1.5  1.5  -0.057721732  -0.032301153  -0.014212334   0.003367353
                        -0.067667855  -0.034046310   0.160697257  -0.036671862

   32    8.2  1.5  1.5   0.085852180   0.054247027  -0.014804569   0.000045706
                         0.113182384   0.065453912   0.095775866  -0.026381282

   33    9.2  1.5  1.5   0.132504343   0.085766243  -0.034201536   0.001848753
                         0.177994412   0.105298671   0.250161971  -0.065406199

   34    1.2  1.5  0.5   0.009488742  -0.003130947  -0.314226518   0.074622687
                        -0.028268515  -0.010833577  -0.032427317   0.005439650

   35    2.2  1.5  0.5   0.175238443   0.104682706  -0.017693557  -0.002015262
                         0.221016830   0.122649924  -0.025487900  -0.000858983

   36    3.2  1.5  0.5   0.039027744  -0.078608233  -0.017231402  -0.085211737
                        -0.001961615  -0.000856887   0.001148438  -0.000354253

   37    4.2  1.5  0.5   0.063681836   0.035856713   0.129959654  -0.032245009
                        -0.097844082  -0.061203033  -0.028767145   0.010896339

   38    5.2  1.5  0.5   0.098672699   0.060174017   0.029122307  -0.009467525
                         0.064003566   0.036336516   0.129915988  -0.032483516

   39    6.2  1.5  0.5   0.070205917  -0.117468771   0.033709936   0.133115475
                        -0.001983096   0.007403543   0.000444679  -0.006773073

   40    7.2  1.5  0.5  -0.000761137   0.007719044   0.001843459  -0.007247157
                        -0.084643356   0.141812713  -0.026095966  -0.096798886

   41    8.2  1.5  0.5   0.002504285   0.000012898   0.000409681   0.001047947
                        -0.046470950   0.088850602   0.036530150   0.161589482

   42    9.2  1.5  0.5  -0.004569236  -0.003249122  -0.001862054   0.001024913
                         0.124772074  -0.229098958  -0.055479065  -0.253998403

   43    1.2  1.5 -0.5  -0.004595433   0.025484910   0.074816493   0.315835366
                        -0.010298117   0.015481102   0.000792185  -0.006152805

   44    2.2  1.5 -0.5  -0.000881384  -0.008652383  -0.002079782   0.019754201
                         0.161247313  -0.281925677   0.000688214  -0.023926273

   45    3.2  1.5 -0.5   0.059516402   0.031088665  -0.084945377   0.017075958
                        -0.051359386  -0.023675042  -0.006741550   0.002579106

   46    4.2  1.5 -0.5  -0.066877928   0.111775260  -0.031225845  -0.127113336
                        -0.023640175   0.033691720  -0.013543167  -0.039487468

   47    5.2  1.5 -0.5  -0.022544357   0.034117389  -0.012139172  -0.039837762
                         0.066580828  -0.112555595   0.031582484   0.127040251

   48    6.2  1.5 -0.5   0.094540213   0.054927575   0.132089386  -0.033629919
                        -0.070113284  -0.043769451   0.017832508  -0.002363492

   49    7.2  1.5 -0.5   0.085574739   0.054015789  -0.015281293   0.000335644
                         0.113346342   0.065171863   0.095859416  -0.026158844

   50    8.2  1.5 -0.5   0.057301357   0.031888779   0.014497953  -0.003449692
                         0.067904227   0.033895817  -0.160941195   0.036369208

   51    9.2  1.5 -0.5  -0.145292624  -0.083973222  -0.020126088   0.006474675
                        -0.177163605  -0.092398303   0.253201856  -0.055131411

   52    1.2  1.5 -1.5   0.106068042   0.054507914  -0.146291028   0.032699782
                        -0.080608614  -0.046736316  -0.016829196   0.004833463

   53    2.2  1.5 -1.5  -0.078229042  -0.050295759  -0.015770468   0.008981063
                        -0.105457782  -0.054914415   0.146489712  -0.032064911

   54    3.2  1.5 -1.5   0.137321755  -0.221858827   0.066356418   0.252977202
                        -0.000413035   0.014662982   0.001297581  -0.012809463

   55    4.2  1.5 -1.5   0.060999395   0.029832139  -0.129069383   0.028060001
                        -0.103901265  -0.058323870   0.036223615  -0.007122959

   56    5.2  1.5 -1.5   0.104810416   0.056916783  -0.036624865   0.005330308
                         0.061034784   0.030633952  -0.128896446   0.028687406

   57    6.2  1.5 -1.5   0.064294883  -0.121360424  -0.028370776  -0.133797364
                         0.002076568   0.001411300   0.002229393  -0.001409683

   58    7.2  1.5 -1.5  -0.002722332   0.000460802  -0.000302429  -0.000783629
                         0.046851943  -0.088941130  -0.036824898  -0.161322611

   59    8.2  1.5 -1.5  -0.000766365   0.007401277   0.002150910  -0.006779044
                        -0.085008042   0.141866381  -0.026293492  -0.096675935

   60    9.2  1.5 -1.5  -0.002381724   0.013557285   0.003603267  -0.013254761
                        -0.135786545   0.221485014  -0.065333033  -0.252140969


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.248%  47.843%  18.488%   0.046%   0.010%  33.307%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.070%   0.028%   0.092%  66.435%  33.301%   0.016%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  51.479%   0.269%   0.008%  14.869%  33.271%   0.046%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.020%   0.099%   0.142%   0.772%
    5    5.2  0.5  0.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.069%   0.356%   0.065%   0.542%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.928%   0.033%   0.088%   0.067%
    7    7.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.298%   0.007%   0.105%   0.016%
    8    8.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.002%   0.074%   0.004%   0.028%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5  47.843%   0.248%   0.046%  18.488%  33.307%   0.010%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.028%   0.070%  66.435%   0.092%   0.016%  33.301%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.269%  51.479%  14.869%   0.008%   0.046%  33.271%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.099%   0.020%   0.772%   0.142%
   17    5.2  0.5 -0.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.356%   0.069%   0.542%   0.065%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.033%   0.928%   0.067%   0.088%
   19    7.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.007%   0.298%   0.016%   0.105%
   20    8.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.074%   0.002%   0.028%   0.004%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.002%   0.013%   0.371%   5.423%  34.758%
   26    2.2  1.5  1.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.001%   0.149%   4.289%   2.383%  15.303%
   27    3.2  1.5  1.5   0.003%   0.000%   0.000%   0.007%   0.000%   0.000%  25.092%   0.678%   0.017%   0.007%
   28    4.2  1.5  1.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.002%   0.028%   1.143%   0.171%   1.098%
   29    5.2  1.5  1.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.002%   0.004%   0.223%   0.903%   5.712%
   30    6.2  1.5  1.5   0.002%   0.000%   0.000%   0.001%   0.007%   0.000%   0.219%   0.004%   0.414%   0.074%
   31    7.2  1.5  1.5   0.002%   0.000%   0.000%   0.000%   0.006%   0.000%   0.047%   0.001%   0.418%   0.068%
   32    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   7.933%   0.202%   0.008%   0.001%
   33    9.2  1.5  1.5   0.008%   0.000%   0.000%   0.020%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.007%   0.000%   0.000%   0.000%   0.001%   0.000%  31.394%   0.783%   2.735%   0.410%
   35    2.2  1.5  0.5   0.001%   0.000%   0.000%   0.007%   0.001%   0.000%   9.500%   0.270%   3.421%   0.578%
   36    3.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.169%   6.416%   1.923%  12.158%
   37    4.2  1.5  0.5   0.001%   0.000%   0.000%   0.002%   0.005%   0.000%   1.151%   0.027%   0.860%   0.130%
   38    5.2  1.5  0.5   0.001%   0.000%   0.000%   0.002%   0.005%   0.000%   0.196%   0.004%   0.904%   0.127%
   39    6.2  1.5  0.5   0.000%   0.001%   0.002%   0.000%   0.000%   0.000%   0.045%   1.847%   0.478%   3.168%
   40    7.2  1.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.122%   4.729%   0.602%   3.880%
   41    8.2  1.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.006%   0.026%   1.035%   0.005%   0.035%
   42    9.2  1.5  0.5   0.000%   0.020%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.000%   0.007%   0.000%   0.000%   0.000%   0.001%   0.783%  31.394%   0.410%   2.735%
   44    2.2  1.5 -0.5   0.000%   0.001%   0.007%   0.000%   0.000%   0.001%   0.270%   9.500%   0.578%   3.421%
   45    3.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%   6.416%   0.169%  12.158%   1.923%
   46    4.2  1.5 -0.5   0.000%   0.001%   0.002%   0.000%   0.000%   0.005%   0.027%   1.151%   0.130%   0.860%
   47    5.2  1.5 -0.5   0.000%   0.001%   0.002%   0.000%   0.000%   0.005%   0.004%   0.196%   0.127%   0.904%
   48    6.2  1.5 -0.5   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%   1.847%   0.045%   3.168%   0.478%
   49    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   4.729%   0.122%   3.880%   0.602%
   50    8.2  1.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.006%   0.000%   1.035%   0.026%   0.035%   0.005%
   51    9.2  1.5 -0.5   0.020%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.002%   0.000%   0.000%   0.001%   0.002%   0.000%   0.371%   0.013%  34.758%   5.423%
   53    2.2  1.5 -1.5   0.002%   0.000%   0.000%   0.001%   0.001%   0.000%   4.289%   0.149%  15.303%   2.383%
   54    3.2  1.5 -1.5   0.000%   0.003%   0.007%   0.000%   0.000%   0.000%   0.678%  25.092%   0.007%   0.017%
   55    4.2  1.5 -1.5   0.002%   0.000%   0.000%   0.001%   0.002%   0.000%   1.143%   0.028%   1.098%   0.171%
   56    5.2  1.5 -1.5   0.002%   0.000%   0.000%   0.001%   0.002%   0.000%   0.223%   0.004%   5.712%   0.903%
   57    6.2  1.5 -1.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.007%   0.004%   0.219%   0.074%   0.414%
   58    7.2  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.006%   0.001%   0.047%   0.068%   0.418%
   59    8.2  1.5 -1.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.202%   7.933%   0.001%   0.008%
   60    9.2  1.5 -1.5   0.000%   0.008%   0.020%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.005%   0.005%   0.000%   0.000%   0.002%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.010%   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.009%   0.002%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.063%   0.002%   0.629%   0.065%   0.005%   0.000%   0.000%   0.000%   0.000%
    5    5.2  0.5  0.5   0.001%   0.076%   0.083%   0.320%   0.270%   0.005%   0.000%   0.000%   0.000%   0.004%
    6    6.2  0.5  0.5   0.008%   0.008%   0.545%   0.043%   0.033%   0.052%   0.000%   0.000%   0.001%   0.000%
    7    7.2  0.5  0.5   0.640%   0.005%   0.038%   0.000%   0.001%   0.646%   0.000%   0.000%   0.044%   0.000%
    8    8.2  0.5  0.5   0.006%   0.925%   0.000%   0.065%   0.652%   0.001%   0.000%   0.000%   0.000%   0.025%
    9    9.2  0.5  0.5   0.000%   0.000%   8.887%   0.140%   0.033%   0.481%  10.735%   0.488%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.762%   0.064%   0.032%   8.657%  10.773%   0.482%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.017%   4.426%   5.085%   0.000%   0.490%  10.749%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.724%  38.541%   0.000%   0.001%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.005%   0.000%   0.000%   0.005%   0.002%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.010%   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.009%   0.000%   0.000%   0.002%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.063%   0.000%   0.629%   0.002%   0.005%   0.065%   0.000%   0.000%   0.000%   0.000%
   17    5.2  0.5 -0.5   0.076%   0.001%   0.320%   0.083%   0.005%   0.270%   0.000%   0.000%   0.004%   0.000%
   18    6.2  0.5 -0.5   0.008%   0.008%   0.043%   0.545%   0.052%   0.033%   0.000%   0.000%   0.000%   0.001%
   19    7.2  0.5 -0.5   0.005%   0.640%   0.000%   0.038%   0.646%   0.001%   0.000%   0.000%   0.000%   0.044%
   20    8.2  0.5 -0.5   0.925%   0.006%   0.065%   0.000%   0.001%   0.652%   0.000%   0.000%   0.025%   0.000%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.140%   8.887%   0.481%   0.033%   0.488%  10.735%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.064%   0.762%   8.657%   0.032%   0.482%  10.773%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   4.426%   0.017%   0.000%   5.085%  10.749%   0.490%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  38.541%   1.724%   0.001%   0.000%
   25    1.2  1.5  1.5   0.016%   2.710%   0.022%   5.212%   6.018%   0.000%   0.248%   5.536%   0.000%   0.000%
   26    2.2  1.5  1.5   0.141%  21.461%   0.019%   5.098%   5.792%   0.003%   0.241%   5.392%   0.000%   0.000%
   27    3.2  1.5  1.5   5.808%   0.039%  17.297%   0.439%   0.168%  15.357%   0.000%   0.001%   0.000%   0.000%
   28    4.2  1.5  1.5   0.035%   5.339%   0.004%   0.966%   1.115%   0.000%   0.008%   0.171%   0.024%  12.017%
   29    5.2  1.5  1.5   0.004%   0.888%   0.004%   0.978%   1.124%   0.000%   0.006%   0.127%   0.013%   5.306%
   30    6.2  1.5  1.5   0.917%   0.004%   0.967%   0.004%   0.000%   1.116%   0.594%   0.027%  13.745%   0.026%
   31    7.2  1.5  1.5   1.576%   0.011%   0.503%   0.000%   0.000%   1.574%   0.590%   0.026%  12.049%   0.027%
   32    8.2  1.5  1.5   1.162%   0.008%   1.553%   0.031%   0.009%   0.491%   0.037%   0.002%   6.002%   0.017%
   33    9.2  1.5  1.5   0.000%   0.000%   9.401%   0.243%   0.086%   8.368%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.266%   0.001%   0.078%   0.053%   0.054%  25.698%   1.836%   0.077%   0.000%   0.000%
   35    2.2  1.5  0.5  21.688%   0.146%  25.194%   0.298%   0.050%   0.318%   1.813%   0.083%   0.000%   0.000%
   36    3.2  1.5  0.5   0.174%  26.627%   0.015%   1.707%   1.963%   0.000%   0.321%   7.289%   0.000%   0.000%
   37    4.2  1.5  0.5   1.499%   0.011%   1.085%   0.029%   0.010%   0.970%   0.445%   0.020%   5.264%   0.014%
   38    5.2  1.5  0.5   2.435%   0.018%   1.082%   0.031%   0.012%   0.962%   0.441%   0.020%  21.089%   0.071%
   39    6.2  1.5  0.5   0.031%   4.252%   0.032%   1.098%   0.954%   0.012%   0.000%   0.002%   0.057%  17.055%
   40    7.2  1.5  0.5   0.000%   0.001%   0.032%   1.535%   0.497%   0.010%   0.001%   0.024%   0.003%   1.822%
   41    8.2  1.5  0.5   0.007%   0.991%   0.000%   0.501%   1.585%   0.001%   0.027%   0.604%   0.015%   5.307%
   42    9.2  1.5  0.5   0.000%   0.000%   0.029%   8.423%   9.646%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.001%   0.266%   0.053%   0.078%  25.698%   0.054%   0.077%   1.836%   0.000%   0.000%
   44    2.2  1.5 -0.5   0.146%  21.688%   0.298%  25.194%   0.318%   0.050%   0.083%   1.813%   0.000%   0.000%
   45    3.2  1.5 -0.5  26.627%   0.174%   1.707%   0.015%   0.000%   1.963%   7.289%   0.321%   0.000%   0.000%
   46    4.2  1.5 -0.5   0.011%   1.499%   0.029%   1.085%   0.970%   0.010%   0.020%   0.445%   0.014%   5.264%
   47    5.2  1.5 -0.5   0.018%   2.435%   0.031%   1.082%   0.962%   0.012%   0.020%   0.441%   0.071%  21.089%
   48    6.2  1.5 -0.5   4.252%   0.031%   1.098%   0.032%   0.012%   0.954%   0.002%   0.000%  17.055%   0.057%
   49    7.2  1.5 -0.5   0.001%   0.000%   1.535%   0.032%   0.010%   0.497%   0.024%   0.001%   1.822%   0.003%
   50    8.2  1.5 -0.5   0.991%   0.007%   0.501%   0.000%   0.001%   1.585%   0.604%   0.027%   5.307%   0.015%
   51    9.2  1.5 -0.5   0.000%   0.000%   8.423%   0.029%   0.000%   9.646%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   2.710%   0.016%   5.212%   0.022%   0.000%   6.018%   5.536%   0.248%   0.000%   0.000%
   53    2.2  1.5 -1.5  21.461%   0.141%   5.098%   0.019%   0.003%   5.792%   5.392%   0.241%   0.000%   0.000%
   54    3.2  1.5 -1.5   0.039%   5.808%   0.439%  17.297%  15.357%   0.168%   0.001%   0.000%   0.000%   0.000%
   55    4.2  1.5 -1.5   5.339%   0.035%   0.966%   0.004%   0.000%   1.115%   0.171%   0.008%  12.017%   0.024%
   56    5.2  1.5 -1.5   0.888%   0.004%   0.978%   0.004%   0.000%   1.124%   0.127%   0.006%   5.306%   0.013%
   57    6.2  1.5 -1.5   0.004%   0.917%   0.004%   0.967%   1.116%   0.000%   0.027%   0.594%   0.026%  13.745%
   58    7.2  1.5 -1.5   0.011%   1.576%   0.000%   0.503%   1.574%   0.000%   0.026%   0.590%   0.027%  12.049%
   59    8.2  1.5 -1.5   0.008%   1.162%   0.031%   1.553%   0.491%   0.009%   0.002%   0.037%   0.017%   6.002%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.243%   9.401%   8.368%   0.086%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   3.715%   0.202%   0.935%  42.072%
    5    5.2  0.5  0.5   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%   6.927%   0.035%   0.770%  13.397%
    6    6.2  0.5  0.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.455%   1.298%  14.839%   1.249%
    7    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.861%  22.163%   1.679%   0.045%
    8    8.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%  41.704%   1.502%   0.061%   3.744%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.202%   3.715%  42.072%   0.935%
   17    5.2  0.5 -0.5   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.035%   6.927%  13.397%   0.770%
   18    6.2  0.5 -0.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   1.298%   0.455%   1.249%  14.839%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  22.163%   0.861%   0.045%   1.679%
   20    8.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   1.502%  41.704%   3.744%   0.061%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.047%   0.002%   0.004%   0.311%
   26    2.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.272%   0.009%   0.001%   0.088%
   27    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.034%   0.015%   0.000%
   28    4.2  1.5  1.5   0.016%  17.414%   0.008%   1.816%   0.030%   2.953%   6.320%   0.232%   0.013%   0.883%
   29    5.2  1.5  1.5   0.020%  21.112%   0.006%   7.879%   0.005%   0.393%   0.917%   0.025%   0.086%   6.480%
   30    6.2  1.5  1.5   0.597%   0.003%   4.275%   0.040%  32.881%   0.119%   0.024%   0.737%   0.692%   0.015%
   31    7.2  1.5  1.5   1.442%   0.002%   6.594%   0.090%  29.397%   0.151%   0.058%   1.613%   0.492%   0.008%
   32    8.2  1.5  1.5   7.831%   0.012%   3.536%   0.009%  12.057%   0.045%   0.029%   0.763%   0.970%   0.011%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.111%   0.001%
   35    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.175%   0.012%   0.000%
   36    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.256%   0.008%   0.003%   0.204%
   37    4.2  1.5  0.5   6.884%   0.011%  24.240%   0.015%   9.209%   0.133%   0.058%   1.615%   1.824%   0.024%
   38    5.2  1.5  0.5  11.662%   0.017%   9.897%   0.037%   3.361%   0.017%   0.057%   1.948%   1.375%   0.013%
   39    6.2  1.5  0.5   0.003%   4.925%   0.004%   2.731%   0.019%   3.969%   4.128%   0.141%   0.053%   5.150%
   40    7.2  1.5  0.5   0.028%  23.646%   0.004%   3.508%   0.008%   0.359%   0.203%   0.007%   0.024%   2.011%
   41    8.2  1.5  0.5   0.003%   4.344%   0.060%  35.249%   0.163%   4.730%   1.399%   0.049%   0.005%   0.330%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.001%   0.111%
   44    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.175%   0.005%   0.000%   0.012%
   45    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.256%   0.204%   0.003%
   46    4.2  1.5 -0.5   0.011%   6.884%   0.015%  24.240%   0.133%   9.209%   1.615%   0.058%   0.024%   1.824%
   47    5.2  1.5 -0.5   0.017%  11.662%   0.037%   9.897%   0.017%   3.361%   1.948%   0.057%   0.013%   1.375%
   48    6.2  1.5 -0.5   4.925%   0.003%   2.731%   0.004%   3.969%   0.019%   0.141%   4.128%   5.150%   0.053%
   49    7.2  1.5 -0.5  23.646%   0.028%   3.508%   0.004%   0.359%   0.008%   0.007%   0.203%   2.011%   0.024%
   50    8.2  1.5 -0.5   4.344%   0.003%  35.249%   0.060%   4.730%   0.163%   0.049%   1.399%   0.330%   0.005%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.047%   0.311%   0.004%
   53    2.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.272%   0.088%   0.001%
   54    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.034%   0.001%   0.000%   0.015%
   55    4.2  1.5 -1.5  17.414%   0.016%   1.816%   0.008%   2.953%   0.030%   0.232%   6.320%   0.883%   0.013%
   56    5.2  1.5 -1.5  21.112%   0.020%   7.879%   0.006%   0.393%   0.005%   0.025%   0.917%   6.480%   0.086%
   57    6.2  1.5 -1.5   0.003%   0.597%   0.040%   4.275%   0.119%  32.881%   0.737%   0.024%   0.015%   0.692%
   58    7.2  1.5 -1.5   0.002%   1.442%   0.090%   6.594%   0.151%  29.397%   1.613%   0.058%   0.008%   0.492%
   59    8.2  1.5 -1.5   0.012%   7.831%   0.009%   3.536%   0.045%  12.057%   0.763%   0.029%   0.011%   0.970%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.011%   0.000%   0.006%   0.002%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.000%   0.002%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.014%   0.000%   0.003%   0.000%   0.000%   0.002%   0.000%   0.000%
    4    4.2  0.5  0.5   0.215%   0.165%   0.018%   0.209%   0.069%   7.105%   0.000%   0.000%   0.060%   0.005%
    5    5.2  0.5  0.5   5.865%  20.283%   0.150%   2.225%   0.955%   4.108%   0.000%   0.000%   0.883%   5.620%
    6    6.2  0.5  0.5  23.943%   5.489%   1.120%   0.280%   5.228%   0.804%   0.000%   0.000%   5.819%   0.861%
    7    7.2  0.5  0.5  21.737%   0.781%   7.349%   0.028%   0.069%   0.002%   0.000%   0.000%   6.008%   0.032%
    8    8.2  0.5  0.5   0.014%   0.298%   0.023%   7.162%   0.003%   0.214%   0.000%   0.000%   0.000%   0.015%
    9    9.2  0.5  0.5   0.000%   0.000%   0.286%   0.000%  29.471%   0.467%   0.003%   5.196%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%  24.926%   0.076%   5.112%   0.097%   0.003%   5.242%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.067%  19.962%   0.153%  10.032%   5.224%   0.003%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  10.584%   0.006%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.011%   0.000%   0.006%   0.000%   0.000%   0.002%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.002%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.014%   0.000%   0.003%   0.002%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.165%   0.215%   0.209%   0.018%   7.105%   0.069%   0.000%   0.000%   0.005%   0.060%
   17    5.2  0.5 -0.5  20.283%   5.865%   2.225%   0.150%   4.108%   0.955%   0.000%   0.000%   5.620%   0.883%
   18    6.2  0.5 -0.5   5.489%  23.943%   0.280%   1.120%   0.804%   5.228%   0.000%   0.000%   0.861%   5.819%
   19    7.2  0.5 -0.5   0.781%  21.737%   0.028%   7.349%   0.002%   0.069%   0.000%   0.000%   0.032%   6.008%
   20    8.2  0.5 -0.5   0.298%   0.014%   7.162%   0.023%   0.214%   0.003%   0.000%   0.000%   0.015%   0.000%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.286%   0.467%  29.471%   5.196%   0.003%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.076%  24.926%   0.097%   5.112%   5.242%   0.003%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%  19.962%   0.067%  10.032%   0.153%   0.003%   5.224%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%  10.584%   0.000%   0.000%
   25    1.2  1.5  1.5   0.002%   0.047%   0.002%   0.616%   0.005%   0.310%  17.049%   0.010%   0.012%   1.603%
   26    2.2  1.5  1.5   0.002%   0.067%   0.001%   0.627%   0.003%   0.314%  17.068%   0.010%   0.008%   1.801%
   27    3.2  1.5  1.5   0.234%   0.007%   0.949%   0.002%   1.833%   0.028%   0.005%   0.000%   6.643%   0.038%
   28    4.2  1.5  1.5   0.027%   0.776%   0.002%   0.618%   0.004%   0.310%   0.272%   0.000%   0.018%   2.487%
   29    5.2  1.5  1.5   0.013%   0.381%   0.002%   0.622%   0.005%   0.311%   0.271%   0.000%   0.012%   1.923%
   30    6.2  1.5  1.5   0.030%   0.001%   0.618%   0.002%   0.312%   0.005%   0.001%   1.087%   0.007%   0.000%
   31    7.2  1.5  1.5   0.397%   0.013%   0.820%   0.002%   0.125%   0.002%   0.001%   1.027%   1.280%   0.008%
   32    8.2  1.5  1.5   8.329%   0.281%   0.128%   0.000%   0.804%   0.013%   0.000%   0.061%  24.371%   0.158%
   33    9.2  1.5  1.5   0.000%   0.000%   8.973%   0.024%  17.419%   0.283%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.193%   0.007%   2.156%   0.006%   0.022%   0.000%   0.002%   5.690%   5.269%   0.035%
   35    2.2  1.5  0.5   0.155%   0.005%   0.123%   0.000%   2.029%   0.033%   0.007%   5.692%   4.699%   0.029%
   36    3.2  1.5  0.5   0.000%   0.003%   0.001%   0.208%   0.003%   0.103%  22.741%   0.010%   0.001%   0.018%
   37    4.2  1.5  0.5   0.352%   0.013%   0.315%   0.001%   0.612%   0.010%   0.000%   0.821%   0.885%   0.006%
   38    5.2  1.5  0.5   0.100%   0.005%   0.314%   0.001%   0.609%   0.012%   0.000%   0.815%   0.573%   0.004%
   39    6.2  1.5  0.5   0.028%   0.791%   0.001%   0.315%   0.012%   0.609%   0.000%   0.000%   0.017%   2.786%
   40    7.2  1.5  0.5   0.270%   8.004%   0.000%   0.129%   0.013%   0.802%   0.063%   0.000%   0.158%  24.144%
   41    8.2  1.5  0.5   0.022%   0.656%   0.002%   0.817%   0.002%   0.126%   1.029%   0.001%   0.011%   1.692%
   42    9.2  1.5  0.5   0.000%   0.000%   0.054%  17.641%   0.127%   8.877%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.007%   0.193%   0.006%   2.156%   0.000%   0.022%   5.690%   0.002%   0.035%   5.269%
   44    2.2  1.5 -0.5   0.005%   0.155%   0.000%   0.123%   0.033%   2.029%   5.692%   0.007%   0.029%   4.699%
   45    3.2  1.5 -0.5   0.003%   0.000%   0.208%   0.001%   0.103%   0.003%   0.010%  22.741%   0.018%   0.001%
   46    4.2  1.5 -0.5   0.013%   0.352%   0.001%   0.315%   0.010%   0.612%   0.821%   0.000%   0.006%   0.885%
   47    5.2  1.5 -0.5   0.005%   0.100%   0.001%   0.314%   0.012%   0.609%   0.815%   0.000%   0.004%   0.573%
   48    6.2  1.5 -0.5   0.791%   0.028%   0.315%   0.001%   0.609%   0.012%   0.000%   0.000%   2.786%   0.017%
   49    7.2  1.5 -0.5   8.004%   0.270%   0.129%   0.000%   0.802%   0.013%   0.000%   0.063%  24.144%   0.158%
   50    8.2  1.5 -0.5   0.656%   0.022%   0.817%   0.002%   0.126%   0.002%   0.001%   1.029%   1.692%   0.011%
   51    9.2  1.5 -0.5   0.000%   0.000%  17.641%   0.054%   8.877%   0.127%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.047%   0.002%   0.616%   0.002%   0.310%   0.005%   0.010%  17.049%   1.603%   0.012%
   53    2.2  1.5 -1.5   0.067%   0.002%   0.627%   0.001%   0.314%   0.003%   0.010%  17.068%   1.801%   0.008%
   54    3.2  1.5 -1.5   0.007%   0.234%   0.002%   0.949%   0.028%   1.833%   0.000%   0.005%   0.038%   6.643%
   55    4.2  1.5 -1.5   0.776%   0.027%   0.618%   0.002%   0.310%   0.004%   0.000%   0.272%   2.487%   0.018%
   56    5.2  1.5 -1.5   0.381%   0.013%   0.622%   0.002%   0.311%   0.005%   0.000%   0.271%   1.923%   0.012%
   57    6.2  1.5 -1.5   0.001%   0.030%   0.002%   0.618%   0.005%   0.312%   1.087%   0.001%   0.000%   0.007%
   58    7.2  1.5 -1.5   0.013%   0.397%   0.002%   0.820%   0.002%   0.125%   1.027%   0.001%   0.008%   1.280%
   59    8.2  1.5 -1.5   0.281%   8.329%   0.000%   0.128%   0.013%   0.804%   0.061%   0.000%   0.158%  24.371%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.024%   8.973%   0.283%  17.419%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%   0.000%   0.002%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.006%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   1.934%   8.728%   0.195%   0.619%   0.048%   0.041%   0.107%   3.593%   7.687%   7.162%
    5    5.2  0.5  0.5   1.802%   1.707%   0.057%   1.570%   0.434%   0.129%   0.043%   3.236%   9.062%   4.041%
    6    6.2  0.5  0.5   2.417%   1.815%   0.466%   0.257%   0.005%   1.469%   2.232%   0.126%   1.289%   7.603%
    7    7.2  0.5  0.5   0.177%   0.051%   5.374%   0.002%   0.045%   3.669%   0.127%   0.020%   0.424%   0.271%
    8    8.2  0.5  0.5   0.165%   0.558%   0.008%  10.804%   3.703%   0.042%   0.009%   0.047%   0.130%   0.171%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.030%   0.653%  17.296%   0.552%   0.051%   0.049%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.157%  10.464%   7.518%   0.317%   0.023%   0.022%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  16.292%   0.156%   0.043%   2.000%   0.004%   0.003%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.002%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%   0.006%   0.000%   0.000%
   16    4.2  0.5 -0.5   8.728%   1.934%   0.619%   0.195%   0.041%   0.048%   3.593%   0.107%   7.162%   7.687%
   17    5.2  0.5 -0.5   1.707%   1.802%   1.570%   0.057%   0.129%   0.434%   3.236%   0.043%   4.041%   9.062%
   18    6.2  0.5 -0.5   1.815%   2.417%   0.257%   0.466%   1.469%   0.005%   0.126%   2.232%   7.603%   1.289%
   19    7.2  0.5 -0.5   0.051%   0.177%   0.002%   5.374%   3.669%   0.045%   0.020%   0.127%   0.271%   0.424%
   20    8.2  0.5 -0.5   0.558%   0.165%  10.804%   0.008%   0.042%   3.703%   0.047%   0.009%   0.171%   0.130%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.653%   0.030%   0.552%  17.296%   0.049%   0.051%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  10.464%   0.157%   0.317%   7.518%   0.022%   0.023%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.156%  16.292%   2.000%   0.043%   0.003%   0.004%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   1.518%   6.857%   0.108%   0.988%   0.148%   0.001%   0.000%   0.020%   0.145%   0.145%
   26    2.2  1.5  1.5   0.655%   2.134%   0.043%   6.420%   0.156%   0.002%   0.001%   0.019%   0.131%   0.174%
   27    3.2  1.5  1.5   0.589%   0.132%   0.633%   0.011%   0.002%   0.056%   0.438%   0.016%   4.583%   4.254%
   28    4.2  1.5  1.5   0.132%   2.619%   0.013%  19.297%  10.861%   0.107%   0.032%   1.340%   0.041%   0.040%
   29    5.2  1.5  1.5   3.906%  15.902%   0.284%   2.591%  10.765%   0.136%   0.028%   1.351%   0.046%   0.043%
   30    6.2  1.5  1.5   1.802%   0.281%   3.126%   0.017%   0.137%  10.762%   1.343%   0.028%   0.037%   0.039%
   31    7.2  1.5  1.5   0.854%   0.168%   4.394%   0.010%   0.127%  12.003%   0.130%   0.013%   0.001%   0.002%
   32    8.2  1.5  1.5   3.120%   0.737%   1.239%   0.054%   0.030%   0.109%  11.750%   0.395%   0.460%   0.435%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.036%   0.313%   0.011%  19.311%  18.140%
   34    1.2  1.5  0.5   2.745%   0.550%   0.417%   0.037%   0.004%   0.344%   0.055%   0.003%   0.630%   0.555%
   35    2.2  1.5  0.5   0.140%   0.038%   4.146%   0.007%   0.001%   0.096%   0.290%   0.008%   2.772%   2.698%
   36    3.2  1.5  0.5   0.728%   4.045%   0.062%   7.235%   0.052%   0.001%   0.000%   0.006%   0.062%   0.039%
   37    4.2  1.5  0.5   4.435%   0.735%   5.557%   0.058%   0.052%   1.319%  10.526%   0.380%   0.438%   0.410%
   38    5.2  1.5  0.5   2.832%   0.651%   7.577%   0.058%   0.055%   1.303%  10.582%   0.349%   0.419%   0.404%
   39    6.2  1.5  0.5   3.439%  13.329%   0.213%  11.247%   1.330%   0.056%   0.353%  10.599%   0.423%   0.441%
   40    7.2  1.5  0.5   0.860%   3.800%   0.054%   0.644%   0.108%   0.030%   0.396%  11.759%   0.439%   0.465%
   41    8.2  1.5  0.5   0.148%   0.765%   0.010%   4.093%  12.001%   0.131%   0.013%   0.126%   0.003%   0.002%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.316%   0.003%   0.001%   0.040%   1.918%   1.861%
   43    1.2  1.5 -0.5   0.550%   2.745%   0.037%   0.417%   0.344%   0.004%   0.003%   0.055%   0.555%   0.630%
   44    2.2  1.5 -0.5   0.038%   0.140%   0.007%   4.146%   0.096%   0.001%   0.008%   0.290%   2.698%   2.772%
   45    3.2  1.5 -0.5   4.045%   0.728%   7.235%   0.062%   0.001%   0.052%   0.006%   0.000%   0.039%   0.062%
   46    4.2  1.5 -0.5   0.735%   4.435%   0.058%   5.557%   1.319%   0.052%   0.380%  10.526%   0.410%   0.438%
   47    5.2  1.5 -0.5   0.651%   2.832%   0.058%   7.577%   1.303%   0.055%   0.349%  10.582%   0.404%   0.419%
   48    6.2  1.5 -0.5  13.329%   3.439%  11.247%   0.213%   0.056%   1.330%  10.599%   0.353%   0.441%   0.423%
   49    7.2  1.5 -0.5   3.800%   0.860%   0.644%   0.054%   0.030%   0.108%  11.759%   0.396%   0.465%   0.439%
   50    8.2  1.5 -0.5   0.765%   0.148%   4.093%   0.010%   0.131%  12.001%   0.126%   0.013%   0.002%   0.003%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.003%   0.316%   0.040%   0.001%   1.861%   1.918%
   52    1.2  1.5 -1.5   6.857%   1.518%   0.988%   0.108%   0.001%   0.148%   0.020%   0.000%   0.145%   0.145%
   53    2.2  1.5 -1.5   2.134%   0.655%   6.420%   0.043%   0.002%   0.156%   0.019%   0.001%   0.174%   0.131%
   54    3.2  1.5 -1.5   0.132%   0.589%   0.011%   0.633%   0.056%   0.002%   0.016%   0.438%   4.254%   4.583%
   55    4.2  1.5 -1.5   2.619%   0.132%  19.297%   0.013%   0.107%  10.861%   1.340%   0.032%   0.040%   0.041%
   56    5.2  1.5 -1.5  15.902%   3.906%   2.591%   0.284%   0.136%  10.765%   1.351%   0.028%   0.043%   0.046%
   57    6.2  1.5 -1.5   0.281%   1.802%   0.017%   3.126%  10.762%   0.137%   0.028%   1.343%   0.039%   0.037%
   58    7.2  1.5 -1.5   0.168%   0.854%   0.010%   4.394%  12.003%   0.127%   0.013%   0.130%   0.002%   0.001%
   59    8.2  1.5 -1.5   0.737%   3.120%   0.054%   1.239%   0.109%   0.030%   0.395%  11.750%   0.435%   0.460%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.036%   0.001%   0.011%   0.313%  18.140%  19.311%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.000%   0.001%   0.005%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.005%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.001%   0.000%   0.000%   0.005%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.051%   0.307%   0.000%   0.000%   0.000%   0.000%   3.777%   7.748%   0.066%   1.359%
    5    5.2  0.5  0.5   0.608%   1.366%   0.000%   0.000%   0.000%   0.000%   1.002%   5.849%   0.448%   5.625%
    6    6.2  0.5  0.5   6.143%   0.054%   0.000%   0.000%   0.000%   0.000%   9.037%   2.555%   0.831%   0.502%
    7    7.2  0.5  0.5  14.269%   0.089%   0.000%   0.000%   0.000%   0.000%   0.749%   0.156%  11.440%   0.580%
    8    8.2  0.5  0.5   0.089%  14.796%   0.000%   0.000%   0.000%   0.000%   0.277%   1.175%   0.582%  10.919%
    9    9.2  0.5  0.5   0.005%   0.000%   0.298%   7.205%   9.318%   0.005%   5.779%   1.982%   0.532%   0.053%
   10   10.2  0.5  0.5   0.056%   0.000%   0.290%   7.261%   9.357%   0.004%   0.378%   0.186%   7.306%   0.436%
   11   11.2  0.5  0.5   0.001%   0.095%   7.235%   0.294%   0.005%   9.333%   0.948%   3.230%   0.189%   3.961%
   12   12.2  0.5  0.5   0.000%   0.000%  24.441%   0.996%   0.012%  23.685%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.001%   0.000%   0.000%   0.005%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.005%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.001%   0.005%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.307%   0.051%   0.000%   0.000%   0.000%   0.000%   7.748%   3.777%   1.359%   0.066%
   17    5.2  0.5 -0.5   1.366%   0.608%   0.000%   0.000%   0.000%   0.000%   5.849%   1.002%   5.625%   0.448%
   18    6.2  0.5 -0.5   0.054%   6.143%   0.000%   0.000%   0.000%   0.000%   2.555%   9.037%   0.502%   0.831%
   19    7.2  0.5 -0.5   0.089%  14.269%   0.000%   0.000%   0.000%   0.000%   0.156%   0.749%   0.580%  11.440%
   20    8.2  0.5 -0.5  14.796%   0.089%   0.000%   0.000%   0.000%   0.000%   1.175%   0.277%  10.919%   0.582%
   21    9.2  0.5 -0.5   0.000%   0.005%   7.205%   0.298%   0.005%   9.318%   1.982%   5.779%   0.053%   0.532%
   22   10.2  0.5 -0.5   0.000%   0.056%   7.261%   0.290%   0.004%   9.357%   0.186%   0.378%   0.436%   7.306%
   23   11.2  0.5 -0.5   0.095%   0.001%   0.294%   7.235%   9.333%   0.005%   3.230%   0.948%   3.961%   0.189%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.996%  24.441%  23.685%   0.012%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.020%   2.913%   0.681%   0.028%   0.001%   1.508%   0.516%   1.775%   0.109%   2.168%
   26    2.2  1.5  1.5   0.023%   2.911%   0.691%   0.028%   0.001%   1.502%   0.555%   1.724%   0.111%   2.171%
   27    3.2  1.5  1.5   0.891%   0.003%   0.000%   0.000%   0.000%   0.000%   4.944%   1.886%   6.416%   0.440%
   28    4.2  1.5  1.5   0.006%   0.852%   2.367%   0.099%   0.001%   2.107%   0.429%   1.452%   0.084%   1.797%
   29    5.2  1.5  1.5   0.007%   0.848%   2.333%   0.111%   0.003%   2.114%   0.418%   1.471%   0.085%   1.796%
   30    6.2  1.5  1.5   0.825%   0.008%   0.405%   9.419%   8.437%   0.006%   1.473%   0.414%   1.790%   0.081%
   31    7.2  1.5  1.5   0.901%   0.006%   0.358%   8.897%   7.960%   0.004%   0.791%   0.220%   2.603%   0.136%
   32    8.2  1.5  1.5   0.004%   0.000%   0.022%   0.545%   0.483%   0.000%   2.018%   0.723%   0.939%   0.070%
   33    9.2  1.5  1.5   3.781%   0.008%   0.000%   0.000%   0.000%   0.000%   4.924%   1.844%   6.375%   0.428%
   34    1.2  1.5  0.5   6.348%   0.036%   0.009%   0.234%   0.502%   0.000%   0.089%   0.013%   9.979%   0.560%
   35    2.2  1.5  0.5   2.062%   0.024%   0.008%   0.223%   0.500%   0.001%   7.956%   2.600%   0.096%   0.000%
   36    3.2  1.5  0.5   0.011%   0.952%   0.914%   0.035%   0.001%   2.005%   0.153%   0.618%   0.030%   0.726%
   37    4.2  1.5  0.5   0.090%   0.000%   0.288%   7.063%   6.343%   0.003%   1.363%   0.503%   1.772%   0.116%
   38    5.2  1.5  0.5   0.080%   0.000%   0.289%   7.098%   6.318%   0.003%   1.383%   0.494%   1.773%   0.114%
   39    6.2  1.5  0.5   0.000%   0.086%   0.000%   0.001%   0.001%   0.000%   0.493%   1.385%   0.114%   1.777%
   40    7.2  1.5  0.5   0.000%   0.004%   0.541%   0.023%   0.000%   0.487%   0.717%   2.017%   0.068%   0.942%
   41    8.2  1.5  0.5   0.006%   0.895%   8.896%   0.361%   0.004%   7.959%   0.217%   0.789%   0.133%   2.611%
   42    9.2  1.5  0.5   0.261%  37.205%   0.000%   0.000%   0.000%   0.000%   1.559%   5.250%   0.308%   6.452%
   43    1.2  1.5 -0.5   0.036%   6.348%   0.234%   0.009%   0.000%   0.502%   0.013%   0.089%   0.560%   9.979%
   44    2.2  1.5 -0.5   0.024%   2.062%   0.223%   0.008%   0.001%   0.500%   2.600%   7.956%   0.000%   0.096%
   45    3.2  1.5 -0.5   0.952%   0.011%   0.035%   0.914%   2.005%   0.001%   0.618%   0.153%   0.726%   0.030%
   46    4.2  1.5 -0.5   0.000%   0.090%   7.063%   0.288%   0.003%   6.343%   0.503%   1.363%   0.116%   1.772%
   47    5.2  1.5 -0.5   0.000%   0.080%   7.098%   0.289%   0.003%   6.318%   0.494%   1.383%   0.114%   1.773%
   48    6.2  1.5 -0.5   0.086%   0.000%   0.001%   0.000%   0.000%   0.001%   1.385%   0.493%   1.777%   0.114%
   49    7.2  1.5 -0.5   0.004%   0.000%   0.023%   0.541%   0.487%   0.000%   2.017%   0.717%   0.942%   0.068%
   50    8.2  1.5 -0.5   0.895%   0.006%   0.361%   8.896%   7.959%   0.004%   0.789%   0.217%   2.611%   0.133%
   51    9.2  1.5 -0.5  37.205%   0.261%   0.000%   0.000%   0.000%   0.000%   5.250%   1.559%   6.452%   0.308%
   52    1.2  1.5 -1.5   2.913%   0.020%   0.028%   0.681%   1.508%   0.001%   1.775%   0.516%   2.168%   0.109%
   53    2.2  1.5 -1.5   2.911%   0.023%   0.028%   0.691%   1.502%   0.001%   1.724%   0.555%   2.171%   0.111%
   54    3.2  1.5 -1.5   0.003%   0.891%   0.000%   0.000%   0.000%   0.000%   1.886%   4.944%   0.440%   6.416%
   55    4.2  1.5 -1.5   0.852%   0.006%   0.099%   2.367%   2.107%   0.001%   1.452%   0.429%   1.797%   0.084%
   56    5.2  1.5 -1.5   0.848%   0.007%   0.111%   2.333%   2.114%   0.003%   1.471%   0.418%   1.796%   0.085%
   57    6.2  1.5 -1.5   0.008%   0.825%   9.419%   0.405%   0.006%   8.437%   0.414%   1.473%   0.081%   1.790%
   58    7.2  1.5 -1.5   0.006%   0.901%   8.897%   0.358%   0.004%   7.960%   0.220%   0.791%   0.136%   2.603%
   59    8.2  1.5 -1.5   0.000%   0.004%   0.545%   0.022%   0.000%   0.483%   0.723%   2.018%   0.070%   0.939%
   60    9.2  1.5 -1.5   0.008%   3.781%   0.000%   0.000%   0.000%   0.000%   1.844%   4.924%   0.428%   6.375%


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

              2       7     1941.94       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    300498.89 289916.97   3181.25   7393.27      5.82      0.06      1.17
 REAL TIME  *    303475.60 SEC
 DISK USED  *         1.93 GB (local),       23.28 GB (total)
 SF USED    *        12.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -295.203914714049

              CI              CI           MULTI         RHF-SCF
   -295.15652440   -295.15657512   -294.37619516   -294.74654372
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
