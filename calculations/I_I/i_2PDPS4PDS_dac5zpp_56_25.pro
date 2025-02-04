
 Working directory              : /wrk/irikura/molpro.NaoquYASRV/
 Global scratch directory       : /wrk/irikura/molpro.NaoquYASRV/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.NaoquYASRV/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    8
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
 spdfghi,i,aug-cc-pwCV5Z-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 {rhf;wf,charge=-1}
 
 NDOUB=12
 NQUAR=9
 
 {multi
     occ,7,9
     closed,7,3
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.22 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   I SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 03-Dec-24          TIME: 17:31:37  
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
 Library entry I      S AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered I  S diffuse               selected for group 1    nprim= 1    centre=  0.010    ratio= 3.000    dratio= 1.000
 Library entry I      P AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered I  P diffuse               selected for group 1    nprim= 1    centre=  0.008    ratio= 3.000    dratio= 1.000
 Library entry I      D AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered I  D diffuse               selected for group 1    nprim= 1    centre=  0.021    ratio= 3.000    dratio= 1.000
 Library entry I      F AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered I  F diffuse               selected for group 1    nprim= 1    centre=  0.034    ratio= 3.000    dratio= 1.000
 Library entry I      G AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry I      H AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry I      I AUG-CC-PWCV5Z-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         485
 NUMBER OF SYMMETRY AOS:          348
 NUMBER OF CONTRACTIONS:          281   (  135Ag  +  146Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8   9101112131415 7 8 9
                                       101112131415 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112  131415 7 8 910111213
                                       14151617181920212223  2425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 1 2 3 4
                                        5 6 7 8 910 4 5 6 7   8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617
                                       18192021111213141516  17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.359E-05 0.223E-04 0.226E-03 0.301E-03 0.301E-03 0.301E-03 0.301E-03 0.301E-03
         2 0.386E-06 0.386E-06 0.386E-06 0.299E-03 0.299E-03 0.299E-03 0.218E-02 0.218E-02


 Contracted 2-electron integrals neglected if value below      1.0D-14
 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     920.125 MB (compressed) written to integral file ( 17.8%)

     Node minimum: 93.848 MB, node maximum: 132.645 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   49396652.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   4  SEGMENT LENGTH:   15990632      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   646821870. AND WROTE     8512704. INTEGRALS IN     26 RECORDS. CPU TIME:     3.37 SEC, REAL TIME:     3.53 SEC
 SORT2 READ    68066263. AND WROTE   395255076. INTEGRALS IN   3464 RECORDS. CPU TIME:     1.12 SEC, REAL TIME:     1.24 SEC

 Node minimum:    49389188.  Node maximum:    49431662. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        17.43     17.07
 REAL TIME  *        20.19 SEC
 DISK USED  *        31.11 MB (local),        1.79 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -294.71890407    -294.71890407     0.00D+00     0.48D-01     0     0       0.25      0.50    start
   2     -294.74429992      -0.02539585     0.28D-02     0.25D-02     1     0       0.25      0.75    diag
   3     -294.74637248      -0.00207257     0.15D-02     0.59D-03     2     0       0.25      1.00    diag
   4     -294.74677054      -0.00039805     0.29D-03     0.35D-03     3     0       0.25      1.25    diag
   5     -294.74685524      -0.00008470     0.10D-03     0.20D-03     4     0       0.25      1.50    diag
   6     -294.74686328      -0.00000804     0.26D-04     0.70D-04     5     0       0.25      1.75    diag
   7     -294.74686363      -0.00000035     0.45D-05     0.20D-04     6     0       0.26      2.01    diag
   8     -294.74686365      -0.00000002     0.92D-06     0.39D-05     7     0       0.25      2.26    fixocc
   9     -294.74686365      -0.00000000     0.16D-06     0.99D-06     8     0       0.25      2.51    diag
  10     -294.74686365      -0.00000000     0.30D-07     0.13D-06     0     0       0.25      2.76    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -294.746863649664
  RHF One-electron energy            -520.926471482195
  RHF Two-electron energy             226.179607832531
  RHF Kinetic energy                  110.887818406239
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.658063508562

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45091     1  1  s    0.99968
    2.1     2.00000    -2.00364     1  1  d0   0.99968
    3.1     2.00000    -2.00364     1  1  d1+  0.47039    1  1  d1-  0.88219
    4.1     2.00000    -2.00364     1  1  d1+  0.87220    1  1  d1- -0.46764
    5.1     2.00000    -2.00364     1  1  d2+  0.99968
    6.1     2.00000    -2.00364     1  1  d2-  0.98969
    7.1     2.00000    -0.60772     1  1  s   -0.42334    1  3  s   -0.25821    1  5  s    0.56626    1  6  s    0.49105
    1.2     2.00000    -5.27628     1  1  pz   1.00125
    2.2     2.00000    -5.27628     1  1  py   1.00125
    3.2     2.00000    -5.27628     1  1  px   1.00125
    4.2     2.00000    -0.12599     1  1  py  -0.36713    1  5  py   0.42074    1  6  py   0.36697
    5.2     2.00000    -0.12599     1  1  pz  -0.36713    1  5  pz   0.42074    1  6  pz   0.36697
    6.2     2.00000    -0.12599     1  1  px  -0.36714    1  5  px   0.42075    1  6  px   0.36698


 HOMO      6.2    -0.125989 =      -3.4283eV
 LUMO      7.2     0.090557 =       2.4642eV
 LUMO-HOMO         0.216546 =       5.8925eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        1.03       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        20.26      2.82     17.07
 REAL TIME  *        23.82 SEC
 DISK USED  *        34.43 MB (local),        1.82 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =        12.00000000                                  
 SETTING NQUAR          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     265 (  128  137)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:            12
 Number of CSFs:             210   (300 determinants, 300 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             9
 Number of CSFs:              84   (90 determinants, 90 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.313D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.361D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.421D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.300D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.161D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 5 3 1 1 4 6   3 2 5 1 6 5 4 3 2 1   5 4 6 3 210151314 8  1211 7 9 1 4 6 3 5 2
                                       1114 8101215 713 9 6   5 4 2 3 1111214 815  1310 9 7 2 6 5 4 3 1  11 7 9 8151314121027
                                       21232420221918162625  1728 2 6 5 3 411 9 8   71514121310 1 3 2 6   4 5 7 9 81215111410
                                       13 1 3 4 6 2 5 1 3 4   2 6 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.833D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.833D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.707D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.707D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.560D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.560D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 3 1 1 2 3 2   3 1 710 8 9 4 5 6 2   3 110 7 9 8 5 6 4 2   3 110 5 7 8 9 6 4 6
                                        5 810 4 7 913151618  20141712211119 2 3 1   5 6 810 4 7 9131221  1418172015161911 6 5
                                        8 9 4 710 2 3 1 5 6   410 8 7 91912211417  161520181311 2 1 3 6   4 5 810 9 719112112
                                       14161315172018 2 1 3   410 5 8 6 7 9 1 2 3   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.26882   0.26882   0.26882   0.01075   0.01075   0.01075   0.01075   0.01075
                                          0.01075   0.01075   0.01075   0.01075
 Weight factors for state symmetry  2:    0.01075   0.01075   0.01075   0.01075   0.01075   0.01075   0.01075   0.01075
                                          0.01075
 
 Number of orbital rotations:  2147  ( 18 closed/active, 1307 closed/virtual, 0 active/active, 822 active/virtual )
 Total number of variables:    6557
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0   -294.54776323    -294.60203838   -0.05427514    0.27443938 0.00157215 0.00000000  0.15E+01      3.64
   2    7   12    0   -294.60033890    -294.60048834   -0.00014943    0.01173111 0.00002123 0.00000000  0.10E+00      7.10
   3    6   12    0   -294.60048854    -294.60048854   -0.00000000    0.00004334 0.00000000 0.00000000  0.84E-03      9.89
   4    3    6    0   -294.60048854    -294.60048854   -0.00000000    0.00000006 0.00000001 0.00000000  0.53E-07     12.23

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.26E-07)
                       Final energy:   -294.60048854
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -294.656274181028
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.89402887
 One electron energy                          -513.88339415
 Two electron energy                           219.22711997
 Virial ratio                                    3.65709775
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -294.656274181026
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.89402887
 One electron energy                          -513.88339415
 Two electron energy                           219.22711997
 Virial ratio                                    3.65709775
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -294.656274181010
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.89402887
 One electron energy                          -513.88339415
 Two electron energy                           219.22711997
 Virial ratio                                    3.65709775
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -294.367018613373
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18106840
 One electron energy                          -507.58349796
 Two electron energy                           213.21647935
 Virial ratio                                    3.67166604
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -294.367018613343
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18106840
 One electron energy                          -507.58349796
 Two electron energy                           213.21647935
 Virial ratio                                    3.67166604
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -294.367018613328
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18106840
 One electron energy                          -507.58349797
 Two electron energy                           213.21647935
 Virial ratio                                    3.67166604
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -294.367018613224
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18106840
 One electron energy                          -507.58349797
 Two electron energy                           213.21647936
 Virial ratio                                    3.67166604
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -294.367018613223
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18106840
 One electron energy                          -507.58349797
 Two electron energy                           213.21647936
 Virial ratio                                    3.67166604
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -294.360799161632
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.24071337
 One electron energy                          -507.82278733
 Two electron energy                           213.46198817
 Virial ratio                                    3.67016414
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -294.360799161596
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.24071337
 One electron energy                          -507.82278733
 Two electron energy                           213.46198817
 Virial ratio                                    3.67016414
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -294.360799161459
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.24071337
 One electron energy                          -507.82278734
 Two electron energy                           213.46198818
 Virial ratio                                    3.67016414
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -294.359885741807
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.17630490
 One electron energy                          -507.56871415
 Two electron energy                           213.20882841
 Virial ratio                                    3.67171681
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -294.378004081576
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.15469140
 One electron energy                          -507.49728148
 Two electron energy                           213.11927740
 Virial ratio                                    3.67240551
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -294.378004081575
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.15469140
 One electron energy                          -507.49728148
 Two electron energy                           213.11927740
 Virial ratio                                    3.67240551
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -294.378004081528
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.15469140
 One electron energy                          -507.49728149
 Two electron energy                           213.11927741
 Virial ratio                                    3.67240551
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -294.370704064766
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.16383869
 One electron energy                          -507.52797785
 Two electron energy                           213.15727379
 Virial ratio                                    3.67211734
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -294.370704064742
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.16383869
 One electron energy                          -507.52797785
 Two electron energy                           213.15727379
 Virial ratio                                    3.67211734
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -294.370704064734
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.16383869
 One electron energy                          -507.52797786
 Two electron energy                           213.15727379
 Virial ratio                                    3.67211734
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -294.370704064655
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.16383869
 One electron energy                          -507.52797786
 Two electron energy                           213.15727380
 Virial ratio                                    3.67211734
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -294.370704064655
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.16383870
 One electron energy                          -507.52797786
 Two electron energy                           213.15727380
 Virial ratio                                    3.67211734
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -294.359962013685
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.17515853
 One electron energy                          -507.56440268
 Two electron energy                           213.20444067
 Virial ratio                                    3.67174530
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.000000000002
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999999981
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.013427261467
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000000000000
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999849834
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     3.999999981704
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     3.986557812290
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>     0.999999999996
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     0.999999998502
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     0.000000000664
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>    -0.000000000000
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999994855
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.000000005746
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     0.006794838352
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000000000305
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000001127
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     3.999999948627
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     3.993200294024
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>    -0.000000000000
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.000000000023
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     2.792921272870
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     1.000000000000
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     3.999999899463
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     1.000000198217
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.207198035384
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>     0.999999999992
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     0.000000001678
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     0.999999999338
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>    -0.000000000000
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000000190959
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999994261
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     2.853949573614
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     0.999999999781
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.999999996022
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000000993756
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     1.146103852568
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>    -0.000000000000
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999999999998
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>    -0.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999999995
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.193651465663
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     4.000000000000
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000250702
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999820079
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.806244152326
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     0.000000000012
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     0.999999999820
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     0.999999999998
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>    -0.000000000000
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999999814185
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.000000000000
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999999993
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.139255588034
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.999999999913
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.000000002851
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     0.999999057617
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.860695853408
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>    -0.000000000000
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     6.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     6.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     6.000000000000
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     2.000000000000
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     2.000000000000
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     2.000000000000
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>    -0.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000000
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 3 5   6 2 4 1 5 3 6 2 4 1   5 3 6 2 41310141511   812 7 9 1 5 3 6 2 4
                                       1310141511 812 7 9 5   3 6 2 4 11310141511   812 7 9 5 3 6 2 4 1  1310141511 812 7 922
                                       16182024192723261721  2528 5 3 6 2 4131014  1511 812 7 9 1 5 3 6   2 4101315141112 8 7
                                        9 1 3 5 6 2 4 1 3 5   6 2 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 2   1 3 7 9 810 5 6 4 2   1 3 9 710 8 5 6 4 2   1 3 7 910 8 5 6 4 9
                                        7 810 5 6 420181517  14161221131911 2 1 3   9 7 810 5 6 4201815  1716141221131911 9 7
                                        810 5 6 4 2 1 3 7 9  10 8 5 6 42018151714  161221131911 2 1 3 7   910 8 5 6 420181517
                                       14161221131911 2 1 3   7 910 8 5 6 4 2 1 3   2 1 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.78673     1  1  s    0.99980
    2.1     2.00000    -2.33885     1  1  d2-  1.00009
    3.1     2.00000    -2.33885     1  1  d2+  1.00009
    4.1     2.00000    -2.33885     1  1  d1-  1.00009
    5.1     2.00000    -2.33885     1  1  d0   1.00009
    6.1     2.00000    -2.33885     1  1  d1+  1.00009
    7.1     2.00000    -0.90851     1  1  s   -0.43802    1  3  s   -0.26678    1  5  s    0.62253    1  6  s    0.51584
    1.2     2.00000    -5.61145     1  1  py   1.00049
    2.2     2.00000    -5.61145     1  1  px   1.00049
    3.2     2.00000    -5.61145     1  1  pz   1.00049
    4.2     1.60030    -0.36442     1  1  pz  -0.40136    1  4  pz   0.25700    1  5  pz   0.48912    1  6  pz   0.37672
    5.2     1.60030    -0.36442     1  1  px  -0.40136    1  4  px   0.25700    1  5  px   0.48912    1  6  px   0.37672
    6.2     1.60030    -0.36442     1  1  py  -0.40136    1  4  py   0.25700    1  5  py   0.48912    1  6  py   0.37672
    7.2     0.06637     0.06130     1 12  pz   0.76799
    8.2     0.06637     0.06130     1 12  px   0.76799
    9.2     0.06637     0.06130     1 12  py   0.76799
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 22a000        -0.00000014      0.00000000      0.99857453      0.00000000      0.00000000      0.00000000     -0.00000000
 2a2000         0.99857453     -0.00000134      0.00000014     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a22000         0.00000134      0.99857453      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 a2a0b0         0.00000000      0.00000000     -0.00000000      0.66054438     -0.00000124     -0.00022015     -0.00004133
 2aab00         0.00000000      0.00000000      0.00000000      0.29707320     -0.00000056     -0.00014180     -0.00050470
 aa20b0         0.00000003      0.02218701     -0.00000000     -0.00000108     -0.57301079     -0.00000000     -0.00000000
 a2a00b         0.00000003      0.02218701     -0.00000000      0.00000108      0.57301077      0.00000000      0.00000000
 2aa0b0         0.00000000     -0.00000000     -0.02218701      0.00018850     -0.00000000      0.57301076     -0.00001141
 a2ab00         0.00000000     -0.00000000     -0.02218701     -0.00018850      0.00000000     -0.57301073      0.00001141
 2aa00b         0.02218701     -0.00000003      0.00000000      0.00000770     -0.00000000      0.00001137      0.57301058
 aa2b00        -0.02218701      0.00000003     -0.00000000      0.00000770     -0.00000000      0.00001137      0.57301057
 aa200b        -0.00000000     -0.00000000      0.00000000      0.36347116     -0.00000068     -0.00007835      0.00046337
 a2ba00        -0.00000000      0.00000000      0.01266012      0.00009652     -0.00000000      0.29339733     -0.00000584
 b2a00a        -0.00000002     -0.01266012     -0.00000000     -0.00000055     -0.29339735     -0.00000000     -0.00000000
 ab2a00         0.01266012     -0.00000002      0.00000000     -0.00000394      0.00000000     -0.00000582     -0.29339725
 2ba00a        -0.01266012      0.00000002     -0.00000000     -0.00000394      0.00000000     -0.00000582     -0.29339726
 ba20a0        -0.00000002     -0.01266012     -0.00000000      0.00000055      0.29339736      0.00000000      0.00000000
 2ab0a0        -0.00000000      0.00000000      0.01266012     -0.00009652      0.00000000     -0.29339735      0.00000584
 b2a0a0        -0.00000000     -0.00000000      0.00000000     -0.33107080      0.00000062      0.00010931      0.00000902
 a2b0a0        -0.00000000     -0.00000000      0.00000000     -0.32947358      0.00000062      0.00011084      0.00003231
 2baa00        -0.00000000     -0.00000000     -0.00000000     -0.13622011      0.00000026      0.00006731      0.00025743
 2aba00        -0.00000000     -0.00000000     -0.00000000     -0.16085309      0.00000030      0.00007449      0.00024728
 ab200a         0.00000000      0.00000000     -0.00000000     -0.17021770      0.00000032      0.00003482     -0.00023825
 ab20a0        -0.00000001     -0.00952689      0.00000000      0.00000053      0.27961343      0.00000000      0.00000000
 a2b00a        -0.00000001     -0.00952690      0.00000000     -0.00000053     -0.27961342     -0.00000000     -0.00000000
 2ba0a0        -0.00000000      0.00000000      0.00952689     -0.00009198      0.00000000     -0.27961341      0.00000557
 b2aa00        -0.00000000      0.00000000      0.00952689      0.00009198     -0.00000000      0.27961340     -0.00000557
 2ab00a        -0.00952690      0.00000001     -0.00000000     -0.00000376      0.00000000     -0.00000555     -0.27961332
 ba2a00         0.00952689     -0.00000001      0.00000000     -0.00000376      0.00000000     -0.00000555     -0.27961332
 ba200a         0.00000000      0.00000000     -0.00000000     -0.19325346      0.00000036      0.00004353     -0.00022512
 2020a0        -0.01153832      0.00000002     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 22000a         0.00000000     -0.00000000     -0.01153831      0.00000000     -0.00000000      0.00000000     -0.00000000
 022a00        -0.00000002     -0.01153832      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a02020        -0.00000002     -0.01354629      0.00000000      0.00000011      0.06109805      0.00000000      0.00000000
 a20002        -0.00000002     -0.01354629     -0.00000000     -0.00000011     -0.06109805     -0.00000000     -0.00000000
 20a020         0.00000000     -0.00000000     -0.01354629      0.00002010     -0.00000000      0.06109805     -0.00000122
 02a200         0.00000000     -0.00000000     -0.01354629     -0.00002010      0.00000000     -0.06109805      0.00000122
 0a2200        -0.01354629      0.00000002     -0.00000000      0.00000082     -0.00000000      0.00000121      0.06109803
 2a0002        -0.01354629      0.00000002     -0.00000000     -0.00000082      0.00000000     -0.00000121     -0.06109803
 0220a0        -0.00840509      0.00000001     -0.00000000     -0.00000019      0.00000000     -0.00000027     -0.01378393
 02200a         0.00000000     -0.00000000     -0.00840509      0.00000453     -0.00000000      0.01378393     -0.00000027
 220a00        -0.00000001     -0.00840509     -0.00000000      0.00000003      0.01378393      0.00000000      0.00000000
 2200a0        -0.00840509      0.00000001     -0.00000000      0.00000019     -0.00000000      0.00000027      0.01378393
 202a00        -0.00000001     -0.00840509     -0.00000000     -0.00000003     -0.01378394     -0.00000000     -0.00000000
 20200a         0.00000000     -0.00000000     -0.00840509     -0.00000453      0.00000000     -0.01378393      0.00000027
 
 Energy:     -294.65627418   -294.65627418   -294.65627418   -294.36701861   -294.36701861   -294.36701861   -294.36701861

 State:              8               9              10              11              12
 22a000         0.00000000     -0.00000011      0.04132940      0.00000160      0.00000000
 2a2000        -0.00000000     -0.00000008      0.00000160     -0.04132940      0.00000000
 a22000        -0.00000000     -0.04132940     -0.00000011      0.00000008     -0.00000000
 a2a0b0         0.03833485      0.00000000     -0.00000000     -0.00000000     -0.46825367
 2aab00         0.59121545     -0.00000000      0.00000000      0.00000000      0.46825369
 aa20b0         0.00000000      0.53575442      0.00000148     -0.00000107      0.00000000
 a2a00b        -0.00000000      0.53575444      0.00000148     -0.00000107      0.00000000
 2aa0b0         0.00004270     -0.00000148      0.53575442      0.00002074      0.00000000
 a2ab00        -0.00004270     -0.00000148      0.53575445      0.00002074     -0.00000000
 2aa00b         0.00048530      0.00000107     -0.00002074      0.53575443     -0.00000000
 aa2b00         0.00048530     -0.00000107      0.00002074     -0.53575444      0.00000000
 aa200b        -0.55288061     -0.00000000     -0.00000000     -0.00000000      0.46825369
 a2ba00         0.00002187      0.00000111     -0.40188533     -0.00001556      0.00000000
 b2a00a         0.00000000     -0.40188533     -0.00000111      0.00000080     -0.00000000
 ab2a00        -0.00024849      0.00000080     -0.00001556      0.40188533     -0.00000000
 2ba00a        -0.00024849     -0.00000080      0.00001556     -0.40188533      0.00000000
 ba20a0        -0.00000000     -0.40188532     -0.00000111      0.00000080     -0.00000000
 2ab0a0        -0.00002187      0.00000111     -0.40188532     -0.00001556     -0.00000000
 b2a0a0        -0.00540665     -0.00000000      0.00000000      0.00000000      0.23412684
 a2b0a0        -0.03292820     -0.00000000      0.00000000      0.00000000      0.23412684
 2baa00        -0.30179650      0.00000000     -0.00000000     -0.00000000     -0.23412685
 2aba00        -0.28941895      0.00000000      0.00000000     -0.00000000     -0.23412685
 ab200a         0.28401231      0.00000000      0.00000000     -0.00000000     -0.23412684
 ab20a0        -0.00000000     -0.13386910     -0.00000037      0.00000027     -0.00000000
 a2b00a         0.00000000     -0.13386911     -0.00000037      0.00000027     -0.00000000
 2ba0a0        -0.00002084      0.00000037     -0.13386910     -0.00000518     -0.00000000
 b2aa00         0.00002084      0.00000037     -0.13386911     -0.00000518      0.00000000
 2ab00a        -0.00023681     -0.00000027      0.00000518     -0.13386910     -0.00000000
 ba2a00        -0.00023681      0.00000027     -0.00000518      0.13386911     -0.00000000
 ba200a         0.26886830      0.00000000      0.00000000      0.00000000     -0.23412684
 2020a0        -0.00000000     -0.00000042      0.00000818     -0.21132669      0.00000000
 22000a         0.00000000     -0.00000058      0.21132669      0.00000818      0.00000000
 022a00        -0.00000000     -0.21132669     -0.00000058      0.00000042     -0.00000000
 a02020        -0.00000000     -0.04807646     -0.00000013      0.00000010     -0.00000000
 a20002         0.00000000     -0.04807646     -0.00000013      0.00000010     -0.00000000
 20a020         0.00000455     -0.00000013      0.04807645      0.00000186      0.00000000
 02a200        -0.00000455     -0.00000013      0.04807646      0.00000186     -0.00000000
 0a2200         0.00005175     -0.00000010      0.00000186     -0.04807646      0.00000000
 2a0002        -0.00005175     -0.00000010      0.00000186     -0.04807645     -0.00000000
 0220a0        -0.00001167      0.00000011     -0.00000219      0.05668953     -0.00000000
 02200a         0.00000103      0.00000016     -0.05668953     -0.00000219      0.00000000
 220a00        -0.00000000      0.05668953      0.00000016     -0.00000011      0.00000000
 2200a0         0.00001167      0.00000011     -0.00000219      0.05668953     -0.00000000
 202a00         0.00000000      0.05668953      0.00000016     -0.00000011      0.00000000
 20200a        -0.00000103      0.00000016     -0.05668953     -0.00000219     -0.00000000
 
 Energy:     -294.36701861   -294.36079916   -294.36079916   -294.36079916   -294.35988574
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 a2a0a0         0.00000000     -0.00000000     -0.00000000      0.81128640     -0.00000814      0.00003589     -0.00008567
 2aaa00         0.00000000     -0.00000000     -0.00000000      0.37666085     -0.00001198      0.00000291     -0.00182744
 2aa00a         0.00005047     -0.00000009     -0.70371179      0.00000058      0.00000022      0.00000781      0.70318987
 aa2a00        -0.00005047      0.00000009      0.70371178      0.00000058      0.00000022      0.00000781      0.70318988
 2aa0a0         0.70371173      0.00030334      0.00005047      0.00003167     -0.00000001     -0.70319214      0.00000784
 aa20a0        -0.00030334      0.70371173     -0.00000011      0.00000672      0.70319214     -0.00000001     -0.00000024
 a2a00a        -0.00030334      0.70371172     -0.00000011     -0.00000672     -0.70319215      0.00000001      0.00000024
 a2aa00         0.70371171      0.00030334      0.00005047     -0.00003167      0.00000001      0.70319215     -0.00000784
 aa200a        -0.00000000      0.00000000      0.00000000      0.43462554      0.00000384      0.00003298      0.00174177
 02aaa0        -0.00000000     -0.00000000     -0.00000000      0.05328303     -0.00000050      0.00000242      0.00000206
 a200aa         0.00000000     -0.00000000     -0.00000000      0.05303392     -0.00000057      0.00000229     -0.00001328
 
 Energy:     -294.37800408   -294.37800408   -294.37800408   -294.37070406   -294.37070406   -294.37070406   -294.37070406

 State:              8               9
 a2a0a0         0.03346582     -0.57350524
 2aaa00         0.71932527      0.57350525
 2aa00a         0.00178615     -0.00000000
 aa2a00         0.00178615      0.00000000
 2aa0a0        -0.00001372      0.00000000
 aa20a0         0.00000820     -0.00000000
 a2a00a        -0.00000820      0.00000000
 a2aa00         0.00001372      0.00000000
 aa200a        -0.68585946      0.57350525
 02aaa0        -0.00082665     -0.04126756
 a200aa         0.00521226     -0.04126755
 
 Energy:     -294.37070406   -294.35996201
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.66       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        33.01     12.74      2.82     17.07
 REAL TIME  *        38.18 SEC
 DISK USED  *        96.98 MB (local),        2.31 GB (total)
 SF USED    *       162.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -294.6562742   2.0
    -294.6562742   2.0
    -294.6562742   2.0
    -294.3670186   6.0
    -294.3670186   6.0
    -294.3670186   6.0
    -294.3670186   6.0
    -294.3670186   6.0
    -294.3607992   2.0
    -294.3607992   2.0
    -294.3607992   2.0
    -294.3598857  -0.0
    -294.3780041   2.0
    -294.3780041   2.0
    -294.3780041   2.0
    -294.3707041   6.0
    -294.3707041   6.0
    -294.3707041   6.0
    -294.3707041   6.0
    -294.3707041   6.0
    -294.3599620  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 25
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      126 conf      210 CSFs
 N elec internal:     8466 conf    28630 CSFs
 N-1 el internal:     9105 conf    51730 CSFs
 N-2 el internal:     7880 conf    73240 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.65627418
     2      -294.65627418
     3      -294.65627418
     4      -294.36701861
     5      -294.36701861
     6      -294.36701861
     7      -294.36701861
     8      -294.36701861
     9      -294.36079916
    10      -294.36079916
    11      -294.36079916
    12      -294.35988574

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2908D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1162D-06

 Number of blocks in overlap matrix:  1222   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    2793
 Number of N-1 electron functions:   51730

 Number of internal configurations:                15498
 Number of singly external configurations:       6875330
 Number of doubly external configurations:      49043046
 Total number of contracted configurations:     55933874
 Total number of uncontracted configurations: 1291473932

 Diagonal Coupling coefficients finished.               Storage:  14750867 words, CPU-Time:     43.46 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4383498 words, CPU-time:      6.93 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.65627418     0.00000000    -1.19762325  0.27D-01  0.13D+00    64.90
    1     2     2     1.00000000     0.00000000  -294.65627418    -0.00000000    -1.19760227  0.27D-01  0.13D+00    64.90
    1     3     3     1.00000000     0.00000000  -294.65627418    -0.00000000    -1.19742879  0.27D-01  0.13D+00    64.90
    1     4     4     1.00000000     0.00000000  -294.36701861     0.00000000    -1.18154758  0.45D-01  0.12D+00    64.90
    1     5     5     1.00000000     0.00000000  -294.36701861     0.00000000    -1.17865117  0.45D-01  0.12D+00    64.90
    1     6     6     1.00000000     0.00000000  -294.36701861     0.00000000    -1.17861942  0.45D-01  0.12D+00    64.90
    1     7     7     1.00000000     0.00000000  -294.36701861     0.00000000    -1.17862857  0.45D-01  0.12D+00    64.90
    1     8     8     1.00000000     0.00000000  -294.36701861     0.00000000    -1.17929040  0.45D-01  0.12D+00    64.90
    1     9     9     1.00000000     0.00000000  -294.36079916    -0.00000000    -1.18686644  0.52D-01  0.12D+00    64.90
    1    10    10     1.00000000     0.00000000  -294.36079916     0.00000000    -1.18636841  0.52D-01  0.12D+00    64.90
    1    11    11     1.00000000     0.00000000  -294.36079916    -0.00000000    -1.18724173  0.52D-01  0.12D+00    64.90
    1    12    12     1.00000000     0.00000000  -294.35988574    -0.00000000    -1.18389924  0.48D-01  0.12D+00    64.90
    2     1     1     1.10572426    -0.98900318  -295.64527736    -0.98900318    -0.02526778  0.31D-02  0.16D-02  4033.16
    2     2     2     1.10575209    -0.98899338  -295.64526756    -0.98899338    -0.02529472  0.31D-02  0.16D-02  4033.16
    2     3     3     1.10560552    -0.98894058  -295.64521476    -0.98894058    -0.02532734  0.31D-02  0.16D-02  4033.16
    2     4     4     1.11278433    -0.97213830  -295.33915691    -0.97213830    -0.02578929  0.36D-02  0.18D-02  4033.16
    2     5     5     1.11280165    -0.97210737  -295.33912599    -0.97210737    -0.02582555  0.36D-02  0.18D-02  4033.16
    2     6     6     1.11282416    -0.97208137  -295.33909998    -0.97208137    -0.02585369  0.36D-02  0.18D-02  4033.16
    2     7     7     1.11300443    -0.97202849  -295.33904711    -0.97202849    -0.02591504  0.36D-02  0.18D-02  4033.16
    2     8     8     1.11355739    -0.97136294  -295.33838156    -0.97136294    -0.02662026  0.36D-02  0.19D-02  4033.16
    2     9     9     1.11535830    -0.97094861  -295.33174777    -0.97094861    -0.02694833  0.38D-02  0.20D-02  4033.16
    2    10    10     1.11653352    -0.97027285  -295.33107202    -0.97027285    -0.02957751  0.55D-02  0.19D-02  4033.16
    2    11    11     1.11673773    -0.97014322  -295.33094238    -0.97014322    -0.02971493  0.55D-02  0.19D-02  4033.16
    2    12    12     1.11684925    -0.97096541  -295.33085115    -0.97096541    -0.02980738  0.55D-02  0.20D-02  4033.16
    3     1     1     1.09647454    -1.01309205  -295.66936623    -0.02408887    -0.00038152  0.45D-04  0.31D-04  8183.87
    3     2     2     1.09645800    -1.01309060  -295.66936478    -0.02409722    -0.00038097  0.44D-04  0.32D-04  8183.87
    3     3     3     1.09641427    -1.01308063  -295.66935481    -0.02414005    -0.00038824  0.45D-04  0.33D-04  8183.87
    3     4     4     1.09719886    -0.99708410  -295.36410272    -0.02494580    -0.00036957  0.51D-04  0.35D-04  8183.87
    3     5     5     1.09719885    -0.99708409  -295.36410270    -0.02497671    -0.00037002  0.51D-04  0.35D-04  8183.87
    3     6     6     1.09720013    -0.99708371  -295.36410233    -0.02500234    -0.00037016  0.51D-04  0.35D-04  8183.87
    3     7     7     1.09724954    -0.99708281  -295.36410142    -0.02505431    -0.00037119  0.51D-04  0.34D-04  8183.87
    3     8     8     1.09722847    -0.99707204  -295.36409065    -0.02570910    -0.00037974  0.50D-04  0.37D-04  8183.87
    3     9     9     1.09775419    -0.99876893  -295.35956809    -0.02782032    -0.00048350  0.65D-04  0.48D-04  8183.87
    3    10    10     1.09775369    -0.99876770  -295.35956687    -0.02849485    -0.00048435  0.64D-04  0.49D-04  8183.87
    3    11    11     1.09773664    -0.99876767  -295.35956683    -0.02862446    -0.00048328  0.65D-04  0.48D-04  8183.87
    3    12    12     1.09796479    -0.99803939  -295.35792514    -0.02707399    -0.00039791  0.58D-04  0.38D-04  8183.87
    4     1     1     1.09645520    -1.01348328  -295.66975746    -0.00039123    -0.00001464  0.13D-05  0.17D-05 12363.27
    4     2     2     1.09644874    -1.01348268  -295.66975686    -0.00039208    -0.00001498  0.13D-05  0.18D-05 12363.27
    4     3     3     1.09643196    -1.01348144  -295.66975562    -0.00040081    -0.00001588  0.13D-05  0.19D-05 12363.27
    4     4     4     1.09657456    -0.99748442  -295.36450303    -0.00040031    -0.00001541  0.22D-05  0.20D-05 12363.27
    4     5     5     1.09658351    -0.99748432  -295.36450293    -0.00040023    -0.00001541  0.22D-05  0.20D-05 12363.27
    4     6     6     1.09657361    -0.99748429  -295.36450291    -0.00040058    -0.00001548  0.22D-05  0.20D-05 12363.27
    4     7     7     1.09657206    -0.99748424  -295.36450285    -0.00040143    -0.00001550  0.22D-05  0.20D-05 12363.27
    4     8     8     1.09656619    -0.99748327  -295.36450189    -0.00041123    -0.00001599  0.22D-05  0.21D-05 12363.27
    4     9     9     1.09698850    -0.99928671  -295.36008588    -0.00051778    -0.00002081  0.31D-05  0.27D-05 12363.27
    4    10    10     1.09698519    -0.99928668  -295.36008584    -0.00051897    -0.00002081  0.31D-05  0.27D-05 12363.27
    4    11    11     1.09698177    -0.99928616  -295.36008533    -0.00051849    -0.00002110  0.31D-05  0.28D-05 12363.27
    4    12    12     1.09718998    -0.99847559  -295.35836133    -0.00043620    -0.00001689  0.23D-05  0.22D-05 12363.27
    5     1     1     1.09661271    -1.01349933  -295.66977351    -0.00001605    -0.00000059  0.16D-07  0.94D-07 16539.68
    5     2     2     1.09661231    -1.01349924  -295.66977342    -0.00001656    -0.00000065  0.17D-07  0.11D-06 16539.68
    5     3     3     1.09660968    -1.01349914  -295.66977332    -0.00001769    -0.00000073  0.19D-07  0.12D-06 16539.68
    5     4     4     1.09662438    -0.99750277  -295.36452138    -0.00001835    -0.00000097  0.29D-07  0.18D-06 16539.68
    5     5     5     1.09662404    -0.99750275  -295.36452136    -0.00001843    -0.00000098  0.29D-07  0.18D-06 16539.68
    5     6     6     1.09662439    -0.99750274  -295.36452136    -0.00001845    -0.00000098  0.29D-07  0.18D-06 16539.68
    5     7     7     1.09662364    -0.99750274  -295.36452135    -0.00001850    -0.00000099  0.28D-07  0.18D-06 16539.68
    5     8     8     1.09662072    -0.99750259  -295.36452121    -0.00001932    -0.00000108  0.30D-07  0.20D-06 16539.68
    5     9     9     1.09702216    -0.99931132  -295.36011048    -0.00002460    -0.00000140  0.55D-07  0.25D-06 16539.68
    5    10    10     1.09702232    -0.99931130  -295.36011047    -0.00002463    -0.00000141  0.55D-07  0.26D-06 16539.68
    5    11    11     1.09702040    -0.99931123  -295.36011040    -0.00002507    -0.00000145  0.56D-07  0.26D-06 16539.68
    5    12    12     1.09723734    -0.99849606  -295.35838180    -0.00002047    -0.00000107  0.35D-07  0.19D-06 16539.68
    6     1     1     1.09663736    -1.01350002  -295.66977421    -0.00000069    -0.00000003  0.19D-08  0.45D-08 20699.08
    6     2     2     1.09663767    -1.01350002  -295.66977420    -0.00000077    -0.00000004  0.22D-08  0.53D-08 20699.08
    6     3     3     1.09663753    -1.01350001  -295.66977419    -0.00000087    -0.00000004  0.26D-08  0.61D-08 20699.08
    6     4     4     1.09663772    -0.99750395  -295.36452256    -0.00000118    -0.00000007  0.26D-08  0.12D-07 20699.08
    6     5     5     1.09663719    -0.99750395  -295.36452256    -0.00000120    -0.00000006  0.27D-08  0.11D-07 20699.08
    6     6     6     1.09663752    -0.99750395  -295.36452256    -0.00000120    -0.00000007  0.27D-08  0.12D-07 20699.08
    6     7     7     1.09663759    -0.99750394  -295.36452256    -0.00000121    -0.00000007  0.27D-08  0.12D-07 20699.08
    6     8     8     1.09663665    -0.99750393  -295.36452254    -0.00000134    -0.00000008  0.29D-08  0.13D-07 20699.08
    6     9     9     1.09703062    -0.99931301  -295.36011217    -0.00000170    -0.00000010  0.52D-08  0.18D-07 20699.08
    6    10    10     1.09703055    -0.99931301  -295.36011217    -0.00000170    -0.00000010  0.53D-08  0.18D-07 20699.08
    6    11    11     1.09702998    -0.99931300  -295.36011216    -0.00000177    -0.00000011  0.56D-08  0.19D-07 20699.08
    6    12    12     1.09724645    -0.99849736  -295.35838310    -0.00000130    -0.00000007  0.22D-08  0.12D-07 20699.08
    7     1     1     1.09663738    -1.01350002  -295.66977421    -0.00000000    -0.00000003  0.19D-08  0.45D-08 23931.36
    7     2     2     1.09663767    -1.01350002  -295.66977420    -0.00000000    -0.00000004  0.22D-08  0.53D-08 23931.36
    7     3     3     1.09663755    -1.01350001  -295.66977419    -0.00000000    -0.00000004  0.26D-08  0.60D-08 23931.36
    7     4     4     1.09664241    -0.99750403  -295.36452264    -0.00000008    -0.00000001  0.27D-09  0.90D-09 23931.36
    7     5     5     1.09664234    -0.99750402  -295.36452264    -0.00000008    -0.00000001  0.23D-09  0.11D-08 23931.36
    7     6     6     1.09664230    -0.99750402  -295.36452264    -0.00000008    -0.00000001  0.24D-09  0.11D-08 23931.36
    7     7     7     1.09664241    -0.99750402  -295.36452264    -0.00000008    -0.00000001  0.31D-09  0.12D-08 23931.36
    7     8     8     1.09664231    -0.99750402  -295.36452263    -0.00000009    -0.00000001  0.24D-09  0.11D-08 23931.36
    7     9     9     1.09703577    -0.99931313  -295.36011229    -0.00000012    -0.00000001  0.28D-09  0.16D-08 23931.36
    7    10    10     1.09703532    -0.99931313  -295.36011229    -0.00000012    -0.00000001  0.44D-09  0.19D-08 23931.36
    7    11    11     1.09703548    -0.99931313  -295.36011229    -0.00000013    -0.00000001  0.38D-09  0.19D-08 23931.36
    7    12    12     1.09725162    -0.99849744  -295.35838318    -0.00000008    -0.00000000  0.12D-09  0.91D-09 23931.36


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%  10.0%
 P   0.2%  22.0%  52.0%

 Initialization:   0.2%
 Other:           15.5%

 Total CPU:    23931.4 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/2000           0.9542266  -0.0059050   0.0042176  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000001
                           -0.0173106  -0.0000771   0.0033270   0.0000000
 222222222222/000          -0.0042626  -0.0072828   0.9542168  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                            0.0026554  -0.0109422   0.0135628  -0.0000000
 2222222222/22000           0.0058726   0.9542080   0.0073089   0.0000000   0.0000001   0.0000000   0.0000000  -0.0000000
                           -0.0020058  -0.0138200  -0.0107570  -0.0000000
 2222222222/2/0\0          -0.0000000   0.0000000  -0.0000000   0.1619929  -0.0292218  -0.0147387   0.7523057   0.0714254
                            0.0000001  -0.0000001  -0.0000000   0.5473018
 2222222222//200\           0.0000000  -0.0000000   0.0000000   0.7334661  -0.0686167  -0.0066276   0.2350249   0.0204373
                           -0.0000001   0.0000001   0.0000001  -0.5473011
 22222222222//0\0           0.0000434   0.0000742  -0.0097263   0.0013994  -0.0072262   0.6695822   0.0109778   0.0164129
                            0.0944377  -0.3891475   0.4823458  -0.0000000
 2222222222/2/\00           0.0000434   0.0000742  -0.0097264  -0.0013994   0.0072262  -0.6695818  -0.0109777  -0.0164129
                            0.0944377  -0.3891477   0.4823461  -0.0000001
 2222222222/2/00\           0.0000599   0.0097263   0.0000745  -0.0581348  -0.6671984  -0.0069333  -0.0138487   0.0033178
                            0.0713360   0.4914966   0.3825634   0.0000001
 2222222222//20\0           0.0000599   0.0097264   0.0000745   0.0581348   0.6671983   0.0069333   0.0138488  -0.0033178
                            0.0713360   0.4914965   0.3825634   0.0000001
 2222222222//2\00          -0.0097267   0.0000602  -0.0000430   0.0021882   0.0046090  -0.0152489  -0.0638856   0.6666666
                           -0.6156335  -0.0027433   0.1183206   0.0000001
 22222222222//00\           0.0097266  -0.0000602   0.0000430   0.0021882   0.0046089  -0.0152489  -0.0638855   0.6666664
                            0.6156337   0.0027433  -0.1183207  -0.0000001
 22222222222//\00           0.0000000  -0.0000000   0.0000000  -0.5714728   0.0393948  -0.0081111   0.5172816   0.0509881
                           -0.0000001   0.0000001   0.0000000  -0.5473012
 22222222222020/0          -0.0113119   0.0000700  -0.0000500  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                           -0.1973959  -0.0008796   0.0379382   0.0000000
 2222222222/\2/00           0.0020430  -0.0000126   0.0000090  -0.0000304  -0.0000640   0.0002117   0.0008868  -0.0092541
                            0.1768683   0.0007881  -0.0339929  -0.0000000
 22222222222/\00/           0.0020431  -0.0000126   0.0000090   0.0000304   0.0000640  -0.0002117  -0.0008868   0.0092540
                            0.1768682   0.0007881  -0.0339929  -0.0000000
 2222222222022/00          -0.0000696  -0.0113119  -0.0000866   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                           -0.0228730  -0.1575922  -0.1226642  -0.0000000
 222222222222000/           0.0000505   0.0000863  -0.0113122  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                            0.0302804  -0.1247758   0.1546588  -0.0000000
 2222222222/\20/0           0.0000126   0.0020429   0.0000156   0.0008070   0.0092616   0.0000962   0.0001922  -0.0000461
                            0.0204944   0.1412043   0.1099084   0.0000000
 2222222222/2\00/           0.0000126   0.0020432   0.0000157  -0.0008070  -0.0092617  -0.0000962  -0.0001922   0.0000461
                            0.0204944   0.1412042   0.1099083   0.0000000
 22222222222/\0/0          -0.0000091  -0.0000156   0.0020432  -0.0000194   0.0001003  -0.0092949  -0.0001524  -0.0002278
                           -0.0271315   0.1118002  -0.1385757   0.0000000
 2222222222/2\/00          -0.0000091  -0.0000156   0.0020431   0.0000194  -0.0001003   0.0092946   0.0001524   0.0002278
                           -0.0271315   0.1118001  -0.1385755   0.0000000
 2222222222///\0\          -0.0106978   0.0000662  -0.0000473  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000001
                           -0.0686294  -0.0003058   0.0131901   0.0000000
 222222222220/020           0.0000504   0.0000861  -0.0112815   0.0001244  -0.0006426   0.0595394   0.0009761   0.0014594
                            0.0071313  -0.0293860   0.0364237  -0.0000000
 222222222202/200           0.0000504   0.0000861  -0.0112813  -0.0001244   0.0006426  -0.0595392  -0.0009761  -0.0014594
                            0.0071313  -0.0293858   0.0364236  -0.0000000
 2222222222/20002          -0.0000694  -0.0112813  -0.0000864   0.0051694   0.0593274   0.0006165   0.0012314  -0.0002950
                           -0.0053869  -0.0371148  -0.0288888  -0.0000000
 2222222222/02020          -0.0000694  -0.0112813  -0.0000864  -0.0051693  -0.0593273  -0.0006165  -0.0012314   0.0002950
                           -0.0053868  -0.0371147  -0.0288887  -0.0000000
 22222222222/0002          -0.0112817   0.0000698  -0.0000499  -0.0001946  -0.0004098   0.0013559   0.0056807  -0.0592801
                           -0.0464888  -0.0002072   0.0089348   0.0000000
 22222222220/2200          -0.0112816   0.0000698  -0.0000499   0.0001946   0.0004098  -0.0013559  -0.0056807   0.0592800
                           -0.0464886  -0.0002072   0.0089348   0.0000000
 2222222222///0\\           0.0000658   0.0106975   0.0000819   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                            0.0079524   0.0547911   0.0426475   0.0000000
 222222222202//\0           0.0000000  -0.0000000   0.0000000   0.0103729  -0.0019975  -0.0010630   0.0544628   0.0051745
                            0.0000000  -0.0000000  -0.0000000   0.0378254
 2222222222///\\0          -0.0000478  -0.0000816   0.0106976   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                           -0.0105277   0.0433812  -0.0537707   0.0000000
 22222222220/2/0\          -0.0000000   0.0000000  -0.0000000   0.0532321  -0.0049520  -0.0004547   0.0156678   0.0013505
                           -0.0000000   0.0000000   0.0000000  -0.0378253
 22222222220220/0          -0.0084226   0.0000521  -0.0000372  -0.0000430  -0.0000905   0.0002994   0.0012542  -0.0130875
                            0.0527331   0.0002350  -0.0101350  -0.0000000
 22222222222200/0          -0.0084225   0.0000521  -0.0000372   0.0000430   0.0000905  -0.0002994  -0.0012542   0.0130875
                            0.0527330   0.0002350  -0.0101349  -0.0000000
 2222222222/020/\           0.0000000  -0.0000000   0.0000000  -0.0524199   0.0049318   0.0005000  -0.0181863  -0.0015934
                            0.0000000  -0.0000000  -0.0000000   0.0378253
 2222222222//\002          -0.0000000   0.0000000  -0.0000000   0.0511792  -0.0047879  -0.0004625   0.0163994   0.0014261
                           -0.0000000   0.0000000   0.0000000  -0.0370156

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.954589    0.005875   -0.004264    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000134   -0.000097
            -0.021770    0.000000
 2          -0.005907    0.954570   -0.007286    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.021770   -0.000166
             0.000135   -0.000000
 3           0.004219    0.007312    0.954579   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000167    0.021770
            -0.000096    0.000000
 4           0.000000    0.000000    0.000000    0.254249    0.082865    0.001995    0.003119   -0.916673   -0.000000   -0.000000
             0.000000   -0.000000
 5          -0.000000    0.000000    0.000000   -0.040531    0.951018   -0.010300    0.006570    0.074728   -0.000000   -0.000000
            -0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.018100    0.009883    0.954416   -0.021736   -0.002124   -0.000000    0.000000
            -0.000000   -0.000000
 7           0.000000    0.000000   -0.000000    0.915246    0.019740    0.015648   -0.091062    0.255362    0.000000    0.000000
             0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.086738   -0.004729    0.023395    0.950260    0.026915    0.000000    0.000000
            -0.000000   -0.000000
 9           0.021558    0.002498   -0.003307   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.108607    0.143779
             0.937287    0.000000
 10          0.000096    0.017211    0.013627    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.748291   -0.592468
             0.004177   -0.000000
 11         -0.004143    0.013396   -0.016890   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.582443    0.734360
            -0.180140   -0.000000
 12         -0.000000    0.000000    0.000000    0.000001    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.954634

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954865   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000091    0.000001
            -0.000017    0.000000
 2          -0.000000    0.954865   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000010    0.000072
             0.000057   -0.000000
 3           0.000000   -0.000000    0.954865    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000013    0.000058
            -0.000071   -0.000000
 4          -0.000000    0.000000    0.000000    0.954889    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.954889   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.954889    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000
 7           0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.954889   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.954889    0.000000    0.000000
            -0.000000   -0.000000
 9           0.000091    0.000010   -0.000013   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.954702    0.000000
             0.000000   -0.000000
 10          0.000001    0.000072    0.000058   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.954702
             0.000000    0.000000
 11         -0.000017    0.000057   -0.000071   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.954702    0.000000
 12          0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.954634


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95458885 (fixed)   0.95490062 (relaxed)   0.95486467 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012276   -0.00018344   -0.89355300
 Singles      0.00856623   -0.03360053   -0.03855474
 Pairs        0.08808301   -0.00000000   -0.08139228
 Total        1.09677200   -0.03378397   -1.01350002
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65611927
 Nuclear energy                         0.00000000
 Kinetic energy                       111.87505763
 One electron energy                 -513.46554038
 Two electron energy                  217.79576618
 Virial quotient                       -2.64285696
 Correlation energy                    -1.01365493
 !MRCI STATE 1.2 Energy              -295.669774205892

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.76786762 (Davidson, fixed reference)
 Cluster corrected energies          -295.76778391 (Davidson, relaxed reference)
 Cluster corrected energies          -295.76786762 (Davidson, rotated reference)

 Cluster corrected energies          -295.76749796 (Pople, fixed reference)
 Cluster corrected energies          -295.76740741 (Pople, relaxed reference)
 Cluster corrected energies          -295.76749796 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95457024 (fixed)   0.95490049 (relaxed)   0.95486453 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012276   -0.00018344   -0.89355321
 Singles      0.00856597   -0.03360003   -0.03855429
 Pairs        0.08808357    0.00000000   -0.08139252
 Total        1.09677230   -0.03378347   -1.01350002
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65611927
 Nuclear energy                         0.00000000
 Kinetic energy                       111.87504326
 One electron energy                 -513.46555789
 Two electron energy                  217.79578369
 Virial quotient                       -2.64285729
 Correlation energy                    -1.01365493
 !MRCI STATE 2.2 Energy              -295.669774197016

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.76786792 (Davidson, fixed reference)
 Cluster corrected energies          -295.76778420 (Davidson, relaxed reference)
 Cluster corrected energies          -295.76786792 (Davidson, rotated reference)

 Cluster corrected energies          -295.76749828 (Pople, fixed reference)
 Cluster corrected energies          -295.76740773 (Pople, relaxed reference)
 Cluster corrected energies          -295.76749828 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95457904 (fixed)   0.95490054 (relaxed)   0.95486459 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012277   -0.00018344   -0.89355385
 Singles      0.00856569   -0.03359943   -0.03855381
 Pairs        0.08808372   -0.00000000   -0.08139235
 Total        1.09677218   -0.03378286   -1.01350001
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65611927
 Nuclear energy                         0.00000000
 Kinetic energy                       111.87504842
 One electron energy                 -513.46558787
 Two electron energy                  217.79581368
 Virial quotient                       -2.64285717
 Correlation energy                    -1.01365492
 !MRCI STATE 3.2 Energy              -295.669774190209

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.76786779 (Davidson, fixed reference)
 Cluster corrected energies          -295.76778407 (Davidson, relaxed reference)
 Cluster corrected energies          -295.76786779 (Davidson, rotated reference)

 Cluster corrected energies          -295.76749815 (Pople, fixed reference)
 Cluster corrected energies          -295.76740758 (Pople, relaxed reference)
 Cluster corrected energies          -295.76749815 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.91667295 (fixed)   0.95489221 (relaxed)   0.95488862 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006798   -0.00024088   -0.86022135
 Singles      0.01633226   -0.05415271   -0.06422977
 Pairs        0.08031673    0.00000022   -0.07305291
 Total        1.09671697   -0.05439337   -0.99750403
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36701861
 Nuclear energy                         0.00000000
 Kinetic energy                       111.49643346
 One electron energy                 -507.85740400
 Two electron energy                  212.49288136
 Virial quotient                       -2.64909391
 Correlation energy                    -0.99750403
 !MRCI STATE 4.2 Energy              -295.364522638903

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46099820 (Davidson, fixed reference)
 Cluster corrected energies          -295.46098998 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46099820 (Davidson, rotated reference)

 Cluster corrected energies          -295.46062995 (Pople, fixed reference)
 Cluster corrected energies          -295.46062106 (Pople, relaxed reference)
 Cluster corrected energies          -295.46062995 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.95101844 (fixed)   0.95489224 (relaxed)   0.95488866 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006798   -0.00024088   -0.86022138
 Singles      0.01633223   -0.05415249   -0.06422966
 Pairs        0.08031668   -0.00000003   -0.07305298
 Total        1.09671689   -0.05439339   -0.99750402
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36701861
 Nuclear energy                         0.00000000
 Kinetic energy                       111.49642916
 One electron energy                 -507.85740562
 Two electron energy                  212.49288299
 Virial quotient                       -2.64909401
 Correlation energy                    -0.99750402
 !MRCI STATE 5.2 Energy              -295.364522637796

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46099813 (Davidson, fixed reference)
 Cluster corrected energies          -295.46098991 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46099813 (Davidson, rotated reference)

 Cluster corrected energies          -295.46062986 (Pople, fixed reference)
 Cluster corrected energies          -295.46062098 (Pople, relaxed reference)
 Cluster corrected energies          -295.46062986 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95441613 (fixed)   0.95489226 (relaxed)   0.95488867 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006798   -0.00024088   -0.86022138
 Singles      0.01633224   -0.05415256   -0.06422969
 Pairs        0.08031663    0.00000000   -0.07305295
 Total        1.09671685   -0.05439343   -0.99750402
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36701861
 Nuclear energy                         0.00000000
 Kinetic energy                       111.49643154
 One electron energy                 -507.85740655
 Two electron energy                  212.49288392
 Virial quotient                       -2.64909395
 Correlation energy                    -0.99750402
 !MRCI STATE 6.2 Energy              -295.364522636427

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46099808 (Davidson, fixed reference)
 Cluster corrected energies          -295.46098987 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46099808 (Davidson, rotated reference)

 Cluster corrected energies          -295.46062982 (Pople, fixed reference)
 Cluster corrected energies          -295.46062093 (Pople, relaxed reference)
 Cluster corrected energies          -295.46062982 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.91524622 (fixed)   0.95489221 (relaxed)   0.95488862 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006798   -0.00024088   -0.86022138
 Singles      0.01633234   -0.05415296   -0.06422990
 Pairs        0.08031664    0.00000050   -0.07305275
 Total        1.09671697   -0.05439333   -0.99750402
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36701861
 Nuclear energy                         0.00000000
 Kinetic energy                       111.49644298
 One electron energy                 -507.85740884
 Two electron energy                  212.49288621
 Virial quotient                       -2.64909368
 Correlation energy                    -0.99750402
 !MRCI STATE 7.2 Energy              -295.364522635302

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46099820 (Davidson, fixed reference)
 Cluster corrected energies          -295.46098998 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46099820 (Davidson, rotated reference)

 Cluster corrected energies          -295.46062994 (Pople, fixed reference)
 Cluster corrected energies          -295.46062105 (Pople, relaxed reference)
 Cluster corrected energies          -295.46062994 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95026037 (fixed)   0.95489225 (relaxed)   0.95488867 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006798   -0.00024088   -0.86022144
 Singles      0.01633223   -0.05415252   -0.06422967
 Pairs        0.08031665    0.00000005   -0.07305291
 Total        1.09671686   -0.05439335   -0.99750402
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36701861
 Nuclear energy                         0.00000000
 Kinetic energy                       111.49643012
 One electron energy                 -507.85740581
 Two electron energy                  212.49288317
 Virial quotient                       -2.64909399
 Correlation energy                    -0.99750402
 !MRCI STATE 8.2 Energy              -295.364522634178

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46099809 (Davidson, fixed reference)
 Cluster corrected energies          -295.46098988 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46099809 (Davidson, rotated reference)

 Cluster corrected energies          -295.46062983 (Pople, fixed reference)
 Cluster corrected energies          -295.46062094 (Pople, relaxed reference)
 Cluster corrected energies          -295.46062983 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.93728681 (fixed)   0.95471403 (relaxed)   0.95470228 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009969   -0.00029436   -0.86111005
 Singles      0.01662734   -0.05464983   -0.06495389
 Pairs        0.08041810   -0.00000021   -0.07324919
 Total        1.09714513   -0.05494441   -0.99931313
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36095407
 Nuclear energy                         0.00000000
 Kinetic energy                       111.51548271
 One electron energy                 -507.95797571
 Two electron energy                  212.59786342
 Virial quotient                       -2.64860184
 Correlation energy                    -0.99915822
 !MRCI STATE 9.2 Energy              -295.360112290966

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.45717565 (Davidson, fixed reference)
 Cluster corrected energies          -295.45714866 (Davidson, relaxed reference)
 Cluster corrected energies          -295.45717565 (Davidson, rotated reference)

 Cluster corrected energies          -295.45684190 (Pople, fixed reference)
 Cluster corrected energies          -295.45681269 (Pople, relaxed reference)
 Cluster corrected energies          -295.45684190 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.74829112 (fixed)   0.95471423 (relaxed)   0.95470248 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009969   -0.00029436   -0.86110967
 Singles      0.01662815   -0.05465101   -0.06495496
 Pairs        0.08041684    0.00000015   -0.07324850
 Total        1.09714468   -0.05494522   -0.99931313
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36095407
 Nuclear energy                         0.00000000
 Kinetic energy                       111.51551882
 One electron energy                 -507.95796573
 Two electron energy                  212.59785344
 Virial quotient                       -2.64860098
 Correlation energy                    -0.99915822
 !MRCI STATE 10.2 Energy             -295.360112290129

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.45717519 (Davidson, fixed reference)
 Cluster corrected energies          -295.45714820 (Davidson, relaxed reference)
 Cluster corrected energies          -295.45717519 (Davidson, rotated reference)

 Cluster corrected energies          -295.45684141 (Pople, fixed reference)
 Cluster corrected energies          -295.45681219 (Pople, relaxed reference)
 Cluster corrected energies          -295.45684141 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.73435977 (fixed)   0.95471416 (relaxed)   0.95470241 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009969   -0.00029436   -0.86110988
 Singles      0.01662780   -0.05465054   -0.06495450
 Pairs        0.08041736    0.00000006   -0.07324875
 Total        1.09714484   -0.05494484   -0.99931313
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36095407
 Nuclear energy                         0.00000000
 Kinetic energy                       111.51550527
 One electron energy                 -507.95797050
 Two electron energy                  212.59785821
 Virial quotient                       -2.64860130
 Correlation energy                    -0.99915822
 !MRCI STATE 11.2 Energy             -295.360112289794

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.45717536 (Davidson, fixed reference)
 Cluster corrected energies          -295.45714837 (Davidson, relaxed reference)
 Cluster corrected energies          -295.45717536 (Davidson, rotated reference)

 Cluster corrected energies          -295.45684159 (Pople, fixed reference)
 Cluster corrected energies          -295.45681237 (Pople, relaxed reference)
 Cluster corrected energies          -295.45684159 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Coefficient of reference function:   C(0) = 0.95463431 (fixed)   0.95463786 (relaxed)   0.95463431 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004534   -0.00017165   -0.00019769
 Singles      0.01694899   -0.05532611   -0.06584203
 Pairs        0.08030704   -0.94299968   -0.93245772
 Total        1.09730137   -0.99849744   -0.99849744
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.35988574
 Nuclear energy                         0.00000000
 Kinetic energy                       111.49469957
 One electron energy                 -507.84556005
 Two electron energy                  212.48717687
 Virial quotient                       -2.64908004
 Correlation energy                    -0.99849744
 !MRCI STATE 12.2 Energy             -295.358383177942

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.45553835 (Davidson, fixed reference)
 Cluster corrected energies          -295.45553020 (Davidson, relaxed reference)
 Cluster corrected energies          -295.45553835 (Davidson, rotated reference)

 Cluster corrected energies          -295.45521771 (Pople, fixed reference)
 Cluster corrected energies          -295.45520889 (Pople, relaxed reference)
 Cluster corrected energies          -295.45521771 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     5145.95       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     26016.81  25983.79     12.74      2.82     17.07
 REAL TIME  *     26603.60 SEC
 DISK USED  *         5.12 GB (local),       42.49 GB (total)
 SF USED    *        48.68 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -295.76786762  AU                              
 SETTING HLSDIAG(2)     =      -295.76786792  AU                              
 SETTING HLSDIAG(3)     =      -295.76786779  AU                              
 SETTING HLSDIAG(4)     =      -295.46099820  AU                              
 SETTING HLSDIAG(5)     =      -295.46099813  AU                              
 SETTING HLSDIAG(6)     =      -295.46099808  AU                              
 SETTING HLSDIAG(7)     =      -295.46099820  AU                              
 SETTING HLSDIAG(8)     =      -295.46099809  AU                              
 SETTING HLSDIAG(9)     =      -295.45717565  AU                              
 SETTING HLSDIAG(10)    =      -295.45717519  AU                              
 SETTING HLSDIAG(11)    =      -295.45717536  AU                              
 SETTING HLSDIAG(12)    =      -295.45553835  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 25
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:       66 conf       84 CSFs
 N elec internal:     7606 conf    20444 CSFs
 N-1 el internal:     7990 conf    43460 CSFs
 N-2 el internal:     4430 conf    58610 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  23

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.37800408
     2      -294.37800408
     3      -294.37800408
     4      -294.37070406
     5      -294.37070406
     6      -294.37070406
     7      -294.37070406
     8      -294.37070406
     9      -294.35996201

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1711D-06

 Number of blocks in overlap matrix:   982   Smallest eigenvalue:  0.17D-06
 Number of N-2 electron functions:    2080
 Number of N-1 electron functions:   43460

 Number of internal configurations:                10812
 Number of singly external configurations:       5773336
 Number of doubly external configurations:      36516903
 Total number of contracted configurations:     42301051
 Total number of uncontracted configurations: 1033030024

 Diagonal Coupling coefficients finished.               Storage:   8776592 words, CPU-Time:     14.98 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4216131 words, CPU-time:      7.60 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.37800408    -0.00000000    -1.17926279  0.43D-01  0.12D+00    32.35
    1     2     2     1.00000000     0.00000000  -294.37800408     0.00000000    -1.17903075  0.42D-01  0.12D+00    32.35
    1     3     3     1.00000000     0.00000000  -294.37800408    -0.00000000    -1.17915254  0.43D-01  0.12D+00    32.35
    1     4     4     1.00000000     0.00000000  -294.37070406     0.00000000    -1.18205327  0.43D-01  0.12D+00    32.35
    1     5     5     1.00000000     0.00000000  -294.37070406    -0.00000000    -1.18137726  0.44D-01  0.12D+00    32.35
    1     6     6     1.00000000     0.00000000  -294.37070406    -0.00000000    -1.18094740  0.44D-01  0.12D+00    32.35
    1     7     7     1.00000000     0.00000000  -294.37070406    -0.00000000    -1.18125294  0.44D-01  0.12D+00    32.35
    1     8     8     1.00000000     0.00000000  -294.37070406     0.00000000    -1.17953077  0.43D-01  0.12D+00    32.35
    1     9     9     1.00000000     0.00000000  -294.35996201    -0.00000000    -1.18543522  0.47D-01  0.13D+00    32.35
    2     1     1     1.11210851    -0.97039990  -295.34840398    -0.97039990    -0.02581077  0.30D-02  0.19D-02  1955.54
    2     2     2     1.11215733    -0.97035114  -295.34835522    -0.97035114    -0.02585776  0.31D-02  0.19D-02  1955.54
    2     3     3     1.11221601    -0.97031768  -295.34832176    -0.97031768    -0.02589706  0.31D-02  0.19D-02  1955.54
    2     4     4     1.11256698    -0.97167426  -295.34237833    -0.97167426    -0.02548786  0.31D-02  0.18D-02  1955.54
    2     5     5     1.11326969    -0.97116967  -295.34187374    -0.97116967    -0.02601106  0.32D-02  0.19D-02  1955.54
    2     6     6     1.11340691    -0.97106021  -295.34176427    -0.97106021    -0.02612074  0.32D-02  0.20D-02  1955.54
    2     7     7     1.11346871    -0.97103713  -295.34174119    -0.97103713    -0.02614431  0.32D-02  0.20D-02  1955.54
    2     8     8     1.11311275    -0.97097527  -295.34167933    -0.97097527    -0.02625537  0.31D-02  0.20D-02  1955.54
    2     9     9     1.11594919    -0.97113374  -295.33109576    -0.97113374    -0.02731453  0.39D-02  0.21D-02  1955.54
    3     1     1     1.09646865    -0.99522909  -295.37323317    -0.02482918    -0.00032044  0.37D-04  0.27D-04  3842.82
    3     2     2     1.09647479    -0.99522777  -295.37323185    -0.02487663    -0.00032164  0.37D-04  0.28D-04  3842.82
    3     3     3     1.09646587    -0.99522624  -295.37323032    -0.02490856    -0.00032234  0.38D-04  0.28D-04  3842.82
    3     4     4     1.09699439    -0.99630199  -295.36700606    -0.02462773    -0.00033221  0.50D-04  0.27D-04  3842.82
    3     5     5     1.09699520    -0.99629758  -295.36700164    -0.02512791    -0.00033738  0.49D-04  0.29D-04  3842.82
    3     6     6     1.09703809    -0.99629351  -295.36699757    -0.02523330    -0.00034160  0.50D-04  0.28D-04  3842.82
    3     7     7     1.09705122    -0.99629031  -295.36699438    -0.02525318    -0.00034449  0.51D-04  0.29D-04  3842.82
    3     8     8     1.09704380    -0.99628820  -295.36699226    -0.02531293    -0.00034600  0.51D-04  0.29D-04  3842.82
    3     9     9     1.09779130    -0.99775559  -295.35771760    -0.02662184    -0.00039045  0.73D-04  0.32D-04  3842.82
    4     1     1     1.09583826    -0.99556374  -295.37356782    -0.00033465    -0.00000970  0.10D-05  0.12D-05  5731.11
    4     2     2     1.09583927    -0.99556368  -295.37356776    -0.00033591    -0.00000974  0.10D-05  0.12D-05  5731.11
    4     3     3     1.09583417    -0.99556332  -295.37356740    -0.00033707    -0.00000995  0.10D-05  0.13D-05  5731.11
    4     4     4     1.09633038    -0.99665161  -295.36735567    -0.00034961    -0.00000991  0.12D-05  0.12D-05  5731.11
    4     5     5     1.09633154    -0.99665124  -295.36735531    -0.00035366    -0.00001017  0.12D-05  0.12D-05  5731.11
    4     6     6     1.09634228    -0.99665121  -295.36735527    -0.00035770    -0.00001028  0.12D-05  0.13D-05  5731.11
    4     7     7     1.09634328    -0.99665107  -295.36735514    -0.00036076    -0.00001038  0.12D-05  0.13D-05  5731.11
    4     8     8     1.09633919    -0.99665077  -295.36735484    -0.00036258    -0.00001058  0.12D-05  0.13D-05  5731.11
    4     9     9     1.09700867    -0.99817067  -295.35813268    -0.00041508    -0.00001227  0.14D-05  0.16D-05  5731.11
    5     1     1     1.09584086    -0.99557479  -295.37357887    -0.00001105    -0.00000049  0.14D-07  0.96D-07  7632.15
    5     2     2     1.09584074    -0.99557478  -295.37357886    -0.00001110    -0.00000050  0.14D-07  0.97D-07  7632.15
    5     3     3     1.09583927    -0.99557473  -295.37357881    -0.00001142    -0.00000053  0.14D-07  0.10D-06  7632.15
    5     4     4     1.09634352    -0.99666280  -295.36736687    -0.00001119    -0.00000046  0.15D-07  0.85D-07  7632.15
    5     5     5     1.09634480    -0.99666277  -295.36736683    -0.00001152    -0.00000047  0.14D-07  0.88D-07  7632.15
    5     6     6     1.09634295    -0.99666277  -295.36736683    -0.00001156    -0.00000048  0.15D-07  0.91D-07  7632.15
    5     7     7     1.09634439    -0.99666276  -295.36736682    -0.00001168    -0.00000047  0.14D-07  0.90D-07  7632.15
    5     8     8     1.09634307    -0.99666273  -295.36736679    -0.00001196    -0.00000050  0.14D-07  0.95D-07  7632.15
    5     9     9     1.09703035    -0.99818458  -295.35814659    -0.00001391    -0.00000058  0.18D-07  0.11D-06  7632.15
    6     1     1     1.09584941    -0.99557541  -295.37357949    -0.00000062    -0.00000003  0.16D-08  0.59D-08  9538.60
    6     2     2     1.09584933    -0.99557541  -295.37357949    -0.00000063    -0.00000003  0.16D-08  0.60D-08  9538.60
    6     3     3     1.09584911    -0.99557541  -295.37357949    -0.00000067    -0.00000004  0.18D-08  0.63D-08  9538.60
    6     4     4     1.09635154    -0.99666336  -295.36736742    -0.00000056    -0.00000003  0.11D-08  0.48D-08  9538.60
    6     5     5     1.09635128    -0.99666336  -295.36736742    -0.00000059    -0.00000003  0.13D-08  0.51D-08  9538.60
    6     6     6     1.09635140    -0.99666333  -295.36736740    -0.00000057    -0.00000003  0.12D-08  0.50D-08  9538.60
    6     7     7     1.09635126    -0.99666333  -295.36736740    -0.00000058    -0.00000003  0.13D-08  0.51D-08  9538.60
    6     8     8     1.09635096    -0.99666333  -295.36736740    -0.00000060    -0.00000003  0.13D-08  0.53D-08  9538.60
    6     9     9     1.09703621    -0.99818527  -295.35814728    -0.00000069    -0.00000003  0.13D-08  0.63D-08  9538.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%  12.1%
 P   0.3%  23.2%  45.2%

 Initialization:   0.2%
 Other:           18.8%

 Total CPU:     9538.6 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/0/0           0.0000000  -0.0000000  -0.0000000   0.7609748   0.1478213  -0.0018563   0.0001156  -0.0003672
                            0.5473399
 2222222222//200/           0.0000000  -0.0000000   0.0000000   0.2524675   0.7329342  -0.0019192   0.0009196  -0.0006473
                           -0.5473403
 2222222222//2/00          -0.0015202   0.0042569   0.6719817   0.0002240   0.0005125  -0.0000015   0.0026004   0.6713390
                            0.0000000
 22222222222//00/           0.0015202  -0.0042569  -0.6719817   0.0002240   0.0005125  -0.0000015   0.0026004   0.6713391
                            0.0000000
 22222222222//0/0           0.6705507  -0.0440241   0.0017958  -0.0013906  -0.0012448  -0.6708355  -0.0260726   0.0001010
                            0.0000000
 2222222222/2//00           0.6705510  -0.0440241   0.0017958   0.0013906   0.0012448   0.6708347   0.0260725  -0.0001010
                           -0.0000000
 2222222222//20/0           0.0440344   0.6705395  -0.0041482   0.0000112  -0.0009161  -0.0260712   0.6708326  -0.0025978
                           -0.0000000
 2222222222/2/00/           0.0440345   0.6705399  -0.0041482  -0.0000112   0.0009161   0.0260711  -0.6708317   0.0025978
                            0.0000000
 22222222222///00           0.0000000   0.0000000  -0.0000000   0.5085071  -0.5851129   0.0000629  -0.0008040   0.0002802
                           -0.5473403
 2222222222/\///0           0.0000000  -0.0000000   0.0000000   0.0001282   0.0001147   0.0618251   0.0024029  -0.0000093
                            0.0000000
 2222222222//\/0/           0.0000406  -0.0001137  -0.0179502  -0.0000179  -0.0000409   0.0000001  -0.0002076  -0.0535824
                            0.0000000
 2222222222//\0//          -0.0011763  -0.0179117   0.0001108  -0.0000009   0.0000731   0.0020809  -0.0535420   0.0002073
                            0.0000000
 2222222222/200//           0.0000000   0.0000000  -0.0000000   0.0517332   0.0071683  -0.0001207   0.0000041  -0.0000227
                            0.0402909
 222222222202///0           0.0000000   0.0000000  -0.0000000   0.0506546   0.0127208  -0.0001291   0.0000114  -0.0000267
                            0.0402908
 2222222222/020//          -0.0000000   0.0000000  -0.0000000  -0.0143105  -0.0502287   0.0001253  -0.0000633   0.0000434
                            0.0402909

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.062595    0.953190   -0.002161    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 2           0.953174   -0.062580    0.006051   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 3          -0.005897    0.002553    0.955224   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.928549    0.000016    0.001978    0.000319    0.223311    0.000000
 5           0.000000   -0.000000   -0.000000    0.223307   -0.001303    0.001771    0.000729   -0.928549    0.000000
 6          -0.000000   -0.000001    0.000000   -0.002347   -0.037088    0.954302   -0.000002    0.001308    0.000000
 7           0.000001   -0.000000    0.000000    0.000196    0.954298    0.037090    0.003699   -0.001218    0.000000
 8          -0.000000    0.000000   -0.000000   -0.000481   -0.003696   -0.000144    0.955019    0.000639   -0.000000
 9           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.954705

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955245    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.955245    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.955245   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.955026   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.955026   -0.000000   -0.000000    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.955026   -0.000000    0.000000    0.000000
 7           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.955026    0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.955026    0.000000
 9          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.954705


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95318951 (fixed)   0.95525113 (relaxed)   0.95524503 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004502   -0.00014704   -0.85924551
 Singles      0.01607098   -0.05397415   -0.06385300
 Pairs        0.07978275    0.00000000   -0.07247690
 Total        1.09589875   -0.05412119   -0.99557541
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37800408
 Nuclear energy                         0.00000000
 Kinetic energy                       111.48304838
 One electron energy                 -507.81755606
 Two electron energy                  212.44397657
 Virial quotient                       -2.64949321
 Correlation energy                    -0.99557541
 !MRCI STATE 1.2 Energy              -295.373579490686

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46905393 (Davidson, fixed reference)
 Cluster corrected energies          -295.46903999 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46905393 (Davidson, rotated reference)

 Cluster corrected energies          -295.46768028 (Pople, fixed reference)
 Cluster corrected energies          -295.46766541 (Pople, relaxed reference)
 Cluster corrected energies          -295.46768028 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95317376 (fixed)   0.95525116 (relaxed)   0.95524506 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004502   -0.00014704   -0.85924560
 Singles      0.01607098   -0.05397413   -0.06385299
 Pairs        0.07978266    0.00000000   -0.07247682
 Total        1.09589866   -0.05412117   -0.99557541
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37800408
 Nuclear energy                         0.00000000
 Kinetic energy                       111.48304806
 One electron energy                 -507.81755782
 Two electron energy                  212.44397833
 Virial quotient                       -2.64949322
 Correlation energy                    -0.99557541
 !MRCI STATE 2.2 Energy              -295.373579490023

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46905384 (Davidson, fixed reference)
 Cluster corrected energies          -295.46903991 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46905384 (Davidson, rotated reference)

 Cluster corrected energies          -295.46768019 (Pople, fixed reference)
 Cluster corrected energies          -295.46766532 (Pople, relaxed reference)
 Cluster corrected energies          -295.46768019 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95522355 (fixed)   0.95525126 (relaxed)   0.95524516 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004502   -0.00014704   -0.85924598
 Singles      0.01607087   -0.05397390   -0.06385280
 Pairs        0.07978255   -0.00000000   -0.07247662
 Total        1.09589844   -0.05412094   -0.99557541
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37800408
 Nuclear energy                         0.00000000
 Kinetic energy                       111.48304298
 One electron energy                 -507.81756227
 Two electron energy                  212.44398279
 Virial quotient                       -2.64949334
 Correlation energy                    -0.99557541
 !MRCI STATE 3.2 Energy              -295.373579487199

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46905362 (Davidson, fixed reference)
 Cluster corrected energies          -295.46903968 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46905362 (Davidson, rotated reference)

 Cluster corrected energies          -295.46767996 (Pople, fixed reference)
 Cluster corrected energies          -295.46766508 (Pople, relaxed reference)
 Cluster corrected energies          -295.46767996 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.92854886 (fixed)   0.95503116 (relaxed)   0.95502614 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004525   -0.00015781   -0.85949265
 Singles      0.01632536   -0.05435973   -0.06442172
 Pairs        0.08003055    0.00000001   -0.07274899
 Total        1.09640115   -0.05451754   -0.99666336
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37070406
 Nuclear energy                         0.00000000
 Kinetic energy                       111.48814265
 One electron energy                 -507.83093491
 Two electron energy                  212.46356749
 Virial quotient                       -2.64931642
 Correlation energy                    -0.99666336
 !MRCI STATE 4.2 Energy              -295.367367422064

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46344692 (Davidson, fixed reference)
 Cluster corrected energies          -295.46343542 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46344692 (Davidson, rotated reference)

 Cluster corrected energies          -295.46210587 (Pople, fixed reference)
 Cluster corrected energies          -295.46209358 (Pople, relaxed reference)
 Cluster corrected energies          -295.46210587 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.92854920 (fixed)   0.95503127 (relaxed)   0.95502625 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004525   -0.00015781   -0.85949337
 Singles      0.01632513   -0.05435914   -0.06442136
 Pairs        0.08003052   -0.00000002   -0.07274863
 Total        1.09640090   -0.05451697   -0.99666336
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37070406
 Nuclear energy                         0.00000000
 Kinetic energy                       111.48813373
 One electron energy                 -507.83093889
 Two electron energy                  212.46357147
 Virial quotient                       -2.64931664
 Correlation energy                    -0.99666336
 !MRCI STATE 5.2 Energy              -295.367367420360

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46344666 (Davidson, fixed reference)
 Cluster corrected energies          -295.46343516 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46344666 (Davidson, rotated reference)

 Cluster corrected energies          -295.46210559 (Pople, fixed reference)
 Cluster corrected energies          -295.46209331 (Pople, relaxed reference)
 Cluster corrected energies          -295.46210559 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95430201 (fixed)   0.95503122 (relaxed)   0.95502620 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004526   -0.00015782   -0.85949352
 Singles      0.01632505   -0.05435886   -0.06442129
 Pairs        0.08003072   -0.00000001   -0.07274852
 Total        1.09640102   -0.05451669   -0.99666333
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37070406
 Nuclear energy                         0.00000000
 Kinetic energy                       111.48813749
 One electron energy                 -507.83093562
 Two electron energy                  212.46356823
 Virial quotient                       -2.64931655
 Correlation energy                    -0.99666333
 !MRCI STATE 6.2 Energy              -295.367367398421

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46344676 (Davidson, fixed reference)
 Cluster corrected energies          -295.46343526 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46344676 (Davidson, rotated reference)

 Cluster corrected energies          -295.46210570 (Pople, fixed reference)
 Cluster corrected energies          -295.46209341 (Pople, relaxed reference)
 Cluster corrected energies          -295.46210570 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95429781 (fixed)   0.95503129 (relaxed)   0.95502626 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004526   -0.00015782   -0.85949368
 Singles      0.01632504   -0.05435882   -0.06442128
 Pairs        0.08003058   -0.00000000   -0.07274837
 Total        1.09640087   -0.05451664   -0.99666333
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37070406
 Nuclear energy                         0.00000000
 Kinetic energy                       111.48813785
 One electron energy                 -507.83093719
 Two electron energy                  212.46356979
 Virial quotient                       -2.64931654
 Correlation energy                    -0.99666333
 !MRCI STATE 7.2 Energy              -295.367367397820

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46344661 (Davidson, fixed reference)
 Cluster corrected energies          -295.46343511 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46344661 (Davidson, rotated reference)

 Cluster corrected energies          -295.46210554 (Pople, fixed reference)
 Cluster corrected energies          -295.46209325 (Pople, relaxed reference)
 Cluster corrected energies          -295.46210554 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95501889 (fixed)   0.95503141 (relaxed)   0.95502639 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004526   -0.00015782   -0.85949412
 Singles      0.01632491   -0.05435859   -0.06442111
 Pairs        0.08003041    0.00000000   -0.07274811
 Total        1.09640058   -0.05451641   -0.99666333
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37070406
 Nuclear energy                         0.00000000
 Kinetic energy                       111.48813257
 One electron energy                 -507.83093985
 Two electron energy                  212.46357245
 Virial quotient                       -2.64931666
 Correlation energy                    -0.99666333
 !MRCI STATE 8.2 Energy              -295.367367396733

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46344632 (Davidson, fixed reference)
 Cluster corrected energies          -295.46343482 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46344632 (Davidson, rotated reference)

 Cluster corrected energies          -295.46210523 (Pople, fixed reference)
 Cluster corrected energies          -295.46209294 (Pople, relaxed reference)
 Cluster corrected energies          -295.46210523 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95470451 (fixed)   0.95470887 (relaxed)   0.95470451 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009462   -0.00031041   -0.00036902
 Singles      0.01667857   -0.05466339   -0.06499918
 Pairs        0.08036682   -0.94321147   -0.93281708
 Total        1.09714002   -0.99818527   -0.99818527
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.35996201
 Nuclear energy                         0.00000000
 Kinetic energy                       111.49424808
 One electron energy                 -507.84411017
 Two electron energy                  212.48596289
 Virial quotient                       -2.64908865
 Correlation energy                    -0.99818527
 !MRCI STATE 9.2 Energy              -295.358147281150

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.45511101 (Davidson, fixed reference)
 Cluster corrected energies          -295.45510100 (Davidson, relaxed reference)
 Cluster corrected energies          -295.45511101 (Davidson, rotated reference)

 Cluster corrected energies          -295.45381897 (Pople, fixed reference)
 Cluster corrected energies          -295.45380825 (Pople, relaxed reference)
 Cluster corrected energies          -295.45381897 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     8060.99       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     36124.31  10107.49  25983.79     12.74      2.82     17.07
 REAL TIME  *     36962.74 SEC
 DISK USED  *         7.96 GB (local),       65.26 GB (total)
 SF USED    *        48.68 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -295.46905393  AU                              
 SETTING HLSDIAG(14)    =      -295.46905384  AU                              
 SETTING HLSDIAG(15)    =      -295.46905362  AU                              
 SETTING HLSDIAG(16)    =      -295.46344692  AU                              
 SETTING HLSDIAG(17)    =      -295.46344666  AU                              
 SETTING HLSDIAG(18)    =      -295.46344676  AU                              
 SETTING HLSDIAG(19)    =      -295.46344661  AU                              
 SETTING HLSDIAG(20)    =      -295.46344632  AU                              
 SETTING HLSDIAG(21)    =      -295.45511101  AU                              


         HLSDIAG
    -295.7678676
    -295.7678679
    -295.7678678
    -295.4609982
    -295.4609981
    -295.4609981
    -295.4609982
    -295.4609981
    -295.4571756
    -295.4571752
    -295.4571754
    -295.4555383
    -295.4690539
    -295.4690538
    -295.4690536
    -295.4634469
    -295.4634467
    -295.4634468
    -295.4634466
    -295.4634463
    -295.4551110
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -295.669774   -295.669774   -295.669774   -295.364523   -295.364523   -295.364523   -295.364523   -295.364523
                      -295.360112   -295.360112   -295.360112   -295.358383
 Replaced energies:   -295.767868   -295.767868   -295.767868   -295.460998   -295.460998   -295.460998   -295.460998   -295.460998
                      -295.457176   -295.457175   -295.457175   -295.455538

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -295.373579   -295.373579   -295.373579   -295.367367   -295.367367   -295.367367   -295.367367   -295.367367
                      -295.358147
 Replaced energies:   -295.469054   -295.469054   -295.469054   -295.463447   -295.463447   -295.463447   -295.463447   -295.463446
                      -295.455111



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -295.76786792

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -19.13    2497.47      -0.83      -2.74     262.05       5.65       5.38      13.11     -55.63

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           19.13      -0.00     -15.37    -223.65      15.42      -4.75     202.61      17.92      -0.76       0.34

    3   3.2  0.5  0.5       0.00       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2497.47      15.37      -0.00      -0.85       1.91      -4.83     -23.43     261.09      88.07       0.15

    4   4.2  0.5  0.5       0.00       0.00       0.00   67350.12       0.00       0.00       0.00       0.00       0.00       0.00
                            0.83     223.65       0.85      -0.00   -1289.55     -19.11      95.97      19.69      76.57     534.57

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   67350.13       0.00       0.00       0.00       0.00       0.00
                            2.74     -15.42      -1.91    1289.55      -0.00     -35.39    1412.28     119.89       3.96     -40.35

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   67350.14       0.00       0.00       0.00       0.00
                         -262.05       4.75       4.83      19.11      35.39      -0.00     -75.84     956.19    -788.58      15.43

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   67350.12       0.00       0.00       0.00
                           -5.65    -202.61      23.43     -95.97   -1412.28      75.84      -0.00      27.61     -94.86    -437.95

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   67350.14       0.00       0.00
                           -5.38     -17.92    -261.09     -19.69    -119.89    -956.19     -27.61       0.00      93.96    -543.19

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   68189.07       0.00
                          -13.11       0.76     -88.07     -76.57      -3.96     788.58      94.86     -93.96      -0.00      -5.00

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   68189.17
                           55.63      -0.34      -0.15    -534.57      40.35     -15.43     437.95     543.19       5.00       0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -69.03       0.30      16.61    -419.69      26.16    -143.13     434.13    -580.34      -6.43       0.93

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.44    -397.24      -3.04      -0.00      -0.00      -0.00       0.00       0.00    -204.09   -1406.13

   13   1.2  0.5 -0.5       0.00    2497.47      19.06     -21.47    -261.24      -2.69      -4.86      -0.27      -9.65     -70.25
                            0.00     -11.04     -15.46     -63.49      10.25       7.37    -294.42     -27.91      -0.04       0.66

   14   2.2  0.5 -0.5   -2497.47       0.00     -11.16       1.48      -0.39       5.96      25.74    -260.84      88.07       0.83
                           11.04      -0.00   -2497.51       0.77      -4.89     261.99       6.08       6.61     -13.42      56.17

   15   3.2  0.5 -0.5     -19.06      11.16      -0.00    -287.15      25.69       2.63     -91.81      -9.99       0.63      -0.31
                           15.46    2497.51      -0.00      22.48     261.14       4.75       4.15      -1.37     -10.30     -69.83

   16   4.2  0.5 -0.5      21.47      -1.48     287.15      -0.00      -8.85     584.24       5.40      97.62     -63.61     547.24
                           63.49      -0.77     -22.48       0.00      10.47      40.66    -175.61    1862.30     200.67     -43.65

   17   5.2  0.5 -0.5     261.24       0.39     -25.69       8.85      -0.00     -36.03    -111.13     948.84     797.13     -43.16
                          -10.25       4.89    -261.14     -10.47      -0.00     958.83      33.41    -130.30      86.93    -489.03

   18   6.2  0.5 -0.5       2.69      -5.96      -2.63    -584.24      36.03      -0.00    1817.67     185.83       7.27     -19.19
                           -7.37    -261.99      -4.75     -40.66    -958.83       0.00     -29.07       6.11    -107.26    -633.48

   19   7.2  0.5 -0.5       4.86     -25.74      91.81      -5.40     111.13   -1817.67       0.00     -22.39     -34.80     114.73
                          294.42      -6.08      -4.15     175.61     -33.41      29.07       0.00    -405.95     885.16     -16.65

   20   8.2  0.5 -0.5       0.27     260.84       9.99     -97.62    -948.84    -185.83      22.39       0.00      83.20     640.68
                           27.91      -6.61       1.37   -1862.30     130.30      -6.11     405.95      -0.00      81.11     -12.56

   21   9.2  0.5 -0.5       9.65     -88.07      -0.63      63.61    -797.13      -7.27      34.80     -83.20       0.00      -6.31
                            0.04      13.42      10.30    -200.67     -86.93     107.26    -885.16     -81.11      -0.00       1.55

   22  10.2  0.5 -0.5      70.25      -0.83       0.31    -547.24      43.16      19.19    -114.73    -640.68       6.31      -0.00
                           -0.66     -56.17      69.83      43.65     489.03     633.48      16.65      12.56      -1.55       0.00

   23  11.2  0.5 -0.5      54.78      16.58       0.37     686.91      84.16       6.60     266.20    -468.81       5.09       1.23
                            0.18      68.54      55.21     -15.92    -626.24     479.30     165.19      31.18      -0.04       8.05

   24  12.2  0.5 -0.5      -1.77      -3.03     397.25      -0.00       0.00      -0.00      -0.00      -0.00    -270.18    1113.31
                         -397.25       2.46      -1.76       0.00       0.00       0.00       0.00      -0.00   -1761.27      -7.85

   25   1.2  1.5  1.5      37.04      -1.49       0.16     662.47     -63.29      -4.75     199.11     -23.70     -68.83       1.62
                           -3.28    -559.22     -41.35      52.33     598.57     -34.53      13.29      -3.82     112.33     890.36

   26   2.2  1.5  1.5     564.29       0.06       2.52     -45.21       3.58      14.53      46.41    -618.38   -1052.69     -10.06
                            2.75      41.04    -563.99      -5.55     -32.43    -620.45     -15.29     -15.41    -169.25     608.56

   27   3.2  1.5  1.5      -0.04     560.76       4.28      54.04     599.52       6.13      12.61       0.88    -116.68    -848.72
                           -0.02      -1.52       3.48    -129.88      26.54      17.12    -679.58     -64.49       1.32      -1.84

   28   4.2  1.5  1.5      -0.96      -1.47     217.52      -1.36      10.16    -959.21     -17.83     -23.71     -26.98     111.44
                         -655.77       2.87      -2.90       0.88       0.21      -4.42     -18.58     192.79    -528.07      -3.11

   29   5.2  1.5  1.5      -3.61      -4.38     631.13       1.24      -3.99     330.44       3.60       7.23     -78.96     323.13
                         -127.43      -0.27      -1.36      -2.54      -7.91      23.36      94.78    -990.92    -102.53      -1.54

   30   6.2  1.5  1.5     -22.44       0.15      -1.75     315.73      -7.36      20.03   -1008.89    -117.21     -17.85      -0.92
                           -1.83    -572.51     -26.83     -46.09    -529.83      14.39     -10.81       4.61     -48.76    -375.19

   31   7.2  1.5  1.5     577.34      -1.36       3.36      13.77       1.18     -10.45     -88.14     505.84     463.83       3.88
                           -2.82     -26.67     577.27       1.16     -15.40    -512.58      -9.54     -13.85     -73.28     279.02

   32   8.2  1.5  1.5       1.29     572.91       3.82     -46.24    -530.11      -5.40     -10.66       0.68      50.94     362.55
                            0.33       0.10      -2.23    1038.29     -86.06       2.97    -215.44     -22.68       0.54      -1.07

   33   9.2  1.5  1.5      -4.49      -7.67    1005.39       0.01       0.00       0.10      -0.00       0.00     -37.55     154.70
                         1004.83      -6.22       4.44       0.00       0.01      -0.01      -0.08       0.78     244.63       1.08

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -645.77       4.01      -4.33     -40.36      -2.21      16.85     102.35    -687.25    1224.65       7.20

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           42.37      -0.29       4.33    -579.79      39.83     -14.29     545.70      99.40     -79.30      -5.20

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.65      -4.97     652.89       2.09       7.49    -717.74     -15.00     -19.78     189.77    -768.52

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.75    -506.20      -4.10     -76.69    -880.32      -9.31     -18.14       3.10     -45.85    -323.69

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.82     582.50       3.96     -67.82    -765.12      -8.35     -17.01       2.55      55.01     371.56

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          661.10      -4.15       2.92     -33.92       2.56      14.75      23.71    -614.00     524.38       2.31

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           25.72       0.66      -2.47     828.10     -91.22     -21.24     899.95      59.69      20.82      -0.73

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.88       4.82    -667.20      -4.37       7.63    -591.82     -13.16     -14.75      82.11    -338.83

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.14   -1160.35      -8.89      -0.05      -0.55      -0.01      -0.01       0.01     -33.18    -228.69

   43   1.2  1.5 -0.5      21.39      -0.86       0.09     382.48     -36.54      -2.74     114.95     -13.68     -39.74       0.94
                            1.89     322.86      23.87     -30.21    -345.58      19.94      -7.67       2.21     -64.85    -514.05

   44   2.2  1.5 -0.5     325.79       0.04       1.46     -26.10       2.07       8.39      26.79    -357.02    -607.77      -5.81
                           -1.59     -23.70     325.62       3.20      18.72     358.22       8.83       8.90      97.72    -351.35

   45   3.2  1.5 -0.5      -0.02     323.75       2.47      31.20     346.13       3.54       7.28       0.51     -67.36    -490.01
                            0.01       0.88      -2.01      74.98     -15.32      -9.89     392.36      37.24      -0.76       1.06

   46   4.2  1.5 -0.5      -0.55      -0.85     125.59      -0.79       5.87    -553.80     -10.29     -13.69     -15.58      64.34
                          378.61      -1.66       1.67      -0.51      -0.12       2.55      10.73    -111.31     304.88       1.80

   47   5.2  1.5 -0.5      -2.08      -2.53     364.39       0.72      -2.30     190.78       2.08       4.17     -45.59     186.56
                           73.57       0.15       0.79       1.47       4.56     -13.49     -54.72     572.11      59.20       0.89

   48   6.2  1.5 -0.5     -12.95       0.09      -1.01     182.29      -4.25      11.56    -582.48     -67.67     -10.31      -0.53
                            1.06     330.54      15.49      26.61     305.90      -8.31       6.24      -2.66      28.15     216.61

   49   7.2  1.5 -0.5     333.33      -0.78       1.94       7.95       0.68      -6.03     -50.89     292.04     267.79       2.24
                            1.63      15.40    -333.29      -0.67       8.89     295.94       5.51       7.99      42.31    -161.09

   50   8.2  1.5 -0.5       0.75     330.77       2.21     -26.70    -306.06      -3.12      -6.15       0.39      29.41     209.32
                           -0.19      -0.06       1.29    -599.46      49.69      -1.71     124.39      13.10      -0.31       0.62

   51   9.2  1.5 -0.5      -2.59      -4.43     580.46       0.00       0.00       0.06      -0.00       0.00     -21.68      89.31
                         -580.14       3.59      -2.57      -0.00      -0.00       0.01       0.05      -0.45    -141.24      -0.63

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

    1   1.2  0.5  0.5       0.00       0.00       0.00   -2497.47     -19.06      21.47     261.24       2.69       4.86       0.27
                           69.03       2.44      -0.00     -11.04     -15.46     -63.49      10.25       7.37    -294.42     -27.91

    2   2.2  0.5  0.5       0.00       0.00    2497.47       0.00      11.16      -1.48       0.39      -5.96     -25.74     260.84
                           -0.30     397.24      11.04       0.00   -2497.51       0.77      -4.89     261.99       6.08       6.61

    3   3.2  0.5  0.5       0.00       0.00      19.06     -11.16      -0.00     287.15     -25.69      -2.63      91.81       9.99
                          -16.61       3.04      15.46    2497.51       0.00      22.48     261.14       4.75       4.15      -1.37

    4   4.2  0.5  0.5       0.00       0.00     -21.47       1.48    -287.15      -0.00       8.85    -584.24      -5.40     -97.62
                          419.69       0.00      63.49      -0.77     -22.48      -0.00      10.47      40.66    -175.61    1862.30

    5   5.2  0.5  0.5       0.00       0.00    -261.24      -0.39      25.69      -8.85      -0.00      36.03     111.13    -948.84
                          -26.16       0.00     -10.25       4.89    -261.14     -10.47       0.00     958.83      33.41    -130.30

    6   6.2  0.5  0.5       0.00       0.00      -2.69       5.96       2.63     584.24     -36.03      -0.00   -1817.67    -185.83
                          143.13       0.00      -7.37    -261.99      -4.75     -40.66    -958.83      -0.00     -29.07       6.11

    7   7.2  0.5  0.5       0.00       0.00      -4.86      25.74     -91.81       5.40    -111.13    1817.67       0.00      22.39
                         -434.13      -0.00     294.42      -6.08      -4.15     175.61     -33.41      29.07      -0.00    -405.95

    8   8.2  0.5  0.5       0.00       0.00      -0.27    -260.84      -9.99      97.62     948.84     185.83     -22.39       0.00
                          580.34      -0.00      27.91      -6.61       1.37   -1862.30     130.30      -6.11     405.95       0.00

    9   9.2  0.5  0.5       0.00       0.00      -9.65      88.07       0.63     -63.61     797.13       7.27     -34.80      83.20
                            6.43     204.09       0.04      13.42      10.30    -200.67     -86.93     107.26    -885.16     -81.11

   10  10.2  0.5  0.5       0.00       0.00     -70.25       0.83      -0.31     547.24     -43.16     -19.19     114.73     640.68
                           -0.93    1406.13      -0.66     -56.17      69.83      43.65     489.03     633.48      16.65      12.56

   11  11.2  0.5  0.5   68189.13       0.00     -54.78     -16.58      -0.37    -686.91     -84.16      -6.60    -266.20     468.81
                            0.00    1094.48       0.18      68.54      55.21     -15.92    -626.24     479.30     165.19      31.18

   12  12.2  0.5  0.5       0.00   68548.42       1.77       3.03    -397.25       0.00      -0.00       0.00       0.00       0.00
                        -1094.48       0.00    -397.25       2.46      -1.76       0.00       0.00       0.00       0.00      -0.00

   13   1.2  0.5 -0.5     -54.78       1.77       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.18     397.25       0.00      19.13   -2497.47       0.83       2.74    -262.05      -5.65      -5.38

   14   2.2  0.5 -0.5     -16.58       3.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -68.54      -2.46     -19.13       0.00      15.37     223.65     -15.42       4.75    -202.61     -17.92

   15   3.2  0.5 -0.5      -0.37    -397.25       0.00       0.00       0.03       0.00       0.00       0.00       0.00       0.00
                          -55.21       1.76    2497.47     -15.37       0.00       0.85      -1.91       4.83      23.43    -261.09

   16   4.2  0.5 -0.5    -686.91       0.00       0.00       0.00       0.00   67350.12       0.00       0.00       0.00       0.00
                           15.92      -0.00      -0.83    -223.65      -0.85       0.00    1289.55      19.11     -95.97     -19.69

   17   5.2  0.5 -0.5     -84.16      -0.00       0.00       0.00       0.00       0.00   67350.13       0.00       0.00       0.00
                          626.24      -0.00      -2.74      15.42       1.91   -1289.55       0.00      35.39   -1412.28    -119.89

   18   6.2  0.5 -0.5      -6.60       0.00       0.00       0.00       0.00       0.00       0.00   67350.14       0.00       0.00
                         -479.30      -0.00     262.05      -4.75      -4.83     -19.11     -35.39       0.00      75.84    -956.19

   19   7.2  0.5 -0.5    -266.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00   67350.12       0.00
                         -165.19      -0.00       5.65     202.61     -23.43      95.97    1412.28     -75.84       0.00     -27.61

   20   8.2  0.5 -0.5     468.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   67350.14
                          -31.18       0.00       5.38      17.92     261.09      19.69     119.89     956.19      27.61      -0.00

   21   9.2  0.5 -0.5      -5.09     270.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04    1761.27      13.11      -0.76      88.07      76.57       3.96    -788.58     -94.86      93.96

   22  10.2  0.5 -0.5      -1.23   -1113.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.05       7.85     -55.63       0.34       0.15     534.57     -40.35      15.43    -437.95    -543.19

   23  11.2  0.5 -0.5       0.00    1379.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -338.50      69.03      -0.30     -16.61     419.69     -26.16     143.13    -434.13     580.34

   24  12.2  0.5 -0.5   -1379.94      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          338.50      -0.00       2.44     397.24       3.04       0.00       0.00       0.00      -0.00      -0.00

   25   1.2  1.5  1.5      14.78     921.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          605.05      -2.09      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5     197.99     -60.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -866.48       5.85      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5    -661.89       2.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.88     923.78      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5    -137.89      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          100.87      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5    -399.84      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           19.68      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5       4.50     -13.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -269.26      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5     -88.53      -0.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -374.37      -0.05      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5     283.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.37     -12.86      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5    -191.74      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -47.02       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00      21.39      -0.86       0.09     382.48     -36.54      -2.74     114.95     -13.68
                         -237.61      69.87      -1.89    -322.86     -23.87      30.21     345.58     -19.94       7.67      -2.21

   35   2.2  1.5  0.5       0.00       0.00     325.79       0.04       1.46     -26.10       2.07       8.39      26.79    -357.02
                           21.48    1064.12       1.59      23.70    -325.62      -3.20     -18.72    -358.22      -8.83      -8.90

   36   3.2  1.5  0.5       0.00       0.00      -0.02     323.75       2.47      31.20     346.13       3.54       7.28       0.51
                          951.98      -6.60      -0.01      -0.88       2.01     -74.98      15.32       9.89    -392.36     -37.24

   37   4.2  1.5  0.5       0.00       0.00      -0.55      -0.85     125.59      -0.79       5.87    -553.80     -10.29     -13.69
                         -251.90      -0.00    -378.61       1.66      -1.67       0.51       0.12      -2.55     -10.73     111.31

   38   5.2  1.5  0.5       0.00       0.00      -2.08      -2.53     364.39       0.72      -2.30     190.78       2.08       4.17
                          289.55       0.02     -73.57      -0.15      -0.79      -1.47      -4.56      13.49      54.72    -572.11

   39   6.2  1.5  0.5       0.00       0.00     -12.95       0.09      -1.01     182.29      -4.25      11.56    -582.48     -67.67
                         -100.80       0.58      -1.06    -330.54     -15.49     -26.61    -305.90       8.31      -6.24       2.66

   40   7.2  1.5  0.5       0.00       0.00     333.33      -0.78       1.94       7.95       0.68      -6.03     -50.89     292.04
                           -1.88     -15.07      -1.63     -15.40     333.29       0.67      -8.89    -295.94      -5.51      -7.99

   41   8.2  1.5  0.5       0.00       0.00       0.75     330.77       2.21     -26.70    -306.06      -3.12      -6.15       0.39
                          419.65       0.08       0.19       0.06      -1.29     599.46     -49.69       1.71    -124.39     -13.10

   42   9.2  1.5  0.5       0.00       0.00      -2.59      -4.43     580.46       0.00       0.00       0.06      -0.00       0.00
                         -177.99      -0.00     580.14      -3.59       2.57       0.00       0.00      -0.01      -0.05       0.45

   43   1.2  1.5 -0.5       8.53     532.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -349.33       1.21    -645.77       4.01      -4.33     -40.36      -2.21      16.85     102.35    -687.25

   44   2.2  1.5 -0.5     114.31     -34.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          500.26      -3.38      42.37      -0.29       4.33    -579.79      39.83     -14.29     545.70      99.40

   45   3.2  1.5 -0.5    -382.14       1.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.97    -533.34      -4.65      -4.97     652.89       2.09       7.49    -717.74     -15.00     -19.78

   46   4.2  1.5 -0.5     -79.61      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -58.24       0.00      -1.75    -506.20      -4.10     -76.69    -880.32      -9.31     -18.14       3.10

   47   5.2  1.5 -0.5    -230.85      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.36       0.00       4.82     582.50       3.96     -67.82    -765.12      -8.35     -17.01       2.55

   48   6.2  1.5 -0.5       2.60      -8.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          155.46       0.00     661.10      -4.15       2.92     -33.92       2.56      14.75      23.71    -614.00

   49   7.2  1.5 -0.5     -51.11      -0.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          216.14       0.03      25.72       0.66      -2.47     828.10     -91.22     -21.24     899.95      59.69

   50   8.2  1.5 -0.5     163.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.79       7.43       2.88       4.82    -667.20      -4.37       7.63    -591.82     -13.16     -14.75

   51   9.2  1.5 -0.5    -110.70      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           27.15      -0.00      -7.14   -1160.35      -8.89      -0.05      -0.55      -0.01      -0.01       0.01

   52   1.2  1.5 -1.5       0.00       0.00      37.04      -1.49       0.16     662.47     -63.29      -4.75     199.11     -23.70
                           -0.00      -0.00       3.28     559.22      41.35     -52.33    -598.57      34.53     -13.29       3.82

   53   2.2  1.5 -1.5       0.00       0.00     564.29       0.06       2.52     -45.21       3.58      14.53      46.41    -618.38
                           -0.00      -0.00      -2.75     -41.04     563.99       5.55      32.43     620.45      15.29      15.41

   54   3.2  1.5 -1.5       0.00       0.00      -0.04     560.76       4.28      54.04     599.52       6.13      12.61       0.88
                           -0.00      -0.00       0.02       1.52      -3.48     129.88     -26.54     -17.12     679.58      64.49

   55   4.2  1.5 -1.5       0.00       0.00      -0.96      -1.47     217.52      -1.36      10.16    -959.21     -17.83     -23.71
                           -0.00      -0.00     655.77      -2.87       2.90      -0.88      -0.21       4.42      18.58    -192.79

   56   5.2  1.5 -1.5       0.00       0.00      -3.61      -4.38     631.13       1.24      -3.99     330.44       3.60       7.23
                           -0.00      -0.00     127.43       0.27       1.36       2.54       7.91     -23.36     -94.78     990.92

   57   6.2  1.5 -1.5       0.00       0.00     -22.44       0.15      -1.75     315.73      -7.36      20.03   -1008.89    -117.21
                           -0.00      -0.00       1.83     572.51      26.83      46.09     529.83     -14.39      10.81      -4.61

   58   7.2  1.5 -1.5       0.00       0.00     577.34      -1.36       3.36      13.77       1.18     -10.45     -88.14     505.84
                           -0.00      -0.00       2.82      26.67    -577.27      -1.16      15.40     512.58       9.54      13.85

   59   8.2  1.5 -1.5       0.00       0.00       1.29     572.91       3.82     -46.24    -530.11      -5.40     -10.66       0.68
                           -0.00      -0.00      -0.33      -0.10       2.23   -1038.29      86.06      -2.97     215.44      22.68

   60   9.2  1.5 -1.5       0.00       0.00      -4.49      -7.67    1005.39       0.01       0.00       0.10      -0.00       0.00
                           -0.00      -0.00   -1004.83       6.22      -4.44      -0.00      -0.01       0.01       0.08      -0.78


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5       9.65      70.25      54.78      -1.77      37.04     564.29      -0.04      -0.96      -3.61     -22.44
                           -0.04       0.66      -0.18     397.25       3.28      -2.75       0.02     655.77     127.43       1.83

    2   2.2  0.5  0.5     -88.07      -0.83      16.58      -3.03      -1.49       0.06     560.76      -1.47      -4.38       0.15
                          -13.42      56.17     -68.54      -2.46     559.22     -41.04       1.52      -2.87       0.27     572.51

    3   3.2  0.5  0.5      -0.63       0.31       0.37     397.25       0.16       2.52       4.28     217.52     631.13      -1.75
                          -10.30     -69.83     -55.21       1.76      41.35     563.99      -3.48       2.90       1.36      26.83

    4   4.2  0.5  0.5      63.61    -547.24     686.91      -0.00     662.47     -45.21      54.04      -1.36       1.24     315.73
                          200.67     -43.65      15.92      -0.00     -52.33       5.55     129.88      -0.88       2.54      46.09

    5   5.2  0.5  0.5    -797.13      43.16      84.16       0.00     -63.29       3.58     599.52      10.16      -3.99      -7.36
                           86.93    -489.03     626.24      -0.00    -598.57      32.43     -26.54      -0.21       7.91     529.83

    6   6.2  0.5  0.5      -7.27      19.19       6.60      -0.00      -4.75      14.53       6.13    -959.21     330.44      20.03
                         -107.26    -633.48    -479.30      -0.00      34.53     620.45     -17.12       4.42     -23.36     -14.39

    7   7.2  0.5  0.5      34.80    -114.73     266.20      -0.00     199.11      46.41      12.61     -17.83       3.60   -1008.89
                          885.16     -16.65    -165.19      -0.00     -13.29      15.29     679.58      18.58     -94.78      10.81

    8   8.2  0.5  0.5     -83.20    -640.68    -468.81      -0.00     -23.70    -618.38       0.88     -23.71       7.23    -117.21
                           81.11     -12.56     -31.18       0.00       3.82      15.41      64.49    -192.79     990.92      -4.61

    9   9.2  0.5  0.5       0.00       6.31       5.09    -270.18     -68.83   -1052.69    -116.68     -26.98     -78.96     -17.85
                            0.00       1.55       0.04    1761.27    -112.33     169.25      -1.32     528.07     102.53      48.76

   10  10.2  0.5  0.5      -6.31      -0.00       1.23    1113.31       1.62     -10.06    -848.72     111.44     323.13      -0.92
                           -1.55      -0.00      -8.05       7.85    -890.36    -608.56       1.84       3.11       1.54     375.19

   11  11.2  0.5  0.5      -5.09      -1.23       0.00   -1379.94      14.78     197.99    -661.89    -137.89    -399.84       4.50
                           -0.04       8.05      -0.00    -338.50    -605.05     866.48      -6.88    -100.87     -19.68     269.26

   12  12.2  0.5  0.5     270.18   -1113.31    1379.94      -0.00     921.62     -60.51       2.47      -0.02      -0.03     -13.98
                        -1761.27      -7.85     338.50       0.00       2.09      -5.85    -923.78       0.00       0.01       0.00

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -13.11      55.63     -69.03      -2.44       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.76      -0.34       0.30    -397.24       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -88.07      -0.15      16.61      -3.04       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -76.57    -534.57    -419.69      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.96      40.35      26.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          788.58     -15.43    -143.13      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           94.86     437.95     434.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -93.96     543.19    -580.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   68189.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       5.00      -6.43    -204.09       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   68189.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.00      -0.00       0.93   -1406.13       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   68189.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.43      -0.93      -0.00   -1094.48       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   68548.42       0.00       0.00       0.00       0.00       0.00       0.00
                          204.09    1406.13    1094.48      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   65582.09       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -7.77   -1255.42      71.31     -83.73      -3.26

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   65582.11       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       7.77      -0.00      82.44    1093.42   -1258.00       9.29

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   65582.16       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    1255.42     -82.44      -0.00      -3.77      10.46    1445.51

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66812.69       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -71.31   -1093.42       3.77       0.00       2.62      74.21

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66812.74       0.00
                           -0.00      -0.00      -0.00      -0.00      83.73    1258.00     -10.46      -2.62       0.00      65.10

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66812.72
                           -0.00      -0.00      -0.00      -0.00       3.26      -9.29   -1445.51     -74.21     -65.10       0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       5.83       1.01     -56.18    1898.79    1650.16      -2.13

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    1443.48     -95.37       4.09      -4.75      -4.06    1257.78

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -155.46   -2367.34      14.65      -0.00      -0.00       0.00

   34   1.2  1.5  0.5     -39.74       0.94       8.53     532.10      -0.00       1.94      47.59     313.40     909.84      -2.31
                           64.85     514.05     349.33      -1.21       0.00    -726.38       4.60      -2.27       0.62     -22.32

   35   2.2  1.5  0.5    -607.77      -5.81     114.31     -34.94      -1.94      -0.00     724.83     -20.85     -60.38      -0.05
                          -97.72     351.35    -500.26       3.38     726.38       0.00       1.64       4.27      -0.45    -834.91

   36   3.2  1.5  0.5     -67.36    -490.01    -382.14       1.42     -47.59    -724.83       0.00       0.86       1.30     -32.44
                            0.76      -1.06       3.97     533.34      -4.60      -1.64      -0.00     946.72     183.91       2.93

   37   4.2  1.5  0.5     -15.58      64.34     -79.61      -0.01    -313.40      20.85      -0.86      -0.00       3.53    1373.25
                         -304.88      -1.80      58.24      -0.00       2.27      -4.27    -946.72       0.00      -0.69      -0.07

   38   5.2  1.5  0.5     -45.59     186.56    -230.85      -0.02    -909.84      60.38      -1.30      -3.53       0.00    -473.00
                          -59.20      -0.89      11.36      -0.00      -0.62       0.45    -183.91       0.69      -0.00       0.94

   39   6.2  1.5  0.5     -10.31      -0.53       2.60      -8.07       2.31       0.05      32.44   -1373.25     473.00       0.00
                          -28.15    -216.61    -155.46      -0.00      22.32     834.91      -2.93       0.07      -0.94      -0.00

   40   7.2  1.5  0.5     267.79       2.24     -51.11      -0.31       0.96      -1.98    -834.58     -53.13      18.94      -0.56
                          -42.31     161.09    -216.14      -0.03     834.91     -22.31       1.89      -0.43      -6.91    -726.75

   41   8.2  1.5  0.5      29.41     209.32     163.46       0.00      55.53     833.37      -1.92       0.19       0.92      28.13
                            0.31      -0.62       0.79      -7.43      -3.23       0.09       0.45     277.18   -1426.84       4.96

   42   9.2  1.5  0.5     -21.68      89.31    -110.70      -0.00   -1366.81      89.74      -3.66       0.00       0.00       0.00
                          141.24       0.63     -27.15       0.00      -3.10       8.68    1369.73       0.00      -0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1224.65       7.20    -237.61      69.87      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -79.30      -5.20      21.48    1064.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          189.77    -768.52     951.98      -6.60      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -45.85    -323.69    -251.90      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           55.01     371.56     289.55       0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          524.38       2.31    -100.80       0.58      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           20.82      -0.73      -1.88     -15.07      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           82.11    -338.83     419.65       0.08      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -33.18    -228.69    -177.99      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5     -68.83       1.62      14.78     921.62       0.00       0.00       0.00       0.00       0.00       0.00
                         -112.33    -890.36    -605.05       2.09      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5   -1052.69     -10.06     197.99     -60.51       0.00       0.00       0.00       0.00       0.00       0.00
                          169.25    -608.56     866.48      -5.85      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5    -116.68    -848.72    -661.89       2.47       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.32       1.84      -6.88    -923.78      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5     -26.98     111.44    -137.89      -0.02       0.00       0.00       0.00       0.00       0.00       0.00
                          528.07       3.11    -100.87       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5     -78.96     323.13    -399.84      -0.03       0.00       0.00       0.00       0.00       0.00       0.00
                          102.53       1.54     -19.68       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5     -17.85      -0.92       4.50     -13.98       0.00       0.00       0.00       0.00       0.00       0.00
                           48.76     375.19     269.26       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5     463.83       3.88     -88.53      -0.54       0.00       0.00       0.00       0.00       0.00       0.00
                           73.28    -279.02     374.37       0.05      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5      50.94     362.55     283.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.54       1.07      -1.37      12.86      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5     -37.55     154.70    -191.74      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -244.63      -1.08      47.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5     577.34       1.29      -4.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.82      -0.33   -1004.83     645.77     -42.37       4.65       1.75      -4.82    -661.10     -25.72

    2   2.2  0.5  0.5      -1.36     572.91      -7.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           26.67      -0.10       6.22      -4.01       0.29       4.97     506.20    -582.50       4.15      -0.66

    3   3.2  0.5  0.5       3.36       3.82    1005.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -577.27       2.23      -4.44       4.33      -4.33    -652.89       4.10      -3.96      -2.92       2.47

    4   4.2  0.5  0.5      13.77     -46.24       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.16   -1038.29      -0.00      40.36     579.79      -2.09      76.69      67.82      33.92    -828.10

    5   5.2  0.5  0.5       1.18    -530.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.40      86.06      -0.01       2.21     -39.83      -7.49     880.32     765.12      -2.56      91.22

    6   6.2  0.5  0.5     -10.45      -5.40       0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          512.58      -2.97       0.01     -16.85      14.29     717.74       9.31       8.35     -14.75      21.24

    7   7.2  0.5  0.5     -88.14     -10.66      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.54     215.44       0.08    -102.35    -545.70      15.00      18.14      17.01     -23.71    -899.95

    8   8.2  0.5  0.5     505.84       0.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.85      22.68      -0.78     687.25     -99.40      19.78      -3.10      -2.55     614.00     -59.69

    9   9.2  0.5  0.5     463.83      50.94     -37.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           73.28      -0.54    -244.63   -1224.65      79.30    -189.77      45.85     -55.01    -524.38     -20.82

   10  10.2  0.5  0.5       3.88     362.55     154.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -279.02       1.07      -1.08      -7.20       5.20     768.52     323.69    -371.56      -2.31       0.73

   11  11.2  0.5  0.5     -88.53     283.12    -191.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          374.37      -1.37      47.02     237.61     -21.48    -951.98     251.90    -289.55     100.80       1.88

   12  12.2  0.5  0.5      -0.54       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05      12.86      -0.00     -69.87   -1064.12       6.60       0.00      -0.02      -0.58      15.07

   13   1.2  0.5 -0.5       0.00       0.00       0.00      21.39     325.79      -0.02      -0.55      -2.08     -12.95     333.33
                            0.00       0.00       0.00       1.89      -1.59       0.01     378.61      73.57       1.06       1.63

   14   2.2  0.5 -0.5       0.00       0.00       0.00      -0.86       0.04     323.75      -0.85      -2.53       0.09      -0.78
                            0.00       0.00       0.00     322.86     -23.70       0.88      -1.66       0.15     330.54      15.40

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.09       1.46       2.47     125.59     364.39      -1.01       1.94
                            0.00       0.00       0.00      23.87     325.62      -2.01       1.67       0.79      15.49    -333.29

   16   4.2  0.5 -0.5       0.00       0.00       0.00     382.48     -26.10      31.20      -0.79       0.72     182.29       7.95
                            0.00       0.00       0.00     -30.21       3.20      74.98      -0.51       1.47      26.61      -0.67

   17   5.2  0.5 -0.5       0.00       0.00       0.00     -36.54       2.07     346.13       5.87      -2.30      -4.25       0.68
                            0.00       0.00       0.00    -345.58      18.72     -15.32      -0.12       4.56     305.90       8.89

   18   6.2  0.5 -0.5       0.00       0.00       0.00      -2.74       8.39       3.54    -553.80     190.78      11.56      -6.03
                            0.00       0.00       0.00      19.94     358.22      -9.89       2.55     -13.49      -8.31     295.94

   19   7.2  0.5 -0.5       0.00       0.00       0.00     114.95      26.79       7.28     -10.29       2.08    -582.48     -50.89
                            0.00       0.00       0.00      -7.67       8.83     392.36      10.73     -54.72       6.24       5.51

   20   8.2  0.5 -0.5       0.00       0.00       0.00     -13.68    -357.02       0.51     -13.69       4.17     -67.67     292.04
                            0.00       0.00       0.00       2.21       8.90      37.24    -111.31     572.11      -2.66       7.99

   21   9.2  0.5 -0.5       0.00       0.00       0.00     -39.74    -607.77     -67.36     -15.58     -45.59     -10.31     267.79
                            0.00       0.00       0.00     -64.85      97.72      -0.76     304.88      59.20      28.15      42.31

   22  10.2  0.5 -0.5       0.00       0.00       0.00       0.94      -5.81    -490.01      64.34     186.56      -0.53       2.24
                            0.00       0.00       0.00    -514.05    -351.35       1.06       1.80       0.89     216.61    -161.09

   23  11.2  0.5 -0.5       0.00       0.00       0.00       8.53     114.31    -382.14     -79.61    -230.85       2.60     -51.11
                            0.00       0.00       0.00    -349.33     500.26      -3.97     -58.24     -11.36     155.46     216.14

   24  12.2  0.5 -0.5       0.00       0.00       0.00     532.10     -34.94       1.42      -0.01      -0.02      -8.07      -0.31
                            0.00       0.00       0.00       1.21      -3.38    -533.34       0.00       0.00       0.00       0.03

   25   1.2  1.5  1.5       0.00       0.00       0.00      -0.00      -1.94     -47.59    -313.40    -909.84       2.31       0.96
                           -5.83   -1443.48     155.46      -0.00    -726.38       4.60      -2.27       0.62     -22.32    -834.91

   26   2.2  1.5  1.5       0.00       0.00       0.00       1.94      -0.00    -724.83      20.85      60.38       0.05      -1.98
                           -1.01      95.37    2367.34     726.38      -0.00       1.64       4.27      -0.45    -834.91      22.31

   27   3.2  1.5  1.5       0.00       0.00       0.00      47.59     724.83       0.00      -0.86      -1.30      32.44    -834.58
                           56.18      -4.09     -14.65      -4.60      -1.64       0.00     946.72     183.91       2.93      -1.89

   28   4.2  1.5  1.5       0.00       0.00       0.00     313.40     -20.85       0.86      -0.00      -3.53   -1373.25     -53.13
                        -1898.79       4.75       0.00       2.27      -4.27    -946.72      -0.00      -0.69      -0.07       0.43

   29   5.2  1.5  1.5       0.00       0.00       0.00     909.84     -60.38       1.30       3.53       0.00     473.00      18.94
                        -1650.16       4.06       0.00      -0.62       0.45    -183.91       0.69       0.00       0.94       6.91

   30   6.2  1.5  1.5       0.00       0.00       0.00      -2.31      -0.05     -32.44    1373.25    -473.00       0.00      -0.56
                            2.13   -1257.78      -0.00      22.32     834.91      -2.93       0.07      -0.94       0.00     726.75

   31   7.2  1.5  1.5   66812.75       0.00       0.00      -0.96       1.98     834.58      53.13     -18.94       0.56      -0.00
                            0.00     -50.78       0.00     834.91     -22.31       1.89      -0.43      -6.91    -726.75       0.00

   32   8.2  1.5  1.5       0.00   66812.82       0.00     -55.53    -833.37       1.92      -0.19      -0.92     -28.13     726.22
                           50.78      -0.00      -0.00      -3.23       0.09       0.45     277.18   -1426.84       4.96      -1.87

   33   9.2  1.5  1.5       0.00       0.00   68642.21    1366.81     -89.74       3.66      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -3.10       8.68    1369.73       0.00      -0.00       0.00      -0.00

   34   1.2  1.5  0.5      -0.96     -55.53    1366.81   65582.09       0.00       0.00       0.00       0.00       0.00       0.00
                         -834.91       3.23       3.10       0.00      -2.59    -418.47      23.77     -27.91      -1.09      -1.94

   35   2.2  1.5  0.5       1.98    -833.37     -89.74       0.00   65582.11       0.00       0.00       0.00       0.00       0.00
                           22.31      -0.09      -8.68       2.59      -0.00      27.48     364.47    -419.33       3.10      -0.34

   36   3.2  1.5  0.5     834.58       1.92       3.66       0.00       0.00   65582.16       0.00       0.00       0.00       0.00
                           -1.89      -0.45   -1369.73     418.47     -27.48      -0.00      -1.26       3.49     481.84      18.73

   37   4.2  1.5  0.5      53.13      -0.19      -0.00       0.00       0.00       0.00   66812.69       0.00       0.00       0.00
                            0.43    -277.18      -0.00     -23.77    -364.47       1.26       0.00       0.87      24.74    -632.93

   38   5.2  1.5  0.5     -18.94      -0.92      -0.00       0.00       0.00       0.00       0.00   66812.74       0.00       0.00
                            6.91    1426.84       0.00      27.91     419.33      -3.49      -0.87       0.00      21.70    -550.05

   39   6.2  1.5  0.5       0.56     -28.13      -0.00       0.00       0.00       0.00       0.00       0.00   66812.72       0.00
                          726.75      -4.96      -0.00       1.09      -3.10    -481.84     -24.74     -21.70       0.00       0.71

   40   7.2  1.5  0.5      -0.00     726.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   66812.75
                           -0.00       1.87       0.00       1.94       0.34     -18.73     632.93     550.05      -0.71       0.00

   41   8.2  1.5  0.5    -726.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.87      -0.00       0.00     481.16     -31.79       1.36      -1.58      -1.35     419.26      16.93

   42   9.2  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -51.82    -789.11       4.88      -0.00      -0.00       0.00      -0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00      -0.00       2.24      54.95     361.88    1050.59      -2.67      -1.11
                           -0.00      -0.00      -0.00       0.00    -838.75       5.31      -2.62       0.72     -25.77    -964.07

   44   2.2  1.5 -0.5       0.00       0.00       0.00      -2.24      -0.00     836.96     -24.08     -69.72      -0.05       2.29
                           -0.00      -0.00      -0.00     838.75       0.00       1.90       4.93      -0.53    -964.08      25.76

   45   3.2  1.5 -0.5       0.00       0.00       0.00     -54.95    -836.96       0.00       0.99       1.50     -37.46     963.70
                           -0.00      -0.00      -0.00      -5.31      -1.90      -0.00    1093.17     212.36       3.38      -2.18

   46   4.2  1.5 -0.5       0.00       0.00       0.00    -361.88      24.08      -0.99      -0.00       4.08    1585.70      61.35
                           -0.00      -0.00      -0.00       2.62      -4.93   -1093.17       0.00      -0.80      -0.08       0.50

   47   5.2  1.5 -0.5       0.00       0.00       0.00   -1050.59      69.72      -1.50      -4.08       0.00    -546.18     -21.87
                           -0.00      -0.00      -0.00      -0.72       0.53    -212.36       0.80      -0.00       1.08       7.98

   48   6.2  1.5 -0.5       0.00       0.00       0.00       2.67       0.05      37.46   -1585.70     546.18       0.00       0.65
                           -0.00      -0.00      -0.00      25.77     964.08      -3.38       0.08      -1.08      -0.00     839.18

   49   7.2  1.5 -0.5       0.00       0.00       0.00       1.11      -2.29    -963.70     -61.35      21.87      -0.65      -0.00
                           -0.00      -0.00      -0.00     964.07     -25.76       2.18      -0.50      -7.98    -839.18      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00      64.12     962.29      -2.22       0.22       1.06      32.48    -838.57
                           -0.00      -0.00      -0.00      -3.73       0.10       0.52     320.06   -1647.57       5.73      -2.16

   51   9.2  1.5 -0.5       0.00       0.00       0.00   -1578.25     103.62      -4.23       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -3.58      10.02    1581.62       0.00      -0.00       0.00      -0.00

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

    1   1.2  0.5  0.5       0.00       0.00      21.39     325.79      -0.02      -0.55      -2.08     -12.95     333.33       0.75
                           -2.88       7.14      -1.89       1.59      -0.01    -378.61     -73.57      -1.06      -1.63       0.19

    2   2.2  0.5  0.5       0.00       0.00      -0.86       0.04     323.75      -0.85      -2.53       0.09      -0.78     330.77
                           -4.82    1160.35    -322.86      23.70      -0.88       1.66      -0.15    -330.54     -15.40       0.06

    3   3.2  0.5  0.5       0.00       0.00       0.09       1.46       2.47     125.59     364.39      -1.01       1.94       2.21
                          667.20       8.89     -23.87    -325.62       2.01      -1.67      -0.79     -15.49     333.29      -1.29

    4   4.2  0.5  0.5       0.00       0.00     382.48     -26.10      31.20      -0.79       0.72     182.29       7.95     -26.70
                            4.37       0.05      30.21      -3.20     -74.98       0.51      -1.47     -26.61       0.67     599.46

    5   5.2  0.5  0.5       0.00       0.00     -36.54       2.07     346.13       5.87      -2.30      -4.25       0.68    -306.06
                           -7.63       0.55     345.58     -18.72      15.32       0.12      -4.56    -305.90      -8.89     -49.69

    6   6.2  0.5  0.5       0.00       0.00      -2.74       8.39       3.54    -553.80     190.78      11.56      -6.03      -3.12
                          591.82       0.01     -19.94    -358.22       9.89      -2.55      13.49       8.31    -295.94       1.71

    7   7.2  0.5  0.5       0.00       0.00     114.95      26.79       7.28     -10.29       2.08    -582.48     -50.89      -6.15
                           13.16       0.01       7.67      -8.83    -392.36     -10.73      54.72      -6.24      -5.51    -124.39

    8   8.2  0.5  0.5       0.00       0.00     -13.68    -357.02       0.51     -13.69       4.17     -67.67     292.04       0.39
                           14.75      -0.01      -2.21      -8.90     -37.24     111.31    -572.11       2.66      -7.99     -13.10

    9   9.2  0.5  0.5       0.00       0.00     -39.74    -607.77     -67.36     -15.58     -45.59     -10.31     267.79      29.41
                          -82.11      33.18      64.85     -97.72       0.76    -304.88     -59.20     -28.15     -42.31       0.31

   10  10.2  0.5  0.5       0.00       0.00       0.94      -5.81    -490.01      64.34     186.56      -0.53       2.24     209.32
                          338.83     228.69     514.05     351.35      -1.06      -1.80      -0.89    -216.61     161.09      -0.62

   11  11.2  0.5  0.5       0.00       0.00       8.53     114.31    -382.14     -79.61    -230.85       2.60     -51.11     163.46
                         -419.65     177.99     349.33    -500.26       3.97      58.24      11.36    -155.46    -216.14       0.79

   12  12.2  0.5  0.5       0.00       0.00     532.10     -34.94       1.42      -0.01      -0.02      -8.07      -0.31       0.00
                           -0.08       0.00      -1.21       3.38     533.34      -0.00      -0.00      -0.00      -0.03      -7.43

   13   1.2  0.5 -0.5       0.75      -2.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.19    -580.14     645.77     -42.37       4.65       1.75      -4.82    -661.10     -25.72      -2.88

   14   2.2  0.5 -0.5     330.77      -4.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.06       3.59      -4.01       0.29       4.97     506.20    -582.50       4.15      -0.66      -4.82

   15   3.2  0.5 -0.5       2.21     580.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.29      -2.57       4.33      -4.33    -652.89       4.10      -3.96      -2.92       2.47     667.20

   16   4.2  0.5 -0.5     -26.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -599.46      -0.00      40.36     579.79      -2.09      76.69      67.82      33.92    -828.10       4.37

   17   5.2  0.5 -0.5    -306.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           49.69      -0.00       2.21     -39.83      -7.49     880.32     765.12      -2.56      91.22      -7.63

   18   6.2  0.5 -0.5      -3.12       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.71       0.01     -16.85      14.29     717.74       9.31       8.35     -14.75      21.24     591.82

   19   7.2  0.5 -0.5      -6.15      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          124.39       0.05    -102.35    -545.70      15.00      18.14      17.01     -23.71    -899.95      13.16

   20   8.2  0.5 -0.5       0.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.10      -0.45     687.25     -99.40      19.78      -3.10      -2.55     614.00     -59.69      14.75

   21   9.2  0.5 -0.5      29.41     -21.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.31    -141.24   -1224.65      79.30    -189.77      45.85     -55.01    -524.38     -20.82     -82.11

   22  10.2  0.5 -0.5     209.32      89.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.62      -0.63      -7.20       5.20     768.52     323.69    -371.56      -2.31       0.73     338.83

   23  11.2  0.5 -0.5     163.46    -110.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.79      27.15     237.61     -21.48    -951.98     251.90    -289.55     100.80       1.88    -419.65

   24  12.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.43      -0.00     -69.87   -1064.12       6.60       0.00      -0.02      -0.58      15.07      -0.08

   25   1.2  1.5  1.5      55.53   -1366.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.23       3.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5     833.37      89.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09      -8.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5      -1.92      -3.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.45   -1369.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5       0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -277.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5       0.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1426.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5      28.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.96      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5    -726.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00      -0.00      -2.24     -54.95    -361.88   -1050.59       2.67       1.11      64.12
                         -481.16      51.82      -0.00    -838.75       5.31      -2.62       0.72     -25.77    -964.07       3.73

   35   2.2  1.5  0.5       0.00       0.00       2.24      -0.00    -836.96      24.08      69.72       0.05      -2.29     962.29
                           31.79     789.11     838.75      -0.00       1.90       4.93      -0.53    -964.08      25.76      -0.10

   36   3.2  1.5  0.5       0.00       0.00      54.95     836.96       0.00      -0.99      -1.50      37.46    -963.70      -2.22
                           -1.36      -4.88      -5.31      -1.90       0.00    1093.17     212.36       3.38      -2.18      -0.52

   37   4.2  1.5  0.5       0.00       0.00     361.88     -24.08       0.99      -0.00      -4.08   -1585.70     -61.35       0.22
                            1.58       0.00       2.62      -4.93   -1093.17      -0.00      -0.80      -0.08       0.50    -320.06

   38   5.2  1.5  0.5       0.00       0.00    1050.59     -69.72       1.50       4.08       0.00     546.18      21.87       1.06
                            1.35       0.00      -0.72       0.53    -212.36       0.80       0.00       1.08       7.98    1647.57

   39   6.2  1.5  0.5       0.00       0.00      -2.67      -0.05     -37.46    1585.70    -546.18       0.00      -0.65      32.48
                         -419.26      -0.00      25.77     964.08      -3.38       0.08      -1.08       0.00     839.18      -5.73

   40   7.2  1.5  0.5       0.00       0.00      -1.11       2.29     963.70      61.35     -21.87       0.65      -0.00    -838.57
                          -16.93       0.00     964.07     -25.76       2.18      -0.50      -7.98    -839.18       0.00       2.16

   41   8.2  1.5  0.5   66812.82       0.00     -64.12    -962.29       2.22      -0.22      -1.06     -32.48     838.57      -0.00
                           -0.00      -0.00      -3.73       0.10       0.52     320.06   -1647.57       5.73      -2.16       0.00

   42   9.2  1.5  0.5       0.00   68642.21    1578.25    -103.62       4.23      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00      -3.58      10.02    1581.62       0.00      -0.00       0.00      -0.00      -0.00

   43   1.2  1.5 -0.5     -64.12    1578.25   65582.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.73       3.58      -0.00       2.59     418.47     -23.77      27.91       1.09       1.94     481.16

   44   2.2  1.5 -0.5    -962.29    -103.62       0.00   65582.11       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.10     -10.02      -2.59       0.00     -27.48    -364.47     419.33      -3.10       0.34     -31.79

   45   3.2  1.5 -0.5       2.22       4.23       0.00       0.00   65582.16       0.00       0.00       0.00       0.00       0.00
                           -0.52   -1581.62    -418.47      27.48       0.00       1.26      -3.49    -481.84     -18.73       1.36

   46   4.2  1.5 -0.5      -0.22      -0.00       0.00       0.00       0.00   66812.69       0.00       0.00       0.00       0.00
                         -320.06      -0.00      23.77     364.47      -1.26      -0.00      -0.87     -24.74     632.93      -1.58

   47   5.2  1.5 -0.5      -1.06      -0.00       0.00       0.00       0.00       0.00   66812.74       0.00       0.00       0.00
                         1647.57       0.00     -27.91    -419.33       3.49       0.87      -0.00     -21.70     550.05      -1.35

   48   6.2  1.5 -0.5     -32.48      -0.00       0.00       0.00       0.00       0.00       0.00   66812.72       0.00       0.00
                           -5.73      -0.00      -1.09       3.10     481.84      24.74      21.70      -0.00      -0.71     419.26

   49   7.2  1.5 -0.5     838.57      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   66812.75       0.00
                            2.16       0.00      -1.94      -0.34      18.73    -632.93    -550.05       0.71      -0.00      16.93

   50   8.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66812.82
                           -0.00       0.00    -481.16      31.79      -1.36       1.58       1.35    -419.26     -16.93       0.00

   51   9.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      51.82     789.11      -4.88       0.00       0.00      -0.00       0.00      -0.00

   52   1.2  1.5 -1.5       0.00       0.00      -0.00       1.94      47.59     313.40     909.84      -2.31      -0.96     -55.53
                           -0.00      -0.00       0.00    -726.38       4.60      -2.27       0.62     -22.32    -834.91       3.23

   53   2.2  1.5 -1.5       0.00       0.00      -1.94      -0.00     724.83     -20.85     -60.38      -0.05       1.98    -833.37
                           -0.00      -0.00     726.38       0.00       1.64       4.27      -0.45    -834.91      22.31      -0.09

   54   3.2  1.5 -1.5       0.00       0.00     -47.59    -724.83       0.00       0.86       1.30     -32.44     834.58       1.92
                           -0.00      -0.00      -4.60      -1.64      -0.00     946.72     183.91       2.93      -1.89      -0.45

   55   4.2  1.5 -1.5       0.00       0.00    -313.40      20.85      -0.86      -0.00       3.53    1373.25      53.13      -0.19
                           -0.00      -0.00       2.27      -4.27    -946.72       0.00      -0.69      -0.07       0.43    -277.18

   56   5.2  1.5 -1.5       0.00       0.00    -909.84      60.38      -1.30      -3.53       0.00    -473.00     -18.94      -0.92
                           -0.00      -0.00      -0.62       0.45    -183.91       0.69      -0.00       0.94       6.91    1426.84

   57   6.2  1.5 -1.5       0.00       0.00       2.31       0.05      32.44   -1373.25     473.00       0.00       0.56     -28.13
                           -0.00      -0.00      22.32     834.91      -2.93       0.07      -0.94      -0.00     726.75      -4.96

   58   7.2  1.5 -1.5       0.00       0.00       0.96      -1.98    -834.58     -53.13      18.94      -0.56      -0.00     726.22
                           -0.00      -0.00     834.91     -22.31       1.89      -0.43      -6.91    -726.75      -0.00       1.87

   59   8.2  1.5 -1.5       0.00       0.00      55.53     833.37      -1.92       0.19       0.92      28.13    -726.22      -0.00
                           -0.00      -0.00      -3.23       0.09       0.45     277.18   -1426.84       4.96      -1.87      -0.00

   60   9.2  1.5 -1.5       0.00       0.00   -1366.81      89.74      -3.66       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -3.10       8.68    1369.73       0.00      -0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5      -2.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          580.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5      -4.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5     580.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5     -21.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          141.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5      89.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5    -110.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -27.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00      37.04     564.29      -0.04      -0.96      -3.61     -22.44     577.34       1.29      -4.49
                            7.14      -3.28       2.75      -0.02    -655.77    -127.43      -1.83      -2.82       0.33    1004.83

   14   2.2  0.5 -0.5       0.00      -1.49       0.06     560.76      -1.47      -4.38       0.15      -1.36     572.91      -7.67
                         1160.35    -559.22      41.04      -1.52       2.87      -0.27    -572.51     -26.67       0.10      -6.22

   15   3.2  0.5 -0.5       0.00       0.16       2.52       4.28     217.52     631.13      -1.75       3.36       3.82    1005.39
                            8.89     -41.35    -563.99       3.48      -2.90      -1.36     -26.83     577.27      -2.23       4.44

   16   4.2  0.5 -0.5       0.00     662.47     -45.21      54.04      -1.36       1.24     315.73      13.77     -46.24       0.01
                            0.05      52.33      -5.55    -129.88       0.88      -2.54     -46.09       1.16    1038.29       0.00

   17   5.2  0.5 -0.5       0.00     -63.29       3.58     599.52      10.16      -3.99      -7.36       1.18    -530.11       0.00
                            0.55     598.57     -32.43      26.54       0.21      -7.91    -529.83     -15.40     -86.06       0.01

   18   6.2  0.5 -0.5       0.00      -4.75      14.53       6.13    -959.21     330.44      20.03     -10.45      -5.40       0.10
                            0.01     -34.53    -620.45      17.12      -4.42      23.36      14.39    -512.58       2.97      -0.01

   19   7.2  0.5 -0.5       0.00     199.11      46.41      12.61     -17.83       3.60   -1008.89     -88.14     -10.66      -0.00
                            0.01      13.29     -15.29    -679.58     -18.58      94.78     -10.81      -9.54    -215.44      -0.08

   20   8.2  0.5 -0.5       0.00     -23.70    -618.38       0.88     -23.71       7.23    -117.21     505.84       0.68       0.00
                           -0.01      -3.82     -15.41     -64.49     192.79    -990.92       4.61     -13.85     -22.68       0.78

   21   9.2  0.5 -0.5       0.00     -68.83   -1052.69    -116.68     -26.98     -78.96     -17.85     463.83      50.94     -37.55
                           33.18     112.33    -169.25       1.32    -528.07    -102.53     -48.76     -73.28       0.54     244.63

   22  10.2  0.5 -0.5       0.00       1.62     -10.06    -848.72     111.44     323.13      -0.92       3.88     362.55     154.70
                          228.69     890.36     608.56      -1.84      -3.11      -1.54    -375.19     279.02      -1.07       1.08

   23  11.2  0.5 -0.5       0.00      14.78     197.99    -661.89    -137.89    -399.84       4.50     -88.53     283.12    -191.74
                          177.99     605.05    -866.48       6.88     100.87      19.68    -269.26    -374.37       1.37     -47.02

   24  12.2  0.5 -0.5       0.00     921.62     -60.51       2.47      -0.02      -0.03     -13.98      -0.54       0.00      -0.00
                            0.00      -2.09       5.85     923.78      -0.00      -0.01      -0.00      -0.05     -12.86       0.00

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

   34   1.2  1.5  0.5   -1578.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.2  1.5  0.5     103.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5      -4.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1581.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00      -0.00      -1.94     -47.59    -313.40    -909.84       2.31       0.96      55.53   -1366.81
                          -51.82      -0.00    -726.38       4.60      -2.27       0.62     -22.32    -834.91       3.23       3.10

   44   2.2  1.5 -0.5       0.00       1.94      -0.00    -724.83      20.85      60.38       0.05      -1.98     833.37      89.74
                         -789.11     726.38      -0.00       1.64       4.27      -0.45    -834.91      22.31      -0.09      -8.68

   45   3.2  1.5 -0.5       0.00      47.59     724.83       0.00      -0.86      -1.30      32.44    -834.58      -1.92      -3.66
                            4.88      -4.60      -1.64       0.00     946.72     183.91       2.93      -1.89      -0.45   -1369.73

   46   4.2  1.5 -0.5       0.00     313.40     -20.85       0.86      -0.00      -3.53   -1373.25     -53.13       0.19       0.00
                           -0.00       2.27      -4.27    -946.72      -0.00      -0.69      -0.07       0.43    -277.18      -0.00

   47   5.2  1.5 -0.5       0.00     909.84     -60.38       1.30       3.53       0.00     473.00      18.94       0.92       0.00
                           -0.00      -0.62       0.45    -183.91       0.69       0.00       0.94       6.91    1426.84       0.00

   48   6.2  1.5 -0.5       0.00      -2.31      -0.05     -32.44    1373.25    -473.00       0.00      -0.56      28.13       0.00
                            0.00      22.32     834.91      -2.93       0.07      -0.94       0.00     726.75      -4.96      -0.00

   49   7.2  1.5 -0.5       0.00      -0.96       1.98     834.58      53.13     -18.94       0.56      -0.00    -726.22       0.00
                           -0.00     834.91     -22.31       1.89      -0.43      -6.91    -726.75       0.00       1.87       0.00

   50   8.2  1.5 -0.5       0.00     -55.53    -833.37       1.92      -0.19      -0.92     -28.13     726.22      -0.00      -0.00
                            0.00      -3.23       0.09       0.45     277.18   -1426.84       4.96      -1.87       0.00       0.00

   51   9.2  1.5 -0.5   68642.21    1366.81     -89.74       3.66      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -3.10       8.68    1369.73       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5    1366.81   65582.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.10      -0.00       7.77    1255.42     -71.31      83.73       3.26       5.83    1443.48    -155.46

   53   2.2  1.5 -1.5     -89.74       0.00   65582.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.68      -7.77       0.00     -82.44   -1093.42    1258.00      -9.29       1.01     -95.37   -2367.34

   54   3.2  1.5 -1.5       3.66       0.00       0.00   65582.16       0.00       0.00       0.00       0.00       0.00       0.00
                        -1369.73   -1255.42      82.44       0.00       3.77     -10.46   -1445.51     -56.18       4.09      14.65

   55   4.2  1.5 -1.5      -0.00       0.00       0.00       0.00   66812.69       0.00       0.00       0.00       0.00       0.00
                           -0.00      71.31    1093.42      -3.77      -0.00      -2.62     -74.21    1898.79      -4.75      -0.00

   56   5.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00   66812.74       0.00       0.00       0.00       0.00
                            0.00     -83.73   -1258.00      10.46       2.62      -0.00     -65.10    1650.16      -4.06      -0.00

   57   6.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00   66812.72       0.00       0.00       0.00
                           -0.00      -3.26       9.29    1445.51      74.21      65.10      -0.00      -2.13    1257.78       0.00

   58   7.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   66812.75       0.00       0.00
                            0.00      -5.83      -1.01      56.18   -1898.79   -1650.16       2.13      -0.00      50.78      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66812.82       0.00
                            0.00   -1443.48      95.37      -4.09       4.75       4.06   -1257.78     -50.78       0.00       0.00

   60   9.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   68642.21
                            0.00     155.46    2367.34     -14.65       0.00       0.00      -0.00       0.00      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -295.77954620    -0.01167828    -2563.09      0.00000000        0.00      0.0000
     2  -295.77954620    -0.01167828    -2563.09      0.00000000        0.00      0.0000
     3  -295.77954498    -0.01167706    -2562.82      0.00000122        0.27      0.0000
     4  -295.77954498    -0.01167706    -2562.82      0.00000122        0.27      0.0000
     5  -295.74532637     0.02254155     4947.30      0.03421983     7510.38      0.9312
     6  -295.74532637     0.02254155     4947.30      0.03421983     7510.38      0.9312
     7  -295.48053991     0.28732801    63061.21      0.29900629    65624.30      8.1364
     8  -295.48053991     0.28732801    63061.21      0.29900629    65624.30      8.1364
     9  -295.48050094     0.28736698    63069.76      0.29904526    65632.85      8.1374
    10  -295.48050094     0.28736698    63069.76      0.29904526    65632.85      8.1374
    11  -295.48044497     0.28742295    63082.05      0.29910123    65645.13      8.1390
    12  -295.48044497     0.28742295    63082.05      0.29910123    65645.13      8.1390
    13  -295.47999544     0.28787248    63180.71      0.29955076    65743.79      8.1512
    14  -295.47999544     0.28787248    63180.71      0.29955076    65743.79      8.1512
    15  -295.47997901     0.28788891    63184.31      0.29956719    65747.40      8.1516
    16  -295.47997901     0.28788891    63184.31      0.29956719    65747.40      8.1516
    17  -295.47751112     0.29035680    63725.95      0.30203508    66289.04      8.2188
    18  -295.47751112     0.29035680    63725.95      0.30203508    66289.04      8.2188
    19  -295.47493009     0.29293783    64292.42      0.30461611    66855.51      8.2890
    20  -295.47493009     0.29293783    64292.42      0.30461611    66855.51      8.2890
    21  -295.47492112     0.29294679    64294.39      0.30462507    66857.48      8.2893
    22  -295.47492112     0.29294679    64294.39      0.30462507    66857.48      8.2893
    23  -295.47491777     0.29295014    64295.12      0.30462842    66858.21      8.2894
    24  -295.47491777     0.29295014    64295.12      0.30462842    66858.21      8.2894
    25  -295.47491760     0.29295032    64295.16      0.30462860    66858.25      8.2894
    26  -295.47491760     0.29295032    64295.16      0.30462860    66858.25      8.2894
    27  -295.47403519     0.29383273    64488.83      0.30551101    67051.92      8.3134
    28  -295.47403519     0.29383273    64488.83      0.30551101    67051.92      8.3134
    29  -295.47398700     0.29388092    64499.41      0.30555920    67062.49      8.3147
    30  -295.47398700     0.29388092    64499.41      0.30555920    67062.49      8.3147
    31  -295.47381902     0.29404889    64536.27      0.30572717    67099.36      8.3193
    32  -295.47381902     0.29404889    64536.27      0.30572717    67099.36      8.3193
    33  -295.46321907     0.30464884    66862.69      0.31632712    69425.78      8.6077
    34  -295.46321907     0.30464884    66862.69      0.31632712    69425.78      8.6077
    35  -295.46318343     0.30468449    66870.52      0.31636277    69433.60      8.6087
    36  -295.46318343     0.30468449    66870.52      0.31636277    69433.60      8.6087
    37  -295.45427185     0.31359606    68826.38      0.32527434    71389.47      8.8512
    38  -295.45427185     0.31359606    68826.38      0.32527434    71389.47      8.8512
    39  -295.45170699     0.31616093    69389.30      0.32783921    71952.39      8.9210
    40  -295.45170699     0.31616093    69389.30      0.32783921    71952.39      8.9210
    41  -295.45157519     0.31629273    69418.23      0.32797101    71981.32      8.9245
    42  -295.45157519     0.31629273    69418.23      0.32797101    71981.32      8.9245
    43  -295.45156995     0.31629796    69419.38      0.32797624    71982.46      8.9247
    44  -295.45156995     0.31629796    69419.38      0.32797624    71982.46      8.9247
    45  -295.44976326     0.31810466    69815.90      0.32978294    72378.99      8.9739
    46  -295.44976326     0.31810466    69815.90      0.32978294    72378.99      8.9739
    47  -295.44975240     0.31811551    69818.29      0.32979380    72381.37      8.9741
    48  -295.44975240     0.31811551    69818.29      0.32979380    72381.37      8.9741
    49  -295.44772095     0.32014696    70264.14      0.33182525    72827.22      9.0294
    50  -295.44772095     0.32014696    70264.14      0.33182525    72827.22      9.0294
    51  -295.44758251     0.32028540    70294.52      0.33196368    72857.61      9.0332
    52  -295.44758251     0.32028540    70294.52      0.33196368    72857.61      9.0332
    53  -295.44756612     0.32030179    70298.12      0.33198007    72861.20      9.0336
    54  -295.44756612     0.32030179    70298.12      0.33198007    72861.20      9.0336
    55  -295.43880835     0.32905957    72220.23      0.34073785    74783.31      9.2719
    56  -295.43880835     0.32905957    72220.23      0.34073785    74783.31      9.2719
    57  -295.43651966     0.33134826    72722.54      0.34302654    75285.62      9.3342
    58  -295.43651966     0.33134826    72722.54      0.34302654    75285.62      9.3342
    59  -295.43651346     0.33135446    72723.90      0.34303274    75286.98      9.3344
    60  -295.43651346     0.33135446    72723.90      0.34303274    75286.98      9.3344


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.504989776  -0.005473173   0.641084868  -0.000415430   0.002061131   0.577139009   0.000082333   0.000009016
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.005846159  -0.302539342   0.002491356   0.724167170   0.574961437  -0.002053208   0.000000941  -0.000006883
                        -0.006462831  -0.006538336   0.000911559  -0.223498568   0.050027217   0.004241746  -0.000002314   0.000023992

    3    3.2  0.5  0.5  -0.003198035  -0.002545297   0.002501208   0.006071031   0.004096102  -0.000014462   0.000000793  -0.000000548
                         0.807653170  -0.006431745  -0.116828335  -0.000413955   0.001860553  -0.577105554   0.000006749   0.000001563

    4    4.2  0.5  0.5  -0.000019441  -0.000526814   0.000010248  -0.000846439   0.000000131  -0.000000013  -0.001615834   0.017803441
                         0.000039624   0.004733349  -0.000010767  -0.002168660  -0.000002114  -0.000000008  -0.000256066  -0.001997913

    5    5.2  0.5  0.5  -0.000065597  -0.004887618   0.000008717  -0.001836767  -0.000000577  -0.000000028  -0.002129714   0.020036788
                        -0.000013885  -0.000561624  -0.000054472   0.000681270   0.000000125  -0.000000005   0.009167482  -0.072947435

    6    6.2  0.5  0.5   0.000087611  -0.000049782  -0.000069328  -0.000055669  -0.000000011   0.000000086  -0.001148633   0.000040767
                         0.000758355  -0.000062057   0.005238857  -0.000114795  -0.000000006   0.000000646  -0.152349233  -0.016480965

    7    7.2  0.5  0.5   0.000395973  -0.000151891  -0.000311713   0.001363055  -0.000000054   0.000000370  -0.001297391  -0.065009747
                         0.000030552   0.002309984   0.000124552   0.004540293   0.000000479   0.000000015   0.000004270  -0.019457365

    8    8.2  0.5  0.5  -0.004143223   0.000054301   0.003257828   0.000116789   0.000000010  -0.000003794   0.083540932   0.002367999
                        -0.000006923   0.000206739   0.000127343   0.000444174   0.000000056   0.000000032  -0.003043419  -0.002371748

    9    9.2  0.5  0.5  -0.000600526   0.000045951  -0.000761529  -0.000093759   0.000230673   0.002046220  -0.000960431  -0.000086092
                         0.000142464  -0.000000264  -0.000020512   0.000029345   0.000018655   0.000304672  -0.000013610   0.000037120

   10   10.2  0.5  0.5   0.000003998   0.000287448  -0.000009223  -0.000686830   0.001623548   0.000007571   0.000007870  -0.000080415
                        -0.000604343   0.000011029   0.000087050   0.000210874   0.000144658  -0.001293876  -0.000078809   0.000216776

   11   11.2  0.5  0.5   0.000112324   0.000222587   0.000141060  -0.000534924   0.001266089  -0.000382424   0.000184437  -0.000003055
                         0.000750411  -0.000001051  -0.000108045   0.000166409   0.000106119   0.001604441   0.000071174   0.000163810

   12   12.2  0.5  0.5   0.000000000   0.000000051   0.000000000   0.000000621  -0.000928760   0.000003313   0.000029555  -0.000299308
                        -0.000000023  -0.000002429   0.000000017   0.000002005   0.010672021   0.000027816  -0.000008579  -0.000075032

   13    1.2  0.5 -0.5  -0.005471072  -0.504795883  -0.000396810  -0.612350700   0.575183456  -0.002054147  -0.000002438   0.000022263
                        -0.000151654  -0.013992535   0.000122979   0.189779949   0.047470288  -0.000169530   0.000008680  -0.000079266

   14    2.2  0.5 -0.5  -0.302604348   0.006022990   0.757871296  -0.002109842  -0.001697363  -0.577128053   0.000024960   0.000002482
                        -0.001847101  -0.006298360  -0.000893647   0.001608217  -0.004396251   0.002566527  -0.000000139  -0.000000281

   15    3.2  0.5 -0.5  -0.002722534  -0.019182092   0.005921463  -0.036973719  -0.047481949  -0.004235256   0.000001653  -0.000006284
                         0.006358749   0.807431680  -0.001401802  -0.110851522   0.575148924   0.001517340  -0.000000105  -0.000002588

   16    4.2  0.5 -0.5  -0.000395458   0.000018335  -0.000166514  -0.000012976  -0.000000014   0.000000043  -0.006737459  -0.000190387
                        -0.004746129   0.000040148   0.002322029  -0.000007251   0.000000007  -0.000002117   0.016600024   0.001624883

   17    5.2  0.5 -0.5  -0.004901303   0.000065957  -0.001956117  -0.000024451  -0.000000028   0.000000564  -0.075647951  -0.009401853
                         0.000425980  -0.000012062  -0.000106998  -0.000049450   0.000000003   0.000000172  -0.000434248  -0.000428464

   18    6.2  0.5 -0.5  -0.000051483  -0.000108591  -0.000019191   0.001617077   0.000000138   0.000000011  -0.015878062   0.146363540
                         0.000060654   0.000755636   0.000126129   0.004983522  -0.000000636  -0.000000005  -0.004417130   0.042300382

   19    7.2  0.5 -0.5  -0.000087827  -0.000396667  -0.000042099   0.000334613   0.000000370   0.000000014  -0.001154227  -0.000354919
                        -0.002313306   0.000019568  -0.004740296   0.000026693   0.000000016   0.000000482  -0.067849275   0.001247908

   20    8.2  0.5 -0.5   0.000060009   0.004141824  -0.000019934  -0.003074112  -0.000003779  -0.000000015  -0.002923695   0.025519136
                        -0.000205155   0.000107882  -0.000458838   0.001086048  -0.000000344   0.000000055   0.001638480  -0.079606052

   21    9.2  0.5 -0.5   0.000045926   0.000596348  -0.000098244   0.000721324   0.002064347  -0.000231426   0.000059016  -0.000246593
                         0.000001538   0.000159049  -0.000000274  -0.000245028  -0.000135336  -0.000000381  -0.000072848   0.000928334

   22   10.2  0.5 -0.5   0.000287643   0.000012749  -0.000718470   0.000034579  -0.000098877  -0.001629945   0.000230445   0.000078001
                        -0.000003060  -0.000604222   0.000001899   0.000080418   0.001290115   0.000010630  -0.000018804   0.000013732

   23   11.2  0.5 -0.5   0.000222473  -0.000133074  -0.000560210  -0.000166722  -0.000249161  -0.001270528   0.000158534  -0.000018652
                         0.000007218   0.000747011  -0.000000597  -0.000061445  -0.001630459   0.000001623   0.000041352  -0.000196811

   24   12.2  0.5 -0.5  -0.000000016   0.000000001  -0.000000001   0.000000005   0.000005590   0.000047828   0.000008695   0.000016251
                         0.000002429  -0.000000023  -0.000002099   0.000000017  -0.000027449   0.010712252  -0.000308446  -0.000026135

   25    1.2  1.5  1.5  -0.000731653   0.000055434  -0.000293103   0.001903481  -0.000402039   0.000001527   0.049507482  -0.148703236
                        -0.000028388  -0.002555301   0.000054623   0.006111813   0.004743739   0.000012392   0.005826094  -0.042080418

   26    2.2  1.5  1.5  -0.011175751   0.000097663  -0.004464234  -0.000132308  -0.000003018  -0.000001350   0.514493178   0.064298289
                        -0.000075233   0.000166203  -0.000002376  -0.000396718  -0.000314018  -0.000000786   0.002645585  -0.001054348

   27    3.2  1.5  1.5   0.000092478   0.002561389  -0.000027022  -0.006124814  -0.004754318  -0.000012335  -0.002799585  -0.003350164
                         0.000002752   0.000048953  -0.000000010   0.001908096  -0.000400988   0.000001499  -0.000873514   0.009485210

   28    4.2  1.5  1.5  -0.000016186   0.000001411   0.000005667  -0.000012236   0.000001433   0.000033953  -0.001200954   0.001609693
                         0.002121201  -0.000018262   0.006081289  -0.000035087  -0.000009385   0.007649535   0.203930416   0.021544391

   29    5.2  1.5  1.5   0.000037058   0.000003726   0.000012321  -0.000008228  -0.000001174   0.000043484   0.001048997  -0.001199463
                        -0.006073888   0.000044299   0.002120106  -0.000007735  -0.000008085   0.006643423  -0.167895358  -0.017587514

   30    6.2  1.5  1.5  -0.000090567   0.000052292   0.000231897   0.001744207  -0.000435931   0.000394597  -0.002437123   0.039708369
                        -0.000014925  -0.002363260   0.000033617   0.005658451   0.004997199  -0.000017110  -0.001556262   0.010841238

   31    7.2  1.5  1.5   0.002384101  -0.000010644  -0.005969093   0.000094458  -0.000010357  -0.010113247  -0.043601076  -0.003150346
                         0.000005307  -0.000090017   0.000011204   0.000211480   0.000197816   0.000053466  -0.000572590   0.001058527

   32    8.2  1.5  1.5   0.000012392   0.002365311  -0.000027355  -0.005659568  -0.004998844   0.000026046   0.003336460  -0.023520197
                         0.000006067   0.000051793  -0.000003810   0.001745764  -0.000435754  -0.000006260  -0.008777427   0.085697567

   33    9.2  1.5  1.5   0.000131574   0.000003264  -0.000002037   0.000012173   0.000000009   0.000000018   0.000014558  -0.000017329
                        -0.019146457   0.000145779  -0.007642282   0.000052134  -0.000000032   0.000005929   0.000563526   0.000080166

   34    1.2  1.5  0.5  -0.000048621  -0.000096505   0.000022531   0.000210793  -0.000361634   0.000017673  -0.002612785  -0.002231598
                         0.003444875  -0.000023848   0.009939736  -0.000149584  -0.000038632   0.002744185   0.313637232   0.049507031

   35    2.2  1.5  0.5   0.000047999  -0.001484868   0.000000342   0.003561423  -0.005528424  -0.000033034   0.012991972  -0.068212680
                        -0.000227083  -0.000030881  -0.000652382  -0.001093567  -0.000480643  -0.000178275  -0.046469440   0.246953397

   36    3.2  1.5  0.5   0.009432413  -0.000067219  -0.004854466   0.000020756   0.000041363  -0.002804916   0.576548804   0.061182907
                         0.000071321   0.000003208   0.000034800  -0.000008202   0.000004417   0.000019907   0.004395813  -0.005824532

   37    4.2  1.5  0.5   0.000001179   0.000128349  -0.000001756   0.000624714  -0.000576900   0.000004940   0.017975103  -0.174993450
                        -0.000060892  -0.006081129   0.000015996   0.002029735   0.006628736  -0.000000677   0.006528790  -0.048030582

   38    5.2  1.5  0.5  -0.000004715   0.000034279  -0.000002490  -0.001799605   0.000663364   0.000004222   0.009833177  -0.096582364
                        -0.000024369  -0.002114574  -0.000053863  -0.005815302  -0.007622541  -0.000036018   0.003594198  -0.026286349

   39    6.2  1.5  0.5   0.000038895  -0.000231493  -0.000001279  -0.000082689  -0.000004467  -0.000038752   0.000032826  -0.000789623
                        -0.005917935   0.000056779  -0.002361940   0.000050373   0.000023065  -0.008677778   0.019269526   0.007660801

   40    7.2  1.5  0.5   0.000023746   0.005971937   0.000007535   0.002276078  -0.000002940   0.000032383  -0.005566541   0.038009065
                        -0.000227968   0.000124106  -0.000093123  -0.000712488  -0.000009944  -0.000337540   0.015108608  -0.138960750

   41    8.2  1.5  0.5  -0.005987579   0.000022441  -0.002353938   0.000008357  -0.000022655   0.008735937  -0.106263992  -0.011240161
                        -0.000040254   0.000002143   0.000000977   0.000002753  -0.000000949  -0.000037749  -0.000672964   0.001357708

   42    9.2  1.5  0.5   0.000006961   0.000166461  -0.000000416   0.005643689   0.000000313   0.000000014  -0.000066715   0.000725483
                        -0.000069811  -0.007645914   0.000162994   0.018287236  -0.000003424  -0.000000018  -0.000039656   0.000204219

   43    1.2  1.5 -0.5   0.000097129   0.000046850  -0.000245626  -0.002920932  -0.000243325  -0.000363586  -0.048266276   0.302660526
                        -0.000021165  -0.003444900  -0.000080479  -0.009500895   0.002733434   0.000008756  -0.011238005   0.082290617

   44    2.2  1.5 -0.5   0.001485153   0.000041688  -0.003725524   0.000193451   0.000047585  -0.005549225  -0.256198619  -0.048251393
                         0.000010274   0.000228326   0.000009733   0.000623040  -0.000174954   0.000024296  -0.001103357  -0.000057111

   45    3.2  1.5 -0.5   0.000067105   0.009430767  -0.000022254  -0.004647185   0.002793774   0.000041586   0.022151142  -0.151664096
                         0.000005069   0.000190065  -0.000001690   0.001403824   0.000250547  -0.000001000  -0.057328877   0.556260594

   46    4.2  1.5 -0.5   0.000040200  -0.000000509   0.000004148  -0.000006413  -0.000004868  -0.000029724  -0.001076017   0.001425202
                        -0.006082351   0.000060901   0.002123694  -0.000014759  -0.000001081  -0.006653726   0.181462080   0.019070873

   47    5.2  1.5 -0.5   0.000024326  -0.000005388  -0.000002556   0.000013566  -0.000001245   0.000034155  -0.000808264   0.000801465
                        -0.002114712   0.000024229  -0.006087389   0.000052186  -0.000036244   0.007651275   0.100092317   0.010438740

   48    6.2  1.5 -0.5   0.000229831  -0.000125097   0.000093895   0.000697982   0.000752377  -0.000002555  -0.007588941   0.018542848
                         0.000063171   0.005916741   0.000023637   0.002256454  -0.008645187  -0.000023354  -0.001311237   0.005241995

   49    7.2  1.5 -0.5  -0.005973083   0.000017421  -0.002384979   0.000034765  -0.000004510  -0.000003748   0.144061850   0.016050970
                        -0.000041415   0.000228538  -0.000006767   0.000086719  -0.000339060   0.000009668   0.000981149  -0.001273885

   50    8.2  1.5 -0.5  -0.000022492  -0.005986396  -0.000007167  -0.002248721  -0.008703232  -0.000022656  -0.004346421   0.028085402
                         0.000001520  -0.000125668   0.000005104   0.000695902  -0.000756161  -0.000000917   0.010454340  -0.102487556

   51    9.2  1.5 -0.5   0.000045460   0.000005024   0.000022826  -0.000048649  -0.000000012   0.000000031  -0.000000445  -0.000020140
                        -0.007647591   0.000069977   0.019138279  -0.000155565  -0.000000019   0.000003438  -0.000753678  -0.000074953

   52    1.2  1.5 -1.5  -0.000015391   0.000732158   0.000008889   0.000296135   0.000002541   0.000010499  -0.000304220   0.007777529
                         0.002555856  -0.000008104  -0.006401361  -0.000034592  -0.000012224   0.004760734  -0.154542297  -0.049238645

   53    2.2  1.5 -1.5   0.000102231   0.011173544  -0.000008937   0.004263439  -0.000001410   0.000028836  -0.018401037   0.136569569
                        -0.000163433   0.000234460   0.000418103  -0.001323814   0.000000672  -0.000312706   0.061618045  -0.496043327

   54    3.2  1.5 -1.5   0.002561762  -0.000092519  -0.006415145   0.000025808  -0.000012170   0.004771190   0.010037749   0.000083980
                         0.000022039   0.000000189  -0.000009449  -0.000008009  -0.000002508  -0.000008581  -0.000660611   0.002931493

   55    4.2  1.5 -1.5   0.000000905  -0.000042596  -0.000001301   0.001794828   0.000663021  -0.000000656   0.020306595  -0.196658608
                         0.000018294   0.002120835   0.000037136   0.005810396  -0.007620823  -0.000009472   0.007375236  -0.053985635

   56    5.2  1.5 -1.5   0.000004952   0.000131255  -0.000005570   0.000615845   0.000589765   0.000001835  -0.016608039   0.161924791
                        -0.000044179  -0.006072582   0.000009825   0.002028728  -0.006617336  -0.000007961  -0.005910366   0.044388216

   57    6.2  1.5 -1.5  -0.000013211   0.000090946  -0.000009038  -0.000211551   0.000391853   0.000023429  -0.000299567   0.000839303
                         0.002363802  -0.000012410  -0.005921170   0.000100758   0.000049508   0.005016123   0.041160627   0.002767145

   58    7.2  1.5 -1.5  -0.000013134  -0.002383332   0.000027620   0.005704869  -0.010074582  -0.000005949   0.001870935  -0.011238271
                         0.000089687  -0.000060755  -0.000229963  -0.001756325  -0.000885110   0.000197997  -0.002746772   0.042131734

   59    8.2  1.5 -1.5   0.002365838  -0.000012555  -0.005922698   0.000025001   0.000025443   0.005017747   0.088865031   0.009352625
                         0.000013767   0.000005722   0.000007881  -0.000011737   0.000008381  -0.000023117   0.000528176  -0.000838798

   60    9.2  1.5 -1.5   0.000007302   0.000398997  -0.000003806  -0.002260394   0.000000505  -0.000000007   0.000081866  -0.000538597
                        -0.000145633  -0.019142751  -0.000053401  -0.007300349  -0.000005908  -0.000000032   0.000004993  -0.000166390


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000079789   0.000000696  -0.000001481   0.000000517  -0.010012619  -0.000183504   0.007625515  -0.000430611
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000003047   0.000149556   0.000000356   0.000103031  -0.000169709   0.008006616   0.000239655   0.004798128
                         0.000001812   0.000096678  -0.000004375  -0.000096030   0.000175959  -0.008389948  -0.000056917  -0.000108652

    3    3.2  0.5  0.5   0.000000124   0.000001796   0.000004211   0.000000905  -0.000054833   0.000046371  -0.000072023  -0.000005819
                        -0.000111327   0.000000279   0.000026772  -0.000001776   0.001645045   0.000001218   0.012522919  -0.000752946

    4    4.2  0.5  0.5   0.000493537   0.051301337  -0.002186096  -0.079015771   0.000426282  -0.018854448   0.000337913   0.003395838
                         0.001492942  -0.070477860  -0.000064778  -0.071197681   0.000356355  -0.015052411  -0.003696932  -0.061987282

    5    5.2  0.5  0.5  -0.000070825   0.043076657   0.000301113  -0.071029201   0.000158635  -0.015873925   0.002978127   0.054705996
                        -0.000404714   0.034400657   0.002407623   0.080785148   0.000368412   0.017956649   0.000353740   0.004802086

    6    6.2  0.5  0.5  -0.002957615   0.000959399  -0.002415612   0.000278867   0.000947469  -0.001102973   0.000966268   0.000657990
                         0.038130095  -0.000703792  -0.009344653   0.002217776  -0.055477205  -0.001873283   0.006009977   0.000354440

    7    7.2  0.5  0.5  -0.011533971  -0.055690467  -0.005531740  -0.052902418   0.003105409   0.040820939   0.003927138   0.000343741
                        -0.001107470   0.087822866   0.000347523  -0.053596437  -0.002040942   0.039566174  -0.001592070  -0.028239741

    8    8.2  0.5  0.5   0.117822637  -0.004317104   0.040225289  -0.005055703  -0.040795229   0.002961541  -0.041084277   0.002145878
                         0.001604919   0.009622486  -0.006749831  -0.005885210  -0.001489212   0.003766062  -0.000394574  -0.002745749

    9    9.2  0.5  0.5  -0.009474326  -0.000144767  -0.004920435   0.000129216  -0.230320438   0.016261482   0.179005682   0.002498357
                        -0.000247083  -0.000154088   0.000441766   0.000062008  -0.004961478  -0.021620748  -0.042350390   0.002259689

   10   10.2  0.5  0.5  -0.000050226  -0.000405633   0.000201543   0.000240976  -0.005452287   0.148192387   0.004625941   0.089612418
                         0.000767634  -0.000223365   0.001370558  -0.000257211   0.026634702  -0.154624389   0.181050688  -0.012976594

   11   11.2  0.5  0.5   0.001832118  -0.000239860   0.000660599   0.000131604   0.040954858   0.116827801  -0.028061226   0.073027608
                        -0.000934242  -0.000207643  -0.001883013  -0.000125770  -0.025997662  -0.122459333  -0.223192698   0.011756748

   12   12.2  0.5  0.5   0.000026963   0.003694324  -0.000108581  -0.002938963  -0.000023383   0.001472203  -0.000011440   0.000076139
                         0.000120638  -0.005704521  -0.000010859  -0.003161361  -0.000051883   0.001396580   0.000209527   0.003390404

   13    1.2  0.5 -0.5  -0.000000582  -0.000066683  -0.000000318  -0.000000910   0.000126710  -0.006913747   0.000430574   0.007624855
                        -0.000000382  -0.000043815   0.000000408   0.000001168  -0.000132734   0.007242420  -0.000005665  -0.000100315

   14    2.2  0.5 -0.5  -0.000178079  -0.000001551  -0.000139078   0.000003669  -0.011597289  -0.000244462  -0.004799142   0.000240383
                        -0.000001329  -0.000003187   0.000022238   0.000002409  -0.000001868   0.000001255  -0.000045522   0.000053759

   15    3.2  0.5 -0.5  -0.000001654  -0.000061030  -0.000001957  -0.000018528  -0.000031139  -0.001227771  -0.000004086  -0.000236759
                        -0.000000753   0.000093108  -0.000000378  -0.000019778   0.000034383  -0.001096247  -0.000752957  -0.012520888

   16    4.2  0.5 -0.5  -0.004172834   0.001232287  -0.007587529  -0.001292690   0.002131211   0.000036587  -0.004211001   0.000386518
                        -0.087072059  -0.000976690  -0.106089732   0.001764134  -0.024031713  -0.000554407  -0.061937245   0.003692167

   17    5.2  0.5 -0.5  -0.054891192  -0.000281431   0.107381789  -0.001713954   0.023949567  -0.000156945  -0.054638089   0.002973216
                         0.005095164   0.000299342  -0.006367010  -0.001717463   0.000917052  -0.000369135   0.005521341  -0.000392888

   18    6.2  0.5 -0.5  -0.000415331   0.018466623   0.001577884   0.005885862  -0.000593394   0.040782513  -0.000653270   0.000887122
                        -0.001115020  -0.033490827   0.001583218   0.007649467  -0.002091320   0.037621863   0.000363065  -0.006022168

   19    7.2  0.5 -0.5  -0.001683688  -0.010247506  -0.009756064  -0.003674451   0.000432374   0.003620569  -0.000715212   0.003947742
                         0.103978119  -0.005408105  -0.074673041   0.004149619   0.056847553  -0.000836956  -0.028232775   0.001540270

   20    8.2  0.5 -0.5  -0.001676042   0.099349981  -0.001534324   0.030050341   0.000679149  -0.027092051  -0.002181813  -0.041075531
                         0.010412516   0.063358749  -0.007605372  -0.027579179   0.004742647   0.030536687  -0.002717282   0.000935013

   21    9.2  0.5 -0.5   0.000205601  -0.008053720  -0.000030518  -0.003373020  -0.026867526  -0.155448249  -0.002468414   0.179547321
                        -0.000049281  -0.004996148   0.000140037   0.003609512  -0.003166794   0.170023418   0.002292360   0.039991864

   22   10.2  0.5 -0.5   0.000461659   0.000379555  -0.000351006  -0.000957160  -0.214171675  -0.023030481  -0.089775373   0.002243777
                         0.000036072  -0.000669120   0.000031967  -0.001001446   0.000423225  -0.014447552  -0.011796599  -0.181095876

   23   11.2  0.5 -0.5   0.000314482   0.001018147  -0.000180100   0.001891320  -0.169248399   0.047084334  -0.072866626  -0.025122646
                        -0.000041820   0.001786853   0.000026494   0.000636423  -0.000053617  -0.011672373   0.012716426   0.223542536

   24   12.2  0.5 -0.5   0.000045047   0.000088780  -0.000687001  -0.000058179  -0.000006374   0.000021382  -0.000031531  -0.000014195
                        -0.006796143  -0.000086015  -0.004261425   0.000092320   0.002029230   0.000052739   0.003391112  -0.000209358

   25    1.2  1.5  1.5   0.011783784  -0.007952517   0.021841228   0.436034084  -0.009888664  -0.235872307   0.037282138  -0.005655186
                        -0.000185001   0.014046332   0.000120721   0.470402596   0.006513254  -0.223665715  -0.007654314  -0.133483581

   26    2.2  1.5  1.5   0.180917088   0.001066565   0.120248458  -0.028293579  -0.232177524   0.012168422   0.550926736  -0.032137617
                         0.001330537  -0.000234291  -0.019619929  -0.034665488   0.000033578   0.015078840   0.004991892   0.009810853

   27    3.2  1.5  1.5   0.004350955  -0.289480058   0.000515146   0.417040662  -0.004936744   0.219792934   0.004418693   0.130236744
                        -0.000658458  -0.187258551  -0.012222981  -0.385829948   0.005132525  -0.231589061   0.001006749  -0.003465589

   28    4.2  1.5  1.5   0.000126422   0.000502886   0.003739621   0.000513475  -0.000049474  -0.000418572  -0.000245971   0.000172446
                        -0.019713732  -0.000550782   0.023245061  -0.000241508  -0.132105873  -0.002965853   0.043537337  -0.002552675

   29    5.2  1.5  1.5   0.000875916   0.001765323  -0.010297841  -0.000442438  -0.000079861   0.000158756   0.001089764   0.000467302
                        -0.143683435  -0.002067850  -0.063969134   0.001269453  -0.042492945  -0.001067195  -0.132795555   0.008063234

   30    6.2  1.5  1.5  -0.003807325   0.111602921   0.002246834   0.099392711  -0.007082945   0.095848524  -0.002526469   0.001356611
                         0.003556132  -0.172600422   0.000544707   0.106766927  -0.002297630   0.091605322   0.003253695   0.051621684

   31    7.2  1.5  1.5   0.108345077   0.006031673   0.024355771   0.004006322   0.127380478   0.006634359   0.053625891  -0.003345948
                         0.000705041  -0.005324396  -0.003982427   0.003294005  -0.000126269   0.003526193   0.000518098   0.002492608

   32    8.2  1.5  1.5  -0.002209867   0.093899212   0.000363273   0.155895075   0.002186933  -0.092650009  -0.003483364  -0.054865317
                         0.000356774   0.060805568  -0.004548442  -0.145133380  -0.002111403   0.097058105  -0.000377488   0.001291658

   33    9.2  1.5  1.5   0.000028574   0.000037933  -0.000093144  -0.000021496  -0.000277790  -0.001223668  -0.003036087  -0.000701458
                        -0.004972096  -0.000028837  -0.000580210  -0.000002168  -0.155489414  -0.003114523   0.373789768  -0.022494084

   34    1.2  1.5  0.5  -0.003749964   0.029230120   0.028310387   0.008349465   0.000919874  -0.006580017   0.001719162  -0.005399184
                         0.486754710   0.028171916   0.176563980  -0.009073791   0.490579801   0.021031389  -0.161957543   0.009979189

   35    2.2  1.5  0.5  -0.010658733   0.522374356  -0.001379973   0.095019210   0.002371845  -0.133839551  -0.007259321  -0.069354616
                        -0.030681614   0.337410126  -0.014419865  -0.088358030  -0.035333774   0.139279392   0.009952520   0.001002347

   36    3.2  1.5  0.5  -0.151864849  -0.005077305   0.036066350  -0.001183255  -0.232303192  -0.005857161  -0.471282375   0.028644137
                         0.000256881  -0.003782916  -0.005288666   0.000147015   0.001036684  -0.000707100  -0.004665208  -0.001890976

   37    4.2  1.5  0.5   0.000050132   0.011753690   0.003105104   0.097149142  -0.000953741   0.030591810  -0.000411302   0.002930832
                        -0.000014969  -0.018180370   0.000225202   0.104365842  -0.000749588   0.029081585   0.007735718   0.133313213

   38    5.2  1.5  0.5   0.000411246   0.087994406   0.002012139   0.062582958   0.001960033  -0.096102065   0.000163309   0.000990621
                         0.002273707  -0.136029592   0.000135839   0.067745689   0.002745529  -0.091692907   0.002359916   0.042631680

   39    6.2  1.5  0.5   0.001172669   0.001216648  -0.006693965  -0.008000692   0.000136942  -0.000880226   0.001372491   0.005418429
                        -0.165874183  -0.001959878  -0.041279355   0.007121328   0.056432509   0.002748205  -0.130330192   0.007358990

   40    7.2  1.5  0.5   0.000421004   0.008695140   0.000362709   0.185248207  -0.000839051   0.036784645  -0.008481370  -0.133443773
                        -0.006432416   0.005250650  -0.007093595  -0.172280026   0.002649732  -0.038590017  -0.005214874   0.003190738

   41    8.2  1.5  0.5   0.138738044   0.001573099   0.022637522  -0.001211624   0.050023738   0.000907982  -0.129464108   0.008323027
                         0.000989367   0.001547359  -0.003609150   0.000305481  -0.000108093  -0.000200984  -0.001036354  -0.000350162

   42    9.2  1.5  0.5   0.000023816   0.002238277  -0.000106649  -0.002368888   0.006080131  -0.270613578   0.001259392  -0.003703187
                         0.000084863  -0.003468359  -0.000009258  -0.002538379   0.007478349  -0.258222580  -0.009263934  -0.155286048

   43    1.2  1.5 -0.5   0.039898743  -0.264158016   0.012289463   0.121865089  -0.019756141   0.354215523  -0.005529995  -0.003849603
                        -0.007493137   0.408857864  -0.001008139   0.130863353  -0.009762725   0.339412361  -0.009907298  -0.161920912

   44    2.2  1.5 -0.5   0.621849567   0.025756110   0.128101566  -0.010525611  -0.193161508  -0.027195718  -0.069361801   0.007389621
                         0.004865908  -0.019788704  -0.020634454  -0.009952303   0.000637171  -0.022682464  -0.000089884   0.009856161

   45    3.2  1.5 -0.5  -0.006320605   0.126777925  -0.000843302  -0.026341344  -0.003532923   0.161155993   0.028666535   0.471180221
                         0.000373416   0.083608349   0.000842940   0.025196929   0.004724911  -0.167315850   0.001513992  -0.010864635

   46    4.2  1.5 -0.5  -0.000160414  -0.000033677  -0.022602884  -0.001731063   0.000088187   0.000116363   0.001176811   0.000513032
                         0.021648310  -0.000040039  -0.140781015   0.002587626  -0.042208881  -0.001207462  -0.133340233   0.007729637

   47    5.2  1.5 -0.5  -0.001157906  -0.001592255  -0.014965902  -0.001129708  -0.000034638   0.000632512   0.000429705  -0.000132249
                         0.162005323   0.001674392  -0.091006191   0.001670604   0.132827689   0.003313546  -0.042641022   0.002361860

   48    6.2  1.5 -0.5  -0.000059432   0.090106579  -0.010535041  -0.028444929  -0.002595656   0.040724723   0.005321151  -0.003086896
                         0.002306041  -0.139271046   0.001933210  -0.030654205  -0.001260952   0.039065890  -0.007429634  -0.130300858

   49    7.2  1.5 -0.5   0.010150139   0.003180389   0.249759621  -0.005818130   0.053313207   0.002495996  -0.133474201   0.008412033
                         0.000386610  -0.005606991  -0.040217370  -0.004074311   0.000039127   0.001222739  -0.001434977  -0.005325997

   50    8.2  1.5 -0.5   0.002164399  -0.116491729  -0.000985733  -0.016761958   0.000772342  -0.034619745   0.008326913   0.129439271
                        -0.000429347  -0.075358481   0.000767908   0.015637140  -0.000517990   0.036108992   0.000240641  -0.002739395

   51    9.2  1.5 -0.5  -0.000033973  -0.000066505   0.000546037   0.000058255  -0.000079644   0.001210958  -0.001660042  -0.001381152
                         0.004127741   0.000057845   0.003428825  -0.000089812   0.374046258   0.009561761   0.155321327  -0.009246565

   52    1.2  1.5 -1.5  -0.001067065   0.009746547   0.103008469   0.013330490   0.001086670  -0.011539382   0.003898688   0.037379606
                         0.016106003   0.006625451   0.633082601  -0.017301787  -0.325055252   0.002655336  -0.133546425   0.007163196

   53    2.2  1.5 -1.5  -0.000762710   0.151929639  -0.009950956   0.089391718   0.002504630  -0.160343643   0.032263900   0.550813392
                        -0.000781489   0.098235165  -0.043625693  -0.082787403   0.019213764   0.167917599   0.009387226  -0.012239031

   54    3.2  1.5 -1.5   0.344758466   0.003274672  -0.560682016   0.009957709  -0.319282886  -0.007121344  -0.130271065   0.004405066
                         0.002463620   0.002939541   0.091778750   0.007107086  -0.000930370   0.000026865  -0.001751994  -0.001064791

   55    4.2  1.5 -1.5  -0.000117829  -0.010719762  -0.000506124  -0.016036145  -0.001856262   0.095521874  -0.000206012  -0.000818694
                        -0.000736459   0.016544906   0.000256557  -0.017238321  -0.002350696   0.091255332  -0.002550185  -0.043530333

   56    5.2  1.5 -1.5  -0.000339824  -0.078168963   0.001273264   0.044126530  -0.000881555   0.030681244  -0.000361188   0.002836626
                        -0.002697571   0.120562474   0.000431348   0.047444125  -0.000622069   0.029399286   0.008068684   0.132769728

   57    6.2  1.5 -1.5   0.001509579  -0.001229138   0.023117661   0.000951474   0.000077080  -0.003228854  -0.000677398  -0.002569053
                        -0.205533060  -0.005062708   0.144026600  -0.002107051   0.132583817   0.006709823   0.051635064  -0.003220177

   58    7.2  1.5 -1.5  -0.002117099   0.090935088   0.000135524   0.018112585  -0.002030449   0.088047979   0.003378449   0.053614434
                        -0.007761969   0.058906389   0.005184855  -0.016762981   0.007233673  -0.092050831   0.002448376  -0.001223514

   59    8.2  1.5 -1.5  -0.111865201  -0.001650951  -0.210304070   0.003810951   0.134180102   0.003037324   0.054877562  -0.003478096
                        -0.000745520  -0.001511675   0.033751595   0.002509371   0.000002487  -0.000123941   0.000569780   0.000423280

   60    9.2  1.5 -1.5  -0.000015867  -0.002706451   0.000011503   0.000400394  -0.001407879   0.112278220   0.000405483  -0.007953116
                        -0.000044931   0.004171053  -0.000018288   0.000430121  -0.003035703   0.107566892  -0.022501365  -0.373717482


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.004434407  -0.000311712  -0.000030283  -0.000000464  -0.000019318  -0.000002724  -0.000000212   0.000011836
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000091008  -0.001311674   0.000000109   0.000003475  -0.000002629   0.000019362  -0.000014133   0.000000261
                        -0.000335464   0.004286777  -0.000000525   0.000001155  -0.000001178   0.000008687   0.000032923   0.000000747

    3    3.2  0.5  0.5   0.000001946  -0.000036453   0.000000445   0.000000088   0.000000048   0.000000208   0.000000011   0.000000084
                         0.004349287   0.000330907   0.000061044   0.000000556  -0.000022580  -0.000003306   0.000000085   0.000002420

    4    4.2  0.5  0.5  -0.000032952   0.000689956   0.000056403  -0.005504215  -0.001820877   0.013281731  -0.001099987   0.000008792
                        -0.000008034   0.000103834  -0.000443488   0.039493106   0.004201859  -0.028692458  -0.000344959  -0.000008286

    5    5.2  0.5  0.5   0.000011323   0.000294264  -0.000882865   0.073753382  -0.000127140   0.002754801  -0.000508846   0.000021571
                         0.000078920  -0.001196640  -0.000339922   0.018535514  -0.000564947   0.003970448   0.001275731   0.000062283

    6    6.2  0.5  0.5  -0.000088375  -0.000024872   0.000258825   0.001077274  -0.000915466  -0.000032185  -0.000122984  -0.000036225
                        -0.000620129  -0.000065890   0.004971627  -0.000750091  -0.000971589  -0.000240342   0.000030770  -0.006838188

    7    7.2  0.5  0.5  -0.000364983   0.000653447   0.001152559  -0.013924983  -0.003117080  -0.005336918   0.002873793  -0.000178550
                        -0.000006874   0.000174239  -0.000469972   0.049538696  -0.001639068   0.010852744   0.001273926  -0.000134026

    8    8.2  0.5  0.5   0.003465048   0.000296790  -0.009664712  -0.001905067   0.040005658   0.005337154   0.000266083   0.002228715
                        -0.000033005   0.000041630   0.000160826   0.004501823   0.000077118   0.001134038   0.000092413  -0.000162190

    9    9.2  0.5  0.5   0.339428518   0.034475463   0.002268256  -0.000208649  -0.003571664  -0.000949547   0.000073653  -0.001507077
                         0.053466883  -0.031954525   0.000434147  -0.000072631  -0.000536584  -0.000263568  -0.000147901  -0.000201032

   10   10.2  0.5  0.5  -0.003387915   0.080495177   0.000010831  -0.001634139   0.000386344  -0.002868688   0.000493591  -0.000020278
                        -0.198034655  -0.273248888  -0.001862663  -0.000533730   0.002412382  -0.000957974  -0.001134023   0.000790286

   11   11.2  0.5  0.5  -0.067000720   0.055592973  -0.000398000  -0.001272360   0.001043859  -0.002130219   0.000367184   0.000285589
                         0.282460163  -0.183162671   0.002329705  -0.000372914  -0.002595986  -0.001404105  -0.000882248  -0.000998752

   12   12.2  0.5  0.5  -0.039137714   0.556089064  -0.000016934   0.001012364  -0.000399893   0.002667362   0.002183696   0.000008198
                        -0.008290926   0.170312436   0.000037073  -0.003223445   0.000869129  -0.005956508   0.000936265  -0.000019325

   13    1.2  0.5 -0.5   0.000089842  -0.001278085  -0.000000444   0.000028976   0.000002478  -0.000017575  -0.000004707  -0.000000084
                        -0.000298484   0.004246230  -0.000000135   0.000008803   0.000001131  -0.000008020   0.000010860   0.000000195

   14    2.2  0.5 -0.5   0.004482915   0.000347459   0.000003661   0.000000048  -0.000021221  -0.000002880   0.000000582  -0.000035828
                        -0.000020477   0.000009542  -0.000000095  -0.000000534  -0.000000135  -0.000000020   0.000000536  -0.000000126

   15    3.2  0.5 -0.5   0.000327371  -0.004164161   0.000000245  -0.000018171   0.000001183  -0.000009331   0.000002187  -0.000000074
                         0.000060468  -0.001255415  -0.000000506   0.000058278  -0.000003094   0.000020562   0.000001039  -0.000000044

   16    4.2  0.5 -0.5  -0.000099431  -0.000001804   0.006213668   0.000074949  -0.000170729   0.000087953  -0.000011099  -0.000120957
                         0.000690604   0.000033869  -0.039387715  -0.000440733  -0.031616964  -0.004578589   0.000004772   0.001146445

   17    5.2  0.5 -0.5  -0.001230672  -0.000072308   0.075956605   0.000943552  -0.004154573  -0.000350214   0.000048566  -0.001372872
                        -0.000063119  -0.000033589   0.003704164  -0.000068604   0.002468380   0.000461173   0.000044562  -0.000040482

   18    6.2  0.5 -0.5  -0.000055926   0.000568342   0.000812712  -0.001692844   0.000129063  -0.001236214  -0.006259742  -0.000077142
                        -0.000042807   0.000263358   0.001030851   0.004681703  -0.000205287   0.000503823  -0.002752773   0.000100603

   19    7.2  0.5 -0.5  -0.000021491  -0.000098613   0.001076667  -0.000966173   0.000349495  -0.003516236  -0.000051962  -0.000025945
                         0.000675936   0.000351475  -0.051447336  -0.000784714   0.012088945   0.000197014  -0.000217125  -0.003143390

   20    8.2  0.5 -0.5  -0.000045677   0.001030301  -0.000514173   0.009200617  -0.005326262   0.036426921  -0.001035168   0.000021030
                         0.000296195  -0.003308494  -0.004861205   0.002963303  -0.001184141   0.016538987   0.001980379  -0.000280888

   21    9.2  0.5 -0.5  -0.040535028   0.046632123  -0.000220752  -0.002296510   0.000973270  -0.003472073   0.000414912   0.000164994
                         0.023802536  -0.340434827   0.000008843  -0.000243957   0.000154444  -0.000994693  -0.001462718  -0.000008758

   22   10.2  0.5 -0.5  -0.284853677   0.188654433  -0.001718723   0.000531092   0.003007493   0.001353023   0.000733164   0.001236785
                        -0.001676502   0.060321700   0.000035656  -0.001785378   0.000319482  -0.002034252   0.000295690  -0.000001879

   23   11.2  0.5 -0.5  -0.191413027  -0.289784692  -0.001325818  -0.000296406   0.002520896  -0.000128131  -0.001029949   0.000955505
                         0.000442691  -0.017253185  -0.000013050   0.002344797  -0.000392973   0.002795062  -0.000135169   0.000013972

   24   12.2  0.5 -0.5   0.002809087  -0.003341179   0.000031628   0.000005426   0.000046346  -0.000002964  -0.000020992   0.000009414
                         0.581578440   0.039866485   0.003378532   0.000040395  -0.006526305  -0.000956708  -0.000000164  -0.002375928

   25    1.2  1.5  1.5   0.016830275  -0.238432319   0.000078736  -0.000447431   0.000130160  -0.001364216  -0.000973466   0.000003849
                         0.003519275  -0.072423631  -0.000016697   0.001446967  -0.000444810   0.003037766  -0.000415123   0.000008546

   26    2.2  1.5  1.5   0.000083960   0.016205206   0.001093940   0.000023300  -0.001112026  -0.000090071   0.000064388   0.000099770
                        -0.000138343   0.003252593  -0.000009700  -0.000102082   0.000023509  -0.000209371   0.000018686  -0.000001080

   27    3.2  1.5  1.5  -0.003613430   0.073986702   0.000019211  -0.002341986   0.000387285  -0.002599623   0.000398878  -0.000009026
                         0.017177224  -0.243873914   0.000011319  -0.000730792   0.000173416  -0.001154617  -0.000937443  -0.000002502

   28    4.2  1.5  1.5   0.000319277  -0.000296617   0.000971994   0.000055224  -0.001374265  -0.000036120   0.005018763  -0.001772307
                         0.066918625   0.004629387   0.096298566   0.002266334   0.197415134   0.028865146  -0.002894198   0.595350827

   29    5.2  1.5  1.5   0.000360184  -0.000231030  -0.001036959   0.000093294   0.002554064   0.000281155   0.000728816  -0.001577902
                         0.052804857   0.003664682  -0.101180525  -0.000066546  -0.335399938  -0.049311551   0.001117039   0.264107796

   30    6.2  1.5  1.5   0.000291991   0.041203446   0.001904364  -0.160976259   0.006408085   0.016124324  -0.088577033  -0.028302330
                        -0.000876624   0.012555033  -0.005651507   0.511527250   0.005053611  -0.032894174  -0.037859130  -0.001013047

   31    7.2  1.5  1.5  -0.081801738  -0.004053424   0.010652508  -0.004102862  -0.223997626  -0.031597550  -0.006184086   0.664230980
                         0.000424839   0.000136058  -0.000460074   0.020282183  -0.001760913  -0.000984204  -0.006934552   0.002224845

   32    8.2  1.5  1.5   0.000775082  -0.009376202  -0.005693067   0.515569502  -0.029704428   0.208148869  -0.007664426  -0.002511555
                        -0.002215505   0.030670196  -0.002360003   0.162148713  -0.013524620   0.093306516   0.017933923  -0.001136619

   33    9.2  1.5  1.5  -0.000005787   0.000001577   0.000001930   0.000000884   0.000003105   0.000001984   0.000004100   0.000000049
                        -0.001655808  -0.000111384   0.000195512  -0.000001497  -0.000548255  -0.000081708  -0.000002626   0.000260876

   34    1.2  1.5  0.5  -0.001305414   0.006656981   0.000000403  -0.000155483   0.000029436  -0.000263885   0.000046320  -0.000001374
                        -0.139499606  -0.028780533   0.000161506  -0.000046036   0.002082672   0.000183897  -0.000093218   0.000736201

   35    2.2  1.5  0.5  -0.003320191   0.089121029   0.000034609  -0.002354053   0.000576570  -0.004043912   0.000589953  -0.000020968
                         0.029717209  -0.290333132   0.000001762  -0.000740162   0.000135901  -0.001829980  -0.001377049  -0.000057199

   36    3.2  1.5  0.5   0.149716074   0.009732301   0.001229805   0.000031908  -0.002212683  -0.000297282   0.000003789  -0.001357868
                        -0.001236722   0.002616855  -0.000012052   0.000002455  -0.000012100   0.000014469   0.000023881  -0.000002219

   37    4.2  1.5  0.5  -0.003819005   0.054540523  -0.001428497   0.107022766   0.022151214  -0.148910771   0.037925310   0.002475234
                        -0.000941670   0.016691647   0.004063116  -0.340041856  -0.047271599   0.332147761   0.016290490  -0.000207274

   38    5.2  1.5  0.5   0.004673988  -0.065682142  -0.001391701   0.096731017  -0.014222663   0.097171072  -0.111473981  -0.004142026
                         0.000858899  -0.020130907   0.003557956  -0.305819793   0.032864104  -0.215310040  -0.047657473   0.001323573

   39    6.2  1.5  0.5  -0.000314822   0.000437747   0.001150764   0.012678783  -0.005871933   0.010206224  -0.001098547  -0.000398980
                        -0.064848460  -0.004581699   0.125435473   0.006873922   0.652816961   0.100313190   0.004940246   0.125022830

   40    7.2  1.5  0.5   0.000338599  -0.001237336   0.004266151  -0.335666123   0.039379722  -0.265680358   0.058616475  -0.000106259
                        -0.002793732   0.003652880   0.006424133  -0.105950804   0.043019806  -0.115728387  -0.136904325   0.002261399

   41    8.2  1.5  0.5   0.073629889   0.005082412   0.141649990   0.002815891   0.141672136   0.021811290  -0.005218827   0.263829151
                        -0.000348585   0.000409204  -0.001442922   0.000524133   0.000904533   0.000536230  -0.003926228   0.000889627

   42    9.2  1.5  0.5  -0.000156280   0.002064545   0.000001063  -0.000130685  -0.000027539   0.000181296   0.000353554   0.000006696
                        -0.000024343   0.000636762  -0.000003755   0.000418896   0.000057635  -0.000404546   0.000151686  -0.000003160

   43    1.2  1.5 -0.5   0.029477884  -0.133203583   0.000162151   0.000047334  -0.000163719  -0.000891442  -0.000676023  -0.000103951
                         0.001920639  -0.041456598   0.000001149  -0.000154415  -0.000276856   0.001882478  -0.000291525   0.000005426

   44    2.2  1.5 -0.5   0.303699081   0.029413082   0.002467557   0.000033627  -0.004438677  -0.000580953   0.000044142  -0.001498088
                        -0.001659284   0.005385798  -0.000023904   0.000008375  -0.000014097  -0.000115739   0.000041986  -0.000006359

   45    3.2  1.5 -0.5   0.000299237  -0.044335412  -0.000031244   0.001173196  -0.000264443   0.002017998  -0.000537986   0.000020404
                        -0.010073534   0.143006306  -0.000006926   0.000369022  -0.000136586   0.000907631   0.001246748   0.000012974

   46    4.2  1.5 -0.5  -0.000263652   0.000199004  -0.003554963  -0.000185710   0.002427084  -0.000526187   0.001174574  -0.000136046
                        -0.057036920  -0.003928350  -0.356468370  -0.004302909  -0.363992668  -0.052201566  -0.002188635   0.041275788

   47    5.2  1.5 -0.5   0.000345727  -0.000524686  -0.003655601  -0.000297347  -0.000989456  -0.000705206  -0.002861677   0.000606516
                         0.068696999   0.004723195  -0.320732400  -0.003808868   0.236219499   0.035802740   0.003273993  -0.121232484

   48    6.2  1.5 -0.5   0.004513438  -0.062005827  -0.014129455   0.037563741   0.050932066  -0.265687991  -0.114869148   0.004969646
                         0.000901367  -0.018992087   0.002891512  -0.119684366  -0.087021995   0.596334097  -0.049355305   0.000956793

   49    7.2  1.5 -0.5  -0.003854492  -0.002772769   0.351969984   0.005949351  -0.289748027  -0.053685990  -0.002117130  -0.148923615
                         0.000131995  -0.000480979  -0.003801267  -0.004906602  -0.005019291   0.022787731  -0.000801860  -0.000665060

   50    8.2  1.5 -0.5   0.001073013  -0.021555402  -0.002846654   0.135113775   0.020065315  -0.129260896   0.104108176  -0.001526859
                        -0.004984676   0.070404877  -0.000317048   0.042556660   0.008567559  -0.057995112  -0.242421328  -0.006349812

   51    9.2  1.5 -0.5  -0.000014698   0.000021733   0.000003273  -0.000000074  -0.000003023   0.000001125   0.000005563  -0.000001433
                        -0.002160462  -0.000156664   0.000438796   0.000003902   0.000443302   0.000063867  -0.000004887   0.000384717

   52    1.2  1.5 -1.5  -0.000629308   0.001480890  -0.000007493  -0.000070482  -0.000020102  -0.000066259   0.000006310  -0.000006264
                        -0.249188196  -0.017130395  -0.001514547  -0.000038864   0.003329970   0.000458702   0.000006930   0.001058264

   53    2.2  1.5 -1.5  -0.001556098   0.000156672  -0.000007380  -0.001043881   0.000168866  -0.001001899  -0.000040669   0.000008463
                         0.016454987  -0.000040524   0.000104447  -0.000327277  -0.000153080  -0.000483066   0.000091111  -0.000066509

   54    3.2  1.5 -1.5  -0.254849381  -0.017489758  -0.002453286  -0.000021672   0.002844353   0.000424328   0.000001294   0.001018752
                         0.000557671  -0.001490729   0.000018446   0.000005246   0.000028880   0.000003025  -0.000009277   0.000006842

   55    4.2  1.5 -1.5   0.004518426  -0.063986858   0.000711636  -0.028922923  -0.011951079   0.080710590   0.546948881   0.004651428
                         0.001050252  -0.019593016  -0.002152415   0.091857625   0.026274886  -0.180167767   0.235143933  -0.003453779

   56    5.2  1.5 -1.5   0.003575756  -0.050460228   0.000069921   0.030404212   0.020216892  -0.136924412   0.242950714  -0.000735052
                         0.000835008  -0.015564317   0.000090792  -0.096509885  -0.044977610   0.306188418   0.103587489  -0.001112945

   57    6.2  1.5 -1.5   0.000146592   0.000923581  -0.005329760  -0.000179300  -0.001012335   0.007927824   0.010326304  -0.000490575
                         0.043073557  -0.000026940  -0.536232298  -0.005961039  -0.036619608  -0.001937048  -0.026370734   0.096327378

   58    7.2  1.5 -1.5   0.001298563  -0.023983710   0.001970110  -0.010058770   0.029154290  -0.204511552  -0.262122247   0.003903163
                        -0.003842199   0.078207970  -0.020599007  -0.003536771   0.012222978  -0.091395090   0.610327513   0.008431859

   59    8.2  1.5 -1.5   0.032071091   0.002344882   0.540440815   0.006133254  -0.228100220  -0.032638437  -0.000044025  -0.019502795
                        -0.000138551  -0.000103638  -0.005276548  -0.000603183  -0.001532109  -0.000028444  -0.002756423  -0.000100057

   60    9.2  1.5 -1.5  -0.000107111   0.001583874   0.000000411  -0.000058680   0.000032118  -0.000224795   0.000239339   0.000004040
                        -0.000030593   0.000482779   0.000001689   0.000186508  -0.000075157   0.000500061   0.000103795  -0.000002718


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.000010513   0.000000556   0.000186551   0.000019091   0.000089184  -0.000014492   0.000065673  -0.000007654
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000004779  -0.000051327  -0.000007981   0.000067801  -0.000024248  -0.000156667   0.000007089   0.000061366
                        -0.000002673   0.000037945   0.000000152  -0.000016307   0.000008492   0.000050252  -0.000002921  -0.000020531

    3    3.2  0.5  0.5  -0.000000247  -0.000000097  -0.000000238   0.000000296  -0.000000079  -0.000001291   0.000000039   0.000000348
                         0.000026233   0.000002512   0.000216974   0.000021639  -0.000046512   0.000007558   0.000067104  -0.000008363

    4    4.2  0.5  0.5  -0.000002986  -0.000099519  -0.018460780   0.169423020  -0.014996610  -0.101001044   0.002669753   0.034952767
                         0.000029047  -0.000341459  -0.053110473   0.533156668  -0.053119575  -0.358175893  -0.001044586  -0.018977158

    5    5.2  0.5  0.5  -0.000108408   0.001167152  -0.046061946   0.442843736   0.025723027   0.152561679   0.048674177   0.425089103
                         0.000067440  -0.000805390   0.016019438  -0.163708103  -0.008467743  -0.026222404  -0.022249528  -0.139418630

    6    6.2  0.5  0.5   0.000021807  -0.000017309   0.005460782   0.003087991  -0.007250700   0.000564827   0.009591358   0.002959097
                         0.000158683   0.000041212   0.082508572  -0.001421436   0.371555489  -0.065790603   0.549283767  -0.066864190

    7    7.2  0.5  0.5   0.000124362  -0.000388883   0.015874089   0.097885801  -0.008033610   0.176445355   0.044294540  -0.024050250
                         0.000059807  -0.000587258  -0.034001580   0.356146067   0.084935871   0.521041598  -0.001070638  -0.084992139

    8    8.2  0.5  0.5  -0.000798793  -0.000120470  -0.271252795  -0.021576138   0.369567427  -0.039941035  -0.486136976   0.054417341
                         0.000002484  -0.000061443  -0.002571478   0.033039993   0.015441876   0.049000719   0.010702349  -0.009248548

    9    9.2  0.5  0.5   0.000572597   0.000015004   0.001266033   0.000129924   0.000386875  -0.000111336   0.003503773  -0.000362916
                         0.000111522   0.000041721  -0.000420082  -0.000043759   0.000151208  -0.000009408  -0.000070129  -0.000008886

   10   10.2  0.5  0.5   0.000025666  -0.000245081  -0.000003947   0.000018949  -0.000046956  -0.000332533   0.000069233   0.000422394
                        -0.000472479   0.000139636   0.001750043   0.000171231  -0.000599158   0.000197369   0.000326443  -0.000183649

   11   11.2  0.5  0.5  -0.000100321  -0.000203883  -0.000232704  -0.000001129  -0.000109948  -0.000240707  -0.000629189   0.000412480
                         0.000541595   0.000187362  -0.002175868  -0.000223236   0.000771398  -0.000033931  -0.000438966  -0.000058191

   12   12.2  0.5  0.5   0.000110695  -0.001310987   0.000050193  -0.000410809   0.000077190   0.000446892  -0.000041463  -0.000337921
                         0.000157374  -0.001784282   0.000174068  -0.001715485   0.000212710   0.001380791  -0.000119205  -0.000997088

   13    1.2  0.5 -0.5   0.000000452  -0.000008541  -0.000018588   0.000181638   0.000013781   0.000084808  -0.000007265  -0.000062339
                        -0.000000324   0.000006130   0.000004352  -0.000042531  -0.000004484  -0.000027593   0.000002408   0.000020659

   14    2.2  0.5 -0.5  -0.000063824  -0.000005442  -0.000069733  -0.000007806   0.000164527  -0.000025686   0.000064709  -0.000007648
                        -0.000000901   0.000000615  -0.000000420   0.000001672  -0.000000685  -0.000000573   0.000000184  -0.000000543

   15    3.2  0.5 -0.5  -0.000001543   0.000015496   0.000004645  -0.000049699   0.000003566   0.000014315   0.000002962   0.000021072
                        -0.000001984   0.000021169   0.000021137  -0.000211205   0.000006788   0.000044255   0.000007829   0.000063710

   16    4.2  0.5 -0.5   0.000118238   0.000019362  -0.043408783  -0.005866147  -0.014770855   0.002173900   0.039148084  -0.002862818
                         0.000335437   0.000021858   0.557741759   0.055920578  -0.371850781   0.055153075   0.007018258  -0.000151702

   17    5.2  0.5 -0.5   0.001417819   0.000127395  -0.468504354  -0.048501087  -0.153189210   0.027080768   0.447366052  -0.053202293
                        -0.000026195  -0.000008418  -0.058434476  -0.005096067   0.022265360   0.000093808  -0.001384122  -0.005808009

   18    6.2  0.5 -0.5  -0.000038092   0.000074805  -0.003330734  -0.013493849  -0.020892114  -0.121850752   0.023843014   0.163689359
                        -0.000023390   0.000141633  -0.000679982  -0.081580639  -0.062387836  -0.351081826   0.062538683   0.524414382

   19    7.2  0.5 -0.5   0.000026466  -0.000066164  -0.014111520   0.023207926  -0.006582650  -0.033917808   0.003907599  -0.042382548
                         0.000703847   0.000121099   0.369083345   0.029487053   0.550067250  -0.078282970   0.088242897   0.012917901

   20    8.2  0.5 -0.5  -0.000062048   0.000650412   0.028540580  -0.263522917   0.053141695   0.346657034   0.054564032   0.464822992
                         0.000120159  -0.000463725   0.027250802   0.064345655   0.034239116  -0.129024940  -0.008339608  -0.142770044

   21    9.2  0.5 -0.5  -0.000012136  -0.000400171  -0.000136479   0.001328464   0.000102962   0.000321111  -0.000341696  -0.003347951
                        -0.000042644   0.000424462  -0.000012985   0.000120380  -0.000043392  -0.000263484   0.000122601   0.001035649

   22   10.2  0.5 -0.5  -0.000280527  -0.000296335   0.000020588  -0.000402829   0.000377282   0.000140721   0.000458722   0.000036974
                         0.000029453  -0.000368891   0.000171042  -0.001703055   0.000084802   0.000584288   0.000041449   0.000331649

   23   11.2  0.5 -0.5  -0.000274884   0.000397285  -0.000049795   0.000269493   0.000218399  -0.000343217   0.000409845   0.000459156
                        -0.000033343   0.000381515  -0.000217615   0.002171618  -0.000106738  -0.000699532  -0.000074521  -0.000614610

   24   12.2  0.5 -0.5  -0.000024744   0.000001827   0.000008883   0.000009186   0.000002239   0.000007592  -0.000007101   0.000001859
                         0.002213986   0.000192397  -0.001763966  -0.000180927   0.001451307  -0.000226155   0.001052770  -0.000126196

   25    1.2  1.5  1.5  -0.000038969   0.000696665   0.000735460  -0.008117417   0.000172233   0.000491235  -0.000832277  -0.002373923
                        -0.000083727   0.000940523   0.003409105  -0.034133998   0.000216097   0.001485718  -0.000902647  -0.007323204

   26    2.2  1.5  1.5   0.000280825  -0.000028006  -0.001776780   0.000200281   0.001351238  -0.000336596  -0.008347787   0.001137933
                         0.000008021  -0.000061973  -0.000236007   0.002270216  -0.000012456  -0.000075287   0.000029535   0.000484083

   27    3.2  1.5  1.5   0.000080763  -0.000925771   0.002557278  -0.025500567  -0.002353013  -0.015544171  -0.000742590  -0.006505020
                        -0.000055997   0.000684670  -0.000635786   0.006011580   0.000792328   0.005002953   0.000251995   0.002161473

   28    4.2  1.5  1.5   0.000777667   0.002489975  -0.000342857  -0.000028130   0.000373227   0.000254024  -0.000893823  -0.000233862
                        -0.086564682  -0.009901919   0.063472229   0.006520991   0.100300177  -0.014668094   0.231189542  -0.028129033

   29    5.2  1.5  1.5   0.005964196  -0.002359282   0.000534143   0.000395703   0.000558882   0.000221928   0.000967155   0.000350803
                        -0.423709034  -0.037467434  -0.124881749  -0.012371621   0.100133692  -0.014679148  -0.242366182   0.029561563

   30    6.2  1.5  1.5   0.016416458  -0.153206743  -0.003561782   0.022896679   0.016612266   0.074295311   0.001524164   0.008571763
                         0.020391485  -0.207903448  -0.009446767   0.095991199   0.034764277   0.233444736   0.003131140   0.025710713

   31    7.2  1.5  1.5  -0.156593179  -0.021322614   0.028390120   0.004556592  -0.120879889   0.020620005  -0.014138785   0.002275270
                        -0.001525460  -0.010994975  -0.000401161   0.003560711   0.001977758   0.009487647  -0.000264926   0.000967805

   32    8.2  1.5  1.5  -0.007868758   0.091974200  -0.020287012   0.201652645  -0.025176585  -0.170462067   0.006291727   0.050799391
                         0.005295192  -0.067747353   0.005109490  -0.048223538   0.008610915   0.054663191  -0.001889723  -0.017067509

   33    9.2  1.5  1.5  -0.000002537   0.000005040  -0.000028742  -0.000007696  -0.000001905   0.000001751  -0.000012933  -0.000003751
                         0.000231686   0.000019020   0.005905368   0.000592142   0.000179208  -0.000025482   0.003000671  -0.000366294

   34    1.2  1.5  0.5   0.000004971  -0.000041545   0.000150819  -0.000602915   0.000254263   0.001330944   0.000084712   0.000041187
                        -0.000259188   0.000009738  -0.015258371  -0.001379033   0.009184645  -0.001820484  -0.014107446   0.001707540

   35    2.2  1.5  0.5   0.000056996  -0.000672553   0.000907704  -0.009506339   0.002975223   0.020065474  -0.000013194   0.000440480
                        -0.000029068   0.000493992   0.000759296   0.002368844  -0.001635699  -0.006351397   0.000909721  -0.000257131

   36    3.2  1.5  0.5   0.000000826   0.000006842  -0.006545444  -0.000598943  -0.007615114   0.001021940  -0.009978894   0.001214482
                        -0.000002312   0.000007528  -0.000072166  -0.000034189   0.000057109   0.000046847  -0.000076820  -0.000007550

   37    4.2  1.5  0.5  -0.012871919   0.187250457  -0.004548526   0.043764740  -0.002225927  -0.013670327   0.008886590   0.076319712
                        -0.023611423   0.253466746  -0.018368480   0.182898336  -0.006034736  -0.042773741   0.027785926   0.227347072

   38    5.2  1.5  0.5   0.019375251  -0.277250023  -0.002473140   0.023703038   0.007970570   0.050993134   0.007720816   0.066790849
                         0.034647044  -0.374816802  -0.010132025   0.100853494   0.024310321   0.158954655   0.024244024   0.198455002

   39    6.2  1.5  0.5   0.001189511  -0.005747053   0.001407581  -0.012681142   0.000125980  -0.003155799   0.000576561   0.003848549
                        -0.060613312  -0.000880524  -0.035338921  -0.001097828   0.173565860  -0.025379964  -0.026317264   0.000935281

   40    7.2  1.5  0.5  -0.012200391   0.155504954  -0.032154536   0.324007500   0.012567648   0.088078148  -0.013163984  -0.105330754
                         0.004966570  -0.115959609   0.006812277  -0.077560992   0.002322726  -0.029119503   0.003198896   0.035754051

   41    8.2  1.5  0.5   0.585544358   0.048508681   0.048990966   0.003636342  -0.197044545   0.029447362  -0.073654334   0.009327352
                         0.008256534  -0.006134461   0.000192898   0.000197406   0.000709157   0.000376830  -0.000315658  -0.000428565

   42    9.2  1.5  0.5  -0.000017796   0.000288582   0.000034300  -0.000304836   0.000165028   0.001024063  -0.000061607  -0.000524163
                        -0.000037424   0.000389604   0.000129297  -0.001283199   0.000482372   0.003190846  -0.000190719  -0.001560841

   43    1.2  1.5 -0.5   0.000039431   0.000155160  -0.000272637  -0.003625545   0.001828882   0.002599856   0.000498062   0.004518334
                        -0.000016312   0.000207674   0.001480172  -0.014822148   0.001319380   0.008812667   0.001633806   0.013364575

   44    2.2  1.5 -0.5   0.000834429   0.000063254  -0.009796048  -0.000710690   0.021046025  -0.003335314  -0.000499006  -0.000298704
                         0.000009196  -0.000009616  -0.000139145   0.000946244  -0.000168305  -0.000634938  -0.000105511  -0.000859385

   45    3.2  1.5 -0.5  -0.000001169   0.000002019  -0.000575375   0.006356613   0.000957305   0.007259147  -0.001155199  -0.009448109
                         0.000010105   0.000001396   0.000169839  -0.001562537  -0.000360727  -0.002301738   0.000374885   0.003212082

   46    4.2  1.5 -0.5  -0.004341887   0.003309314   0.000913868   0.000240977   0.000234204   0.000249621  -0.000926152  -0.000305475
                         0.315102004   0.026687713  -0.188059349  -0.018921735   0.044904520  -0.006427323   0.239813535  -0.029170805

   47    5.2  1.5 -0.5   0.006706023  -0.004460227   0.000085597   0.000098046  -0.000687933  -0.000058108  -0.000969933  -0.000297852
                        -0.466165464  -0.039445207  -0.103601419  -0.010429033  -0.166932348   0.025583555   0.209390698  -0.025441992

   48    6.2  1.5 -0.5   0.004155681   0.036307516  -0.012096887  -0.009427299   0.004851365   0.053579861  -0.003358941   0.008826178
                        -0.004066233   0.048550518   0.003960041  -0.034087339   0.025111071   0.165088831   0.002098475   0.024799786

   49    7.2  1.5 -0.5  -0.193948154  -0.012807766   0.333157393   0.032860831   0.092765898  -0.011232386   0.111230723  -0.013501970
                        -0.003540542   0.003078554   0.001649129  -0.000697920   0.000440196   0.006097075   0.000803886   0.001104638

   50    8.2  1.5 -0.5  -0.042986659   0.470899758   0.003495570  -0.047656779   0.027885940   0.187595964  -0.008988629  -0.069815671
                         0.023299590  -0.348114612  -0.001021243   0.011357083  -0.009469080  -0.060289384   0.002527393   0.023469824

   51    9.2  1.5 -0.5  -0.000007291   0.000007362  -0.000004257  -0.000003918  -0.000013400  -0.000007689   0.000006542   0.000001517
                         0.000484787   0.000040781   0.001318904   0.000133712  -0.003351122   0.000509763  -0.001646490   0.000200416

   52    1.2  1.5 -1.5   0.000017611  -0.000017159   0.000121558  -0.000061138  -0.000007465   0.000096924   0.000050333   0.000506068
                        -0.001170306  -0.000090744  -0.035085717  -0.003486999   0.001564805  -0.000258782   0.007698201  -0.001118638

   53    2.2  1.5 -1.5   0.000013381  -0.000223474   0.000322571  -0.001676181   0.000296788   0.001288793   0.000927879   0.007933269
                         0.000066678   0.000170254   0.002256090   0.000634873  -0.000175733  -0.000406216  -0.000817477  -0.002598013

   54    3.2  1.5 -1.5  -0.001151327  -0.000098263   0.026199550   0.002634881   0.016329364  -0.002482702  -0.006854722   0.000784162
                        -0.000016468   0.000001596   0.000039483   0.000036018  -0.000051738  -0.000025452  -0.000005387   0.000005598

   55    4.2  1.5 -1.5   0.007796330  -0.051104095   0.001514085  -0.014804621  -0.004779732  -0.030677026   0.008626847   0.073576086
                         0.006592814  -0.069874319   0.006342843  -0.061722481  -0.013869811  -0.095494423   0.026774516   0.219171081

   56    5.2  1.5 -1.5   0.019928964  -0.251892748  -0.003205841   0.028991394  -0.004752631  -0.030448971  -0.008966488  -0.077161644
                         0.031815267  -0.340756455  -0.011955592   0.121471130  -0.013890253  -0.095393547  -0.028171105  -0.229757224

   57    6.2  1.5 -1.5  -0.003249831  -0.001447789  -0.000409010  -0.001314247   0.001575614   0.005041442   0.000048502  -0.000461789
                         0.258235529   0.026138413   0.098683336   0.010010018   0.244977051  -0.038198249  -0.027101910   0.003451647

   58    7.2  1.5 -1.5  -0.010912415   0.126331564  -0.003624798   0.027733907  -0.016672895  -0.115560819   0.001855304   0.013337631
                         0.021364984  -0.092542352   0.004505777  -0.006081959   0.015401773   0.035518392  -0.001634425  -0.004699257

   59    8.2  1.5 -1.5   0.114223286   0.009480223  -0.207336295  -0.020917634   0.179010630  -0.026605433   0.053589452  -0.006566772
                         0.001413621  -0.000285976  -0.000979516  -0.000349769  -0.000758233  -0.000399020   0.000220526   0.000185469

   60    9.2  1.5 -1.5  -0.000006995   0.000137147   0.000142493  -0.001374327  -0.000009549  -0.000057256   0.000111668   0.000956228
                        -0.000018391   0.000186750   0.000574793  -0.005743294  -0.000023690  -0.000169826   0.000348878   0.002844261


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5   0.010692269  -0.001201272  -0.013010640   0.001883156  -0.000304396   0.004870091  -0.000000065   0.000000992
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000705685  -0.005816576   0.000902852   0.006532249   0.003059501   0.000191259  -0.000003094  -0.000000041
                        -0.000281686  -0.001430338   0.002051725   0.014269275   0.003764059   0.000273107   0.000001880   0.000000303

    3    3.2  0.5  0.5  -0.000089624  -0.000039284  -0.000064755   0.000033539   0.000000358   0.000000008   0.000000658   0.000000740
                         0.016701281  -0.001835690   0.002692877  -0.000274161   0.000352726  -0.004869816  -0.000000856   0.000011510

    4    4.2  0.5  0.5   0.010361006   0.087565620  -0.016515075  -0.117045357  -0.000456227  -0.000009773   0.015074785  -0.001068282
                        -0.027420167  -0.250119325   0.008763431   0.063999362   0.000206423   0.000017322  -0.016177827  -0.001356802

    5    5.2  0.5  0.5   0.030691379   0.266724132   0.007839422   0.050045912  -0.000843643  -0.000031126   0.208702029   0.001390824
                         0.010827145   0.093102649   0.010528907   0.095321197  -0.001111822  -0.000083174  -0.124520541  -0.024803166

    6    6.2  0.5  0.5  -0.004895226   0.002737628  -0.005036436  -0.005184643   0.000008405  -0.000089595   0.019617904   0.023510306
                        -0.047295918   0.009068014   0.295866619  -0.038994467  -0.000110231   0.001337740  -0.017973855   0.262134537

    7    7.2  0.5  0.5  -0.017926476   0.040570315   0.016483180   0.241943560  -0.000212287  -0.000398904  -0.005989203   0.023127400
                        -0.014851847  -0.127872836  -0.008684910  -0.108002126   0.000157667   0.000038319  -0.019562692   0.001992657

    8    8.2  0.5  0.5   0.232195051  -0.023807059   0.192977048  -0.004095020  -0.000291187   0.004132739   0.014557000  -0.254254570
                        -0.000545390  -0.012093236   0.006122076  -0.010660562   0.000003592   0.000012254   0.015879738   0.023595695

    9    9.2  0.5  0.5  -0.318263170   0.055197451   0.388198884  -0.078308662  -0.001613734  -0.260931455   0.000110474   0.000369625
                         0.074877049  -0.003366048   0.005119321  -0.048825824  -0.019175680  -0.040529626  -0.000097648  -0.000320538

   10   10.2  0.5  0.5   0.016443452   0.139765678  -0.017761905  -0.157014401  -0.127886527  -0.009670096   0.001147443   0.000091080
                        -0.311958993   0.069152727  -0.100558356  -0.335529510  -0.169582295   0.156265941  -0.000721323   0.001044564

   11   11.2  0.5  0.5   0.070355682   0.102361979  -0.090869978  -0.112324352  -0.104409758   0.041626338   0.000744095  -0.000157845
                         0.394540967  -0.015750880   0.024165052  -0.276347372  -0.109932011  -0.213950579  -0.000408749  -0.001513163

   12   12.2  0.5  0.5  -0.000044312  -0.000387602   0.000167094   0.001123045   0.235271540   0.014718674   0.000158291   0.000029882
                         0.000172823   0.001563279  -0.000066751  -0.000513089  -0.190987369  -0.013814975   0.000258942   0.000004643

   13    1.2  0.5 -0.5  -0.001163191  -0.010353320  -0.000783558  -0.005413566   0.003087441   0.000192975  -0.000000813  -0.000000053
                        -0.000300067  -0.002670838  -0.001712400  -0.011830894   0.003766363   0.000235409   0.000000568   0.000000037

   14    2.2  0.5 -0.5  -0.005989475   0.000753678  -0.015693390   0.002241349   0.000332462  -0.004850596   0.000000207  -0.000003613
                        -0.000067935  -0.000096483  -0.000002666  -0.000032712  -0.000025226   0.000020147   0.000000225   0.000000229

   15    3.2  0.5 -0.5  -0.000496579  -0.004085054   0.000235347   0.002421755  -0.003766146  -0.000273014   0.000005981   0.000001030
                         0.001767685   0.016194232  -0.000144573  -0.001179357   0.003087273   0.000223337   0.000009862   0.000000325

   16    4.2  0.5 -0.5   0.022312085  -0.003183234  -0.009495064   0.001097084   0.000007201   0.000129589   0.000099363   0.021621041
                         0.264063601  -0.029139030   0.133061556  -0.018663918  -0.000018539   0.000483694  -0.001724026   0.004637004

   17    5.2  0.5 -0.5   0.281525132  -0.032422980  -0.107501387   0.012836080  -0.000084057   0.001394681  -0.015337407   0.242406232
                        -0.023525850   0.002817476  -0.005846005   0.002747630   0.000028657  -0.000052405  -0.019542144  -0.017352834

   18    6.2  0.5 -0.5   0.004915957   0.016554162   0.037615891   0.266943174   0.000977763   0.000079920   0.130763685   0.026374350
                        -0.008096719  -0.044573836  -0.011510592  -0.127686194  -0.000917362  -0.000076382   0.228403391   0.003509309

   19    7.2  0.5 -0.5   0.007342678   0.021068065  -0.002460740  -0.001038954  -0.000223254   0.000012647  -0.017823561   0.006286327
                         0.133953342  -0.009903157  -0.264943561   0.018602244  -0.000332792   0.000264130   0.014871718   0.019469247

   20    8.2  0.5 -0.5  -0.026073154  -0.224698154   0.011397797   0.085862316   0.002629467   0.000181823   0.221990809   0.002847207
                         0.005763076  -0.058528444  -0.000712026   0.172931442   0.003188352   0.000227471  -0.126183295  -0.021353354

   21    9.2  0.5 -0.5   0.052606862   0.289470469   0.076981785   0.166179877  -0.196764250   0.015852864  -0.000486558   0.000146479
                         0.017047196   0.152002846   0.050892165   0.350868679  -0.176101405  -0.010908600  -0.000051268   0.000016836

   22   10.2  0.5 -0.5   0.152608819   0.062002506   0.370436961  -0.098830688   0.114720337   0.212224100   0.000523208   0.001353760
                        -0.032048288  -0.306177219   0.003167367   0.025689752  -0.106544823  -0.008605219   0.000908660  -0.000065304

   23   11.2  0.5 -0.5   0.095182634  -0.166678351   0.298026215  -0.015835999  -0.139072716   0.151209267  -0.000736680   0.000844109
                         0.040820721   0.364459633  -0.012845435  -0.092685078   0.167828431   0.011054514  -0.001331119  -0.000090741

   24   12.2  0.5 -0.5   0.000015179  -0.000000263  -0.000000721   0.000008827  -0.001352989  -0.001449494  -0.000021845  -0.000018418
                        -0.001610542   0.000178413  -0.001234702   0.000179717   0.020141061  -0.303029325   0.000020911  -0.000302932

   25    1.2  1.5  1.5   0.009331254  -0.009884309   0.008093581   0.082725739   0.313548440   0.019592192   0.058904460   0.027713950
                         0.003995350   0.035636174  -0.004763149  -0.037948148  -0.255720904  -0.018487888   0.098841744   0.000462865

   26    2.2  1.5  1.5   0.156422909  -0.016697566  -0.059316910   0.003107493  -0.018966559  -0.001678554  -0.019783503   0.260118650
                         0.000922899  -0.002444739   0.000459815   0.002637787   0.018742135   0.001339746  -0.024425135  -0.017657055

   27    3.2  1.5  1.5  -0.004603633  -0.032909199   0.005174326   0.038215063   0.257093453   0.018592923   0.095642404  -0.000078310
                        -0.000870171  -0.008085975   0.012043017   0.082849821   0.314981528   0.019700859  -0.057119978  -0.009988527

   28    4.2  1.5  1.5   0.000281304  -0.000001672  -0.000012344  -0.000605576   0.000209630   0.000308010  -0.023006837  -0.022837722
                        -0.045880002   0.005070147   0.120077124  -0.017080343  -0.004281961   0.064965976   0.021258024  -0.340223492

   29    5.2  1.5  1.5  -0.000926623   0.000032080   0.000081006  -0.000145254   0.000161231   0.000374631   0.025742771   0.025902139
                         0.122554633  -0.013322786   0.044147189  -0.006293458  -0.003646396   0.055237533  -0.024501000   0.386691547

   30    6.2  1.5  1.5   0.000659507  -0.010776960   0.020115229   0.106030117  -0.032522814   0.001270716  -0.064356604  -0.011417741
                         0.004572052   0.042683513  -0.006477124  -0.048853031   0.026227109   0.001636820  -0.106755949  -0.001693013

   31    7.2  1.5  1.5  -0.045934437   0.004456202  -0.118229162   0.021197824   0.004286114  -0.084952925  -0.003141227   0.002742639
                        -0.000089988   0.001685060  -0.000241131  -0.002357646   0.001263649   0.000538708  -0.004118324   0.000304158

   32    8.2  1.5  1.5  -0.004610326  -0.043589977   0.006651145   0.049208314  -0.026973957  -0.001619994  -0.118330482  -0.001923257
                        -0.001223890  -0.010804077   0.015536536   0.107480266  -0.033206795  -0.002139253   0.071357378   0.012380117

   33    9.2  1.5  1.5  -0.003425670   0.000159413  -0.000208796   0.001078687  -0.000004586  -0.000005625  -0.000002280  -0.000003324
                         0.452328373  -0.049364020  -0.171775001   0.024253358   0.000096136  -0.001360996   0.000001393  -0.000045693

   34    1.2  1.5  0.5   0.000767940   0.001297568  -0.000073566  -0.002413766   0.018337529  -0.000248795   0.015252051   0.014351884
                        -0.053018300   0.006085498   0.138039473  -0.022711122   0.039426201  -0.233096633  -0.014124061   0.221655749

   35    2.2  1.5  0.5   0.001309135   0.019745777  -0.003144740  -0.021487092   0.294544278   0.022853650   0.004144282   0.000591048
                         0.003995043   0.004492714  -0.015933490  -0.045832462   0.361843710   0.038107382  -0.002319979  -0.015223195

   36    3.2  1.5  0.5  -0.131510115   0.014250031  -0.068346380   0.009847850  -0.017338798   0.233228382  -0.014518273   0.230287786
                        -0.001211498   0.000093168   0.000274949  -0.000293905  -0.003245215  -0.001880109  -0.015473401  -0.014842641

   37    4.2  1.5  0.5  -0.003197073  -0.029473381   0.005926183   0.040626272  -0.041643883  -0.002590615  -0.194563483  -0.034212606
                         0.013153163   0.118109335  -0.002412077  -0.018702335   0.033819851   0.002298008  -0.322812336  -0.004872763

   38    5.2  1.5  0.5  -0.001167960  -0.010973141  -0.015759907  -0.108488441   0.050281654   0.003196547  -0.165962656  -0.029086095
                         0.005015862   0.044269548   0.006196715   0.049772391  -0.040815853  -0.003083736  -0.274837489  -0.004099496

   39    6.2  1.5  0.5  -0.000406964   0.004605839   0.000052103   0.001107115  -0.000313152  -0.000339524  -0.000449986   0.005324627
                         0.119437855  -0.012233809  -0.045009427   0.007869836   0.004790856  -0.071574598   0.000141563   0.079736651

   40    7.2  1.5  0.5  -0.012147078  -0.115349030  -0.002510810  -0.018181428  -0.000318481   0.000241457   0.166457881   0.003043865
                         0.001451058  -0.029269956  -0.007454297  -0.039319649  -0.000313040  -0.002813431  -0.100871266  -0.014647510

   41    8.2  1.5  0.5   0.118954356  -0.012508185  -0.045365569   0.006547781  -0.004834331   0.072439707  -0.006310466   0.092418323
                         0.000887678  -0.000002743   0.000079229  -0.000166333  -0.000303008  -0.000330194  -0.005491005  -0.006133263

   42    9.2  1.5  0.5  -0.004414095  -0.041470025   0.059615150   0.410447025  -0.001841709  -0.000111770   0.000200697   0.000033913
                         0.018392533   0.167229252  -0.023658506  -0.188264618   0.001498625   0.000107536   0.000330041   0.000004596

   43    1.2  1.5 -0.5  -0.002776540  -0.012499923  -0.021656119  -0.125492068   0.180426769   0.042116142  -0.115104018  -0.020590853
                         0.005568464   0.051529427   0.007254920   0.057503412  -0.147581445  -0.010812996  -0.189969241  -0.002851481

   44    2.2  1.5 -0.5  -0.020242071   0.002265562  -0.050617095   0.015797200  -0.043959251   0.466566855   0.009198174  -0.004726170
                        -0.000582033  -0.003541388  -0.000468419  -0.003770139   0.006484303  -0.001603733   0.012144488   0.000469775

   45    3.2  1.5 -0.5  -0.013821572  -0.127643821   0.003830313   0.028188065  -0.146403366  -0.013501837   0.197328286   0.003048032
                        -0.003469321  -0.031677012   0.009077182   0.062263442  -0.181562846  -0.011351904  -0.119642450  -0.020997998

   46    4.2  1.5 -0.5  -0.000963640   0.000189823  -0.000102402  -0.000272451  -0.000134856  -0.000245413  -0.025264737  -0.025233645
                         0.121727427  -0.013534805   0.044724275  -0.006392459   0.003460338  -0.053646389   0.023578365  -0.376066505

   47    5.2  1.5 -0.5  -0.000432867   0.000121985   0.000118558   0.000922678   0.000358375   0.000310940  -0.021503680  -0.021225835
                         0.045607185  -0.005148604  -0.119360876   0.016909247  -0.004427066   0.064761732   0.020009961  -0.320357163

   48    6.2  1.5 -0.5  -0.001403931   0.029440494   0.007616891   0.040906496   0.055568616   0.003506560  -0.041273921   0.000450010
                        -0.012996493  -0.115753290  -0.002267815  -0.018775244  -0.045112830  -0.003279390  -0.068430612  -0.000141486

   49    7.2  1.5 -0.5   0.119003812  -0.011399549  -0.043319388   0.007823092   0.002022738  -0.000443999   0.010879934  -0.194230171
                         0.000471115  -0.004439295  -0.000172399  -0.000818500  -0.001970336  -0.000047848   0.010268480   0.012564988

   50    8.2  1.5 -0.5   0.012112357   0.115405196   0.002573200   0.018804007  -0.045668489  -0.003299107   0.079292247   0.002031522
                         0.003121782   0.028854245   0.006023267   0.041284990  -0.056231746  -0.003546613  -0.047869646  -0.008114557

   51    9.2  1.5 -0.5  -0.001617030   0.000320131  -0.000411705  -0.003291866  -0.000012307  -0.000008583   0.000025177   0.000024342
                         0.172286885  -0.018912087   0.451564123  -0.064053529   0.000154613  -0.002374383  -0.000023180   0.000385504

   52    1.2  1.5 -1.5  -0.000669360  -0.010033454   0.000086025  -0.000963610  -0.001877248  -0.001011165  -0.022460093  -0.008274711
                        -0.036975511   0.001537828  -0.091014298   0.009341579   0.026872512  -0.404604477   0.016242583  -0.114764781

   53    2.2  1.5 -1.5  -0.016778922  -0.151694782  -0.003691594  -0.024262912  -0.000028022  -0.002470500  -0.223400082  -0.002241607
                        -0.001803669  -0.038179465  -0.001728169  -0.054129644  -0.002147481   0.026549852   0.134409402   0.031352024

   54    3.2  1.5 -1.5  -0.033885773   0.004675057  -0.091238189   0.013103984   0.027023139  -0.406582919  -0.005653067   0.111119960
                        -0.000390791   0.000307362  -0.000277109  -0.000305809   0.001889588   0.000858202  -0.008235268  -0.007906706

   55    4.2  1.5 -1.5   0.001264861   0.011188047   0.015783548   0.109183937   0.050437753   0.003178627  -0.176012114  -0.031033033
                        -0.004909839  -0.044495858  -0.006556254  -0.049973830  -0.040947602  -0.002876711  -0.292050205  -0.004262505

   56    5.2  1.5 -1.5  -0.003296856  -0.029715853   0.005783234   0.040177827   0.042956339   0.002717786   0.200096939   0.035132689
                         0.012908463   0.118901072  -0.002486547  -0.018295438  -0.034728639  -0.002436358   0.331907350   0.005355691

   57    6.2  1.5 -1.5   0.000226651  -0.001780660   0.000305439   0.002479890   0.002071444   0.000334993   0.008393324   0.008334002
                        -0.044022424   0.004262377  -0.116742928   0.020986322  -0.000054949   0.041778972  -0.007923586   0.124375036

   58    7.2  1.5 -1.5   0.004735852   0.044500777  -0.006676287  -0.049412958  -0.053440106  -0.003694487  -0.002074828  -0.000218494
                        -0.000518521   0.011386895  -0.020256689  -0.107408345  -0.066041235  -0.002513633   0.001819250   0.005174955

   59    8.2  1.5 -1.5  -0.044906926   0.004769894  -0.118209412   0.016895213  -0.002681437   0.042781411   0.008663232  -0.137873118
                        -0.000426821  -0.000033473  -0.000025118  -0.000416511   0.000103352  -0.000191023   0.009050670   0.009218556

   60    9.2  1.5 -1.5  -0.012176351  -0.109670694  -0.022503001  -0.156286098  -0.001056114  -0.000071441  -0.000023429  -0.000002667
                         0.047838983   0.438845111   0.009110646   0.071283589   0.000858467   0.000064493  -0.000039370   0.000000162


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5   0.000184297  -0.000001566  -0.000192089   0.000006892   0.010857664  -0.000484717   0.007423883   0.000084768
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000930  -0.000117215   0.000006972   0.000198004  -0.000178906  -0.004450104   0.000027278  -0.004949139
                        -0.000001057  -0.000103364  -0.000004235  -0.000152409  -0.000528554  -0.011000968  -0.000003461  -0.002684945

    3    3.2  0.5  0.5  -0.000000637  -0.000001117  -0.000001163   0.000000785   0.000048671  -0.000005781  -0.000071476  -0.000004273
                         0.000218231  -0.000001040  -0.000023839  -0.000000635  -0.001080166   0.000000975   0.013118692   0.000206598

    4    4.2  0.5  0.5  -0.000608749   0.199382362   0.000601987   0.058418455   0.001079418   0.020666263  -0.000619568   0.036880215
                         0.000001570  -0.253493148   0.002533429   0.093078365  -0.000477011  -0.011801658   0.000837918  -0.054462697

    5    5.2  0.5  0.5  -0.001597118  -0.178638023  -0.003440153  -0.103008737  -0.000735212  -0.014463864  -0.000511735   0.061997215
                        -0.000396960  -0.118121886   0.005040514   0.074541503  -0.000513323  -0.033653473  -0.000679839   0.040718855

    6    6.2  0.5  0.5   0.004987207  -0.003854673   0.003421559   0.002249334   0.001003159   0.001410905  -0.001547249   0.000550921
                        -0.007656190   0.000300264  -0.225348994   0.011718001  -0.078296812   0.002692441  -0.005250537   0.000964120

    7    7.2  0.5  0.5   0.019453194   0.069308881   0.006422117  -0.197848868   0.001422356  -0.057804909  -0.006673654   0.013765438
                        -0.000358691  -0.083869486  -0.010503887  -0.253189211  -0.000698227   0.022604342   0.000246041  -0.022332544

    8    8.2  0.5  0.5  -0.194471593   0.006943423  -0.129757373  -0.014776816  -0.042353774  -0.003401257   0.068664139   0.002021571
                        -0.001971431  -0.006396296  -0.006866477  -0.025180060  -0.001864317   0.002066814   0.000468441  -0.002515719

    9    9.2  0.5  0.5   0.001062101   0.000216983  -0.004212167   0.000305803   0.362915381  -0.032884523   0.256605635  -0.016116577
                        -0.001051871   0.000213804  -0.000555078  -0.000106051   0.002528829  -0.041226487  -0.065353395  -0.011424250

   10   10.2  0.5  0.5  -0.000029329   0.001566600   0.000008543   0.001242444  -0.001363695  -0.119649661   0.000922558  -0.136690264
                         0.004361238   0.001390408   0.002194679  -0.001020673  -0.033815681  -0.295258810   0.281816374  -0.069674690

   11   11.2  0.5  0.5  -0.000159484   0.001231609   0.000853263   0.000967312  -0.072219921  -0.091391307  -0.044827027  -0.108558961
                        -0.005379966   0.001079604  -0.002800714  -0.000669533   0.012678379  -0.233607018  -0.344300494  -0.064078035

   12   12.2  0.5  0.5  -0.000009243   0.002733898   0.000038151   0.001359330  -0.000135706  -0.002889974   0.000050409  -0.001829226
                        -0.000000803  -0.003098881   0.000056101   0.001751839   0.000037882   0.001170005  -0.000046527   0.003378482

   13    1.2  0.5 -0.5  -0.000001165  -0.000137080  -0.000005473  -0.000152556   0.000181883   0.004074190   0.000074182  -0.006496814
                        -0.000001046  -0.000123185   0.000004188   0.000116725   0.000449298   0.010064286   0.000041019  -0.003592415

   14    2.2  0.5 -0.5  -0.000156273   0.000001398  -0.000249867   0.000008111   0.011866958  -0.000557064  -0.005630352  -0.000022197
                        -0.000001465  -0.000000165  -0.000000723  -0.000000873  -0.000003032   0.000032500  -0.000045229  -0.000016229

   15    3.2  0.5 -0.5  -0.000001526  -0.000145393  -0.000001010   0.000013563   0.000001266  -0.000982974   0.000096234  -0.006285581
                         0.000000027   0.000162745  -0.000000027   0.000019639   0.000005724   0.000450433  -0.000182866   0.011515062

   16    4.2  0.5 -0.5  -0.021135803   0.000451737   0.010164850  -0.001061381   0.003184568  -0.000037118   0.005920256   0.000136731
                         0.321815755   0.000408058   0.109421084  -0.002377839  -0.023584573   0.001179536   0.065507909   0.001033090

   17    5.2  0.5 -0.5  -0.211823795   0.001453263   0.127105130  -0.005795089   0.036621753  -0.000751693   0.073959059   0.000776805
                        -0.031543664   0.000772263  -0.003394361  -0.001912686   0.000778971  -0.000488872  -0.005633588  -0.000347314

   18    6.2  0.5 -0.5  -0.002666400   0.001407958   0.005334207   0.139653979  -0.003025125  -0.072199177   0.000948662   0.003894767
                        -0.002799816  -0.009028130   0.010673204   0.176891612  -0.000297507   0.030309666  -0.000577134  -0.003846155

   19    7.2  0.5 -0.5  -0.004506950  -0.014229494   0.003276230   0.011483245   0.000737878  -0.000113488   0.001239745   0.005721212
                         0.108708321  -0.013269398  -0.321307046   0.004439629   0.062063027   0.001580424   0.026204824   0.003444695

   20    8.2  0.5 -0.5   0.000889190   0.145965275  -0.003565375  -0.098879985  -0.000639515  -0.017620765   0.000551768  -0.060316277
                         0.009398567   0.128519359  -0.028977194   0.084302271   0.003928268  -0.038559390   0.003179803  -0.032816616

   21    9.2  0.5 -0.5   0.000304299  -0.000086913  -0.000307310  -0.003007976   0.050553502   0.138523084  -0.019632186  -0.192937116
                        -0.000013995  -0.001492293   0.000101600   0.003000424   0.015011948   0.335447946   0.002198822  -0.181363688

   22   10.2  0.5 -0.5   0.002094589  -0.002893256  -0.001606968  -0.001326844   0.318580905  -0.031856449  -0.153336419  -0.137178222
                         0.000012940   0.003263484  -0.000055623  -0.001748192   0.000114927   0.011424823  -0.005170428   0.246177691

   23   11.2  0.5 -0.5   0.001637680   0.003714618  -0.001175085   0.002379551   0.250830499  -0.015347579  -0.126009836   0.205836101
                         0.000020206  -0.003895008   0.000056063   0.001705812  -0.002944573  -0.071700140   0.003544538  -0.279613648

   24   12.2  0.5 -0.5  -0.000037838   0.000007412  -0.000015041  -0.000003791  -0.000000088  -0.000015807   0.000034048  -0.000021600
                         0.004132291   0.000005581   0.002217317  -0.000067738   0.003117829  -0.000140005  -0.003841751  -0.000065109

   25    1.2  1.5  1.5   0.006328666   0.200327688  -0.004572627  -0.033663471   0.000207505  -0.008456116   0.001404325  -0.004276219
                        -0.000102982  -0.225441951  -0.000907823  -0.045926200   0.000091718   0.003450346  -0.000106221   0.007938868

   26    2.2  1.5  1.5   0.090350608  -0.014233150  -0.044503162   0.002356841   0.009649332   0.000158937   0.019531463   0.000592001
                         0.000586532   0.014072473   0.000221356   0.004120843  -0.000010559  -0.000266773   0.000164323  -0.000543270

   27    3.2  1.5  1.5  -0.000882329  -0.151402437  -0.004579024  -0.183888941  -0.000193595  -0.005160028  -0.000097065  -0.002173060
                        -0.000700156  -0.135777526   0.004530832   0.140400882  -0.000621000  -0.012703662   0.000059592  -0.001148967

   28    4.2  1.5  1.5  -0.000180958   0.000171521  -0.000250174   0.000776747  -0.000057084   0.001745310   0.000740089   0.000680497
                        -0.038526316   0.000789590   0.213751084  -0.005247204  -0.349610711   0.015279742  -0.096899321  -0.001007602

   29    5.2  1.5  1.5  -0.001593537   0.000006939  -0.000298403  -0.000020216  -0.000445646   0.000673101  -0.002571490   0.000851548
                         0.214479135   0.000439385   0.062399863  -0.000969426  -0.097835164   0.005311694   0.348235499   0.006292670

   30    6.2  1.5  1.5   0.003235084  -0.086076848   0.016221048   0.277822897  -0.027865499  -0.309547210   0.008717621  -0.073729861
                         0.000297994   0.095728815   0.009342705   0.362657628   0.004056563   0.125387551  -0.002395611   0.136128636

   31    7.2  1.5  1.5  -0.111783795  -0.002417669  -0.202155190   0.016095398   0.326952487  -0.027407449  -0.154767975  -0.006460463
                        -0.000975774   0.005004389  -0.000136954   0.014267517  -0.000028790   0.006398035  -0.000878569   0.006381625

   32    8.2  1.5  1.5   0.000395960   0.340780480  -0.002458262  -0.098059385  -0.004367891  -0.123601656   0.002685613  -0.142477248
                        -0.000001339   0.301242506   0.001088709   0.076482244  -0.014731074  -0.305615921   0.002529450  -0.077293549

   33    9.2  1.5  1.5  -0.000043502  -0.000010985  -0.000006327  -0.000025122   0.000014788  -0.000166988  -0.000773223   0.000075265
                         0.007814677  -0.000021987  -0.006047349   0.000172532   0.045623928  -0.001730252   0.097851208   0.001629253

   34    1.2  1.5  0.5  -0.001435580  -0.008254487   0.000323228   0.015294263  -0.000004603   0.000396324   0.000092046   0.000461120
                         0.162890042  -0.007080669   0.108861847  -0.015040036  -0.017693229   0.001433464  -0.006594455   0.000130656

   35    2.2  1.5  0.5   0.000390704  -0.125583004   0.005603368   0.237686760   0.000130401   0.004136175  -0.000219297   0.006349799
                        -0.010194205  -0.110289129  -0.012110338  -0.182713874   0.001668486   0.010177012   0.000313765   0.003448106

   36    3.2  1.5  0.5  -0.003558222   0.000363554  -0.189899897   0.003867078   0.004784516  -0.000284341  -0.019761193  -0.000389906
                        -0.000011354   0.000862147   0.000005236   0.001236863  -0.000044332   0.000003158  -0.000173365   0.000038898

   37    4.2  1.5  0.5  -0.000199268  -0.159850688  -0.000149130  -0.020573990  -0.005375120  -0.090680222   0.004012615  -0.166089139
                         0.000472604   0.180703257  -0.000447182  -0.025936919   0.001098179   0.036733959  -0.004147906   0.306134510

   38    5.2  1.5  0.5  -0.000700136  -0.038579360   0.004193449   0.146959233   0.015005567   0.322987345   0.000092431  -0.045920071
                         0.000700808   0.041856751   0.005754065   0.192157444  -0.003123721  -0.130961773  -0.000937037   0.085521544

   39    6.2  1.5  0.5  -0.002093856  -0.012600947  -0.001086024  -0.008196716  -0.000037511  -0.003395567  -0.002761798   0.012055166
                         0.198629443  -0.011605897   0.269154296  -0.001980700   0.159155541  -0.011695337   0.324497139   0.010800989

   40    7.2  1.5  0.5  -0.000216324   0.337408352   0.003724050   0.197545594   0.002321178   0.060477453   0.005932547  -0.293293364
                         0.008650465   0.299467760   0.005132585  -0.150244562   0.012107766   0.148206499   0.015540647  -0.158856928

   41    8.2  1.5  0.5  -0.125747675  -0.001833469  -0.304767552   0.007661724   0.152490955  -0.006222840   0.330068817   0.006727138
                        -0.001649753  -0.001044859  -0.000810677   0.000363274  -0.000094406   0.000084908   0.002564434   0.000176651

   42    9.2  1.5  0.5   0.000012545  -0.003926374  -0.000105892  -0.003979345  -0.004679876  -0.096255426   0.000813258  -0.021421311
                        -0.000006716   0.004454352  -0.000151711  -0.005159571   0.000975219   0.038957174  -0.000579923   0.039509813

   43    1.2  1.5 -0.5   0.010872422   0.107808670   0.021285906   0.065894781   0.001477435   0.016402097  -0.000466762  -0.003110503
                         0.000250750  -0.122116818   0.002650921   0.086653818  -0.000170524  -0.006634876  -0.000108796   0.005815503

   44    2.2  1.5 -0.5   0.167126133  -0.006523249   0.299798095  -0.011809184   0.010985412  -0.001595499  -0.007225396  -0.000040082
                         0.001907434   0.007843576   0.000676402  -0.006212987   0.000015156   0.000505204  -0.000055148  -0.000380701

   45    3.2  1.5 -0.5  -0.000846673  -0.002654187   0.002319611   0.150820500  -0.000103768  -0.001754231   0.000322393  -0.017377374
                         0.000398262  -0.002369887  -0.003332195  -0.115391280  -0.000264749  -0.004451543   0.000222716  -0.009410721

   46    4.2  1.5 -0.5  -0.001886281   0.000167676  -0.000578788  -0.000153299   0.000023264   0.000999007  -0.002789910   0.001504363
                         0.241251635  -0.000484713   0.033101024  -0.000445770  -0.097838059   0.005394432   0.348275977   0.005571633

   47    5.2  1.5 -0.5   0.000718003  -0.000052336  -0.000053160   0.000166130  -0.000195700  -0.002735166  -0.001198122  -0.000372544
                         0.056919585  -0.000989234  -0.241912168   0.007118053   0.348528008  -0.015081232   0.097062619   0.000864751

   48    6.2  1.5 -0.5   0.017129993   0.131207425  -0.005306179   0.164418042  -0.012114889  -0.147511838  -0.015776354   0.154607167
                        -0.000209910  -0.149139704   0.006553913   0.213100732   0.001241065   0.059755712   0.003618707  -0.285311488

   49    7.2  1.5 -0.5  -0.451129246   0.005621109   0.248187781   0.000161273   0.160070265  -0.012094032   0.333538725   0.012711826
                        -0.002781802  -0.006578789  -0.000718159   0.006339240   0.000445852   0.002391706   0.002905160  -0.010729227

   50    8.2  1.5 -0.5   0.002062119  -0.094633558   0.005864145   0.241551877  -0.002256332  -0.057132640  -0.005972558   0.290091889
                         0.000448335  -0.082823240  -0.004944269  -0.185840276  -0.005799992  -0.141383740  -0.003100669   0.157476018

   51    9.2  1.5 -0.5  -0.000056881   0.000004842  -0.000025082  -0.000008090  -0.000007993   0.000852101  -0.000372497   0.000431076
                         0.005937545   0.000013380   0.006515806  -0.000184835  -0.103840110   0.004703851   0.044941730   0.000901040

   52    1.2  1.5 -1.5  -0.001683123  -0.004638415  -0.001172405  -0.003079900  -0.000025185   0.000162880   0.000099396  -0.001177557
                         0.301583194  -0.004306707  -0.056930401   0.003499611   0.009132916   0.000157927  -0.009016751  -0.000772509

   53    2.2  1.5 -1.5  -0.001180481  -0.067594633   0.000632301  -0.035478645   0.000187641   0.003610993   0.000255186  -0.017171957
                        -0.019980579  -0.059954500   0.004704917   0.026867195  -0.000247427   0.008948209   0.000761897  -0.009307467

   54    3.2  1.5 -1.5  -0.203367135   0.001124262   0.231360096  -0.006389859   0.013711625  -0.000648267  -0.002457681   0.000056107
                        -0.000207046   0.000068978  -0.000237285  -0.000815848   0.000016105   0.000053573  -0.000046055   0.000099120

   55    4.2  1.5 -1.5   0.000655342   0.025885763  -0.003805428  -0.130087646  -0.014818142  -0.324085787   0.000107941   0.046241887
                        -0.000472650  -0.028534840  -0.003695296  -0.169607762   0.004115736   0.131133729   0.001211068  -0.085156996

   56    5.2  1.5 -1.5   0.000298849  -0.142173568  -0.000573031  -0.038155175  -0.005176137  -0.090853490   0.003790231  -0.166260696
                        -0.000322175   0.160594256  -0.000782197  -0.049376254   0.001369224   0.036298227  -0.005094799   0.305993393

   57    6.2  1.5 -1.5  -0.000038198  -0.002605429  -0.000271030   0.007205425  -0.000072018  -0.006696002   0.001349882  -0.006469759
                        -0.128737051  -0.001940698   0.456843566  -0.017276875   0.333978305  -0.027351514  -0.154807221  -0.006314910

   58    7.2  1.5 -1.5   0.001546699   0.083796763  -0.004113000  -0.160467174   0.004353746   0.122657767  -0.002565636   0.135866222
                        -0.005338235   0.073991023   0.021111776   0.122951314   0.027805540   0.303072602  -0.008710926   0.074123326

   59    8.2  1.5 -1.5   0.454823676  -0.000293619   0.124353704  -0.002613906   0.329664145  -0.015293654  -0.162087508  -0.003574244
                         0.003715696  -0.000265657   0.001154509   0.000629153  -0.000108217   0.001478909  -0.001303307   0.000914014

   60    9.2  1.5 -1.5  -0.000022867  -0.005191010   0.000124793   0.003669735   0.001666481   0.042295699   0.000854261  -0.046673509
                         0.000009012   0.005841618   0.000121758   0.004806612  -0.000494467  -0.017106048  -0.001389377   0.086006049


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5   0.008655860   0.000192242  -0.001252429  -0.000036500   0.002815518   0.000037468  -0.011089343   0.000015203
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000052255   0.002196998   0.000048573  -0.003309748   0.000003197  -0.000942151  -0.000009832  -0.007744072
                         0.000250425  -0.008104360  -0.000016253   0.000710520  -0.000037417   0.001547886  -0.000074741   0.007824056

    3    3.2  0.5  0.5  -0.000004220   0.000068938  -0.000005387  -0.000026993   0.000006305   0.000001101   0.000000744  -0.000107945
                        -0.008967801  -0.000248662  -0.000278878   0.000003682   0.001868692   0.000039802   0.011173292  -0.000003540

    4    4.2  0.5  0.5  -0.001037210   0.054359723  -0.002293030   0.052546225  -0.004764274   0.291552735   0.000015532   0.000973581
                         0.000054298   0.017439550  -0.003224301   0.186080730  -0.004322639   0.216178525   0.000013467   0.001038815

    5    5.2  0.5  0.5   0.000494448  -0.012363664  -0.003323682   0.135473059   0.002498833  -0.227785689   0.000013746  -0.000494973
                        -0.001084857   0.027725767   0.005053451  -0.038623600  -0.004549614   0.305977028  -0.000004851   0.000336031

    6    6.2  0.5  0.5  -0.001236766  -0.000209038   0.006495700   0.004039185   0.006985878  -0.005722235  -0.000066540  -0.000002203
                         0.032601756   0.000892750  -0.401951729   0.000715976   0.072759119   0.001751381   0.001084111   0.000008012

    7    7.2  0.5  0.5  -0.005635637  -0.013299408   0.026863774  -0.073307293   0.027526206   0.162558207  -0.000298684  -0.000432917
                         0.000535463  -0.002960779  -0.002170574  -0.357457194  -0.000872387   0.107916452   0.000018956  -0.000411811

    8    8.2  0.5  0.5   0.060763195  -0.000124354  -0.259679843  -0.011580028  -0.307252636   0.011151343   0.003145008  -0.000061214
                         0.000526191  -0.000125616  -0.009912723  -0.035538833   0.000543399   0.008710122   0.000009600  -0.000033728

    9    9.2  0.5  0.5  -0.205906742  -0.009958250   0.028676262   0.009206857  -0.059373084   0.001808764  -0.308477571  -0.022960029
                        -0.032397703   0.019805119  -0.001722654  -0.001817460   0.005108994  -0.004148913  -0.046124535   0.024071905

   10   10.2  0.5  0.5  -0.000291000  -0.041262240  -0.000626322   0.060862944  -0.000595953   0.018418904  -0.002220925  -0.172391300
                         0.132211493   0.152021967   0.007789322  -0.012991313  -0.021067052  -0.030761147   0.196141016   0.172185302

   11   11.2  0.5  0.5   0.038736055  -0.029714807  -0.006107444   0.047260775   0.010985415   0.014715844   0.056755516  -0.132791963
                        -0.170795896   0.112866334  -0.008979884  -0.010282401   0.027054980  -0.023347748  -0.242892898   0.136523280

   12   12.2  0.5  0.5  -0.010384832   0.464649228   0.000177721  -0.009648436   0.000670832  -0.044590337   0.000558778   0.408793182
                         0.000071417   0.126018685   0.000532979  -0.044917681   0.000561354  -0.027156137   0.004073290   0.404653775

   13    1.2  0.5 -0.5  -0.000049439   0.002226052  -0.000035700   0.001224962   0.000019587  -0.001471870  -0.000010646  -0.007765828
                         0.000185776  -0.008364724   0.000007602  -0.000260856  -0.000031941   0.002400154   0.000010852   0.007916151

   14    2.2  0.5 -0.5  -0.008396782  -0.000255440  -0.003385149  -0.000050893  -0.001812060  -0.000033569   0.011008365   0.000046469
                         0.000038882  -0.000013905  -0.000005582  -0.000005780  -0.000006031  -0.000016835  -0.000048963   0.000059359

   15    3.2  0.5 -0.5  -0.000258027   0.008665087  -0.000027168  -0.000052816  -0.000033354   0.001589714   0.000073067  -0.007975557
                         0.000002670   0.002310353   0.000002021  -0.000273884  -0.000021745   0.000982272  -0.000079536  -0.007825149

   16    4.2  0.5 -0.5   0.002873138  -0.000319214   0.012636879   0.001571184  -0.031871252  -0.001194312   0.000059765   0.000001263
                         0.057016335   0.000988360  -0.192944171  -0.003631183  -0.361552728  -0.006321166   0.001422471  -0.000020518

   17    5.2  0.5 -0.5   0.029972821   0.001175527   0.140546559   0.004303326  -0.379916938  -0.005184741   0.000586504   0.000013089
                        -0.004817505  -0.000198822   0.009560173   0.004250367   0.034225455  -0.000248215  -0.000118016  -0.000006416

   18    6.2  0.5 -0.5   0.000916482  -0.031823273   0.003801478  -0.090071898  -0.004484422   0.058373203   0.000007263  -0.000820493
                         0.000027584  -0.007189116  -0.001541557  -0.391783665   0.003962483   0.043991603   0.000004038  -0.000711700

   19    7.2  0.5 -0.5   0.000559051  -0.001966785   0.002751713  -0.026726717  -0.007015258  -0.015133578   0.000009198  -0.000222699
                        -0.013613521   0.005308378   0.364886328   0.003472225  -0.194992096   0.023009301  -0.000597428   0.000199941

   20    8.2  0.5 -0.5  -0.000089411   0.015118147  -0.003924027   0.251920221  -0.001595554   0.161085872   0.000018791   0.002195585
                        -0.000152477  -0.058854774   0.037171329  -0.063781542  -0.014059620  -0.261640630  -0.000067317  -0.002251793

   21    9.2  0.5 -0.5   0.021699973  -0.021645586   0.009383484  -0.028406162   0.004482406   0.035393783   0.033262608  -0.183099663
                        -0.004529971   0.207312966  -0.000140006   0.004287827   0.000627006  -0.047943144   0.000467405   0.252508214

   22   10.2  0.5 -0.5   0.157520299  -0.127839455   0.062234004   0.002234949   0.035851921  -0.017647555   0.243639862  -0.141570983
                        -0.000778492  -0.033719984   0.000029846   0.007488045   0.000379396  -0.011521269  -0.002481130  -0.135771453

   23   11.2  0.5 -0.5   0.116711964   0.175013110   0.048365929   0.004103169   0.027596345   0.017320799   0.190451176   0.213135295
                         0.000310786   0.006490869   0.000213408  -0.010055009  -0.000339350   0.023508322   0.000812951   0.129581999

   24   12.2  0.5 -0.5   0.002284973  -0.002739711  -0.000081367  -0.000062814  -0.000160631   0.000127849   0.002586519  -0.002516417
                         0.481429531   0.010017177   0.045942178   0.000558306   0.052208506   0.000865326   0.575195491  -0.003251396

   25    1.2  1.5  1.5   0.003268849  -0.093973189   0.007036940  -0.030053988  -0.016830908  -0.035030001   0.000120943   0.078770326
                        -0.000040591  -0.025258567   0.001738482  -0.138823956   0.000444119  -0.020928830   0.000781395   0.077620627

   26    2.2  1.5  1.5   0.018083534   0.006755946   0.094069690   0.003961562  -0.264176152  -0.001569644   0.000131164  -0.005648906
                        -0.000060965   0.001216451  -0.000030966   0.009096379  -0.000867600   0.002120627  -0.000047595  -0.004603202

   27    3.2  1.5  1.5  -0.000077045   0.024857385  -0.002314773   0.138720419   0.001063304   0.024296342  -0.000786655  -0.078054578
                         0.002045259  -0.092670151   0.000857339  -0.030168776   0.000592174  -0.040164147   0.000112277   0.079270687

   28    4.2  1.5  1.5  -0.001226132   0.001158643   0.000010984  -0.000034207   0.000113212  -0.000072038   0.000862623  -0.000687375
                        -0.261094040  -0.005561304   0.001253294   0.000134889  -0.038213311  -0.000572509   0.192868494  -0.000881341

   29    5.2  1.5  1.5  -0.001559897   0.001028441   0.000005533  -0.000026051  -0.000052269   0.000068466   0.001102611  -0.000639894
                        -0.230056953  -0.004999391  -0.011612418  -0.000019704   0.003603582   0.000077804   0.167739968  -0.000716588

   30    6.2  1.5  1.5  -0.009807388  -0.165781261  -0.000493816   0.010450408  -0.001340602   0.020881558   0.010040604   0.088476331
                         0.001020579  -0.044943774  -0.000578309   0.048708706  -0.000203290   0.012720806   0.000121136   0.087680218

   31    7.2  1.5  1.5   0.348154220   0.000970644   0.006048571   0.000267867   0.026224294   0.001178948  -0.255183343   0.004545838
                        -0.001908947  -0.000415515  -0.000023027   0.001894639   0.000070217   0.000551648   0.001379400   0.002631201

   32    8.2  1.5  1.5  -0.001323284   0.045333849   0.000561639  -0.047626592   0.000271195  -0.017333947   0.000105664  -0.087422869
                         0.004013418  -0.167151506  -0.000248616   0.010215658  -0.000411393   0.028473892  -0.000075743   0.088291651

   33    9.2  1.5  1.5  -0.000184450   0.000313523   0.000182959   0.000392896  -0.001964760   0.002324237   0.000002705   0.000006077
                        -0.044009034  -0.001037221  -0.222733718  -0.002659315   0.619433035   0.009385838  -0.000534169  -0.000005680

   34    1.2  1.5  0.5  -0.000188786   0.001503064   0.000130915  -0.005311930  -0.000679736  -0.001114304   0.000374503  -0.006261129
                        -0.034202929  -0.005584457  -0.237110898  -0.001763381   0.084434829   0.003520358   0.063495179   0.005678748

   35    2.2  1.5  0.5   0.000089897   0.019840928   0.001910104  -0.091222263   0.001897521  -0.021865580  -0.001351913  -0.091117737
                         0.003900928  -0.073136034   0.015028242   0.019779673  -0.006068418   0.035879542  -0.004035981   0.092091172

   36    3.2  1.5  0.5   0.012473215   0.000142256   0.126088139   0.002286558   0.219703753   0.003585778  -0.065204788   0.000931622
                        -0.000170194   0.000496413  -0.000380592   0.000354477   0.000978792  -0.001032259   0.000460255  -0.000858174

   37    4.2  1.5  0.5   0.004673734  -0.213652890  -0.000157051   0.006396402  -0.000601113   0.042291339   0.000238985   0.118015552
                         0.000579004  -0.057935160  -0.000342413   0.029761555  -0.000415476   0.025752278   0.000720114   0.116824034

   38    5.2  1.5  0.5  -0.005820481   0.249939308   0.000200778  -0.009986122   0.000240415  -0.013930765  -0.000018391  -0.136802994
                         0.000584112   0.067801859   0.000582444  -0.046481380   0.000292066  -0.008539913  -0.001774739  -0.135411534

   39    6.2  1.5  0.5   0.001399170  -0.001703319  -0.000034152  -0.000364217  -0.000211353   0.000931159  -0.000993620   0.000910517
                         0.293902455   0.006085459   0.013191547   0.000269806   0.062996549  -0.000346169  -0.220428226   0.001334392

   40    7.2  1.5  0.5  -0.001109286   0.000253456  -0.000228195   0.009369628   0.000441505  -0.020547179   0.000840948   0.001597587
                         0.011411046   0.000328816   0.000552816  -0.002057896   0.002007252   0.033747608  -0.008574768  -0.001905253

   41    8.2  1.5  0.5  -0.298676528  -0.006341091  -0.032301025  -0.000411451   0.001873619   0.000066245   0.222148571  -0.001197241
                         0.001374241  -0.001735112  -0.000046959  -0.000008607   0.000000862  -0.000181203  -0.000966836   0.001045858

   42    9.2  1.5  0.5  -0.001581500   0.075761710  -0.003638328   0.129241024  -0.002729923   0.185446872   0.000004931   0.000462358
                         0.000076937   0.020533393  -0.007507591   0.602082990  -0.002606218   0.112702658   0.000008150   0.000454659

   43    1.2  1.5 -0.5   0.005783173  -0.033003978   0.004828157   0.049513590   0.003583537  -0.072333793  -0.008438433   0.045063904
                        -0.000016339  -0.008978498  -0.002831080   0.231883590   0.000890425  -0.043560588   0.000492712   0.044732790

   44    2.2  1.5 -0.5   0.075778682   0.003746603   0.093341400  -0.001261874   0.042017037   0.006165133  -0.129548908  -0.001934353
                        -0.000364991   0.001090085   0.000346082  -0.015096497   0.000116944   0.001554804   0.000553464  -0.003791449

   45    3.2  1.5 -0.5  -0.000443132  -0.003372241  -0.002162581   0.123402190  -0.002754513   0.114020265   0.001265021   0.045991238
                        -0.000265135   0.012009915   0.000822948  -0.025889439   0.002517146  -0.187803292  -0.000064064  -0.046224260

   46    4.2  1.5 -0.5   0.001040831  -0.000642427  -0.000057376  -0.000082289  -0.000155536   0.000039938  -0.000749206   0.000346694
                         0.221366115   0.004665439   0.030441104   0.000367614   0.049514776   0.000729632  -0.166057111   0.000674893

   47    5.2  1.5 -0.5  -0.001243789   0.002061335   0.000085959   0.000075063   0.000002545  -0.000123297   0.000861153  -0.001254022
                        -0.258969502  -0.005474494  -0.047541917  -0.000611489  -0.016340022  -0.000357631   0.192485327  -0.001255972

   48    6.2  1.5 -0.5  -0.006318824   0.283657347   0.000412425  -0.002780943  -0.000781882  -0.053813372  -0.000314926  -0.156657325
                         0.000081015   0.076935818   0.000188029  -0.012895132   0.000612821  -0.032752570  -0.001584444  -0.155074410

   49    7.2  1.5 -0.5  -0.000252575   0.011312519  -0.009592763  -0.000338331   0.039510400  -0.001480323   0.002478853  -0.006710029
                        -0.000329493   0.001862634  -0.000061255  -0.000493164   0.000126333  -0.001425703   0.000193801  -0.005404568

   50    8.2  1.5 -0.5   0.000045997   0.078139490   0.000400634  -0.031582856  -0.000189101   0.000978738  -0.001585012  -0.156260042
                         0.006574035  -0.288277257  -0.000094116   0.006773599  -0.000038256  -0.001597661   0.000122242   0.157904153

   51    9.2  1.5 -0.5  -0.000358912   0.000481068  -0.001004593  -0.001994852  -0.000870150   0.000794608  -0.000000772   0.000002365
                        -0.078494128  -0.001508521   0.615797174   0.008100736   0.217006161   0.003689641  -0.000648452   0.000009228

   52    1.2  1.5 -1.5  -0.000241660   0.000879884  -0.000480574  -0.006520522  -0.000471383   0.009177303   0.000247065  -0.000473104
                        -0.097308258  -0.003148464   0.142039086   0.003166012   0.040803121  -0.014115729   0.110587815  -0.000633543

   53    2.2  1.5 -1.5  -0.000561909   0.004709507   0.001980084  -0.092013112  -0.002628342   0.137363915   0.000669904   0.000125829
                         0.006841550  -0.017459624  -0.009722003   0.019562583   0.000229478  -0.225656702  -0.007256090  -0.000060301

   54    3.2  1.5 -1.5  -0.095945874  -0.001996282   0.141961728   0.002442575   0.046940280  -0.000051052   0.111248893  -0.000631041
                         0.000189078  -0.000451531   0.000614410   0.000356415   0.000284649   0.001216009  -0.000206441   0.000482928

   55    4.2  1.5 -1.5  -0.005672223   0.251996929  -0.000061552   0.000250294   0.000450390  -0.032635016  -0.000147781  -0.137075488
                        -0.000310544   0.068331169  -0.000124806   0.001228096   0.000360701  -0.019880285  -0.001107884  -0.135680914

   56    5.2  1.5 -1.5  -0.005095726   0.221917926  -0.000021376  -0.002424050  -0.000030534   0.003099283  -0.000063422  -0.118969375
                        -0.000291857   0.060671814   0.000024698  -0.011356596  -0.000099039   0.001839289  -0.000958614  -0.118254812

   57    6.2  1.5 -1.5  -0.000797684  -0.003508445   0.000076155   0.000362535   0.000072115   0.000527528   0.000631045   0.006944927
                        -0.171763596   0.009215055  -0.049817098  -0.000668478  -0.024451037  -0.001249102   0.124561164  -0.007252337

   58    7.2  1.5 -1.5  -0.000651163   0.091380526  -0.000132624  -0.005920716   0.000146054  -0.013649431  -0.001305146  -0.179688686
                         0.000831137  -0.335953277  -0.001908880   0.001237277  -0.001293408   0.022392221   0.005087677   0.181197177

   59    8.2  1.5 -1.5  -0.173188070  -0.004218741  -0.048709822  -0.000601103  -0.033334914  -0.000492475   0.124249109   0.000128065
                         0.000822249   0.000246634  -0.000071936  -0.000126185  -0.000108584   0.000016122  -0.000576666  -0.000022386

   60    9.2  1.5 -1.5  -0.001082964   0.042481374   0.000938163  -0.046570008  -0.006786135   0.529077312  -0.000008311   0.000383212
                         0.000036233   0.011496171   0.002519161  -0.217810875  -0.006887990   0.322146462   0.000000361   0.000372146


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5   0.000015835   0.000168887  -0.000038392  -0.000284786
                         0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000025765  -0.000001187  -0.000326884   0.000044814
                         0.000084910  -0.000009459  -0.000076401   0.000009899

    3    3.2  0.5  0.5   0.000003207  -0.000003765  -0.000002328  -0.000001934
                         0.000029097   0.000318969   0.000010903   0.000077621

    4    4.2  0.5  0.5  -0.305157505   0.028426710   0.031840637  -0.004269768
                         0.058079715  -0.001692817  -0.179658310   0.025403851

    5    5.2  0.5  0.5  -0.065032360   0.004938479  -0.104074142   0.013866025
                        -0.336199319   0.031715323  -0.016000846  -0.002274124

    6    6.2  0.5  0.5   0.003193112  -0.006412757  -0.000127609  -0.005500415
                        -0.012616362  -0.079152994   0.039643512   0.348383796

    7    7.2  0.5  0.5  -0.179843130  -0.008383000  -0.075913168  -0.013344740
                         0.043204776  -0.005180037   0.299768866  -0.032563032

    8    8.2  0.5  0.5   0.007419612   0.264676396   0.026109136   0.240368141
                         0.003008154   0.001865604   0.029919875   0.005724983

    9    9.2  0.5  0.5   0.022252239   0.212279787  -0.062222212  -0.221680328
                         0.005172554  -0.044906821  -0.009143681  -0.008804996

   10   10.2  0.5  0.5   0.023100225  -0.002015095  -0.231561086   0.028866628
                         0.087669657   0.184089953  -0.047556264   0.050287369

   11   11.2  0.5  0.5   0.010711695  -0.037507872  -0.174884116   0.067933071
                         0.034301293  -0.240899374  -0.050053804  -0.047260812

   12   12.2  0.5  0.5   0.001327584  -0.000110464  -0.000407148   0.000055031
                        -0.000396029   0.000019552   0.001755515  -0.000240852

   13    1.2  0.5 -0.5   0.000044796  -0.000004200   0.000277244  -0.000037375
                         0.000162838  -0.000015268   0.000065106  -0.000008777

   14    2.2  0.5 -0.5  -0.000009435  -0.000088702  -0.000045891  -0.000335693
                         0.000001365  -0.000002321  -0.000000608  -0.000000352

   15    3.2  0.5 -0.5   0.000306546  -0.000028905  -0.000015863   0.000000227
                        -0.000088234   0.000004626   0.000076008  -0.000011147

   16    4.2  0.5 -0.5   0.005907736   0.024940756  -0.001650936  -0.010074665
                         0.027857532   0.309632549   0.025707216   0.182179680

   17    5.2  0.5 -0.5   0.031889237   0.341406638  -0.012978926  -0.104975994
                        -0.003650600  -0.026470691  -0.005383843  -0.008215516

   18    6.2  0.5 -0.5  -0.078018834   0.011317529  -0.074290041   0.008938761
                         0.014811528  -0.006425114   0.340415208  -0.038622829

   19    7.2  0.5 -0.5  -0.007218013   0.006044437   0.020435645  -0.005371978
                        -0.006708783   0.184861215  -0.028649914  -0.309184935

   20    8.2  0.5 -0.5   0.072001731  -0.004868391  -0.235311409   0.032257751
                         0.254701445  -0.006355973  -0.049377722  -0.023158656

   21    9.2  0.5 -0.5   0.013006877  -0.010889484   0.217822624  -0.062664774
                         0.216587515  -0.020083242   0.042107013  -0.005323223

   22   10.2  0.5 -0.5   0.176961777  -0.090656645  -0.039598476  -0.236300728
                        -0.050771064   0.000980733   0.042356373  -0.006640834

   23   11.2  0.5 -0.5  -0.242219510  -0.035913874  -0.055329639  -0.181695670
                         0.027731891  -0.001229928  -0.061539560   0.008747612

   24   12.2  0.5 -0.5  -0.000010448   0.000029715   0.000001488   0.000004966
                        -0.000111693  -0.001385076  -0.000247055  -0.001802104

   25    1.2  1.5  1.5  -0.062202262  -0.017659384   0.046130696   0.000699358
                         0.018416417  -0.000506349  -0.196363226   0.025771331

   26    2.2  1.5  1.5  -0.027630337  -0.348437738   0.010616747   0.107005893
                         0.000942487  -0.004319418   0.013131909  -0.002702857

   27    3.2  1.5  1.5  -0.017878418   0.002362983   0.196829658  -0.026564023
                        -0.059429536   0.005159706   0.045363592  -0.006310637

   28    4.2  1.5  1.5  -0.000034480  -0.000432628  -0.000057711  -0.000126223
                         0.006696419   0.069836708  -0.020111842  -0.153943147

   29    5.2  1.5  1.5  -0.001601789   0.002264192   0.000025280   0.000259807
                        -0.013732562  -0.155343426  -0.009776232  -0.067431069

   30    6.2  1.5  1.5  -0.047844473   0.002193121   0.036591527  -0.011456709
                         0.014423629  -0.000040113  -0.160365063   0.021538647

   31    7.2  1.5  1.5   0.002058580   0.049534727   0.023295209   0.160540590
                        -0.000584623   0.000998348  -0.006334562   0.000976617

   32    8.2  1.5  1.5  -0.014993374  -0.000013143   0.160046672  -0.021693080
                        -0.049795571   0.004402175   0.037378363  -0.005100907

   33    9.2  1.5  1.5   0.002666205  -0.004639020  -0.000045620  -0.001027643
                         0.033426769   0.369779336  -0.013091580  -0.112985529

   34    1.2  1.5  0.5   0.000700837  -0.001431534  -0.007802968   0.000384859
                         0.014592493   0.129883130  -0.039194356  -0.291233789

   35    2.2  1.5  0.5   0.009936183   0.001685145  -0.112288698   0.015878162
                         0.031611773  -0.011304635  -0.023772609   0.022790145

   36    3.2  1.5  0.5   0.023780583   0.271486065   0.024119269   0.169975900
                        -0.002954936   0.004595542  -0.000255052   0.000112204

   37    4.2  1.5  0.5  -0.149599616   0.013622495   0.015235330  -0.002336727
                         0.043536757  -0.002543019  -0.067077355   0.009497610

   38    5.2  1.5  0.5  -0.065525063   0.006179721  -0.035302864   0.004756128
                         0.018666703  -0.002011147   0.150198905  -0.019175016

   39    6.2  1.5  0.5   0.001028970   0.001930484   0.001933374   0.000240160
                        -0.008930493  -0.166611372   0.006205357   0.050807851

   40    7.2  1.5  0.5  -0.046302514   0.002280871  -0.048421483   0.005817402
                        -0.160366746   0.008351690  -0.011411890   0.003281134

   41    8.2  1.5  0.5  -0.014559188  -0.164226352   0.005906356   0.049263067
                         0.001778100  -0.002093795  -0.000069886  -0.000458956

   42    9.2  1.5  0.5   0.108401039  -0.009353161  -0.083906975   0.011675258
                        -0.032658530   0.000353020   0.359803765  -0.047330496

   43    1.2  1.5 -0.5  -0.124851305   0.014255713  -0.066204935   0.016556635
                         0.035830550  -0.003194788   0.283609194  -0.036372540

   44    2.2  1.5 -0.5   0.010452759   0.033114990   0.020667776   0.114749729
                        -0.004623236   0.001195563  -0.018556665   0.002527515

   45    3.2  1.5 -0.5  -0.076440089   0.003458481   0.165500176  -0.023422224
                        -0.260543116   0.023712584   0.038749334  -0.005762257

   46    4.2  1.5 -0.5  -0.001161306   0.002297463  -0.000103575   0.000502841
                        -0.013809080  -0.155789011  -0.009780294  -0.068783966

   47    5.2  1.5 -0.5   0.000299999   0.000618191   0.000246532   0.000030654
                        -0.006491815  -0.068129270   0.019754524   0.154291939

   48    6.2  1.5 -0.5   0.160131682  -0.008337698   0.011849096  -0.003300794
                        -0.046053452   0.003360845  -0.049407432   0.005599032

   49    7.2  1.5 -0.5  -0.008657531  -0.166904078   0.006413450   0.049748061
                         0.000016032  -0.002108276  -0.001864312  -0.000039933

   50    8.2  1.5 -0.5   0.045578310  -0.002147276   0.047853538  -0.005733964
                         0.157788772  -0.014509335   0.011708941  -0.001418300

   51    9.2  1.5 -0.5   0.002140463  -0.002736409   0.000545739  -0.000570621
                         0.009111787   0.113180726   0.048746176   0.369457446

   52    1.2  1.5 -1.5  -0.005172200  -0.001258212  -0.006572479   0.000018011
                        -0.016892560   0.064859099   0.024928961   0.201709091

   53    2.2  1.5 -1.5  -0.096584569   0.006419960  -0.103554210   0.013337705
                        -0.334811791   0.026890666  -0.027094133  -0.010357026

   54    3.2  1.5 -1.5   0.005601656   0.062042986   0.027303232   0.201987802
                         0.000909782   0.001474922  -0.000070656   0.000835410

   55    4.2  1.5 -1.5   0.067220563  -0.006447423   0.035316164  -0.004653996
                        -0.018940668   0.001809408  -0.149837502   0.019566038

   56    5.2  1.5 -1.5  -0.149178815   0.013665552   0.015162640  -0.002210355
                         0.043386490  -0.002098018  -0.065704725   0.009523113

   57    6.2  1.5 -1.5   0.000543029  -0.001216707   0.006229310  -0.001038918
                         0.002125208   0.049956524   0.023587395   0.164483476

   58    7.2  1.5 -1.5   0.014101214   0.000017664  -0.156512351   0.021230137
                         0.047495701  -0.002139913  -0.035750786   0.011492377

   59    8.2  1.5 -1.5   0.004241013   0.051988858   0.022284724   0.164353397
                        -0.001180308   0.001248533  -0.000006520   0.000200131

   60    9.2  1.5 -1.5   0.355304209  -0.032936683   0.026830301  -0.003037307
                        -0.102553384   0.006295431  -0.109758466   0.012734454


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  25.501%   0.003%  41.099%   0.000%   0.000%  33.309%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.008%   9.157%   0.001%  57.437%  33.308%   0.002%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  65.231%   0.005%   1.366%   0.004%   0.002%  33.305%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.032%   0.000%   0.760%
    5    5.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.009%   0.572%   0.000%   0.304%
    6    6.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   2.321%   0.027%   0.146%   0.000%
    7    7.2  0.5  0.5   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%   0.460%   0.013%   1.081%
    8    8.2  0.5  0.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.699%   0.001%   1.388%   0.011%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%   0.005%
   13    1.2  0.5 -0.5   0.003%  25.501%   0.000%  41.099%  33.309%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   9.157%   0.008%  57.437%   0.001%   0.002%  33.308%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.005%  65.231%   0.004%   1.366%  33.305%   0.002%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.032%   0.000%   0.760%   0.000%
   17    5.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.572%   0.009%   0.304%   0.000%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.027%   2.321%   0.000%   0.146%
   19    7.2  0.5 -0.5   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%   0.460%   0.000%   1.081%   0.013%
   20    8.2  0.5 -0.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.001%   0.699%   0.011%   1.388%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.000%   0.005%   0.000%
   25    1.2  1.5  1.5   0.000%   0.001%   0.000%   0.004%   0.002%   0.000%   0.248%   2.388%   0.014%   0.026%
   26    2.2  1.5  1.5   0.012%   0.000%   0.002%   0.000%   0.000%   0.000%  26.471%   0.414%   3.273%   0.000%
   27    3.2  1.5  1.5   0.000%   0.001%   0.000%   0.004%   0.002%   0.000%   0.001%   0.010%   0.002%  11.886%
   28    4.2  1.5  1.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.006%   4.159%   0.047%   0.039%   0.000%
   29    5.2  1.5  1.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.004%   2.819%   0.031%   2.065%   0.001%
   30    6.2  1.5  1.5   0.000%   0.001%   0.000%   0.004%   0.003%   0.000%   0.001%   0.169%   0.003%   4.225%
   31    7.2  1.5  1.5   0.001%   0.000%   0.004%   0.000%   0.000%   0.010%   0.190%   0.001%   1.174%   0.006%
   32    8.2  1.5  1.5   0.000%   0.001%   0.000%   0.004%   0.003%   0.000%   0.009%   0.790%   0.001%   1.251%
   33    9.2  1.5  1.5   0.037%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   34    1.2  1.5  0.5   0.001%   0.000%   0.010%   0.000%   0.000%   0.001%   9.838%   0.246%  23.694%   0.165%
   35    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.003%   0.000%   0.233%   6.564%   0.105%  38.672%
   36    3.2  1.5  0.5   0.009%   0.000%   0.002%   0.000%   0.000%   0.001%  33.243%   0.378%   2.306%   0.004%
   37    4.2  1.5  0.5   0.000%   0.004%   0.000%   0.000%   0.004%   0.000%   0.037%   3.293%   0.000%   0.047%
   38    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.004%   0.006%   0.000%   0.011%   1.002%   0.001%   2.625%
   39    6.2  1.5  0.5   0.004%   0.000%   0.001%   0.000%   0.000%   0.008%   0.037%   0.006%   2.752%   0.001%
   40    7.2  1.5  0.5   0.000%   0.004%   0.000%   0.001%   0.000%   0.000%   0.026%   2.075%   0.004%   0.010%
   41    8.2  1.5  0.5   0.004%   0.000%   0.001%   0.000%   0.000%   0.008%   1.129%   0.013%   1.925%   0.000%
   42    9.2  1.5  0.5   0.000%   0.006%   0.000%   0.037%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   43    1.2  1.5 -0.5   0.000%   0.001%   0.000%   0.010%   0.001%   0.000%   0.246%   9.838%   0.165%  23.694%
   44    2.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.003%   6.564%   0.233%  38.672%   0.105%
   45    3.2  1.5 -0.5   0.000%   0.009%   0.000%   0.002%   0.001%   0.000%   0.378%  33.243%   0.004%   2.306%
   46    4.2  1.5 -0.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.004%   3.293%   0.037%   0.047%   0.000%
   47    5.2  1.5 -0.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.006%   1.002%   0.011%   2.625%   0.001%
   48    6.2  1.5 -0.5   0.000%   0.004%   0.000%   0.001%   0.008%   0.000%   0.006%   0.037%   0.001%   2.752%
   49    7.2  1.5 -0.5   0.004%   0.000%   0.001%   0.000%   0.000%   0.000%   2.075%   0.026%   0.010%   0.004%
   50    8.2  1.5 -0.5   0.000%   0.004%   0.000%   0.001%   0.008%   0.000%   0.013%   1.129%   0.000%   1.925%
   51    9.2  1.5 -0.5   0.006%   0.000%   0.037%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   52    1.2  1.5 -1.5   0.001%   0.000%   0.004%   0.000%   0.000%   0.002%   2.388%   0.248%   0.026%   0.014%
   53    2.2  1.5 -1.5   0.000%   0.012%   0.000%   0.002%   0.000%   0.000%   0.414%  26.471%   0.000%   3.273%
   54    3.2  1.5 -1.5   0.001%   0.000%   0.004%   0.000%   0.000%   0.002%   0.010%   0.001%  11.886%   0.002%
   55    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.004%   0.006%   0.000%   0.047%   4.159%   0.000%   0.039%
   56    5.2  1.5 -1.5   0.000%   0.004%   0.000%   0.000%   0.004%   0.000%   0.031%   2.819%   0.001%   2.065%
   57    6.2  1.5 -1.5   0.001%   0.000%   0.004%   0.000%   0.000%   0.003%   0.169%   0.001%   4.225%   0.003%
   58    7.2  1.5 -1.5   0.000%   0.001%   0.000%   0.004%   0.010%   0.000%   0.001%   0.190%   0.006%   1.174%
   59    8.2  1.5 -1.5   0.001%   0.000%   0.004%   0.000%   0.000%   0.003%   0.790%   0.009%   1.251%   0.001%
   60    9.2  1.5 -1.5   0.000%   0.037%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.010%   0.000%   0.006%   0.000%   0.002%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.013%   0.000%   0.002%   0.000%   0.002%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.016%   0.000%   0.002%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   1.131%   0.000%   0.058%   0.001%   0.385%   0.000%   0.000%   0.000%   0.159%
    5    5.2  0.5  0.5   0.001%   1.157%   0.000%   0.057%   0.001%   0.302%   0.000%   0.000%   0.000%   0.578%
    6    6.2  0.5  0.5   0.009%   0.000%   0.308%   0.000%   0.004%   0.000%   0.000%   0.000%   0.002%   0.000%
    7    7.2  0.5  0.5   0.003%   0.567%   0.001%   0.323%   0.002%   0.080%   0.000%   0.000%   0.000%   0.265%
    8    8.2  0.5  0.5   0.166%   0.006%   0.167%   0.002%   0.169%   0.001%   0.001%   0.000%   0.009%   0.002%
    9    9.2  0.5  0.5   0.002%   0.000%   5.307%   0.073%   3.384%   0.001%  11.807%   0.221%   0.001%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.074%   4.587%   3.280%   0.820%   3.923%   8.114%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.235%   2.865%   5.060%   0.547%   8.427%   3.664%   0.001%   0.000%
   12   12.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   0.160%  33.824%   0.000%   0.001%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.010%   0.000%   0.006%   0.000%   0.002%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.013%   0.000%   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.000%   0.002%   0.000%   0.000%
   16    4.2  0.5 -0.5   1.131%   0.000%   0.058%   0.000%   0.385%   0.001%   0.000%   0.000%   0.159%   0.000%
   17    5.2  0.5 -0.5   1.157%   0.001%   0.057%   0.000%   0.302%   0.001%   0.000%   0.000%   0.578%   0.000%
   18    6.2  0.5 -0.5   0.000%   0.009%   0.000%   0.308%   0.000%   0.004%   0.000%   0.000%   0.000%   0.002%
   19    7.2  0.5 -0.5   0.567%   0.003%   0.323%   0.001%   0.080%   0.002%   0.000%   0.000%   0.265%   0.000%
   20    8.2  0.5 -0.5   0.006%   0.166%   0.002%   0.167%   0.001%   0.169%   0.000%   0.001%   0.002%   0.009%
   21    9.2  0.5 -0.5   0.000%   0.002%   0.073%   5.307%   0.001%   3.384%   0.221%  11.807%   0.000%   0.001%
   22   10.2  0.5 -0.5   0.000%   0.000%   4.587%   0.074%   0.820%   3.280%   8.114%   3.923%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   2.865%   0.235%   0.547%   5.060%   3.664%   8.427%   0.000%   0.001%
   24   12.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%  33.824%   0.160%   0.001%   0.000%
   25    1.2  1.5  1.5   0.048%  41.140%   0.014%  10.566%   0.145%   1.785%   0.030%   6.210%   0.000%   0.000%
   26    2.2  1.5  1.5   1.484%   0.200%   5.391%   0.038%  30.355%   0.113%   0.000%   0.027%   0.000%   0.000%
   27    3.2  1.5  1.5   0.015%  32.279%   0.005%  10.194%   0.002%   1.697%   0.031%   6.495%   0.000%   0.001%
   28    4.2  1.5  1.5   0.055%   0.000%   1.745%   0.001%   0.190%   0.001%   0.448%   0.002%   0.927%   0.001%
   29    5.2  1.5  1.5   0.420%   0.000%   0.181%   0.000%   1.764%   0.007%   0.279%   0.001%   1.024%   0.000%
   30    6.2  1.5  1.5   0.001%   2.128%   0.006%   1.758%   0.002%   0.267%   0.000%   0.186%   0.004%  28.757%
   31    7.2  1.5  1.5   0.061%   0.003%   1.623%   0.006%   0.288%   0.002%   0.669%   0.002%   0.011%   0.043%
   32    8.2  1.5  1.5   0.002%   4.537%   0.001%   1.800%   0.001%   0.301%   0.001%   0.103%   0.004%  29.210%
   33    9.2  1.5  1.5   0.000%   0.000%   2.418%   0.001%  13.973%   0.051%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   3.198%   0.015%  24.067%   0.049%   2.623%   0.013%   1.946%   0.087%   0.000%   0.000%
   35    2.2  1.5  0.5   0.021%   1.684%   0.125%   3.731%   0.015%   0.481%   0.089%   9.224%   0.000%   0.001%
   36    3.2  1.5  0.5   0.133%   0.000%   5.397%   0.003%  22.213%   0.082%   2.242%   0.010%   0.000%   0.000%
   37    4.2  1.5  0.5   0.001%   2.033%   0.000%   0.178%   0.006%   1.778%   0.002%   0.325%   0.002%  12.708%
   38    5.2  1.5  0.5   0.000%   0.851%   0.001%   1.764%   0.001%   0.182%   0.002%   0.472%   0.001%  10.288%
   39    6.2  1.5  0.5   0.175%   0.011%   0.318%   0.001%   1.699%   0.008%   0.421%   0.002%   1.574%   0.021%
   40    7.2  1.5  0.5   0.005%   6.400%   0.001%   0.284%   0.010%   1.782%   0.001%   0.001%   0.006%  12.390%
   41    8.2  1.5  0.5   0.053%   0.000%   0.250%   0.000%   1.676%   0.007%   0.542%   0.003%   2.007%   0.001%
   42    9.2  1.5  0.5   0.000%   0.001%   0.009%  13.991%   0.009%   2.413%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.015%   3.198%   0.049%  24.067%   0.013%   2.623%   0.087%   1.946%   0.000%   0.000%
   44    2.2  1.5 -0.5   1.684%   0.021%   3.731%   0.125%   0.481%   0.015%   9.224%   0.089%   0.001%   0.000%
   45    3.2  1.5 -0.5   0.000%   0.133%   0.003%   5.397%   0.082%  22.213%   0.010%   2.242%   0.000%   0.000%
   46    4.2  1.5 -0.5   2.033%   0.001%   0.178%   0.000%   1.778%   0.006%   0.325%   0.002%  12.708%   0.002%
   47    5.2  1.5 -0.5   0.851%   0.000%   1.764%   0.001%   0.182%   0.001%   0.472%   0.002%  10.288%   0.001%
   48    6.2  1.5 -0.5   0.011%   0.175%   0.001%   0.318%   0.008%   1.699%   0.002%   0.421%   0.021%   1.574%
   49    7.2  1.5 -0.5   6.400%   0.005%   0.284%   0.001%   1.782%   0.010%   0.001%   0.001%  12.390%   0.006%
   50    8.2  1.5 -0.5   0.000%   0.053%   0.000%   0.250%   0.007%   1.676%   0.003%   0.542%   0.001%   2.007%
   51    9.2  1.5 -0.5   0.001%   0.000%  13.991%   0.009%   2.413%   0.009%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5  41.140%   0.048%  10.566%   0.014%   1.785%   0.145%   6.210%   0.030%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.200%   1.484%   0.038%   5.391%   0.113%  30.355%   0.027%   0.000%   0.000%   0.000%
   54    3.2  1.5 -1.5  32.279%   0.015%  10.194%   0.005%   1.697%   0.002%   6.495%   0.031%   0.001%   0.000%
   55    4.2  1.5 -1.5   0.000%   0.055%   0.001%   1.745%   0.001%   0.190%   0.002%   0.448%   0.001%   0.927%
   56    5.2  1.5 -1.5   0.000%   0.420%   0.000%   0.181%   0.007%   1.764%   0.001%   0.279%   0.000%   1.024%
   57    6.2  1.5 -1.5   2.128%   0.001%   1.758%   0.006%   0.267%   0.002%   0.186%   0.000%  28.757%   0.004%
   58    7.2  1.5 -1.5   0.003%   0.061%   0.006%   1.623%   0.002%   0.288%   0.002%   0.669%   0.043%   0.011%
   59    8.2  1.5 -1.5   4.537%   0.002%   1.800%   0.001%   0.301%   0.001%   0.103%   0.001%  29.210%   0.004%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.001%   2.418%   0.051%  13.973%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.002%   0.100%   0.000%   0.000%   0.000%   0.000%   0.316%  31.296%   0.305%  13.849%
    5    5.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.238%  22.291%   0.073%   2.396%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.684%   0.001%  13.811%   0.433%
    7    7.2  0.5  0.5   0.001%   0.015%   0.001%   0.000%   0.000%   0.000%   0.141%  13.642%   0.728%  30.262%
    8    8.2  0.5  0.5   0.160%   0.003%   0.000%   0.000%   0.000%   0.000%   7.358%   0.156%  13.682%   0.400%
    9    9.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.004%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.100%   0.002%   0.000%   0.000%   0.000%   0.000%  31.296%   0.316%  13.849%   0.305%
   17    5.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%  22.291%   0.238%   2.396%   0.073%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.005%   0.000%   0.000%   0.000%   0.001%   0.684%   0.433%  13.811%
   19    7.2  0.5 -0.5   0.015%   0.001%   0.000%   0.001%   0.000%   0.000%  13.642%   0.141%  30.262%   0.728%
   20    8.2  0.5 -0.5   0.003%   0.160%   0.000%   0.000%   0.000%   0.000%   0.156%   7.358%   0.400%  13.682%
   21    9.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.004%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.123%   0.000%   0.000%
   26    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   27    3.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.069%   0.001%   0.027%
   28    4.2  1.5  1.5   3.897%   0.083%   0.003%  35.445%   0.749%   0.010%   0.403%   0.004%   1.006%   0.022%
   29    5.2  1.5  1.5  11.250%   0.243%   0.000%   6.976%  17.956%   0.141%   1.560%   0.015%   1.003%   0.022%
   30    6.2  1.5  1.5   0.007%   0.134%   0.928%   0.080%   0.069%   6.670%   0.010%   0.974%   0.148%   6.002%
   31    7.2  1.5  1.5   5.018%   0.100%   0.009%  44.121%   2.452%   0.058%   0.081%   0.003%   1.462%   0.052%
   32    8.2  1.5  1.5   0.107%   5.203%   0.038%   0.001%   0.009%   1.305%   0.044%   4.299%   0.071%   3.205%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%   0.000%   0.008%   0.001%
   35    2.2  1.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.001%   0.044%
   36    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.006%   0.000%
   37    4.2  1.5  0.5   0.273%  13.250%   0.170%   0.001%   0.072%   9.931%   0.036%   3.537%   0.004%   0.202%
   38    5.2  1.5  0.5   0.128%   5.580%   1.470%   0.002%   0.158%  21.736%   0.011%   1.073%   0.065%   2.787%
   39    6.2  1.5  0.5  42.620%   1.017%   0.003%   1.563%   0.368%   0.003%   0.125%   0.016%   3.013%   0.065%
   40    7.2  1.5  0.5   0.340%   8.398%   2.218%   0.001%   0.017%   3.763%   0.108%  11.100%   0.016%   0.861%
   41    8.2  1.5  0.5   2.007%   0.048%   0.004%   6.961%  34.293%   0.239%   0.240%   0.001%   3.883%   0.087%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   43    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%   0.001%   0.008%
   44    2.2  1.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%   0.044%   0.001%
   45    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.006%
   46    4.2  1.5 -0.5  13.250%   0.273%   0.001%   0.170%   9.931%   0.072%   3.537%   0.036%   0.202%   0.004%
   47    5.2  1.5 -0.5   5.580%   0.128%   0.002%   1.470%  21.736%   0.158%   1.073%   0.011%   2.787%   0.065%
   48    6.2  1.5 -0.5   1.017%  42.620%   1.563%   0.003%   0.003%   0.368%   0.016%   0.125%   0.065%   3.013%
   49    7.2  1.5 -0.5   8.398%   0.340%   0.001%   2.218%   3.763%   0.017%  11.100%   0.108%   0.861%   0.016%
   50    8.2  1.5 -0.5   0.048%   2.007%   6.961%   0.004%   0.239%  34.293%   0.001%   0.240%   0.087%   3.883%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   52    1.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.123%   0.001%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   54    3.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.069%   0.001%   0.027%   0.001%
   55    4.2  1.5 -1.5   0.083%   3.897%  35.445%   0.003%   0.010%   0.749%   0.004%   0.403%   0.022%   1.006%
   56    5.2  1.5 -1.5   0.243%  11.250%   6.976%   0.000%   0.141%  17.956%   0.015%   1.560%   0.022%   1.003%
   57    6.2  1.5 -1.5   0.134%   0.007%   0.080%   0.928%   6.670%   0.069%   0.974%   0.010%   6.002%   0.148%
   58    7.2  1.5 -1.5   0.100%   5.018%  44.121%   0.009%   0.058%   2.452%   0.003%   0.081%   0.052%   1.462%
   59    8.2  1.5 -1.5   5.203%   0.107%   0.001%   0.038%   1.305%   0.009%   4.299%   0.044%   3.205%   0.071%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.011%   0.000%   0.017%   0.000%   0.000%   0.002%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.004%   0.001%   0.025%   0.002%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.028%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%
    4    4.2  0.5  0.5   0.001%   0.158%   0.086%   7.023%   0.035%   1.780%   0.000%   0.000%   0.049%   0.000%
    5    5.2  0.5  0.5   0.286%  20.014%   0.106%   7.981%   0.017%   1.159%   0.000%   0.000%   5.906%   0.062%
    6    6.2  0.5  0.5  30.180%   0.448%   0.226%   0.009%   8.756%   0.155%   0.000%   0.000%   0.071%   6.927%
    7    7.2  0.5  0.5   0.196%   0.780%   0.054%   1.800%   0.035%   7.020%   0.000%   0.000%   0.042%   0.054%
    8    8.2  0.5  0.5  23.644%   0.305%   5.391%   0.071%   3.728%   0.013%   0.000%   0.002%   0.046%   6.520%
    9    9.2  0.5  0.5   0.001%   0.000%  10.690%   0.306%  15.072%   0.852%   0.037%   6.973%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   9.759%   2.432%   1.043%  13.723%   4.511%   2.451%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%  16.061%   1.073%   0.884%   8.898%   2.299%   4.751%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.183%   0.041%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.011%   0.000%   0.017%   0.002%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.004%   0.000%   0.025%   0.001%   0.000%   0.002%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.028%   0.000%   0.001%   0.002%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.158%   0.001%   7.023%   0.086%   1.780%   0.035%   0.000%   0.000%   0.000%   0.049%
   17    5.2  0.5 -0.5  20.014%   0.286%   7.981%   0.106%   1.159%   0.017%   0.000%   0.000%   0.062%   5.906%
   18    6.2  0.5 -0.5   0.448%  30.180%   0.009%   0.226%   0.155%   8.756%   0.000%   0.000%   6.927%   0.071%
   19    7.2  0.5 -0.5   0.780%   0.196%   1.800%   0.054%   7.020%   0.035%   0.000%   0.000%   0.054%   0.042%
   20    8.2  0.5 -0.5   0.305%  23.644%   0.071%   5.391%   0.013%   3.728%   0.002%   0.000%   6.520%   0.046%
   21    9.2  0.5 -0.5   0.000%   0.001%   0.306%  10.690%   0.852%  15.072%   6.973%   0.037%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   2.432%   9.759%  13.723%   1.043%   2.451%   4.511%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   1.073%  16.061%   8.898%   0.884%   4.751%   2.299%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.041%   9.183%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.006%   0.010%   0.137%   0.009%   0.828%  16.371%   0.073%   1.324%   0.077%
   26    2.2  1.5  1.5   0.007%   0.000%   2.447%   0.028%   0.352%   0.002%   0.071%   0.000%   0.099%   6.797%
   27    3.2  1.5  1.5   0.000%   0.005%   0.002%   0.115%   0.017%   0.832%  16.531%   0.073%   1.241%   0.010%
   28    4.2  1.5  1.5   5.345%   0.079%   0.211%   0.003%   1.442%   0.029%   0.002%   0.422%   0.098%  11.627%
   29    5.2  1.5  1.5   5.874%   0.087%   1.502%   0.018%   0.195%   0.004%   0.001%   0.305%   0.126%  15.020%
   30    6.2  1.5  1.5   0.001%   0.073%   0.002%   0.194%   0.045%   1.363%   0.175%   0.000%   1.554%   0.013%
   31    7.2  1.5  1.5   0.020%   0.001%   0.211%   0.002%   1.398%   0.045%   0.002%   0.722%   0.003%   0.001%
   32    8.2  1.5  1.5   0.004%   0.287%   0.002%   0.202%   0.029%   1.397%   0.183%   0.001%   1.909%   0.016%
   33    9.2  1.5  1.5   0.001%   0.000%  20.461%   0.244%   2.951%   0.059%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.020%   0.000%   0.281%   0.004%   1.905%   0.052%   0.189%   5.433%   0.043%   4.934%
   35    2.2  1.5  0.5   0.000%   0.000%   0.002%   0.041%   0.026%   0.256%  21.769%   0.197%   0.002%   0.023%
   36    3.2  1.5  0.5   0.010%   0.000%   1.730%   0.020%   0.467%   0.010%   0.031%   5.440%   0.045%   5.325%
   37    4.2  1.5  0.5   0.085%   5.751%   0.018%   1.482%   0.004%   0.200%   0.288%   0.001%  14.206%   0.119%
   38    5.2  1.5  0.5   0.065%   4.385%   0.003%   0.208%   0.029%   1.425%   0.419%   0.002%  10.308%   0.086%
   39    6.2  1.5  0.5   0.069%   0.002%   1.427%   0.017%   0.203%   0.006%   0.002%   0.512%   0.000%   0.639%
   40    7.2  1.5  0.5   0.018%   1.237%   0.015%   1.416%   0.006%   0.188%   0.000%   0.001%   3.788%   0.022%
   41    8.2  1.5  0.5   0.543%   0.009%   1.415%   0.016%   0.206%   0.004%   0.002%   0.525%   0.007%   0.858%
   42    9.2  1.5  0.5   0.000%   0.000%   0.036%   2.969%   0.411%  20.391%   0.001%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.000%   0.020%   0.004%   0.281%   0.052%   1.905%   5.433%   0.189%   4.934%   0.043%
   44    2.2  1.5 -0.5   0.000%   0.000%   0.041%   0.002%   0.256%   0.026%   0.197%  21.769%   0.023%   0.002%
   45    3.2  1.5 -0.5   0.000%   0.010%   0.020%   1.730%   0.010%   0.467%   5.440%   0.031%   5.325%   0.045%
   46    4.2  1.5 -0.5   5.751%   0.085%   1.482%   0.018%   0.200%   0.004%   0.001%   0.288%   0.119%  14.206%
   47    5.2  1.5 -0.5   4.385%   0.065%   0.208%   0.003%   1.425%   0.029%   0.002%   0.419%   0.086%  10.308%
   48    6.2  1.5 -0.5   0.002%   0.069%   0.017%   1.427%   0.006%   0.203%   0.512%   0.002%   0.639%   0.000%
   49    7.2  1.5 -0.5   1.237%   0.018%   1.416%   0.015%   0.188%   0.006%   0.001%   0.000%   0.022%   3.788%
   50    8.2  1.5 -0.5   0.009%   0.543%   0.016%   1.415%   0.004%   0.206%   0.525%   0.002%   0.858%   0.007%
   51    9.2  1.5 -0.5   0.000%   0.000%   2.969%   0.036%  20.391%   0.411%   0.000%   0.001%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.006%   0.000%   0.137%   0.010%   0.828%   0.009%   0.073%  16.371%   0.077%   1.324%
   53    2.2  1.5 -1.5   0.000%   0.007%   0.028%   2.447%   0.002%   0.352%   0.000%   0.071%   6.797%   0.099%
   54    3.2  1.5 -1.5   0.005%   0.000%   0.115%   0.002%   0.832%   0.017%   0.073%  16.531%   0.010%   1.241%
   55    4.2  1.5 -1.5   0.079%   5.345%   0.003%   0.211%   0.029%   1.442%   0.422%   0.002%  11.627%   0.098%
   56    5.2  1.5 -1.5   0.087%   5.874%   0.018%   1.502%   0.004%   0.195%   0.305%   0.001%  15.020%   0.126%
   57    6.2  1.5 -1.5   0.073%   0.001%   0.194%   0.002%   1.363%   0.045%   0.000%   0.175%   0.013%   1.554%
   58    7.2  1.5 -1.5   0.001%   0.020%   0.002%   0.211%   0.045%   1.398%   0.722%   0.002%   0.001%   0.003%
   59    8.2  1.5 -1.5   0.287%   0.004%   0.202%   0.002%   1.397%   0.029%   0.001%   0.183%   0.016%   1.909%
   60    9.2  1.5 -1.5   0.000%   0.001%   0.244%  20.461%   0.059%   2.951%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%   0.006%   0.000%   0.007%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.003%   0.000%   0.007%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.008%   0.000%
    4    4.2  0.5  0.5   0.000%  10.401%   0.001%   1.208%   0.000%   0.057%   0.000%   0.433%   0.000%   0.326%
    5    5.2  0.5  0.5   0.000%   4.586%   0.004%   1.617%   0.000%   0.134%   0.000%   0.550%   0.000%   0.092%
    6    6.2  0.5  0.5   0.008%   0.001%   5.079%   0.014%   0.613%   0.001%   0.003%   0.000%   0.106%   0.000%
    7    7.2  0.5  0.5   0.038%   1.184%   0.015%  10.325%   0.000%   0.385%   0.004%   0.069%   0.003%   0.019%
    8    8.2  0.5  0.5   3.782%   0.009%   1.688%   0.085%   0.180%   0.002%   0.471%   0.001%   0.369%   0.000%
    9    9.2  0.5  0.5   0.000%   0.000%   0.002%   0.000%  13.171%   0.278%   7.012%   0.039%   4.345%   0.049%
   10   10.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.115%  10.149%   7.942%   2.354%   1.748%   2.481%
   11   11.2  0.5  0.5   0.003%   0.000%   0.001%   0.000%   0.538%   6.292%  12.055%   1.589%   3.067%   1.362%
   12   12.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.011%  23.178%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%   0.006%   0.000%   0.007%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.003%   0.000%   0.007%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.008%
   16    4.2  0.5 -0.5  10.401%   0.000%   1.208%   0.001%   0.057%   0.000%   0.433%   0.000%   0.326%   0.000%
   17    5.2  0.5 -0.5   4.586%   0.000%   1.617%   0.004%   0.134%   0.000%   0.550%   0.000%   0.092%   0.000%
   18    6.2  0.5 -0.5   0.001%   0.008%   0.014%   5.079%   0.001%   0.613%   0.000%   0.003%   0.000%   0.106%
   19    7.2  0.5 -0.5   1.184%   0.038%  10.325%   0.015%   0.385%   0.000%   0.069%   0.004%   0.019%   0.003%
   20    8.2  0.5 -0.5   0.009%   3.782%   0.085%   1.688%   0.002%   0.180%   0.001%   0.471%   0.000%   0.369%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.278%  13.171%   0.039%   7.012%   0.049%   4.345%
   22   10.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%  10.149%   0.115%   2.354%   7.942%   2.481%   1.748%
   23   11.2  0.5 -0.5   0.000%   0.003%   0.000%   0.001%   6.292%   0.538%   1.589%  12.055%   1.362%   3.067%
   24   12.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%  23.178%   0.011%
   25    1.2  1.5  1.5   0.004%   9.096%   0.002%   0.324%   0.000%   0.008%   0.000%   0.008%   0.001%   0.947%
   26    2.2  1.5  1.5   0.816%   0.040%   0.198%   0.002%   0.009%   0.000%   0.038%   0.000%   0.033%   0.005%
   27    3.2  1.5  1.5   0.000%   4.136%   0.004%   5.353%   0.000%   0.019%   0.000%   0.001%   0.000%   0.921%
   28    4.2  1.5  1.5   0.148%   0.000%   4.569%   0.003%  12.223%   0.024%   0.939%   0.000%   6.817%   0.003%
   29    5.2  1.5  1.5   4.600%   0.000%   0.389%   0.000%   0.957%   0.003%  12.127%   0.004%   5.293%   0.003%
   30    6.2  1.5  1.5   0.001%   1.657%   0.035%  20.871%   0.079%  11.154%   0.008%   2.397%   0.010%   2.950%
   31    7.2  1.5  1.5   1.250%   0.003%   4.087%   0.046%  10.690%   0.079%   2.395%   0.008%  12.122%   0.000%
   32    8.2  1.5  1.5   0.000%  20.688%   0.001%   1.547%   0.024%  10.868%   0.001%   2.627%   0.002%   2.999%
   33    9.2  1.5  1.5   0.006%   0.000%   0.004%   0.000%   0.208%   0.000%   0.958%   0.000%   0.194%   0.000%
   34    1.2  1.5  0.5   2.654%   0.012%   1.185%   0.046%   0.031%   0.000%   0.004%   0.000%   0.117%   0.003%
   35    2.2  1.5  0.5   0.010%   2.793%   0.018%   8.988%   0.000%   0.012%   0.000%   0.005%   0.002%   0.574%
   36    3.2  1.5  0.5   0.001%   0.000%   3.606%   0.002%   0.002%   0.000%   0.039%   0.000%   0.016%   0.000%
   37    4.2  1.5  0.5   0.000%   5.821%   0.000%   0.110%   0.003%   0.957%   0.003%  12.130%   0.002%   4.900%
   38    5.2  1.5  0.5   0.000%   0.324%   0.005%   5.852%   0.023%  12.147%   0.000%   0.942%   0.003%   6.707%
   39    6.2  1.5  0.5   3.946%   0.029%   7.245%   0.007%   2.533%   0.015%  10.531%   0.026%   8.638%   0.004%
   40    7.2  1.5  0.5   0.007%  20.353%   0.004%   6.160%   0.015%   2.562%   0.028%  11.126%   0.013%   0.000%
   41    8.2  1.5  0.5   1.582%   0.000%   9.288%   0.006%   2.325%   0.004%  10.895%   0.005%   8.921%   0.004%
   42    9.2  1.5  0.5   0.000%   0.004%   0.000%   0.004%   0.002%   1.078%   0.000%   0.202%   0.000%   0.616%
   43    1.2  1.5 -0.5   0.012%   2.654%   0.046%   1.185%   0.000%   0.031%   0.000%   0.004%   0.003%   0.117%
   44    2.2  1.5 -0.5   2.793%   0.010%   8.988%   0.018%   0.012%   0.000%   0.005%   0.000%   0.574%   0.002%
   45    3.2  1.5 -0.5   0.000%   0.001%   0.002%   3.606%   0.000%   0.002%   0.000%   0.039%   0.000%   0.016%
   46    4.2  1.5 -0.5   5.821%   0.000%   0.110%   0.000%   0.957%   0.003%  12.130%   0.003%   4.900%   0.002%
   47    5.2  1.5 -0.5   0.324%   0.000%   5.852%   0.005%  12.147%   0.023%   0.942%   0.000%   6.707%   0.003%
   48    6.2  1.5 -0.5   0.029%   3.946%   0.007%   7.245%   0.015%   2.533%   0.026%  10.531%   0.004%   8.638%
   49    7.2  1.5 -0.5  20.353%   0.007%   6.160%   0.004%   2.562%   0.015%  11.126%   0.028%   0.000%   0.013%
   50    8.2  1.5 -0.5   0.000%   1.582%   0.006%   9.288%   0.004%   2.325%   0.005%  10.895%   0.004%   8.921%
   51    9.2  1.5 -0.5   0.004%   0.000%   0.004%   0.000%   1.078%   0.002%   0.202%   0.000%   0.616%   0.000%
   52    1.2  1.5 -1.5   9.096%   0.004%   0.324%   0.002%   0.008%   0.000%   0.008%   0.000%   0.947%   0.001%
   53    2.2  1.5 -1.5   0.040%   0.816%   0.002%   0.198%   0.000%   0.009%   0.000%   0.038%   0.005%   0.033%
   54    3.2  1.5 -1.5   4.136%   0.000%   5.353%   0.004%   0.019%   0.000%   0.001%   0.000%   0.921%   0.000%
   55    4.2  1.5 -1.5   0.000%   0.148%   0.003%   4.569%   0.024%  12.223%   0.000%   0.939%   0.003%   6.817%
   56    5.2  1.5 -1.5   0.000%   4.600%   0.000%   0.389%   0.003%   0.957%   0.004%  12.127%   0.003%   5.293%
   57    6.2  1.5 -1.5   1.657%   0.001%  20.871%   0.035%  11.154%   0.079%   2.397%   0.008%   2.950%   0.010%
   58    7.2  1.5 -1.5   0.003%   1.250%   0.046%   4.087%   0.079%  10.690%   0.008%   2.395%   0.000%  12.122%
   59    8.2  1.5 -1.5  20.688%   0.000%   1.547%   0.001%  10.868%   0.024%   2.627%   0.001%   2.999%   0.002%
   60    9.2  1.5 -1.5   0.000%   0.006%   0.000%   0.004%   0.000%   0.208%   0.000%   0.958%   0.000%   0.194%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.002%   3.739%   0.004%  13.174%   0.000%   0.000%   9.649%   0.081%   3.329%   0.066%
    5    5.2  0.5  0.5   0.004%   1.984%   0.003%  14.551%   0.000%   0.000%  11.726%   0.103%   1.109%   0.020%
    6    6.2  0.5  0.5  16.161%   0.002%   0.534%   0.004%   0.000%   0.000%   0.017%   0.631%   0.157%  12.140%
    7    7.2  0.5  0.5   0.073%  13.315%   0.076%   3.807%   0.000%   0.000%   3.421%   0.010%   9.562%   0.124%
    8    8.2  0.5  0.5   6.753%   0.140%   9.440%   0.020%   0.001%   0.000%   0.006%   7.006%   0.158%   5.781%
    9    9.2  0.5  0.5   0.083%   0.009%   0.355%   0.002%   9.729%   0.111%   0.052%   4.708%   0.396%   4.922%
   10   10.2  0.5  0.5   0.006%   0.387%   0.044%   0.129%   3.848%   5.937%   0.822%   3.389%   5.588%   0.336%
   11   11.2  0.5  0.5   0.012%   0.234%   0.085%   0.076%   6.222%   3.627%   0.129%   5.944%   3.309%   0.685%
   12   12.2  0.5  0.5   0.000%   0.211%   0.000%   0.273%   0.002%  33.086%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   3.739%   0.002%  13.174%   0.004%   0.000%   0.000%   0.081%   9.649%   0.066%   3.329%
   17    5.2  0.5 -0.5   1.984%   0.004%  14.551%   0.003%   0.000%   0.000%   0.103%  11.726%   0.020%   1.109%
   18    6.2  0.5 -0.5   0.002%  16.161%   0.004%   0.534%   0.000%   0.000%   0.631%   0.017%  12.140%   0.157%
   19    7.2  0.5 -0.5  13.315%   0.073%   3.807%   0.076%   0.000%   0.000%   0.010%   3.421%   0.124%   9.562%
   20    8.2  0.5 -0.5   0.140%   6.753%   0.020%   9.440%   0.000%   0.001%   7.006%   0.006%   5.781%   0.158%
   21    9.2  0.5 -0.5   0.009%   0.083%   0.002%   0.355%   0.111%   9.729%   4.708%   0.052%   4.922%   0.396%
   22   10.2  0.5 -0.5   0.387%   0.006%   0.129%   0.044%   5.937%   3.848%   3.389%   0.822%   0.336%   5.588%
   23   11.2  0.5 -0.5   0.234%   0.012%   0.076%   0.085%   3.627%   6.222%   5.944%   0.129%   0.685%   3.309%
   24   12.2  0.5 -0.5   0.211%   0.000%   0.273%   0.000%  33.086%   0.002%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.005%   2.018%   0.028%   0.167%   0.000%   1.223%   0.421%   0.031%   4.069%   0.066%
   26    2.2  1.5  1.5   0.885%   0.010%   6.979%   0.001%   0.000%   0.005%   0.076%  12.143%   0.029%   1.146%
   27    3.2  1.5  1.5   0.001%   2.015%   0.000%   0.220%   0.000%   1.238%   0.385%   0.003%   4.080%   0.075%
   28    4.2  1.5  1.5   0.000%   0.000%   0.146%   0.000%   3.720%   0.000%   0.004%   0.488%   0.040%   2.370%
   29    5.2  1.5  1.5   0.013%   0.000%   0.001%   0.000%   2.814%   0.000%   0.019%   2.414%   0.010%   0.455%
   30    6.2  1.5  1.5   0.000%   0.248%   0.000%   0.060%   0.010%   1.552%   0.250%   0.000%   2.706%   0.060%
   31    7.2  1.5  1.5   0.004%   0.000%   0.069%   0.000%   6.512%   0.003%   0.000%   0.245%   0.058%   2.577%
   32    8.2  1.5  1.5   0.000%   0.237%   0.000%   0.111%   0.000%   1.544%   0.270%   0.002%   2.701%   0.050%
   33    9.2  1.5  1.5   4.961%   0.001%  38.370%   0.009%   0.000%   0.000%   0.112%  13.676%   0.017%   1.277%
   34    1.2  1.5  0.5   5.622%   0.003%   0.713%   0.001%   0.403%   0.007%   0.021%   1.687%   0.160%   8.482%
   35    2.2  1.5  0.5   0.023%   0.871%   0.004%   0.177%   0.002%   1.678%   0.110%   0.013%   1.317%   0.077%
   36    3.2  1.5  0.5   1.590%   0.001%   4.827%   0.001%   0.425%   0.000%   0.057%   7.373%   0.058%   2.889%
   37    4.2  1.5  0.5   0.000%   0.093%   0.000%   0.245%   0.000%   2.758%   2.428%   0.019%   0.473%   0.010%
   38    5.2  1.5  0.5   0.000%   0.226%   0.000%   0.027%   0.000%   3.705%   0.464%   0.004%   2.381%   0.039%
   39    6.2  1.5  0.5   0.017%   0.000%   0.397%   0.000%   4.859%   0.000%   0.008%   2.776%   0.004%   0.258%
   40    7.2  1.5  0.5   0.000%   0.009%   0.000%   0.156%   0.007%   0.001%   2.786%   0.007%   0.247%   0.004%
   41    8.2  1.5  0.5   0.104%   0.000%   0.000%   0.000%   4.935%   0.000%   0.022%   2.697%   0.003%   0.243%
   42    9.2  1.5  0.5   0.007%  37.921%   0.001%   4.709%   0.000%   0.000%   1.282%   0.009%  13.650%   0.238%
   43    1.2  1.5 -0.5   0.003%   5.622%   0.001%   0.713%   0.007%   0.403%   1.687%   0.021%   8.482%   0.160%
   44    2.2  1.5 -0.5   0.871%   0.023%   0.177%   0.004%   1.678%   0.002%   0.013%   0.110%   0.077%   1.317%
   45    3.2  1.5 -0.5   0.001%   1.590%   0.001%   4.827%   0.000%   0.425%   7.373%   0.057%   2.889%   0.058%
   46    4.2  1.5 -0.5   0.093%   0.000%   0.245%   0.000%   2.758%   0.000%   0.019%   2.428%   0.010%   0.473%
   47    5.2  1.5 -0.5   0.226%   0.000%   0.027%   0.000%   3.705%   0.000%   0.004%   0.464%   0.039%   2.381%
   48    6.2  1.5 -0.5   0.000%   0.017%   0.000%   0.397%   0.000%   4.859%   2.776%   0.008%   0.258%   0.004%
   49    7.2  1.5 -0.5   0.009%   0.000%   0.156%   0.000%   0.001%   0.007%   0.007%   2.786%   0.004%   0.247%
   50    8.2  1.5 -0.5   0.000%   0.104%   0.000%   0.000%   0.000%   4.935%   2.697%   0.022%   0.243%   0.003%
   51    9.2  1.5 -0.5  37.921%   0.007%   4.709%   0.001%   0.000%   0.000%   0.009%   1.282%   0.238%  13.650%
   52    1.2  1.5 -1.5   2.018%   0.005%   0.167%   0.028%   1.223%   0.000%   0.031%   0.421%   0.066%   4.069%
   53    2.2  1.5 -1.5   0.010%   0.885%   0.001%   6.979%   0.005%   0.000%  12.143%   0.076%   1.146%   0.029%
   54    3.2  1.5 -1.5   2.015%   0.001%   0.220%   0.000%   1.238%   0.000%   0.003%   0.385%   0.075%   4.080%
   55    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.146%   0.000%   3.720%   0.488%   0.004%   2.370%   0.040%
   56    5.2  1.5 -1.5   0.000%   0.013%   0.000%   0.001%   0.000%   2.814%   2.414%   0.019%   0.455%   0.010%
   57    6.2  1.5 -1.5   0.248%   0.000%   0.060%   0.000%   1.552%   0.010%   0.000%   0.250%   0.060%   2.706%
   58    7.2  1.5 -1.5   0.000%   0.004%   0.000%   0.069%   0.003%   6.512%   0.245%   0.000%   2.577%   0.058%
   59    8.2  1.5 -1.5   0.237%   0.000%   0.111%   0.000%   1.544%   0.000%   0.002%   0.270%   0.050%   2.701%
   60    9.2  1.5 -1.5   0.001%   4.961%   0.009%  38.370%   0.000%   0.000%  13.676%   0.112%   1.277%   0.017%


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
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     8060.99       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    181554.00 145429.69  10107.49  25983.79     12.74      2.82     17.07
 REAL TIME  *    184664.30 SEC
 DISK USED  *         7.96 GB (local),       65.26 GB (total)
 SF USED    *        48.68 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -295.436513457582

              CI              CI           MULTI         RHF-SCF
   -295.35814728   -295.35838318   -294.35996201   -294.74686365
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
