
 Working directory              : /wrk/irikura/molpro.NOcWCfpeRF/
 Global scratch directory       : /wrk/irikura/molpro.NOcWCfpeRF/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.NOcWCfpeRF/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    8
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.00 sec
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
     wf,charge=0,sym=2,spin=1;state,NDOUB; weight,3[25],(NDOUB-3)[1]
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
 Commands initialized (846), CPU time= 0.00 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   I SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 31-Oct-24          TIME: 13:41:35  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  32000 MW

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

     28.574 MB (compressed) written to integral file ( 17.1%)

     Node minimum: 2.097 MB, node maximum: 5.243 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1272449.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1272449      RECORD LENGTH: 524288

 Memory used in sort:       1.83 MW

 SORT1 READ    21109381. AND WROTE      252985. INTEGRALS IN      1 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.09 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN     88 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC

 Node minimum:     1271881.  Node maximum:     1277544. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.20      1.02
 REAL TIME  *         3.09 SEC
 DISK USED  *        29.28 MB (local),      279.71 MB (total)
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
   4     -294.74648011      -0.00031343     0.44D-03     0.85D-03     3     0       0.01      0.04    diag
   5     -294.74653920      -0.00005909     0.14D-03     0.53D-03     4     0       0.00      0.04    diag
   6     -294.74654357      -0.00000437     0.33D-04     0.18D-03     5     0       0.01      0.05    diag
   7     -294.74654371      -0.00000014     0.45D-05     0.24D-04     6     0       0.01      0.06    diag
   8     -294.74654372      -0.00000001     0.98D-06     0.95D-05     7     0       0.01      0.07    fixocc
   9     -294.74654372      -0.00000000     0.70D-07     0.30D-06     8     0       0.00      0.07    diag
  10     -294.74654372       0.00000000     0.13D-07     0.34D-07     0     0       0.01      0.08    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -294.746543715315
  RHF One-electron energy            -520.925437582738
  RHF Two-electron energy             226.178893867423
  RHF Kinetic energy                  110.887384553761
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.658071023151

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45092     1  1  s    1.00263
    2.1     2.00000    -2.00367     1  1  d0   0.99954
    3.1     2.00000    -2.00367     1  1  d1-  0.99567
    4.1     2.00000    -2.00367     1  1  d2- -0.29781    1  1  d1+  0.88051    1  1  d2+  0.36755
    5.1     2.00000    -2.00367     1  1  d2-  0.92759    1  1  d1+  0.35573
    6.1     2.00000    -2.00367     1  1  d1+ -0.31169    1  1  d2+  0.92185
    7.1     2.00000    -0.60771     1  2  s    0.97222
    1.2     2.00000    -5.27630     1  1  pz   0.99795
    2.2     2.00000    -5.27630     1  1  px   1.00022
    3.2     2.00000    -5.27630     1  1  py   0.99795
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
 CPU TIMES  *         1.31      0.11      1.02
 REAL TIME  *         3.79 SEC
 DISK USED  *        29.93 MB (local),      284.87 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.529D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.118D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.431D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.351D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.395D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 3   5 4 6 1 2 3 5 4 6 1   2 3 5 4 6 1 2 5 3 4   6 2 3 5 4 6 8121514
                                        7 9111310 1 2 5 3 4   6 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.632D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.632D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.330D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.507D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.674D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.101D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.110D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.184D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 2 1 3   2 110 8 6 5 4 7 9 1   2 3 810 6 4 5 7 9 6   4 5 7 9 810 3 1 2 7
                                        9 6 4 5 810 1 2 3 6   7 9 4 5 810 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.26882   0.26882   0.26882   0.01075   0.01075   0.01075   0.01075   0.01075
                                          0.01075   0.01075   0.01075   0.01075
 Weight factors for state symmetry  2:    0.01075   0.01075   0.01075   0.01075   0.01075   0.01075   0.01075   0.01075
                                          0.01075
 
 Number of orbital rotations:  796  ( 24 closed/active, 426 closed/virtual, 0 active/active, 346 active/virtual )
 Total number of variables:    9616
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   33    0   -294.55121912    -294.61658243   -0.06536331    0.27036836 0.00075040 0.00236842  0.10E+01      1.71
   2    8   25    0   -294.59408995    -294.60031677   -0.00622682    0.21525728 0.00039613 0.00062286  0.33E+00      3.24
   3    7   21    0   -294.60036961    -294.60037110   -0.00000149    0.00227344 0.00000313 0.00000467  0.95E-02      4.63
   4    4   11    0   -294.60037110    -294.60037110   -0.00000000    0.00000064 0.00000001 0.00000003  0.15E-05      5.53

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.22E-07)
                       Final energy:   -294.60037110
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -294.656302216936
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.88926434
 One electron energy                          -513.86037023
 Two electron energy                           219.20406801
 Virial ratio                                    3.65721217
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -294.656302216927
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.88926434
 One electron energy                          -513.86037023
 Two electron energy                           219.20406802
 Virial ratio                                    3.65721217
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -294.656302216927
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.88926434
 One electron energy                          -513.86037023
 Two electron energy                           219.20406802
 Virial ratio                                    3.65721217
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -294.366233504261
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.19869953
 One electron energy                          -507.66430684
 Two electron energy                           213.29807334
 Virial ratio                                    3.67123146
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -294.366233504231
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.19869953
 One electron energy                          -507.66430684
 Two electron energy                           213.29807334
 Virial ratio                                    3.67123146
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -294.366233504210
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.19869953
 One electron energy                          -507.66430684
 Two electron energy                           213.29807334
 Virial ratio                                    3.67123146
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -294.366233504112
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.19869953
 One electron energy                          -507.66430685
 Two electron energy                           213.29807335
 Virial ratio                                    3.67123146
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -294.366233504110
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.19869953
 One electron energy                          -507.66430685
 Two electron energy                           213.29807335
 Virial ratio                                    3.67123146
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -294.359907871645
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.25451355
 One electron energy                          -507.88870717
 Two electron energy                           213.52879930
 Virial ratio                                    3.66982184
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -294.359907871614
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.25451355
 One electron energy                          -507.88870717
 Two electron energy                           213.52879930
 Virial ratio                                    3.66982184
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -294.359907871488
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.25451355
 One electron energy                          -507.88870718
 Two electron energy                           213.52879931
 Virial ratio                                    3.66982184
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -294.358781180287
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.19483737
 One electron energy                          -507.65302192
 Two electron energy                           213.29424074
 Virial ratio                                    3.67125746
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -294.377615859619
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.17153808
 One electron energy                          -507.57618458
 Two electron energy                           213.19856872
 Virial ratio                                    3.67199334
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -294.377615859610
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.17153808
 One electron energy                          -507.57618459
 Two electron energy                           213.19856873
 Virial ratio                                    3.67199334
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -294.377615859559
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.17153808
 One electron energy                          -507.57618459
 Two electron energy                           213.19856873
 Virial ratio                                    3.67199334
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -294.370024946094
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18138847
 One electron energy                          -507.60917249
 Two electron energy                           213.23914754
 Virial ratio                                    3.67168556
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -294.370024946072
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18138847
 One electron energy                          -507.60917249
 Two electron energy                           213.23914754
 Virial ratio                                    3.67168556
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -294.370024946057
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18138848
 One electron energy                          -507.60917249
 Two electron energy                           213.23914755
 Virial ratio                                    3.67168556
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -294.370024945978
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18138848
 One electron energy                          -507.60917250
 Two electron energy                           213.23914755
 Virial ratio                                    3.67168556
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -294.370024945977
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18138848
 One electron energy                          -507.60917250
 Two electron energy                           213.23914755
 Virial ratio                                    3.67168556
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -294.359201703518
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.19065410
 One electron energy                          -507.63753891
 Two electron energy                           213.27833720
 Virial ratio                                    3.67136269
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.000003003833
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999412397
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999997583770
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.026574832982
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000000004114
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000002008
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     3.973425304357
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     3.999999856579
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>     0.999999999736
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     0.999999986739
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     0.000000013522
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>    -0.000000000003
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999999994
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999999999741
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>    -0.000000000006
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     0.022276153914
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000000000148
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000000438
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     4.000000000018
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     3.977733501893
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>    -0.000000000003
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999564265
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.004538211325
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.995462224408
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.268128325694
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.999998765596
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000001237430
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.731873246115
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999998425206
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>     0.000000002620
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     0.999999997641
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     0.999999999736
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>    -0.000000000003
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000000017805
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999999977464
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     1.000000000003
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.246653100805
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.999994943895
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.000005338100
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000000000003
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.753397636260
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>    -0.000000000003
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999997431901
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.995462376277
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.004540191821
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     2.705296841349
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000001230314
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     3.999998760587
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.294701449552
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.000001718240
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     0.999999997641
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     0.000000015617
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     0.999999986739
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>    -0.000000000003
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999999982202
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.000000022797
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     1.000000000003
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     2.731070745306
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000005055982
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     3.999994661487
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000000000003
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     1.268868861872
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>    -0.000000000003
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     1.999999999999
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     1.999999999999
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     1.999999999999
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000025
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000025
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     6.000000000025
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     6.000000000025
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     6.000000000025
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     1.999999999997
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     1.999999999997
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     1.999999999997
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>    -0.000000000010
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000001
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000001
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000001
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000025
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000025
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000025
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000025
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000025
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>    -0.000000000010
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 3 5   6 4 2 1 3 5 6 4 2 1   3 5 6 4 2 1 5 3 6 4   2 3 5 6 4 213101415
                                        81211 7 9 1 5 3 6 4   2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 2   1 3 9 7 810 5 6 4 2   1 3 7 9 810 5 6 4 7   9 810 5 6 4 2 1 3 9
                                        7 810 5 6 4 2 1 3 9   7 810 5 6 4 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.78684     1  1  s    1.00178
    2.1     2.00000    -2.33899     1  1  d2-  1.00028
    3.1     2.00000    -2.33899     1  1  d2+  1.00028
    4.1     2.00000    -2.33899     1  1  d1-  1.00028
    5.1     2.00000    -2.33899     1  1  d1+  1.00028
    6.1     2.00000    -2.33899     1  1  d0   1.00028
    7.1     1.99963    -0.90848     1  2  s    1.01398
    1.2     2.00000    -5.61157     1  1  py   0.99980
    2.2     2.00000    -5.61157     1  1  px   0.99980
    3.2     2.00000    -5.61157     1  1  pz   0.99980
    4.2     1.60030    -0.36437     1  2  pz   1.02108
    5.2     1.60030    -0.36437     1  2  px   1.02108
    6.2     1.60030    -0.36437     1  2  py   1.02108
    7.2     0.06649     0.06387     1  2  pz  -0.48071    1  7  pz   0.62703    1  8  pz   0.55406
    8.2     0.06649     0.06387     1  2  px  -0.48071    1  7  px   0.62703    1  8  px   0.55406
    9.2     0.06649     0.06387     1  2  py  -0.48071    1  7  py   0.62703    1  8  py   0.55406
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a2000       0.99848677      0.00076539      0.00155207     -0.00000000      0.00000000     -0.00000000      0.00000000
 2 22a000      -0.00065910      0.99622002     -0.06726118     -0.00000000      0.00000000     -0.00000000      0.00000000
 2 a22000      -0.00160011      0.06726005      0.99621903     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2 a2a0b0      -0.00000000     -0.00000000     -0.00000000      0.65927566      0.00001822     -0.00002349      0.05391612
 2 aa200b      -0.00000000      0.00000000      0.00000000      0.28294497     -0.00000455      0.00000616      0.59790567
 2 aa20b0      -0.00003523      0.00148092      0.02193455     -0.00002172     -0.00036697     -0.57285547      0.00001616
 2 2aa0b0       0.00001451     -0.02193458      0.00148094     -0.00001685      0.57285547     -0.00036697      0.00001229
 2 a2ab00       0.00001451     -0.02193457      0.00148094      0.00001685     -0.57285545      0.00036696     -0.00001229
 2 a2a00b      -0.00003523      0.00148092      0.02193456      0.00002172      0.00036697      0.57285545     -0.00001616
 2 aa2b00      -0.02198448     -0.00001685     -0.00003417      0.00001198     -0.00001860      0.00000607     -0.00146095
 2 2aa00b       0.02198449      0.00001685      0.00003417      0.00001198     -0.00001860      0.00000607     -0.00146095
 2 2aab00      -0.00000000     -0.00000000     -0.00000000      0.37633067      0.00002277     -0.00002965     -0.54398955
 2 a2ba00      -0.00000850      0.01285164     -0.00086770     -0.00000861      0.29278853     -0.00018756      0.00000628
 2 b2a00a       0.00002064     -0.00086768     -0.01285162     -0.00001110     -0.00018756     -0.29278853      0.00000826
 2 2ba00a      -0.01288088     -0.00000987     -0.00002002     -0.00000612      0.00000951     -0.00000310      0.00074670
 2 ab2a00       0.01288088      0.00000987      0.00002002     -0.00000612      0.00000951     -0.00000310      0.00074670
 2 2ab0a0      -0.00000850      0.01285164     -0.00086770      0.00000861     -0.29278854      0.00018756     -0.00000628
 2 ba20a0       0.00002064     -0.00086768     -0.01285162      0.00001110      0.00018756      0.29278854     -0.00000826
 2 a2b0a0       0.00000000      0.00000000      0.00000000     -0.33067476     -0.00000941      0.00001214     -0.01427882
 2 b2a0a0       0.00000000      0.00000000      0.00000000     -0.32860091     -0.00000880      0.00001135     -0.03963730
 2 ab200a       0.00000000     -0.00000000     -0.00000000     -0.12997345      0.00000273     -0.00000367     -0.30439445
 2 ba200a       0.00000000     -0.00000000     -0.00000000     -0.15297152      0.00000182     -0.00000249     -0.29351122
 2 ab20a0       0.00001459     -0.00061324     -0.00908293      0.00001062      0.00017941      0.28006693     -0.00000790
 2 2ba0a0      -0.00000601      0.00908294     -0.00061325      0.00000824     -0.28006693      0.00017941     -0.00000601
 2 b2aa00      -0.00000601      0.00908294     -0.00061325     -0.00000824      0.28006693     -0.00017941      0.00000601
 2 a2b00a       0.00001459     -0.00061324     -0.00908293     -0.00001062     -0.00017941     -0.28006693      0.00000790
 2 ba2a00       0.00910361      0.00000698      0.00001415     -0.00000586      0.00000909     -0.00000297      0.00071425
 2 2ab00a      -0.00910361     -0.00000698     -0.00001415     -0.00000586      0.00000909     -0.00000297      0.00071425
 2 2baa00       0.00000000     -0.00000000      0.00000000     -0.17770322     -0.00001123      0.00001463      0.27923239
 2 2aba00       0.00000000      0.00000000      0.00000000     -0.19862745     -0.00001154      0.00001502      0.26475716
 2 22000a       0.00000629     -0.00950907      0.00064202     -0.00000000      0.00000000      0.00000000     -0.00000000
 2 2020a0      -0.00953071     -0.00000731     -0.00001481      0.00000000      0.00000000      0.00000000     -0.00000000
 2 022a00       0.00001527     -0.00064201     -0.00950906      0.00000000     -0.00000000      0.00000000      0.00000000
 2 a02020       0.00002262     -0.00095093     -0.01408472      0.00000235      0.00003968      0.06194304     -0.00000175
 2 20a020       0.00000932     -0.01408474      0.00095095     -0.00000182      0.06194304     -0.00003968      0.00000133
 2 02a200       0.00000932     -0.01408474      0.00095095      0.00000182     -0.06194304      0.00003968     -0.00000133
 2 a20002       0.00002262     -0.00095093     -0.01408472     -0.00000235     -0.00003968     -0.06194304      0.00000175
 2 0a2200      -0.01411678     -0.00001082     -0.00002194      0.00000130     -0.00000201      0.00000066     -0.00015797
 2 2a0002      -0.01411678     -0.00001082     -0.00002194     -0.00000130      0.00000201     -0.00000066      0.00015797
 
 Energy:     -294.65630222   -294.65630222   -294.65630222   -294.36623350   -294.36623350   -294.36623350   -294.36623350

 State:              8               9              10              11              12
 2 2a2000      -0.00000000      0.00000067     -0.00000473     -0.04103889      0.00000000
 2 22a000       0.00000000      0.04103889      0.00000199      0.00000067      0.00000000
 2 a22000      -0.00000000      0.00000199     -0.04103889      0.00000473     -0.00000000
 2 a2a0b0       0.00012372      0.00000000     -0.00000000     -0.00000000     -0.46808115
 2 aa200b       0.00151892     -0.00000000      0.00000000     -0.00000000      0.46808117
 2 aa20b0       0.00000610     -0.00002577      0.53045286     -0.00006109     -0.00000000
 2 2aa0b0       0.00001864      0.53045286      0.00002577      0.00000863      0.00000000
 2 a2ab00      -0.00001864      0.53045288      0.00002577      0.00000863      0.00000000
 2 a2a00b      -0.00000610     -0.00002577      0.53045288     -0.00006109     -0.00000000
 2 aa2b00       0.57285372      0.00000864     -0.00006109     -0.53045287     -0.00000000
 2 2aa00b       0.57285371     -0.00000864      0.00006109      0.53045287      0.00000000
 2 2aab00      -0.00139521     -0.00000000     -0.00000000     -0.00000000      0.46808117
 2 a2ba00       0.00000953     -0.40658829     -0.00001975     -0.00000662     -0.00000000
 2 b2a00a       0.00000312      0.00001975     -0.40658829      0.00004682      0.00000000
 2 2ba00a      -0.29278764      0.00000662     -0.00004682     -0.40658828     -0.00000000
 2 ab2a00      -0.29278764     -0.00000662      0.00004682      0.40658828      0.00000000
 2 2ab0a0      -0.00000953     -0.40658828     -0.00001975     -0.00000662     -0.00000000
 2 ba20a0      -0.00000312      0.00001975     -0.40658828      0.00004682      0.00000000
 2 a2b0a0      -0.00002950     -0.00000000      0.00000000      0.00000000      0.23404058
 2 b2a0a0      -0.00009422     -0.00000000      0.00000000      0.00000000      0.23404058
 2 ab200a      -0.00077358      0.00000000     -0.00000000      0.00000000     -0.23404058
 2 ba200a      -0.00074534      0.00000000     -0.00000000      0.00000000     -0.23404058
 2 ab20a0      -0.00000298      0.00000602     -0.12386458      0.00001426      0.00000000
 2 2ba0a0      -0.00000911     -0.12386458     -0.00000602     -0.00000202     -0.00000000
 2 b2aa00       0.00000911     -0.12386459     -0.00000602     -0.00000202     -0.00000000
 2 a2b00a       0.00000298      0.00000602     -0.12386459      0.00001426      0.00000000
 2 ba2a00      -0.28006608     -0.00000202      0.00001426      0.12386459      0.00000000
 2 2ab00a      -0.28006607      0.00000202     -0.00001426     -0.12386459     -0.00000000
 2 2baa00       0.00071584      0.00000000      0.00000000      0.00000000     -0.23404058
 2 2aba00       0.00067936      0.00000000      0.00000000      0.00000000     -0.23404058
 2 22000a       0.00000000      0.23430107      0.00001138      0.00000381     -0.00000000
 2 2020a0       0.00000000      0.00000381     -0.00002698     -0.23430107      0.00000000
 2 022a00      -0.00000000      0.00001138     -0.23430107      0.00002698     -0.00000000
 2 a02020      -0.00000066      0.00000232     -0.04774858      0.00000550      0.00000000
 2 20a020       0.00000202      0.04774858      0.00000232      0.00000078      0.00000000
 2 02a200      -0.00000202      0.04774858      0.00000232      0.00000078      0.00000000
 2 a20002       0.00000066      0.00000232     -0.04774858      0.00000550      0.00000000
 2 0a2200       0.06194286      0.00000078     -0.00000550     -0.04774858     -0.00000000
 2 2a0002      -0.06194285      0.00000078     -0.00000550     -0.04774858     -0.00000000
 
 Energy:     -294.36623350   -294.35990787   -294.35990787   -294.35990787   -294.35878118
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a2a0a0       0.00000000     -0.00000000      0.00000000      0.80947868     -0.00000319      0.00000460      0.00000012
 2 aa200a      -0.00000000      0.00000000      0.00000000      0.35227806     -0.00000538      0.00000327      0.00000005
 2 aa2a00      -0.00000218      0.00001141      0.70354290     -0.00000011     -0.00000280     -0.00000836      0.70298931
 2 aa20a0      -0.00009387      0.70354289     -0.00001141     -0.00000390      0.00091262      0.70298871      0.00000837
 2 2aa0a0       0.70354289      0.00009387      0.00000217     -0.00000248     -0.70298872      0.00091262     -0.00000279
 2 2aa00a       0.00000218     -0.00001141     -0.70354289     -0.00000011     -0.00000280     -0.00000836      0.70298931
 2 a2aa00       0.70354288      0.00009387      0.00000217      0.00000248      0.70298873     -0.00091262      0.00000279
 2 a2a00a      -0.00009387      0.70354288     -0.00001141      0.00000390     -0.00091262     -0.70298873     -0.00000837
 2 2aaa00      -0.00000000      0.00000000      0.00000000      0.45720060      0.00000218      0.00000133      0.00000007
 2 a200aa       0.00000000     -0.00000000     -0.00000000      0.05428798     -0.00000020      0.00000030      0.00000001
 2 02aaa0       0.00000000     -0.00000000     -0.00000000      0.05397481     -0.00000022      0.00000031      0.00000001
 
 Energy:     -294.37761586   -294.37761586   -294.37761586   -294.37002495   -294.37002495   -294.37002495   -294.37002495

 State:              8               9
 2 a2a0a0       0.06057706     -0.57340686
 2 aa200a       0.73131762      0.57340688
 2 aa2a00       0.00000000     -0.00000000
 2 aa20a0      -0.00000126     -0.00000000
 2 2aa0a0      -0.00000398      0.00000000
 2 2aa00a       0.00000000      0.00000000
 2 a2aa00       0.00000398      0.00000000
 2 a2a00a       0.00000126     -0.00000000
 2 2aaa00      -0.67074056      0.57340687
 2 a200aa       0.00195851     -0.04089079
 2 02aaa0       0.00614329     -0.04089079
 
 Energy:     -294.37002495   -294.35920170
 


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
 CPU TIMES  *         5.36      4.04      0.11      1.02
 REAL TIME  *        10.02 SEC
 DISK USED  *        39.97 MB (local),      365.21 MB (total)
 SF USED    *        26.73 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -294.6563022   2.0
    -294.6563022   2.0
    -294.6563022   2.0
    -294.3662335   6.0
    -294.3662335   6.0
    -294.3662335   6.0
    -294.3662335   6.0
    -294.3662335   6.0
    -294.3599079   2.0
    -294.3599079   2.0
    -294.3599079   2.0
    -294.3587812  -0.0
    -294.3776159   2.0
    -294.3776159   2.0
    -294.3776159   2.0
    -294.3700249   6.0
    -294.3700249   6.0
    -294.3700249   6.0
    -294.3700249   6.0
    -294.3700249   6.0
    -294.3592017  -0.0
                                                  


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
     1      -294.65630222
     2      -294.65630222
     3      -294.65630222
     4      -294.36623350
     5      -294.36623350
     6      -294.36623350
     7      -294.36623350
     8      -294.36623350
     9      -294.35990787
    10      -294.35990787
    11      -294.35990787
    12      -294.35878118

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1053D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1410D-06

 Number of blocks in overlap matrix:  1138   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    2970
 Number of N-1 electron functions:  132244

 Number of internal configurations:                29358
 Number of singly external configurations:       6348776
 Number of doubly external configurations:       6847272
 Total number of contracted configurations:     13225406
 Total number of uncontracted configurations:  319907094

 Diagonal Coupling coefficients finished.               Storage:  34419695 words, CPU-Time:    177.25 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1758498 words, CPU-time:      0.28 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.65630222    -0.00000000    -0.94360765  0.27D-01  0.11D+00   190.69
    1     2     2     1.00000000     0.00000000  -294.65630222     0.00000000    -0.94384968  0.27D-01  0.11D+00   190.69
    1     3     3     1.00000000     0.00000000  -294.65630222     0.00000000    -0.94398368  0.27D-01  0.11D+00   190.69
    1     4     4     1.00000000     0.00000000  -294.36623350    -0.00000000    -0.94569639  0.47D-01  0.11D+00   190.69
    1     5     5     1.00000000     0.00000000  -294.36623350    -0.00000000    -0.94351452  0.47D-01  0.10D+00   190.69
    1     6     6     1.00000000     0.00000000  -294.36623350    -0.00000000    -0.94354564  0.47D-01  0.10D+00   190.69
    1     7     7     1.00000000     0.00000000  -294.36623350    -0.00000000    -0.94341631  0.47D-01  0.10D+00   190.69
    1     8     8     1.00000000     0.00000000  -294.36623350    -0.00000000    -0.94346860  0.47D-01  0.10D+00   190.69
    1     9     9     1.00000000     0.00000000  -294.35990787    -0.00000000    -0.95154952  0.54D-01  0.11D+00   190.69
    1    10    10     1.00000000     0.00000000  -294.35990787    -0.00000000    -0.95155777  0.54D-01  0.11D+00   190.69
    1    11    11     1.00000000     0.00000000  -294.35990787     0.00000000    -0.95155364  0.54D-01  0.11D+00   190.69
    1    12    12     1.00000000     0.00000000  -294.35878118    -0.00000000    -0.94832896  0.50D-01  0.11D+00   190.69
    2     1     1     1.09016265    -0.77742499  -295.43372721    -0.77742499    -0.01876263  0.23D-02  0.16D-02  1234.41
    2     2     2     1.09012559    -0.77738443  -295.43368664    -0.77738443    -0.01877816  0.23D-02  0.16D-02  1234.41
    2     3     3     1.09014184    -0.77734299  -295.43364520    -0.77734299    -0.01879625  0.23D-02  0.16D-02  1234.41
    2     4     4     1.10017637    -0.76738617  -295.13361967    -0.76738617    -0.01851332  0.28D-02  0.15D-02  1234.41
    2     5     5     1.10011469    -0.76735504  -295.13358854    -0.76735504    -0.01853592  0.28D-02  0.15D-02  1234.41
    2     6     6     1.10017544    -0.76733900  -295.13357250    -0.76733900    -0.01854818  0.28D-02  0.15D-02  1234.41
    2     7     7     1.10021056    -0.76733519  -295.13356870    -0.76733519    -0.01856382  0.28D-02  0.15D-02  1234.41
    2     8     8     1.10051233    -0.76713597  -295.13336948    -0.76713597    -0.01882910  0.28D-02  0.16D-02  1234.41
    2     9     9     1.10269962    -0.76685030  -295.12675817    -0.76685030    -0.01915534  0.31D-02  0.16D-02  1234.41
    2    10    10     1.10430566    -0.76666277  -295.12657064    -0.76666277    -0.02110703  0.43D-02  0.16D-02  1234.41
    2    11    11     1.10431965    -0.76665347  -295.12656134    -0.76665347    -0.02110999  0.43D-02  0.16D-02  1234.41
    2    12    12     1.10432758    -0.76775994  -295.12654112    -0.76775994    -0.02112838  0.43D-02  0.16D-02  1234.41
    3     1     1     1.08848467    -0.79618579  -295.45248801    -0.01876080    -0.00072826  0.47D-04  0.11D-03  2276.60
    3     2     2     1.08846078    -0.79617533  -295.45247754    -0.01879090    -0.00073480  0.48D-04  0.11D-03  2276.60
    3     3     3     1.08843981    -0.79616521  -295.45246743    -0.01882223    -0.00073676  0.47D-04  0.12D-03  2276.60
    3     4     4     1.09160812    -0.78558758  -295.15182108    -0.01820141    -0.00053609  0.46D-04  0.86D-04  2276.60
    3     5     5     1.09156659    -0.78558733  -295.15182084    -0.01823229    -0.00053604  0.46D-04  0.86D-04  2276.60
    3     6     6     1.09155728    -0.78558173  -295.15181524    -0.01824273    -0.00053882  0.46D-04  0.86D-04  2276.60
    3     7     7     1.09155131    -0.78557902  -295.15181252    -0.01824383    -0.00054088  0.46D-04  0.86D-04  2276.60
    3     8     8     1.09154814    -0.78557814  -295.15181165    -0.01844217    -0.00054133  0.46D-04  0.86D-04  2276.60
    3     9     9     1.09240677    -0.78716714  -295.14707501    -0.02031684    -0.00059699  0.58D-04  0.90D-04  2276.60
    3    10    10     1.09240287    -0.78716479  -295.14707266    -0.02050202    -0.00059781  0.58D-04  0.90D-04  2276.60
    3    11    11     1.09239799    -0.78716292  -295.14707080    -0.02050945    -0.00059895  0.58D-04  0.91D-04  2276.60
    3    12    12     1.09261182    -0.78689883  -295.14568001    -0.01913888    -0.00057403  0.56D-04  0.90D-04  2276.60
    4     1     1     1.09102314    -0.79707842  -295.45338064    -0.00089263    -0.00007225  0.43D-05  0.99D-05  3324.68
    4     2     2     1.09101860    -0.79707727  -295.45337948    -0.00090194    -0.00007315  0.43D-05  0.10D-04  3324.68
    4     3     3     1.09101777    -0.79707497  -295.45337719    -0.00090976    -0.00007448  0.44D-05  0.10D-04  3324.68
    4     4     4     1.09239648    -0.78626245  -295.15249596    -0.00067487    -0.00005893  0.29D-05  0.10D-04  3324.68
    4     5     5     1.09239931    -0.78626189  -295.15249540    -0.00067456    -0.00005917  0.29D-05  0.10D-04  3324.68
    4     6     6     1.09239566    -0.78626093  -295.15249443    -0.00067919    -0.00005998  0.30D-05  0.10D-04  3324.68
    4     7     7     1.09239283    -0.78626047  -295.15249397    -0.00068145    -0.00006014  0.29D-05  0.10D-04  3324.68
    4     8     8     1.09239643    -0.78626022  -295.15249373    -0.00068208    -0.00005999  0.29D-05  0.10D-04  3324.68
    4     9     9     1.09298148    -0.78788672  -295.14779459    -0.00071958    -0.00005880  0.34D-05  0.10D-04  3324.68
    4    10    10     1.09297906    -0.78788602  -295.14779389    -0.00072124    -0.00005914  0.34D-05  0.10D-04  3324.68
    4    11    11     1.09297784    -0.78788557  -295.14779344    -0.00072265    -0.00005939  0.35D-05  0.10D-04  3324.68
    4    12    12     1.09325200    -0.78763189  -295.14641307    -0.00073306    -0.00006191  0.29D-05  0.10D-04  3324.68
    5     1     1     1.09168647    -0.79716718  -295.45346939    -0.00008876    -0.00000549  0.15D-06  0.82D-06  4374.44
    5     2     2     1.09168574    -0.79716710  -295.45346931    -0.00008983    -0.00000555  0.15D-06  0.83D-06  4374.44
    5     3     3     1.09168768    -0.79716674  -295.45346896    -0.00009177    -0.00000577  0.16D-06  0.86D-06  4374.44
    5     4     4     1.09288085    -0.78634300  -295.15257651    -0.00008055    -0.00000631  0.28D-06  0.10D-05  4374.44
    5     5     5     1.09288356    -0.78634288  -295.15257639    -0.00008099    -0.00000641  0.27D-06  0.11D-05  4374.44
    5     6     6     1.09288301    -0.78634276  -295.15257627    -0.00008184    -0.00000650  0.28D-06  0.11D-05  4374.44
    5     7     7     1.09288126    -0.78634272  -295.15257623    -0.00008225    -0.00000646  0.28D-06  0.11D-05  4374.44
    5     8     8     1.09288347    -0.78634257  -295.15257608    -0.00008235    -0.00000661  0.28D-06  0.11D-05  4374.44
    5     9     9     1.09340144    -0.78796738  -295.14787525    -0.00008066    -0.00000673  0.33D-06  0.11D-05  4374.44
    5    10    10     1.09340149    -0.78796725  -295.14787512    -0.00008123    -0.00000680  0.33D-06  0.11D-05  4374.44
    5    11    11     1.09340106    -0.78796716  -295.14787503    -0.00008159    -0.00000687  0.34D-06  0.11D-05  4374.44
    5    12    12     1.09375611    -0.78771565  -295.14649683    -0.00008376    -0.00000608  0.29D-06  0.98D-06  4374.44
    6     1     1     1.09169383    -0.79717391  -295.45347613    -0.00000674    -0.00000050  0.26D-07  0.71D-07  5423.30
    6     2     2     1.09169331    -0.79717391  -295.45347612    -0.00000681    -0.00000050  0.27D-07  0.71D-07  5423.30
    6     3     3     1.09169270    -0.79717385  -295.45347607    -0.00000711    -0.00000054  0.28D-07  0.77D-07  5423.30
    6     4     4     1.09288935    -0.78635108  -295.15258459    -0.00000808    -0.00000079  0.32D-07  0.14D-06  5423.30
    6     5     5     1.09288882    -0.78635107  -295.15258457    -0.00000819    -0.00000080  0.32D-07  0.14D-06  5423.30
    6     6     6     1.09288867    -0.78635105  -295.15258456    -0.00000829    -0.00000084  0.34D-07  0.14D-06  5423.30
    6     7     7     1.09288932    -0.78635102  -295.15258453    -0.00000830    -0.00000077  0.31D-07  0.13D-06  5423.30
    6     8     8     1.09288836    -0.78635097  -295.15258448    -0.00000840    -0.00000080  0.33D-07  0.14D-06  5423.30
    6     9     9     1.09341994    -0.78797602  -295.14788389    -0.00000864    -0.00000085  0.42D-07  0.14D-06  5423.30
    6    10    10     1.09341952    -0.78797599  -295.14788387    -0.00000875    -0.00000088  0.43D-07  0.15D-06  5423.30
    6    11    11     1.09341972    -0.78797598  -295.14788385    -0.00000883    -0.00000086  0.43D-07  0.15D-06  5423.30
    6    12    12     1.09376929    -0.78772330  -295.14650448    -0.00000765    -0.00000068  0.24D-07  0.12D-06  5423.30
    7     1     1     1.09171846    -0.79717452  -295.45347674    -0.00000061    -0.00000006  0.67D-08  0.78D-08  6470.19
    7     2     2     1.09171858    -0.79717452  -295.45347674    -0.00000062    -0.00000006  0.66D-08  0.77D-08  6470.19
    7     3     3     1.09171831    -0.79717452  -295.45347673    -0.00000067    -0.00000007  0.72D-08  0.85D-08  6470.19
    7     4     4     1.09291547    -0.78635216  -295.15258567    -0.00000108    -0.00000014  0.13D-07  0.21D-07  6470.19
    7     5     5     1.09291538    -0.78635213  -295.15258564    -0.00000106    -0.00000013  0.12D-07  0.20D-07  6470.19
    7     6     6     1.09291548    -0.78635213  -295.15258564    -0.00000108    -0.00000013  0.12D-07  0.19D-07  6470.19
    7     7     7     1.09291564    -0.78635204  -295.15258554    -0.00000102    -0.00000013  0.11D-07  0.19D-07  6470.19
    7     8     8     1.09291545    -0.78635203  -295.15258553    -0.00000105    -0.00000013  0.12D-07  0.19D-07  6470.19
    7     9     9     1.09344956    -0.78797714  -295.14788501    -0.00000112    -0.00000015  0.15D-07  0.22D-07  6470.19
    7    10    10     1.09344961    -0.78797713  -295.14788500    -0.00000113    -0.00000014  0.14D-07  0.21D-07  6470.19
    7    11    11     1.09344951    -0.78797711  -295.14788498    -0.00000112    -0.00000014  0.14D-07  0.21D-07  6470.19
    7    12    12     1.09379483    -0.78772420  -295.14650538    -0.00000089    -0.00000011  0.93D-08  0.16D-07  6470.19
    8     1     1     1.09172203    -0.79717460  -295.45347682    -0.00000007    -0.00000001  0.39D-09  0.12D-08  7514.74
    8     2     2     1.09172210    -0.79717460  -295.45347682    -0.00000008    -0.00000001  0.37D-09  0.12D-08  7514.74
    8     3     3     1.09172218    -0.79717460  -295.45347681    -0.00000008    -0.00000001  0.36D-09  0.11D-08  7514.74
    8     4     4     1.09291533    -0.78635235  -295.15258585    -0.00000018    -0.00000002  0.10D-08  0.39D-08  7514.74
    8     5     5     1.09291541    -0.78635230  -295.15258581    -0.00000017    -0.00000002  0.96D-09  0.36D-08  7514.74
    8     6     6     1.09291547    -0.78635230  -295.15258580    -0.00000017    -0.00000002  0.94D-09  0.35D-08  7514.74
    8     7     7     1.09291546    -0.78635220  -295.15258570    -0.00000016    -0.00000002  0.90D-09  0.33D-08  7514.74
    8     8     8     1.09291535    -0.78635219  -295.15258570    -0.00000017    -0.00000002  0.95D-09  0.35D-08  7514.74
    8     9     9     1.09344640    -0.78797733  -295.14788520    -0.00000019    -0.00000003  0.13D-08  0.41D-08  7514.74
    8    10    10     1.09344653    -0.78797731  -295.14788518    -0.00000018    -0.00000002  0.12D-08  0.39D-08  7514.74
    8    11    11     1.09344644    -0.78797729  -295.14788516    -0.00000018    -0.00000003  0.13D-08  0.40D-08  7514.74
    8    12    12     1.09379463    -0.78772433  -295.14650551    -0.00000013    -0.00000002  0.83D-09  0.26D-08  7514.74


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%   7.2%
 P   0.3%  54.8%  30.5%

 Initialization:   2.4%
 Other:            4.1%

 Total CPU:     7514.7 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222/000           0.1045053  -0.0563014   0.9488679   0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000
                           -0.0000795   0.0220166  -0.0004075   0.0000000
 22222222222/2000          -0.4817219   0.8197824   0.1016974  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0001573   0.0004069   0.0220161   0.0000000
 2222222222/22000           0.8194292   0.4891099  -0.0612278   0.0000003   0.0000000  -0.0000000  -0.0000000   0.0000000
                           -0.0220197  -0.0000824  -0.0001558  -0.0000000
 2222222222//200\           0.0000000  -0.0000000  -0.0000000  -0.0059929  -0.0018692   0.0006125  -0.0255352   0.7742543
                            0.0000006   0.0000001   0.0000000  -0.5480006
 22222222222//\00           0.0000000   0.0000000   0.0000000  -0.0050053   0.0004283   0.0033045   0.6832606  -0.3650791
                            0.0000004   0.0000001  -0.0000000  -0.5479983
 2222222222/2/00\           0.0107398   0.0064105  -0.0008025  -0.6705933  -0.0035008   0.0180943  -0.0079228  -0.0054745
                            0.6221071   0.0023272   0.0044026   0.0000007
 2222222222//20\0           0.0107397   0.0064104  -0.0008025   0.6705839   0.0035006  -0.0180943   0.0079229   0.0054744
                            0.6221172   0.0023269   0.0044027   0.0000005
 2222222222//2\00           0.0063136  -0.0107443  -0.0013329  -0.0007729   0.6633987   0.1001183  -0.0000971   0.0015132
                           -0.0044448   0.0114958   0.6220076  -0.0000000
 22222222222//00\          -0.0063136   0.0107443   0.0013329  -0.0007729   0.6633943   0.1001181  -0.0000974   0.0015131
                            0.0044451  -0.0114959  -0.6220123  -0.0000002
 2222222222/2/\00          -0.0013697   0.0007379  -0.0124362  -0.0184617   0.1000572  -0.6631430   0.0034022   0.0007355
                           -0.0022454   0.6220202  -0.0115123   0.0000001
 22222222222//0\0          -0.0013697   0.0007379  -0.0124362   0.0184620  -0.1000569   0.6631406  -0.0034023  -0.0007355
                           -0.0022451   0.6220228  -0.0115119   0.0000001
 2222222222/2/0\0          -0.0000000  -0.0000000  -0.0000000  -0.0109979  -0.0014408   0.0039170   0.6577211   0.4091757
                           -0.0000006  -0.0000001  -0.0000002   0.5480017
 2222222222022/00          -0.0090732  -0.0054157   0.0006780   0.0000014   0.0000000   0.0000000  -0.0000000   0.0000000
                           -0.2216611  -0.0008291  -0.0015687  -0.0000002
 222222222222000/          -0.0011572   0.0006234  -0.0105065   0.0000000   0.0000001  -0.0000005  -0.0000000   0.0000000
                           -0.0008000   0.2216286  -0.0041018   0.0000000
 22222222222020/0           0.0053340  -0.0090772  -0.0011261  -0.0000000   0.0000009   0.0000001   0.0000000   0.0000000
                           -0.0015838   0.0040960   0.2216248   0.0000000
 2222222222/\20/0           0.0026100   0.0015579  -0.0001950   0.0086416   0.0000451  -0.0002332   0.0001021   0.0000705
                            0.1898801   0.0007103   0.0013438   0.0000002
 2222222222/2\00/           0.0026100   0.0015579  -0.0001950  -0.0086442  -0.0000452   0.0002332  -0.0001021  -0.0000706
                            0.1898800   0.0007103   0.0013438   0.0000002
 2222222222/2\/00           0.0003329  -0.0001793   0.0030222   0.0002379  -0.0012896   0.0085471  -0.0000438  -0.0000095
                            0.0006853  -0.1898522   0.0035137  -0.0000000
 22222222222/\0/0           0.0003329  -0.0001793   0.0030222  -0.0002380   0.0012895  -0.0085463   0.0000439   0.0000095
                            0.0006853  -0.1898522   0.0035137  -0.0000000
 2222222222/\2/00          -0.0015343   0.0026110   0.0003239   0.0000100  -0.0085507  -0.0012904   0.0000012  -0.0000195
                            0.0013567  -0.0035087  -0.1898487  -0.0000000
 22222222222/\00/          -0.0015343   0.0026111   0.0003239  -0.0000100   0.0085493   0.0012903  -0.0000013   0.0000195
                            0.0013567  -0.0035088  -0.1898487  -0.0000000
 2222222222///0\\           0.0098250   0.0058644  -0.0007341  -0.0000005  -0.0000000   0.0000000   0.0000000  -0.0000000
                            0.0702828   0.0002629   0.0004974   0.0000001
 2222222222///\\0           0.0012530  -0.0006751   0.0113769  -0.0000000  -0.0000000   0.0000001   0.0000000  -0.0000000
                            0.0002537  -0.0702725   0.0013006  -0.0000000
 2222222222///\0\           0.0057758  -0.0098292  -0.0012193  -0.0000000   0.0000002   0.0000000   0.0000000   0.0000000
                           -0.0005022   0.0012987   0.0702711   0.0000000
 2222222222/20002          -0.0103084  -0.0061530   0.0007702   0.0604018   0.0003153  -0.0016298   0.0007136   0.0004931
                           -0.0470928  -0.0001762  -0.0003333  -0.0000001
 2222222222/02020          -0.0103084  -0.0061530   0.0007702  -0.0604013  -0.0003153   0.0016298  -0.0007136  -0.0004931
                           -0.0470939  -0.0001761  -0.0003333  -0.0000000
 22222222220/2200           0.0060600  -0.0103128  -0.0012793  -0.0000696   0.0597539   0.0090179  -0.0000087   0.0001363
                           -0.0003365   0.0008702   0.0470852  -0.0000000
 22222222222/0002           0.0060600  -0.0103127  -0.0012793   0.0000696  -0.0597535  -0.0090179   0.0000088  -0.0001363
                           -0.0003365   0.0008702   0.0470856   0.0000000
 222222222202/200          -0.0013147   0.0007083  -0.0119367  -0.0016629   0.0090124  -0.0597308   0.0003064   0.0000662
                           -0.0001700   0.0470862  -0.0008715   0.0000000
 222222222220/020          -0.0013147   0.0007083  -0.0119367   0.0016629  -0.0090124   0.0597307  -0.0003065  -0.0000662
                           -0.0001700   0.0470864  -0.0008714   0.0000000
 2222222222/020/\          -0.0000000  -0.0000000  -0.0000000   0.0004486   0.0001367  -0.0000504   0.0007594  -0.0563069
                           -0.0000000  -0.0000000  -0.0000000   0.0385491
 22222222220/2/0\          -0.0000000   0.0000000   0.0000000  -0.0004225  -0.0001350   0.0000386  -0.0029522   0.0562343
                            0.0000000  -0.0000000  -0.0000000  -0.0385489
 2222222222//\002          -0.0000000  -0.0000000  -0.0000000  -0.0004281  -0.0001335   0.0000437  -0.0018242   0.0553039
                            0.0000000   0.0000000   0.0000000  -0.0379750

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.482026    0.104571    0.819946    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.001874   -0.014697
            -0.008640   -0.000000
 2           0.820299   -0.056337    0.489418   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.001010   -0.008773
             0.014704   -0.000000
 3           0.101761    0.949466   -0.061266   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.017019    0.001098
             0.001824   -0.000000
 4           0.000000   -0.000000   -0.000000   -0.013478    0.026321    0.956073   -0.001799   -0.001102    0.000000   -0.000007
            -0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000   -0.001641   -0.142654    0.004991   -0.001776    0.945819    0.000000   -0.000000
             0.000003    0.000000
 6          -0.000000    0.000000   -0.000000    0.004976    0.945456   -0.025797   -0.001522    0.142741   -0.000002   -0.000000
             0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.850283   -0.004851    0.011296   -0.437974   -0.000139   -0.000000    0.000000
             0.000000   -0.000002
 8          -0.000000    0.000000   -0.000000    0.437908   -0.001049    0.007805    0.850367    0.002157    0.000000   -0.000000
             0.000000    0.000000
 9           0.000124    0.000063    0.017362   -0.000000    0.000000    0.000007    0.000000    0.000000   -0.003451    0.956093
            -0.006831   -0.000001
 10         -0.000321   -0.017359    0.000065    0.000000    0.000002   -0.000000   -0.000000   -0.000000    0.955954    0.003576
             0.017667   -0.000000
 11         -0.017359    0.000321    0.000123   -0.000000    0.000000    0.000000    0.000000   -0.000003   -0.017692    0.006766
             0.955936   -0.000000
 12         -0.000000   -0.000000    0.000000    0.000002   -0.000000   -0.000000   -0.000001   -0.000000    0.000000    0.000001
             0.000000    0.956149

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957021    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000096   -0.000011
             0.000057    0.000000
 2           0.000000    0.957021   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000058    0.000005
            -0.000096    0.000000
 3          -0.000000   -0.000000    0.957021   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000007   -0.000111
            -0.000010   -0.000000
 4           0.000000    0.000000   -0.000000    0.956532    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.956532    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956532   -0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.956532    0.000000    0.000000    0.000000
            -0.000000   -0.000000
 8           0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.956532    0.000000   -0.000000
            -0.000000   -0.000000
 9           0.000096    0.000058   -0.000007    0.000000    0.000000   -0.000000    0.000000    0.000000    0.956282    0.000000
             0.000000    0.000000
 10         -0.000011    0.000005   -0.000111   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.956282
             0.000000    0.000000
 11          0.000057   -0.000096   -0.000010    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.956282    0.000000
 12          0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.956149


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.81994571 (fixed)   0.95706186 (relaxed)   0.95702082 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010397   -0.00009423   -0.69696932
 Singles      0.01058195   -0.03628162   -0.04095806
 Pairs        0.08114962    0.00000000   -0.05924723
 Total        1.09183554   -0.03637585   -0.79717460
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65620577
 Nuclear energy                         0.00000000
 Kinetic energy                       111.43381949
 One electron energy                 -513.40288562
 Two electron energy                  217.94940881
 Virial quotient                       -2.65138069
 Correlation energy                    -0.79727105
 !MRCI STATE 1.2 Energy              -295.453476816618

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52669463 (Davidson, fixed reference)
 Cluster corrected energies          -295.52661999 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52669463 (Davidson, rotated reference)

 Cluster corrected energies          -295.52610037 (Pople, fixed reference)
 Cluster corrected energies          -295.52602033 (Pople, relaxed reference)
 Cluster corrected energies          -295.52610037 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.82029909 (fixed)   0.95706182 (relaxed)   0.95702079 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010397   -0.00009423   -0.69696919
 Singles      0.01058199   -0.03628170   -0.04095810
 Pairs        0.08114965    0.00000000   -0.05924731
 Total        1.09183561   -0.03637593   -0.79717460
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65620577
 Nuclear energy                         0.00000000
 Kinetic energy                       111.43381985
 One electron energy                 -513.40288402
 Two electron energy                  217.94940721
 Virial quotient                       -2.65138068
 Correlation energy                    -0.79727105
 !MRCI STATE 2.2 Energy              -295.453476816354

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52669469 (Davidson, fixed reference)
 Cluster corrected energies          -295.52662005 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52669469 (Davidson, rotated reference)

 Cluster corrected energies          -295.52610043 (Pople, fixed reference)
 Cluster corrected energies          -295.52602039 (Pople, relaxed reference)
 Cluster corrected energies          -295.52610043 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94946595 (fixed)   0.95706179 (relaxed)   0.95702075 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010397   -0.00009423   -0.69696909
 Singles      0.01058202   -0.03628176   -0.04095812
 Pairs        0.08114970   -0.00000000   -0.05924739
 Total        1.09183569   -0.03637598   -0.79717460
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65620577
 Nuclear energy                         0.00000000
 Kinetic energy                       111.43382084
 One electron energy                 -513.40288292
 Two electron energy                  217.94940611
 Virial quotient                       -2.65138065
 Correlation energy                    -0.79727105
 !MRCI STATE 3.2 Energy              -295.453476814968

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52669475 (Davidson, fixed reference)
 Cluster corrected energies          -295.52662011 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52669475 (Davidson, rotated reference)

 Cluster corrected energies          -295.52610050 (Pople, fixed reference)
 Cluster corrected energies          -295.52602046 (Pople, relaxed reference)
 Cluster corrected energies          -295.52610050 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95607280 (fixed)   0.95653694 (relaxed)   0.95653235 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003260   -0.00012648   -0.66720859
 Singles      0.01952349   -0.05715155   -0.06634132
 Pairs        0.07339487   -0.00000016   -0.05280244
 Total        1.09295096   -0.05727819   -0.78635235
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36623350
 Nuclear energy                         0.00000000
 Kinetic energy                       111.08979432
 One electron energy                 -507.94859037
 Two electron energy                  212.79600452
 Virial quotient                       -2.65688300
 Correlation energy                    -0.78635235
 !MRCI STATE 4.2 Energy              -295.152585849309

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22567806 (Davidson, fixed reference)
 Cluster corrected energies          -295.22566981 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22567806 (Davidson, rotated reference)

 Cluster corrected energies          -295.22515642 (Pople, fixed reference)
 Cluster corrected energies          -295.22514756 (Pople, relaxed reference)
 Cluster corrected energies          -295.22515642 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94581884 (fixed)   0.95653690 (relaxed)   0.95653231 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003260   -0.00012648   -0.66720849
 Singles      0.01952353   -0.05715163   -0.06634131
 Pairs        0.07339491   -0.00000009   -0.05280250
 Total        1.09295104   -0.05727821   -0.78635230
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36623350
 Nuclear energy                         0.00000000
 Kinetic energy                       111.08980234
 One electron energy                 -507.94859358
 Two electron energy                  212.79600777
 Virial quotient                       -2.65688281
 Correlation energy                    -0.78635230
 !MRCI STATE 5.2 Energy              -295.152585807959

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22567807 (Davidson, fixed reference)
 Cluster corrected energies          -295.22566983 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22567807 (Davidson, rotated reference)

 Cluster corrected energies          -295.22515643 (Pople, fixed reference)
 Cluster corrected energies          -295.22514758 (Pople, relaxed reference)
 Cluster corrected energies          -295.22515643 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94545573 (fixed)   0.95653688 (relaxed)   0.95653229 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003260   -0.00012648   -0.66720851
 Singles      0.01952354   -0.05715164   -0.06634130
 Pairs        0.07339496   -0.00000002   -0.05280249
 Total        1.09295110   -0.05727814   -0.78635230
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36623350
 Nuclear energy                         0.00000000
 Kinetic energy                       111.08980269
 One electron energy                 -507.94859463
 Two electron energy                  212.79600883
 Virial quotient                       -2.65688280
 Correlation energy                    -0.78635230
 !MRCI STATE 6.2 Energy              -295.152585803891

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22567811 (Davidson, fixed reference)
 Cluster corrected energies          -295.22566987 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22567811 (Davidson, rotated reference)

 Cluster corrected energies          -295.22515648 (Pople, fixed reference)
 Cluster corrected energies          -295.22514762 (Pople, relaxed reference)
 Cluster corrected energies          -295.22515648 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.85028320 (fixed)   0.95653688 (relaxed)   0.95653229 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003260   -0.00012648   -0.66721036
 Singles      0.01952341   -0.05715143   -0.06634107
 Pairs        0.07339508    0.00000188   -0.05280077
 Total        1.09295109   -0.05727603   -0.78635220
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36623350
 Nuclear energy                         0.00000000
 Kinetic energy                       111.08980475
 One electron energy                 -507.94859170
 Two electron energy                  212.79600599
 Virial quotient                       -2.65688275
 Correlation energy                    -0.78635220
 !MRCI STATE 7.2 Energy              -295.152585703930

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22567800 (Davidson, fixed reference)
 Cluster corrected energies          -295.22566975 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22567800 (Davidson, rotated reference)

 Cluster corrected energies          -295.22515636 (Pople, fixed reference)
 Cluster corrected energies          -295.22514750 (Pople, relaxed reference)
 Cluster corrected energies          -295.22515636 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.85036698 (fixed)   0.95653693 (relaxed)   0.95653234 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003260   -0.00012648   -0.66720848
 Singles      0.01952344   -0.05715149   -0.06634112
 Pairs        0.07339494   -0.00000017   -0.05280260
 Total        1.09295099   -0.05727815   -0.78635219
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36623350
 Nuclear energy                         0.00000000
 Kinetic energy                       111.08980032
 One electron energy                 -507.94859157
 Two electron energy                  212.79600587
 Virial quotient                       -2.65688285
 Correlation energy                    -0.78635219
 !MRCI STATE 8.2 Energy              -295.152585698534

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22567791 (Davidson, fixed reference)
 Cluster corrected energies          -295.22566966 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22567791 (Davidson, rotated reference)

 Cluster corrected energies          -295.22515627 (Pople, fixed reference)
 Cluster corrected energies          -295.22514741 (Pople, relaxed reference)
 Cluster corrected energies          -295.22515627 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95609331 (fixed)   0.95629722 (relaxed)   0.95628156 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007124   -0.00018691   -0.66776684
 Singles      0.02002481   -0.05781488   -0.06730390
 Pairs        0.07342824    0.00000068   -0.05290659
 Total        1.09352429   -0.05800111   -0.78797733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36000432
 Nuclear energy                         0.00000000
 Kinetic energy                       111.10757555
 One electron energy                 -508.04502454
 Two electron energy                  212.89713934
 Virial quotient                       -2.65641549
 Correlation energy                    -0.78788088
 !MRCI STATE 9.2 Energy              -295.147885201860

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22157121 (Davidson, fixed reference)
 Cluster corrected energies          -295.22154300 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22157121 (Davidson, rotated reference)

 Cluster corrected energies          -295.22108247 (Pople, fixed reference)
 Cluster corrected energies          -295.22105213 (Pople, relaxed reference)
 Cluster corrected energies          -295.22108247 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95595395 (fixed)   0.95629716 (relaxed)   0.95628150 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007124   -0.00018691   -0.66776617
 Singles      0.02002487   -0.05781494   -0.06730390
 Pairs        0.07342832    0.00000012   -0.05290724
 Total        1.09352443   -0.05800173   -0.78797731
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36000432
 Nuclear energy                         0.00000000
 Kinetic energy                       111.10758031
 One electron energy                 -508.04502720
 Two electron energy                  212.89714201
 Virial quotient                       -2.65641538
 Correlation energy                    -0.78788086
 !MRCI STATE 10.2 Energy             -295.147885180509

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22157129 (Davidson, fixed reference)
 Cluster corrected energies          -295.22154308 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22157129 (Davidson, rotated reference)

 Cluster corrected energies          -295.22108257 (Pople, fixed reference)
 Cluster corrected energies          -295.22105223 (Pople, relaxed reference)
 Cluster corrected energies          -295.22108257 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Coefficient of reference function:   C(0) = 0.95593627 (fixed)   0.95629720 (relaxed)   0.95628154 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007124   -0.00018691   -0.66776625
 Singles      0.02002483   -0.05781487   -0.06730385
 Pairs        0.07342827    0.00000009   -0.05290719
 Total        1.09352434   -0.05800169   -0.78797729
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36000432
 Nuclear energy                         0.00000000
 Kinetic energy                       111.10757766
 One electron energy                 -508.04502610
 Two electron energy                  212.89714093
 Virial quotient                       -2.65641544
 Correlation energy                    -0.78788084
 !MRCI STATE 11.2 Energy             -295.147885161741

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22157119 (Davidson, fixed reference)
 Cluster corrected energies          -295.22154299 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22157119 (Davidson, rotated reference)

 Cluster corrected energies          -295.22108247 (Pople, fixed reference)
 Cluster corrected energies          -295.22105213 (Pople, relaxed reference)
 Cluster corrected energies          -295.22108247 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Coefficient of reference function:   C(0) = 0.95614882 (fixed)   0.95615205 (relaxed)   0.95614882 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003046   -0.00012732   -0.00013834
 Singles      0.02039935   -0.05857132   -0.06824110
 Pairs        0.07339814   -0.72902568   -0.71934489
 Total        1.09382795   -0.78772433   -0.78772433
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.35878118
 Nuclear energy                         0.00000000
 Kinetic energy                       111.08898054
 One electron energy                 -507.93777280
 Two electron energy                  212.79126729
 Virial quotient                       -2.65684773
 Correlation energy                    -0.78772433
 !MRCI STATE 12.2 Energy             -295.146505510957

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22041607 (Davidson, fixed reference)
 Cluster corrected energies          -295.22041024 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22041607 (Davidson, rotated reference)

 Cluster corrected energies          -295.21994560 (Pople, fixed reference)
 Cluster corrected energies          -295.21993933 (Pople, relaxed reference)
 Cluster corrected energies          -295.21994560 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1231.55       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      9497.91   9492.54      4.04      0.11      1.02
 REAL TIME  *      9667.78 SEC
 DISK USED  *         1.24 GB (local),        9.97 GB (total)
 SF USED    *        12.77 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -295.52669463  AU                              
 SETTING HLSDIAG(2)     =      -295.52669469  AU                              
 SETTING HLSDIAG(3)     =      -295.52669475  AU                              
 SETTING HLSDIAG(4)     =      -295.22567806  AU                              
 SETTING HLSDIAG(5)     =      -295.22567807  AU                              
 SETTING HLSDIAG(6)     =      -295.22567811  AU                              
 SETTING HLSDIAG(7)     =      -295.22567800  AU                              
 SETTING HLSDIAG(8)     =      -295.22567791  AU                              
 SETTING HLSDIAG(9)     =      -295.22157121  AU                              
 SETTING HLSDIAG(10)    =      -295.22157129  AU                              
 SETTING HLSDIAG(11)    =      -295.22157119  AU                              
 SETTING HLSDIAG(12)    =      -295.22041607  AU                              


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


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.37761586
     2      -294.37761586
     3      -294.37761586
     4      -294.37002495
     5      -294.37002495
     6      -294.37002495
     7      -294.37002495
     8      -294.37002495
     9      -294.35920170

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.7733D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1325D-06

 Number of blocks in overlap matrix:   913   Smallest eigenvalue:  0.77D-07
 Number of N-2 electron functions:    2186
 Number of N-1 electron functions:  107720

 Number of internal configurations:                21432
 Number of singly external configurations:       5171200
 Number of doubly external configurations:       5037560
 Total number of contracted configurations:     10230192
 Total number of uncontracted configurations:  256637568

 Diagonal Coupling coefficients finished.               Storage:  19082748 words, CPU-Time:     62.46 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1671048 words, CPU-time:      0.21 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.37761586     0.00000000    -0.94042256  0.44D-01  0.10D+00    70.29
    1     2     2     1.00000000     0.00000000  -294.37761586    -0.00000000    -0.94047901  0.44D-01  0.10D+00    70.29
    1     3     3     1.00000000     0.00000000  -294.37761586    -0.00000000    -0.94054063  0.44D-01  0.10D+00    70.29
    1     4     4     1.00000000     0.00000000  -294.37002495     0.00000000    -0.94629701  0.45D-01  0.11D+00    70.29
    1     5     5     1.00000000     0.00000000  -294.37002495     0.00000000    -0.94166816  0.46D-01  0.10D+00    70.29
    1     6     6     1.00000000     0.00000000  -294.37002495    -0.00000000    -0.94182298  0.46D-01  0.10D+00    70.29
    1     7     7     1.00000000     0.00000000  -294.37002495    -0.00000000    -0.94172036  0.46D-01  0.10D+00    70.29
    1     8     8     1.00000000     0.00000000  -294.37002495    -0.00000000    -0.94324183  0.45D-01  0.10D+00    70.29
    1     9     9     1.00000000     0.00000000  -294.35920170     0.00000000    -0.94858346  0.50D-01  0.11D+00    70.29
    2     1     1     1.09772558    -0.76552502  -295.14314088    -0.76552502    -0.01832720  0.24D-02  0.15D-02   584.80
    2     2     2     1.09767764    -0.76552110  -295.14313696    -0.76552110    -0.01830655  0.24D-02  0.15D-02   584.80
    2     3     3     1.09770755    -0.76546881  -295.14308466    -0.76546881    -0.01835027  0.24D-02  0.15D-02   584.80
    2     4     4     1.09912473    -0.76692841  -295.13695336    -0.76692841    -0.01812963  0.24D-02  0.15D-02   584.80
    2     5     5     1.09975724    -0.76649708  -295.13652203    -0.76649708    -0.01860656  0.24D-02  0.16D-02   584.80
    2     6     6     1.09894116    -0.76642174  -295.13644668    -0.76642174    -0.01845520  0.25D-02  0.15D-02   584.80
    2     7     7     1.09888254    -0.76637936  -295.13640431    -0.76637936    -0.01847139  0.25D-02  0.15D-02   584.80
    2     8     8     1.09891632    -0.76637056  -295.13639551    -0.76637056    -0.01848778  0.25D-02  0.15D-02   584.80
    2     9     9     1.10298401    -0.76697167  -295.12617337    -0.76697167    -0.01929799  0.31D-02  0.17D-02   584.80
    3     1     1     1.09000627    -0.78354317  -295.16115903    -0.01801815    -0.00053482  0.35D-04  0.84D-04  1107.60
    3     2     2     1.08998683    -0.78353161  -295.16114747    -0.01801051    -0.00053950  0.35D-04  0.85D-04  1107.60
    3     3     3     1.08997103    -0.78351962  -295.16113548    -0.01805081    -0.00054585  0.35D-04  0.86D-04  1107.60
    3     4     4     1.09098698    -0.78479452  -295.15481947    -0.01786611    -0.00052761  0.50D-04  0.81D-04  1107.60
    3     5     5     1.09101018    -0.78477558  -295.15480053    -0.01827850    -0.00053826  0.49D-04  0.84D-04  1107.60
    3     6     6     1.09072901    -0.78469990  -295.15472485    -0.01827816    -0.00057979  0.51D-04  0.90D-04  1107.60
    3     7     7     1.09070261    -0.78469310  -295.15471805    -0.01831374    -0.00058431  0.51D-04  0.91D-04  1107.60
    3     8     8     1.09069716    -0.78469118  -295.15471612    -0.01832062    -0.00058477  0.51D-04  0.91D-04  1107.60
    3     9     9     1.09214840    -0.78624767  -295.14544938    -0.01927600    -0.00060824  0.78D-04  0.91D-04  1107.60
    4     1     1     1.09111469    -0.78423031  -295.16184617    -0.00068714    -0.00006264  0.26D-05  0.10D-04  1627.99
    4     2     2     1.09110864    -0.78422811  -295.16184397    -0.00069650    -0.00006414  0.27D-05  0.10D-04  1627.99
    4     3     3     1.09110140    -0.78422612  -295.16184198    -0.00070651    -0.00006566  0.27D-05  0.10D-04  1627.99
    4     4     4     1.09183872    -0.78546396  -295.15548891    -0.00066944    -0.00005941  0.27D-05  0.98D-05  1627.99
    4     5     5     1.09181596    -0.78546110  -295.15548604    -0.00068552    -0.00006106  0.27D-05  0.10D-04  1627.99
    4     6     6     1.09178393    -0.78545004  -295.15547499    -0.00075014    -0.00006926  0.33D-05  0.11D-04  1627.99
    4     7     7     1.09177755    -0.78544961  -295.15547455    -0.00075650    -0.00006959  0.33D-05  0.11D-04  1627.99
    4     8     8     1.09177781    -0.78544925  -295.15547420    -0.00075807    -0.00006981  0.33D-05  0.11D-04  1627.99
    4     9     9     1.09279845    -0.78702240  -295.14622411    -0.00077473    -0.00006601  0.35D-05  0.11D-04  1627.99
    5     1     1     1.09166113    -0.78431586  -295.16193172    -0.00008554    -0.00000589  0.26D-06  0.88D-06  2143.27
    5     2     2     1.09166112    -0.78431564  -295.16193150    -0.00008753    -0.00000600  0.26D-06  0.89D-06  2143.27
    5     3     3     1.09165933    -0.78431561  -295.16193147    -0.00008949    -0.00000612  0.27D-06  0.90D-06  2143.27
    5     4     4     1.09238194    -0.78554545  -295.15557040    -0.00008149    -0.00000601  0.33D-06  0.92D-06  2143.27
    5     5     5     1.09238192    -0.78554520  -295.15557015    -0.00008411    -0.00000614  0.34D-06  0.94D-06  2143.27
    5     6     6     1.09238625    -0.78554473  -295.15556968    -0.00009469    -0.00000684  0.36D-06  0.10D-05  2143.27
    5     7     7     1.09238689    -0.78554468  -295.15556963    -0.00009507    -0.00000687  0.36D-06  0.10D-05  2143.27
    5     8     8     1.09238787    -0.78554464  -295.15556959    -0.00009539    -0.00000688  0.36D-06  0.10D-05  2143.27
    5     9     9     1.09342561    -0.78711300  -295.14631471    -0.00009060    -0.00000680  0.41D-06  0.11D-05  2143.27
    6     1     1     1.09165116    -0.78432303  -295.16193889    -0.00000718    -0.00000057  0.24D-07  0.92D-07  2662.56
    6     2     2     1.09164948    -0.78432303  -295.16193889    -0.00000738    -0.00000059  0.25D-07  0.95D-07  2662.56
    6     3     3     1.09165024    -0.78432293  -295.16193879    -0.00000732    -0.00000057  0.24D-07  0.93D-07  2662.56
    6     4     4     1.09238895    -0.78555316  -295.15557811    -0.00000771    -0.00000073  0.32D-07  0.12D-06  2662.56
    6     5     5     1.09238874    -0.78555315  -295.15557810    -0.00000795    -0.00000073  0.31D-07  0.12D-06  2662.56
    6     6     6     1.09238882    -0.78555313  -295.15557808    -0.00000840    -0.00000073  0.32D-07  0.12D-06  2662.56
    6     7     7     1.09239434    -0.78555298  -295.15557793    -0.00000830    -0.00000068  0.28D-07  0.12D-06  2662.56
    6     8     8     1.09239329    -0.78555281  -295.15557776    -0.00000817    -0.00000068  0.29D-07  0.11D-06  2662.56
    6     9     9     1.09345218    -0.78712163  -295.14632334    -0.00000863    -0.00000083  0.34D-07  0.15D-06  2662.56
    7     1     1     1.09167119    -0.78432377  -295.16193963    -0.00000074    -0.00000008  0.70D-08  0.12D-07  3182.50
    7     2     2     1.09167148    -0.78432375  -295.16193961    -0.00000073    -0.00000008  0.67D-08  0.12D-07  3182.50
    7     3     3     1.09167115    -0.78432367  -295.16193952    -0.00000073    -0.00000008  0.68D-08  0.11D-07  3182.50
    7     4     4     1.09241345    -0.78555412  -295.15557906    -0.00000096    -0.00000012  0.10D-07  0.17D-07  3182.50
    7     5     5     1.09241329    -0.78555412  -295.15557906    -0.00000096    -0.00000012  0.10D-07  0.17D-07  3182.50
    7     6     6     1.09241325    -0.78555409  -295.15557904    -0.00000096    -0.00000012  0.10D-07  0.17D-07  3182.50
    7     7     7     1.09241533    -0.78555389  -295.15557884    -0.00000091    -0.00000012  0.95D-08  0.17D-07  3182.50
    7     8     8     1.09241508    -0.78555371  -295.15557866    -0.00000090    -0.00000011  0.95D-08  0.17D-07  3182.50
    7     9     9     1.09347491    -0.78712278  -295.14632448    -0.00000115    -0.00000016  0.12D-07  0.23D-07  3182.50
    8     1     1     1.09167197    -0.78432388  -295.16193974    -0.00000010    -0.00000001  0.52D-09  0.18D-08  3702.11
    8     2     2     1.09167207    -0.78432386  -295.16193972    -0.00000010    -0.00000001  0.53D-09  0.18D-08  3702.11
    8     3     3     1.09167190    -0.78432377  -295.16193963    -0.00000010    -0.00000001  0.51D-09  0.18D-08  3702.11
    8     4     4     1.09241484    -0.78555427  -295.15557922    -0.00000016    -0.00000002  0.10D-08  0.33D-08  3702.11
    8     5     5     1.09241482    -0.78555427  -295.15557922    -0.00000016    -0.00000002  0.10D-08  0.33D-08  3702.11
    8     6     6     1.09241478    -0.78555425  -295.15557920    -0.00000016    -0.00000002  0.10D-08  0.32D-08  3702.11
    8     7     7     1.09241486    -0.78555404  -295.15557899    -0.00000015    -0.00000002  0.10D-08  0.32D-08  3702.11
    8     8     8     1.09241479    -0.78555386  -295.15557880    -0.00000015    -0.00000002  0.10D-08  0.32D-08  3702.11
    8     9     9     1.09347526    -0.78712299  -295.14632469    -0.00000021    -0.00000003  0.18D-08  0.47D-08  3702.11


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.4%   9.6%
 P   0.3%  56.9%  26.2%

 Initialization:   1.7%
 Other:            4.5%

 Total CPU:     3702.1 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//200/           0.0000001   0.0000000  -0.0000003   0.0029105  -0.0002035  -0.0010320   0.0370788   0.7755459
                           -0.5481428
 2222222222/2/0/0          -0.0000001  -0.0000000  -0.0000001  -0.0103537   0.0001680   0.0145858   0.6899157   0.3557359
                            0.5481466
 2222222222//20/0           0.6730636  -0.0123098   0.0014983   0.6263650  -0.2442291  -0.0048726   0.0110845  -0.0029513
                           -0.0000001
 2222222222/2/00/           0.6730585  -0.0123097   0.0014983  -0.6263697   0.2442306   0.0048725  -0.0110842   0.0029512
                            0.0000001
 2222222222/2//00          -0.0007991   0.0381117   0.6720996  -0.0866221  -0.2353198   0.6237107  -0.0153715   0.0018284
                           -0.0000000
 22222222222//0/0          -0.0007992   0.0381112   0.6720906   0.0866233   0.2353229  -0.6237193   0.0153718  -0.0018281
                           -0.0000002
 2222222222//2/00           0.0123751   0.6719872  -0.0380906   0.2283715   0.5806125   0.2507307  -0.0018697  -0.0002817
                           -0.0000000
 22222222222//00/          -0.0123746  -0.6719785   0.0380902   0.2283745   0.5806199   0.2507338  -0.0018698  -0.0002817
                           -0.0000000
 22222222222///00          -0.0000002  -0.0000000  -0.0000000  -0.0132645   0.0003715   0.0156180   0.6528364  -0.4198040
                           -0.5481473
 2222222222/\///0           0.0000000   0.0000000   0.0000004  -0.0081673  -0.0221875   0.0588076  -0.0014493   0.0001724
                            0.0000000
 2222222222/020//          -0.0000000  -0.0000000   0.0000000  -0.0002392   0.0000148   0.0001220  -0.0002480  -0.0531364
                            0.0403576
 22222222220/2/0/           0.0000000   0.0000000  -0.0000000   0.0001588  -0.0000130  -0.0000191   0.0048223   0.0529180
                           -0.0403576
 2222222222//\0//          -0.0183833   0.0003362  -0.0000409  -0.0511454   0.0199424   0.0003979  -0.0009051   0.0002410
                            0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.001136    0.956918    0.017594   -0.000000    0.000000    0.000004    0.000000    0.000000    0.000000
 2           0.054185   -0.017501    0.955385   -0.000000    0.000000   -0.000000    0.000006    0.000000    0.000000
 3           0.955545    0.002130   -0.054155   -0.000000    0.000006   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000001   -0.000003   -0.000002   -0.013560   -0.123253    0.891237    0.324944    0.010551    0.000000
 5           0.000002    0.000001   -0.000005    0.000236   -0.334831   -0.347506    0.826139   -0.000393   -0.000000
 6          -0.000006   -0.000000   -0.000002    0.018785    0.887463   -0.006933    0.356758   -0.010510   -0.000000
 7           0.000000    0.000000    0.000000    0.879684   -0.021872    0.015772   -0.002660   -0.375234    0.000000
 8           0.000000   -0.000000   -0.000000    0.375497    0.002601   -0.004199   -0.000401    0.879975   -0.000003
 9          -0.000000   -0.000000   -0.000000    0.000001    0.000000   -0.000000   -0.000000    0.000003    0.956286

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957081   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.957081    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.957081    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.956754    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.956754   -0.000000   -0.000000    0.000000    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.956754   -0.000000    0.000000    0.000000
 7           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.956754    0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.956754    0.000000
 9          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.956286


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95691845 (fixed)   0.95708500 (relaxed)   0.95708085 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002438   -0.00009625   -0.66645593
 Singles      0.01896055   -0.05677398   -0.06562971
 Pairs        0.07271366   -0.00000002   -0.05223823
 Total        1.09169858   -0.05687025   -0.78432388
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37761586
 Nuclear energy                         0.00000000
 Kinetic energy                       111.07720208
 One electron energy                 -507.91716980
 Two electron energy                  212.75523006
 Virial quotient                       -2.65726841
 Correlation energy                    -0.78432388
 !MRCI STATE 1.2 Energy              -295.161939736844

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23386113 (Davidson, fixed reference)
 Cluster corrected energies          -295.23385370 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23386113 (Davidson, rotated reference)

 Cluster corrected energies          -295.23256882 (Pople, fixed reference)
 Cluster corrected energies          -295.23256095 (Pople, relaxed reference)
 Cluster corrected energies          -295.23256882 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95538547 (fixed)   0.95708496 (relaxed)   0.95708081 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002438   -0.00009625   -0.66645604
 Singles      0.01896045   -0.05677378   -0.06562957
 Pairs        0.07271386   -0.00000001   -0.05223824
 Total        1.09169868   -0.05687004   -0.78432386
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37761586
 Nuclear energy                         0.00000000
 Kinetic energy                       111.07719846
 One electron energy                 -507.91716844
 Two electron energy                  212.75522872
 Virial quotient                       -2.65726849
 Correlation energy                    -0.78432386
 !MRCI STATE 2.2 Energy              -295.161939715633

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23386118 (Davidson, fixed reference)
 Cluster corrected energies          -295.23385375 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23386118 (Davidson, rotated reference)

 Cluster corrected energies          -295.23256888 (Pople, fixed reference)
 Cluster corrected energies          -295.23256101 (Pople, relaxed reference)
 Cluster corrected energies          -295.23256888 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95554516 (fixed)   0.95708503 (relaxed)   0.95708088 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002438   -0.00009625   -0.66645600
 Singles      0.01896041   -0.05677376   -0.06562946
 Pairs        0.07271373   -0.00000009   -0.05223830
 Total        1.09169852   -0.05687010   -0.78432377
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37761586
 Nuclear energy                         0.00000000
 Kinetic energy                       111.07720015
 One electron energy                 -507.91717055
 Two electron energy                  212.75523092
 Virial quotient                       -2.65726845
 Correlation energy                    -0.78432377
 !MRCI STATE 3.2 Energy              -295.161939625569

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23386095 (Davidson, fixed reference)
 Cluster corrected energies          -295.23385352 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23386095 (Davidson, rotated reference)

 Cluster corrected energies          -295.23256865 (Pople, fixed reference)
 Cluster corrected energies          -295.23256077 (Pople, relaxed reference)
 Cluster corrected energies          -295.23256865 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.89123703 (fixed)   0.95675788 (relaxed)   0.95675420 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002683   -0.00010969   -0.66666028
 Singles      0.01937687   -0.05728611   -0.06637549
 Pairs        0.07304045   -0.00000011   -0.05251851
 Total        1.09244415   -0.05739592   -0.78555427
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37002495
 Nuclear energy                         0.00000000
 Kinetic energy                       111.08232649
 One electron energy                 -507.92792222
 Two electron energy                  212.77234300
 Virial quotient                       -2.65708856
 Correlation energy                    -0.78555427
 !MRCI STATE 4.2 Energy              -295.155579220565

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22819912 (Davidson, fixed reference)
 Cluster corrected energies          -295.22819252 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22819912 (Davidson, rotated reference)

 Cluster corrected energies          -295.22694031 (Pople, fixed reference)
 Cluster corrected energies          -295.22693331 (Pople, relaxed reference)
 Cluster corrected energies          -295.22694031 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.82613922 (fixed)   0.95675789 (relaxed)   0.95675421 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002683   -0.00010969   -0.66666040
 Singles      0.01937690   -0.05728611   -0.06637549
 Pairs        0.07304041    0.00000001   -0.05251838
 Total        1.09244413   -0.05739579   -0.78555427
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37002495
 Nuclear energy                         0.00000000
 Kinetic energy                       111.08232626
 One electron energy                 -507.92792359
 Two electron energy                  212.77234437
 Virial quotient                       -2.65708857
 Correlation energy                    -0.78555427
 !MRCI STATE 5.2 Energy              -295.155579217279

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22819910 (Davidson, fixed reference)
 Cluster corrected energies          -295.22819250 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22819910 (Davidson, rotated reference)

 Cluster corrected energies          -295.22694028 (Pople, fixed reference)
 Cluster corrected energies          -295.22693329 (Pople, relaxed reference)
 Cluster corrected energies          -295.22694028 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.88746303 (fixed)   0.95675791 (relaxed)   0.95675423 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002683   -0.00010969   -0.66666056
 Singles      0.01937684   -0.05728601   -0.06637541
 Pairs        0.07304041    0.00000007   -0.05251828
 Total        1.09244409   -0.05739563   -0.78555425
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37002495
 Nuclear energy                         0.00000000
 Kinetic energy                       111.08232434
 One electron energy                 -507.92792266
 Two electron energy                  212.77234346
 Virial quotient                       -2.65708861
 Correlation energy                    -0.78555425
 !MRCI STATE 6.2 Energy              -295.155579195394

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22819904 (Davidson, fixed reference)
 Cluster corrected energies          -295.22819244 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22819904 (Davidson, rotated reference)

 Cluster corrected energies          -295.22694022 (Pople, fixed reference)
 Cluster corrected energies          -295.22693322 (Pople, relaxed reference)
 Cluster corrected energies          -295.22694022 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.87968379 (fixed)   0.95675788 (relaxed)   0.95675420 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002682   -0.00010966   -0.66666063
 Singles      0.01937634   -0.05728542   -0.06637482
 Pairs        0.07304099   -0.00000019   -0.05251860
 Total        1.09244416   -0.05739527   -0.78555404
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37002495
 Nuclear energy                         0.00000000
 Kinetic energy                       111.08232144
 One electron energy                 -507.92790506
 Two electron energy                  212.77232607
 Virial quotient                       -2.65708868
 Correlation energy                    -0.78555404
 !MRCI STATE 7.2 Energy              -295.155578990205

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22819887 (Davidson, fixed reference)
 Cluster corrected energies          -295.22819228 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22819887 (Davidson, rotated reference)

 Cluster corrected energies          -295.22694006 (Pople, fixed reference)
 Cluster corrected energies          -295.22693306 (Pople, relaxed reference)
 Cluster corrected energies          -295.22694006 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.87997486 (fixed)   0.95675791 (relaxed)   0.95675423 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002683   -0.00010966   -0.66666306
 Singles      0.01937628   -0.05728542   -0.06637463
 Pairs        0.07304099    0.00000262   -0.05251617
 Total        1.09244410   -0.05739246   -0.78555386
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37002495
 Nuclear energy                         0.00000000
 Kinetic energy                       111.08232212
 One electron energy                 -507.92790769
 Two electron energy                  212.77232888
 Virial quotient                       -2.65708866
 Correlation energy                    -0.78555386
 !MRCI STATE 8.2 Energy              -295.155578804863

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.22819862 (Davidson, fixed reference)
 Cluster corrected energies          -295.22819202 (Davidson, relaxed reference)
 Cluster corrected energies          -295.22819862 (Davidson, rotated reference)

 Cluster corrected energies          -295.22693981 (Pople, fixed reference)
 Cluster corrected energies          -295.22693280 (Pople, relaxed reference)
 Cluster corrected energies          -295.22693981 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95628647 (fixed)   0.95629461 (relaxed)   0.95628647 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003457   -0.00010579   -0.00012162
 Singles      0.01998593   -0.05773275   -0.06718652
 Pairs        0.07349257   -0.72928445   -0.71981485
 Total        1.09351306   -0.78712299   -0.78712299
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.35920170
 Nuclear energy                         0.00000000
 Kinetic energy                       111.08726841
 One electron energy                 -507.93174711
 Two electron energy                  212.78542242
 Virial quotient                       -2.65688705
 Correlation energy                    -0.78712299
 !MRCI STATE 9.2 Energy              -295.146324690459

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.21993097 (Davidson, fixed reference)
 Cluster corrected energies          -295.21991633 (Davidson, relaxed reference)
 Cluster corrected energies          -295.21993097 (Davidson, rotated reference)

 Cluster corrected energies          -295.21872206 (Pople, fixed reference)
 Cluster corrected energies          -295.21870648 (Pople, relaxed reference)
 Cluster corrected energies          -295.21872206 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1944.75       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     13770.23   4272.30   9492.54      4.04      0.11      1.02
 REAL TIME  *     14020.72 SEC
 DISK USED  *         1.94 GB (local),       15.54 GB (total)
 SF USED    *        12.77 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -295.23386113  AU                              
 SETTING HLSDIAG(14)    =      -295.23386118  AU                              
 SETTING HLSDIAG(15)    =      -295.23386095  AU                              
 SETTING HLSDIAG(16)    =      -295.22819912  AU                              
 SETTING HLSDIAG(17)    =      -295.22819910  AU                              
 SETTING HLSDIAG(18)    =      -295.22819904  AU                              
 SETTING HLSDIAG(19)    =      -295.22819887  AU                              
 SETTING HLSDIAG(20)    =      -295.22819862  AU                              
 SETTING HLSDIAG(21)    =      -295.21993097  AU                              


         HLSDIAG
    -295.5266946
    -295.5266947
    -295.5266948
    -295.2256781
    -295.2256781
    -295.2256781
    -295.2256780
    -295.2256779
    -295.2215712
    -295.2215713
    -295.2215712
    -295.2204161
    -295.2338611
    -295.2338612
    -295.2338610
    -295.2281991
    -295.2281991
    -295.2281990
    -295.2281989
    -295.2281986
    -295.2199310
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -295.453477   -295.453477   -295.453477   -295.152586   -295.152586   -295.152586   -295.152586   -295.152586
                      -295.147885   -295.147885   -295.147885   -295.146506
 Replaced energies:   -295.526695   -295.526695   -295.526695   -295.225678   -295.225678   -295.225678   -295.225678   -295.225678
                      -295.221571   -295.221571   -295.221571   -295.220416

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -295.161940   -295.161940   -295.161940   -295.155579   -295.155579   -295.155579   -295.155579   -295.155579
                      -295.146325
 Replaced energies:   -295.233861   -295.233861   -295.233861   -295.228199   -295.228199   -295.228199   -295.228199   -295.228199
                      -295.219931



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -295.52669475

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -159.30   -1272.56      -5.38      48.54    -126.13     231.24    -122.98       0.24     -46.67

    2   2.2  0.5  0.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          159.30       0.00    2131.99       5.24     -49.07     222.22     136.48     -73.82      -0.32      79.21

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1272.56   -2131.99       0.00       0.60     255.02      66.81     -17.41       9.77       0.62       8.12

    4   4.2  0.5  0.5       0.00       0.00       0.00   66065.53       0.00       0.00       0.00       0.00       0.00       0.00
                            5.38      -5.24      -0.60      -0.00      21.36      10.86     904.92    1693.74       6.03      -0.51

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   66065.53       0.00       0.00       0.00       0.00       0.00
                          -48.54      49.07    -255.02     -21.36       0.00    -960.25       9.62       9.60      -2.61     817.40

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   66065.52       0.00       0.00       0.00       0.00
                          126.13    -222.22     -66.81     -10.86     960.25      -0.00     -23.90     -43.45     -10.39     138.83

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   66065.54       0.00       0.00       0.00
                         -231.24    -136.48      17.41    -904.92      -9.62      23.90       0.00      12.61    -844.33      -3.36

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66065.56       0.00       0.00
                          122.98      73.82      -9.77   -1693.74      -9.60      43.45     -12.61      -0.00     451.14       3.54

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66966.88       0.00
                           -0.24       0.32      -0.62      -6.03       2.61      10.39     844.33    -451.14       0.00       0.83

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66966.86
                           46.67     -79.21      -8.12       0.51    -817.40    -138.83       3.36      -3.54      -0.83       0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.22      -3.97      91.75     -22.87     138.80    -817.04      10.18      -2.25       0.44    -116.83

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -358.16    -213.78      26.76       0.01       0.00       0.00       0.00      -0.00   -1778.80      -6.65

   13   1.2  0.5 -0.5       0.00   -2468.76    -146.48     133.55    -223.09     -37.40       2.70     -32.75      47.06      -1.29
                            0.00     264.60   -2132.91      32.91     -33.90     223.77     129.67      81.16      -9.80     -79.11

   14   2.2  0.5 -0.5    2468.76       0.00    -271.90    -226.37    -134.85     -14.04      -3.25      15.80     -78.79      -1.17
                         -264.60       0.00   -1253.34      -8.12     -19.75     132.67    -222.91    -138.41       5.60     -47.18

   15   3.2  0.5 -0.5     146.48     271.90      -0.00     -25.76      17.31       3.04       9.65    -302.73      -9.86       0.07
                         2132.91    1253.34       0.00     262.03       3.95     -23.95     -24.36     -14.98     -91.60       5.57

   16   4.2  0.5 -0.5    -133.55     226.37      25.76      -0.00     945.86     166.17      52.59       3.89       4.94      -7.91
                          -32.91       8.12    -262.03       0.00    -144.72     949.44      -6.35       0.61     -25.90     828.75

   17   5.2  0.5 -0.5     223.09     134.85     -17.31    -945.86       0.00      26.25    -297.54     -17.16     819.83       5.30
                           33.90      19.75      -3.95     144.72       0.00       4.41    1005.07   -1611.73     123.62       4.82

   18   6.2  0.5 -0.5      37.40      14.04      -3.04    -166.17     -26.25      -0.00    1895.98      61.18     123.57       0.12
                         -223.77    -132.67      23.95    -949.44      -4.41       0.00     140.35    -251.14    -819.39     -25.51

   19   7.2  0.5 -0.5      -2.70       3.25      -9.65     -52.59     297.54   -1895.98      -0.00       1.81      -0.16      31.37
                         -129.67     222.91      24.36       6.35   -1005.07    -140.35      -0.00      -2.02       9.98      -5.21

   20   8.2  0.5 -0.5      32.75     -15.80     302.73      -3.89      17.16     -61.18      -1.81       0.00       5.37    -956.79
                          -81.16     138.41      14.98      -0.61    1611.73     251.14       2.02      -0.00       4.50      -2.58

   21   9.2  0.5 -0.5     -47.06      78.79       9.86      -4.94    -819.83    -123.57       0.16      -5.37      -0.00      -2.16
                            9.80      -5.60      91.60      25.90    -123.62     819.39      -9.98      -4.50      -0.00    -116.80

   22  10.2  0.5 -0.5       1.29       1.17      -0.07       7.91      -5.30      -0.12     -31.37     956.79       2.16       0.00
                           79.11      47.18      -5.57    -828.75      -4.82      25.51       5.21       2.58     116.80       0.00

   23  11.2  0.5 -0.5      78.75      47.76      -5.84     828.71      -1.43     -23.25      10.37     -10.95     116.81       0.42
                           -1.39      -0.91       0.76       1.91      -2.58      10.23     812.82     505.69      -2.16      -0.83

   24  12.2  0.5 -0.5      45.68     -24.61     414.73      -0.00      -0.00      -0.00       0.00       0.00       6.42   -1778.54
                          210.55    -358.31     -44.45      -0.00       0.00       0.00       0.00       0.00     -12.71      32.87

   25   1.2  1.5  1.5    -284.85     505.70      61.38      11.80    -617.45     -93.49       0.28      -2.14     -29.14      20.92
                          -63.20      34.71    -579.17     -17.71      93.12    -617.07      -7.89      -5.82       2.74   -1134.98

   26   2.2  1.5  1.5     500.25     286.24     -38.12     601.30      14.34     -14.50       4.81      44.36   -1141.21      -4.66
                          -26.90     -17.39      12.69      44.27      -0.26       6.81    -599.68    -352.62      64.65      21.00

   27   3.2  1.5  1.5     -28.70     -15.63       2.23     -39.28      -3.22       1.17     -40.83     694.79      64.67       0.29
                         -495.16    -295.40      35.70     600.60       3.27     -17.40      41.12      24.91    1141.40       1.74

   28   4.2  1.5  1.5    -108.30     583.23      49.16    -181.33     463.69      93.60     133.97       5.32     145.83      -8.70
                          122.35      14.27     551.82      54.87      58.38    -472.38    -183.63     307.40      55.81    -398.47

   29   5.2  1.5  1.5     550.79      76.04     -56.34    -460.94    -184.85     -13.58     364.74      11.44     362.38       4.36
                          155.00     119.45    -230.07     189.57     -27.72     175.77    -473.78     780.18     147.01     155.95

   30   6.2  1.5  1.5     192.48     109.96     -15.61    -186.05      -0.53     -22.88    -983.23     -42.88     156.94       1.31
                         -467.78    -293.80      29.69    -491.30       8.54      17.98    -210.96     332.35    -391.18       1.82

   31   7.2  1.5  1.5      -2.79       5.69      34.08     -26.51     158.26    -992.82      29.30       2.15      -1.04     -23.89
                          323.99    -523.25     -56.74      11.34     457.50      60.24       1.64      -1.36       6.49       1.20

   32   8.2  1.5  1.5      76.96     -43.25     688.35       1.59      -9.36      47.06      -3.12      -0.18       1.61    -500.20
                          158.59    -273.41     -36.35      -0.35    -884.67    -131.22       0.33      -2.41      -2.78       6.08

   33   9.2  1.5  1.5     111.29     -59.95    1010.46       0.01      -0.04       0.38      -0.00      -0.00       0.90    -247.37
                         -513.08     873.14     108.32      -0.00      -0.00      -0.00       0.01      -0.01       1.77      -4.58

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.96      -0.05      12.38      -5.81       3.18      -9.47     719.36    -362.03      -0.10      24.13

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           92.58     -72.03     663.52     -19.65      68.31    -716.88      -9.50       7.32      -4.19    1307.19

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          331.78    -569.47    -108.76       1.91    -693.02     -63.36       1.49      -2.41       9.68     -98.52

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           30.66     -55.13    -244.26     -13.45     104.89    -181.67     527.25    1005.89       8.77     169.14

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           55.52    -171.43    -620.39      -8.59     288.41    -470.52    -202.62    -391.00      -3.04     430.08

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -363.80     554.39    -187.91     -16.96    -528.56    -300.74      -3.03      -8.96      -8.97     175.97

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -570.49    -358.98      43.47    -628.10      10.26      20.71       1.88      12.68    -482.18      -2.96

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          370.90     223.52     -27.30    -977.17      -6.77      26.34     -14.05     -12.70     309.80       0.92

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1007.67    -601.47      75.30      -0.81      -0.00       0.02      -0.00       0.01    -291.27      -1.10

   43   1.2  1.5 -0.5    -164.46     291.97      35.44       6.82    -356.48     -53.98       0.16      -1.24     -16.82      12.08
                           36.49     -20.04     334.39      10.23     -53.76     356.26       4.56       3.36      -1.58     655.28

   44   2.2  1.5 -0.5     288.82     165.26     -22.01     347.16       8.28      -8.37       2.78      25.61    -658.88      -2.69
                           15.53      10.04      -7.33     -25.56       0.15      -3.93     346.23     203.59     -37.32     -12.13

   45   3.2  1.5 -0.5     -16.57      -9.02       1.29     -22.68      -1.86       0.67     -23.57     401.13      37.34       0.17
                          285.88     170.55     -20.61    -346.76      -1.89      10.04     -23.74     -14.38    -658.99      -1.01

   46   4.2  1.5 -0.5     -62.53     336.73      28.38    -104.69     267.71      54.04      77.35       3.07      84.19      -5.02
                          -70.64      -8.24    -318.60     -31.68     -33.70     272.73     106.02    -177.48     -32.22     230.06

   47   5.2  1.5 -0.5     318.00      43.90     -32.53    -266.12    -106.72      -7.84     210.58       6.61     209.22       2.52
                          -89.49     -68.96     132.83    -109.45      16.00    -101.48     273.54    -450.44     -84.87     -90.04

   48   6.2  1.5 -0.5     111.13      63.49      -9.01    -107.42      -0.31     -13.21    -567.67     -24.76      90.61       0.76
                          270.07     169.62     -17.14     283.65      -4.93     -10.38     121.80    -191.88     225.85      -1.05

   49   7.2  1.5 -0.5      -1.61       3.29      19.68     -15.30      91.37    -573.20      16.91       1.24      -0.60     -13.79
                         -187.05     302.10      32.76      -6.55    -264.14     -34.78      -0.95       0.79      -3.75      -0.69

   50   8.2  1.5 -0.5      44.43     -24.97     397.42       0.92      -5.41      27.17      -1.80      -0.10       0.93    -288.79
                          -91.56     157.85      20.99       0.20     510.76      75.76      -0.19       1.39       1.61      -3.51

   51   9.2  1.5 -0.5      64.25     -34.61     583.39       0.00      -0.03       0.22      -0.00      -0.00       0.52    -142.82
                          296.23    -504.11     -62.54       0.00       0.00       0.00      -0.01       0.01      -1.02       2.64

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

    1   1.2  0.5  0.5       0.00       0.00       0.00    2468.76     146.48    -133.55     223.09      37.40      -2.70      32.75
                           -9.22     358.16      -0.00     264.60   -2132.91      32.91     -33.90     223.77     129.67      81.16

    2   2.2  0.5  0.5       0.00       0.00   -2468.76       0.00     271.90     226.37     134.85      14.04       3.25     -15.80
                            3.97     213.78    -264.60      -0.00   -1253.34      -8.12     -19.75     132.67    -222.91    -138.41

    3   3.2  0.5  0.5       0.00       0.00    -146.48    -271.90      -0.00      25.76     -17.31      -3.04      -9.65     302.73
                          -91.75     -26.76    2132.91    1253.34      -0.00     262.03       3.95     -23.95     -24.36     -14.98

    4   4.2  0.5  0.5       0.00       0.00     133.55    -226.37     -25.76      -0.00    -945.86    -166.17     -52.59      -3.89
                           22.87      -0.01     -32.91       8.12    -262.03      -0.00    -144.72     949.44      -6.35       0.61

    5   5.2  0.5  0.5       0.00       0.00    -223.09    -134.85      17.31     945.86       0.00     -26.25     297.54      17.16
                         -138.80      -0.00      33.90      19.75      -3.95     144.72      -0.00       4.41    1005.07   -1611.73

    6   6.2  0.5  0.5       0.00       0.00     -37.40     -14.04       3.04     166.17      26.25      -0.00   -1895.98     -61.18
                          817.04      -0.00    -223.77    -132.67      23.95    -949.44      -4.41      -0.00     140.35    -251.14

    7   7.2  0.5  0.5       0.00       0.00       2.70      -3.25       9.65      52.59    -297.54    1895.98      -0.00      -1.81
                          -10.18      -0.00    -129.67     222.91      24.36       6.35   -1005.07    -140.35       0.00      -2.02

    8   8.2  0.5  0.5       0.00       0.00     -32.75      15.80    -302.73       3.89     -17.16      61.18       1.81       0.00
                            2.25       0.00     -81.16     138.41      14.98      -0.61    1611.73     251.14       2.02       0.00

    9   9.2  0.5  0.5       0.00       0.00      47.06     -78.79      -9.86       4.94     819.83     123.57      -0.16       5.37
                           -0.44    1778.80       9.80      -5.60      91.60      25.90    -123.62     819.39      -9.98      -4.50

   10  10.2  0.5  0.5       0.00       0.00      -1.29      -1.17       0.07      -7.91       5.30       0.12      31.37    -956.79
                          116.83       6.65      79.11      47.18      -5.57    -828.75      -4.82      25.51       5.21       2.58

   11  11.2  0.5  0.5   66966.88       0.00     -78.75     -47.76       5.84    -828.71       1.43      23.25     -10.37      10.95
                           -0.00      12.59      -1.39      -0.91       0.76       1.91      -2.58      10.23     812.82     505.69

   12  12.2  0.5  0.5       0.00   67220.40     -45.68      24.61    -414.73       0.00       0.00       0.00      -0.00      -0.00
                          -12.59      -0.00     210.55    -358.31     -44.45      -0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5     -78.75     -45.68       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.39    -210.55       0.00     159.30    1272.56       5.38     -48.54     126.13    -231.24     122.98

   14   2.2  0.5 -0.5     -47.76      24.61       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.91     358.31    -159.30      -0.00   -2131.99      -5.24      49.07    -222.22    -136.48      73.82

   15   3.2  0.5 -0.5       5.84    -414.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.76      44.45   -1272.56    2131.99      -0.00      -0.60    -255.02     -66.81      17.41      -9.77

   16   4.2  0.5 -0.5    -828.71       0.00       0.00       0.00       0.00   66065.53       0.00       0.00       0.00       0.00
                           -1.91       0.00      -5.38       5.24       0.60       0.00     -21.36     -10.86    -904.92   -1693.74

   17   5.2  0.5 -0.5       1.43       0.00       0.00       0.00       0.00       0.00   66065.53       0.00       0.00       0.00
                            2.58      -0.00      48.54     -49.07     255.02      21.36      -0.00     960.25      -9.62      -9.60

   18   6.2  0.5 -0.5      23.25       0.00       0.00       0.00       0.00       0.00       0.00   66065.52       0.00       0.00
                          -10.23      -0.00    -126.13     222.22      66.81      10.86    -960.25       0.00      23.90      43.45

   19   7.2  0.5 -0.5     -10.37      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   66065.54       0.00
                         -812.82      -0.00     231.24     136.48     -17.41     904.92       9.62     -23.90      -0.00     -12.61

   20   8.2  0.5 -0.5      10.95      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66065.56
                         -505.69      -0.00    -122.98     -73.82       9.77    1693.74       9.60     -43.45      12.61       0.00

   21   9.2  0.5 -0.5    -116.81      -6.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.16      12.71       0.24      -0.32       0.62       6.03      -2.61     -10.39    -844.33     451.14

   22  10.2  0.5 -0.5      -0.42    1778.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.83     -32.87     -46.67      79.21       8.12      -0.51     817.40     138.83      -3.36       3.54

   23  11.2  0.5 -0.5      -0.00     -32.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1778.50      -9.22       3.97     -91.75      22.87    -138.80     817.04     -10.18       2.25

   24  12.2  0.5 -0.5      32.92      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1778.50      -0.00     358.16     213.78     -26.76      -0.01      -0.00      -0.00      -0.00       0.00

   25   1.2  1.5  1.5    1135.08      -1.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           20.98      17.10      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5     -28.84      52.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.07     928.82      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5       2.98     928.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.12     -52.65      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5    -398.09       1.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.11      -4.84      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5     158.20       4.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.72     -12.33      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5       4.21     -13.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.56      -5.32      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5      -6.63       0.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          443.73       0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5      11.13      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          227.50       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5       4.60       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -249.74      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00    -164.46     291.97      35.44       6.82    -356.48     -53.98       0.16      -1.24
                            1.12    1074.96     -36.49      20.04    -334.39     -10.23      53.76    -356.26      -4.56      -3.36

   35   2.2  1.5  0.5       0.00       0.00     288.82     165.26     -22.01     347.16       8.28      -8.37       2.78      25.61
                          -98.91     -19.66     -15.53     -10.04       7.33      25.56      -0.15       3.93    -346.23    -203.59

   36   3.2  1.5  0.5       0.00       0.00     -16.57      -9.02       1.29     -22.68      -1.86       0.67     -23.57     401.13
                        -1315.86       2.39    -285.88    -170.55      20.61     346.76       1.89     -10.04      23.74      14.38

   37   4.2  1.5  0.5       0.00       0.00     -62.53     336.73      28.38    -104.69     267.71      54.04      77.35       3.07
                           59.61     -14.81      70.64       8.24     318.60      31.68      33.70    -272.73    -106.02     177.48

   38   5.2  1.5  0.5       0.00       0.00     318.00      43.90     -32.53    -266.12    -106.72      -7.84     210.58       6.61
                          162.29       5.78      89.49      68.96    -132.83     109.45     -16.00     101.48    -273.54     450.44

   39   6.2  1.5  0.5       0.00       0.00     111.13      63.49      -9.01    -107.42      -0.31     -13.21    -567.67     -24.76
                         -454.60       0.12    -270.07    -169.62      17.14    -283.65       4.93      10.38    -121.80     191.88

   40   7.2  1.5  0.5       0.00       0.00      -1.61       3.29      19.68     -15.30      91.37    -573.20      16.91       1.24
                            7.73      -0.25     187.05    -302.10     -32.76       6.55     264.14      34.78       0.95      -0.79

   41   8.2  1.5  0.5       0.00       0.00      44.43     -24.97     397.42       0.92      -5.41      27.17      -1.80      -0.10
                            0.87       0.07      91.56    -157.85     -20.99      -0.20    -510.76     -75.76       0.19      -1.39

   42   9.2  1.5  0.5       0.00       0.00      64.25     -34.61     583.39       0.00      -0.03       0.22      -0.00      -0.00
                           -2.06      -0.00    -296.23     504.11      62.54      -0.00      -0.00      -0.00       0.01      -0.01

   43   1.2  1.5 -0.5     655.34      -0.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.11      -9.87       0.96      -0.05      12.38      -5.81       3.18      -9.47     719.36    -362.03

   44   2.2  1.5 -0.5     -16.65      30.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04    -536.26      92.58     -72.03     663.52     -19.65      68.31    -716.88      -9.50       7.32

   45   3.2  1.5 -0.5       1.72     536.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.69      30.40     331.78    -569.47    -108.76       1.91    -693.02     -63.36       1.49      -2.41

   46   4.2  1.5 -0.5    -229.84       1.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.64       2.79      30.66     -55.13    -244.26     -13.45     104.89    -181.67     527.25    1005.89

   47   5.2  1.5 -0.5      91.34       2.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.99       7.12      55.52    -171.43    -620.39      -8.59     288.41    -470.52    -202.62    -391.00

   48   6.2  1.5 -0.5       2.43      -7.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.78       3.07    -363.80     554.39    -187.91     -16.96    -528.56    -300.74      -3.03      -8.96

   49   7.2  1.5 -0.5      -3.83       0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -256.19      -0.02    -570.49    -358.98      43.47    -628.10      10.26      20.71       1.88      12.68

   50   8.2  1.5 -0.5       6.43      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -131.35      -0.00     370.90     223.52     -27.30    -977.17      -6.77      26.34     -14.05     -12.70

   51   9.2  1.5 -0.5       2.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          144.18       0.00   -1007.67    -601.47      75.30      -0.81      -0.00       0.02      -0.00       0.01

   52   1.2  1.5 -1.5       0.00       0.00    -284.85     505.70      61.38      11.80    -617.45     -93.49       0.28      -2.14
                           -0.00      -0.00      63.20     -34.71     579.17      17.71     -93.12     617.07       7.89       5.82

   53   2.2  1.5 -1.5       0.00       0.00     500.25     286.24     -38.12     601.30      14.34     -14.50       4.81      44.36
                           -0.00      -0.00      26.90      17.39     -12.69     -44.27       0.26      -6.81     599.68     352.62

   54   3.2  1.5 -1.5       0.00       0.00     -28.70     -15.63       2.23     -39.28      -3.22       1.17     -40.83     694.79
                           -0.00      -0.00     495.16     295.40     -35.70    -600.60      -3.27      17.40     -41.12     -24.91

   55   4.2  1.5 -1.5       0.00       0.00    -108.30     583.23      49.16    -181.33     463.69      93.60     133.97       5.32
                           -0.00      -0.00    -122.35     -14.27    -551.82     -54.87     -58.38     472.38     183.63    -307.40

   56   5.2  1.5 -1.5       0.00       0.00     550.79      76.04     -56.34    -460.94    -184.85     -13.58     364.74      11.44
                           -0.00      -0.00    -155.00    -119.45     230.07    -189.57      27.72    -175.77     473.78    -780.18

   57   6.2  1.5 -1.5       0.00       0.00     192.48     109.96     -15.61    -186.05      -0.53     -22.88    -983.23     -42.88
                           -0.00      -0.00     467.78     293.80     -29.69     491.30      -8.54     -17.98     210.96    -332.35

   58   7.2  1.5 -1.5       0.00       0.00      -2.79       5.69      34.08     -26.51     158.26    -992.82      29.30       2.15
                           -0.00      -0.00    -323.99     523.25      56.74     -11.34    -457.50     -60.24      -1.64       1.36

   59   8.2  1.5 -1.5       0.00       0.00      76.96     -43.25     688.35       1.59      -9.36      47.06      -3.12      -0.18
                           -0.00      -0.00    -158.59     273.41      36.35       0.35     884.67     131.22      -0.33       2.41

   60   9.2  1.5 -1.5       0.00       0.00     111.29     -59.95    1010.46       0.01      -0.04       0.38      -0.00      -0.00
                           -0.00      -0.00     513.08    -873.14    -108.32       0.00       0.00       0.00      -0.01       0.01


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5     -47.06       1.29      78.75      45.68    -284.85     500.25     -28.70    -108.30     550.79     192.48
                           -9.80     -79.11       1.39    -210.55      63.20      26.90     495.16    -122.35    -155.00     467.78

    2   2.2  0.5  0.5      78.79       1.17      47.76     -24.61     505.70     286.24     -15.63     583.23      76.04     109.96
                            5.60     -47.18       0.91     358.31     -34.71      17.39     295.40     -14.27    -119.45     293.80

    3   3.2  0.5  0.5       9.86      -0.07      -5.84     414.73      61.38     -38.12       2.23      49.16     -56.34     -15.61
                          -91.60       5.57      -0.76      44.45     579.17     -12.69     -35.70    -551.82     230.07     -29.69

    4   4.2  0.5  0.5      -4.94       7.91     828.71      -0.00      11.80     601.30     -39.28    -181.33    -460.94    -186.05
                          -25.90     828.75      -1.91       0.00      17.71     -44.27    -600.60     -54.87    -189.57     491.30

    5   5.2  0.5  0.5    -819.83      -5.30      -1.43      -0.00    -617.45      14.34      -3.22     463.69    -184.85      -0.53
                          123.62       4.82       2.58      -0.00     -93.12       0.26      -3.27     -58.38      27.72      -8.54

    6   6.2  0.5  0.5    -123.57      -0.12     -23.25      -0.00     -93.49     -14.50       1.17      93.60     -13.58     -22.88
                         -819.39     -25.51     -10.23      -0.00     617.07      -6.81      17.40     472.38    -175.77     -17.98

    7   7.2  0.5  0.5       0.16     -31.37      10.37       0.00       0.28       4.81     -40.83     133.97     364.74    -983.23
                            9.98      -5.21    -812.82      -0.00       7.89     599.68     -41.12     183.63     473.78     210.96

    8   8.2  0.5  0.5      -5.37     956.79     -10.95       0.00      -2.14      44.36     694.79       5.32      11.44     -42.88
                            4.50      -2.58    -505.69      -0.00       5.82     352.62     -24.91    -307.40    -780.18    -332.35

    9   9.2  0.5  0.5      -0.00       2.16     116.81       6.42     -29.14   -1141.21      64.67     145.83     362.38     156.94
                            0.00    -116.80       2.16      12.71      -2.74     -64.65   -1141.40     -55.81    -147.01     391.18

   10  10.2  0.5  0.5      -2.16       0.00       0.42   -1778.54      20.92      -4.66       0.29      -8.70       4.36       1.31
                          116.80      -0.00       0.83     -32.87    1134.98     -21.00      -1.74     398.47    -155.95      -1.82

   11  11.2  0.5  0.5    -116.81      -0.42      -0.00      32.92    1135.08     -28.84       2.98    -398.09     158.20       4.21
                           -2.16      -0.83       0.00   -1778.50     -20.98      -0.07      -8.12      -1.11       1.72      -6.56

   12  12.2  0.5  0.5      -6.42    1778.54     -32.92      -0.00      -1.10      52.65     928.38       1.83       4.97     -13.16
                          -12.71      32.87    1778.50       0.00     -17.10    -928.82      52.65       4.84      12.33       5.32

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.24      46.67       9.22    -358.16       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.32     -79.21      -3.97    -213.78       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.62      -8.12      91.75      26.76       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.03       0.51     -22.87       0.01       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.61    -817.40     138.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.39    -138.83    -817.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          844.33       3.36      10.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -451.14      -3.54      -2.25      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   66966.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.83       0.44   -1778.80       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   66966.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.83      -0.00    -116.83      -6.65       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   66966.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.44     116.83       0.00     -12.59       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   67220.40       0.00       0.00       0.00       0.00       0.00       0.00
                         1778.80       6.65      12.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   64269.55       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       2.79      22.90     -31.53      -7.06      59.20

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   64269.54       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -2.79       0.00    1251.85    -214.40    -579.02    1314.94

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   64269.59       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -22.90   -1251.85      -0.00    -482.48   -1224.64    -617.52

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   65512.22       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      31.53     214.40     482.48       0.00     -14.65     478.47

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   65512.22       0.00
                           -0.00      -0.00      -0.00      -0.00       7.06     579.02    1224.64      14.65      -0.00    1158.21

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   65512.24
                           -0.00      -0.00      -0.00      -0.00     -59.20   -1314.94     617.52    -478.47   -1158.21      -0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -1410.76      58.76      -9.06   -1252.31     518.13      17.69

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     907.51     -20.58       1.64   -1965.26     763.12      13.41

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -2382.75      43.58      -5.30       0.00       0.00       0.00

   34   1.2  1.5  0.5     -16.82      12.08     655.34      -0.64       0.00     721.70     -40.92    -270.68    -730.32    -313.07
                            1.58    -655.28      12.11       9.87       0.00      40.90     721.59     108.81     293.37    -778.19

   35   2.2  1.5  0.5    -658.88      -2.69     -16.65      30.40    -721.70      -0.00      -0.86     785.98    -291.11      -0.42
                           37.32      12.13       0.04     536.26     -40.90       0.00     -13.29     -59.15      12.10      32.76

   36   3.2  1.5  0.5      37.34       0.17       1.72     536.00      40.92       0.86       0.00     -41.25      15.38      -1.64
                          658.99       1.01       4.69     -30.40    -721.59      13.29       0.00    -779.72     305.04       3.31

   37   4.2  1.5  0.5      84.19      -5.02    -229.84       1.06     270.68    -785.98      41.25      -0.00     680.28     233.74
                           32.22    -230.06       0.64      -2.79    -108.81      59.15     779.72       0.00     285.00    -611.99

   38   5.2  1.5  0.5     209.22       2.52      91.34       2.87     730.32     291.11     -15.38    -680.28      -0.00     -81.56
                           84.87      90.04      -0.99      -7.12    -293.37     -12.10    -305.04    -285.00      -0.00     260.87

   39   6.2  1.5  0.5      90.61       0.76       2.43      -7.60     313.07       0.42       1.64    -233.74      81.56       0.00
                         -225.85       1.05       3.78      -3.07     778.19     -32.76      -3.31     611.99    -260.87      -0.00

   40   7.2  1.5  0.5      -0.60     -13.79      -3.83       0.19      -2.53     -16.39     -45.43    -180.80    -496.11    1345.51
                            3.75       0.69     256.19       0.02     -35.04    -858.62      62.51    -238.88    -561.99    -258.08

   41   8.2  1.5  0.5       0.93    -288.79       6.43      -0.02       0.87     -51.13    -966.83       8.15      21.27     -65.22
                           -1.61       3.51     131.35       0.00      -5.88    -443.56      21.45     438.32    1108.92     482.59

   42   9.2  1.5  0.5       0.52    -142.82       2.65       0.00       1.63     -77.90   -1373.71      -0.00      -0.00       0.01
                            1.02      -2.64    -144.18      -0.00      25.29    1373.48     -77.85      -0.00      -0.00      -0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.10      24.13       1.12    1074.96      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.19    1307.19     -98.91     -19.66      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.68     -98.52   -1315.86       2.39      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.77     169.14      59.61     -14.81      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.04     430.08     162.29       5.78      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.97     175.97    -454.60       0.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -482.18      -2.96       7.73      -0.25      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          309.80       0.92       0.87       0.07      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -291.27      -1.10      -2.06      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5     -29.14      20.92    1135.08      -1.10       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.74    1134.98     -20.98     -17.10      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5   -1141.21      -4.66     -28.84      52.65       0.00       0.00       0.00       0.00       0.00       0.00
                          -64.65     -21.00      -0.07    -928.82      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5      64.67       0.29       2.98     928.38       0.00       0.00       0.00       0.00       0.00       0.00
                        -1141.40      -1.74      -8.12      52.65      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5     145.83      -8.70    -398.09       1.83       0.00       0.00       0.00       0.00       0.00       0.00
                          -55.81     398.47      -1.11       4.84      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5     362.38       4.36     158.20       4.97       0.00       0.00       0.00       0.00       0.00       0.00
                         -147.01    -155.95       1.72      12.33      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5     156.94       1.31       4.21     -13.16       0.00       0.00       0.00       0.00       0.00       0.00
                          391.18      -1.82      -6.56       5.32      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5      -1.04     -23.89      -6.63       0.33       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.49      -1.20    -443.73      -0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5       1.61    -500.20      11.13      -0.04       0.00       0.00       0.00       0.00       0.00       0.00
                            2.78      -6.08    -227.50      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5       0.90    -247.37       4.60       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.77       4.58     249.74       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5      -2.79      76.96     111.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -323.99    -158.59     513.08      -0.96     -92.58    -331.78     -30.66     -55.52     363.80     570.49

    2   2.2  0.5  0.5       5.69     -43.25     -59.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          523.25     273.41    -873.14       0.05      72.03     569.47      55.13     171.43    -554.39     358.98

    3   3.2  0.5  0.5      34.08     688.35    1010.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           56.74      36.35    -108.32     -12.38    -663.52     108.76     244.26     620.39     187.91     -43.47

    4   4.2  0.5  0.5     -26.51       1.59       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.34       0.35       0.00       5.81      19.65      -1.91      13.45       8.59      16.96     628.10

    5   5.2  0.5  0.5     158.26      -9.36      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -457.50     884.67       0.00      -3.18     -68.31     693.02    -104.89    -288.41     528.56     -10.26

    6   6.2  0.5  0.5    -992.82      47.06       0.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -60.24     131.22       0.00       9.47     716.88      63.36     181.67     470.52     300.74     -20.71

    7   7.2  0.5  0.5      29.30      -3.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.64      -0.33      -0.01    -719.36       9.50      -1.49    -527.25     202.62       3.03      -1.88

    8   8.2  0.5  0.5       2.15      -0.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.36       2.41       0.01     362.03      -7.32       2.41   -1005.89     391.00       8.96     -12.68

    9   9.2  0.5  0.5      -1.04       1.61       0.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.49       2.78      -1.77       0.10       4.19      -9.68      -8.77       3.04       8.97     482.18

   10  10.2  0.5  0.5     -23.89    -500.20    -247.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.20      -6.08       4.58     -24.13   -1307.19      98.52    -169.14    -430.08    -175.97       2.96

   11  11.2  0.5  0.5      -6.63      11.13       4.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -443.73    -227.50     249.74      -1.12      98.91    1315.86     -59.61    -162.29     454.60      -7.73

   12  12.2  0.5  0.5       0.33      -0.04       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      -0.01       0.00   -1074.96      19.66      -2.39      14.81      -5.78      -0.12       0.25

   13   1.2  0.5 -0.5       0.00       0.00       0.00    -164.46     288.82     -16.57     -62.53     318.00     111.13      -1.61
                            0.00       0.00       0.00      36.49      15.53     285.88     -70.64     -89.49     270.07    -187.05

   14   2.2  0.5 -0.5       0.00       0.00       0.00     291.97     165.26      -9.02     336.73      43.90      63.49       3.29
                            0.00       0.00       0.00     -20.04      10.04     170.55      -8.24     -68.96     169.62     302.10

   15   3.2  0.5 -0.5       0.00       0.00       0.00      35.44     -22.01       1.29      28.38     -32.53      -9.01      19.68
                            0.00       0.00       0.00     334.39      -7.33     -20.61    -318.60     132.83     -17.14      32.76

   16   4.2  0.5 -0.5       0.00       0.00       0.00       6.82     347.16     -22.68    -104.69    -266.12    -107.42     -15.30
                            0.00       0.00       0.00      10.23     -25.56    -346.76     -31.68    -109.45     283.65      -6.55

   17   5.2  0.5 -0.5       0.00       0.00       0.00    -356.48       8.28      -1.86     267.71    -106.72      -0.31      91.37
                            0.00       0.00       0.00     -53.76       0.15      -1.89     -33.70      16.00      -4.93    -264.14

   18   6.2  0.5 -0.5       0.00       0.00       0.00     -53.98      -8.37       0.67      54.04      -7.84     -13.21    -573.20
                            0.00       0.00       0.00     356.26      -3.93      10.04     272.73    -101.48     -10.38     -34.78

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.16       2.78     -23.57      77.35     210.58    -567.67      16.91
                            0.00       0.00       0.00       4.56     346.23     -23.74     106.02     273.54     121.80      -0.95

   20   8.2  0.5 -0.5       0.00       0.00       0.00      -1.24      25.61     401.13       3.07       6.61     -24.76       1.24
                            0.00       0.00       0.00       3.36     203.59     -14.38    -177.48    -450.44    -191.88       0.79

   21   9.2  0.5 -0.5       0.00       0.00       0.00     -16.82    -658.88      37.34      84.19     209.22      90.61      -0.60
                            0.00       0.00       0.00      -1.58     -37.32    -658.99     -32.22     -84.87     225.85      -3.75

   22  10.2  0.5 -0.5       0.00       0.00       0.00      12.08      -2.69       0.17      -5.02       2.52       0.76     -13.79
                            0.00       0.00       0.00     655.28     -12.13      -1.01     230.06     -90.04      -1.05      -0.69

   23  11.2  0.5 -0.5       0.00       0.00       0.00     655.34     -16.65       1.72    -229.84      91.34       2.43      -3.83
                            0.00       0.00       0.00     -12.11      -0.04      -4.69      -0.64       0.99      -3.78    -256.19

   24  12.2  0.5 -0.5       0.00       0.00       0.00      -0.64      30.40     536.00       1.06       2.87      -7.60       0.19
                            0.00       0.00       0.00      -9.87    -536.26      30.40       2.79       7.12       3.07      -0.02

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00    -721.70      40.92     270.68     730.32     313.07      -2.53
                         1410.76    -907.51    2382.75      -0.00      40.90     721.59     108.81     293.37    -778.19      35.04

   26   2.2  1.5  1.5       0.00       0.00       0.00     721.70      -0.00       0.86    -785.98     291.11       0.42     -16.39
                          -58.76      20.58     -43.58     -40.90      -0.00     -13.29     -59.15      12.10      32.76     858.62

   27   3.2  1.5  1.5       0.00       0.00       0.00     -40.92      -0.86       0.00      41.25     -15.38       1.64     -45.43
                            9.06      -1.64       5.30    -721.59      13.29      -0.00    -779.72     305.04       3.31     -62.51

   28   4.2  1.5  1.5       0.00       0.00       0.00    -270.68     785.98     -41.25      -0.00    -680.28    -233.74    -180.80
                         1252.31    1965.26      -0.00    -108.81      59.15     779.72      -0.00     285.00    -611.99     238.88

   29   5.2  1.5  1.5       0.00       0.00       0.00    -730.32    -291.11      15.38     680.28      -0.00      81.56    -496.11
                         -518.13    -763.12      -0.00    -293.37     -12.10    -305.04    -285.00       0.00     260.87     561.99

   30   6.2  1.5  1.5       0.00       0.00       0.00    -313.07      -0.42      -1.64     233.74     -81.56       0.00    1345.51
                          -17.69     -13.41      -0.00     778.19     -32.76      -3.31     611.99    -260.87       0.00     258.08

   31   7.2  1.5  1.5   65512.27       0.00       0.00       2.53      16.39      45.43     180.80     496.11   -1345.51       0.00
                            0.00      40.69       0.00     -35.04    -858.62      62.51    -238.88    -561.99    -258.08      -0.00

   32   8.2  1.5  1.5       0.00   65512.33       0.00      -0.87      51.13     966.83      -8.15     -21.27      65.22       2.34
                          -40.69       0.00       0.00      -5.88    -443.56      21.45     438.32    1108.92     482.59      -3.89

   33   9.2  1.5  1.5       0.00       0.00   67326.87      -1.63      77.90    1373.71       0.00       0.00      -0.01       0.00
                           -0.00      -0.00       0.00      25.29    1373.48     -77.85      -0.00      -0.00      -0.00       0.00

   34   1.2  1.5  0.5       2.53      -0.87      -1.63   64269.55       0.00       0.00       0.00       0.00       0.00       0.00
                           35.04       5.88     -25.29       0.00       0.93       7.63     -10.51      -2.35      19.73     470.25

   35   2.2  1.5  0.5      16.39      51.13      77.90       0.00   64269.54       0.00       0.00       0.00       0.00       0.00
                          858.62     443.56   -1373.48      -0.93       0.00     417.28     -71.47    -193.01     438.31     -19.59

   36   3.2  1.5  0.5      45.43     966.83    1373.71       0.00       0.00   64269.59       0.00       0.00       0.00       0.00
                          -62.51     -21.45      77.85      -7.63    -417.28      -0.00    -160.83    -408.21    -205.84       3.02

   37   4.2  1.5  0.5     180.80      -8.15       0.00       0.00       0.00       0.00   65512.22       0.00       0.00       0.00
                          238.88    -438.32       0.00      10.51      71.47     160.83       0.00      -4.88     159.49     417.44

   38   5.2  1.5  0.5     496.11     -21.27       0.00       0.00       0.00       0.00       0.00   65512.22       0.00       0.00
                          561.99   -1108.92       0.00       2.35     193.01     408.21       4.88      -0.00     386.07    -172.71

   39   6.2  1.5  0.5   -1345.51      65.22      -0.01       0.00       0.00       0.00       0.00       0.00   65512.24       0.00
                          258.08    -482.59       0.00     -19.73    -438.31     205.84    -159.49    -386.07      -0.00      -5.90

   40   7.2  1.5  0.5       0.00       2.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00   65512.27
                            0.00       3.89      -0.00    -470.25      19.59      -3.02    -417.44     172.71       5.90       0.00

   41   8.2  1.5  0.5      -2.34      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.89       0.00       0.00     302.50      -6.86       0.55    -655.09     254.37       4.47     -13.56

   42   9.2  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -794.25      14.53      -1.77       0.00       0.00       0.00      -0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00     833.35     -47.26    -312.56    -843.30    -361.50       2.93
                           -0.00      -0.00      -0.00       0.00      47.23     833.22     125.65     338.75    -898.57      40.46

   44   2.2  1.5 -0.5       0.00       0.00       0.00    -833.35      -0.00      -0.99     907.57    -336.15      -0.49      18.93
                           -0.00      -0.00      -0.00     -47.23       0.00     -15.34     -68.30      13.97      37.83     991.45

   45   3.2  1.5 -0.5       0.00       0.00       0.00      47.26       0.99       0.00     -47.63      17.76      -1.89      52.46
                           -0.00      -0.00      -0.00    -833.22      15.34       0.00    -900.34     352.23       3.82     -72.18

   46   4.2  1.5 -0.5       0.00       0.00       0.00     312.56    -907.57      47.63      -0.00     785.52     269.90     208.77
                           -0.00      -0.00      -0.00    -125.65      68.30     900.34       0.00     329.09    -706.67     275.83

   47   5.2  1.5 -0.5       0.00       0.00       0.00     843.30     336.15     -17.76    -785.52      -0.00     -94.18     572.86
                           -0.00      -0.00      -0.00    -338.75     -13.97    -352.23    -329.09      -0.00     301.22     648.93

   48   6.2  1.5 -0.5       0.00       0.00       0.00     361.50       0.49       1.89    -269.90      94.18       0.00   -1553.66
                           -0.00      -0.00      -0.00     898.57     -37.83      -3.82     706.67    -301.22      -0.00     298.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00      -2.93     -18.93     -52.46    -208.77    -572.86    1553.66       0.00
                           -0.00      -0.00      -0.00     -40.46    -991.45      72.18    -275.83    -648.93    -298.00       0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       1.00     -59.04   -1116.40       9.42      24.56     -75.31      -2.70
                           -0.00      -0.00      -0.00      -6.79    -512.18      24.77     506.13    1280.47     557.24      -4.50

   51   9.2  1.5 -0.5       0.00       0.00       0.00       1.89     -89.95   -1586.23      -0.00      -0.00       0.01      -0.00
                           -0.00      -0.00      -0.00      29.21    1585.95     -89.90      -0.00      -0.00      -0.00       0.00

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

    1   1.2  0.5  0.5       0.00       0.00    -164.46     288.82     -16.57     -62.53     318.00     111.13      -1.61      44.43
                         -370.90    1007.67     -36.49     -15.53    -285.88      70.64      89.49    -270.07     187.05      91.56

    2   2.2  0.5  0.5       0.00       0.00     291.97     165.26      -9.02     336.73      43.90      63.49       3.29     -24.97
                         -223.52     601.47      20.04     -10.04    -170.55       8.24      68.96    -169.62    -302.10    -157.85

    3   3.2  0.5  0.5       0.00       0.00      35.44     -22.01       1.29      28.38     -32.53      -9.01      19.68     397.42
                           27.30     -75.30    -334.39       7.33      20.61     318.60    -132.83      17.14     -32.76     -20.99

    4   4.2  0.5  0.5       0.00       0.00       6.82     347.16     -22.68    -104.69    -266.12    -107.42     -15.30       0.92
                          977.17       0.81     -10.23      25.56     346.76      31.68     109.45    -283.65       6.55      -0.20

    5   5.2  0.5  0.5       0.00       0.00    -356.48       8.28      -1.86     267.71    -106.72      -0.31      91.37      -5.41
                            6.77       0.00      53.76      -0.15       1.89      33.70     -16.00       4.93     264.14    -510.76

    6   6.2  0.5  0.5       0.00       0.00     -53.98      -8.37       0.67      54.04      -7.84     -13.21    -573.20      27.17
                          -26.34      -0.02    -356.26       3.93     -10.04    -272.73     101.48      10.38      34.78     -75.76

    7   7.2  0.5  0.5       0.00       0.00       0.16       2.78     -23.57      77.35     210.58    -567.67      16.91      -1.80
                           14.05       0.00      -4.56    -346.23      23.74    -106.02    -273.54    -121.80       0.95       0.19

    8   8.2  0.5  0.5       0.00       0.00      -1.24      25.61     401.13       3.07       6.61     -24.76       1.24      -0.10
                           12.70      -0.01      -3.36    -203.59      14.38     177.48     450.44     191.88      -0.79      -1.39

    9   9.2  0.5  0.5       0.00       0.00     -16.82    -658.88      37.34      84.19     209.22      90.61      -0.60       0.93
                         -309.80     291.27       1.58      37.32     658.99      32.22      84.87    -225.85       3.75      -1.61

   10  10.2  0.5  0.5       0.00       0.00      12.08      -2.69       0.17      -5.02       2.52       0.76     -13.79    -288.79
                           -0.92       1.10    -655.28      12.13       1.01    -230.06      90.04       1.05       0.69       3.51

   11  11.2  0.5  0.5       0.00       0.00     655.34     -16.65       1.72    -229.84      91.34       2.43      -3.83       6.43
                           -0.87       2.06      12.11       0.04       4.69       0.64      -0.99       3.78     256.19     131.35

   12  12.2  0.5  0.5       0.00       0.00      -0.64      30.40     536.00       1.06       2.87      -7.60       0.19      -0.02
                           -0.07       0.00       9.87     536.26     -30.40      -2.79      -7.12      -3.07       0.02       0.00

   13   1.2  0.5 -0.5      44.43      64.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -91.56     296.23      -0.96     -92.58    -331.78     -30.66     -55.52     363.80     570.49    -370.90

   14   2.2  0.5 -0.5     -24.97     -34.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          157.85    -504.11       0.05      72.03     569.47      55.13     171.43    -554.39     358.98    -223.52

   15   3.2  0.5 -0.5     397.42     583.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           20.99     -62.54     -12.38    -663.52     108.76     244.26     620.39     187.91     -43.47      27.30

   16   4.2  0.5 -0.5       0.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.20       0.00       5.81      19.65      -1.91      13.45       8.59      16.96     628.10     977.17

   17   5.2  0.5 -0.5      -5.41      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          510.76       0.00      -3.18     -68.31     693.02    -104.89    -288.41     528.56     -10.26       6.77

   18   6.2  0.5 -0.5      27.17       0.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           75.76       0.00       9.47     716.88      63.36     181.67     470.52     300.74     -20.71     -26.34

   19   7.2  0.5 -0.5      -1.80      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.19      -0.01    -719.36       9.50      -1.49    -527.25     202.62       3.03      -1.88      14.05

   20   8.2  0.5 -0.5      -0.10      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.39       0.01     362.03      -7.32       2.41   -1005.89     391.00       8.96     -12.68      12.70

   21   9.2  0.5 -0.5       0.93       0.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.61      -1.02       0.10       4.19      -9.68      -8.77       3.04       8.97     482.18    -309.80

   22  10.2  0.5 -0.5    -288.79    -142.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.51       2.64     -24.13   -1307.19      98.52    -169.14    -430.08    -175.97       2.96      -0.92

   23  11.2  0.5 -0.5       6.43       2.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -131.35     144.18      -1.12      98.91    1315.86     -59.61    -162.29     454.60      -7.73      -0.87

   24  12.2  0.5 -0.5      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00   -1074.96      19.66      -2.39      14.81      -5.78      -0.12       0.25      -0.07

   25   1.2  1.5  1.5       0.87       1.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.88     -25.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5     -51.13     -77.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          443.56   -1373.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5    -966.83   -1373.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.45      77.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5       8.15      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -438.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5      21.27      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1108.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5     -65.22       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -482.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5      -2.34      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.89      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00       0.00    -833.35      47.26     312.56     843.30     361.50      -2.93       1.00
                         -302.50     794.25      -0.00      47.23     833.22     125.65     338.75    -898.57      40.46       6.79

   35   2.2  1.5  0.5       0.00       0.00     833.35      -0.00       0.99    -907.57     336.15       0.49     -18.93     -59.04
                            6.86     -14.53     -47.23      -0.00     -15.34     -68.30      13.97      37.83     991.45     512.18

   36   3.2  1.5  0.5       0.00       0.00     -47.26      -0.99       0.00      47.63     -17.76       1.89     -52.46   -1116.40
                           -0.55       1.77    -833.22      15.34      -0.00    -900.34     352.23       3.82     -72.18     -24.77

   37   4.2  1.5  0.5       0.00       0.00    -312.56     907.57     -47.63      -0.00    -785.52    -269.90    -208.77       9.42
                          655.09      -0.00    -125.65      68.30     900.34      -0.00     329.09    -706.67     275.83    -506.13

   38   5.2  1.5  0.5       0.00       0.00    -843.30    -336.15      17.76     785.52      -0.00      94.18    -572.86      24.56
                         -254.37      -0.00    -338.75     -13.97    -352.23    -329.09       0.00     301.22     648.93   -1280.47

   39   6.2  1.5  0.5       0.00       0.00    -361.50      -0.49      -1.89     269.90     -94.18       0.00    1553.66     -75.31
                           -4.47      -0.00     898.57     -37.83      -3.82     706.67    -301.22       0.00     298.00    -557.24

   40   7.2  1.5  0.5       0.00       0.00       2.93      18.93      52.46     208.77     572.86   -1553.66       0.00      -2.70
                           13.56       0.00     -40.46    -991.45      72.18    -275.83    -648.93    -298.00      -0.00       4.50

   41   8.2  1.5  0.5   65512.33       0.00      -1.00      59.04    1116.40      -9.42     -24.56      75.31       2.70      -0.00
                            0.00       0.00      -6.79    -512.18      24.77     506.13    1280.47     557.24      -4.50      -0.00

   42   9.2  1.5  0.5       0.00   67326.87      -1.89      89.95    1586.23       0.00       0.00      -0.01       0.00       0.00
                           -0.00       0.00      29.21    1585.95     -89.90      -0.00      -0.00      -0.00       0.00      -0.00

   43   1.2  1.5 -0.5      -1.00      -1.89   64269.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.79     -29.21      -0.00      -0.93      -7.63      10.51       2.35     -19.73    -470.25     302.50

   44   2.2  1.5 -0.5      59.04      89.95       0.00   64269.54       0.00       0.00       0.00       0.00       0.00       0.00
                          512.18   -1585.95       0.93      -0.00    -417.28      71.47     193.01    -438.31      19.59      -6.86

   45   3.2  1.5 -0.5    1116.40    1586.23       0.00       0.00   64269.59       0.00       0.00       0.00       0.00       0.00
                          -24.77      89.90       7.63     417.28       0.00     160.83     408.21     205.84      -3.02       0.55

   46   4.2  1.5 -0.5      -9.42       0.00       0.00       0.00       0.00   65512.22       0.00       0.00       0.00       0.00
                         -506.13       0.00     -10.51     -71.47    -160.83      -0.00       4.88    -159.49    -417.44    -655.09

   47   5.2  1.5 -0.5     -24.56       0.00       0.00       0.00       0.00       0.00   65512.22       0.00       0.00       0.00
                        -1280.47       0.00      -2.35    -193.01    -408.21      -4.88       0.00    -386.07     172.71     254.37

   48   6.2  1.5 -0.5      75.31      -0.01       0.00       0.00       0.00       0.00       0.00   65512.24       0.00       0.00
                         -557.24       0.00      19.73     438.31    -205.84     159.49     386.07       0.00       5.90       4.47

   49   7.2  1.5 -0.5       2.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00   65512.27       0.00
                            4.50      -0.00     470.25     -19.59       3.02     417.44    -172.71      -5.90      -0.00     -13.56

   50   8.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   65512.33
                            0.00       0.00    -302.50       6.86      -0.55     655.09    -254.37      -4.47      13.56      -0.00

   51   9.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     794.25     -14.53       1.77      -0.00      -0.00      -0.00       0.00       0.00

   52   1.2  1.5 -1.5       0.00       0.00       0.00     721.70     -40.92    -270.68    -730.32    -313.07       2.53      -0.87
                           -0.00      -0.00       0.00      40.90     721.59     108.81     293.37    -778.19      35.04       5.88

   53   2.2  1.5 -1.5       0.00       0.00    -721.70      -0.00      -0.86     785.98    -291.11      -0.42      16.39      51.13
                           -0.00      -0.00     -40.90       0.00     -13.29     -59.15      12.10      32.76     858.62     443.56

   54   3.2  1.5 -1.5       0.00       0.00      40.92       0.86       0.00     -41.25      15.38      -1.64      45.43     966.83
                           -0.00      -0.00    -721.59      13.29       0.00    -779.72     305.04       3.31     -62.51     -21.45

   55   4.2  1.5 -1.5       0.00       0.00     270.68    -785.98      41.25      -0.00     680.28     233.74     180.80      -8.15
                           -0.00      -0.00    -108.81      59.15     779.72       0.00     285.00    -611.99     238.88    -438.32

   56   5.2  1.5 -1.5       0.00       0.00     730.32     291.11     -15.38    -680.28      -0.00     -81.56     496.11     -21.27
                           -0.00      -0.00    -293.37     -12.10    -305.04    -285.00      -0.00     260.87     561.99   -1108.92

   57   6.2  1.5 -1.5       0.00       0.00     313.07       0.42       1.64    -233.74      81.56       0.00   -1345.51      65.22
                           -0.00      -0.00     778.19     -32.76      -3.31     611.99    -260.87      -0.00     258.08    -482.59

   58   7.2  1.5 -1.5       0.00       0.00      -2.53     -16.39     -45.43    -180.80    -496.11    1345.51       0.00       2.34
                           -0.00      -0.00     -35.04    -858.62      62.51    -238.88    -561.99    -258.08       0.00       3.89

   59   8.2  1.5 -1.5       0.00       0.00       0.87     -51.13    -966.83       8.15      21.27     -65.22      -2.34      -0.00
                           -0.00      -0.00      -5.88    -443.56      21.45     438.32    1108.92     482.59      -3.89       0.00

   60   9.2  1.5 -1.5       0.00       0.00       1.63     -77.90   -1373.71      -0.00      -0.00       0.01      -0.00      -0.00
                           -0.00      -0.00      25.29    1373.48     -77.85      -0.00      -0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5      64.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -296.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5     -34.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          504.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5     583.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           62.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5       0.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5       0.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5    -142.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5       2.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -144.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00    -284.85     500.25     -28.70    -108.30     550.79     192.48      -2.79      76.96     111.29
                         1007.67     -63.20     -26.90    -495.16     122.35     155.00    -467.78     323.99     158.59    -513.08

   14   2.2  0.5 -0.5       0.00     505.70     286.24     -15.63     583.23      76.04     109.96       5.69     -43.25     -59.95
                          601.47      34.71     -17.39    -295.40      14.27     119.45    -293.80    -523.25    -273.41     873.14

   15   3.2  0.5 -0.5       0.00      61.38     -38.12       2.23      49.16     -56.34     -15.61      34.08     688.35    1010.46
                          -75.30    -579.17      12.69      35.70     551.82    -230.07      29.69     -56.74     -36.35     108.32

   16   4.2  0.5 -0.5       0.00      11.80     601.30     -39.28    -181.33    -460.94    -186.05     -26.51       1.59       0.01
                            0.81     -17.71      44.27     600.60      54.87     189.57    -491.30      11.34      -0.35      -0.00

   17   5.2  0.5 -0.5       0.00    -617.45      14.34      -3.22     463.69    -184.85      -0.53     158.26      -9.36      -0.04
                            0.00      93.12      -0.26       3.27      58.38     -27.72       8.54     457.50    -884.67      -0.00

   18   6.2  0.5 -0.5       0.00     -93.49     -14.50       1.17      93.60     -13.58     -22.88    -992.82      47.06       0.38
                           -0.02    -617.07       6.81     -17.40    -472.38     175.77      17.98      60.24    -131.22      -0.00

   19   7.2  0.5 -0.5       0.00       0.28       4.81     -40.83     133.97     364.74    -983.23      29.30      -3.12      -0.00
                            0.00      -7.89    -599.68      41.12    -183.63    -473.78    -210.96       1.64       0.33       0.01

   20   8.2  0.5 -0.5       0.00      -2.14      44.36     694.79       5.32      11.44     -42.88       2.15      -0.18      -0.00
                           -0.01      -5.82    -352.62      24.91     307.40     780.18     332.35      -1.36      -2.41      -0.01

   21   9.2  0.5 -0.5       0.00     -29.14   -1141.21      64.67     145.83     362.38     156.94      -1.04       1.61       0.90
                          291.27       2.74      64.65    1141.40      55.81     147.01    -391.18       6.49      -2.78       1.77

   22  10.2  0.5 -0.5       0.00      20.92      -4.66       0.29      -8.70       4.36       1.31     -23.89    -500.20    -247.37
                            1.10   -1134.98      21.00       1.74    -398.47     155.95       1.82       1.20       6.08      -4.58

   23  11.2  0.5 -0.5       0.00    1135.08     -28.84       2.98    -398.09     158.20       4.21      -6.63      11.13       4.60
                            2.06      20.98       0.07       8.12       1.11      -1.72       6.56     443.73     227.50    -249.74

   24  12.2  0.5 -0.5       0.00      -1.10      52.65     928.38       1.83       4.97     -13.16       0.33      -0.04       0.01
                            0.00      17.10     928.82     -52.65      -4.84     -12.33      -5.32       0.04       0.01      -0.00

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

   34   1.2  1.5  0.5       1.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -29.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.2  1.5  0.5     -89.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1585.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5   -1586.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           89.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00    -721.70      40.92     270.68     730.32     313.07      -2.53       0.87       1.63
                         -794.25      -0.00      40.90     721.59     108.81     293.37    -778.19      35.04       5.88     -25.29

   44   2.2  1.5 -0.5       0.00     721.70      -0.00       0.86    -785.98     291.11       0.42     -16.39     -51.13     -77.90
                           14.53     -40.90      -0.00     -13.29     -59.15      12.10      32.76     858.62     443.56   -1373.48

   45   3.2  1.5 -0.5       0.00     -40.92      -0.86       0.00      41.25     -15.38       1.64     -45.43    -966.83   -1373.71
                           -1.77    -721.59      13.29      -0.00    -779.72     305.04       3.31     -62.51     -21.45      77.85

   46   4.2  1.5 -0.5       0.00    -270.68     785.98     -41.25      -0.00    -680.28    -233.74    -180.80       8.15      -0.00
                            0.00    -108.81      59.15     779.72      -0.00     285.00    -611.99     238.88    -438.32       0.00

   47   5.2  1.5 -0.5       0.00    -730.32    -291.11      15.38     680.28      -0.00      81.56    -496.11      21.27      -0.00
                            0.00    -293.37     -12.10    -305.04    -285.00       0.00     260.87     561.99   -1108.92       0.00

   48   6.2  1.5 -0.5       0.00    -313.07      -0.42      -1.64     233.74     -81.56       0.00    1345.51     -65.22       0.01
                            0.00     778.19     -32.76      -3.31     611.99    -260.87       0.00     258.08    -482.59       0.00

   49   7.2  1.5 -0.5       0.00       2.53      16.39      45.43     180.80     496.11   -1345.51       0.00      -2.34      -0.00
                           -0.00     -35.04    -858.62      62.51    -238.88    -561.99    -258.08      -0.00       3.89      -0.00

   50   8.2  1.5 -0.5       0.00      -0.87      51.13     966.83      -8.15     -21.27      65.22       2.34      -0.00      -0.00
                           -0.00      -5.88    -443.56      21.45     438.32    1108.92     482.59      -3.89      -0.00       0.00

   51   9.2  1.5 -0.5   67326.87      -1.63      77.90    1373.71       0.00       0.00      -0.01       0.00       0.00      -0.00
                           -0.00      25.29    1373.48     -77.85      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   52   1.2  1.5 -1.5      -1.63   64269.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.29      -0.00      -2.79     -22.90      31.53       7.06     -59.20   -1410.76     907.51   -2382.75

   53   2.2  1.5 -1.5      77.90       0.00   64269.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1373.48       2.79      -0.00   -1251.85     214.40     579.02   -1314.94      58.76     -20.58      43.58

   54   3.2  1.5 -1.5    1373.71       0.00       0.00   64269.59       0.00       0.00       0.00       0.00       0.00       0.00
                           77.85      22.90    1251.85       0.00     482.48    1224.64     617.52      -9.06       1.64      -5.30

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00   65512.22       0.00       0.00       0.00       0.00       0.00
                            0.00     -31.53    -214.40    -482.48      -0.00      14.65    -478.47   -1252.31   -1965.26       0.00

   56   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   65512.22       0.00       0.00       0.00       0.00
                            0.00      -7.06    -579.02   -1224.64     -14.65       0.00   -1158.21     518.13     763.12       0.00

   57   6.2  1.5 -1.5      -0.01       0.00       0.00       0.00       0.00       0.00   65512.24       0.00       0.00       0.00
                            0.00      59.20    1314.94    -617.52     478.47    1158.21       0.00      17.69      13.41       0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   65512.27       0.00       0.00
                           -0.00    1410.76     -58.76       9.06    1252.31    -518.13     -17.69      -0.00     -40.69      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   65512.33       0.00
                            0.00    -907.51      20.58      -1.64    1965.26    -763.12     -13.41      40.69      -0.00      -0.00

   60   9.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   67326.87
                           -0.00    2382.75     -43.58       5.30      -0.00      -0.00      -0.00       0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -295.53834999    -0.01165524    -2558.03      0.00000000        0.00      0.0000
     2  -295.53834999    -0.01165524    -2558.03      0.00000000        0.00      0.0000
     3  -295.53834865    -0.01165390    -2557.73      0.00000134        0.29      0.0000
     4  -295.53834865    -0.01165390    -2557.73      0.00000134        0.29      0.0000
     5  -295.50426338     0.02243137     4923.12      0.03408661     7481.15      0.9275
     6  -295.50426338     0.02243137     4923.12      0.03408661     7481.15      0.9275
     7  -295.24536426     0.28133050    61744.91      0.29298574    64302.94      7.9725
     8  -295.24536426     0.28133050    61744.91      0.29298574    64302.94      7.9725
     9  -295.24532327     0.28137148    61753.90      0.29302672    64311.93      7.9737
    10  -295.24532327     0.28137148    61753.90      0.29302672    64311.93      7.9737
    11  -295.24526605     0.28142870    61766.46      0.29308394    64324.49      7.9752
    12  -295.24526605     0.28142870    61766.46      0.29308394    64324.49      7.9752
    13  -295.24497159     0.28172317    61831.09      0.29337841    64389.12      7.9832
    14  -295.24497159     0.28172317    61831.09      0.29337841    64389.12      7.9832
    15  -295.24496291     0.28173185    61832.99      0.29338709    64391.02      7.9835
    16  -295.24496291     0.28173185    61832.99      0.29338709    64391.02      7.9835
    17  -295.24261661     0.28407815    62347.95      0.29573339    64905.98      8.0473
    18  -295.24261661     0.28407815    62347.95      0.29573339    64905.98      8.0473
    19  -295.23963366     0.28706109    63002.63      0.29871633    65560.66      8.1285
    20  -295.23963366     0.28706109    63002.63      0.29871633    65560.66      8.1285
    21  -295.23962388     0.28707087    63004.77      0.29872611    65562.80      8.1288
    22  -295.23962388     0.28707087    63004.77      0.29872611    65562.80      8.1288
    23  -295.23962022     0.28707453    63005.58      0.29872977    65563.61      8.1289
    24  -295.23962022     0.28707453    63005.58      0.29872977    65563.61      8.1289
    25  -295.23961999     0.28707476    63005.63      0.29873000    65563.66      8.1289
    26  -295.23961999     0.28707476    63005.63      0.29873000    65563.66      8.1289
    27  -295.23869268     0.28800207    63209.15      0.29965731    65767.18      8.1541
    28  -295.23869268     0.28800207    63209.15      0.29965731    65767.18      8.1541
    29  -295.23865012     0.28804464    63218.49      0.29969988    65776.52      8.1552
    30  -295.23865012     0.28804464    63218.49      0.29969988    65776.52      8.1552
    31  -295.23847745     0.28821731    63256.39      0.29987255    65814.42      8.1599
    32  -295.23847745     0.28821731    63256.39      0.29987255    65814.42      8.1599
    33  -295.22752508     0.29916967    65660.15      0.31082491    68218.18      8.4580
    34  -295.22752508     0.29916967    65660.15      0.31082491    68218.18      8.4580
    35  -295.22749538     0.29919937    65666.67      0.31085462    68224.70      8.4588
    36  -295.22749538     0.29919937    65666.67      0.31085462    68224.70      8.4588
    37  -295.21903446     0.30766030    67523.63      0.31931554    70081.66      8.6890
    38  -295.21903446     0.30766030    67523.63      0.31931554    70081.66      8.6890
    39  -295.21645357     0.31024118    68090.07      0.32189642    70648.10      8.7592
    40  -295.21645357     0.31024118    68090.07      0.32189642    70648.10      8.7592
    41  -295.21632419     0.31037057    68118.47      0.32202581    70676.50      8.7628
    42  -295.21632419     0.31037057    68118.47      0.32202581    70676.50      8.7628
    43  -295.21631259     0.31038217    68121.01      0.32203741    70679.04      8.7631
    44  -295.21631259     0.31038217    68121.01      0.32203741    70679.04      8.7631
    45  -295.21458175     0.31211300    68500.89      0.32376824    71058.92      8.8102
    46  -295.21458175     0.31211300    68500.89      0.32376824    71058.92      8.8102
    47  -295.21457231     0.31212244    68502.96      0.32377768    71060.99      8.8104
    48  -295.21457231     0.31212244    68502.96      0.32377768    71060.99      8.8104
    49  -295.21235348     0.31434127    68989.93      0.32599651    71547.96      8.8708
    50  -295.21235348     0.31434127    68989.93      0.32599651    71547.96      8.8708
    51  -295.21230380     0.31439095    69000.84      0.32604619    71558.87      8.8722
    52  -295.21230380     0.31439095    69000.84      0.32604619    71558.87      8.8722
    53  -295.21228673     0.31440802    69004.58      0.32606326    71562.61      8.8726
    54  -295.21228673     0.31440802    69004.58      0.32606326    71562.61      8.8726
    55  -295.20423542     0.32245933    70771.64      0.33411457    73329.67      9.0917
    56  -295.20423542     0.32245933    70771.64      0.33411457    73329.67      9.0917
    57  -295.20068078     0.32601397    71551.80      0.33766921    74109.83      9.1884
    58  -295.20068078     0.32601397    71551.80      0.33766921    74109.83      9.1884
    59  -295.20067768     0.32601707    71552.48      0.33767231    74110.51      9.1885
    60  -295.20067768     0.32601707    71552.48      0.33767231    74110.51      9.1885


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.025382679  -0.344663059   0.064732228   0.736437921   0.574449753   0.055527892   0.000009031  -0.000102939
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.136548601   0.360778113   0.225500261   0.144310653  -0.037476479   0.387873926   0.000100931   0.000110324
                         0.329085884   0.054729222   0.576525445  -0.042669853  -0.004025109   0.425673554  -0.000005035   0.000005692

    3    3.2  0.5  0.5  -0.366657093  -0.103435606   0.182680412  -0.077100307  -0.033880509   0.350440105   0.000005617   0.000014592
                        -0.171230002   0.667067232  -0.034078499   0.078024868   0.327396100  -0.319206978   0.000028246   0.000051195

    4    4.2  0.5  0.5  -0.001603500  -0.002702362  -0.000447259  -0.001279908  -0.000000399  -0.000000189  -0.064818608   0.036156465
                         0.004183469  -0.000275588  -0.000557706  -0.000042242   0.000000013  -0.000000184   0.001137701  -0.002494169

    5    5.2  0.5  0.5   0.000974879  -0.003192589   0.001862353  -0.001620615   0.000002791  -0.000002888   0.038700040   0.068690035
                        -0.001653360  -0.000954391   0.002946973   0.000197195  -0.000000211  -0.000002891   0.010440804   0.024648395

    6    6.2  0.5  0.5  -0.000458389  -0.000696255  -0.004219694   0.000029852   0.000000399  -0.000000783   0.006424976   0.018330255
                        -0.000741170   0.000981169   0.002132500  -0.002246879  -0.000000375  -0.000000070  -0.073705198  -0.132163011

    7    7.2  0.5  0.5   0.000914526  -0.000073980  -0.002007880   0.000173386   0.000000047  -0.000000601   0.003196757   0.001073707
                         0.000376737   0.000651968   0.001083020   0.004797694   0.000001209   0.000000561   0.064215644  -0.034819531

    8    8.2  0.5  0.5   0.004271298  -0.000320018   0.000418952  -0.000039362  -0.000000082   0.000000927  -0.000048197   0.000525860
                         0.001604355   0.002708377  -0.000195825  -0.001091966  -0.000001859  -0.000000881   0.006538332  -0.003403338

    9    9.2  0.5  0.5   0.000092119   0.000132669  -0.000210187  -0.000924124   0.001784083   0.000856795   0.000852602  -0.000463663
                        -0.000236085   0.000015046  -0.000392012   0.000034895  -0.000081559   0.000902501  -0.000062626  -0.000001883

   10   10.2  0.5  0.5  -0.000470690  -0.000198755   0.000231299  -0.000015489  -0.000089040  -0.001270134  -0.000022192   0.000014953
                        -0.000241339   0.000861851  -0.000077767   0.000103403  -0.001229839   0.001270644  -0.000400223  -0.000704064

   11   11.2  0.5  0.5  -0.000177707   0.000620813   0.000229154  -0.000339513   0.001241633  -0.001260676  -0.000648215  -0.001176323
                         0.000347358   0.000138078   0.000638502  -0.000038553  -0.000096258  -0.001266399   0.000013946  -0.000082062

   12   12.2  0.5  0.5  -0.000002183   0.000000155  -0.000001004   0.000000089   0.000458798  -0.004746358  -0.000008706   0.000002932
                        -0.000000807  -0.000001350   0.000000525   0.000002430   0.009471325   0.004454838  -0.000026412   0.000009700

   13    1.2  0.5 -0.5   0.192571149  -0.014181884   0.282875994  -0.024864544   0.041713730  -0.431538840   0.000102938   0.000009031
                        -0.285847821   0.021051236   0.679942632  -0.059766343   0.036651214  -0.379165859   0.000000437   0.000000038

   14    2.2  0.5 -0.5  -0.156185078  -0.349221655   0.016035252  -0.618915494   0.572345172   0.030809901  -0.000110347   0.000100909
                         0.329791383  -0.070620642   0.149630049   0.013250224  -0.063758616   0.021712622   0.000005223   0.000005463

   15    3.2  0.5 -0.5   0.611026981  -0.062849366   0.042423954  -0.038705881   0.052565309  -0.190646210  -0.000014810   0.000005737
                         0.286920974   0.399758796  -0.101156045  -0.181756243   0.471103227   0.268309743   0.000051132  -0.000028222

   16    4.2  0.5 -0.5   0.001281312  -0.004365491  -0.000530632   0.000686720  -0.000000264   0.000000291  -0.036145542  -0.064813189
                        -0.002395192  -0.001007531  -0.001165495   0.000198725   0.000000013   0.000000273  -0.002647762  -0.001413081

   17    5.2  0.5 -0.5   0.000992245   0.001915909  -0.000440433  -0.003436254  -0.000004078  -0.000001957  -0.068794137   0.038744050
                        -0.003181028   0.000115249  -0.001572036  -0.000587511   0.000000265  -0.000002001   0.024356334  -0.010276288

   18    6.2  0.5 -0.5   0.001202751   0.000358580  -0.002063045  -0.000348064  -0.000000634  -0.000000052  -0.017768578   0.006111772
                        -0.000029241   0.000794275   0.000890620   0.004715107  -0.000000464  -0.000000545  -0.132239696   0.073731830

   19    7.2  0.5 -0.5   0.000582047   0.000198518   0.004496242  -0.000228682  -0.000000081  -0.000000833  -0.000925762   0.003469557
                         0.000302914  -0.000968958  -0.001682776   0.002269850  -0.000000819   0.000000877  -0.034823778  -0.064201483

   20    8.2  0.5 -0.5   0.002425006   0.001055893  -0.001023316   0.000019878   0.000000115   0.000001288  -0.000511396  -0.000020418
                         0.001247824  -0.004438810   0.000383097  -0.000462031   0.000001274  -0.000001342  -0.003405541  -0.006538478

   21    9.2  0.5 -0.5  -0.000061646   0.000247267  -0.000322751   0.000442675   0.001239339  -0.001286408   0.000463667   0.000852328
                         0.000118437   0.000055507  -0.000866634   0.000043486  -0.000112450  -0.001238854   0.000000087   0.000066247

   22   10.2  0.5 -0.5   0.000825829  -0.000062830   0.000089521  -0.000017044  -0.000115462   0.000878645  -0.000011961  -0.000023892
                         0.000316698   0.000525210  -0.000054019  -0.000243427  -0.001792887  -0.000865110  -0.000704121   0.000400125

   23   11.2  0.5 -0.5  -0.000232346  -0.000387372  -0.000166007  -0.000677541  -0.001782934  -0.000869206   0.001176661  -0.000648150
                         0.000592021  -0.000046695  -0.000298659   0.000033683   0.000119236  -0.000891852  -0.000077063  -0.000016700

   24   12.2  0.5 -0.5  -0.000001206  -0.000000550   0.000002278  -0.000000099  -0.000625147  -0.006596211  -0.000002973  -0.000008818
                        -0.000000626   0.000002262  -0.000000852   0.000001128  -0.006479405   0.006812230   0.000009688   0.000026375

   25    1.2  1.5  1.5   0.002997694  -0.010130442  -0.001031619   0.001459156  -0.000075683  -0.000033617   0.251907005   0.452635371
                        -0.005615368  -0.002504154  -0.002882631   0.000210191  -0.000001254  -0.000040630  -0.004343836   0.029957255

   26    2.2  1.5  1.5   0.000460475   0.001119090  -0.001545147  -0.006322612  -0.004105902  -0.002053550  -0.006384414  -0.006947154
                        -0.001525710   0.000124233  -0.002507685   0.000592213   0.000433012  -0.001953410   0.007804012  -0.004807827

   27    3.2  1.5  1.5  -0.001620850   0.000055741  -0.002562726   0.000599411   0.000432872  -0.001954261   0.008892337   0.002489191
                        -0.000527406  -0.000938816   0.001557677   0.006296447   0.004107408   0.002054195   0.133168335  -0.074084584

   28    4.2  1.5  1.5   0.000071360   0.001751949  -0.002000435   0.000580862   0.004121120  -0.006305461   0.005866478  -0.052593016
                         0.000330734   0.000407876  -0.006200287  -0.000396759  -0.001002729  -0.006781843   0.001681046  -0.009914923

   29    5.2  1.5  1.5   0.001144251   0.000134494   0.000474976  -0.006165160  -0.006054549   0.001298963   0.077165341  -0.022893246
                        -0.001372037   0.000277073  -0.000565214  -0.001964925  -0.001139168  -0.000381943   0.010150376  -0.007701545

   30    6.2  1.5  1.5  -0.001215786   0.000399760  -0.002844108  -0.001999057  -0.001486675  -0.002822878   0.027199952  -0.016784197
                        -0.001110407  -0.000662958   0.000377574   0.005486825   0.004089617   0.001203031  -0.037250008   0.025968587

   31    7.2  1.5  1.5  -0.002072980  -0.000916226  -0.004264241   0.000302143  -0.000209015  -0.003383719   0.001430546  -0.014681494
                        -0.001111909   0.003770671   0.001461834  -0.002359122  -0.003386241   0.003301507   0.120165364   0.213568887

   32    8.2  1.5  1.5   0.002286026   0.001028841  -0.003851244   0.000159245  -0.000515423  -0.005160855  -0.000786807   0.006043039
                         0.001186322  -0.004265279   0.001477647  -0.001884094  -0.005077478   0.005386965  -0.049587169  -0.088818219

   33    9.2  1.5  1.5   0.009385126   0.004212647   0.004757933  -0.000358306   0.000000043   0.000000354   0.000026291  -0.000178157
                         0.005013930  -0.017046457  -0.001694481   0.002646759   0.000000405  -0.000000448   0.001449493   0.002589760

   34    1.2  1.5  0.5  -0.000389899  -0.000394251   0.000798158   0.003723980  -0.004778194  -0.002291964   0.243942230  -0.123553954
                         0.001005512  -0.000045842   0.001439198  -0.000129978   0.000231894  -0.002443023  -0.015067094  -0.002320687

   35    2.2  1.5  0.5  -0.002313045   0.007724155  -0.002466483   0.002506067   0.001736643  -0.001795166   0.278151279   0.508687044
                         0.004106775   0.002116295  -0.005076857  -0.000028637  -0.000256337  -0.001546515   0.004017176   0.048572839

   36    3.2  1.5  0.5  -0.002097632  -0.001426345  -0.008332390   0.000322083  -0.000261428  -0.001560415  -0.012944439  -0.046429343
                        -0.001468988   0.003774373   0.003418508  -0.004352862  -0.001615298   0.001798656   0.147461015   0.262655235

   37    4.2  1.5  0.5   0.002013579   0.001123380   0.000065398   0.001794984  -0.001847029   0.001258155  -0.137729239   0.033534427
                        -0.006118110   0.000594877   0.000229483  -0.000240432  -0.000648810   0.002435494   0.004563849  -0.002467588

   38    5.2  1.5  0.5  -0.000355893  -0.006410671  -0.001142837   0.000171320  -0.004681646   0.002888279  -0.000221235  -0.109212037
                        -0.001235556   0.000599530  -0.001365607  -0.000162450  -0.001377170   0.006500784  -0.006013917  -0.013092275

   39    6.2  1.5  0.5   0.003260365  -0.000815682   0.001155070   0.000196333  -0.001473421   0.006858089  -0.018929935  -0.037920644
                         0.000360760  -0.005568739  -0.001036448   0.000923837   0.005180228  -0.002995933   0.013174284   0.014718552

   40    7.2  1.5  0.5  -0.004156957   0.000331893  -0.001716857   0.000170032   0.000364011  -0.003870764   0.005955159   0.002945786
                        -0.001638161  -0.002432526   0.000914854   0.004100312   0.007332585   0.003615278   0.128021727  -0.071734761

   41    8.2  1.5  0.5  -0.003627705   0.000216529   0.001966137  -0.000199818  -0.000228367   0.002411361   0.008225366   0.001194106
                        -0.001285893  -0.002392607  -0.001086094  -0.004564108  -0.004773931  -0.002268962   0.124168574  -0.069044898

   42    9.2  1.5  0.5  -0.004681696   0.000384385  -0.007756392   0.000700324  -0.000000076   0.000000669  -0.000126415  -0.000012089
                        -0.001778731  -0.002720759   0.004154423   0.018533212  -0.000001372  -0.000000664  -0.001733111   0.000961455

   43    1.2  1.5 -0.5  -0.000182257   0.001051772  -0.001310426   0.001635375   0.003334291  -0.003436419  -0.123562699  -0.243876014
                         0.000352587   0.000238438  -0.003488224   0.000184112  -0.000322439  -0.003328053   0.001795731  -0.016103377

   44    2.2  1.5 -0.5   0.002560504   0.004698323  -0.000936175  -0.005634800   0.002369345   0.001135408   0.508888820  -0.278165836
                        -0.007588484   0.000376215  -0.002324816  -0.000327178   0.000023125   0.001338838  -0.046411180   0.002835379

   45    3.2  1.5 -0.5  -0.003927225  -0.000046316   0.003895219  -0.000044326  -0.000014987  -0.001262569  -0.045313000   0.012317816
                        -0.000925884  -0.002560437  -0.001969369  -0.009006273   0.002381141   0.001040890  -0.262850125   0.147514680

   46    4.2  1.5 -0.5   0.000134294  -0.006199114  -0.000467491   0.000236999  -0.002552702  -0.001815775   0.033523640   0.137708606
                        -0.001264051  -0.001748358  -0.001749637  -0.000027767   0.000999149  -0.000731733   0.002610041   0.005148968

   47    5.2  1.5 -0.5  -0.004079011  -0.000825868   0.000084181  -0.001699825  -0.006460582  -0.004425953  -0.109266675   0.000246783
                         0.004981747  -0.000985495  -0.000220577  -0.000530616   0.002977117  -0.002055564   0.012628156  -0.006012923

   48    6.2  1.5 -0.5   0.004162718  -0.001522442  -0.000928379  -0.000513259  -0.003174475   0.002312347  -0.037857768   0.018873792
                         0.003787872   0.002905563   0.000173587   0.001464573  -0.006777294  -0.004864030  -0.014879530   0.013254591

   49    7.2  1.5 -0.5   0.002202862   0.000963971  -0.003851071   0.000185203   0.000521534   0.005113329   0.002640985  -0.006499021
                         0.001083851  -0.004362868   0.001417998  -0.001936557   0.005270774  -0.005268128   0.071746629   0.127995271

   50    8.2  1.5 -0.5   0.002105299   0.000960421   0.004290729  -0.000247555  -0.000313836  -0.003322590   0.000900750  -0.008752837
                         0.001157225  -0.003727111  -0.001568648   0.002232490  -0.003296112   0.003435544   0.069049349   0.124132507

   51    9.2  1.5 -0.5   0.002471238   0.001140572  -0.017380454   0.000856382  -0.000000064  -0.000000963  -0.000008004   0.000133777
                         0.001201359  -0.004876603   0.006472264  -0.008757138  -0.000000941   0.000000981  -0.000961497  -0.001732558

   52    1.2  1.5 -1.5   0.003583279   0.006332010   0.000754549   0.003057751  -0.000052072   0.000057683  -0.452758563   0.251886276
                        -0.009800855   0.000651283   0.001266481  -0.000154779   0.000008333   0.000049012   0.028033907   0.005414055

   53    2.2  1.5 -1.5  -0.000522228   0.001522632  -0.001881821   0.002908823  -0.002832019   0.002798630   0.006967518  -0.006351200
                         0.000997535   0.000470553  -0.006065054   0.000463376   0.000111996   0.003035390  -0.004778268  -0.007831067

   54    3.2  1.5 -1.5  -0.000809755  -0.000468199   0.006043661  -0.000453802  -0.000112210  -0.003036279  -0.002174411   0.009458039
                        -0.000478309   0.001638933  -0.001865124   0.002964453  -0.002833066   0.002799855  -0.074094491  -0.133129353

   55    4.2  1.5 -1.5  -0.000640580  -0.000234425  -0.000143205   0.006493032  -0.009213155  -0.002434021   0.052634666   0.005873567
                         0.001680876  -0.000243972   0.000688702  -0.000534642   0.000932741  -0.003473419  -0.009691385  -0.001656106

   56    5.2  1.5 -1.5   0.000154646   0.001777224  -0.004182311   0.000339409   0.000723707   0.005300214   0.022925760   0.077207770
                         0.000266350  -0.000182401  -0.004937449  -0.000655645   0.001144305   0.003140541  -0.007604211  -0.009822438

   57    6.2  1.5 -1.5  -0.000773183   0.000241634   0.004298042   0.000743852  -0.001326545  -0.001582533   0.016673714   0.027041445
                        -0.000038867   0.001628727  -0.003953266   0.002770956  -0.002766985   0.004053488   0.026039662   0.037365234

   58    7.2  1.5 -1.5   0.003639139  -0.000236054  -0.002062086   0.000288264  -0.000362760   0.002392106   0.013773987   0.001941071
                         0.001346884   0.002340484   0.001185136   0.004498624  -0.004713588  -0.002405856   0.213629335  -0.120158201

   59    8.2  1.5 -1.5  -0.004112265   0.000293374  -0.001678389   0.000115026  -0.000321275   0.003738589  -0.005665629  -0.000997477
                        -0.001529835  -0.002558751   0.000870736   0.004123383  -0.007453228  -0.003474104  -0.088843092   0.049583379

   60    9.2  1.5 -1.5  -0.016491256   0.001085360   0.002306085  -0.000263098  -0.000000030  -0.000000299   0.000167152   0.000032449
                        -0.006030469  -0.010584993  -0.001347476  -0.005043806   0.000000570   0.000000276   0.002590494  -0.001449368


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000163140   0.000004918   0.000154100  -0.000041519   0.003268737   0.011434230  -0.005738847   0.000212293
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000084475  -0.000065877   0.000094640  -0.000009082  -0.008766975   0.005357899   0.005972990   0.005081035
                        -0.000003817   0.000024709  -0.000004263  -0.000012914  -0.001415800   0.000579925   0.001252179  -0.002013879

    3    3.2  0.5  0.5  -0.000006250  -0.000021761  -0.000002031   0.000021475  -0.001246125  -0.000748657  -0.002173144   0.001764659
                        -0.000015824  -0.000089774   0.000016045   0.000076555   0.003260635   0.000505273   0.010897508   0.006085259

    4    4.2  0.5  0.5   0.054529280  -0.008203922  -0.104761809   0.024444501   0.002146728  -0.016430429  -0.028438701   0.045075818
                        -0.001250581   0.006510856   0.003802094   0.005969007  -0.000180323  -0.001358194  -0.001262716  -0.022293913

    5    5.2  0.5  0.5   0.020477765   0.113926478   0.007560083   0.037021045  -0.045348883  -0.005700220  -0.029768371  -0.017264878
                         0.006931850  -0.027601286  -0.003722424  -0.006710065   0.003630951   0.003692171  -0.010688360   0.003154282

    6    6.2  0.5  0.5  -0.000672965   0.023948363   0.003048407   0.003061810  -0.001652985  -0.003643230  -0.006854132  -0.002283977
                         0.007456778   0.029193140  -0.002822876  -0.009563192  -0.054173256  -0.006501533   0.009939456   0.007431980

    7    7.2  0.5  0.5   0.001484554  -0.012310897  -0.002063558  -0.001863999   0.004415511  -0.001518260  -0.000668815  -0.004617449
                         0.123176219  -0.018929106  -0.034832555   0.008265245  -0.007252318   0.059527750   0.006391929  -0.010682423

    8    8.2  0.5  0.5   0.000198334   0.004879624  -0.003668263  -0.007290527  -0.000942777  -0.000092090  -0.001690529  -0.026091976
                        -0.047735649   0.007256762  -0.121502997   0.028404367   0.001621341  -0.011626644   0.032512693  -0.051375720

    9    9.2  0.5  0.5  -0.000619239   0.000034445   0.000906476  -0.000230422  -0.037315761   0.281034841  -0.037986904   0.061164379
                         0.000006905  -0.000036587   0.000012011  -0.000043086  -0.020720668   0.006029347  -0.000086989  -0.031800377

   10   10.2  0.5  0.5   0.000129085  -0.000201273  -0.000412996  -0.000718453   0.011515267  -0.002581865   0.065472075  -0.034002006
                        -0.000292374  -0.001750806  -0.000782392  -0.003648623  -0.071508413  -0.010310442  -0.236752127  -0.134862228

   11   11.2  0.5  0.5   0.001472285   0.008568937   0.000965604   0.004402190   0.203769660   0.029440770  -0.175057747  -0.097924211
                         0.000602524  -0.001649742  -0.000499759  -0.000887549   0.020219924  -0.011875263  -0.045452348   0.026336046

   12   12.2  0.5  0.5  -0.000039033   0.000650883  -0.000109565  -0.000280940   0.000182273  -0.000055121   0.000038475   0.000943969
                        -0.006582623   0.001009175  -0.004502334   0.001047550  -0.000322949   0.002491077  -0.001143688   0.001776642

   13    1.2  0.5 -0.5   0.000004819  -0.000159852  -0.000040366  -0.000149821  -0.011354453   0.003245930  -0.000208358  -0.005632480
                        -0.000000983   0.000032590   0.000009716   0.000036062  -0.001348343   0.000385455   0.000040684   0.001099788

   14    2.2  0.5 -0.5  -0.000069485  -0.000083535  -0.000005808  -0.000093009  -0.005388902  -0.008872761  -0.005372798   0.005622317
                        -0.000011051   0.000013135   0.000014681   0.000018003  -0.000055933   0.000372105  -0.001002827  -0.002373630

   15    3.2  0.5 -0.5  -0.000003389   0.000002963   0.000002963   0.000005729   0.000683851  -0.000852931  -0.000565777  -0.004221256
                         0.000092311  -0.000016754  -0.000079455   0.000015124   0.000590031  -0.003384830   0.006310649  -0.010279068

   16    4.2  0.5 -0.5  -0.009339210  -0.053679987   0.022368907   0.102742623   0.016475952   0.002110486  -0.048512746  -0.027669616
                        -0.004740752   0.009667746  -0.011523657  -0.020819366   0.000588786   0.000432211  -0.013242410   0.006689283

   17    5.2  0.5 -0.5   0.117143934  -0.018680255   0.037563336  -0.008221266   0.005225062  -0.044604311   0.017549365  -0.027168318
                         0.004286257   0.010882899  -0.002139752  -0.001849887   0.004338590  -0.008953233  -0.000212808   0.016195043

   18    6.2  0.5 -0.5   0.017633840   0.002149015   0.005214727  -0.003624358   0.004384483  -0.008029651   0.003665903  -0.008631883
                        -0.033388789   0.007172040   0.008581139  -0.002031118  -0.006026556   0.053600361   0.006856532  -0.008441712

   19    7.2  0.5 -0.5  -0.008281353   0.023151843  -0.003746436  -0.006145099  -0.005511944   0.003529498   0.002484696  -0.001881363
                         0.021006866   0.120989987  -0.007599538  -0.034348260   0.059291455   0.007722402  -0.011369314  -0.006145286

   20    8.2  0.5 -0.5   0.003331611  -0.009730316  -0.013735152  -0.024867178   0.001462480  -0.000745008   0.015762770  -0.007889903
                        -0.008085277  -0.046733847  -0.025909563  -0.118987637  -0.011534665  -0.001721203  -0.055423740  -0.031586112

   21    9.2  0.5 -0.5   0.000041059   0.000608137  -0.000213941  -0.000878495  -0.279785024  -0.039498821  -0.066124923  -0.037266163
                         0.000028969  -0.000116938   0.000095812   0.000223807  -0.027152813   0.016175762  -0.019489477   0.007365157

   22   10.2  0.5 -0.5   0.000152537  -0.000184889   0.000155330   0.000218437   0.003779675   0.003002533   0.007526902   0.109629570
                         0.001755723  -0.000260694   0.003715441  -0.000857315  -0.009934048   0.072367391  -0.138878734   0.219817013

   23   11.2  0.5 -0.5   0.008725780  -0.001322245   0.004487654  -0.001055744  -0.027835008   0.204732306   0.101156248  -0.163102676
                        -0.000095297   0.000884492  -0.000167277  -0.000259916  -0.015264113   0.003950007   0.007081800   0.078157838

   24   12.2  0.5 -0.5   0.000436165  -0.001276741  -0.000518282  -0.000947093  -0.000239015   0.000142918  -0.000585999   0.000256937
                        -0.001118859  -0.006457738  -0.000952718  -0.004402956   0.002480197   0.000342190   0.001924614   0.001115117

   25    1.2  1.5  1.5   0.026661637   0.190476442   0.034609685   0.109894021  -0.157877686  -0.014456651   0.481456067   0.277100817
                         0.012806575  -0.038106646  -0.014252996  -0.024758976  -0.013805386   0.009981143   0.139664773  -0.067094610

   26    2.2  1.5  1.5  -0.333091674   0.047253237   0.555688956  -0.129454693  -0.040436187   0.329753012  -0.052130031   0.059677481
                         0.003101793  -0.032361290   0.022642975  -0.042355816  -0.021701982  -0.012429290  -0.001329305  -0.038504053

   27    3.2  1.5  1.5   0.019014608  -0.004215228  -0.016827128   0.046443811  -0.023098889  -0.011612572   0.002004246  -0.041432778
                         0.018732916  -0.001095545   0.624588261  -0.143718926   0.044542618  -0.339248141   0.046818569  -0.069941244

   28    4.2  1.5  1.5   0.054568888   0.088568347   0.074422777   0.003747080   0.124639360  -0.029855287   0.035143297   0.004698501
                         0.031926033  -0.020501939  -0.022994077  -0.005576650   0.018702233  -0.025176493   0.009308877  -0.002879621

   29    5.2  1.5  1.5   0.089400706  -0.059361337   0.175742250  -0.053236551  -0.035215741  -0.123891314   0.004826093  -0.036138235
                         0.066982356   0.006174583  -0.053747387   0.002511388   0.010198142  -0.046761530   0.003035584   0.005757316

   30    6.2  1.5  1.5   0.039773555   0.011497795   0.080404391  -0.009654926   0.015023639  -0.054067758   0.006672083   0.002152955
                        -0.186102616   0.033575926   0.132470353  -0.035118703  -0.014186450   0.123375703  -0.013419634   0.030748479

   31    7.2  1.5  1.5  -0.001835237   0.006763601   0.003754595   0.008225680   0.011217082  -0.005180053  -0.021156581   0.010520055
                         0.009441039   0.026269012   0.004638399   0.037379678  -0.099350507  -0.016604508   0.075913620   0.042259640

   32    8.2  1.5  1.5   0.009462834  -0.028439187  -0.006148364  -0.011138739   0.008435259  -0.005267493   0.025013773  -0.011725162
                        -0.025140793  -0.141989466  -0.010699579  -0.051232577  -0.089669126  -0.011869954  -0.085581467  -0.049048759

   33    9.2  1.5  1.5   0.000299334  -0.000787165   0.000087891   0.000154099   0.008934055  -0.006373560  -0.094979473   0.045200830
                        -0.000701614  -0.004090305   0.000139438   0.000686762  -0.105937599  -0.013814889   0.327713446   0.187450864

   34    1.2  1.5  0.5   0.607144220  -0.095403868   0.121620109  -0.027863395   0.020393629  -0.201546396   0.015903763  -0.039005856
                        -0.004328858   0.059829359  -0.002886303  -0.007953641   0.013831834  -0.004009422  -0.001106832   0.019895882

   35    2.2  1.5  0.5  -0.035839345  -0.125696444   0.005210405   0.031448175  -0.286523708  -0.033803309  -0.367105199  -0.213173864
                        -0.004127103   0.052075164  -0.001331813   0.003171732  -0.002915330   0.020167150  -0.119281766   0.044187942

   36    3.2  1.5  0.5  -0.029663453   0.101668216   0.019133053   0.033518895  -0.027794428   0.029108588   0.074783044  -0.014588374
                         0.083165732   0.477128026   0.035501133   0.162979778   0.464523958   0.061437511  -0.183880312  -0.110739543

   37    4.2  1.5  0.5   0.021148791   0.046714035   0.230561319  -0.045243085   0.007158027   0.034004883   0.021697833  -0.120265880
                         0.005433614   0.013558760  -0.006409626  -0.010435081  -0.006289745  -0.002152324   0.007011760   0.063911471

   38    5.2  1.5  0.5   0.010085691   0.125846676  -0.083558559   0.041765640   0.030359296  -0.010039594  -0.131987341  -0.010320940
                         0.017481351   0.033369493   0.002911595   0.015272422  -0.010303038  -0.003823855   0.010451968   0.015614218

   39    6.2  1.5  0.5   0.018442147   0.019673134  -0.004319375   0.000498205   0.009074590   0.003416868  -0.011627393  -0.036427219
                        -0.021603379  -0.159176211  -0.006568520  -0.038215879   0.036630657   0.006200700  -0.117272187  -0.052676364

   40    7.2  1.5  0.5   0.000111559  -0.001822737   0.006686953   0.006042565   0.006465793  -0.001083886   0.002782159   0.040477890
                         0.022622827   0.000418683   0.110007955  -0.024986220  -0.012334241   0.088550381  -0.048545583   0.082665271

   41    8.2  1.5  0.5  -0.001102959   0.015858816   0.001930656   0.008207871  -0.007681360   0.002416763   0.001909668   0.036784208
                        -0.161664048   0.024267238   0.128603522  -0.030047705   0.013116959  -0.103293306  -0.045328816   0.070771336

   42    9.2  1.5  0.5  -0.000016410   0.000412107  -0.000075350  -0.000289100  -0.028716412   0.008133716  -0.001770374  -0.043861264
                        -0.004094312   0.000626255  -0.004520541   0.001038737   0.049354379  -0.387428100   0.053243224  -0.082419213

   43    1.2  1.5 -0.5   0.105432762   0.595771106   0.025228433   0.118918507  -0.200612985  -0.021882413  -0.042095730  -0.015821106
                         0.039564921  -0.117045428  -0.014253257  -0.025654832  -0.019785236   0.011330478  -0.012052069   0.001961467

   44    2.2  1.5 -0.5   0.133565719  -0.034292494  -0.029832715   0.005377392  -0.031189316   0.284868385  -0.217690923   0.337442002
                         0.025915584   0.011203413   0.010443022   0.000075517  -0.024012584   0.030892359  -0.002516466  -0.187422683

   45    3.2  1.5 -0.5  -0.004304784  -0.045679264   0.005551622   0.010293968   0.036150308  -0.027176929   0.006904054  -0.108635652
                         0.487820713  -0.075563643   0.166298237  -0.038992799  -0.057576322   0.464560493   0.111482739  -0.166140807

   46    4.2  1.5 -0.5  -0.043063861   0.019637053   0.041544843   0.225659244   0.033513822  -0.006366387  -0.130284750  -0.019951945
                         0.022617359  -0.009548910  -0.020732912  -0.047723272   0.006147219  -0.007089947  -0.039679241   0.011039956

   47    5.2  1.5 -0.5  -0.116643949   0.006390212  -0.037031944  -0.081919735  -0.010420462  -0.028932525  -0.013121942   0.131544020
                         0.057836823  -0.019143772   0.024622157   0.016723249   0.002613290  -0.013811171  -0.013346919  -0.015035705

   48    6.2  1.5 -0.5  -0.051074656   0.022386048  -0.009427479  -0.002662303   0.004124225  -0.013330823  -0.025657199  -0.011062065
                        -0.152037751   0.017483810  -0.037038145   0.007396931  -0.005754515   0.035304991   0.058680914  -0.117326864

   49    7.2  1.5 -0.5   0.001869636  -0.004409971  -0.011721943  -0.019242290   0.009365684  -0.004966207   0.023885742  -0.012033831
                         0.000046122  -0.022189117  -0.022878370  -0.108518200  -0.088060370  -0.013010641  -0.088890258  -0.047112642

   50    8.2  1.5 -0.5  -0.010691379   0.031214322  -0.015011591  -0.028218169  -0.009780616   0.006080993   0.022539866  -0.010561051
                         0.026946156   0.158625808  -0.027292597  -0.125484374   0.102857607   0.013931239  -0.076508917  -0.044122700

   51    9.2  1.5 -0.5  -0.000278695   0.000801827   0.000524153   0.000984618  -0.037609195   0.022696105  -0.027253561   0.011941051
                         0.000695957   0.004015064   0.000942240   0.004412651   0.385684118   0.052396315   0.089297148   0.051917111

   52    1.2  1.5 -1.5   0.194249541  -0.023565909   0.112636563  -0.036984095   0.013178793  -0.158404112  -0.284822833   0.445767243
                        -0.000712247   0.017874540  -0.001645414  -0.005758028   0.011616255  -0.004908133  -0.012747658  -0.229342010

   53    2.2  1.5 -1.5   0.052765479   0.326997361  -0.115948190  -0.534960260  -0.325986610  -0.042713194  -0.065950272  -0.050909077
                         0.022269390  -0.063501262   0.071474120   0.152054071  -0.051227589   0.016782263  -0.026353852   0.011294825

   54    3.2  1.5 -1.5  -0.003911410  -0.014889133   0.078786655   0.162523218   0.051536251  -0.017685187   0.027261354  -0.007005176
                         0.001915524   0.022153807   0.128859692   0.603307427  -0.335511800  -0.046955699  -0.076585059  -0.046334900

   55    4.2  1.5 -1.5   0.090878722  -0.047091224   0.004948057  -0.077737241   0.032615838   0.125975137  -0.005163264   0.032707986
                         0.002395711   0.042183549   0.004544928  -0.004939514  -0.021480249  -0.003874066  -0.001925831  -0.015871175

   56    5.2  1.5 -1.5  -0.059398297  -0.074217879  -0.052346028  -0.183440113   0.128541109  -0.033767456   0.036571756   0.004154906
                         0.005808277   0.083491489   0.010016524  -0.011128567  -0.031825801  -0.014279687  -0.001274897  -0.003904189

   57    6.2  1.5 -1.5   0.004558698  -0.076148916  -0.001168516  -0.047171676   0.039141855   0.013245928   0.003779563   0.009120147
                        -0.035196028  -0.174406026   0.036402960   0.147607904   0.128890658   0.015859082   0.030591160   0.011892275

   58    7.2  1.5 -1.5   0.001379604   0.003684248  -0.000750147  -0.002564883   0.007101942  -0.000576756  -0.002226466  -0.035312479
                        -0.027090663   0.008884122  -0.038266688   0.005388237  -0.015877816   0.099980066   0.043492431  -0.070452164

   59    8.2  1.5 -1.5   0.000498774  -0.014294383   0.001159769   0.003473774   0.006630466  -0.002197526   0.002108176   0.040950919
                         0.144808656  -0.022743687   0.052416633  -0.011841295  -0.011165984   0.090038195  -0.050386663   0.079201633

   60    9.2  1.5 -1.5   0.000045807  -0.000433460  -0.000010893  -0.000052820   0.007958166  -0.003620615  -0.008440116  -0.156021818
                         0.004165108  -0.000627675  -0.000703755   0.000156134  -0.012966921   0.106251980   0.192638797  -0.303437630


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000056325  -0.004641550  -0.000015415   0.000000369   0.000002967   0.000013104  -0.000006190  -0.000063017
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.004594907  -0.000116375   0.000023448   0.000000698   0.000008181  -0.000019065   0.000009339  -0.000037083
                         0.000215377  -0.000284404  -0.000006378  -0.000002338  -0.000000968  -0.000000683  -0.000008187   0.000001092

    3    3.2  0.5  0.5   0.000318484   0.000025303  -0.000017868  -0.000003961   0.000000310  -0.000002019   0.000009750   0.000002969
                         0.003921772  -0.002243935  -0.000050704   0.000000038   0.000001727  -0.000007495   0.000020526   0.000000347

    4    4.2  0.5  0.5   0.000457875   0.000806612  -0.005355696   0.044555783   0.002198966   0.000490495  -0.000017531   0.000536082
                         0.000006715  -0.000002290  -0.001416391  -0.062957973  -0.000344467   0.000003076  -0.000023435  -0.000013668

    5    5.2  0.5  0.5   0.002614921  -0.001486676   0.010054793   0.000128474  -0.009276587   0.038896936  -0.000316307  -0.000024813
                        -0.000322420   0.000271575  -0.003595753  -0.001178380   0.001161080   0.002150705   0.000388212  -0.000024980

    6    6.2  0.5  0.5   0.000307339  -0.000186130   0.000233688  -0.001281070  -0.001450990   0.005839298  -0.000894024   0.000160503
                        -0.000555664   0.000324947  -0.003979427   0.001722828   0.000259309   0.000352271  -0.002110628  -0.000028155

    7    7.2  0.5  0.5   0.000008795   0.000007075   0.000627638   0.031155073   0.002901465  -0.000223395  -0.000041808   0.000095866
                        -0.000037601  -0.000078739  -0.002588619   0.021470361   0.021695758   0.005262556   0.000029254   0.000631329

    8    8.2  0.5  0.5  -0.000013548   0.000002069   0.000963072   0.044639855  -0.003452516   0.000372245   0.000093675  -0.000065717
                         0.000382375   0.000661050  -0.003765993   0.031593473  -0.026213163  -0.006339541  -0.000022173  -0.001231239

    9    9.2  0.5  0.5   0.175433859   0.300573198   0.000121741  -0.001134403  -0.003151118  -0.000786723   0.000006318   0.000679682
                         0.009122701   0.001010620   0.000048558   0.001561467   0.000410577  -0.000023909   0.000056256  -0.000007023

   10   10.2  0.5  0.5   0.041101142  -0.032589029  -0.000985649  -0.000192086   0.000052925   0.000205405  -0.000065611   0.000019554
                         0.301621773  -0.172021531  -0.002463912   0.000007307   0.000663433  -0.002758637  -0.000188358  -0.000005421

   11   11.2  0.5  0.5  -0.299069409   0.173424995   0.001922391  -0.000007026  -0.000752419   0.003039240   0.000408249   0.000013663
                         0.040281536  -0.033528591  -0.000748288  -0.000134370   0.000077342   0.000216580  -0.000157606   0.000035126

   12   12.2  0.5  0.5  -0.017518184  -0.000216605  -0.000049506  -0.002323838  -0.000672815   0.000051110   0.000004492   0.000007195
                         0.288500973   0.501716829   0.000196590  -0.001689020  -0.005093229  -0.001233975  -0.000004626  -0.000150209

   13    1.2  0.5 -0.5   0.004588538   0.000055682  -0.000000085  -0.000003556   0.000013066  -0.000002958  -0.000058260   0.000005723
                        -0.000699502  -0.000008488   0.000000360   0.000014999  -0.000000996   0.000000226   0.000024018  -0.000002359

   14    2.2  0.5 -0.5   0.000072185  -0.004574886  -0.000002436   0.000011616  -0.000018958  -0.000008231  -0.000034701  -0.000011754
                        -0.000298694   0.000479556   0.000000139  -0.000021344   0.000002131  -0.000000343   0.000013124  -0.000004010

   15    3.2  0.5 -0.5  -0.000363185  -0.000276181   0.000000951   0.000045214  -0.000001443  -0.000000178   0.000002612  -0.000001191
                        -0.002214494  -0.003924977  -0.000003846   0.000029085   0.000007627   0.000001745  -0.000001452   0.000022693

   16    4.2  0.5 -0.5  -0.000797745   0.000451634  -0.071539339   0.000142501   0.000488841  -0.002218794   0.000500827   0.000007275
                         0.000119296  -0.000075642   0.028827888   0.005537990  -0.000040367  -0.000176249  -0.000191685  -0.000028348

   17    5.2  0.5 -0.5   0.001510624   0.002633646  -0.001176228   0.005818597   0.038620753   0.009338020  -0.000013419   0.000440394
                         0.000044424  -0.000075342  -0.000146870  -0.008953894  -0.005102407   0.000452277   0.000032552   0.000238352

   18    6.2  0.5 -0.5   0.000232975   0.000387570   0.001971917   0.003925978   0.005795601   0.001466508   0.000159119   0.000022101
                         0.000293185   0.000503000  -0.000849012   0.000690757  -0.000795303   0.000148218  -0.000035144  -0.002292061

   19    7.2  0.5 -0.5  -0.000018861   0.000014361   0.013702935   0.002663587  -0.000622941  -0.001243203  -0.000151994   0.000049802
                        -0.000076774   0.000035846   0.035268181  -0.000013454  -0.005230330   0.021853577  -0.000620213   0.000011112

   20    8.2  0.5 -0.5   0.000097578  -0.000071019   0.020441691   0.003886587   0.000853259   0.001449130   0.000408515  -0.000095056
                         0.000653812  -0.000375966   0.050724762  -0.000068192   0.006292876  -0.026399807   0.001163350   0.000015204

   21    9.2  0.5 -0.5  -0.296988006   0.172055374   0.001781070  -0.000019160  -0.000782626   0.003173216   0.000631055   0.000015600
                         0.046296793  -0.035457170  -0.000743532  -0.000129659   0.000083667   0.000169760  -0.000252560   0.000054418

   22   10.2  0.5 -0.5   0.006292417  -0.004824019   0.000051428   0.002170025   0.000414592  -0.000002321   0.000020144  -0.000011131
                        -0.174968161  -0.304371035  -0.000185217   0.001527534   0.002735029   0.000665537  -0.000002441  -0.000199147

   23   11.2  0.5 -0.5  -0.176497192  -0.301724303  -0.000129124   0.001171636   0.003013969   0.000756122  -0.000000757  -0.000437503
                        -0.007009740   0.005249612  -0.000037838  -0.001697878  -0.000447072   0.000019900  -0.000037682   0.000009890

   24   12.2  0.5 -0.5   0.075825083  -0.060796483  -0.001107290  -0.000202708   0.000144800   0.000283551   0.000063903  -0.000005916
                         0.495954010  -0.282565896  -0.002650834   0.000002812   0.001226515  -0.005129645   0.000136129  -0.000002565

   25    1.2  1.5  1.5   0.003991970   0.003170045  -0.000897109  -0.000022531   0.000155817  -0.000843306   0.000306106  -0.000000154
                         0.000065364   0.000445566   0.000374674   0.000102880  -0.000020267  -0.000050463  -0.000119598   0.000024725

   26    2.2  1.5  1.5   0.128444187   0.222712584   0.000170916  -0.001257433  -0.002304389  -0.000549202  -0.000012749  -0.000255298
                         0.000701246  -0.012225577   0.000027973   0.001844076   0.000465308   0.000016154  -0.000013745   0.000012913

   27    3.2  1.5  1.5   0.000333989  -0.012535786   0.000009799   0.001029485   0.000499787   0.000002300  -0.000016692   0.000013734
                        -0.125412832  -0.217334513  -0.000082482   0.000592037   0.002756352   0.000673303   0.000006604   0.000272062

   28    4.2  1.5  1.5  -0.066335644   0.025815513  -0.024646472   0.052899564   0.113749880  -0.165727603   0.356313488   0.031988799
                         0.006015385  -0.011738709   0.008112970  -0.189839219  -0.007245938  -0.015241118  -0.145559310   0.059641032

   29    5.2  1.5  1.5   0.010964143  -0.036754401  -0.031187675   0.123785460   0.160271844   0.113593462  -0.145690480   0.064196711
                        -0.011460966  -0.009267331   0.002539097  -0.492039106  -0.006128200   0.009813152   0.061527179   0.069977171

   30    6.2  1.5  1.5  -0.006287734  -0.010383600  -0.005791278   0.523451575   0.069006564   0.019665886   0.016977779   0.026580475
                         0.018896615   0.031901559  -0.040213277   0.128827496  -0.052316767  -0.001631994   0.007798984  -0.218651925

   31    7.2  1.5  1.5   0.005121742  -0.004225836  -0.040581313  -0.018206815  -0.008345476  -0.019045789   0.152292847  -0.029992392
                         0.039842849  -0.023786047  -0.095703182  -0.005753499  -0.071124123   0.302316312   0.362248929   0.011413530

   32    8.2  1.5  1.5   0.009001297  -0.007130843   0.023245621   0.005403470   0.007147203   0.014561272   0.015235871  -0.004913924
                         0.056937675  -0.032299992   0.055527668   0.001122054   0.060793050  -0.254302548   0.052889350   0.000007221

   33    9.2  1.5  1.5  -0.000164545   0.000131347  -0.000043304  -0.000009008   0.000008847   0.000021472   0.000125309  -0.000026242
                        -0.001008832   0.000575612  -0.000105436   0.000001178   0.000080262  -0.000336379   0.000318900   0.000004688

   34    1.2  1.5  0.5   0.155550743   0.264985307   0.000137823  -0.001356569  -0.003637099  -0.000916770  -0.000009813   0.000362060
                         0.009078563   0.000323471   0.000049136   0.001870622   0.000478557  -0.000041068   0.000036445  -0.000006034

   35    2.2  1.5  0.5   0.124511744  -0.077158822  -0.001098673   0.000024644   0.000503556  -0.001828005  -0.000741011  -0.000020364
                        -0.026726989   0.019684940   0.000444171   0.000048425  -0.000082528  -0.000009030   0.000313690  -0.000062717

   36    3.2  1.5  0.5  -0.025605411   0.019705519  -0.000023805  -0.000019786  -0.000076423   0.000018261   0.000160224  -0.000024188
                        -0.121017183   0.068706317  -0.000237444  -0.000000097  -0.000363131   0.001543265   0.000278684   0.000009156

   37    4.2  1.5  0.5   0.019749448  -0.014890972  -0.011559022  -0.196134191  -0.273333779  -0.002943364   0.182221783   0.207542030
                         0.003047209  -0.002725635   0.034744877   0.278729595   0.048118299  -0.085767955  -0.061727282   0.006370977

   38    5.2  1.5  0.5   0.054622133  -0.030452802  -0.096692968   0.080292443   0.074707493   0.178763565   0.452098384  -0.072000575
                         0.011052425  -0.004416334   0.072907075  -0.099214637   0.045656752  -0.219803582  -0.201952208   0.037069886

   39    6.2  1.5  0.5   0.014429192  -0.006452945  -0.080759028  -0.008749559  -0.028393083   0.028425050   0.208963396  -0.000914616
                        -0.052445588   0.032613855  -0.069366454  -0.001272686  -0.132974872   0.606712001  -0.054360938   0.024921520

   40    7.2  1.5  0.5  -0.002135047  -0.000125249  -0.002753055  -0.200166025   0.050146486  -0.004611784  -0.027384684   0.006308034
                         0.036422673   0.060440430   0.018800018  -0.138151167   0.406013173   0.082507400   0.005617467   0.348788105

   41    8.2  1.5  0.5   0.001381672   0.000059028  -0.007425929  -0.327135355  -0.012830543   0.000840380   0.023603664  -0.002945405
                        -0.023602220  -0.040715361   0.027462904  -0.239179064  -0.098165179  -0.021975277  -0.004853552  -0.322019552

   42    9.2  1.5  0.5  -0.000060943  -0.000000733   0.000006342   0.000277009  -0.000035792   0.000003755  -0.000049703   0.000004997
                         0.001053951   0.001828600  -0.000024184   0.000199338  -0.000295180  -0.000070920   0.000011073   0.000652849

   43    1.2  1.5 -0.5   0.261910125  -0.152405997  -0.002133142   0.000016012   0.000910993  -0.003662960  -0.000337031  -0.000022963
                        -0.040254239   0.032417063   0.000888375   0.000145441  -0.000110665  -0.000200587   0.000132416  -0.000029954

   44    2.2  1.5 -0.5  -0.079244188  -0.127117554  -0.000041433   0.000685675   0.001822025   0.000508374  -0.000005077  -0.000804637
                        -0.007831939  -0.007657265  -0.000035152  -0.000966551  -0.000148015   0.000043996  -0.000065745  -0.000007584

   45    3.2  1.5 -0.5   0.009126113   0.007075142  -0.000004471  -0.000225545   0.000099150  -0.000048587   0.000025852   0.000041913
                        -0.070891322  -0.123493878   0.000019275  -0.000077946   0.001540185   0.000367891  -0.000000754  -0.000318716

   46    4.2  1.5 -0.5  -0.014310135  -0.019064659  -0.316461822   0.036474370  -0.003587410  -0.276201475  -0.189448154   0.191993960
                         0.004938641   0.005988736   0.126533485  -0.003230760  -0.085743432  -0.027193212   0.084992238  -0.012383653

   47    5.2  1.5 -0.5  -0.029439435  -0.052332637   0.115063013   0.093249191  -0.194960964   0.071019185   0.080694581   0.494944826
                         0.008955266   0.019157991  -0.055235167  -0.077262928  -0.205572979  -0.051205702   0.006829628   0.014396610

   48    6.2  1.5 -0.5  -0.011294298  -0.022168177  -0.000780364  -0.048862073   0.017794865  -0.018198751   0.010344117   0.213909473
                        -0.031268880  -0.049672056   0.008807130  -0.094584478   0.607116775   0.134748986   0.022691803  -0.029386216

   49    7.2  1.5 -0.5  -0.009232460   0.007599721   0.088241175   0.018927979   0.010872732   0.019125880   0.127104508  -0.027458668
                        -0.059731256   0.035684923   0.226639973   0.001658795   0.081917784  -0.408650911   0.324865168   0.005243893

   50    8.2  1.5 -0.5   0.006194340  -0.004922851   0.157248740   0.028435271  -0.002509064  -0.005328388  -0.120010808   0.023671889
                         0.040241449  -0.023124432   0.373492971  -0.000889288  -0.021847738   0.098856631  -0.298835529  -0.004509057

   51    9.2  1.5 -0.5  -0.000276303   0.000219082  -0.000130048  -0.000024994  -0.000009137  -0.000013242   0.000244206  -0.000050171
                        -0.001807605   0.001032729  -0.000315527   0.000000591  -0.000070429   0.000297048   0.000605475   0.000008706

   52    1.2  1.5 -1.5  -0.003066691   0.003936526   0.000105303  -0.000571547  -0.000837026  -0.000156907  -0.000009566  -0.000328584
                         0.000918217  -0.000666225   0.000001813   0.000786460   0.000114447  -0.000008359  -0.000022800   0.000006098

   53    2.2  1.5 -1.5  -0.222011402   0.126871528   0.002084440   0.000012216  -0.000548841   0.002333101  -0.000240949   0.000006548
                         0.021477827  -0.020050346  -0.000798038  -0.000172759   0.000025657   0.000288723   0.000085365  -0.000017566

   54    3.2  1.5 -1.5  -0.020360663   0.019230445   0.000338540   0.000082517  -0.000048909  -0.000288732  -0.000090996   0.000017949
                        -0.216741505   0.123930142   0.001138305   0.000009496  -0.000671528   0.002786377  -0.000256761  -0.000000256

   55    4.2  1.5 -1.5  -0.027289746  -0.066484561  -0.196922393  -0.013580556  -0.164088700  -0.113971521   0.006842762  -0.384896473
                        -0.007714127   0.004050394   0.007672297   0.022109666   0.027799793   0.001425189  -0.067331364   0.001232384

   56    5.2  1.5 -1.5   0.034937996   0.012566138  -0.507323776  -0.009666265   0.112518292  -0.160273775   0.032680066   0.158143840
                        -0.014700539   0.009677724   0.006921608   0.029760400  -0.018422987   0.006077468  -0.089162971   0.001354816

   57    6.2  1.5 -1.5   0.015072714  -0.009063724   0.004580071   0.037792141   0.019733046  -0.072785191   0.107910689  -0.012723775
                         0.029972353  -0.017733205   0.539052036   0.014913104   0.000131770  -0.046917650   0.192016846   0.013681179

   58    7.2  1.5 -1.5   0.000592909  -0.000941248  -0.001397562   0.083758101  -0.041980379   0.002912654  -0.032078641  -0.002730671
                        -0.024151236  -0.040159668  -0.019043049   0.061567220  -0.299992570  -0.071552807   0.000879225   0.392950303

   59    8.2  1.5 -1.5   0.002181648   0.000317731  -0.000154917  -0.048666251   0.033857625  -0.002503481  -0.004545764   0.006072302
                        -0.033005740  -0.057643917   0.005516566  -0.035429886   0.252458864   0.061160526   0.001866207   0.054704134

   60    9.2  1.5 -1.5  -0.000043100  -0.000010631   0.000003225   0.000092600   0.000046989  -0.000002718  -0.000026048   0.000005694
                         0.000588832   0.001022108  -0.000008493   0.000066462   0.000333772   0.000080702   0.000005668   0.000342589


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000005456   0.000016316  -0.000109872   0.000014286  -0.000159051   0.000018434  -0.000012874   0.000067488
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000002670   0.000009689   0.000124337   0.000092599  -0.000049280   0.000111236   0.000062047   0.000013245
                        -0.000002468  -0.000000770   0.000025694   0.000026367   0.000000151   0.000016086  -0.000022358  -0.000008807

    3    3.2  0.5  0.5  -0.000010326  -0.000003588  -0.000030357  -0.000033267   0.000013550   0.000009137   0.000018316   0.000004202
                         0.000005847   0.000002595   0.000189034   0.000082650  -0.000019171  -0.000041619   0.000064614  -0.000024261

    4    4.2  0.5  0.5   0.000409846  -0.001866392  -0.199924718   0.431658371   0.142976944  -0.065387585   0.129871500   0.417571628
                         0.000230573   0.000107933   0.012130615   0.052633149  -0.002377875   0.002307532  -0.086269551  -0.023170209

    5    5.2  0.5  0.5  -0.000668705  -0.000469195  -0.229164283  -0.095294608   0.153246173   0.345681693  -0.458039466   0.149433682
                        -0.002734432  -0.000679025  -0.070960795  -0.051268904  -0.030548346  -0.013948940   0.012411024   0.100373323

    6    6.2  0.5  0.5  -0.003936829  -0.000851336  -0.047771936  -0.040654425   0.026915943   0.017765236   0.030711216   0.095806446
                         0.001569805   0.000815943   0.058791483   0.022797359   0.152056971   0.337288257   0.520377784  -0.170609705

    7    7.2  0.5  0.5   0.000201661   0.000073938  -0.004861846  -0.014866534   0.005760524   0.039114222  -0.018538407   0.000632549
                        -0.000589704   0.002157465  -0.069149077   0.148758140   0.592556373  -0.265395499  -0.028363486  -0.080181137

    8    8.2  0.5  0.5   0.000079474   0.000049106  -0.011736535  -0.076269494   0.000372860  -0.010452641  -0.009192157   0.001894498
                        -0.000295165   0.001029033  -0.273146517   0.589443980  -0.157241357   0.069243339  -0.012637592  -0.037323447

    9    9.2  0.5  0.5  -0.000391789   0.001453492   0.000003423   0.000011186  -0.000081304   0.000041053   0.000232234   0.000666355
                        -0.000109605  -0.000080850   0.000013442   0.000005564  -0.000001287   0.000000132  -0.000165210  -0.000038285

   10   10.2  0.5  0.5  -0.001217897  -0.000266971   0.000628348   0.000474181   0.000026188  -0.000127356  -0.000212260  -0.000096792
                         0.000609461   0.000281221  -0.002455706  -0.001063746   0.000506491   0.001124925  -0.000736284   0.000280493

   11   11.2  0.5  0.5  -0.000685458  -0.000304499  -0.001214367  -0.000528125  -0.000148675  -0.000328152  -0.003530754   0.001279863
                        -0.001359835  -0.000304611  -0.000273999  -0.000216908  -0.000004411  -0.000054705   0.000723958   0.000576592

   12   12.2  0.5  0.5   0.000280725   0.000183760   0.000025377   0.000218680   0.000012632   0.000118754  -0.000210792  -0.000036835
                        -0.000956249   0.003451754   0.000749942  -0.001615976   0.001742480  -0.000771425  -0.000263050  -0.000868467

   13    1.2  0.5 -0.5  -0.000008361  -0.000002796  -0.000013193  -0.000101468   0.000018343   0.000158267   0.000065481   0.000012491
                        -0.000014010  -0.000004685  -0.000005480  -0.000042145   0.000001828   0.000015772  -0.000016335  -0.000003116

   14    2.2  0.5 -0.5  -0.000004304  -0.000003488  -0.000095630   0.000124682   0.000112283   0.000049022   0.000014983  -0.000065614
                        -0.000008714  -0.000001028  -0.000011169   0.000023964  -0.000004976   0.000005037   0.000005339  -0.000006675

   15    3.2  0.5 -0.5  -0.000000389  -0.000000271  -0.000000981   0.000044474   0.000004965  -0.000011583   0.000009950  -0.000002132
                         0.000004411  -0.000011864   0.000089088  -0.000186219   0.000042320  -0.000020420   0.000022523   0.000067126

   16    4.2  0.5 -0.5   0.000863794   0.000408029  -0.418829068  -0.179979123  -0.064836485  -0.142036448   0.410762974  -0.146891158
                         0.001657989   0.000233774  -0.116967556  -0.087889475  -0.008780163  -0.016544124  -0.078592002  -0.052268822

   17    5.2  0.5 -0.5   0.000823531  -0.002690758   0.107671004  -0.238854156   0.342594698  -0.149461606   0.120694725   0.447423190
                         0.000054917   0.000827105  -0.010794337  -0.022369516   0.048158891  -0.045594073  -0.133559023  -0.098826489

   18    6.2  0.5 -0.5  -0.000264366  -0.000669524   0.028800136  -0.021566659   0.051124063  -0.041861648   0.134253604   0.096159467
                         0.001149194  -0.004185051   0.036647702  -0.072618700  -0.333864197   0.148638464   0.142346465   0.512337364

   19    7.2  0.5 -0.5  -0.001890513  -0.000403035  -0.043331001  -0.031014029   0.012604124  -0.064491575   0.020021584   0.011121763
                         0.001042153   0.000475374   0.143081873   0.061994858   0.267966098   0.589064577   0.077643745  -0.032007285

   20    8.2  0.5 -0.5  -0.000908800  -0.000212731  -0.155662301  -0.115611820  -0.003534771   0.015221443   0.010872304   0.005859887
                         0.000485184   0.000219509   0.573611793   0.247751232  -0.069938567  -0.156503326   0.035755026  -0.014486760

   21    9.2  0.5 -0.5  -0.000675450  -0.000294900  -0.000012465   0.000008317   0.000040864   0.000081031   0.000655807  -0.000265317
                        -0.001289552  -0.000280261   0.000000848  -0.000011101   0.000003940   0.000006781  -0.000124145  -0.000104085

   22   10.2  0.5 -0.5  -0.000104670  -0.000100794  -0.000029880  -0.000361671  -0.000015177  -0.000076284  -0.000161808   0.000027731
                         0.000373367  -0.001358145  -0.001164264   0.002508886  -0.001132010   0.000501398  -0.000248723  -0.000765768

   23   11.2  0.5 -0.5   0.000417618  -0.001518974   0.000570929  -0.001226578  -0.000331960   0.000148380   0.001102241   0.003600997
                         0.000105369   0.000108274   0.000002261  -0.000212765   0.000021894   0.000010354  -0.000869237  -0.000152189

   24   12.2  0.5 -0.5  -0.003058203  -0.000677270   0.000417900   0.000311097   0.000041672  -0.000185359   0.000174473   0.000140853
                         0.001611137   0.000731112  -0.001576248  -0.000682844   0.000779399   0.001732639   0.000851558  -0.000306251

   25    1.2  1.5  1.5   0.000001556   0.000032751  -0.001694280  -0.001278255   0.000364399   0.001551909  -0.008099875   0.002788265
                         0.000004056   0.000001068  -0.000529272  -0.000395754  -0.000031491   0.000166568   0.001650334   0.001340361

   26    2.2  1.5  1.5  -0.000442292   0.001563447   0.011401766  -0.024185077  -0.015253479   0.006754856  -0.001892117  -0.006445992
                        -0.000101680  -0.000172598   0.000463222  -0.005151718   0.000175077   0.000979264   0.001384709  -0.000154947

   27    3.2  1.5  1.5  -0.000105670  -0.000172879  -0.000109405   0.005789597   0.000881130  -0.000284361  -0.001721644   0.000020275
                         0.000453887  -0.001606901   0.015150018  -0.032457171   0.001293306  -0.000628493  -0.002359264  -0.007501357

   28    4.2  1.5  1.5  -0.222953519  -0.137281082  -0.005387905   0.074871348  -0.104508771  -0.081791182  -0.009929894   0.020818924
                        -0.428113223  -0.110679773   0.010675218   0.000683967  -0.026266266   0.004983978  -0.007738693   0.000342791

   29    5.2  1.5  1.5   0.107999920  -0.042977632  -0.082644164   0.160463211  -0.126612888   0.099917899   0.016424618   0.041145581
                         0.189657045  -0.003828497   0.014789550  -0.011449477  -0.078369538   0.048971307  -0.013836530  -0.011013364

   30    6.2  1.5  1.5   0.025997008  -0.028378849  -0.034184423   0.057445029  -0.060594306   0.042333619   0.012257811   0.020704906
                        -0.029203785   0.121925406  -0.035443182   0.093235075   0.208795785  -0.087069632   0.008316386   0.018242833

   31    7.2  1.5  1.5   0.241284303   0.052167218  -0.021127439  -0.016324412   0.000843451  -0.008507106   0.053250644   0.043894120
                        -0.134225115  -0.062829313   0.083179780   0.033506635   0.020615807   0.058996805   0.267376979  -0.096824743

   32    8.2  1.5  1.5   0.515476660   0.114027908   0.022959952   0.016969635   0.002957044  -0.011789130  -0.030771065  -0.025327638
                        -0.269763495  -0.122689545  -0.086887844  -0.037293806   0.052600417   0.115080695  -0.153795651   0.055458674

   33    9.2  1.5  1.5   0.000113501   0.000025700  -0.001280515  -0.000954807   0.000001485  -0.000015601   0.000574505   0.000471033
                        -0.000052886  -0.000025042   0.004821832   0.002085672   0.000065628   0.000142154   0.002864516  -0.001031584

   34    1.2  1.5  0.5  -0.000500518   0.001844092   0.003961478  -0.008824957   0.020143659  -0.009098372  -0.000020363   0.000571962
                        -0.000129719  -0.000096915  -0.000147666  -0.001193884  -0.000142545  -0.001384126  -0.000069184   0.000000635

   35    2.2  1.5  0.5   0.000579634   0.000218493  -0.005211332  -0.002000923  -0.003572022  -0.007017926  -0.009920563   0.003377763
                         0.001008922   0.000218830  -0.002171784  -0.001365812   0.000397345  -0.000214043   0.001181092   0.001885961

   36    3.2  1.5  0.5   0.000664012   0.000143038   0.003838883   0.002731726   0.000443554  -0.000593155  -0.002189532  -0.002442971
                        -0.000425378  -0.000179779  -0.013211501  -0.005689284   0.004133530   0.009226551  -0.013772948   0.004830391

   37    4.2  1.5  0.5   0.045456730  -0.032482286  -0.117540612   0.287197229   0.049854539  -0.094310105  -0.054567577  -0.092464608
                         0.090894014   0.028066443   0.013061809   0.040724882  -0.006266880  -0.033041210   0.031840159   0.005981685

   38    5.2  1.5  0.5   0.071392187   0.062399438   0.083808761  -0.096486206  -0.102662870  -0.137692324  -0.047108868   0.062772071
                         0.223613963   0.053794878   0.018204272  -0.003282701  -0.021249438  -0.070132167   0.010643932   0.005232151

   39    6.2  1.5  0.5   0.141611669   0.042585822   0.023802533   0.009554507  -0.027892150  -0.083415357  -0.029576835   0.006868516
                         0.042250415  -0.009025088  -0.025179519  -0.006582110   0.065632811   0.140572862  -0.015352973   0.014941041

   40    7.2  1.5  0.5  -0.024988238  -0.014085834  -0.004853086  -0.013927378   0.000934821  -0.005259950   0.038318004   0.005622883
                         0.075162614  -0.268206916  -0.063453182   0.139537862  -0.083337350   0.032581619   0.049326977   0.159144467

   41    8.2  1.5  0.5   0.017097899   0.009198760  -0.001739264  -0.020397781   0.000597332   0.009348440   0.060386574   0.011992790
                        -0.056001438   0.199976361  -0.065476609   0.140764451   0.137477675  -0.060548210   0.075398354   0.248680999

   42    9.2  1.5  0.5   0.000004300   0.000007622   0.000019446   0.000149655   0.000023323   0.000203792  -0.000389645  -0.000074320
                        -0.000012205   0.000046436   0.000523375  -0.001129451   0.003026537  -0.001343988  -0.000489491  -0.001610844

   43    1.2  1.5 -0.5   0.000861827   0.000367892  -0.008607870  -0.003601817   0.009190782   0.020030241  -0.000554801  -0.000003012
                         0.001633194   0.000363319  -0.002282498  -0.001655907  -0.000475086   0.002139340   0.000139059   0.000072056

   44    2.2  1.5 -0.5   0.000299882  -0.001163411  -0.002371765   0.005645758   0.007004562  -0.003515014  -0.002820824  -0.009911447
                         0.000075476   0.000019312   0.000493829  -0.000006708   0.000482928  -0.000749597   0.002647467   0.001255302

   45    3.2  1.5 -0.5  -0.000081073   0.000024984   0.000340487   0.001522402  -0.000324698   0.000851259   0.003539522   0.001209318
                         0.000214959  -0.000788184   0.006301932  -0.013673444   0.009239894  -0.004069173   0.004095432   0.013893369

   46    4.2  1.5 -0.5   0.007454433  -0.101346336   0.280850236   0.103539522   0.097121727   0.048987377   0.091162926  -0.060651854
                        -0.042275945   0.007546931   0.072552806   0.057148699  -0.023526320   0.011179699  -0.016577247  -0.017685271

   47    5.2  1.5 -0.5   0.078171881  -0.228604599  -0.090364997  -0.084380857   0.143968161  -0.104264020  -0.059639025  -0.048284392
                         0.026014146   0.053291518  -0.033978397  -0.015335410  -0.056132570   0.010964386   0.020270547   0.001075280

   48    6.2  1.5 -0.5   0.014074230  -0.108852777   0.006298914  -0.012323527   0.069064650  -0.021246355  -0.003047793  -0.024981144
                         0.041193694  -0.099950164   0.009743534  -0.032383629   0.148151697  -0.068075182   0.016159276   0.022055507

   49    7.2  1.5 -0.5  -0.237528724  -0.051736562   0.040661622   0.028821119   0.002003146  -0.007333737   0.033065240   0.025238976
                         0.125353364   0.059976318  -0.134206629  -0.056738011   0.032942623   0.083019300   0.155773130  -0.057135052

   50    8.2  1.5 -0.5   0.176434440   0.039326389   0.035156643   0.026721620  -0.003298244   0.014227035   0.048557068   0.040340733
                        -0.094583564  -0.043381267  -0.137821300  -0.059801056  -0.061176799  -0.136740848   0.244189020  -0.087772863

   51    9.2  1.5 -0.5   0.000043781   0.000008277  -0.000295025  -0.000218714  -0.000069515   0.000323327  -0.000317795  -0.000259577
                        -0.000017253  -0.000009947   0.001100462   0.000475882  -0.001357573  -0.003009307  -0.001580933   0.000569249

   52    1.2  1.5 -1.5  -0.000017701   0.000004281   0.001332282  -0.001767699   0.001560778  -0.000359480   0.002380918   0.008258479
                        -0.000027576  -0.000000742   0.000124829  -0.000161101  -0.000011855  -0.000067470  -0.001975403  -0.000359315

   53    2.2  1.5 -1.5  -0.000653015  -0.000313976   0.024311208   0.010707308   0.006818669   0.015160937  -0.006216807   0.002171022
                        -0.001430988  -0.000327690   0.004519212   0.003945679  -0.000304608   0.001686789   0.001710592   0.000885546

   54    3.2  1.5 -1.5   0.001468447   0.000335601   0.007103120   0.005710179  -0.000345282  -0.001005035   0.001835375   0.001099389
                        -0.000675042  -0.000323344  -0.032195234  -0.014033134   0.000597197   0.001199557   0.007273387  -0.002705833

   55    4.2  1.5 -1.5   0.165393968  -0.481879900  -0.069406676  -0.000880996  -0.080893829   0.106598304   0.020116875   0.007761466
                         0.061163250   0.027945766  -0.028087363  -0.011925336  -0.013070041  -0.015773443  -0.005371819  -0.009912105

   56    5.2  1.5 -1.5   0.025312436   0.218206178  -0.143797359  -0.070649634   0.104281551   0.133760172   0.042587852  -0.019285344
                         0.034943022  -0.004454327  -0.072123868  -0.045358768  -0.038821819  -0.065428008   0.000726579  -0.009449505

   57    6.2  1.5 -1.5  -0.090154318  -0.011754605  -0.088813905  -0.045164832   0.033490914   0.039590915   0.015673543  -0.009880329
                         0.086852534   0.037289874   0.064068721   0.019619680   0.090838399   0.213775371  -0.022711983   0.011036091

   58    7.2  1.5 -1.5   0.027217414   0.008392267   0.002223320   0.012394577  -0.002614899  -0.002883611   0.066025304   0.013051429
                        -0.076994504   0.275978380   0.037205347  -0.084921252  -0.059549610   0.020430558   0.083320969   0.272315516

   59    8.2  1.5 -1.5   0.046917622   0.032521334  -0.001366512  -0.012124568  -0.000319321  -0.008158465  -0.037998262  -0.007370189
                        -0.160791247   0.580888021  -0.040950325   0.089048591  -0.115682531   0.052047934  -0.047678987  -0.156670485

   60    9.2  1.5 -1.5   0.000008333   0.000012753   0.000081754   0.000666983  -0.000001428  -0.000007985   0.000706721   0.000135935
                        -0.000034903   0.000124566   0.002292379  -0.004944180  -0.000143000   0.000065158   0.000886895   0.002918395


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5  -0.007318289  -0.002446397  -0.015017570  -0.005406909   0.000468725   0.004665601  -0.000009920  -0.000001022
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.005580903   0.008281045  -0.004076697   0.000084623   0.004662619  -0.000489982   0.000016921   0.000000430
                         0.000259011   0.004796454   0.004279308  -0.012526909   0.000173935   0.000288203  -0.000000849   0.000000239

    3    3.2  0.5  0.5  -0.000898187  -0.006503552   0.002715799  -0.003404407  -0.000032586   0.000010988   0.000001725   0.000000282
                         0.011509846   0.010778780  -0.001347043  -0.001700529  -0.003795657   0.002822011  -0.000007027  -0.000000335

    4    4.2  0.5  0.5   0.218735110  -0.164393831  -0.070300040  -0.026857382  -0.000743174  -0.000998874   0.009671401  -0.232585408
                         0.042202887  -0.121401694   0.004534478  -0.032702783  -0.000063194  -0.000016372  -0.013410233   0.067465593

    5    5.2  0.5  0.5   0.144053304   0.126328558  -0.089316634  -0.004856538   0.003008893  -0.002211771   0.256349693   0.010985047
                         0.034681027   0.097771147  -0.046245884   0.199664437  -0.000362803   0.000554997   0.020332801   0.004439148

    6    6.2  0.5  0.5   0.024573683   0.056815709   0.074422253  -0.265813338   0.000545587  -0.000459435   0.018161170   0.010434603
                        -0.050516512  -0.030735396  -0.111738939  -0.028393050   0.001014990  -0.000706379  -0.264732703  -0.014408684

    7    7.2  0.5  0.5   0.012346535  -0.029679682   0.038048096  -0.108968050  -0.000016163  -0.000012158  -0.000261892   0.002205669
                        -0.048912929   0.036495344   0.265017942   0.076252515   0.000034127   0.000057256   0.000514919   0.017660916

    8    8.2  0.5  0.5   0.042965084  -0.118139466  -0.010782598   0.025234288   0.000006747  -0.000016736   0.000333210   0.001975255
                        -0.217301511   0.164725875  -0.060478684  -0.017357800  -0.000064420  -0.000083876  -0.000361067   0.013672740

    9    9.2  0.5  0.5   0.094743842  -0.074043676   0.434078353   0.125655790  -0.156623192  -0.207475268   0.000064147  -0.001408180
                         0.015849153  -0.052659161  -0.065991913   0.183494764  -0.017603299   0.001059648  -0.000040801   0.000411027

   10   10.2  0.5  0.5  -0.052858826  -0.201959140   0.041004988  -0.112105185  -0.011218905   0.027609263   0.000114680  -0.000017828
                         0.326335535   0.299767976  -0.043890338  -0.032331664  -0.215135364   0.158878486   0.001486850   0.000076985

   11   11.2  0.5  0.5   0.240963770   0.221496725   0.127616192   0.072931161   0.210579908  -0.157858112   0.000098384  -0.000004248
                         0.035392950   0.144317859   0.101649742  -0.311904902  -0.010471258   0.027859180  -0.000032897   0.000004028

   12   12.2  0.5  0.5  -0.000201637   0.000583135   0.000206892  -0.000565455   0.021611975  -0.002166897   0.000004842  -0.000070177
                         0.001088996  -0.000828886   0.001358706   0.000393026  -0.181463382  -0.243813968   0.000011350  -0.000245873

   13    1.2  0.5 -0.5   0.001720346  -0.005146338  -0.000400641   0.001112770  -0.004651961   0.000467355  -0.000000956   0.000009282
                         0.001739330  -0.005203129   0.005392045  -0.014976286   0.000356490  -0.000035814   0.000000360  -0.000003500

   14    2.2  0.5 -0.5  -0.009233529   0.004108731   0.012498743   0.004569619   0.000510571   0.004635698   0.000000318  -0.000016132
                        -0.002514683   0.003785749   0.000843828  -0.003748402   0.000249921  -0.000529689  -0.000000375   0.000005175

   15    3.2  0.5 -0.5  -0.003090055   0.007551608   0.001443595  -0.001544575   0.000204669   0.000257529   0.000000382  -0.000004094
                         0.012203682  -0.008732498   0.003521054   0.002608520   0.002814601   0.003787051   0.000000214  -0.000005967

   16    4.2  0.5 -0.5   0.201918097   0.183823284   0.030622806   0.009731098   0.000994703  -0.000736173  -0.241431826  -0.013780605
                         0.031508494   0.125837723   0.029206758  -0.069770788  -0.000092646   0.000119794   0.018927530  -0.009135933

   17    5.2  0.5 -0.5  -0.158349230   0.125957978  -0.199475413  -0.039500577   0.002247711   0.003027818   0.008712601  -0.232693189
                        -0.021062368   0.078030224  -0.009951529  -0.092497823   0.000384377   0.000131838  -0.008029189   0.109464459

   18    6.2  0.5 -0.5  -0.018101580  -0.018635432   0.008618785  -0.116946299   0.000404119   0.000466439   0.014846983  -0.110389952
                        -0.062008242   0.052995326   0.267186475   0.065938043  -0.000739419  -0.001053710   0.009800929  -0.241303316

   19    7.2  0.5 -0.5  -0.005076095  -0.026093650  -0.084117199   0.261470116   0.000016497  -0.000018723  -0.004166849   0.000426714
                         0.046765660   0.043174449   0.103018342   0.057580775   0.000056160  -0.000032792  -0.017303476   0.000389416

   20    8.2  0.5 -0.5  -0.034038620  -0.124282479   0.019179891  -0.059513458   0.000010279   0.000011650  -0.002975436  -0.000439167
                         0.199832229   0.183357058  -0.023878741  -0.015234301  -0.000084910   0.000063716  -0.013490449  -0.000220296

   21    9.2  0.5 -0.5   0.089508112   0.077893759  -0.173679500  -0.097974796   0.206949705  -0.154820287  -0.001462643  -0.000074417
                         0.015612530   0.056215244  -0.138906936   0.427995196  -0.014796263   0.029519135   0.000112201  -0.000015547

   22   10.2  0.5 -0.5  -0.071107010   0.194845642   0.023936024  -0.046808066  -0.015388931   0.005252000  -0.000043842   0.000417248
                         0.354389795  -0.267065745   0.114192713   0.037640082   0.160523598   0.215363658  -0.000065745   0.001431705

   23   11.2  0.5 -0.5  -0.258366616   0.194613130   0.316451513   0.091914212   0.159525303   0.210764393  -0.000005396  -0.000103664
                        -0.055992281   0.146430628  -0.049619171   0.134797405   0.015716082  -0.005649387  -0.000002271   0.000003928

   24   12.2  0.5 -0.5   0.000179248   0.000632456  -0.000433844   0.001339641  -0.016468826   0.035414086   0.000021078  -0.000000526
                        -0.000997481  -0.000909159   0.000534778   0.000307001  -0.243266775   0.179281563   0.000254821   0.000012328

   25    1.2  1.5  1.5   0.101696339   0.093329117   0.012664552   0.007186580   0.003921728   0.006279171  -0.263448051  -0.014949568
                         0.017795470   0.064476711   0.011515045  -0.036088542   0.000838505   0.000267155   0.019860856  -0.001557582

   26    2.2  1.5  1.5  -0.019351079   0.012024065  -0.078956277  -0.024949711   0.241528571   0.322161476   0.009710422  -0.105964948
                        -0.002342994   0.007064100   0.016221234  -0.031099596   0.014990470  -0.021103340  -0.002838457   0.024339868

   27    3.2  1.5  1.5  -0.002280032   0.009609627   0.016450787  -0.031664676   0.014919292  -0.021124898   0.002059085  -0.026427423
                         0.019498129  -0.015039449   0.078572072   0.024691724  -0.241074067  -0.321569324   0.005206951  -0.112050878

   28    4.2  1.5  1.5  -0.028833104  -0.015370900   0.000812028   0.019283322  -0.082256319   0.040283653  -0.005971369   0.040226815
                        -0.007129031  -0.005651463   0.024916520  -0.121100767  -0.000404505  -0.015109493  -0.006747923  -0.028455753

   29    5.2  1.5  1.5  -0.011175279   0.019032277  -0.116522297  -0.020560665   0.004311845  -0.054942798  -0.002649971   0.101884625
                        -0.010479411   0.022414950  -0.036753374  -0.010900408  -0.014975692  -0.009067893   0.004981730  -0.073727925

   30    6.2  1.5  1.5  -0.012495488   0.019379773  -0.025546347  -0.055865512  -0.013456337  -0.014864194  -0.004239729   0.080333172
                         0.018749080  -0.013145725   0.106459794   0.012598709   0.026097453   0.035399700   0.006895465   0.093310306

   31    7.2  1.5  1.5   0.010098030   0.036841818   0.027695630  -0.082235134   0.001785832  -0.005213298   0.033038413  -0.004874418
                        -0.060374409  -0.054389982  -0.035400486  -0.021088758   0.042496355  -0.032798595   0.437146812   0.019140737

   32    8.2  1.5  1.5  -0.011529802  -0.040996534   0.024600181  -0.076450190   0.004790553  -0.009792528  -0.020896359   0.002401633
                         0.064917779   0.059225076  -0.030315456  -0.016955503   0.065688909  -0.048214836  -0.276384842  -0.013362424

   33    9.2  1.5  1.5  -0.055582459  -0.199944532  -0.036112044   0.112383933  -0.000096374   0.000206746   0.000021562  -0.000001935
                         0.317268148   0.289550062   0.044828288   0.024030289  -0.001433574   0.001055479   0.000275151   0.000013544

   34    1.2  1.5  0.5   0.008383973  -0.008810859   0.045417716   0.013410868   0.280423303   0.369652948  -0.003903204  -0.007788425
                         0.001562025  -0.006012312  -0.006308863   0.017520862   0.032983118  -0.002971239   0.000382532   0.002237453

   35    2.2  1.5  0.5  -0.077452610  -0.069301567   0.027911083   0.009026440   0.178819650  -0.141320677  -0.233442169  -0.011288404
                        -0.016297045  -0.051289858   0.019332400  -0.068634343  -0.023642145   0.034701906   0.004926305  -0.002649722

   36    3.2  1.5  0.5   0.011592105   0.030459903   0.034004975  -0.110465346  -0.022433558   0.035597878  -0.003676423   0.002542778
                        -0.041574793  -0.035840707  -0.045009092  -0.020787861  -0.185084141   0.135447138  -0.223768903  -0.010919149

   37    4.2  1.5  0.5  -0.054012155   0.095904802   0.031381189   0.006701852   0.023072139  -0.018183080  -0.023072913  -0.181343405
                        -0.022603268   0.054083343  -0.003622155  -0.000350224   0.005963843  -0.004282570   0.007750399   0.049955250

   38    5.2  1.5  0.5   0.109496532   0.058715971   0.003167296  -0.007722495   0.059085717  -0.045583785  -0.082254994   0.065467994
                        -0.010357038   0.000828448   0.005599789  -0.031990382   0.019227859  -0.008610166   0.035038119  -0.019818326

   39    6.2  1.5  0.5   0.017781570  -0.020135902  -0.004199276   0.028538726   0.020530852  -0.009362436  -0.040706296   0.001701157
                         0.084086270   0.088424284   0.016301511  -0.004771115  -0.061709436   0.050242216  -0.069335256   0.000647117

   40    7.2  1.5  0.5  -0.014532949   0.039907603   0.012549875  -0.032909657  -0.005787139   0.000484400  -0.006377940   0.073441103
                         0.068403539  -0.054746458   0.077357913   0.022625608   0.049372409   0.063154783  -0.010145912   0.262393169

   41    8.2  1.5  0.5  -0.011951883   0.034464585  -0.012515403   0.035175357   0.003781590  -0.000335003  -0.010492394   0.116872221
                         0.064725526  -0.048949509  -0.084353891  -0.024365590  -0.032269062  -0.042990047  -0.018064108   0.395751105

   42    9.2  1.5  0.5  -0.016804020   0.049013493   0.063543998  -0.175927533  -0.000222761   0.000022269   0.000013702  -0.000148101
                         0.093392260  -0.071057659   0.422548513   0.122115342   0.001879603   0.002527170   0.000021592  -0.000502588

   43    1.2  1.5 -0.5  -0.010470548  -0.007006307   0.016478979   0.009656877   0.368799339  -0.277083338   0.008076996  -0.003787185
                        -0.002036358  -0.004862365   0.014672261  -0.044825388  -0.025281967   0.054313338  -0.000654137   0.001019098

   44    2.2  1.5 -0.5  -0.085199843   0.066052729  -0.069114505  -0.017211101  -0.143559054  -0.180103347   0.009627754  -0.220169911
                        -0.013203918   0.043606623   0.003915965  -0.029266845  -0.023802399  -0.009909741  -0.006461846   0.077747829

   45    3.2  1.5 -0.5  -0.004062000   0.021406937  -0.012545463   0.047405058   0.025144539   0.008226028  -0.006231506   0.075504658
                         0.046860027  -0.037477771  -0.111702010  -0.030576415  -0.137771145  -0.186257177  -0.009319971   0.210677680

   46    4.2  1.5 -0.5   0.105893766   0.054052599  -0.000845855   0.005937477  -0.017802700  -0.022549004   0.187307091  -0.024323641
                         0.030153763   0.022506379   0.006657477  -0.031026527   0.005659387   0.007709309  -0.017234011   0.000887971

   47    5.2  1.5 -0.5   0.041879018  -0.069636107  -0.031330219  -0.005349705  -0.044792639  -0.057443821  -0.068250247  -0.089327326
                         0.041163083  -0.085132669  -0.010071686  -0.003573521   0.012067971   0.023686282   0.004552806  -0.003765980

   48    6.2  1.5 -0.5   0.048707677  -0.072287626  -0.006872659  -0.016567856  -0.013173984  -0.025185940  -0.001363473  -0.013627723
                        -0.076497521   0.046488538   0.028106743   0.002979824  -0.049379972  -0.059960310   0.001205668   0.079238030

   49    7.2  1.5 -0.5  -0.010859766  -0.038413489   0.025001946  -0.076215334  -0.004342560   0.009542678   0.023852291  -0.002388407
                         0.066871945   0.058435046  -0.031142677  -0.018247434  -0.063007170   0.048785890   0.271431094   0.011743643

   50    8.2  1.5 -0.5  -0.010565890  -0.037613556  -0.026905028   0.083194634   0.002950769  -0.006236156   0.030261871  -0.003444799
                         0.058925580   0.054013531   0.033273220   0.018731445   0.042889967  -0.031885783   0.411536478   0.020604264

   51    9.2  1.5 -0.5  -0.016053234  -0.054582823   0.134815505  -0.416678438  -0.000170893   0.000365727  -0.000038732   0.000005203
                         0.084816314   0.077622193  -0.166395412  -0.094679273  -0.002521483   0.001857087  -0.000522521  -0.000025037

   52    1.2  1.5 -1.5  -0.111471940   0.084166652   0.036521844   0.010544973  -0.006240402   0.003846195  -0.013438809   0.253515272
                        -0.021013730   0.059789622  -0.004492739   0.013482978   0.000746154  -0.001135706   0.006731572  -0.074359507

   53    2.2  1.5 -1.5  -0.013477923  -0.015273802   0.029165381   0.022027136  -0.322832144   0.239677096  -0.107738444  -0.010087441
                        -0.003581236  -0.012110527   0.027185539  -0.077537264   0.003574134  -0.033401413   0.014609145   0.000769849

   54    3.2  1.5 -1.5   0.003935048   0.012259352  -0.026970131   0.077137106  -0.003507395   0.033295715   0.014802909  -0.000089697
                        -0.017408198  -0.015332445   0.029748024   0.022227589  -0.322243370   0.239229360   0.114169531   0.005598583

   55    4.2  1.5 -1.5   0.014827119  -0.025344473   0.122196711   0.024787854  -0.041320378  -0.081984945   0.047679312   0.003206774
                         0.006954145  -0.015486403  -0.010256999   0.002656058  -0.011987321   0.006688381   0.012434216  -0.008420707

   56    5.2  1.5 -1.5  -0.029320299  -0.015309248   0.009346940  -0.028018280   0.054089318   0.005443505   0.121344375   0.004237111
                         0.002231055  -0.000576069   0.021311840  -0.118925322  -0.013239464   0.014602452   0.033042800   0.003726509

   57    6.2  1.5 -1.5  -0.004281869   0.004543124  -0.016703592   0.108060064   0.017525568  -0.015411059   0.042248315   0.006399806
                        -0.023022843  -0.022068648   0.054778399  -0.017587672   0.034160467  -0.024992985  -0.115651682   0.004956332

   58    7.2  1.5 -1.5   0.012762229  -0.035823674   0.014937333  -0.037355357   0.002691975  -0.001466459  -0.011313763   0.123309424
                        -0.064441564   0.049635711   0.083571700   0.024996392  -0.033101051  -0.042508574  -0.016190322   0.420694257

   59    8.2  1.5 -1.5  -0.013278203   0.038047058   0.011244093  -0.032054940   0.006079891  -0.000242624   0.006961414  -0.077954630
                         0.070795584  -0.053848638   0.077496393   0.022286242  -0.048822115  -0.065862913   0.011655940  -0.265985553

   60    9.2  1.5 -1.5  -0.065259020   0.186483643  -0.015636815   0.047380881  -0.000125495   0.000013444  -0.000006589   0.000076897
                         0.345772056  -0.262625853  -0.113855581  -0.032691088   0.001068190   0.001436747  -0.000011991   0.000265066


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5  -0.000006434  -0.000165475   0.000290998   0.000033792   0.006006339  -0.010827242   0.000458266   0.005867029
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000002763   0.000040730   0.000091792  -0.000136486   0.010340993   0.002193218   0.004803438  -0.006959421
                        -0.000178650   0.000024822   0.000022372  -0.000188042   0.001237722   0.000487544  -0.001241803  -0.001285593

    3    3.2  0.5  0.5   0.000182524  -0.000022888  -0.000026468  -0.000014068   0.000361860   0.001426113   0.000891703   0.002208149
                         0.000014258   0.000139984   0.000002371  -0.000009324  -0.002302827  -0.003033003   0.005310022  -0.011765242

    4    4.2  0.5  0.5  -0.029000816  -0.178789607  -0.097145044   0.018308214   0.011969163  -0.009420209  -0.048028233  -0.022364183
                        -0.138817680   0.007360093  -0.002288226   0.026878005   0.000530235  -0.001090416   0.014673978  -0.001725181

    5    5.2  0.5  0.5  -0.021106998  -0.103365845  -0.046349832  -0.116900655  -0.023160085  -0.029017922   0.015997643  -0.034688328
                         0.134436109  -0.033219018   0.023583851  -0.090880334   0.001203556   0.005312358  -0.001155404  -0.011791607

    6    6.2  0.5  0.5   0.012422873  -0.014173338  -0.023458314   0.144795058   0.000758454  -0.003448506   0.003041160  -0.007663445
                         0.025895178   0.005564096  -0.069332389  -0.150825289  -0.031662179  -0.039490526  -0.006004205   0.010454751

    7    7.2  0.5  0.5   0.021530213  -0.002593972   0.011267417  -0.103100218   0.002402286   0.001066882   0.001757770  -0.000592020
                        -0.006000043  -0.027750807  -0.319297143   0.043703960  -0.029361256   0.023622976   0.008202021   0.003590461

    8    8.2  0.5  0.5   0.206113584  -0.008540566  -0.002136280   0.010709697  -0.000268248  -0.000602436   0.011868098  -0.001725036
                        -0.041637442  -0.265802421   0.034227906  -0.004763218   0.006272562  -0.004833555   0.038134062   0.017726624

    9    9.2  0.5  0.5   0.000332291   0.002073983   0.002354694  -0.000343980   0.341033133  -0.267291279   0.097329791   0.044044633
                         0.001618632  -0.000023403   0.000093929  -0.000777056   0.025367080   0.014177825  -0.032974237   0.001418645

   10   10.2  0.5  0.5  -0.005491058   0.001311695  -0.000329409   0.003271582  -0.014788254  -0.008660752  -0.023204408  -0.099555609
                        -0.000735810  -0.004180202  -0.001416687  -0.002613801   0.072017573   0.093344194  -0.172924690   0.377308126

   11   11.2  0.5  0.5   0.000031885  -0.000464181   0.001747353   0.003224114  -0.185162176  -0.241011215  -0.130341573   0.288931087
                         0.000616220  -0.000058396  -0.000439437   0.003987203  -0.027187105  -0.004637429   0.019451336   0.070777881

   12   12.2  0.5  0.5   0.002481417  -0.000085855  -0.000114334   0.000988628   0.000224823   0.000146674  -0.001000656   0.000119170
                        -0.000493133  -0.003200599   0.003084737  -0.000417261  -0.003085860   0.002445617  -0.003076579  -0.001445161

   13    1.2  0.5 -0.5  -0.000017877   0.000000695   0.000020658  -0.000177897   0.010779825   0.005980034  -0.005862540   0.000457915
                         0.000164506  -0.000006396   0.000026742  -0.000230288   0.001012204   0.000561513   0.000229461  -0.000017923

   14    2.2  0.5 -0.5  -0.000020277  -0.000177306  -0.000232250  -0.000073820  -0.002229191   0.010411416   0.006903816   0.004848331
                        -0.000043174  -0.000022048   0.000006946  -0.000058965   0.000280372  -0.000265556  -0.001556795   0.001052989

   15    3.2  0.5 -0.5  -0.000141637  -0.000005545  -0.000015979   0.000014304  -0.001136321   0.000144992  -0.002666602   0.000683344
                         0.000007631   0.000182996  -0.000005433   0.000022395  -0.003153043   0.002326571  -0.011669879  -0.005340834

   16    4.2  0.5 -0.5  -0.026632960  -0.134871988   0.032462951   0.061198973   0.009480893   0.011966314   0.022279600  -0.048565390
                         0.176947958  -0.043828557  -0.001942845   0.075479012  -0.000204975   0.000591046  -0.002598530  -0.012784354

   17    5.2  0.5 -0.5   0.021857215   0.135929577  -0.143385592   0.009671657   0.028394203  -0.022946139   0.034200615   0.016030591
                         0.106349721  -0.006459340  -0.036953625   0.051097593   0.008001885  -0.003363447  -0.013139255   0.000528848

   18    6.2  0.5 -0.5  -0.007062778   0.024401476  -0.030840695   0.069208604   0.007125245  -0.002204862   0.008066470   0.003273659
                         0.013489250   0.015147805   0.206791509  -0.023821037  -0.038995188   0.031594420   0.010147032   0.005880671

   19    7.2  0.5 -0.5   0.027308132  -0.008290990  -0.028442641   0.245794709  -0.003270646  -0.000353123   0.000731991   0.001435642
                         0.005576912   0.020755965  -0.108308389  -0.204114137   0.023419781   0.029457251   0.003564560  -0.008264493

   20    8.2  0.5 -0.5   0.263323937  -0.063661687   0.002777731  -0.025781030   0.001051671   0.000319328   0.002417009   0.010367585
                         0.037207153   0.200408772   0.011387277   0.022615298  -0.004756066  -0.006270169   0.017645595  -0.038569050

   21    9.2  0.5 -0.5   0.000247333   0.001573258  -0.000825227  -0.001513839   0.264795244   0.341911072  -0.043955451   0.098544955
                        -0.002059315   0.000505219   0.000202825  -0.001806017   0.039103933   0.006626101   0.003140157   0.029142415

   22   10.2  0.5 -0.5   0.004297447  -0.000138264  -0.000068458   0.001322506  -0.000103625  -0.007990799   0.114236060  -0.016423524
                        -0.000852400  -0.005538413   0.004186946  -0.000605385   0.093745061  -0.073084680   0.373125802   0.173699916

   23   11.2  0.5 -0.5   0.000007905   0.000609168   0.005126374  -0.000720459   0.240389250  -0.186892897  -0.285941884  -0.131002596
                         0.000467773   0.000098273   0.000113958  -0.001651450   0.017914241   0.009757826   0.082023901  -0.014338760

   24   12.2  0.5 -0.5   0.003172590  -0.000758332   0.000274174  -0.002371279  -0.000374664  -0.000064649  -0.000175599  -0.000879564
                         0.000431137   0.002413616   0.001037459   0.001976288   0.002421195   0.003093364  -0.001439395   0.003113361

   25    1.2  1.5  1.5   0.009083185   0.052329782  -0.013419056  -0.018476300   0.003666385   0.004250284   0.008056037  -0.017575937
                        -0.075568143   0.017814108   0.002612053  -0.021562358   0.000440608   0.000007222  -0.000986972  -0.004837373

   26    2.2  1.5  1.5  -0.017401792  -0.182474971  -0.194173303   0.025712698   0.010290416  -0.008239365  -0.001258364  -0.000107461
                        -0.141687383  -0.009466543  -0.008670772   0.062825836   0.000333805   0.000772280  -0.000086979  -0.000123317

   27    3.2  1.5  1.5   0.189074413   0.004207405   0.011802072  -0.007604115   0.000003836   0.000823011  -0.001893133   0.000212873
                        -0.029229981  -0.241514509  -0.018736265  -0.001340966  -0.007893027   0.006188520  -0.005966959  -0.002802961

   28    4.2  1.5  1.5   0.026010953   0.067530767  -0.118516965  -0.129397869   0.296636219   0.182604210  -0.002405165   0.085244036
                         0.150452989  -0.034967678  -0.039062974  -0.121805920   0.076365009  -0.017415660   0.005863956   0.022244226

   29    5.2  1.5  1.5   0.088210294   0.312807323  -0.113748675   0.020729064   0.157237250  -0.299089987   0.091356571   0.004264976
                         0.196990393  -0.052663904  -0.156788477   0.122326527   0.106411097  -0.070673723  -0.000189904   0.006180142

   30    6.2  1.5  1.5  -0.087682851   0.131737242  -0.076265345   0.129775546   0.124166839  -0.074217421   0.006255382   0.014473895
                         0.118982320   0.129580623   0.382041242  -0.027783412  -0.260496958   0.210034211  -0.080484940  -0.025693015

   31    7.2  1.5  1.5  -0.087684651   0.019660235   0.014447595  -0.130026023   0.025242372   0.007702052  -0.013024789  -0.058920474
                        -0.012158332  -0.072261225   0.045257870   0.102773062  -0.157237410  -0.214342288  -0.099934008   0.223202449

   32    8.2  1.5  1.5   0.137639639  -0.032794285   0.012603074  -0.104470797   0.022879526   0.003389376   0.013048993   0.066120783
                         0.018330520   0.105418641   0.047204807   0.088612503  -0.155491540  -0.197350591   0.107857106  -0.234233190

   33    9.2  1.5  1.5   0.006282393  -0.001501848  -0.000463857   0.003885150  -0.001801789   0.000061611   0.005379311   0.026151675
                         0.000846626   0.004792915  -0.001691228  -0.003248289   0.015687846   0.019807866   0.043558777  -0.094756059

   34    1.2  1.5  0.5  -0.015676364  -0.101596577   0.300386113  -0.042369188  -0.010197452   0.008245203  -0.004007115  -0.001551288
                        -0.079035994   0.002757024   0.011825373  -0.099256855  -0.000746888  -0.000418944   0.001345928  -0.000071505

   35    2.2  1.5  0.5   0.008567434   0.011259491  -0.064171709  -0.118111597   0.004700889   0.005567345  -0.006976119   0.015149574
                        -0.011824287   0.008323160   0.018113840  -0.129562619   0.000251850  -0.000461263   0.000624117   0.004726319

   36    3.2  1.5  0.5   0.114272814  -0.028118845   0.015060033  -0.088284799   0.000963026  -0.000137393  -0.000076195  -0.002980328
                         0.016117753   0.086859466   0.040553296   0.086580615  -0.008741563  -0.011104835  -0.003681901   0.007714714

   37    4.2  1.5  0.5   0.035704586   0.334553934   0.128378342  -0.058909235  -0.047872492   0.074459388   0.343118024   0.019322328
                         0.291525958  -0.029041351   0.006654312  -0.154460485  -0.007361560  -0.014153980  -0.115557792   0.023653044

   38    5.2  1.5  0.5  -0.073514801  -0.170146526  -0.160219319  -0.083860685   0.072342733   0.035348742   0.004045149  -0.356547483
                        -0.052385709  -0.044374327  -0.011602284  -0.239959785  -0.012904467  -0.025224027  -0.029144057   0.029606620

   39    6.2  1.5  0.5   0.111399847  -0.050065836  -0.015772114  -0.268529332   0.013629709   0.023984668   0.066774421  -0.038715898
                         0.040027168   0.086858219   0.092603538   0.078686705   0.051058094   0.071763045   0.122662182  -0.324635827

   40    7.2  1.5  0.5  -0.125839191   0.011184666   0.007066421  -0.032437103   0.012867830   0.010070064  -0.070709078   0.010047828
                         0.028695433   0.157332706  -0.118738648   0.011460076  -0.198654815   0.154196861  -0.234743901  -0.100237026

   41    8.2  1.5  0.5  -0.091932797   0.001208795  -0.008396964   0.063341290  -0.016435211  -0.007675430  -0.069936528   0.008507790
                         0.016903667   0.118428007   0.199055428  -0.025557272   0.207274300  -0.164283132  -0.218291987  -0.102857469

   42    9.2  1.5  0.5  -0.003177425   0.000108860   0.000280865  -0.002363209   0.006727202   0.003804018  -0.007168919   0.000675276
                         0.000628073   0.004105744  -0.007366493   0.000988466  -0.089611629   0.070982447  -0.020261884  -0.009649991

   43    1.2  1.5 -0.5   0.013717107   0.076879751   0.104450867   0.192994720   0.008169928   0.010222616  -0.001547304   0.004056689
                        -0.100704054   0.024123444  -0.027149362   0.230487949   0.001187926   0.000209710   0.000132121   0.001188179

   44    2.2  1.5 -0.5   0.007057998   0.012680680   0.174737966  -0.024895603   0.005499841  -0.004703846   0.014953136   0.006995190
                         0.012092800  -0.007239823   0.014264109  -0.061857323   0.000979716  -0.000188724  -0.005315207   0.000350801

   45    3.2  1.5 -0.5   0.089388948  -0.003677686  -0.014545930   0.041299470  -0.001174946  -0.000141588  -0.003279772  -0.000067863
                        -0.018570199  -0.115345276   0.122795865  -0.012873545   0.011043357  -0.008793310  -0.007592250  -0.003682064

   46    4.2  1.5 -0.5  -0.065015672  -0.285962183   0.158248987   0.083748170   0.072810085   0.048351044   0.018382468  -0.347375001
                         0.329458187  -0.066991280  -0.047807922   0.097527035   0.021052960  -0.002853876  -0.024390648  -0.102049942

   47    5.2  1.5 -0.5  -0.025732425   0.044136746   0.241164440  -0.107129350   0.032835820  -0.070819513  -0.357432612  -0.005181886
                        -0.173944714   0.078744118  -0.080330726  -0.119700231   0.028418199  -0.019611041  -0.015639301  -0.028963552

   48    6.2  1.5 -0.5   0.091758801  -0.027757543   0.101890826   0.063641822   0.030588523  -0.018343274  -0.025989684  -0.061925982
                        -0.040388865  -0.115072234   0.260610552  -0.069093367  -0.069206512   0.049560289   0.325901637   0.125179899

   49    7.2  1.5 -0.5   0.155203451  -0.042122801   0.010760741  -0.089646513   0.024441329   0.005760122   0.013960437   0.061474082
                         0.028117002   0.122002457   0.032675763   0.078181222  -0.152580142  -0.198987783   0.099767362  -0.237329749

   50    8.2  1.5 -0.5   0.117604235  -0.026736899  -0.018497414   0.152393570  -0.023000115  -0.003014172   0.012524064   0.061345562
                         0.013996362   0.089568473  -0.065750581  -0.128334610   0.162846107   0.207903022   0.102446031  -0.220860208

   51    9.2  1.5 -0.5   0.004069952  -0.000967677   0.000662467  -0.005657935   0.010423278   0.001679762   0.001052173   0.006370987
                         0.000551796   0.003090972   0.002474461   0.004725661  -0.070315955  -0.089848081   0.009616197  -0.020526760

   52    1.2  1.5 -1.5  -0.012056270  -0.076107153  -0.028359053   0.006136428  -0.004232346   0.003691519   0.017373299   0.008088474
                        -0.053948075   0.000865841  -0.001439812   0.012216306  -0.000390155  -0.000095920  -0.005521072   0.000671143

   53    2.2  1.5 -1.5  -0.010302970  -0.138978022   0.065437682   0.125566682   0.008131083   0.010276556   0.000102556  -0.001254000
                         0.182429656  -0.032607460  -0.018059299   0.148362604   0.001539170   0.000629675  -0.000127425   0.000136127

   54    3.2  1.5 -1.5   0.240555443  -0.049485983  -0.005709862   0.007612343  -0.001397952  -0.000734074  -0.000322335  -0.001658315
                         0.021909798   0.184809802  -0.005197906  -0.020793960   0.006084477   0.007858819  -0.002792491   0.006036435

   55    4.2  1.5 -1.5   0.042058849   0.146762211  -0.175499220   0.103366881  -0.180176365   0.302476225  -0.084308839  -0.002632666
                        -0.063357685   0.042113242  -0.027937689   0.069910477  -0.034410467  -0.048299008   0.025561124  -0.005765403

   56    5.2  1.5 -1.5   0.086150513   0.186307375   0.109478205   0.193616546   0.304387187   0.166496662  -0.004020006   0.091294102
                        -0.305286746   0.108976296  -0.058378044  -0.005832698  -0.042403252  -0.091245470   0.006342218  -0.003383221

   57    6.2  1.5 -1.5  -0.114589631   0.127758916   0.057349273  -0.255713156   0.054256967   0.099270033  -0.015467682   0.009398383
                        -0.144965705  -0.074315100   0.119685719   0.293909332   0.216052718   0.270964074  -0.025107279   0.080178712

   58    7.2  1.5 -1.5   0.073962308  -0.002613954   0.001842324  -0.044648135   0.012369848   0.010432206   0.067604901  -0.009106378
                        -0.011738253  -0.088484972  -0.165727713   0.016234281  -0.214123621   0.158908620   0.220727282   0.100366951

   59    8.2  1.5 -1.5  -0.108344616   0.003353013   0.006258847  -0.045061267   0.015075138   0.008242924  -0.075231116   0.008820689
                         0.021213190   0.138814392  -0.136847177   0.018884214  -0.196803160   0.156949501  -0.231467977  -0.108284935

   60    9.2  1.5 -1.5  -0.004927117   0.000162938  -0.000195479   0.001621963  -0.001913114  -0.000327292  -0.029837601   0.003671600
                         0.000975244   0.006337089   0.005060391  -0.000666823   0.019715358  -0.015787585  -0.093660763  -0.043735837


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5   0.004358916  -0.006636026  -0.000386708  -0.003459081  -0.003945528   0.001101472  -0.011987567  -0.000291215
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.005875456   0.004820982  -0.000223921  -0.002046176  -0.000379350  -0.001702612   0.000369935  -0.012000736
                        -0.002492996  -0.002397750   0.000272422  -0.000031111  -0.001061178  -0.003646156  -0.000779885  -0.000074118

    3    3.2  0.5  0.5  -0.002784738  -0.002138953   0.000227906   0.000071021   0.000286167  -0.000652810  -0.000037232   0.000361886
                        -0.002906654  -0.008000128  -0.002253278   0.000243662  -0.000296999   0.000067830  -0.006493072   0.010249260

    4    4.2  0.5  0.5  -0.054851430   0.025568554   0.027382518   0.224875605  -0.290504530   0.010809271  -0.000547246  -0.000350231
                         0.009444212   0.008204378  -0.026591387   0.007094479  -0.044875626  -0.151767174  -0.000007485  -0.000015376

    5    5.2  0.5  0.5   0.042994563   0.130976226  -0.169075191   0.023587890  -0.133425578   0.164441869  -0.001623113   0.002586794
                        -0.050856504  -0.067725993   0.043907915   0.007141543   0.072904537   0.242383231   0.000407185  -0.000357954

    6    6.2  0.5  0.5   0.037812818   0.054223717   0.008836245  -0.035000243  -0.012521010   0.023010678  -0.000319902   0.000465854
                         0.022610482   0.077869618  -0.387832221   0.041284628   0.011843371   0.042525820  -0.000345781   0.000592007

    7    7.2  0.5  0.5  -0.015915728  -0.009852934  -0.028043767   0.005165079  -0.000841273   0.006524387  -0.000005473   0.000035247
                        -0.095072773   0.042043689  -0.043664283  -0.397494113  -0.013221020  -0.001418052  -0.000542154  -0.000348210

    8    8.2  0.5  0.5   0.017043555   0.012318746  -0.003940584   0.001750122  -0.052842724  -0.178585052  -0.000004411  -0.000048938
                         0.112997491  -0.050541743  -0.005047862  -0.046003830   0.343683543  -0.012091418   0.000780876   0.000495169

    9    9.2  0.5  0.5  -0.154385916   0.067727953   0.012635907   0.109489046   0.095637842  -0.002693951  -0.252419179  -0.162895391
                         0.024950637   0.017108657  -0.007501727   0.000808747   0.014204652   0.050438186  -0.000400941  -0.016348356

   10   10.2  0.5  0.5  -0.064656358  -0.074056036   0.004981682  -0.004506440  -0.000355195  -0.006231701   0.030403137  -0.021814222
                        -0.068832291  -0.194426631  -0.059432974   0.006440985  -0.003244826   0.002190986   0.160934945  -0.255499113

   11   11.2  0.5  0.5   0.062177603   0.178686910  -0.014271098   0.002371201   0.042345295  -0.051148160  -0.161907906   0.252990846
                        -0.058233060  -0.067197573  -0.000422417   0.001098365  -0.023006108  -0.076424587   0.031164202  -0.021177191

   12   12.2  0.5  0.5   0.062765135   0.041226110  -0.007876467   0.000999742   0.019955086   0.071892608   0.000822065  -0.033729807
                         0.398815541  -0.177755784  -0.012763639  -0.110997456  -0.138142823   0.004357685   0.489791490   0.311489126

   13    1.2  0.5 -0.5  -0.005699571  -0.003743799  -0.003443526   0.000384969   0.000475243   0.001702342  -0.000289673   0.011924119
                         0.003398784   0.002232513  -0.000327670   0.000036632   0.000993673   0.003559385   0.000029922  -0.001231722

   14    2.2  0.5 -0.5   0.005368720  -0.006323171  -0.002039922   0.000197108  -0.004023923   0.001120997  -0.011929603  -0.000448110
                        -0.000409783   0.000868050  -0.000162858   0.000292408   0.000037195  -0.000115634   0.001306802  -0.000737746

   15    3.2  0.5 -0.5   0.002260328   0.000903059   0.000093783  -0.000013433  -0.000220470   0.000144462  -0.000693141  -0.000630128
                         0.007966686  -0.003922740  -0.000235839  -0.002264735  -0.000618186  -0.000386304  -0.010232196  -0.006462531

   16    4.2  0.5 -0.5   0.017758349   0.051948025   0.224536435  -0.024740448  -0.132250164   0.165825157  -0.000346797   0.000543580
                        -0.020142090  -0.019981874   0.014239343  -0.029065692   0.075233035   0.242711188   0.000051281  -0.000063675

   17    5.2  0.5 -0.5   0.147180603  -0.062974564   0.024158322   0.164155609   0.289611834  -0.008201514   0.002609882   0.001656361
                        -0.008913599  -0.021659196  -0.004875005   0.059726554   0.043769219   0.151822896   0.000090266   0.000238255

   18    6.2  0.5 -0.5   0.006689223  -0.020896343  -0.030932063   0.027941895   0.048292097  -0.005281947   0.000402559   0.000282680
                        -0.094652750   0.038786415  -0.044414468  -0.386925266   0.002410414   0.016405553  -0.000636740  -0.000376820

   19    7.2  0.5 -0.5  -0.029996104  -0.035023829  -0.032511800   0.032053872   0.001535751   0.012290076   0.000070839  -0.000050263
                        -0.031064221  -0.089807984   0.396195950  -0.040811417   0.006497690  -0.004945419   0.000342745  -0.000539847

   20    8.2  0.5 -0.5   0.036466411   0.043235690  -0.002615580   0.004401036  -0.087960575  -0.287248156  -0.000099557   0.000084623
                         0.037100137   0.105780862   0.045962747  -0.004651881  -0.155890219   0.195957210  -0.000487520   0.000776290

   21    9.2  0.5 -0.5   0.049407826   0.145378465   0.109073310  -0.011868465   0.044339539  -0.054078485  -0.160353427   0.251041981
                        -0.049382674  -0.057642410   0.009566521  -0.008664962  -0.024192420  -0.080149151   0.032999328  -0.026334887

   22   10.2  0.5 -0.5   0.035974331   0.020278306  -0.003876037   0.000670661  -0.000712180   0.003080513   0.004553769  -0.013706155
                         0.204919151  -0.092234046  -0.006838905  -0.059637620  -0.006567139  -0.001079584   0.256388222   0.163207072

   23   11.2  0.5 -0.5   0.187887861  -0.083228615   0.002464584   0.014246939  -0.091013473   0.002484181   0.253827776   0.164253084
                        -0.033803510  -0.018169786  -0.000868808   0.000931349  -0.013168119  -0.048127268  -0.004929703   0.014363221

   24   12.2  0.5 -0.5   0.126449884   0.150354102  -0.009519274   0.009050117   0.034950078   0.116013144  -0.065556788   0.049508358
                         0.131556595   0.374682455   0.110593029  -0.011960126   0.062976412  -0.077605384  -0.306374743   0.487283595

   25    1.2  1.5  1.5   0.014633873   0.034184584   0.154871658  -0.014656805  -0.093085328   0.115790480  -0.001956381  -0.000878190
                        -0.012160536  -0.014712973   0.013942466  -0.012802896   0.052670765   0.173491484  -0.000073705  -0.000226688

   26    2.2  1.5  1.5   0.121750636  -0.056246978   0.009054030   0.108187909   0.047565777  -0.002480729  -0.097522969  -0.062411077
                        -0.026155606  -0.009404023  -0.008530683  -0.005314365   0.003674174   0.020542565   0.005670857  -0.003214995

   27    3.2  1.5  1.5  -0.026427290  -0.009691733  -0.008034171  -0.005492595   0.003374678   0.021260334   0.005693510  -0.003170381
                        -0.122811237   0.055923567  -0.012035457  -0.109458687  -0.040561684   0.000421238   0.097083537   0.062126898

   28    4.2  1.5  1.5   0.139537598   0.234391595   0.059139418  -0.025919403   0.018565579  -0.042120653   0.091235210  -0.223842553
                        -0.074473743  -0.112961141   0.006000704  -0.012949916  -0.030832243  -0.081325951  -0.039993955   0.008161929

   29    5.2  1.5  1.5   0.093451662  -0.147337493  -0.031252594  -0.046273030  -0.065030655   0.029860440  -0.140641901   0.023338364
                         0.062950335   0.005505161  -0.000989426  -0.019314633  -0.018355842   0.000498537  -0.026341598  -0.037862973

   30    6.2  1.5  1.5   0.030150910  -0.039537636   0.001050475  -0.021624000  -0.030714829  -0.025994539  -0.040453187  -0.029992464
                        -0.137265675   0.050134783   0.007314651   0.055272230   0.046507194  -0.012273359   0.097201284   0.061832158

   31    7.2  1.5  1.5  -0.047177685  -0.053094914   0.003426839  -0.002290982  -0.014002945  -0.050042655  -0.013244831   0.008700868
                        -0.049107568  -0.147948912  -0.028776707   0.001658249  -0.028648544   0.032219257  -0.076660643   0.116154261

   32    8.2  1.5  1.5  -0.077954839  -0.093261434   0.004977721  -0.004956393  -0.017584671  -0.057726983  -0.025111339   0.019508760
                        -0.080493470  -0.228703898  -0.061023569   0.006790377  -0.031168151   0.039021294  -0.114355795   0.182634062

   33    9.2  1.5  1.5  -0.027887159  -0.033630067   0.032715327  -0.030100010   0.121288605   0.399833513   0.000118579  -0.000088526
                        -0.028808024  -0.082103214  -0.359634344   0.038703284   0.216983412  -0.267642400   0.000545042  -0.000864548

   34    1.2  1.5  0.5   0.048118130  -0.022291874  -0.009516006  -0.094687969  -0.066385510  -0.000015649  -0.114068577  -0.074038104
                        -0.007377231  -0.004659376   0.007073749  -0.000814283  -0.011053804  -0.038715098   0.000090365  -0.007860066

   35    2.2  1.5  0.5  -0.014910238  -0.039634835   0.074215731  -0.007279920   0.098406782  -0.118776528   0.037841150  -0.055870235
                         0.013760953   0.016312566  -0.008303432  -0.004116975  -0.053296676  -0.178484300  -0.009739757   0.009167499

   36    3.2  1.5  0.5   0.000781988   0.001881374   0.018503614  -0.020580596   0.000442770   0.026778486  -0.009831940   0.008785348
                        -0.000976977  -0.001405142  -0.253959842   0.027616458   0.013886616  -0.002887125  -0.034750018   0.055617333

   37    4.2  1.5  0.5  -0.038741828  -0.089692359  -0.022905852   0.012267542  -0.034009312   0.003415365  -0.041377661   0.068132526
                         0.021454380   0.000549304  -0.009836517   0.001316296  -0.005032579   0.014844732  -0.010253533   0.015420864

   38    5.2  1.5  0.5  -0.096916728  -0.233665510  -0.061289832   0.001285834  -0.026207822   0.002382839  -0.112055216   0.168983706
                         0.039780084   0.001181774  -0.023576043   0.007155720  -0.000251576   0.070860223  -0.019200991   0.049015096

   39    6.2  1.5  0.5   0.039836333  -0.002873546  -0.030976279   0.006807123   0.011878738   0.089145989  -0.020854724   0.052365972
                         0.097882627   0.248502252   0.046797469  -0.001387686   0.049922923  -0.030834223   0.123060376  -0.178138794

   40    7.2  1.5  0.5  -0.038311700  -0.025548322   0.005285899  -0.000580680  -0.014148229  -0.049796586   0.000096017  -0.012580844
                        -0.235485928   0.098593738   0.006858059   0.070241642   0.090761552  -0.001995360   0.178990368   0.119925536

   41    8.2  1.5  0.5   0.024417926   0.016229714  -0.003799739   0.000391289   0.006686303   0.023640485  -0.000088071   0.007981945
                         0.153873318  -0.067920493  -0.006011426  -0.053634409  -0.044912476   0.001285957  -0.117561429  -0.075462662

   42    9.2  1.5  0.5   0.033862388   0.022591737   0.036680290  -0.003395906  -0.041127357  -0.142922745  -0.000002912  -0.000094879
                         0.215654615  -0.096175783   0.059670372   0.521862928   0.275016021  -0.009116898   0.001388051   0.000883959

   43    1.2  1.5 -0.5   0.016759714   0.045106258   0.094339314  -0.008803135   0.034932861  -0.038614759   0.072838614  -0.113474121
                        -0.015419125  -0.018308564   0.008158940  -0.007943368  -0.016689947  -0.055119170  -0.015425879   0.011630659

   44    2.2  1.5 -0.5   0.042396524  -0.019854122   0.007637175   0.073095436   0.212263773  -0.005621898   0.056516486   0.038641625
                        -0.006289252  -0.004182448  -0.003408853   0.015296370   0.030142989   0.111771305   0.003378311   0.005800028

   45    3.2  1.5 -0.5  -0.002335555   0.001172017   0.017872010  -0.005636592  -0.008949312   0.012718592  -0.003024168  -0.006209338
                        -0.000243266   0.000438597   0.029441823   0.254570646  -0.025403398  -0.005592100   0.056225656   0.035576325

   46    4.2  1.5 -0.5   0.077316590  -0.044263027  -0.012337067  -0.023734639  -0.014865497  -0.019213747  -0.066187421  -0.040105107
                        -0.045466096   0.001415662   0.000148302   0.007622469   0.003323818  -0.028509508   0.022339861   0.014450817

   47    5.2  1.5 -0.5   0.201296631  -0.103614372  -0.001957895  -0.063247528  -0.064953340  -0.011534614  -0.163053011  -0.109489230
                        -0.118661845   0.015471559   0.007001738   0.017664190   0.028423805  -0.023534356   0.066118744   0.030613037

   48    6.2  1.5 -0.5   0.129743850  -0.015917953  -0.006645061  -0.026403975  -0.010646515   0.050162256  -0.070392570  -0.033388797
                         0.211962638  -0.104472775  -0.002026269  -0.049521339  -0.093725174  -0.010823623  -0.171815340  -0.120266221

   49    7.2  1.5 -0.5   0.072439940   0.087703946  -0.006075751   0.005911777   0.023285373   0.075774441   0.024836605  -0.018295750
                         0.071595370   0.221877052   0.069980788  -0.006326499   0.044062147  -0.051923654   0.117998114  -0.178052876

   50    8.2  1.5 -0.5  -0.048726378  -0.057837408   0.004691128  -0.004352100  -0.011360055  -0.037632078  -0.015693487   0.011991831
                        -0.050023365  -0.144665363  -0.053430294   0.005624454  -0.020771985   0.025409916  -0.074243109   0.116948251

   51    9.2  1.5 -0.5  -0.068662171  -0.081368348  -0.046054174   0.042167777   0.069890264   0.230355749   0.000185203  -0.000145519
                        -0.071032908  -0.202565461   0.519837918  -0.055927413   0.125001519  -0.155761034   0.000869531  -0.001380405

   52    1.2  1.5 -1.5   0.036896130  -0.018797068  -0.015803684  -0.155495973   0.206471232  -0.007353245  -0.000850249   0.001938453
                        -0.004871651  -0.002949424   0.011356921  -0.000790847   0.029603387   0.106700598   0.000315722  -0.000274333

   53    2.2  1.5 -1.5  -0.043493105  -0.117965725   0.107197996  -0.008205225   0.017461756  -0.023837377  -0.061750407   0.097589482
                         0.036885064   0.039892616   0.015538845  -0.009349988  -0.011101264  -0.041325321   0.009610717  -0.004379642

   54    3.2  1.5 -1.5  -0.036966532  -0.040202481  -0.015836652   0.009138132   0.009553022   0.035135930  -0.009537139   0.004311957
                        -0.043067976  -0.119015806   0.108446177  -0.011220279   0.018997869  -0.020545197  -0.061472317   0.097154703

   55    4.2  1.5 -1.5   0.259170477  -0.157989826  -0.027029564  -0.059441914  -0.091540129   0.019804409  -0.223496440  -0.094861700
                        -0.023028315   0.007502962   0.010436401   0.000371586  -0.002909372  -0.030051511   0.014881091  -0.030407858

   56    5.2  1.5 -1.5  -0.129365271  -0.048022677  -0.047894580   0.031205784   0.013333368   0.044617589   0.027105259   0.137190915
                         0.070733798   0.101930272   0.014844447   0.001975505   0.026722944   0.050746367   0.035264555  -0.040653131

   57    6.2  1.5 -1.5  -0.059635822  -0.096199695  -0.016290957  -0.001738650  -0.022287819  -0.028703345  -0.036186974   0.050226508
                        -0.022809862  -0.102452729  -0.057072073   0.007182250  -0.018155013   0.047774865  -0.058423168   0.092530254

   58    7.2  1.5 -1.5   0.030172914   0.015368612  -0.002123598  -0.000685481   0.007474540   0.031886481  -0.003280033   0.005297848
                         0.154264531  -0.066340734  -0.001867811  -0.028971921  -0.059046415   0.000271761  -0.116433495  -0.077615801

   59    8.2  1.5 -1.5   0.037034984   0.025727620  -0.004290869   0.000825277   0.010295382   0.035704874   0.000639856   0.013228373
                         0.244195778  -0.109060741  -0.007229349  -0.061220688  -0.068913505   0.002415836  -0.183671943  -0.116330724

   60    9.2  1.5 -1.5   0.013166643   0.009197156  -0.026298389   0.001499075  -0.068935974  -0.248078897   0.000000775  -0.000061948
                         0.087741430  -0.039025738  -0.041380545  -0.361116196   0.476179718  -0.015798338   0.000869068   0.000554341


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5  -0.000040229  -0.000000000   0.000053979  -0.000168011
                         0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000027361  -0.000031430  -0.000133679  -0.000031461
                         0.000013755  -0.000024937   0.000116655   0.000033601

    3    3.2  0.5  0.5  -0.000058479   0.000075005   0.000020844   0.000024393
                         0.000111717  -0.000058797   0.000049851  -0.000017137

    4    4.2  0.5  0.5   0.208003906   0.259615433  -0.007289295  -0.084909350
                        -0.014030512   0.094581677   0.038112584   0.007246083

    5    5.2  0.5  0.5   0.170953314  -0.083256112   0.154620274  -0.088184363
                         0.110213782  -0.123911078  -0.181321564  -0.017642279

    6    6.2  0.5  0.5   0.060323446  -0.066314589   0.221668899   0.039531238
                        -0.046292466   0.009734170   0.233406076  -0.114175877

    7    7.2  0.5  0.5  -0.003431686   0.021844211   0.113591442   0.037213183
                        -0.048676210  -0.061243718   0.045931352   0.327253005

    8    8.2  0.5  0.5  -0.011463285   0.095601026  -0.025414189  -0.006095582
                        -0.209914084  -0.265083585  -0.012437676  -0.075968035

    9    9.2  0.5  0.5  -0.052634906  -0.067034616  -0.046099603  -0.309297601
                         0.002848436  -0.027782189   0.109543822   0.034946385

   10   10.2  0.5  0.5   0.129599396  -0.157029388  -0.049405852  -0.013716312
                        -0.230136379   0.120108300  -0.065747928   0.028025670

   11   11.2  0.5  0.5  -0.169254570   0.087832105   0.182714431  -0.080021003
                        -0.095716645   0.115648943  -0.133280795  -0.035847894

   12   12.2  0.5  0.5   0.000027274  -0.000264344   0.000346062   0.000106686
                         0.000566219   0.000711364   0.000148830   0.001007658

   13    1.2  0.5 -0.5  -0.000000000   0.000026049  -0.000121255  -0.000038957
                         0.000000000   0.000030657   0.000116297   0.000037364

   14    2.2  0.5 -0.5  -0.000039355  -0.000028199  -0.000045964   0.000177225
                        -0.000007804  -0.000011944  -0.000002473  -0.000008342

   15    3.2  0.5 -0.5   0.000003761  -0.000047267   0.000029466   0.000019463
                         0.000095230   0.000116902  -0.000004517   0.000050407

   16    4.2  0.5 -0.5   0.240182282  -0.123995098  -0.066295369   0.031642229
                         0.136595527  -0.167593842   0.053544630   0.022460460

   17    5.2  0.5 -0.5  -0.148336210  -0.194684051  -0.051431266  -0.237101095
                         0.016790010  -0.058908687   0.073773687  -0.023832951

   18    6.2  0.5 -0.5  -0.035522228  -0.003783689   0.107562395   0.001583573
                        -0.056837928  -0.075944679   0.055037995   0.321889716

   19    7.2  0.5 -0.5  -0.032526004   0.039315658  -0.199667238  -0.050186051
                         0.056302946  -0.028903787  -0.261939581   0.111776854

   20    8.2  0.5 -0.5  -0.140102466   0.167387153   0.048185785   0.009732239
                         0.244499820  -0.127188327   0.059045988  -0.026568032

   21    9.2  0.5 -0.5  -0.064577696   0.031911592  -0.247411972   0.109096523
                        -0.033093973   0.041954704   0.188874487   0.047148394

   22   10.2  0.5 -0.5  -0.010151724   0.091456371  -0.029298496  -0.009854128
                        -0.197436508  -0.247779112  -0.010731892  -0.081649399

   23   11.2  0.5 -0.5   0.145003126   0.182536576  -0.032937805  -0.224123056
                        -0.007952976   0.067001373   0.081262128   0.030285138

   24   12.2  0.5 -0.5   0.000370925  -0.000449147  -0.000620504  -0.000146735
                        -0.000662066   0.000345855  -0.000801081   0.000346955

   25    1.2  1.5  1.5  -0.242258635   0.125881196   0.072813460  -0.026642885
                        -0.143218229   0.170385192  -0.051553941  -0.015091957

   26    2.2  1.5  1.5   0.036805485   0.039342661   0.022543179   0.189727253
                        -0.000028156   0.010671825  -0.067214256  -0.031901630

   27    3.2  1.5  1.5  -0.003193570   0.014313722  -0.067944480  -0.032224810
                        -0.033177336  -0.041862481  -0.023967456  -0.189130803

   28    4.2  1.5  1.5   0.037546024  -0.006131123   0.123738862   0.006084963
                         0.015948564  -0.008590231  -0.096871130  -0.007527841

   29    5.2  1.5  1.5   0.012127469   0.029826098  -0.005265904   0.153525222
                         0.002541475   0.029245210  -0.005166536   0.046084457

   30    6.2  1.5  1.5   0.007901169   0.025367681  -0.042783085   0.040171835
                        -0.021725415  -0.025196574  -0.040903530  -0.144559597

   31    7.2  1.5  1.5  -0.045350649   0.053383509  -0.064118406  -0.018470961
                         0.076890212  -0.038630704  -0.091116205   0.041840699

   32    8.2  1.5  1.5   0.047885230  -0.057426132  -0.063211300  -0.014839823
                        -0.083986605   0.043510179  -0.079923371   0.034799116

   33    9.2  1.5  1.5  -0.148236922   0.175968015  -0.051965376  -0.015409277
                         0.251330373  -0.129519131  -0.074547451   0.031141774

   34    1.2  1.5  0.5  -0.014113088  -0.023878950  -0.013163689  -0.109905552
                         0.002212310  -0.011061147   0.036408529   0.011684464

   35    2.2  1.5  0.5   0.180384610  -0.090735308   0.123918607  -0.058624937
                         0.111064242  -0.128901514  -0.117170355  -0.019507244

   36    3.2  1.5  0.5  -0.069449814   0.074506449  -0.169041527  -0.038451367
                         0.089783067  -0.041672460  -0.208893077   0.093967592

   37    4.2  1.5  0.5   0.044337433   0.142944134   0.004001354  -0.041417079
                        -0.013008531   0.059509004   0.001710949   0.007537092

   38    5.2  1.5  0.5  -0.153271979   0.031884564   0.021544402   0.000163958
                        -0.014548346   0.030997875  -0.035965017  -0.003239391

   39    6.2  1.5  0.5   0.019241571  -0.051558010   0.032363108   0.001315074
                        -0.129183853   0.079947664   0.021679180  -0.017830802

   40    7.2  1.5  0.5  -0.003714674   0.036727638  -0.036378680  -0.011370825
                        -0.069997516  -0.092498366  -0.015683680  -0.102483143

   41    8.2  1.5  0.5  -0.005398642   0.027135781   0.039667850   0.014220507
                        -0.065742622  -0.083030366   0.015838335   0.111848446

   42    9.2  1.5  0.5   0.001378690  -0.028699737   0.119007738   0.038232307
                         0.057650439   0.072402234   0.049407824   0.340363300

   43    1.2  1.5 -0.5   0.023891250  -0.007452644   0.087407536  -0.034702272
                         0.011034554  -0.012187357  -0.067643770  -0.017164381

   44    2.2  1.5 -0.5   0.156982098   0.201439109   0.028807106   0.170538090
                        -0.014321924   0.065545089  -0.054658636  -0.001213732

   45    3.2  1.5 -0.5  -0.016488152   0.023448680   0.092794888   0.022597218
                        -0.083761242  -0.111060502   0.041201028   0.267769903

   46    4.2  1.5 -0.5  -0.137908072   0.018796329   0.035108147   0.001703486
                        -0.070396807   0.042210518  -0.023229296  -0.004004537

   47    5.2  1.5 -0.5  -0.044267784  -0.110333434  -0.002360633   0.040443690
                        -0.004225749  -0.107380107  -0.002224398   0.011043174

   48    6.2  1.5 -0.5  -0.027538968  -0.085984855  -0.013291563   0.008350359
                         0.091057469   0.098312312  -0.011958314  -0.038047722

   49    7.2  1.5 -0.5   0.046706179  -0.055746738  -0.062732340  -0.015398504
                        -0.087882877   0.042494143  -0.081833634   0.036500305

   50    8.2  1.5 -0.5   0.045702051  -0.053594715   0.067158361   0.017665267
                        -0.074442695   0.038455744   0.090565182  -0.038888681

   51    9.2  1.5 -0.5  -0.036590218   0.044825084   0.208006665   0.051688617
                         0.068752558  -0.036279275   0.272106804  -0.118035002

   52    1.2  1.5 -1.5   0.211352336   0.266006727  -0.008781707  -0.088235546
                        -0.014400676   0.091875614   0.029334146   0.013194593

   53    2.2  1.5 -1.5   0.033607654  -0.023810888   0.159009688  -0.062795209
                         0.023070726  -0.028065747  -0.108305418  -0.032904603

   54    3.2  1.5 -1.5  -0.022632741   0.027350599   0.107659315   0.032445727
                         0.038014589  -0.019049389   0.158802931  -0.064328579

   55    4.2  1.5 -1.5  -0.010516195  -0.036465416   0.009602322  -0.156357262
                         0.000890155  -0.018284802   0.001220886   0.015739397

   56    5.2  1.5 -1.5   0.041599270  -0.009789521   0.078900544   0.000224166
                         0.003791990  -0.007596043  -0.139529477  -0.007373777

   57    6.2  1.5 -1.5  -0.002774858   0.011439613   0.129056302   0.002563448
                         0.035646693  -0.020088738   0.076522705  -0.059134760

   58    7.2  1.5 -1.5   0.005128554  -0.029228445  -0.042292709  -0.016795880
                         0.065694964   0.084347401  -0.017411125  -0.110141869

   59    8.2  1.5 -1.5  -0.004027849   0.032995035  -0.034797915  -0.009702874
                        -0.071935199  -0.090873939  -0.014842639  -0.101436029

   60    9.2  1.5 -1.5   0.015243395  -0.095538994  -0.032677285  -0.014097925
                         0.217962351   0.275705354  -0.011808936  -0.089771773


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.064%  11.879%   0.419%  54.234%  32.999%   0.308%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  12.694%  13.316%  38.323%   2.265%   0.142%  33.164%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  16.376%  45.568%   3.453%   1.203%  10.834%  22.470%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.420%   0.131%   0.298%   0.011%
    5    5.2  0.5  0.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.161%   0.533%   0.047%   1.374%
    6    6.2  0.5  0.5   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   0.547%   1.780%   0.006%   0.143%
    7    7.2  0.5  0.5   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%   0.413%   0.121%   1.517%   0.051%
    8    8.2  0.5  0.5   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.004%   0.001%   0.228%   0.008%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.009%   0.004%   0.000%   0.000%   0.004%   0.000%
   13    1.2  0.5 -0.5  11.879%   0.064%  54.234%   0.419%   0.308%  32.999%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5  13.316%  12.694%   2.265%  38.323%  33.164%   0.142%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5  45.568%  16.376%   1.203%   3.453%  22.470%  10.834%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.131%   0.420%   0.011%   0.298%
   17    5.2  0.5 -0.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.533%   0.161%   1.374%   0.047%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%   1.780%   0.547%   0.143%   0.006%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   0.121%   0.413%   0.051%   1.517%
   20    8.2  0.5 -0.5   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%   0.004%   0.008%   0.228%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.004%   0.009%   0.000%   0.000%   0.000%   0.004%
   25    1.2  1.5  1.5   0.004%   0.011%   0.001%   0.000%   0.000%   0.000%   6.348%  20.578%   0.087%   3.773%
   26    2.2  1.5  1.5   0.000%   0.000%   0.001%   0.004%   0.002%   0.001%   0.010%   0.007%  11.096%   0.328%
   27    3.2  1.5  1.5   0.000%   0.000%   0.001%   0.004%   0.002%   0.001%   1.781%   0.549%   0.071%   0.002%
   28    4.2  1.5  1.5   0.000%   0.000%   0.004%   0.000%   0.002%   0.009%   0.004%   0.286%   0.400%   0.826%
   29    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.004%   0.004%   0.000%   0.606%   0.058%   1.248%   0.356%
   30    6.2  1.5  1.5   0.000%   0.000%   0.001%   0.003%   0.002%   0.001%   0.213%   0.096%   3.622%   0.126%
   31    7.2  1.5  1.5   0.001%   0.002%   0.002%   0.001%   0.001%   0.002%   1.444%   4.583%   0.009%   0.074%
   32    8.2  1.5  1.5   0.001%   0.002%   0.002%   0.000%   0.003%   0.006%   0.246%   0.793%   0.072%   2.097%
   33    9.2  1.5  1.5   0.011%   0.031%   0.003%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%
   34    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.002%   0.001%   5.973%   1.527%  36.864%   1.268%
   35    2.2  1.5  0.5   0.002%   0.006%   0.003%   0.001%   0.000%   0.001%   7.738%  26.112%   0.130%   1.851%
   36    3.2  1.5  0.5   0.001%   0.002%   0.008%   0.002%   0.000%   0.001%   2.191%   7.114%   0.780%  23.799%
   37    4.2  1.5  0.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.001%   1.899%   0.113%   0.048%   0.237%
   38    5.2  1.5  0.5   0.000%   0.004%   0.000%   0.000%   0.002%   0.005%   0.004%   1.210%   0.041%   1.695%
   39    6.2  1.5  0.5   0.001%   0.003%   0.000%   0.000%   0.003%   0.006%   0.053%   0.165%   0.081%   2.572%
   40    7.2  1.5  0.5   0.002%   0.001%   0.000%   0.002%   0.005%   0.003%   1.643%   0.515%   0.051%   0.000%
   41    8.2  1.5  0.5   0.001%   0.001%   0.001%   0.002%   0.002%   0.001%   1.549%   0.477%   2.614%   0.084%
   42    9.2  1.5  0.5   0.003%   0.001%   0.008%   0.034%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   43    1.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.002%   1.527%   5.973%   1.268%  36.864%
   44    2.2  1.5 -0.5   0.006%   0.002%   0.001%   0.003%   0.001%   0.000%  26.112%   7.738%   1.851%   0.130%
   45    3.2  1.5 -0.5   0.002%   0.001%   0.002%   0.008%   0.001%   0.000%   7.114%   2.191%  23.799%   0.780%
   46    4.2  1.5 -0.5   0.000%   0.004%   0.000%   0.000%   0.001%   0.000%   0.113%   1.899%   0.237%   0.048%
   47    5.2  1.5 -0.5   0.004%   0.000%   0.000%   0.000%   0.005%   0.002%   1.210%   0.004%   1.695%   0.041%
   48    6.2  1.5 -0.5   0.003%   0.001%   0.000%   0.000%   0.006%   0.003%   0.165%   0.053%   2.572%   0.081%
   49    7.2  1.5 -0.5   0.001%   0.002%   0.002%   0.000%   0.003%   0.005%   0.515%   1.643%   0.000%   0.051%
   50    8.2  1.5 -0.5   0.001%   0.001%   0.002%   0.001%   0.001%   0.002%   0.477%   1.549%   0.084%   2.614%
   51    9.2  1.5 -0.5   0.001%   0.003%   0.034%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   52    1.2  1.5 -1.5   0.011%   0.004%   0.000%   0.001%   0.000%   0.000%  20.578%   6.348%   3.773%   0.087%
   53    2.2  1.5 -1.5   0.000%   0.000%   0.004%   0.001%   0.001%   0.002%   0.007%   0.010%   0.328%  11.096%
   54    3.2  1.5 -1.5   0.000%   0.000%   0.004%   0.001%   0.001%   0.002%   0.549%   1.781%   0.002%   0.071%
   55    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.004%   0.009%   0.002%   0.286%   0.004%   0.826%   0.400%
   56    5.2  1.5 -1.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.004%   0.058%   0.606%   0.356%   1.248%
   57    6.2  1.5 -1.5   0.000%   0.000%   0.003%   0.001%   0.001%   0.002%   0.096%   0.213%   0.126%   3.622%
   58    7.2  1.5 -1.5   0.002%   0.001%   0.001%   0.002%   0.002%   0.001%   4.583%   1.444%   0.074%   0.009%
   59    8.2  1.5 -1.5   0.002%   0.001%   0.000%   0.002%   0.006%   0.003%   0.793%   0.246%   2.097%   0.072%
   60    9.2  1.5 -1.5   0.031%   0.011%   0.001%   0.003%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.001%   0.013%   0.003%   0.000%   0.000%   0.002%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.008%   0.003%   0.004%   0.003%   0.002%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.012%   0.004%   0.002%   0.001%   0.000%   0.000%
    4    4.2  0.5  0.5   1.099%   0.063%   0.000%   0.027%   0.081%   0.253%   0.000%   0.000%   0.003%   0.595%
    5    5.2  0.5  0.5   0.007%   0.142%   0.207%   0.005%   0.100%   0.031%   0.001%   0.000%   0.011%   0.000%
    6    6.2  0.5  0.5   0.002%   0.010%   0.294%   0.006%   0.015%   0.006%   0.000%   0.000%   0.002%   0.000%
    7    7.2  0.5  0.5   0.122%   0.007%   0.007%   0.355%   0.004%   0.014%   0.000%   0.000%   0.001%   0.143%
    8    8.2  0.5  0.5   1.478%   0.086%   0.000%   0.014%   0.106%   0.332%   0.000%   0.000%   0.002%   0.299%
    9    9.2  0.5  0.5   0.000%   0.000%   0.182%   7.902%   0.144%   0.475%   3.086%   9.035%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.001%   0.525%   0.011%   6.034%   1.934%   9.266%   3.065%   0.001%   0.000%
   11   11.2  0.5  0.5   0.000%   0.002%   4.193%   0.101%   3.271%   1.028%   9.107%   3.120%   0.000%   0.000%
   12   12.2  0.5  0.5   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%   8.354%  25.172%   0.000%   0.001%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.013%   0.001%   0.000%   0.003%   0.002%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.003%   0.008%   0.003%   0.004%   0.000%   0.002%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.004%   0.012%   0.001%   0.002%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.063%   1.099%   0.027%   0.000%   0.253%   0.081%   0.000%   0.000%   0.595%   0.003%
   17    5.2  0.5 -0.5   0.142%   0.007%   0.005%   0.207%   0.031%   0.100%   0.000%   0.001%   0.000%   0.011%
   18    6.2  0.5 -0.5   0.010%   0.002%   0.006%   0.294%   0.006%   0.015%   0.000%   0.000%   0.000%   0.002%
   19    7.2  0.5 -0.5   0.007%   0.122%   0.355%   0.007%   0.014%   0.004%   0.000%   0.000%   0.143%   0.001%
   20    8.2  0.5 -0.5   0.086%   1.478%   0.014%   0.000%   0.332%   0.106%   0.000%   0.000%   0.299%   0.002%
   21    9.2  0.5 -0.5   0.000%   0.000%   7.902%   0.182%   0.475%   0.144%   9.035%   3.086%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.001%   0.000%   0.011%   0.525%   1.934%   6.034%   3.065%   9.266%   0.000%   0.001%
   23   11.2  0.5 -0.5   0.002%   0.000%   0.101%   4.193%   1.028%   3.271%   3.120%   9.107%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%  25.172%   8.354%   0.001%   0.000%
   25    1.2  1.5  1.5   0.140%   1.269%   2.512%   0.031%  25.131%   8.129%   0.002%   0.001%   0.000%   0.000%
   26    2.2  1.5  1.5  30.930%   1.855%   0.211%  10.889%   0.272%   0.504%   1.650%   4.975%   0.000%   0.000%
   27    3.2  1.5  1.5  39.039%   2.281%   0.252%  11.522%   0.220%   0.661%   1.573%   4.739%   0.000%   0.000%
   28    4.2  1.5  1.5   0.607%   0.005%   1.588%   0.153%   0.132%   0.003%   0.444%   0.080%   0.067%   3.884%
   29    5.2  1.5  1.5   3.377%   0.284%   0.134%   1.754%   0.003%   0.134%   0.025%   0.144%   0.098%  25.743%
   30    6.2  1.5  1.5   2.401%   0.133%   0.043%   1.814%   0.022%   0.095%   0.040%   0.113%   0.165%  29.060%
   31    7.2  1.5  1.5   0.004%   0.146%   1.000%   0.030%   0.621%   0.190%   0.161%   0.058%   1.081%   0.036%
   32    8.2  1.5  1.5   0.015%   0.275%   0.811%   0.017%   0.795%   0.254%   0.332%   0.109%   0.362%   0.003%
   33    9.2  1.5  1.5   0.000%   0.000%   1.130%   0.023%  11.642%   3.718%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   1.480%   0.084%   0.061%   4.064%   0.025%   0.192%   2.428%   7.022%   0.000%   0.001%
   35    2.2  1.5  0.5   0.003%   0.100%   8.210%   0.155%  14.899%   4.740%   1.622%   0.634%   0.000%   0.000%
   36    3.2  1.5  0.5   0.163%   2.769%  21.656%   0.462%   3.940%   1.248%   1.530%   0.511%   0.000%   0.000%
   37    4.2  1.5  0.5   5.320%   0.216%   0.009%   0.116%   0.052%   1.855%   0.040%   0.023%   0.134%  11.616%
   38    5.2  1.5  0.5   0.699%   0.198%   0.103%   0.012%   1.753%   0.035%   0.311%   0.095%   1.466%   1.629%
   39    6.2  1.5  0.5   0.006%   0.146%   0.142%   0.005%   1.389%   0.410%   0.296%   0.111%   1.133%   0.008%
   40    7.2  1.5  0.5   1.215%   0.066%   0.019%   0.784%   0.236%   0.847%   0.133%   0.365%   0.036%   5.915%
   41    8.2  1.5  0.5   1.654%   0.097%   0.023%   1.068%   0.206%   0.636%   0.056%   0.166%   0.081%  16.422%
   42    9.2  1.5  0.5   0.002%   0.000%   0.326%  15.017%   0.284%   0.872%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.084%   1.480%   4.064%   0.061%   0.192%   0.025%   7.022%   2.428%   0.001%   0.000%
   44    2.2  1.5 -0.5   0.100%   0.003%   0.155%   8.210%   4.740%  14.899%   0.634%   1.622%   0.000%   0.000%
   45    3.2  1.5 -0.5   2.769%   0.163%   0.462%  21.656%   1.248%   3.940%   0.511%   1.530%   0.000%   0.000%
   46    4.2  1.5 -0.5   0.216%   5.320%   0.116%   0.009%   1.855%   0.052%   0.023%   0.040%  11.616%   0.134%
   47    5.2  1.5 -0.5   0.198%   0.699%   0.012%   0.103%   0.035%   1.753%   0.095%   0.311%   1.629%   1.466%
   48    6.2  1.5 -0.5   0.146%   0.006%   0.005%   0.142%   0.410%   1.389%   0.111%   0.296%   0.008%   1.133%
   49    7.2  1.5 -0.5   0.066%   1.215%   0.784%   0.019%   0.847%   0.236%   0.365%   0.133%   5.915%   0.036%
   50    8.2  1.5 -0.5   0.097%   1.654%   1.068%   0.023%   0.636%   0.206%   0.166%   0.056%  16.422%   0.081%
   51    9.2  1.5 -0.5   0.000%   0.002%  15.017%   0.326%   0.872%   0.284%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   1.269%   0.140%   0.031%   2.512%   8.129%  25.131%   0.001%   0.002%   0.000%   0.000%
   53    2.2  1.5 -1.5   1.855%  30.930%  10.889%   0.211%   0.504%   0.272%   4.975%   1.650%   0.000%   0.000%
   54    3.2  1.5 -1.5   2.281%  39.039%  11.522%   0.252%   0.661%   0.220%   4.739%   1.573%   0.000%   0.000%
   55    4.2  1.5 -1.5   0.005%   0.607%   0.153%   1.588%   0.003%   0.132%   0.080%   0.444%   3.884%   0.067%
   56    5.2  1.5 -1.5   0.284%   3.377%   1.754%   0.134%   0.134%   0.003%   0.144%   0.025%  25.743%   0.098%
   57    6.2  1.5 -1.5   0.133%   2.401%   1.814%   0.043%   0.095%   0.022%   0.113%   0.040%  29.060%   0.165%
   58    7.2  1.5 -1.5   0.146%   0.004%   0.030%   1.000%   0.190%   0.621%   0.058%   0.161%   0.036%   1.081%
   59    8.2  1.5 -1.5   0.275%   0.015%   0.017%   0.811%   0.254%   0.795%   0.109%   0.332%   0.003%   0.362%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.023%   1.130%   3.718%  11.642%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.012%  18.910%   2.045%   0.428%
    5    5.2  0.5  0.5   0.009%   0.152%   0.000%   0.000%   0.001%   0.000%   5.755%   1.171%   2.442%  11.969%
    6    6.2  0.5  0.5   0.000%   0.003%   0.001%   0.000%   0.002%   0.000%   0.574%   0.217%   2.385%  11.408%
    7    7.2  0.5  0.5   0.048%   0.003%   0.000%   0.000%   0.000%   0.000%   0.481%   2.235%  35.116%   7.196%
    8    8.2  0.5  0.5   0.070%   0.004%   0.000%   0.000%   0.000%   0.000%   7.475%  35.326%   2.472%   0.490%
    9    9.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  18.910%   4.012%   0.428%   2.045%
   17    5.2  0.5 -0.5   0.152%   0.009%   0.000%   0.000%   0.000%   0.001%   1.171%   5.755%  11.969%   2.442%
   18    6.2  0.5 -0.5   0.003%   0.000%   0.000%   0.001%   0.000%   0.002%   0.217%   0.574%  11.408%   2.385%
   19    7.2  0.5 -0.5   0.003%   0.048%   0.000%   0.000%   0.000%   0.000%   2.235%   0.481%   7.196%  35.116%
   20    8.2  0.5 -0.5   0.004%   0.070%   0.000%   0.000%   0.000%   0.000%  35.326%   7.475%   0.490%   2.472%
   21    9.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.003%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    2.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.061%   0.023%   0.005%
   27    3.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%   0.109%   0.000%   0.000%
   28    4.2  1.5  1.5   1.299%   2.770%  14.815%   0.458%  23.299%   3.110%   0.014%   0.561%   1.161%   0.671%
   29    5.2  1.5  1.5   2.572%   1.300%   2.501%   0.902%   4.763%   0.186%   0.705%   2.588%   2.217%   1.238%
   30    6.2  1.5  1.5   0.750%   0.039%   0.035%   4.852%   0.153%   1.567%   0.242%   1.199%   4.727%   0.937%
   31    7.2  1.5  1.5   0.513%   9.176%  15.442%   0.103%   7.623%   0.667%   0.737%   0.139%   0.043%   0.355%
   32    8.2  1.5  1.5   0.375%   6.488%   0.303%   0.002%  33.849%   2.806%   0.808%   0.168%   0.278%   1.338%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%
   34    1.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.008%   0.041%   0.008%
   35    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.001%   0.001%   0.005%
   36    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.004%   0.002%   0.009%
   37    4.2  1.5  0.5   7.703%   0.736%   3.702%   4.311%   1.033%   0.184%   1.399%   8.414%   0.252%   0.999%
   38    5.2  1.5  0.5   0.767%   8.027%  24.518%   0.656%   5.510%   0.679%   0.736%   0.932%   1.099%   2.388%
   39    6.2  1.5  0.5   1.849%  36.891%   4.662%   0.062%   2.184%   0.190%   0.120%   0.013%   0.509%   2.672%
   40    7.2  1.5  0.5  16.736%   0.683%   0.078%  12.169%   0.627%   7.213%   0.405%   1.966%   0.695%   0.109%
   41    8.2  1.5  0.5   0.980%   0.048%   0.058%  10.371%   0.343%   4.008%   0.429%   2.023%   1.890%   0.375%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   43    1.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.008%   0.002%   0.008%   0.041%
   44    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.003%   0.005%   0.001%
   45    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.019%   0.009%   0.002%
   46    4.2  1.5 -0.5   0.736%   7.703%   4.311%   3.702%   0.184%   1.033%   8.414%   1.399%   0.999%   0.252%
   47    5.2  1.5 -0.5   8.027%   0.767%   0.656%  24.518%   0.679%   5.510%   0.932%   0.736%   2.388%   1.099%
   48    6.2  1.5 -0.5  36.891%   1.849%   0.062%   4.662%   0.190%   2.184%   0.013%   0.120%   2.672%   0.509%
   49    7.2  1.5 -0.5   0.683%  16.736%  12.169%   0.078%   7.213%   0.627%   1.966%   0.405%   0.109%   0.695%
   50    8.2  1.5 -0.5   0.048%   0.980%  10.371%   0.058%   4.008%   0.343%   2.023%   0.429%   0.375%   1.890%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   52    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.061%   0.013%   0.005%   0.023%
   54    3.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.109%   0.023%   0.000%   0.000%
   55    4.2  1.5 -1.5   2.770%   1.299%   0.458%  14.815%   3.110%  23.299%   0.561%   0.014%   0.671%   1.161%
   56    5.2  1.5 -1.5   1.300%   2.572%   0.902%   2.501%   0.186%   4.763%   2.588%   0.705%   1.238%   2.217%
   57    6.2  1.5 -1.5   0.039%   0.750%   4.852%   0.035%   1.567%   0.153%   1.199%   0.242%   0.937%   4.727%
   58    7.2  1.5 -1.5   9.176%   0.513%   0.103%  15.442%   0.667%   7.623%   0.139%   0.737%   0.355%   0.043%
   59    8.2  1.5 -1.5   6.488%   0.375%   0.002%   0.303%   2.806%  33.849%   0.168%   0.808%   1.338%   0.278%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.005%   0.001%   0.023%   0.003%   0.000%   0.002%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.003%   0.009%   0.003%   0.016%   0.002%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.013%   0.016%   0.001%   0.001%   0.001%   0.001%   0.000%   0.000%
    4    4.2  0.5  0.5   2.431%  17.490%   4.963%   4.176%   0.496%   0.179%   0.000%   0.000%   0.027%   5.865%
    5    5.2  0.5  0.5  20.995%   3.241%   2.195%   2.552%   1.012%   3.989%   0.001%   0.001%   6.613%   0.014%
    6    6.2  0.5  0.5  27.174%   3.829%   0.316%   0.417%   1.802%   7.146%   0.000%   0.000%   7.041%   0.032%
    7    7.2  0.5  0.5   0.115%   0.643%   0.254%   0.221%   7.168%   1.769%   0.000%   0.000%   0.000%   0.032%
    8    8.2  0.5  0.5   0.024%   0.140%   4.907%   4.109%   0.377%   0.094%   0.000%   0.000%   0.000%   0.019%
    9    9.2  0.5  0.5   0.000%   0.000%   0.923%   0.826%  19.278%   4.946%   2.484%   4.305%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%  10.929%  13.065%   0.361%   1.361%   4.641%   2.600%   0.000%   0.000%
   11   11.2  0.5  0.5   0.001%   0.000%   5.932%   6.989%   2.662%  10.260%   4.445%   2.570%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.340%   5.945%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.001%   0.005%   0.003%   0.023%   0.002%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.009%   0.003%   0.016%   0.003%   0.000%   0.002%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.016%   0.013%   0.001%   0.001%   0.001%   0.001%   0.000%   0.000%
   16    4.2  0.5 -0.5  17.490%   2.431%   4.176%   4.963%   0.179%   0.496%   0.000%   0.000%   5.865%   0.027%
   17    5.2  0.5 -0.5   3.241%  20.995%   2.552%   2.195%   3.989%   1.012%   0.001%   0.001%   0.014%   6.613%
   18    6.2  0.5 -0.5   3.829%  27.174%   0.417%   0.316%   7.146%   1.802%   0.000%   0.000%   0.032%   7.041%
   19    7.2  0.5 -0.5   0.643%   0.115%   0.221%   0.254%   1.769%   7.168%   0.000%   0.000%   0.032%   0.000%
   20    8.2  0.5 -0.5   0.140%   0.024%   4.109%   4.907%   0.094%   0.377%   0.000%   0.000%   0.019%   0.000%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.826%   0.923%   4.946%  19.278%   4.305%   2.484%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%  13.065%  10.929%   1.361%   0.361%   2.600%   4.641%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.001%   6.989%   5.932%  10.260%   2.662%   2.570%   4.445%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.945%   3.340%   0.000%   0.000%
   25    1.2  1.5  1.5   0.007%   0.001%   1.066%   1.287%   0.029%   0.135%   0.002%   0.004%   6.980%   0.023%
   26    2.2  1.5  1.5   0.001%   0.004%   0.038%   0.019%   0.650%   0.159%   5.856%  10.423%   0.010%   1.182%
   27    3.2  1.5  1.5   0.001%   0.006%   0.039%   0.032%   0.644%   0.161%   5.834%  10.385%   0.003%   1.325%
   28    4.2  1.5  1.5   0.016%   0.043%   0.088%   0.027%   0.062%   1.504%   0.677%   0.185%   0.008%   0.243%
   29    5.2  1.5  1.5   0.046%   0.181%   0.023%   0.086%   1.493%   0.054%   0.024%   0.310%   0.003%   1.582%
   30    6.2  1.5  1.5   0.022%   0.076%   0.051%   0.055%   1.199%   0.328%   0.086%   0.147%   0.007%   1.516%
   31    7.2  1.5  1.5   7.433%   1.130%   0.375%   0.432%   0.202%   0.721%   0.181%   0.110%  19.219%   0.039%
   32    8.2  1.5  1.5   2.460%   0.372%   0.435%   0.519%   0.152%   0.613%   0.434%   0.242%   7.683%   0.018%
   33    9.2  1.5  1.5   0.001%   0.000%  10.375%  12.382%   0.331%   1.321%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.000%   0.000%   0.007%   0.011%   0.210%   0.049%   7.973%  13.665%   0.002%   0.007%
   35    2.2  1.5  0.5   0.010%   0.001%   0.626%   0.743%   0.115%   0.479%   3.254%   2.118%   5.452%   0.013%
   36    3.2  1.5  0.5   0.019%   0.003%   0.186%   0.221%   0.318%   1.263%   3.476%   1.961%   5.009%   0.013%
   37    4.2  1.5  0.5   0.399%   0.859%   0.343%   1.212%   0.100%   0.005%   0.057%   0.035%   0.059%   3.538%
   38    5.2  1.5  0.5   0.233%   0.397%   1.210%   0.345%   0.004%   0.108%   0.386%   0.215%   0.799%   0.468%
   39    6.2  1.5  0.5   0.111%   0.027%   0.739%   0.822%   0.028%   0.084%   0.423%   0.261%   0.646%   0.000%
   40    7.2  1.5  0.5   0.390%   2.536%   0.489%   0.459%   0.614%   0.159%   0.247%   0.399%   0.014%   7.424%
   41    8.2  1.5  0.5   0.933%   6.199%   0.433%   0.358%   0.727%   0.183%   0.106%   0.185%   0.044%  17.028%
   42    9.2  1.5  0.5   0.000%   0.000%   0.900%   0.745%  18.259%   4.586%   0.000%   0.001%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.000%   0.000%   0.011%   0.007%   0.049%   0.210%  13.665%   7.973%   0.007%   0.002%
   44    2.2  1.5 -0.5   0.001%   0.010%   0.743%   0.626%   0.479%   0.115%   2.118%   3.254%   0.013%   5.452%
   45    3.2  1.5 -0.5   0.003%   0.019%   0.221%   0.186%   1.263%   0.318%   1.961%   3.476%   0.013%   5.009%
   46    4.2  1.5 -0.5   0.859%   0.399%   1.212%   0.343%   0.005%   0.100%   0.035%   0.057%   3.538%   0.059%
   47    5.2  1.5 -0.5   0.397%   0.233%   0.345%   1.210%   0.108%   0.004%   0.215%   0.386%   0.468%   0.799%
   48    6.2  1.5 -0.5   0.027%   0.111%   0.822%   0.739%   0.084%   0.028%   0.261%   0.423%   0.000%   0.646%
   49    7.2  1.5 -0.5   2.536%   0.390%   0.459%   0.489%   0.159%   0.614%   0.399%   0.247%   7.424%   0.014%
   50    8.2  1.5 -0.5   6.199%   0.933%   0.358%   0.433%   0.183%   0.727%   0.185%   0.106%  17.028%   0.044%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.745%   0.900%   4.586%  18.259%   0.001%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.001%   0.007%   1.287%   1.066%   0.135%   0.029%   0.004%   0.002%   0.023%   6.980%
   53    2.2  1.5 -1.5   0.004%   0.001%   0.019%   0.038%   0.159%   0.650%  10.423%   5.856%   1.182%   0.010%
   54    3.2  1.5 -1.5   0.006%   0.001%   0.032%   0.039%   0.161%   0.644%  10.385%   5.834%   1.325%   0.003%
   55    4.2  1.5 -1.5   0.043%   0.016%   0.027%   0.088%   1.504%   0.062%   0.185%   0.677%   0.243%   0.008%
   56    5.2  1.5 -1.5   0.181%   0.046%   0.086%   0.023%   0.054%   1.493%   0.310%   0.024%   1.582%   0.003%
   57    6.2  1.5 -1.5   0.076%   0.022%   0.055%   0.051%   0.328%   1.199%   0.147%   0.086%   1.516%   0.007%
   58    7.2  1.5 -1.5   1.130%   7.433%   0.432%   0.375%   0.721%   0.202%   0.110%   0.181%   0.039%  19.219%
   59    8.2  1.5 -1.5   0.372%   2.460%   0.519%   0.435%   0.613%   0.152%   0.242%   0.434%   0.018%   7.683%
   60    9.2  1.5 -1.5   0.000%   0.001%  12.382%  10.375%   1.321%   0.331%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.004%   0.012%   0.000%   0.003%   0.002%   0.004%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.011%   0.001%   0.002%   0.005%   0.004%   0.003%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.003%   0.014%   0.002%   0.007%
    4    4.2  0.5  0.5   2.011%   3.202%   0.944%   0.106%   0.014%   0.009%   0.252%   0.050%   0.310%   0.072%
    5    5.2  0.5  0.5   1.852%   1.179%   0.270%   2.192%   0.054%   0.087%   0.026%   0.134%   0.443%   2.174%
    6    6.2  0.5  0.5   0.082%   0.023%   0.536%   4.371%   0.100%   0.157%   0.005%   0.017%   0.194%   0.900%
    7    7.2  0.5  0.5   0.050%   0.078%  10.208%   1.254%   0.087%   0.056%   0.007%   0.001%   0.929%   0.186%
    8    8.2  0.5  0.5   4.422%   7.072%   0.118%   0.014%   0.004%   0.002%   0.160%   0.032%   1.306%   0.271%
    9    9.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%  11.695%   7.165%   1.056%   0.194%   2.446%   0.488%
   10   10.2  0.5  0.5   0.003%   0.002%   0.000%   0.002%   0.541%   0.879%   3.044%  15.227%   0.892%   4.329%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%   3.502%   5.811%   1.737%   8.849%   0.726%   3.644%
   12   12.2  0.5  0.5   0.001%   0.001%   0.001%   0.000%   0.001%   0.001%   0.001%   0.000%  16.299%   3.330%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.012%   0.004%   0.003%   0.000%   0.004%   0.002%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.011%   0.005%   0.002%   0.003%   0.004%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.014%   0.003%   0.007%   0.002%
   16    4.2  0.5 -0.5   3.202%   2.011%   0.106%   0.944%   0.009%   0.014%   0.050%   0.252%   0.072%   0.310%
   17    5.2  0.5 -0.5   1.179%   1.852%   2.192%   0.270%   0.087%   0.054%   0.134%   0.026%   2.174%   0.443%
   18    6.2  0.5 -0.5   0.023%   0.082%   4.371%   0.536%   0.157%   0.100%   0.017%   0.005%   0.900%   0.194%
   19    7.2  0.5 -0.5   0.078%   0.050%   1.254%  10.208%   0.056%   0.087%   0.001%   0.007%   0.186%   0.929%
   20    8.2  0.5 -0.5   7.072%   4.422%   0.014%   0.118%   0.002%   0.004%   0.032%   0.160%   0.271%   1.306%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   7.165%  11.695%   0.194%   1.056%   0.488%   2.446%
   22   10.2  0.5 -0.5   0.002%   0.003%   0.002%   0.000%   0.879%   0.541%  15.227%   3.044%   4.329%   0.892%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.003%   0.000%   5.811%   3.502%   8.849%   1.737%   3.644%   0.726%
   24   12.2  0.5 -0.5   0.001%   0.001%   0.000%   0.001%   0.001%   0.001%   0.000%   0.001%   3.330%  16.299%
   25    1.2  1.5  1.5   0.579%   0.306%   0.019%   0.081%   0.001%   0.002%   0.007%   0.033%   0.036%   0.139%
   26    2.2  1.5  1.5   2.038%   3.339%   3.778%   0.461%   0.011%   0.007%   0.000%   0.000%   1.551%   0.325%
   27    3.2  1.5  1.5   3.660%   5.835%   0.049%   0.006%   0.006%   0.004%   0.004%   0.001%   1.578%   0.322%
   28    4.2  1.5  1.5   2.331%   0.578%   1.557%   3.158%   9.382%   3.365%   0.004%   0.776%   2.502%   6.770%
   29    5.2  1.5  1.5   4.659%  10.062%   3.752%   1.539%   3.605%   9.445%   0.835%   0.006%   1.270%   2.174%
   30    6.2  1.5  1.5   2.185%   3.415%  15.177%   1.761%   8.328%   4.962%   0.652%   0.087%   1.975%   0.408%
   31    7.2  1.5  1.5   0.784%   0.561%   0.226%   2.747%   2.536%   4.600%   1.016%   5.329%   0.464%   2.471%
   32    8.2  1.5  1.5   1.928%   1.219%   0.239%   1.877%   2.470%   3.896%   1.180%   5.924%   1.256%   6.100%
   33    9.2  1.5  1.5   0.004%   0.003%   0.000%   0.003%   0.025%   0.039%   0.193%   0.966%   0.161%   0.787%
   34    1.2  1.5  0.5   0.649%   1.033%   9.037%   1.165%   0.010%   0.007%   0.002%   0.000%   0.237%   0.052%
   35    2.2  1.5  0.5   0.021%   0.020%   0.445%   3.074%   0.002%   0.003%   0.005%   0.025%   0.041%   0.184%
   36    3.2  1.5  0.5   1.332%   0.834%   0.187%   1.529%   0.008%   0.012%   0.001%   0.007%   0.000%   0.001%
   37    4.2  1.5  0.5   8.626%  11.277%   1.653%   2.733%   0.235%   0.574%  13.108%   0.093%   0.196%   0.805%
   38    5.2  1.5  0.5   0.815%   3.092%   2.580%   6.461%   0.540%   0.189%   0.087%  12.800%   1.098%   5.460%
   39    6.2  1.5  0.5   1.401%   1.005%   0.882%   7.830%   0.279%   0.573%   1.950%  10.689%   1.117%   6.176%
   40    7.2  1.5  0.5   1.666%   2.488%   1.415%   0.118%   3.963%   2.388%   6.010%   1.015%   5.692%   1.037%
   41    8.2  1.5  0.5   0.874%   1.403%   3.969%   0.467%   4.323%   2.705%   5.254%   1.065%   2.427%   0.488%
   42    9.2  1.5  0.5   0.001%   0.002%   0.005%   0.001%   0.808%   0.505%   0.046%   0.009%   4.765%   0.976%
   43    1.2  1.5 -0.5   1.033%   0.649%   1.165%   9.037%   0.007%   0.010%   0.000%   0.002%   0.052%   0.237%
   44    2.2  1.5 -0.5   0.020%   0.021%   3.074%   0.445%   0.003%   0.002%   0.025%   0.005%   0.184%   0.041%
   45    3.2  1.5 -0.5   0.834%   1.332%   1.529%   0.187%   0.012%   0.008%   0.007%   0.001%   0.001%   0.000%
   46    4.2  1.5 -0.5  11.277%   8.626%   2.733%   1.653%   0.574%   0.235%   0.093%  13.108%   0.805%   0.196%
   47    5.2  1.5 -0.5   3.092%   0.815%   6.461%   2.580%   0.189%   0.540%  12.800%   0.087%   5.460%   1.098%
   48    6.2  1.5 -0.5   1.005%   1.401%   7.830%   0.882%   0.573%   0.279%  10.689%   1.950%   6.176%   1.117%
   49    7.2  1.5 -0.5   2.488%   1.666%   0.118%   1.415%   2.388%   3.963%   1.015%   6.010%   1.037%   5.692%
   50    8.2  1.5 -0.5   1.403%   0.874%   0.467%   3.969%   2.705%   4.323%   1.065%   5.254%   0.488%   2.427%
   51    9.2  1.5 -0.5   0.002%   0.001%   0.001%   0.005%   0.505%   0.808%   0.009%   0.046%   0.976%   4.765%
   52    1.2  1.5 -1.5   0.306%   0.579%   0.081%   0.019%   0.002%   0.001%   0.033%   0.007%   0.139%   0.036%
   53    2.2  1.5 -1.5   3.339%   2.038%   0.461%   3.778%   0.007%   0.011%   0.000%   0.000%   0.325%   1.551%
   54    3.2  1.5 -1.5   5.835%   3.660%   0.006%   0.049%   0.004%   0.006%   0.001%   0.004%   0.322%   1.578%
   55    4.2  1.5 -1.5   0.578%   2.331%   3.158%   1.557%   3.365%   9.382%   0.776%   0.004%   6.770%   2.502%
   56    5.2  1.5 -1.5  10.062%   4.659%   1.539%   3.752%   9.445%   3.605%   0.006%   0.835%   2.174%   1.270%
   57    6.2  1.5 -1.5   3.415%   2.185%   1.761%  15.177%   4.962%   8.328%   0.087%   0.652%   0.408%   1.975%
   58    7.2  1.5 -1.5   0.561%   0.784%   2.747%   0.226%   4.600%   2.536%   5.329%   1.016%   2.471%   0.464%
   59    8.2  1.5 -1.5   1.219%   1.928%   1.877%   0.239%   3.896%   2.470%   5.924%   1.180%   6.100%   1.256%
   60    9.2  1.5 -1.5   0.003%   0.004%   0.003%   0.000%   0.039%   0.025%   0.966%   0.193%   0.787%   0.161%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.000%   0.001%   0.002%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.004%   0.011%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.146%   5.062%   8.641%   2.315%   0.000%   0.000%   4.346%   7.635%   0.151%   0.726%
    5    5.2  0.5  0.5   3.051%   0.061%   2.312%   8.579%   0.000%   0.001%   4.137%   2.229%   5.678%   0.809%
    6    6.2  0.5  0.5  15.049%   0.293%   0.030%   0.234%   0.000%   0.000%   0.578%   0.449%  10.362%   1.460%
    7    7.2  0.5  0.5   0.269%  15.803%   0.018%   0.004%   0.000%   0.000%   0.238%   0.423%   1.501%  10.848%
    8    8.2  0.5  0.5   0.004%   0.212%  12.091%   3.204%   0.000%   0.000%   4.420%   7.941%   0.080%   0.581%
    9    9.2  0.5  0.5   0.022%   1.199%   0.935%   0.255%   6.372%   2.680%   0.278%   0.527%   1.413%   9.689%
   10   10.2  0.5  0.5   0.356%   0.006%   0.001%   0.004%   2.682%   6.576%   6.976%   3.908%   0.676%   0.097%
   11   11.2  0.5  0.5   0.020%   0.001%   0.232%   0.846%   2.719%   6.445%   3.781%   2.109%   5.115%   0.769%
   12   12.2  0.5  0.5   0.022%   1.232%   1.948%   0.519%  23.990%   9.816%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.001%   0.000%   0.000%   0.002%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.011%   0.004%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   5.062%   0.146%   2.315%   8.641%   0.000%   0.000%   7.635%   4.346%   0.726%   0.151%
   17    5.2  0.5 -0.5   0.061%   3.051%   8.579%   2.312%   0.001%   0.000%   2.229%   4.137%   0.809%   5.678%
   18    6.2  0.5 -0.5   0.293%  15.049%   0.234%   0.030%   0.000%   0.000%   0.449%   0.578%   1.460%  10.362%
   19    7.2  0.5 -0.5  15.803%   0.269%   0.004%   0.018%   0.000%   0.000%   0.423%   0.238%  10.848%   1.501%
   20    8.2  0.5 -0.5   0.212%   0.004%   3.204%  12.091%   0.000%   0.000%   7.941%   4.420%   0.581%   0.080%
   21    9.2  0.5 -0.5   1.199%   0.022%   0.255%   0.935%   2.680%   6.372%   0.527%   0.278%   9.689%   1.413%
   22   10.2  0.5 -0.5   0.006%   0.356%   0.004%   0.001%   6.576%   2.682%   3.908%   6.976%   0.097%   0.676%
   23   11.2  0.5 -0.5   0.001%   0.020%   0.846%   0.232%   6.445%   2.719%   2.109%   3.781%   0.769%   5.115%
   24   12.2  0.5 -0.5   1.232%   0.022%   0.519%   1.948%   9.816%  23.990%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   2.418%   0.038%   1.144%   4.351%   0.000%   0.000%   7.920%   4.488%   0.796%   0.094%
   26    2.2  1.5  1.5   0.015%   1.173%   0.228%   0.043%   0.954%   0.391%   0.135%   0.166%   0.503%   3.701%
   27    3.2  1.5  1.5   0.021%   1.201%   0.166%   0.045%   0.946%   0.387%   0.111%   0.196%   0.519%   3.681%
   28    4.2  1.5  1.5   0.353%   0.084%   0.130%   0.839%   0.992%   5.017%   0.166%   0.011%   2.470%   0.009%
   29    5.2  1.5  1.5   0.098%   0.251%   0.457%   0.089%   2.047%   0.198%   0.015%   0.174%   0.005%   2.569%
   30    6.2  1.5  1.5   0.005%   0.352%   0.311%   0.083%   1.108%   0.472%   0.053%   0.128%   0.350%   2.251%
   31    7.2  1.5  1.5   0.084%   0.001%   0.102%   0.354%   0.605%   1.357%   0.797%   0.434%   1.241%   0.209%
   32    8.2  1.5  1.5   0.375%   0.007%   0.128%   0.486%   1.371%   3.374%   0.935%   0.519%   1.038%   0.143%
   33    9.2  1.5  1.5  13.041%   0.240%   6.179%  23.150%   0.000%   0.000%   8.514%   4.774%   0.826%   0.121%
   34    1.2  1.5  0.5   0.014%   0.897%   0.453%   0.150%   1.301%   0.554%   0.020%   0.069%   0.150%   1.222%
   35    2.2  1.5  0.5   0.558%   0.007%   1.252%   4.596%   0.153%   0.321%   4.487%   2.485%   2.908%   0.382%
   36    3.2  1.5  0.5   6.484%   0.119%   0.019%   0.073%   0.130%   0.317%   1.288%   0.729%   7.221%   1.031%
   37    4.2  1.5  0.5   0.062%   0.015%   0.118%   0.023%   0.182%   0.488%   0.214%   2.397%   0.002%   0.177%
   38    5.2  1.5  0.5   0.431%   0.005%   0.069%   0.503%   1.293%   3.096%   2.370%   0.198%   0.176%   0.001%
   39    6.2  1.5  0.5   0.315%   0.005%   0.263%   0.890%   1.558%   3.448%   1.706%   0.905%   0.152%   0.032%
   40    7.2  1.5  0.5   0.007%   0.493%   0.844%   0.248%   3.204%   1.454%   0.491%   0.990%   0.157%   1.063%
   41    8.2  1.5  0.5   0.005%   0.288%   0.206%   0.056%   1.382%   0.576%   0.435%   0.763%   0.182%   1.271%
   42    9.2  1.5  0.5   0.491%  27.235%   7.733%   2.051%   0.000%   0.000%   0.333%   0.607%   1.660%  11.731%
   43    1.2  1.5 -0.5   0.897%   0.014%   0.150%   0.453%   0.554%   1.301%   0.069%   0.020%   1.222%   0.150%
   44    2.2  1.5 -0.5   0.007%   0.558%   4.596%   1.252%   0.321%   0.153%   2.485%   4.487%   0.382%   2.908%
   45    3.2  1.5 -0.5   0.119%   6.484%   0.073%   0.019%   0.317%   0.130%   0.729%   1.288%   1.031%   7.221%
   46    4.2  1.5 -0.5   0.015%   0.062%   0.023%   0.118%   0.488%   0.182%   2.397%   0.214%   0.177%   0.002%
   47    5.2  1.5 -0.5   0.005%   0.431%   0.503%   0.069%   3.096%   1.293%   0.198%   2.370%   0.001%   0.176%
   48    6.2  1.5 -0.5   0.005%   0.315%   0.890%   0.263%   3.448%   1.558%   0.905%   1.706%   0.032%   0.152%
   49    7.2  1.5 -0.5   0.493%   0.007%   0.248%   0.844%   1.454%   3.204%   0.990%   0.491%   1.063%   0.157%
   50    8.2  1.5 -0.5   0.288%   0.005%   0.056%   0.206%   0.576%   1.382%   0.763%   0.435%   1.271%   0.182%
   51    9.2  1.5 -0.5  27.235%   0.491%   2.051%   7.733%   0.000%   0.000%   0.607%   0.333%  11.731%   1.660%
   52    1.2  1.5 -1.5   0.038%   2.418%   4.351%   1.144%   0.000%   0.000%   4.488%   7.920%   0.094%   0.796%
   53    2.2  1.5 -1.5   1.173%   0.015%   0.043%   0.228%   0.391%   0.954%   0.166%   0.135%   3.701%   0.503%
   54    3.2  1.5 -1.5   1.201%   0.021%   0.045%   0.166%   0.387%   0.946%   0.196%   0.111%   3.681%   0.519%
   55    4.2  1.5 -1.5   0.084%   0.353%   0.839%   0.130%   5.017%   0.992%   0.011%   0.166%   0.009%   2.470%
   56    5.2  1.5 -1.5   0.251%   0.098%   0.089%   0.457%   0.198%   2.047%   0.174%   0.015%   2.569%   0.005%
   57    6.2  1.5 -1.5   0.352%   0.005%   0.083%   0.311%   0.472%   1.108%   0.128%   0.053%   2.251%   0.350%
   58    7.2  1.5 -1.5   0.001%   0.084%   0.354%   0.102%   1.357%   0.605%   0.434%   0.797%   0.209%   1.241%
   59    8.2  1.5 -1.5   0.007%   0.375%   0.486%   0.128%   3.374%   1.371%   0.519%   0.935%   0.143%   1.038%
   60    9.2  1.5 -1.5   0.240%  13.041%  23.150%   6.179%   0.000%   0.000%   4.774%   8.514%   0.121%   0.826%


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

              2       7     1944.75       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    284323.58 270553.34   4272.30   9492.54      4.04      0.11      1.02
 REAL TIME  *    286289.00 SEC
 DISK USED  *         1.94 GB (local),       15.54 GB (total)
 SF USED    *        12.77 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -295.200677681921

              CI              CI           MULTI         RHF-SCF
   -295.14632469   -295.14650551   -294.35920170   -294.74654372
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
